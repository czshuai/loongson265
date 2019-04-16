	.file	1 "pixel.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L11weight_sp_cEPKsPhlliiiiii
	.type	_ZN12_GLOBAL__N_1L11weight_sp_cEPKsPhlliiiiii, @function
_ZN12_GLOBAL__N_1L11weight_sp_cEPKsPhlliiiiii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$16,0($sp)
	lw	$14,16($sp)
	addiu	$9,$9,-1
	bltz	$9,.L1
	lw	$15,24($sp)

	dsll	$6,$6,1
	move	$25,$0
	addiu	$8,$8,-1
	move	$16,$0
	li	$24,255			# 0xff
.L5:
	bltz	$8,.L3
	daddu	$12,$5,$16

	move	$3,$16
.L9:
	dlsa	$2,$3,$4,1
	lh	$2,0($2)
	addiu	$2,$2,8192
	mul	$13,$2,$10
	addu	$2,$13,$11
	sra	$2,$2,$14
	addu	$2,$2,$15
	slt	$13,$2,256
	movz	$2,$24,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($12)
	addiu	$3,$3,1
	slt	$2,$8,$3
	beq	$2,$0,.L9
	daddu	$12,$5,$3

.L3:
	daddu	$4,$4,$6
	addiu	$25,$25,1
	slt	$2,$9,$25
	beq	$2,$0,.L5
	daddu	$5,$5,$7

.L1:
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L11weight_sp_cEPKsPhlliiiiii
	.size	_ZN12_GLOBAL__N_1L11weight_sp_cEPKsPhlliiiiii, .-_ZN12_GLOBAL__N_1L11weight_sp_cEPKsPhlliiiiii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L15scale1D_128to64EPhPKh
	.type	_ZN12_GLOBAL__N_1L15scale1D_128to64EPhPKh, @function
_ZN12_GLOBAL__N_1L15scale1D_128to64EPhPKh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$7,$0
	li	$9,128			# 0x80
.L11:
	lbu	$2,128($5)
	lbu	$3,129($5)
	addu	$2,$2,$3
	sra	$6,$7,1
	daddu	$6,$4,$6
	lbu	$3,0($5)
	lbu	$8,1($5)
	addu	$3,$3,$8
	addiu	$3,$3,1
	sra	$3,$3,1
	sb	$3,0($6)
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,64($6)
	addiu	$7,$7,2
	bne	$7,$9,.L11
	daddiu	$5,$5,2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L15scale1D_128to64EPhPKh
	.size	_ZN12_GLOBAL__N_1L15scale1D_128to64EPhPKh, .-_ZN12_GLOBAL__N_1L15scale1D_128to64EPhPKh
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L14scale2D_64to32EPhPKhl
	.type	_ZN12_GLOBAL__N_1L14scale2D_64to32EPhPKhl, @function
_ZN12_GLOBAL__N_1L14scale2D_64to32EPhPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$12,$0
	move	$14,$0
	li	$11,64			# 0x40
.L16:
	srl	$10,$12,1
	sll	$10,$10,5
	daddu	$13,$5,$6
	move	$8,$13
	move	$7,$14
.L15:
	srl	$3,$7,1
	addu	$3,$3,$10
	dext	$3,$3,0,32
	daddu	$3,$4,$3
	lbu	$2,0($5)
	lbu	$9,1($5)
	addu	$2,$2,$9
	lbu	$9,0($8)
	addu	$2,$2,$9
	lbu	$9,1($8)
	addu	$2,$2,$9
	addiu	$2,$2,2
	sra	$2,$2,2
	sb	$2,0($3)
	addiu	$7,$7,2
	daddiu	$5,$5,2
	bne	$7,$11,.L15
	daddiu	$8,$8,2

	addiu	$12,$12,2
	bne	$12,$11,.L16
	daddu	$5,$6,$13

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L14scale2D_64to32EPhPKhl
	.size	_ZN12_GLOBAL__N_1L14scale2D_64to32EPhPKhl, .-_ZN12_GLOBAL__N_1L14scale2D_64to32EPhPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L15ssim_4x4x2_coreEPKhlS1_lPA4_i
	.type	_ZN12_GLOBAL__N_1L15ssim_4x4x2_coreEPKhlS1_lPA4_i, @function
_ZN12_GLOBAL__N_1L15ssim_4x4x2_coreEPKhlS1_lPA4_i:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	daddiu	$19,$8,32
	li	$20,4			# 0x4
	move	$18,$0
.L23:
	move	$25,$4
	move	$17,$6
	move	$16,$20
	move	$21,$18
	move	$13,$18
	move	$14,$18
	move	$15,$18
.L22:
	daddiu	$24,$25,4
	move	$11,$17
	move	$2,$25
.L21:
	lbu	$12,0($2)
	move	$9,$12
	lbu	$10,0($11)
	move	$3,$10
	addu	$15,$12,$15
	addu	$14,$10,$14
	gsmultu	$10,$10,$10
	mul	$12,$12,$12
	addu	$10,$12,$10
	addu	$13,$10,$13
	mtlo	$21
	madd	$9,$3
	mflo	$3
	mflo	$21
	daddiu	$2,$2,1
	bne	$24,$2,.L21
	daddiu	$11,$11,1

	addiu	$16,$16,-1
	daddu	$25,$25,$5
	bne	$16,$0,.L22
	daddu	$17,$17,$7

	sw	$15,0($8)
	sw	$14,4($8)
	sw	$13,8($8)
	sw	$3,12($8)
	daddiu	$4,$4,4
	daddiu	$8,$8,16
	bne	$8,$19,.L23
	daddiu	$6,$6,4

	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L15ssim_4x4x2_coreEPKhlS1_lPA4_i
	.size	_ZN12_GLOBAL__N_1L15ssim_4x4x2_coreEPKhlS1_lPA4_i, .-_ZN12_GLOBAL__N_1L15ssim_4x4x2_coreEPKhlS1_lPA4_i
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L10ssim_end_4EPA4_iS1_i
	.type	_ZN12_GLOBAL__N_1L10ssim_end_4EPA4_iS1_i, @function
_ZN12_GLOBAL__N_1L10ssim_end_4EPA4_iS1_i:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$6,.L31
	move	$7,$4

	addiu	$6,$6,-1
	dext	$6,$6,0,32
	daddiu	$4,$4,16
	dlsa	$6,$6,$4,4
	mtc1	$0,$f0
	li	$4,196608			# 0x30000
	ori	$4,$4,0x99bb
.L30:
	lw	$3,0($7)
	lw	$2,16($7)
	addu	$3,$3,$2
	lw	$2,0($5)
	addu	$3,$3,$2
	lw	$2,16($5)
	addu	$3,$3,$2
	lw	$10,4($7)
	lw	$2,20($7)
	addu	$10,$10,$2
	lw	$2,4($5)
	addu	$10,$10,$2
	lw	$2,20($5)
	addu	$10,$10,$2
	gsmultu	$8,$3,$3
	gsmultu	$9,$10,$10
	lw	$2,12($7)
	lw	$11,28($7)
	addu	$2,$2,$11
	lw	$11,12($5)
	addu	$2,$2,$11
	lw	$11,28($5)
	addu	$2,$2,$11
	sll	$2,$2,6
	mul	$11,$3,$10
	subu	$2,$2,$11
	lsa	$2,$2,$4,1
	mtc1	$2,$f1
	cvt.s.w	$f1,$f1
	sll	$3,$3,1
	gsmultu	$3,$3,$10
	addiu	$3,$3,416
	mtc1	$3,$f2
	cvt.s.w	$f2,$f2
	mul.s	$f1,$f1,$f2
	lw	$2,8($7)
	lw	$3,24($7)
	addu	$2,$2,$3
	lw	$3,8($5)
	addu	$2,$2,$3
	lw	$3,24($5)
	addu	$2,$2,$3
	sll	$2,$2,6
	subu	$2,$2,$8
	subu	$2,$2,$9
	addu	$2,$2,$4
	mtc1	$2,$f2
	cvt.s.w	$f2,$f2
	addu	$8,$8,$9
	addiu	$8,$8,416
	mtc1	$8,$f3
	cvt.s.w	$f3,$f3
	mul.s	$f2,$f2,$f3
	div.s	$f1,$f1,$f2
	add.s	$f0,$f0,$f1
	daddiu	$7,$7,16
	bne	$7,$6,.L30
	daddiu	$5,$5,16

	jr	$31
	nop

.L31:
	jr	$31
	mtc1	$0,$f0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L10ssim_end_4EPA4_iS1_i
	.size	_ZN12_GLOBAL__N_1L10ssim_end_4EPA4_iS1_i, .-_ZN12_GLOBAL__N_1L10ssim_end_4EPA4_iS1_i
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L14planecopy_cp_cEPKhlPhliii
	.type	_ZN12_GLOBAL__N_1L14planecopy_cp_cEPKhlPhliii, @function
_ZN12_GLOBAL__N_1L14planecopy_cp_cEPKhlPhliii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L42
	move	$13,$0

	addiu	$14,$8,-1
	dext	$14,$14,0,32
	daddiu	$14,$14,1
.L38:
	blez	$8,.L36
	nop

	move	$2,$4
	move	$11,$6
	daddu	$12,$14,$4
.L37:
	lbu	$3,0($2)
	sll	$3,$3,$10
	sb	$3,0($11)
	daddiu	$2,$2,1
	bne	$2,$12,.L37
	daddiu	$11,$11,1

.L36:
	daddu	$6,$6,$7
	addiu	$13,$13,1
	bne	$9,$13,.L38
	daddu	$4,$4,$5

.L42:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L14planecopy_cp_cEPKhlPhliii
	.size	_ZN12_GLOBAL__N_1L14planecopy_cp_cEPKhlPhliii, .-_ZN12_GLOBAL__N_1L14planecopy_cp_cEPKhlPhliii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L14planecopy_sp_cEPKtlPhliiit
	.type	_ZN12_GLOBAL__N_1L14planecopy_sp_cEPKtlPhliiit, @function
_ZN12_GLOBAL__N_1L14planecopy_sp_cEPKtlPhliiit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L51
	dsll	$5,$5,1

	addiu	$15,$8,-1
	dext	$15,$15,0,32
	dsll	$15,$15,1
	move	$14,$0
	daddiu	$15,$15,2
.L47:
	blez	$8,.L45
	nop

	move	$3,$4
	move	$12,$6
	daddu	$13,$15,$4
.L46:
	lhu	$2,0($3)
	sra	$2,$2,$10
	and	$2,$2,$11
	sb	$2,0($12)
	daddiu	$3,$3,2
	bne	$3,$13,.L46
	daddiu	$12,$12,1

.L45:
	daddu	$6,$6,$7
	addiu	$14,$14,1
	bne	$9,$14,.L47
	daddu	$4,$4,$5

.L51:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L14planecopy_sp_cEPKtlPhliiit
	.size	_ZN12_GLOBAL__N_1L14planecopy_sp_cEPKtlPhliiit, .-_ZN12_GLOBAL__N_1L14planecopy_sp_cEPKtlPhliiit
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L18planecopy_sp_shl_cEPKtlPhliiit
	.type	_ZN12_GLOBAL__N_1L18planecopy_sp_shl_cEPKtlPhliiit, @function
_ZN12_GLOBAL__N_1L18planecopy_sp_shl_cEPKtlPhliiit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L60
	dsll	$5,$5,1

	addiu	$15,$8,-1
	dext	$15,$15,0,32
	dsll	$15,$15,1
	move	$14,$0
	daddiu	$15,$15,2
.L56:
	blez	$8,.L54
	nop

	move	$3,$4
	move	$12,$6
	daddu	$13,$15,$4
.L55:
	lhu	$2,0($3)
	sll	$2,$2,$10
	and	$2,$2,$11
	sb	$2,0($12)
	daddiu	$3,$3,2
	bne	$3,$13,.L55
	daddiu	$12,$12,1

.L54:
	daddu	$6,$6,$7
	addiu	$14,$14,1
	bne	$9,$14,.L56
	daddu	$4,$4,$5

.L60:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L18planecopy_sp_shl_cEPKtlPhliiit
	.size	_ZN12_GLOBAL__N_1L18planecopy_sp_shl_cEPKtlPhliiit, .-_ZN12_GLOBAL__N_1L18planecopy_sp_shl_cEPKtlPhliiit
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L23estimateCUPropagateCostEPiPKtPKiS2_S4_PKdi
	.type	_ZN12_GLOBAL__N_1L23estimateCUPropagateCostEPiPKtPKiS2_S4_PKdi, @function
_ZN12_GLOBAL__N_1L23estimateCUPropagateCostEPiPKtPKiS2_S4_PKdi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$11,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_1L23estimateCUPropagateCostEPiPKtPKiS2_S4_PKdi)))
	daddu	$11,$11,$25
	daddiu	$11,$11,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_1L23estimateCUPropagateCostEPiPKtPKiS2_S4_PKdi)))
	ldc1	$f2,0($9)
	ld	$2,%got_page(.LC0)($11)
	ldc1	$f0,%got_ofst(.LC0)($2)
	blez	$10,.L66
	mul.d	$f2,$f2,$f0

	move	$9,$6
	addiu	$10,$10,-1
	dext	$10,$10,0,32
	daddiu	$6,$6,4
	dlsa	$10,$10,$6,2
	ld	$2,%got_page(.LC1)($11)
	ldc1	$f3,%got_ofst(.LC1)($2)
.L63:
	lw	$6,0($9)
	lw	$3,0($8)
	gsmultu	$3,$3,$6
	mtc1	$3,$f0
	cvt.d.w	$f0,$f0
	mul.d	$f0,$f0,$f2
	lhu	$2,0($5)
	mtc1	$2,$f1
	cvt.d.w	$f1,$f1
	add.d	$f0,$f0,$f1
	lhu	$2,0($7)
	andi	$3,$2,0x3fff
	slt	$2,$6,$3
	movn	$3,$6,$2
	subu	$2,$6,$3
	mtc1	$2,$f1
	cvt.d.w	$f1,$f1
	mul.d	$f0,$f0,$f1
	dmtc1	$6,$f1
	cvt.d.w	$f1,$f1
	div.d	$f0,$f0,$f1
	add.d	$f0,$f0,$f3
	trunc.w.d $f0,$f0
	swc1	$f0,0($4)
	daddiu	$9,$9,4
	daddiu	$7,$7,2
	daddiu	$8,$8,4
	daddiu	$5,$5,2
	bne	$9,$10,.L63
	daddiu	$4,$4,4

.L66:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L23estimateCUPropagateCostEPiPKtPKiS2_S4_PKdi
	.size	_ZN12_GLOBAL__N_1L23estimateCUPropagateCostEPiPKtPKiS2_S4_PKdi, .-_ZN12_GLOBAL__N_1L23estimateCUPropagateCostEPiPKtPKiS2_S4_PKdi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L14cuTreeFix8PackEPtPdi
	.type	_ZN12_GLOBAL__N_1L14cuTreeFix8PackEPtPdi, @function
_ZN12_GLOBAL__N_1L14cuTreeFix8PackEPtPdi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$7,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_1L14cuTreeFix8PackEPtPdi)))
	daddu	$7,$7,$25
	blez	$6,.L74
	daddiu	$7,$7,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_1L14cuTreeFix8PackEPtPdi)))

	move	$3,$5
	addiu	$6,$6,-1
	dext	$6,$6,0,32
	daddiu	$5,$5,8
	dlsa	$5,$6,$5,3
	ld	$2,%got_page(.LC2)($7)
	ldc1	$f2,%got_ofst(.LC2)($2)
	ld	$2,%got_page(.LC3)($7)
	ldc1	$f1,%got_ofst(.LC3)($2)
	b	.L71
	li	$6,-2147483648			# 0xffffffff80000000

.L69:
	sub.d	$f0,$f0,$f1
	trunc.w.d $f0,$f0
	mfc1	$2,$f0
	or	$2,$2,$6
.L70:
	sh	$2,0($4)
	daddiu	$3,$3,8
	beq	$3,$5,.L74
	daddiu	$4,$4,2

.L71:
	ldc1	$f0,0($3)
	mul.d	$f0,$f0,$f2
	c.le.d	$fcc0,$f1,$f0
	bc1t	$fcc0,.L69
	nop

	trunc.w.d $f0,$f0
	b	.L70
	mfc1	$2,$f0

.L74:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L14cuTreeFix8PackEPtPdi
	.size	_ZN12_GLOBAL__N_1L14cuTreeFix8PackEPtPdi, .-_ZN12_GLOBAL__N_1L14cuTreeFix8PackEPtPdi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L16cuTreeFix8UnpackEPdPti
	.type	_ZN12_GLOBAL__N_1L16cuTreeFix8UnpackEPdPti, @function
_ZN12_GLOBAL__N_1L16cuTreeFix8UnpackEPdPti:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$7,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_1L16cuTreeFix8UnpackEPdPti)))
	daddu	$7,$7,$25
	blez	$6,.L80
	daddiu	$7,$7,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_1L16cuTreeFix8UnpackEPdPti)))

	move	$3,$5
	addiu	$6,$6,-1
	dext	$6,$6,0,32
	daddiu	$5,$5,2
	dlsa	$5,$6,$5,1
	ld	$2,%got_page(.LC0)($7)
	ldc1	$f1,%got_ofst(.LC0)($2)
.L77:
	lh	$2,0($3)
	mtc1	$2,$f0
	cvt.d.w	$f0,$f0
	mul.d	$f0,$f0,$f1
	sdc1	$f0,0($4)
	daddiu	$3,$3,2
	bne	$3,$5,.L77
	daddiu	$4,$4,8

.L80:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L16cuTreeFix8UnpackEPdPti
	.size	_ZN12_GLOBAL__N_1L16cuTreeFix8UnpackEPdPti, .-_ZN12_GLOBAL__N_1L16cuTreeFix8UnpackEPdPti
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi4EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi4EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi4EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,4			# 0x4
.L83:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L82:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L82
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L83
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi4EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi4EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi4EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi4ELi4EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi4ELi4EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi4ELi4EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$10,4			# 0x4
	li	$3,255			# 0xff
.L88:
	lh	$2,0($5)
	lh	$11,0($4)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($6)
	lh	$2,2($4)
	lh	$11,2($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($6)
	lh	$2,4($4)
	lh	$11,4($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,2($6)
	lh	$2,6($4)
	lh	$11,6($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,3($6)
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	addiu	$10,$10,-1
	bne	$10,$0,.L88
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi4ELi4EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi4ELi4EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi4ELi4EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,4			# 0x4
.L93:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,4
.L92:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L92
	daddiu	$10,$10,1

	daddu	$6,$6,$7
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	bne	$14,$0,.L93
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi8EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi8EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi8EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,8			# 0x8
.L99:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L98:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L98
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L99
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi8EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi8EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi8EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi8ELi8EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi8ELi8EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi8ELi8EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,8			# 0x8
	b	.L105
	li	$12,255			# 0xff

.L110:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L111
	daddu	$6,$6,$9

.L105:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L104:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L104
	daddiu	$10,$10,2

	b	.L110
	daddu	$4,$4,$7

.L111:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi8ELi8EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi8ELi8EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi8ELi8EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi8EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi8EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi8EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,8			# 0x8
.L114:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
.L113:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L113
	daddiu	$10,$10,1

	daddu	$6,$6,$7
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	bne	$14,$0,.L114
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi8EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi8EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi8EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi16EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi16EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi16EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,16			# 0x10
.L120:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
.L119:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L119
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L120
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi16EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi16EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi16EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi16ELi16EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi16ELi16EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi16ELi16EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,16			# 0x10
	b	.L126
	li	$12,255			# 0xff

.L131:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L132
	daddu	$6,$6,$9

.L126:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
.L125:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L125
	daddiu	$10,$10,2

	b	.L131
	daddu	$4,$4,$7

.L132:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi16ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi16ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi16ELi16EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi16EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi16EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi16EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,16			# 0x10
.L135:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
.L134:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L134
	daddiu	$10,$10,1

	daddu	$6,$6,$7
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	bne	$14,$0,.L135
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi16EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi16EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi16EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi32EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi32EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi32EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,32			# 0x20
.L141:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
.L140:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L140
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L141
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi32EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi32EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi32EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi32ELi32EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi32ELi32EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi32ELi32EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,32			# 0x20
	b	.L147
	li	$12,255			# 0xff

.L152:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L153
	daddu	$6,$6,$9

.L147:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
.L146:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L146
	daddiu	$10,$10,2

	b	.L152
	daddu	$4,$4,$7

.L153:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi32ELi32EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi32ELi32EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi32ELi32EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi32EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi32EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi32EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,32			# 0x20
.L156:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
.L155:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L155
	daddiu	$10,$10,1

	daddu	$6,$6,$7
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	bne	$14,$0,.L156
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi32EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi32EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi32EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi64EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi64EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi64EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,64			# 0x40
.L162:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
.L161:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L161
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L162
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi64EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi64EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi64EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,64			# 0x40
	b	.L168
	li	$12,255			# 0xff

.L173:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L174
	daddu	$6,$6,$9

.L168:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
.L167:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L167
	daddiu	$10,$10,2

	b	.L173
	daddu	$4,$4,$7

.L174:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi64EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi64EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi64EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,64			# 0x40
.L177:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
.L176:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L176
	daddiu	$10,$10,1

	daddu	$6,$6,$7
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	bne	$14,$0,.L177
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi64EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi64EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi64EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L183
	li	$10,8			# 0x8

.L188:
	addiu	$10,$10,-1
	beq	$10,$0,.L189
	daddu	$6,$6,$7

.L183:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L182:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L182
	daddiu	$3,$3,1

	b	.L188
	daddu	$4,$4,$5

.L189:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi4ELi8EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi4ELi8EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi4ELi8EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$10,8			# 0x8
	li	$3,255			# 0xff
.L191:
	lh	$2,0($5)
	lh	$11,0($4)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($6)
	lh	$2,2($4)
	lh	$11,2($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($6)
	lh	$2,4($4)
	lh	$11,4($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,2($6)
	lh	$2,6($4)
	lh	$11,6($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,3($6)
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	addiu	$10,$10,-1
	bne	$10,$0,.L191
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi4ELi8EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi4ELi8EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi4ELi8EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi8EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi8EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi8EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L196
	li	$14,8			# 0x8

.L201:
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	beq	$14,$0,.L202
	daddu	$4,$4,$5

.L196:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,4
.L195:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L195
	daddiu	$10,$10,1

	b	.L201
	daddu	$6,$6,$7

.L202:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi8EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi8EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi8EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,4			# 0x4
.L205:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L204:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L204
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L205
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi8ELi4EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi8ELi4EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi8ELi4EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,4			# 0x4
	li	$12,255			# 0xff
.L211:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L210:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L210
	daddiu	$10,$10,2

	daddu	$4,$4,$7
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	bne	$15,$0,.L211
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi8ELi4EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi8ELi4EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi8ELi4EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,4			# 0x4
.L217:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
.L216:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L216
	daddiu	$10,$10,1

	daddu	$6,$6,$7
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	bne	$14,$0,.L217
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,8			# 0x8
.L223:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
.L222:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L222
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L223
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,8			# 0x8
	li	$12,255			# 0xff
.L229:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
.L228:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L228
	daddiu	$10,$10,2

	daddu	$4,$4,$7
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	bne	$15,$0,.L229
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi8EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi8EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi8EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,8			# 0x8
.L235:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
.L234:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L234
	daddiu	$10,$10,1

	daddu	$6,$6,$7
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	bne	$14,$0,.L235
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi8EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi8EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi8EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L241
	li	$10,16			# 0x10

.L246:
	addiu	$10,$10,-1
	beq	$10,$0,.L247
	daddu	$6,$6,$7

.L241:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L240:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L240
	daddiu	$3,$3,1

	b	.L246
	daddu	$4,$4,$5

.L247:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,16			# 0x10
	b	.L250
	li	$12,255			# 0xff

.L255:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L256
	daddu	$6,$6,$9

.L250:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L249:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L249
	daddiu	$10,$10,2

	b	.L255
	daddu	$4,$4,$7

.L256:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi16EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi16EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi16EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L259
	li	$14,16			# 0x10

.L264:
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	beq	$14,$0,.L265
	daddu	$4,$4,$5

.L259:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
.L258:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L258
	daddiu	$10,$10,1

	b	.L264
	daddu	$6,$6,$7

.L265:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi16EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi16EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi16EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi12EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi12EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi12EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,12			# 0xc
.L268:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
.L267:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L267
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L268
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi12EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi12EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi12EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi16ELi12EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi16ELi12EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi16ELi12EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,12			# 0xc
	b	.L274
	li	$12,255			# 0xff

.L279:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L280
	daddu	$6,$6,$9

.L274:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
.L273:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L273
	daddiu	$10,$10,2

	b	.L279
	daddu	$4,$4,$7

.L280:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi16ELi12EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi16ELi12EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi16ELi12EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi12EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi12EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi12EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,12			# 0xc
.L283:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
.L282:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L282
	daddiu	$10,$10,1

	daddu	$6,$6,$7
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	bne	$14,$0,.L283
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi12EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi12EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi12EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi16EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi16EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi16EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L289
	li	$10,16			# 0x10

.L294:
	addiu	$10,$10,-1
	beq	$10,$0,.L295
	daddu	$6,$6,$7

.L289:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,12
.L288:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L288
	daddiu	$3,$3,1

	b	.L294
	daddu	$4,$4,$5

.L295:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi16EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi16EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi16EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi12ELi16EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi12ELi16EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi12ELi16EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,16			# 0x10
	b	.L298
	li	$12,255			# 0xff

.L303:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L304
	daddu	$6,$6,$9

.L298:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,24
.L297:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L297
	daddiu	$10,$10,2

	b	.L303
	daddu	$4,$4,$7

.L304:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi12ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi12ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi12ELi16EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi12ELi16EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi12ELi16EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi12ELi16EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L307
	li	$14,16			# 0x10

.L312:
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	beq	$14,$0,.L313
	daddu	$4,$4,$5

.L307:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,12
.L306:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L306
	daddiu	$10,$10,1

	b	.L312
	daddu	$6,$6,$7

.L313:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi12ELi16EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi12ELi16EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi12ELi16EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,4			# 0x4
.L316:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
.L315:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L315
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L316
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi16ELi4EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi16ELi4EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi16ELi4EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,4			# 0x4
	li	$12,255			# 0xff
.L322:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
.L321:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L321
	daddiu	$10,$10,2

	daddu	$4,$4,$7
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	bne	$15,$0,.L322
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi16ELi4EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi16ELi4EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi16ELi4EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,4			# 0x4
.L328:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
.L327:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L327
	daddiu	$10,$10,1

	daddu	$6,$6,$7
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	bne	$14,$0,.L328
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L334
	li	$10,16			# 0x10

.L339:
	addiu	$10,$10,-1
	beq	$10,$0,.L340
	daddu	$6,$6,$7

.L334:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L333:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L333
	daddiu	$3,$3,1

	b	.L339
	daddu	$4,$4,$5

.L340:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi4ELi16EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi4ELi16EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi4ELi16EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$10,16			# 0x10
	li	$3,255			# 0xff
.L342:
	lh	$2,0($5)
	lh	$11,0($4)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($6)
	lh	$2,2($4)
	lh	$11,2($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($6)
	lh	$2,4($4)
	lh	$11,4($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,2($6)
	lh	$2,6($4)
	lh	$11,6($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,3($6)
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	addiu	$10,$10,-1
	bne	$10,$0,.L342
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi4ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi4ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi4ELi16EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi16EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi16EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi16EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L347
	li	$14,16			# 0x10

.L352:
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	beq	$14,$0,.L353
	daddu	$4,$4,$5

.L347:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,4
.L346:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L346
	daddiu	$10,$10,1

	b	.L352
	daddu	$6,$6,$7

.L353:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi16EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi16EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi16EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,16			# 0x10
.L356:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
.L355:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L355
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L356
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi32ELi16EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi32ELi16EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi32ELi16EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,16			# 0x10
	li	$12,255			# 0xff
.L362:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
.L361:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L361
	daddiu	$10,$10,2

	daddu	$4,$4,$7
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	bne	$15,$0,.L362
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi32ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi32ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi32ELi16EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi16EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi16EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi16EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,16			# 0x10
.L368:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
.L367:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L367
	daddiu	$10,$10,1

	daddu	$6,$6,$7
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	bne	$14,$0,.L368
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi16EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi16EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi16EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L374
	li	$10,32			# 0x20

.L379:
	addiu	$10,$10,-1
	beq	$10,$0,.L380
	daddu	$6,$6,$7

.L374:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
.L373:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L373
	daddiu	$3,$3,1

	b	.L379
	daddu	$4,$4,$5

.L380:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi16ELi32EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi16ELi32EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi16ELi32EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,32			# 0x20
	b	.L383
	li	$12,255			# 0xff

.L388:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L389
	daddu	$6,$6,$9

.L383:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
.L382:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L382
	daddiu	$10,$10,2

	b	.L388
	daddu	$4,$4,$7

.L389:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi16ELi32EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi16ELi32EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi16ELi32EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi32EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi32EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi32EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L392
	li	$14,32			# 0x20

.L397:
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	beq	$14,$0,.L398
	daddu	$4,$4,$5

.L392:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
.L391:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L391
	daddiu	$10,$10,1

	b	.L397
	daddu	$6,$6,$7

.L398:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi32EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi32EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi32EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi24EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi24EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi24EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,24			# 0x18
.L401:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
.L400:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L400
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L401
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi24EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi24EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi24EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi32ELi24EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi32ELi24EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi32ELi24EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,24			# 0x18
	b	.L407
	li	$12,255			# 0xff

.L412:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L413
	daddu	$6,$6,$9

.L407:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
.L406:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L406
	daddiu	$10,$10,2

	b	.L412
	daddu	$4,$4,$7

.L413:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi32ELi24EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi32ELi24EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi32ELi24EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi24EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi24EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi24EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,24			# 0x18
.L416:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
.L415:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L415
	daddiu	$10,$10,1

	daddu	$6,$6,$7
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	bne	$14,$0,.L416
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi24EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi24EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi24EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi32EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi32EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi32EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L422
	li	$10,32			# 0x20

.L427:
	addiu	$10,$10,-1
	beq	$10,$0,.L428
	daddu	$6,$6,$7

.L422:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,24
.L421:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L421
	daddiu	$3,$3,1

	b	.L427
	daddu	$4,$4,$5

.L428:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi32EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi32EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi32EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi24ELi32EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi24ELi32EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi24ELi32EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,32			# 0x20
	b	.L431
	li	$12,255			# 0xff

.L436:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L437
	daddu	$6,$6,$9

.L431:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,48
.L430:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L430
	daddiu	$10,$10,2

	b	.L436
	daddu	$4,$4,$7

.L437:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi24ELi32EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi24ELi32EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi24ELi32EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi24ELi32EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi24ELi32EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi24ELi32EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L440
	li	$14,32			# 0x20

.L445:
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	beq	$14,$0,.L446
	daddu	$4,$4,$5

.L440:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,24
.L439:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L439
	daddiu	$10,$10,1

	b	.L445
	daddu	$6,$6,$7

.L446:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi24ELi32EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi24ELi32EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi24ELi32EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,8			# 0x8
.L449:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
.L448:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L448
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L449
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi32ELi8EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi32ELi8EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi32ELi8EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,8			# 0x8
	li	$12,255			# 0xff
.L455:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
.L454:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L454
	daddiu	$10,$10,2

	daddu	$4,$4,$7
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	bne	$15,$0,.L455
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi32ELi8EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi32ELi8EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi32ELi8EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi8EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi8EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi8EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,8			# 0x8
.L461:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
.L460:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L460
	daddiu	$10,$10,1

	daddu	$6,$6,$7
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	bne	$14,$0,.L461
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi8EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi8EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi8EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi32EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi32EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi32EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L467
	li	$10,32			# 0x20

.L472:
	addiu	$10,$10,-1
	beq	$10,$0,.L473
	daddu	$6,$6,$7

.L467:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L466:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L466
	daddiu	$3,$3,1

	b	.L472
	daddu	$4,$4,$5

.L473:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi32EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi32EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi32EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi8ELi32EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi8ELi32EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi8ELi32EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,32			# 0x20
	b	.L476
	li	$12,255			# 0xff

.L481:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L482
	daddu	$6,$6,$9

.L476:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L475:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L475
	daddiu	$10,$10,2

	b	.L481
	daddu	$4,$4,$7

.L482:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi8ELi32EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi8ELi32EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi8ELi32EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi32EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi32EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi32EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L485
	li	$14,32			# 0x20

.L490:
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	beq	$14,$0,.L491
	daddu	$4,$4,$5

.L485:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
.L484:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L484
	daddiu	$10,$10,1

	b	.L490
	daddu	$6,$6,$7

.L491:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi32EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi32EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi32EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi32EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi32EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi32EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,32			# 0x20
.L494:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
.L493:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L493
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L494
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi32EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi32EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi32EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi64ELi32EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi64ELi32EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi64ELi32EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,32			# 0x20
	li	$12,255			# 0xff
.L500:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
.L499:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L499
	daddiu	$10,$10,2

	daddu	$4,$4,$7
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	bne	$15,$0,.L500
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi64ELi32EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi64ELi32EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi64ELi32EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi32EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi32EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi32EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,32			# 0x20
.L506:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
.L505:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L505
	daddiu	$10,$10,1

	daddu	$6,$6,$7
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	bne	$14,$0,.L506
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi32EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi32EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi32EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L512
	li	$10,64			# 0x40

.L517:
	addiu	$10,$10,-1
	beq	$10,$0,.L518
	daddu	$6,$6,$7

.L512:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
.L511:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L511
	daddiu	$3,$3,1

	b	.L517
	daddu	$4,$4,$5

.L518:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,64			# 0x40
	b	.L521
	li	$12,255			# 0xff

.L526:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L527
	daddu	$6,$6,$9

.L521:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
.L520:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L520
	daddiu	$10,$10,2

	b	.L526
	daddu	$4,$4,$7

.L527:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi64EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi64EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi64EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L530
	li	$14,64			# 0x40

.L535:
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	beq	$14,$0,.L536
	daddu	$4,$4,$5

.L530:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
.L529:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L529
	daddiu	$10,$10,1

	b	.L535
	daddu	$6,$6,$7

.L536:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi64EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi64EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi64EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi48EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi48EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi48EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,48			# 0x30
.L539:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
.L538:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L538
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L539
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi48EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi48EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi48EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi64ELi48EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi64ELi48EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi64ELi48EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,48			# 0x30
	b	.L545
	li	$12,255			# 0xff

.L550:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L551
	daddu	$6,$6,$9

.L545:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
.L544:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L544
	daddiu	$10,$10,2

	b	.L550
	daddu	$4,$4,$7

.L551:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi64ELi48EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi64ELi48EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi64ELi48EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi48EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi48EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi48EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,48			# 0x30
.L554:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
.L553:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L553
	daddiu	$10,$10,1

	daddu	$6,$6,$7
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	bne	$14,$0,.L554
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi48EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi48EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi48EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi48ELi64EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi48ELi64EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi48ELi64EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L560
	li	$10,64			# 0x40

.L565:
	addiu	$10,$10,-1
	beq	$10,$0,.L566
	daddu	$6,$6,$7

.L560:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,48
.L559:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L559
	daddiu	$3,$3,1

	b	.L565
	daddu	$4,$4,$5

.L566:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi48ELi64EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi48ELi64EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi48ELi64EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi48ELi64EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi48ELi64EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi48ELi64EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,64			# 0x40
	b	.L569
	li	$12,255			# 0xff

.L574:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L575
	daddu	$6,$6,$9

.L569:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,96
.L568:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L568
	daddiu	$10,$10,2

	b	.L574
	daddu	$4,$4,$7

.L575:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi48ELi64EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi48ELi64EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi48ELi64EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi48ELi64EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi48ELi64EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi48ELi64EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L578
	li	$14,64			# 0x40

.L583:
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	beq	$14,$0,.L584
	daddu	$4,$4,$5

.L578:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,48
.L577:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L577
	daddiu	$10,$10,1

	b	.L583
	daddu	$6,$6,$7

.L584:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi48ELi64EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi48ELi64EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi48ELi64EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi16EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi16EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi16EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,16			# 0x10
.L587:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
.L586:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L586
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L587
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi16EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi16EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi16EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi64ELi16EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi64ELi16EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi64ELi16EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,16			# 0x10
	li	$12,255			# 0xff
.L593:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
.L592:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L592
	daddiu	$10,$10,2

	daddu	$4,$4,$7
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	bne	$15,$0,.L593
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi64ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi64ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi64ELi16EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi16EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi16EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi16EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,16			# 0x10
.L599:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
.L598:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L598
	daddiu	$10,$10,1

	daddu	$6,$6,$7
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	bne	$14,$0,.L599
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi16EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi16EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi16EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L605
	li	$10,64			# 0x40

.L610:
	addiu	$10,$10,-1
	beq	$10,$0,.L611
	daddu	$6,$6,$7

.L605:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
.L604:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L604
	daddiu	$3,$3,1

	b	.L610
	daddu	$4,$4,$5

.L611:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,64			# 0x40
	b	.L614
	li	$12,255			# 0xff

.L619:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L620
	daddu	$6,$6,$9

.L614:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
.L613:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L613
	daddiu	$10,$10,2

	b	.L619
	daddu	$4,$4,$7

.L620:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi64EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi64EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi64EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L623
	li	$14,64			# 0x40

.L628:
	daddu	$8,$8,$9
	addiu	$14,$14,-1
	beq	$14,$0,.L629
	daddu	$4,$4,$5

.L623:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
.L622:
	lbu	$2,0($3)
	lbu	$12,0($11)
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	bne	$3,$13,.L622
	daddiu	$10,$10,1

	b	.L628
	daddu	$6,$6,$7

.L629:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi64EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi64EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi64EEEvPhlPKhlS3_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi4ELi8EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi4ELi8EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi4ELi8EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,8			# 0x8
	b	.L632
	move	$2,$0

.L637:
	addiu	$12,$12,-1
	beq	$12,$0,.L638
	daddu	$6,$6,$7

.L632:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,4
.L631:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L631
	daddiu	$9,$9,1

	b	.L637
	daddu	$4,$4,$5

.L638:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi4ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi4ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi4ELi8EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi8ELi4EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi8ELi4EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi8ELi4EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,4			# 0x4
	move	$2,$0
.L641:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,8
.L640:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L640
	daddiu	$9,$9,1

	daddu	$4,$4,$5
	addiu	$12,$12,-1
	bne	$12,$0,.L641
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi8ELi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi8ELi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi8ELi4EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi16ELi8EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi16ELi8EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi16ELi8EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,8			# 0x8
	move	$2,$0
.L647:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,16
.L646:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L646
	daddiu	$9,$9,1

	daddu	$4,$4,$5
	addiu	$12,$12,-1
	bne	$12,$0,.L647
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi16ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi16ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi16ELi8EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi8ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi8ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi8ELi16EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,16			# 0x10
	b	.L653
	move	$2,$0

.L658:
	addiu	$12,$12,-1
	beq	$12,$0,.L659
	daddu	$6,$6,$7

.L653:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,8
.L652:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L652
	daddiu	$9,$9,1

	b	.L658
	daddu	$4,$4,$5

.L659:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi8ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi8ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi8ELi16EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi16ELi12EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi16ELi12EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi16ELi12EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,12			# 0xc
	move	$2,$0
.L662:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,16
.L661:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L661
	daddiu	$9,$9,1

	daddu	$4,$4,$5
	addiu	$12,$12,-1
	bne	$12,$0,.L662
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi16ELi12EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi16ELi12EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi16ELi12EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi12ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi12ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi12ELi16EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,16			# 0x10
	b	.L668
	move	$2,$0

.L673:
	addiu	$12,$12,-1
	beq	$12,$0,.L674
	daddu	$6,$6,$7

.L668:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,12
.L667:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L667
	daddiu	$9,$9,1

	b	.L673
	daddu	$4,$4,$5

.L674:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi12ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi12ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi12ELi16EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi16ELi4EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi16ELi4EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi16ELi4EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,4			# 0x4
	move	$2,$0
.L677:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,16
.L676:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L676
	daddiu	$9,$9,1

	daddu	$4,$4,$5
	addiu	$12,$12,-1
	bne	$12,$0,.L677
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi16ELi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi16ELi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi16ELi4EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi4ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi4ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi4ELi16EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,16			# 0x10
	b	.L683
	move	$2,$0

.L688:
	addiu	$12,$12,-1
	beq	$12,$0,.L689
	daddu	$6,$6,$7

.L683:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,4
.L682:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L682
	daddiu	$9,$9,1

	b	.L688
	daddu	$4,$4,$5

.L689:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi4ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi4ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi4ELi16EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi32ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi32ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi32ELi16EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,16			# 0x10
	move	$2,$0
.L692:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,32
.L691:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L691
	daddiu	$9,$9,1

	daddu	$4,$4,$5
	addiu	$12,$12,-1
	bne	$12,$0,.L692
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi32ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi32ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi32ELi16EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi16ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi16ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi16ELi32EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,32			# 0x20
	b	.L698
	move	$2,$0

.L703:
	addiu	$12,$12,-1
	beq	$12,$0,.L704
	daddu	$6,$6,$7

.L698:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,16
.L697:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L697
	daddiu	$9,$9,1

	b	.L703
	daddu	$4,$4,$5

.L704:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi16ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi16ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi16ELi32EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi32ELi24EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi32ELi24EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi32ELi24EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,24			# 0x18
	move	$2,$0
.L707:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,32
.L706:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L706
	daddiu	$9,$9,1

	daddu	$4,$4,$5
	addiu	$12,$12,-1
	bne	$12,$0,.L707
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi32ELi24EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi32ELi24EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi32ELi24EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi24ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi24ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi24ELi32EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,32			# 0x20
	b	.L713
	move	$2,$0

.L718:
	addiu	$12,$12,-1
	beq	$12,$0,.L719
	daddu	$6,$6,$7

.L713:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,24
.L712:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L712
	daddiu	$9,$9,1

	b	.L718
	daddu	$4,$4,$5

.L719:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi24ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi24ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi24ELi32EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi32ELi8EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi32ELi8EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi32ELi8EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,8			# 0x8
	move	$2,$0
.L722:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,32
.L721:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L721
	daddiu	$9,$9,1

	daddu	$4,$4,$5
	addiu	$12,$12,-1
	bne	$12,$0,.L722
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi32ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi32ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi32ELi8EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi8ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi8ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi8ELi32EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,32			# 0x20
	b	.L728
	move	$2,$0

.L733:
	addiu	$12,$12,-1
	beq	$12,$0,.L734
	daddu	$6,$6,$7

.L728:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,8
.L727:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L727
	daddiu	$9,$9,1

	b	.L733
	daddu	$4,$4,$5

.L734:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi8ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi8ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi8ELi32EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi64ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi64ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi64ELi32EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,32			# 0x20
	move	$2,$0
.L737:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,64
.L736:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L736
	daddiu	$9,$9,1

	daddu	$4,$4,$5
	addiu	$12,$12,-1
	bne	$12,$0,.L737
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi64ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi64ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi64ELi32EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi32ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi32ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi32ELi64EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,64			# 0x40
	b	.L743
	move	$2,$0

.L748:
	addiu	$12,$12,-1
	beq	$12,$0,.L749
	daddu	$6,$6,$7

.L743:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,32
.L742:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L742
	daddiu	$9,$9,1

	b	.L748
	daddu	$4,$4,$5

.L749:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi32ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi32ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi32ELi64EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi64ELi48EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi64ELi48EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi64ELi48EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,48			# 0x30
	move	$2,$0
.L752:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,64
.L751:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L751
	daddiu	$9,$9,1

	daddu	$4,$4,$5
	addiu	$12,$12,-1
	bne	$12,$0,.L752
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi64ELi48EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi64ELi48EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi64ELi48EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi48ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi48ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi48ELi64EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,64			# 0x40
	b	.L758
	move	$2,$0

.L763:
	addiu	$12,$12,-1
	beq	$12,$0,.L764
	daddu	$6,$6,$7

.L758:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,48
.L757:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L757
	daddiu	$9,$9,1

	b	.L763
	daddu	$4,$4,$5

.L764:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi48ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi48ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi48ELi64EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi64ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi64ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi64ELi16EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,16			# 0x10
	move	$2,$0
.L767:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,64
.L766:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L766
	daddiu	$9,$9,1

	daddu	$4,$4,$5
	addiu	$12,$12,-1
	bne	$12,$0,.L767
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi64ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi64ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi64ELi16EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi16ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi16ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi16ELi64EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,64			# 0x40
	b	.L773
	move	$2,$0

.L778:
	addiu	$12,$12,-1
	beq	$12,$0,.L779
	daddu	$6,$6,$7

.L773:
	move	$8,$4
	move	$9,$6
	daddiu	$11,$4,16
.L772:
	lbu	$3,0($8)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sra	$10,$3,31
	xor	$3,$10,$3
	subu	$3,$3,$10
	addu	$2,$3,$2
	daddiu	$8,$8,1
	bne	$8,$11,.L772
	daddiu	$9,$9,1

	b	.L778
	daddu	$4,$4,$5

.L779:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi16ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi16ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi16ELi64EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	daddiu	$14,$4,256
.L782:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,4
.L781:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L781
	daddiu	$10,$10,1

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$4,$14,.L782
	daddu	$7,$7,$8

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	b	.L788
	daddiu	$14,$4,512

.L793:
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	beq	$4,$14,.L794
	daddu	$7,$7,$8

.L788:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,4
.L787:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L787
	daddiu	$10,$10,1

	b	.L793
	daddiu	$4,$4,64

.L794:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	daddiu	$14,$4,256
.L797:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,8
.L796:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L796
	daddiu	$10,$10,1

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$4,$14,.L797
	daddu	$7,$7,$8

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	daddiu	$14,$4,512
.L803:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,16
.L802:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L802
	daddiu	$10,$10,1

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$4,$14,.L803
	daddu	$7,$7,$8

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	b	.L809
	daddiu	$14,$4,1024

.L814:
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	beq	$4,$14,.L815
	daddu	$7,$7,$8

.L809:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,8
.L808:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L808
	daddiu	$10,$10,1

	b	.L814
	daddiu	$4,$4,64

.L815:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	daddiu	$14,$4,768
.L818:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,16
.L817:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L817
	daddiu	$10,$10,1

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$4,$14,.L818
	daddu	$7,$7,$8

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	b	.L824
	daddiu	$14,$4,1024

.L829:
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	beq	$4,$14,.L830
	daddu	$7,$7,$8

.L824:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,12
.L823:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L823
	daddiu	$10,$10,1

	b	.L829
	daddiu	$4,$4,64

.L830:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	daddiu	$14,$4,256
.L833:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,16
.L832:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L832
	daddiu	$10,$10,1

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$4,$14,.L833
	daddu	$7,$7,$8

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	b	.L839
	daddiu	$14,$4,1024

.L844:
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	beq	$4,$14,.L845
	daddu	$7,$7,$8

.L839:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,4
.L838:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L838
	daddiu	$10,$10,1

	b	.L844
	daddiu	$4,$4,64

.L845:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	daddiu	$14,$4,1024
.L848:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,32
.L847:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L847
	daddiu	$10,$10,1

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$4,$14,.L848
	daddu	$7,$7,$8

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	b	.L854
	daddiu	$14,$4,2048

.L859:
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	beq	$4,$14,.L860
	daddu	$7,$7,$8

.L854:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,16
.L853:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L853
	daddiu	$10,$10,1

	b	.L859
	daddiu	$4,$4,64

.L860:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	daddiu	$14,$4,1536
.L863:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,32
.L862:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L862
	daddiu	$10,$10,1

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$4,$14,.L863
	daddu	$7,$7,$8

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	b	.L869
	daddiu	$14,$4,2048

.L874:
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	beq	$4,$14,.L875
	daddu	$7,$7,$8

.L869:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,24
.L868:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L868
	daddiu	$10,$10,1

	b	.L874
	daddiu	$4,$4,64

.L875:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	daddiu	$14,$4,512
.L878:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,32
.L877:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L877
	daddiu	$10,$10,1

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$4,$14,.L878
	daddu	$7,$7,$8

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	b	.L884
	daddiu	$14,$4,2048

.L889:
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	beq	$4,$14,.L890
	daddu	$7,$7,$8

.L884:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,8
.L883:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L883
	daddiu	$10,$10,1

	b	.L889
	daddiu	$4,$4,64

.L890:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	daddiu	$14,$4,2048
.L893:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,64
.L892:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L892
	daddiu	$10,$10,1

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$4,$14,.L893
	daddu	$7,$7,$8

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	b	.L899
	daddiu	$14,$4,4096

.L904:
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	beq	$4,$14,.L905
	daddu	$7,$7,$8

.L899:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,32
.L898:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L898
	daddiu	$10,$10,1

	b	.L904
	daddiu	$4,$4,64

.L905:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	daddiu	$14,$4,3072
.L908:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,64
.L907:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L907
	daddiu	$10,$10,1

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$4,$14,.L908
	daddu	$7,$7,$8

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	b	.L914
	daddiu	$14,$4,4096

.L919:
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	beq	$4,$14,.L920
	daddu	$7,$7,$8

.L914:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,48
.L913:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L913
	daddiu	$10,$10,1

	b	.L919
	daddiu	$4,$4,64

.L920:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	daddiu	$14,$4,1024
.L923:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,64
.L922:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L922
	daddiu	$10,$10,1

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$4,$14,.L923
	daddu	$7,$7,$8

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	b	.L929
	daddiu	$14,$4,4096

.L934:
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	beq	$4,$14,.L935
	daddu	$7,$7,$8

.L929:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$13,$4,16
.L928:
	lbu	$2,0($3)
	lbu	$15,0($12)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,0($9)
	addu	$2,$15,$2
	sw	$2,0($9)
	lbu	$2,0($3)
	lbu	$15,0($11)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,4($9)
	addu	$2,$15,$2
	sw	$2,4($9)
	lbu	$2,0($3)
	lbu	$15,0($10)
	subu	$2,$2,$15
	sra	$15,$2,31
	xor	$2,$15,$2
	subu	$2,$2,$15
	lw	$15,8($9)
	addu	$2,$15,$2
	sw	$2,8($9)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	bne	$3,$13,.L928
	daddiu	$10,$10,1

	b	.L934
	daddiu	$4,$4,64

.L935:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	daddiu	$24,$4,256
.L938:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,4
.L937:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L937
	daddiu	$11,$11,1

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$24,.L938
	daddu	$8,$8,$9

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	b	.L944
	daddiu	$24,$4,512

.L949:
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	beq	$4,$24,.L948
	daddu	$8,$8,$9

.L944:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,4
.L943:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L943
	daddiu	$11,$11,1

	b	.L949
	daddiu	$4,$4,64

.L948:
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	daddiu	$24,$4,256
.L952:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,8
.L951:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L951
	daddiu	$11,$11,1

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$24,.L952
	daddu	$8,$8,$9

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	daddiu	$24,$4,512
.L958:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,16
.L957:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L957
	daddiu	$11,$11,1

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$24,.L958
	daddu	$8,$8,$9

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	b	.L964
	daddiu	$24,$4,1024

.L969:
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	beq	$4,$24,.L968
	daddu	$8,$8,$9

.L964:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,8
.L963:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L963
	daddiu	$11,$11,1

	b	.L969
	daddiu	$4,$4,64

.L968:
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	daddiu	$24,$4,768
.L972:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,16
.L971:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L971
	daddiu	$11,$11,1

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$24,.L972
	daddu	$8,$8,$9

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	b	.L978
	daddiu	$24,$4,1024

.L983:
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	beq	$4,$24,.L982
	daddu	$8,$8,$9

.L978:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,12
.L977:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L977
	daddiu	$11,$11,1

	b	.L983
	daddiu	$4,$4,64

.L982:
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	daddiu	$24,$4,256
.L986:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,16
.L985:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L985
	daddiu	$11,$11,1

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$24,.L986
	daddu	$8,$8,$9

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	b	.L992
	daddiu	$24,$4,1024

.L997:
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	beq	$4,$24,.L996
	daddu	$8,$8,$9

.L992:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,4
.L991:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L991
	daddiu	$11,$11,1

	b	.L997
	daddiu	$4,$4,64

.L996:
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	daddiu	$24,$4,1024
.L1000:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,32
.L999:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L999
	daddiu	$11,$11,1

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$24,.L1000
	daddu	$8,$8,$9

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	b	.L1006
	daddiu	$24,$4,2048

.L1011:
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	beq	$4,$24,.L1010
	daddu	$8,$8,$9

.L1006:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,16
.L1005:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L1005
	daddiu	$11,$11,1

	b	.L1011
	daddiu	$4,$4,64

.L1010:
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	daddiu	$24,$4,1536
.L1014:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,32
.L1013:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L1013
	daddiu	$11,$11,1

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$24,.L1014
	daddu	$8,$8,$9

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	b	.L1020
	daddiu	$24,$4,2048

.L1025:
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	beq	$4,$24,.L1024
	daddu	$8,$8,$9

.L1020:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,24
.L1019:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L1019
	daddiu	$11,$11,1

	b	.L1025
	daddiu	$4,$4,64

.L1024:
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	daddiu	$24,$4,512
.L1028:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,32
.L1027:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L1027
	daddiu	$11,$11,1

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$24,.L1028
	daddu	$8,$8,$9

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	b	.L1034
	daddiu	$24,$4,2048

.L1039:
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	beq	$4,$24,.L1038
	daddu	$8,$8,$9

.L1034:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,8
.L1033:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L1033
	daddiu	$11,$11,1

	b	.L1039
	daddiu	$4,$4,64

.L1038:
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	daddiu	$24,$4,2048
.L1042:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,64
.L1041:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L1041
	daddiu	$11,$11,1

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$24,.L1042
	daddu	$8,$8,$9

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	b	.L1048
	daddiu	$24,$4,4096

.L1053:
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	beq	$4,$24,.L1052
	daddu	$8,$8,$9

.L1048:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,32
.L1047:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L1047
	daddiu	$11,$11,1

	b	.L1053
	daddiu	$4,$4,64

.L1052:
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	daddiu	$24,$4,3072
.L1056:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,64
.L1055:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L1055
	daddiu	$11,$11,1

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$24,.L1056
	daddu	$8,$8,$9

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	b	.L1062
	daddiu	$24,$4,4096

.L1067:
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	beq	$4,$24,.L1066
	daddu	$8,$8,$9

.L1062:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,48
.L1061:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L1061
	daddiu	$11,$11,1

	b	.L1067
	daddiu	$4,$4,64

.L1066:
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	daddiu	$24,$4,1024
.L1070:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,64
.L1069:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L1069
	daddiu	$11,$11,1

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$24,.L1070
	daddu	$8,$8,$9

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sw	$0,0($10)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	b	.L1076
	daddiu	$24,$4,4096

.L1081:
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	beq	$4,$24,.L1080
	daddu	$8,$8,$9

.L1076:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$15,$4,16
.L1075:
	lbu	$2,0($3)
	lbu	$25,0($14)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,0($10)
	addu	$2,$25,$2
	sw	$2,0($10)
	lbu	$2,0($3)
	lbu	$25,0($13)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,4($10)
	addu	$2,$25,$2
	sw	$2,4($10)
	lbu	$2,0($3)
	lbu	$25,0($12)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,8($10)
	addu	$2,$25,$2
	sw	$2,8($10)
	lbu	$2,0($3)
	lbu	$25,0($11)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	lw	$25,12($10)
	addu	$2,$25,$2
	sw	$2,12($10)
	daddiu	$3,$3,1
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	bne	$3,$15,.L1075
	daddiu	$11,$11,1

	b	.L1081
	daddiu	$4,$4,64

.L1080:
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1086
	move	$6,$0

	b	.L1085
	move	$2,$0

.L1084:
	addiu	$6,$6,1
	seh	$6,$6
	slt	$3,$6,$9
	beq	$3,$0,.L1090
	daddiu	$5,$5,4

.L1085:
	lw	$3,0($4)
	lwu	$11,0($5)
	dsubu	$3,$3,$11
	dsra	$11,$3,63
	xor	$3,$11,$3
	dsubu	$3,$3,$11
	sll	$3,$3,0
	dlsa	$11,$6,$7,1
	lhu	$11,0($11)
	addu	$3,$3,$11
	slt	$3,$3,$10
	beq	$3,$0,.L1084
	dlsa	$3,$2,$8,1

	sh	$6,0($3)
	b	.L1084
	addiu	$2,$2,1

.L1090:
	jr	$31
	nop

.L1086:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x1ILi8ELi8EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x1ILi8ELi8EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x1ILi8ELi8EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1095
	move	$6,$0

	b	.L1094
	move	$2,$0

.L1093:
	addiu	$6,$6,1
	seh	$6,$6
	slt	$3,$6,$9
	beq	$3,$0,.L1099
	daddiu	$5,$5,4

.L1094:
	lw	$3,0($4)
	lwu	$11,0($5)
	dsubu	$3,$3,$11
	dsra	$11,$3,63
	xor	$3,$11,$3
	dsubu	$3,$3,$11
	sll	$3,$3,0
	dlsa	$11,$6,$7,1
	lhu	$11,0($11)
	addu	$3,$3,$11
	slt	$3,$3,$10
	beq	$3,$0,.L1093
	dlsa	$3,$2,$8,1

	sh	$6,0($3)
	b	.L1093
	addiu	$2,$2,1

.L1099:
	jr	$31
	nop

.L1095:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x1ILi8ELi8EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x1ILi8ELi8EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x1ILi8ELi8EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1104
	dlsa	$6,$6,$5,2

	move	$12,$0
	b	.L1103
	move	$2,$0

.L1102:
	addiu	$12,$12,1
	seh	$12,$12
	daddiu	$5,$5,4
	slt	$3,$12,$9
	beq	$3,$0,.L1108
	daddiu	$6,$6,4

.L1103:
	lw	$3,0($4)
	lwu	$11,0($5)
	dsubu	$3,$3,$11
	dsra	$11,$3,63
	xor	$3,$11,$3
	dsubu	$3,$3,$11
	lw	$11,4($4)
	lwu	$13,0($6)
	dsubu	$11,$11,$13
	dsra	$13,$11,63
	xor	$11,$13,$11
	dsubu	$11,$11,$13
	daddu	$3,$3,$11
	sll	$3,$3,0
	dlsa	$11,$12,$7,1
	lhu	$11,0($11)
	addu	$3,$3,$11
	slt	$3,$3,$10
	beq	$3,$0,.L1102
	dlsa	$3,$2,$8,1

	sh	$12,0($3)
	b	.L1102
	addiu	$2,$2,1

.L1108:
	jr	$31
	nop

.L1104:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x2ILi4ELi8EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x2ILi4ELi8EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x2ILi4ELi8EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1113
	dlsa	$6,$6,$5,2

	move	$12,$0
	b	.L1112
	move	$2,$0

.L1111:
	addiu	$12,$12,1
	seh	$12,$12
	daddiu	$5,$5,4
	slt	$3,$12,$9
	beq	$3,$0,.L1117
	daddiu	$6,$6,4

.L1112:
	lw	$3,0($4)
	lwu	$11,0($5)
	dsubu	$3,$3,$11
	dsra	$11,$3,63
	xor	$3,$11,$3
	dsubu	$3,$3,$11
	lw	$11,4($4)
	lwu	$13,0($6)
	dsubu	$11,$11,$13
	dsra	$13,$11,63
	xor	$11,$13,$11
	dsubu	$11,$11,$13
	daddu	$3,$3,$11
	sll	$3,$3,0
	dlsa	$11,$12,$7,1
	lhu	$11,0($11)
	addu	$3,$3,$11
	slt	$3,$3,$10
	beq	$3,$0,.L1111
	dlsa	$3,$2,$8,1

	sh	$12,0($3)
	b	.L1111
	addiu	$2,$2,1

.L1117:
	jr	$31
	nop

.L1113:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x2ILi4ELi8EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x2ILi4ELi8EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x2ILi4ELi8EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1122
	dsll	$6,$6,2

	daddu	$13,$5,$6
	daddiu	$6,$6,32
	daddu	$12,$5,$6
	move	$11,$0
	b	.L1121
	move	$2,$0

.L1120:
	addiu	$11,$11,1
	seh	$11,$11
	daddiu	$5,$5,4
	daddiu	$13,$13,4
	slt	$3,$11,$9
	beq	$3,$0,.L1126
	daddiu	$12,$12,4

.L1121:
	lw	$3,0($4)
	lwu	$6,0($5)
	dsubu	$3,$3,$6
	dsra	$6,$3,63
	xor	$3,$6,$3
	dsubu	$3,$3,$6
	lw	$6,4($4)
	lwu	$14,32($5)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,8($4)
	lwu	$14,0($13)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,12($4)
	lwu	$14,0($12)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	sll	$3,$3,0
	dlsa	$6,$11,$7,1
	lhu	$6,0($6)
	addu	$3,$3,$6
	slt	$3,$3,$10
	beq	$3,$0,.L1120
	dlsa	$3,$2,$8,1

	sh	$11,0($3)
	b	.L1120
	addiu	$2,$2,1

.L1126:
	jr	$31
	nop

.L1122:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x2ILi16ELi8EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x2ILi16ELi8EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x2ILi16ELi8EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1131
	dlsa	$6,$6,$5,2

	move	$12,$0
	b	.L1130
	move	$2,$0

.L1129:
	addiu	$12,$12,1
	seh	$12,$12
	daddiu	$5,$5,4
	slt	$3,$12,$9
	beq	$3,$0,.L1135
	daddiu	$6,$6,4

.L1130:
	lw	$3,0($4)
	lwu	$11,0($5)
	dsubu	$3,$3,$11
	dsra	$11,$3,63
	xor	$3,$11,$3
	dsubu	$3,$3,$11
	lw	$11,4($4)
	lwu	$13,0($6)
	dsubu	$11,$11,$13
	dsra	$13,$11,63
	xor	$11,$13,$11
	dsubu	$11,$11,$13
	daddu	$3,$3,$11
	sll	$3,$3,0
	dlsa	$11,$12,$7,1
	lhu	$11,0($11)
	addu	$3,$3,$11
	slt	$3,$3,$10
	beq	$3,$0,.L1129
	dlsa	$3,$2,$8,1

	sh	$12,0($3)
	b	.L1129
	addiu	$2,$2,1

.L1135:
	jr	$31
	nop

.L1131:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x2ILi16ELi8EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x2ILi16ELi8EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x2ILi16ELi8EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x2ILi8ELi16EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x2ILi8ELi16EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x2ILi8ELi16EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1140
	dlsa	$6,$6,$5,2

	move	$12,$0
	b	.L1139
	move	$2,$0

.L1138:
	addiu	$12,$12,1
	seh	$12,$12
	daddiu	$5,$5,4
	slt	$3,$12,$9
	beq	$3,$0,.L1144
	daddiu	$6,$6,4

.L1139:
	lw	$3,0($4)
	lwu	$11,0($5)
	dsubu	$3,$3,$11
	dsra	$11,$3,63
	xor	$3,$11,$3
	dsubu	$3,$3,$11
	lw	$11,4($4)
	lwu	$13,0($6)
	dsubu	$11,$11,$13
	dsra	$13,$11,63
	xor	$11,$13,$11
	dsubu	$11,$11,$13
	daddu	$3,$3,$11
	sll	$3,$3,0
	dlsa	$11,$12,$7,1
	lhu	$11,0($11)
	addu	$3,$3,$11
	slt	$3,$3,$10
	beq	$3,$0,.L1138
	dlsa	$3,$2,$8,1

	sh	$12,0($3)
	b	.L1138
	addiu	$2,$2,1

.L1144:
	jr	$31
	nop

.L1140:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x2ILi8ELi16EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x2ILi8ELi16EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x2ILi8ELi16EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x1ILi16ELi12EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x1ILi16ELi12EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x1ILi16ELi12EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1149
	move	$6,$0

	b	.L1148
	move	$2,$0

.L1147:
	addiu	$6,$6,1
	seh	$6,$6
	slt	$3,$6,$9
	beq	$3,$0,.L1153
	daddiu	$5,$5,4

.L1148:
	lw	$3,0($4)
	lwu	$11,0($5)
	dsubu	$3,$3,$11
	dsra	$11,$3,63
	xor	$3,$11,$3
	dsubu	$3,$3,$11
	sll	$3,$3,0
	dlsa	$11,$6,$7,1
	lhu	$11,0($11)
	addu	$3,$3,$11
	slt	$3,$3,$10
	beq	$3,$0,.L1147
	dlsa	$3,$2,$8,1

	sh	$6,0($3)
	b	.L1147
	addiu	$2,$2,1

.L1153:
	jr	$31
	nop

.L1149:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x1ILi16ELi12EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x1ILi16ELi12EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x1ILi16ELi12EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x1ILi12ELi16EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x1ILi12ELi16EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x1ILi12ELi16EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1158
	move	$6,$0

	b	.L1157
	move	$2,$0

.L1156:
	addiu	$6,$6,1
	seh	$6,$6
	slt	$3,$6,$9
	beq	$3,$0,.L1162
	daddiu	$5,$5,4

.L1157:
	lw	$3,0($4)
	lwu	$11,0($5)
	dsubu	$3,$3,$11
	dsra	$11,$3,63
	xor	$3,$11,$3
	dsubu	$3,$3,$11
	sll	$3,$3,0
	dlsa	$11,$6,$7,1
	lhu	$11,0($11)
	addu	$3,$3,$11
	slt	$3,$3,$10
	beq	$3,$0,.L1156
	dlsa	$3,$2,$8,1

	sh	$6,0($3)
	b	.L1156
	addiu	$2,$2,1

.L1162:
	jr	$31
	nop

.L1158:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x1ILi12ELi16EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x1ILi12ELi16EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x1ILi12ELi16EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x1ILi16ELi4EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x1ILi16ELi4EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x1ILi16ELi4EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1167
	move	$6,$0

	b	.L1166
	move	$2,$0

.L1165:
	addiu	$6,$6,1
	seh	$6,$6
	slt	$3,$6,$9
	beq	$3,$0,.L1171
	daddiu	$5,$5,4

.L1166:
	lw	$3,0($4)
	lwu	$11,0($5)
	dsubu	$3,$3,$11
	dsra	$11,$3,63
	xor	$3,$11,$3
	dsubu	$3,$3,$11
	sll	$3,$3,0
	dlsa	$11,$6,$7,1
	lhu	$11,0($11)
	addu	$3,$3,$11
	slt	$3,$3,$10
	beq	$3,$0,.L1165
	dlsa	$3,$2,$8,1

	sh	$6,0($3)
	b	.L1165
	addiu	$2,$2,1

.L1171:
	jr	$31
	nop

.L1167:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x1ILi16ELi4EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x1ILi16ELi4EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x1ILi16ELi4EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x1ILi4ELi16EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x1ILi4ELi16EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x1ILi4ELi16EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1176
	move	$6,$0

	b	.L1175
	move	$2,$0

.L1174:
	addiu	$6,$6,1
	seh	$6,$6
	slt	$3,$6,$9
	beq	$3,$0,.L1180
	daddiu	$5,$5,4

.L1175:
	lw	$3,0($4)
	lwu	$11,0($5)
	dsubu	$3,$3,$11
	dsra	$11,$3,63
	xor	$3,$11,$3
	dsubu	$3,$3,$11
	sll	$3,$3,0
	dlsa	$11,$6,$7,1
	lhu	$11,0($11)
	addu	$3,$3,$11
	slt	$3,$3,$10
	beq	$3,$0,.L1174
	dlsa	$3,$2,$8,1

	sh	$6,0($3)
	b	.L1174
	addiu	$2,$2,1

.L1180:
	jr	$31
	nop

.L1176:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x1ILi4ELi16EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x1ILi4ELi16EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x1ILi4ELi16EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1185
	dsll	$6,$6,2

	daddu	$13,$5,$6
	daddiu	$6,$6,64
	daddu	$12,$5,$6
	move	$11,$0
	b	.L1184
	move	$2,$0

.L1183:
	addiu	$11,$11,1
	seh	$11,$11
	daddiu	$5,$5,4
	daddiu	$13,$13,4
	slt	$3,$11,$9
	beq	$3,$0,.L1189
	daddiu	$12,$12,4

.L1184:
	lw	$3,0($4)
	lwu	$6,0($5)
	dsubu	$3,$3,$6
	dsra	$6,$3,63
	xor	$3,$6,$3
	dsubu	$3,$3,$6
	lw	$6,4($4)
	lwu	$14,64($5)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,8($4)
	lwu	$14,0($13)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,12($4)
	lwu	$14,0($12)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	sll	$3,$3,0
	dlsa	$6,$11,$7,1
	lhu	$6,0($6)
	addu	$3,$3,$6
	slt	$3,$3,$10
	beq	$3,$0,.L1183
	dlsa	$3,$2,$8,1

	sh	$11,0($3)
	b	.L1183
	addiu	$2,$2,1

.L1189:
	jr	$31
	nop

.L1185:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x2ILi32ELi16EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x2ILi32ELi16EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x2ILi32ELi16EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1194
	dlsa	$6,$6,$5,2

	move	$12,$0
	b	.L1193
	move	$2,$0

.L1192:
	addiu	$12,$12,1
	seh	$12,$12
	daddiu	$5,$5,4
	slt	$3,$12,$9
	beq	$3,$0,.L1198
	daddiu	$6,$6,4

.L1193:
	lw	$3,0($4)
	lwu	$11,0($5)
	dsubu	$3,$3,$11
	dsra	$11,$3,63
	xor	$3,$11,$3
	dsubu	$3,$3,$11
	lw	$11,4($4)
	lwu	$13,0($6)
	dsubu	$11,$11,$13
	dsra	$13,$11,63
	xor	$11,$13,$11
	dsubu	$11,$11,$13
	daddu	$3,$3,$11
	sll	$3,$3,0
	dlsa	$11,$12,$7,1
	lhu	$11,0($11)
	addu	$3,$3,$11
	slt	$3,$3,$10
	beq	$3,$0,.L1192
	dlsa	$3,$2,$8,1

	sh	$12,0($3)
	b	.L1192
	addiu	$2,$2,1

.L1198:
	jr	$31
	nop

.L1194:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x2ILi32ELi16EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x2ILi32ELi16EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x2ILi32ELi16EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x2ILi16ELi32EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x2ILi16ELi32EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x2ILi16ELi32EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1203
	dlsa	$6,$6,$5,2

	move	$12,$0
	b	.L1202
	move	$2,$0

.L1201:
	addiu	$12,$12,1
	seh	$12,$12
	daddiu	$5,$5,4
	slt	$3,$12,$9
	beq	$3,$0,.L1207
	daddiu	$6,$6,4

.L1202:
	lw	$3,0($4)
	lwu	$11,0($5)
	dsubu	$3,$3,$11
	dsra	$11,$3,63
	xor	$3,$11,$3
	dsubu	$3,$3,$11
	lw	$11,4($4)
	lwu	$13,0($6)
	dsubu	$11,$11,$13
	dsra	$13,$11,63
	xor	$11,$13,$11
	dsubu	$11,$11,$13
	daddu	$3,$3,$11
	sll	$3,$3,0
	dlsa	$11,$12,$7,1
	lhu	$11,0($11)
	addu	$3,$3,$11
	slt	$3,$3,$10
	beq	$3,$0,.L1201
	dlsa	$3,$2,$8,1

	sh	$12,0($3)
	b	.L1201
	addiu	$2,$2,1

.L1207:
	jr	$31
	nop

.L1203:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x2ILi16ELi32EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x2ILi16ELi32EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x2ILi16ELi32EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x4ILi32ELi24EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x4ILi32ELi24EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x4ILi32ELi24EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1212
	dsll	$6,$6,2

	daddu	$13,$5,$6
	daddiu	$6,$6,64
	daddu	$12,$5,$6
	move	$11,$0
	b	.L1211
	move	$2,$0

.L1210:
	addiu	$11,$11,1
	seh	$11,$11
	daddiu	$5,$5,4
	daddiu	$13,$13,4
	slt	$3,$11,$9
	beq	$3,$0,.L1216
	daddiu	$12,$12,4

.L1211:
	lw	$3,0($4)
	lwu	$6,0($5)
	dsubu	$3,$3,$6
	dsra	$6,$3,63
	xor	$3,$6,$3
	dsubu	$3,$3,$6
	lw	$6,4($4)
	lwu	$14,64($5)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,8($4)
	lwu	$14,0($13)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,12($4)
	lwu	$14,0($12)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	sll	$3,$3,0
	dlsa	$6,$11,$7,1
	lhu	$6,0($6)
	addu	$3,$3,$6
	slt	$3,$3,$10
	beq	$3,$0,.L1210
	dlsa	$3,$2,$8,1

	sh	$11,0($3)
	b	.L1210
	addiu	$2,$2,1

.L1216:
	jr	$31
	nop

.L1212:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi32ELi24EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi32ELi24EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi32ELi24EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x4ILi24ELi32EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x4ILi24ELi32EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x4ILi24ELi32EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1221
	dsll	$6,$6,2

	daddu	$13,$5,$6
	daddiu	$6,$6,48
	daddu	$12,$5,$6
	move	$11,$0
	b	.L1220
	move	$2,$0

.L1219:
	addiu	$11,$11,1
	seh	$11,$11
	daddiu	$5,$5,4
	daddiu	$13,$13,4
	slt	$3,$11,$9
	beq	$3,$0,.L1225
	daddiu	$12,$12,4

.L1220:
	lw	$3,0($4)
	lwu	$6,0($5)
	dsubu	$3,$3,$6
	dsra	$6,$3,63
	xor	$3,$6,$3
	dsubu	$3,$3,$6
	lw	$6,4($4)
	lwu	$14,48($5)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,8($4)
	lwu	$14,0($13)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,12($4)
	lwu	$14,0($12)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	sll	$3,$3,0
	dlsa	$6,$11,$7,1
	lhu	$6,0($6)
	addu	$3,$3,$6
	slt	$3,$3,$10
	beq	$3,$0,.L1219
	dlsa	$3,$2,$8,1

	sh	$11,0($3)
	b	.L1219
	addiu	$2,$2,1

.L1225:
	jr	$31
	nop

.L1221:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi24ELi32EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi24ELi32EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi24ELi32EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x4ILi32ELi8EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x4ILi32ELi8EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x4ILi32ELi8EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1230
	dsll	$6,$6,2

	daddu	$13,$5,$6
	daddiu	$6,$6,64
	daddu	$12,$5,$6
	move	$11,$0
	b	.L1229
	move	$2,$0

.L1228:
	addiu	$11,$11,1
	seh	$11,$11
	daddiu	$5,$5,4
	daddiu	$13,$13,4
	slt	$3,$11,$9
	beq	$3,$0,.L1234
	daddiu	$12,$12,4

.L1229:
	lw	$3,0($4)
	lwu	$6,0($5)
	dsubu	$3,$3,$6
	dsra	$6,$3,63
	xor	$3,$6,$3
	dsubu	$3,$3,$6
	lw	$6,4($4)
	lwu	$14,64($5)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,8($4)
	lwu	$14,0($13)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,12($4)
	lwu	$14,0($12)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	sll	$3,$3,0
	dlsa	$6,$11,$7,1
	lhu	$6,0($6)
	addu	$3,$3,$6
	slt	$3,$3,$10
	beq	$3,$0,.L1228
	dlsa	$3,$2,$8,1

	sh	$11,0($3)
	b	.L1228
	addiu	$2,$2,1

.L1234:
	jr	$31
	nop

.L1230:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi32ELi8EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi32ELi8EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi32ELi8EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x4ILi8ELi32EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x4ILi8ELi32EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x4ILi8ELi32EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1239
	dsll	$6,$6,2

	daddu	$13,$5,$6
	daddiu	$6,$6,16
	daddu	$12,$5,$6
	move	$11,$0
	b	.L1238
	move	$2,$0

.L1237:
	addiu	$11,$11,1
	seh	$11,$11
	daddiu	$5,$5,4
	daddiu	$13,$13,4
	slt	$3,$11,$9
	beq	$3,$0,.L1243
	daddiu	$12,$12,4

.L1238:
	lw	$3,0($4)
	lwu	$6,0($5)
	dsubu	$3,$3,$6
	dsra	$6,$3,63
	xor	$3,$6,$3
	dsubu	$3,$3,$6
	lw	$6,4($4)
	lwu	$14,16($5)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,8($4)
	lwu	$14,0($13)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,12($4)
	lwu	$14,0($12)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	sll	$3,$3,0
	dlsa	$6,$11,$7,1
	lhu	$6,0($6)
	addu	$3,$3,$6
	slt	$3,$3,$10
	beq	$3,$0,.L1237
	dlsa	$3,$2,$8,1

	sh	$11,0($3)
	b	.L1237
	addiu	$2,$2,1

.L1243:
	jr	$31
	nop

.L1239:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi8ELi32EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi8ELi32EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi8ELi32EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1248
	dsll	$6,$6,2

	daddu	$13,$5,$6
	daddiu	$6,$6,128
	daddu	$12,$5,$6
	move	$11,$0
	b	.L1247
	move	$2,$0

.L1246:
	addiu	$11,$11,1
	seh	$11,$11
	daddiu	$5,$5,4
	daddiu	$13,$13,4
	slt	$3,$11,$9
	beq	$3,$0,.L1252
	daddiu	$12,$12,4

.L1247:
	lw	$3,0($4)
	lwu	$6,0($5)
	dsubu	$3,$3,$6
	dsra	$6,$3,63
	xor	$3,$6,$3
	dsubu	$3,$3,$6
	lw	$6,4($4)
	lwu	$14,128($5)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,8($4)
	lwu	$14,0($13)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,12($4)
	lwu	$14,0($12)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	sll	$3,$3,0
	dlsa	$6,$11,$7,1
	lhu	$6,0($6)
	addu	$3,$3,$6
	slt	$3,$3,$10
	beq	$3,$0,.L1246
	dlsa	$3,$2,$8,1

	sh	$11,0($3)
	b	.L1246
	addiu	$2,$2,1

.L1252:
	jr	$31
	nop

.L1248:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x2ILi64ELi32EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x2ILi64ELi32EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x2ILi64ELi32EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1257
	dlsa	$6,$6,$5,2

	move	$12,$0
	b	.L1256
	move	$2,$0

.L1255:
	addiu	$12,$12,1
	seh	$12,$12
	daddiu	$5,$5,4
	slt	$3,$12,$9
	beq	$3,$0,.L1261
	daddiu	$6,$6,4

.L1256:
	lw	$3,0($4)
	lwu	$11,0($5)
	dsubu	$3,$3,$11
	dsra	$11,$3,63
	xor	$3,$11,$3
	dsubu	$3,$3,$11
	lw	$11,4($4)
	lwu	$13,0($6)
	dsubu	$11,$11,$13
	dsra	$13,$11,63
	xor	$11,$13,$11
	dsubu	$11,$11,$13
	daddu	$3,$3,$11
	sll	$3,$3,0
	dlsa	$11,$12,$7,1
	lhu	$11,0($11)
	addu	$3,$3,$11
	slt	$3,$3,$10
	beq	$3,$0,.L1255
	dlsa	$3,$2,$8,1

	sh	$12,0($3)
	b	.L1255
	addiu	$2,$2,1

.L1261:
	jr	$31
	nop

.L1257:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x2ILi64ELi32EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x2ILi64ELi32EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x2ILi64ELi32EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x2ILi32ELi64EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x2ILi32ELi64EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x2ILi32ELi64EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1266
	dlsa	$6,$6,$5,2

	move	$12,$0
	b	.L1265
	move	$2,$0

.L1264:
	addiu	$12,$12,1
	seh	$12,$12
	daddiu	$5,$5,4
	slt	$3,$12,$9
	beq	$3,$0,.L1270
	daddiu	$6,$6,4

.L1265:
	lw	$3,0($4)
	lwu	$11,0($5)
	dsubu	$3,$3,$11
	dsra	$11,$3,63
	xor	$3,$11,$3
	dsubu	$3,$3,$11
	lw	$11,4($4)
	lwu	$13,0($6)
	dsubu	$11,$11,$13
	dsra	$13,$11,63
	xor	$11,$13,$11
	dsubu	$11,$11,$13
	daddu	$3,$3,$11
	sll	$3,$3,0
	dlsa	$11,$12,$7,1
	lhu	$11,0($11)
	addu	$3,$3,$11
	slt	$3,$3,$10
	beq	$3,$0,.L1264
	dlsa	$3,$2,$8,1

	sh	$12,0($3)
	b	.L1264
	addiu	$2,$2,1

.L1270:
	jr	$31
	nop

.L1266:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x2ILi32ELi64EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x2ILi32ELi64EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x2ILi32ELi64EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x4ILi64ELi48EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x4ILi64ELi48EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x4ILi64ELi48EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1275
	dsll	$6,$6,2

	daddu	$13,$5,$6
	daddiu	$6,$6,128
	daddu	$12,$5,$6
	move	$11,$0
	b	.L1274
	move	$2,$0

.L1273:
	addiu	$11,$11,1
	seh	$11,$11
	daddiu	$5,$5,4
	daddiu	$13,$13,4
	slt	$3,$11,$9
	beq	$3,$0,.L1279
	daddiu	$12,$12,4

.L1274:
	lw	$3,0($4)
	lwu	$6,0($5)
	dsubu	$3,$3,$6
	dsra	$6,$3,63
	xor	$3,$6,$3
	dsubu	$3,$3,$6
	lw	$6,4($4)
	lwu	$14,128($5)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,8($4)
	lwu	$14,0($13)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,12($4)
	lwu	$14,0($12)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	sll	$3,$3,0
	dlsa	$6,$11,$7,1
	lhu	$6,0($6)
	addu	$3,$3,$6
	slt	$3,$3,$10
	beq	$3,$0,.L1273
	dlsa	$3,$2,$8,1

	sh	$11,0($3)
	b	.L1273
	addiu	$2,$2,1

.L1279:
	jr	$31
	nop

.L1275:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi64ELi48EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi64ELi48EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi64ELi48EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x4ILi48ELi64EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x4ILi48ELi64EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x4ILi48ELi64EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1284
	dsll	$6,$6,2

	daddu	$13,$5,$6
	daddiu	$6,$6,96
	daddu	$12,$5,$6
	move	$11,$0
	b	.L1283
	move	$2,$0

.L1282:
	addiu	$11,$11,1
	seh	$11,$11
	daddiu	$5,$5,4
	daddiu	$13,$13,4
	slt	$3,$11,$9
	beq	$3,$0,.L1288
	daddiu	$12,$12,4

.L1283:
	lw	$3,0($4)
	lwu	$6,0($5)
	dsubu	$3,$3,$6
	dsra	$6,$3,63
	xor	$3,$6,$3
	dsubu	$3,$3,$6
	lw	$6,4($4)
	lwu	$14,96($5)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,8($4)
	lwu	$14,0($13)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,12($4)
	lwu	$14,0($12)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	sll	$3,$3,0
	dlsa	$6,$11,$7,1
	lhu	$6,0($6)
	addu	$3,$3,$6
	slt	$3,$3,$10
	beq	$3,$0,.L1282
	dlsa	$3,$2,$8,1

	sh	$11,0($3)
	b	.L1282
	addiu	$2,$2,1

.L1288:
	jr	$31
	nop

.L1284:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi48ELi64EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi48ELi64EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi48ELi64EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x4ILi64ELi16EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x4ILi64ELi16EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x4ILi64ELi16EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1293
	dsll	$6,$6,2

	daddu	$13,$5,$6
	daddiu	$6,$6,128
	daddu	$12,$5,$6
	move	$11,$0
	b	.L1292
	move	$2,$0

.L1291:
	addiu	$11,$11,1
	seh	$11,$11
	daddiu	$5,$5,4
	daddiu	$13,$13,4
	slt	$3,$11,$9
	beq	$3,$0,.L1297
	daddiu	$12,$12,4

.L1292:
	lw	$3,0($4)
	lwu	$6,0($5)
	dsubu	$3,$3,$6
	dsra	$6,$3,63
	xor	$3,$6,$3
	dsubu	$3,$3,$6
	lw	$6,4($4)
	lwu	$14,128($5)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,8($4)
	lwu	$14,0($13)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,12($4)
	lwu	$14,0($12)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	sll	$3,$3,0
	dlsa	$6,$11,$7,1
	lhu	$6,0($6)
	addu	$3,$3,$6
	slt	$3,$3,$10
	beq	$3,$0,.L1291
	dlsa	$3,$2,$8,1

	sh	$11,0($3)
	b	.L1291
	addiu	$2,$2,1

.L1297:
	jr	$31
	nop

.L1293:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi64ELi16EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi64ELi16EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi64ELi16EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x4ILi16ELi64EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x4ILi16ELi64EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x4ILi16ELi64EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L1302
	dsll	$6,$6,2

	daddu	$13,$5,$6
	daddiu	$6,$6,32
	daddu	$12,$5,$6
	move	$11,$0
	b	.L1301
	move	$2,$0

.L1300:
	addiu	$11,$11,1
	seh	$11,$11
	daddiu	$5,$5,4
	daddiu	$13,$13,4
	slt	$3,$11,$9
	beq	$3,$0,.L1306
	daddiu	$12,$12,4

.L1301:
	lw	$3,0($4)
	lwu	$6,0($5)
	dsubu	$3,$3,$6
	dsra	$6,$3,63
	xor	$3,$6,$3
	dsubu	$3,$3,$6
	lw	$6,4($4)
	lwu	$14,32($5)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,8($4)
	lwu	$14,0($13)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	lw	$6,12($4)
	lwu	$14,0($12)
	dsubu	$6,$6,$14
	dsra	$14,$6,63
	xor	$6,$14,$6
	dsubu	$6,$6,$14
	daddu	$3,$3,$6
	sll	$3,$3,0
	dlsa	$6,$11,$7,1
	lhu	$6,0($6)
	addu	$3,$3,$6
	slt	$3,$3,$10
	beq	$3,$0,.L1300
	dlsa	$3,$2,$8,1

	sh	$11,0($3)
	b	.L1300
	addiu	$2,$2,1

.L1306:
	jr	$31
	nop

.L1302:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi16ELi64EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi16ELi64EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi16ELi64EEEiPiPjiPtPsii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,4			# 0x4
.L1309:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1308:
	lhu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,2
	bne	$2,$9,.L1308
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L1309
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$10,4			# 0x4
.L1315:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,8
.L1314:
	lbu	$8,0($3)
	sh	$8,0($2)
	daddiu	$2,$2,2
	bne	$2,$9,.L1314
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L1315
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi4EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi4EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi4EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$6,$6,1
	daddiu	$10,$4,32
.L1321:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,8
.L1320:
	lh	$3,0($2)
	sll	$3,$3,$7
	sh	$3,0($8)
	daddiu	$2,$2,2
	bne	$2,$9,.L1320
	daddiu	$8,$8,2

	daddiu	$4,$4,8
	bne	$4,$10,.L1321
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi4EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi4EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi4EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi4EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi4EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi4EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$7,-1
	li	$9,1			# 0x1
	sll	$9,$9,$2
	seh	$9,$9
	dsll	$6,$6,1
	daddiu	$11,$4,32
.L1327:
	move	$3,$5
	move	$8,$4
	daddiu	$10,$5,8
.L1326:
	lh	$2,0($3)
	addu	$2,$2,$9
	sra	$2,$2,$7
	sh	$2,0($8)
	daddiu	$3,$3,2
	bne	$3,$10,.L1326
	daddiu	$8,$8,2

	daddiu	$4,$4,8
	bne	$4,$11,.L1327
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi4EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi4EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi4EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi4EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi4EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi4EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$6,$6,1
	daddiu	$10,$5,32
.L1333:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,8
.L1332:
	lh	$3,0($2)
	sll	$3,$3,$7
	sh	$3,0($8)
	daddiu	$2,$2,2
	bne	$2,$9,.L1332
	daddiu	$8,$8,2

	daddiu	$5,$5,8
	bne	$5,$10,.L1333
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi4EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi4EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi4EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi4EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi4EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi4EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$7,-1
	li	$9,1			# 0x1
	sll	$9,$9,$2
	seh	$9,$9
	dsll	$6,$6,1
	daddiu	$11,$5,32
.L1339:
	move	$3,$5
	move	$8,$4
	daddiu	$10,$5,8
.L1338:
	lh	$2,0($3)
	addu	$2,$2,$9
	sra	$2,$2,$7
	sh	$2,0($8)
	daddiu	$3,$3,2
	bne	$3,$10,.L1338
	daddiu	$8,$8,2

	daddiu	$5,$5,8
	bne	$5,$11,.L1339
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi4EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi4EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi4EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19transposeILi4EEEvPhPKhl
	.type	_ZN12_GLOBAL__N_19transposeILi4EEEvPhPKhl, @function
_ZN12_GLOBAL__N_19transposeILi4EEEvPhPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	li	$10,16			# 0x10
.L1345:
	move	$3,$5
	addiu	$9,$2,4
.L1344:
	lbu	$8,0($3)
	daddu	$7,$4,$2
	sb	$8,0($7)
	addiu	$2,$2,1
	bne	$2,$9,.L1344
	daddu	$3,$3,$6

	bne	$2,$10,.L1345
	daddiu	$5,$5,1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19transposeILi4EEEvPhPKhl
	.size	_ZN12_GLOBAL__N_19transposeILi4EEEvPhPKhl, .-_ZN12_GLOBAL__N_19transposeILi4EEEvPhPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi4EEEjPKsl
	.type	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi4EEEjPKsl, @function
_ZN12_GLOBAL__N_113pixel_ssd_s_cILi4EEEjPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$7,4			# 0x4
	mtlo	$0
.L1351:
	move	$3,$4
	daddiu	$6,$4,8
.L1350:
	lh	$2,0($3)
	daddiu	$3,$3,2
	bne	$3,$6,.L1350
	madd	$2,$2

	addiu	$7,$7,-1
	bne	$7,$0,.L1351
	daddu	$4,$4,$5

	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi4EEEjPKsl
	.size	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi4EEEjPKsl, .-_ZN12_GLOBAL__N_113pixel_ssd_s_cILi4EEEjPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19pixel_varILi4EEEmPKhl
	.type	_ZN12_GLOBAL__N_19pixel_varILi4EEEmPKhl, @function
_ZN12_GLOBAL__N_19pixel_varILi4EEEmPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$8,4			# 0x4
	mtlo	$0
	move	$6,$0
.L1357:
	move	$3,$4
	daddiu	$7,$4,4
.L1356:
	lbu	$2,0($3)
	addu	$6,$2,$6
	daddiu	$3,$3,1
	bne	$3,$7,.L1356
	madd	$2,$2

	addiu	$8,$8,-1
	bne	$8,$0,.L1357
	daddu	$4,$4,$5

	mflo	$2
	dsll	$2,$2,32
	dext	$6,$6,0,32
	jr	$31
	daddu	$2,$2,$6

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19pixel_varILi4EEEmPKhl
	.size	_ZN12_GLOBAL__N_19pixel_varILi4EEEmPKhl, .-_ZN12_GLOBAL__N_19pixel_varILi4EEEmPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sseILi4ELi4EssEEjPKT1_lPKT2_l
	.type	_ZN12_GLOBAL__N_13sseILi4ELi4EssEEjPKT1_lPKT2_l, @function
_ZN12_GLOBAL__N_13sseILi4ELi4EssEEjPKT1_lPKT2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	dsll	$7,$7,1
	li	$11,4			# 0x4
	mtlo	$0
.L1363:
	move	$9,$4
	move	$10,$6
	daddiu	$2,$4,8
.L1362:
	lh	$8,0($9)
	lh	$3,0($10)
	subu	$3,$8,$3
	madd	$3,$3
	daddiu	$9,$9,2
	bne	$9,$2,.L1362
	daddiu	$10,$10,2

	daddu	$4,$4,$5
	addiu	$11,$11,-1
	bne	$11,$0,.L1363
	daddu	$6,$6,$7

	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi4ELi4EssEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi4ELi4EssEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi4ELi4EssEEjPKT1_lPKT2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,8			# 0x8
.L1369:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
.L1368:
	lhu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,2
	bne	$2,$9,.L1368
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L1369
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$10,8			# 0x8
.L1375:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,16
.L1374:
	lbu	$8,0($3)
	sh	$8,0($2)
	daddiu	$2,$2,2
	bne	$2,$9,.L1374
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L1375
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi8EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi8EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi8EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$6,$6,1
	daddiu	$10,$4,128
.L1381:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,16
.L1380:
	lh	$3,0($2)
	sll	$3,$3,$7
	sh	$3,0($8)
	daddiu	$2,$2,2
	bne	$2,$9,.L1380
	daddiu	$8,$8,2

	daddiu	$4,$4,16
	bne	$4,$10,.L1381
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi8EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi8EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi8EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi8EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi8EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi8EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$7,-1
	li	$10,1			# 0x1
	sll	$10,$10,$2
	seh	$10,$10
	dsll	$6,$6,1
	daddiu	$11,$4,128
.L1387:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,16
.L1386:
	lh	$2,0($3)
	addu	$2,$2,$10
	sra	$2,$2,$7
	sh	$2,0($8)
	daddiu	$3,$3,2
	bne	$3,$9,.L1386
	daddiu	$8,$8,2

	daddiu	$4,$4,16
	bne	$4,$11,.L1387
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi8EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi8EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi8EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi8EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi8EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi8EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$6,$6,1
	daddiu	$10,$5,128
.L1393:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,16
.L1392:
	lh	$3,0($2)
	sll	$3,$3,$7
	sh	$3,0($8)
	daddiu	$2,$2,2
	bne	$2,$9,.L1392
	daddiu	$8,$8,2

	daddiu	$5,$5,16
	bne	$5,$10,.L1393
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi8EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi8EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi8EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi8EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi8EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi8EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$7,-1
	li	$10,1			# 0x1
	sll	$10,$10,$2
	seh	$10,$10
	dsll	$6,$6,1
	daddiu	$11,$5,128
.L1399:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,16
.L1398:
	lh	$2,0($3)
	addu	$2,$2,$10
	sra	$2,$2,$7
	sh	$2,0($8)
	daddiu	$3,$3,2
	bne	$3,$9,.L1398
	daddiu	$8,$8,2

	daddiu	$5,$5,16
	bne	$5,$11,.L1399
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi8EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi8EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi8EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19transposeILi8EEEvPhPKhl
	.type	_ZN12_GLOBAL__N_19transposeILi8EEEvPhPKhl, @function
_ZN12_GLOBAL__N_19transposeILi8EEEvPhPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	li	$10,64			# 0x40
.L1405:
	move	$3,$5
	addiu	$9,$2,8
.L1404:
	lbu	$8,0($3)
	daddu	$7,$4,$2
	sb	$8,0($7)
	addiu	$2,$2,1
	bne	$2,$9,.L1404
	daddu	$3,$3,$6

	bne	$2,$10,.L1405
	daddiu	$5,$5,1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19transposeILi8EEEvPhPKhl
	.size	_ZN12_GLOBAL__N_19transposeILi8EEEvPhPKhl, .-_ZN12_GLOBAL__N_19transposeILi8EEEvPhPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi8EEEjPKsl
	.type	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi8EEEjPKsl, @function
_ZN12_GLOBAL__N_113pixel_ssd_s_cILi8EEEjPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$7,8			# 0x8
	mtlo	$0
.L1411:
	move	$3,$4
	daddiu	$6,$4,16
.L1410:
	lh	$2,0($3)
	daddiu	$3,$3,2
	bne	$3,$6,.L1410
	madd	$2,$2

	addiu	$7,$7,-1
	bne	$7,$0,.L1411
	daddu	$4,$4,$5

	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi8EEEjPKsl
	.size	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi8EEEjPKsl, .-_ZN12_GLOBAL__N_113pixel_ssd_s_cILi8EEEjPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sseILi8ELi8EssEEjPKT1_lPKT2_l
	.type	_ZN12_GLOBAL__N_13sseILi8ELi8EssEEjPKT1_lPKT2_l, @function
_ZN12_GLOBAL__N_13sseILi8ELi8EssEEjPKT1_lPKT2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	dsll	$7,$7,1
	li	$11,8			# 0x8
	mtlo	$0
.L1417:
	move	$9,$4
	move	$10,$6
	daddiu	$2,$4,16
.L1416:
	lh	$8,0($9)
	lh	$3,0($10)
	subu	$3,$8,$3
	madd	$3,$3
	daddiu	$9,$9,2
	bne	$9,$2,.L1416
	daddiu	$10,$10,2

	daddu	$4,$4,$5
	addiu	$11,$11,-1
	bne	$11,$0,.L1417
	daddu	$6,$6,$7

	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi8ELi8EssEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi8ELi8EssEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi8ELi8EssEEjPKT1_lPKT2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,16			# 0x10
.L1423:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
.L1422:
	lhu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,2
	bne	$2,$9,.L1422
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L1423
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$10,16			# 0x10
.L1429:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,32
.L1428:
	lbu	$8,0($3)
	sh	$8,0($2)
	daddiu	$2,$2,2
	bne	$2,$9,.L1428
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L1429
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi16EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi16EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi16EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$6,$6,1
	daddiu	$10,$4,512
.L1435:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,32
.L1434:
	lh	$3,0($2)
	sll	$3,$3,$7
	sh	$3,0($8)
	daddiu	$2,$2,2
	bne	$2,$9,.L1434
	daddiu	$8,$8,2

	daddiu	$4,$4,32
	bne	$4,$10,.L1435
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi16EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi16EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi16EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi16EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi16EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi16EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$7,-1
	li	$10,1			# 0x1
	sll	$10,$10,$2
	seh	$10,$10
	dsll	$6,$6,1
	daddiu	$11,$4,512
.L1441:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,32
.L1440:
	lh	$2,0($3)
	addu	$2,$2,$10
	sra	$2,$2,$7
	sh	$2,0($8)
	daddiu	$3,$3,2
	bne	$3,$9,.L1440
	daddiu	$8,$8,2

	daddiu	$4,$4,32
	bne	$4,$11,.L1441
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi16EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi16EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi16EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi16EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi16EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi16EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$6,$6,1
	daddiu	$10,$5,512
.L1447:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,32
.L1446:
	lh	$3,0($2)
	sll	$3,$3,$7
	sh	$3,0($8)
	daddiu	$2,$2,2
	bne	$2,$9,.L1446
	daddiu	$8,$8,2

	daddiu	$5,$5,32
	bne	$5,$10,.L1447
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi16EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi16EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi16EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi16EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi16EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi16EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$7,-1
	li	$10,1			# 0x1
	sll	$10,$10,$2
	seh	$10,$10
	dsll	$6,$6,1
	daddiu	$11,$5,512
.L1453:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,32
.L1452:
	lh	$2,0($3)
	addu	$2,$2,$10
	sra	$2,$2,$7
	sh	$2,0($8)
	daddiu	$3,$3,2
	bne	$3,$9,.L1452
	daddiu	$8,$8,2

	daddiu	$5,$5,32
	bne	$5,$11,.L1453
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi16EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi16EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi16EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19transposeILi16EEEvPhPKhl
	.type	_ZN12_GLOBAL__N_19transposeILi16EEEvPhPKhl, @function
_ZN12_GLOBAL__N_19transposeILi16EEEvPhPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	li	$10,256			# 0x100
.L1459:
	move	$3,$5
	addiu	$9,$2,16
.L1458:
	lbu	$8,0($3)
	daddu	$7,$4,$2
	sb	$8,0($7)
	addiu	$2,$2,1
	bne	$2,$9,.L1458
	daddu	$3,$3,$6

	bne	$2,$10,.L1459
	daddiu	$5,$5,1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19transposeILi16EEEvPhPKhl
	.size	_ZN12_GLOBAL__N_19transposeILi16EEEvPhPKhl, .-_ZN12_GLOBAL__N_19transposeILi16EEEvPhPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi16EEEjPKsl
	.type	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi16EEEjPKsl, @function
_ZN12_GLOBAL__N_113pixel_ssd_s_cILi16EEEjPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$7,16			# 0x10
	mtlo	$0
.L1465:
	move	$3,$4
	daddiu	$6,$4,32
.L1464:
	lh	$2,0($3)
	daddiu	$3,$3,2
	bne	$3,$6,.L1464
	madd	$2,$2

	addiu	$7,$7,-1
	bne	$7,$0,.L1465
	daddu	$4,$4,$5

	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi16EEEjPKsl
	.size	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi16EEEjPKsl, .-_ZN12_GLOBAL__N_113pixel_ssd_s_cILi16EEEjPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sseILi16ELi16EssEEjPKT1_lPKT2_l
	.type	_ZN12_GLOBAL__N_13sseILi16ELi16EssEEjPKT1_lPKT2_l, @function
_ZN12_GLOBAL__N_13sseILi16ELi16EssEEjPKT1_lPKT2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	dsll	$7,$7,1
	li	$11,16			# 0x10
	mtlo	$0
.L1471:
	move	$9,$4
	move	$10,$6
	daddiu	$2,$4,32
.L1470:
	lh	$8,0($9)
	lh	$3,0($10)
	subu	$3,$8,$3
	madd	$3,$3
	daddiu	$9,$9,2
	bne	$9,$2,.L1470
	daddiu	$10,$10,2

	daddu	$4,$4,$5
	addiu	$11,$11,-1
	bne	$11,$0,.L1471
	daddu	$6,$6,$7

	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi16ELi16EssEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi16ELi16EssEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi16ELi16EssEEjPKT1_lPKT2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,32			# 0x20
.L1477:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
.L1476:
	lhu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,2
	bne	$2,$9,.L1476
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L1477
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$10,32			# 0x20
.L1483:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,64
.L1482:
	lbu	$8,0($3)
	sh	$8,0($2)
	daddiu	$2,$2,2
	bne	$2,$9,.L1482
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L1483
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi32EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi32EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi32EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$6,$6,1
	daddiu	$10,$4,2048
.L1489:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,64
.L1488:
	lh	$3,0($2)
	sll	$3,$3,$7
	sh	$3,0($8)
	daddiu	$2,$2,2
	bne	$2,$9,.L1488
	daddiu	$8,$8,2

	daddiu	$4,$4,64
	bne	$4,$10,.L1489
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi32EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi32EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi32EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi32EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi32EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi32EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$7,-1
	li	$10,1			# 0x1
	sll	$10,$10,$2
	seh	$10,$10
	dsll	$6,$6,1
	daddiu	$11,$4,2048
.L1495:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,64
.L1494:
	lh	$2,0($3)
	addu	$2,$2,$10
	sra	$2,$2,$7
	sh	$2,0($8)
	daddiu	$3,$3,2
	bne	$3,$9,.L1494
	daddiu	$8,$8,2

	daddiu	$4,$4,64
	bne	$4,$11,.L1495
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi32EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi32EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi32EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi32EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi32EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi32EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$6,$6,1
	daddiu	$10,$5,2048
.L1501:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,64
.L1500:
	lh	$3,0($2)
	sll	$3,$3,$7
	sh	$3,0($8)
	daddiu	$2,$2,2
	bne	$2,$9,.L1500
	daddiu	$8,$8,2

	daddiu	$5,$5,64
	bne	$5,$10,.L1501
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi32EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi32EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi32EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi32EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi32EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi32EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$7,-1
	li	$10,1			# 0x1
	sll	$10,$10,$2
	seh	$10,$10
	dsll	$6,$6,1
	daddiu	$11,$5,2048
.L1507:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,64
.L1506:
	lh	$2,0($3)
	addu	$2,$2,$10
	sra	$2,$2,$7
	sh	$2,0($8)
	daddiu	$3,$3,2
	bne	$3,$9,.L1506
	daddiu	$8,$8,2

	daddiu	$5,$5,64
	bne	$5,$11,.L1507
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi32EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi32EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi32EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19transposeILi32EEEvPhPKhl
	.type	_ZN12_GLOBAL__N_19transposeILi32EEEvPhPKhl, @function
_ZN12_GLOBAL__N_19transposeILi32EEEvPhPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	li	$10,1024			# 0x400
.L1513:
	move	$3,$5
	addiu	$9,$2,32
.L1512:
	lbu	$8,0($3)
	daddu	$7,$4,$2
	sb	$8,0($7)
	addiu	$2,$2,1
	bne	$2,$9,.L1512
	daddu	$3,$3,$6

	bne	$2,$10,.L1513
	daddiu	$5,$5,1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19transposeILi32EEEvPhPKhl
	.size	_ZN12_GLOBAL__N_19transposeILi32EEEvPhPKhl, .-_ZN12_GLOBAL__N_19transposeILi32EEEvPhPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi32EEEjPKsl
	.type	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi32EEEjPKsl, @function
_ZN12_GLOBAL__N_113pixel_ssd_s_cILi32EEEjPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$7,32			# 0x20
	mtlo	$0
.L1519:
	move	$3,$4
	daddiu	$6,$4,64
.L1518:
	lh	$2,0($3)
	daddiu	$3,$3,2
	bne	$3,$6,.L1518
	madd	$2,$2

	addiu	$7,$7,-1
	bne	$7,$0,.L1519
	daddu	$4,$4,$5

	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi32EEEjPKsl
	.size	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi32EEEjPKsl, .-_ZN12_GLOBAL__N_113pixel_ssd_s_cILi32EEEjPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19pixel_varILi32EEEmPKhl
	.type	_ZN12_GLOBAL__N_19pixel_varILi32EEEmPKhl, @function
_ZN12_GLOBAL__N_19pixel_varILi32EEEmPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$8,32			# 0x20
	mtlo	$0
	move	$6,$0
.L1525:
	move	$3,$4
	daddiu	$7,$4,32
.L1524:
	lbu	$2,0($3)
	addu	$6,$2,$6
	daddiu	$3,$3,1
	bne	$3,$7,.L1524
	madd	$2,$2

	addiu	$8,$8,-1
	bne	$8,$0,.L1525
	daddu	$4,$4,$5

	mflo	$2
	dsll	$2,$2,32
	dext	$6,$6,0,32
	jr	$31
	daddu	$2,$2,$6

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19pixel_varILi32EEEmPKhl
	.size	_ZN12_GLOBAL__N_19pixel_varILi32EEEmPKhl, .-_ZN12_GLOBAL__N_19pixel_varILi32EEEmPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sseILi32ELi32EssEEjPKT1_lPKT2_l
	.type	_ZN12_GLOBAL__N_13sseILi32ELi32EssEEjPKT1_lPKT2_l, @function
_ZN12_GLOBAL__N_13sseILi32ELi32EssEEjPKT1_lPKT2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	dsll	$7,$7,1
	li	$11,32			# 0x20
	mtlo	$0
.L1531:
	move	$9,$4
	move	$10,$6
	daddiu	$2,$4,64
.L1530:
	lh	$8,0($9)
	lh	$3,0($10)
	subu	$3,$8,$3
	madd	$3,$3
	daddiu	$9,$9,2
	bne	$9,$2,.L1530
	daddiu	$10,$10,2

	daddu	$4,$4,$5
	addiu	$11,$11,-1
	bne	$11,$0,.L1531
	daddu	$6,$6,$7

	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi32ELi32EssEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi32ELi32EssEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi32ELi32EssEEjPKT1_lPKT2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_sp_cILi64ELi64EEEvPhlPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_sp_cILi64ELi64EEEvPhlPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_sp_cILi64ELi64EEEvPhlPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,64			# 0x40
.L1537:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,128
.L1536:
	lhu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,2
	bne	$2,$9,.L1536
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L1537
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi64ELi64EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi64ELi64EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi64ELi64EEEvPhlPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ps_cILi64ELi64EEEvPslPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_ps_cILi64ELi64EEEvPslPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_ps_cILi64ELi64EEEvPslPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$10,64			# 0x40
.L1543:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,128
.L1542:
	lbu	$8,0($3)
	sh	$8,0($2)
	daddiu	$2,$2,2
	bne	$2,$9,.L1542
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L1543
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi64ELi64EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi64ELi64EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi64ELi64EEEvPslPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi64EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi64EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi64EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$6,$6,1
	daddiu	$10,$4,8192
.L1549:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,128
.L1548:
	lh	$3,0($2)
	sll	$3,$3,$7
	sh	$3,0($8)
	daddiu	$2,$2,2
	bne	$2,$9,.L1548
	daddiu	$8,$8,2

	daddiu	$4,$4,128
	bne	$4,$10,.L1549
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi64EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi64EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi64EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi64EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi64EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi64EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$7,-1
	li	$10,1			# 0x1
	sll	$10,$10,$2
	seh	$10,$10
	dsll	$6,$6,1
	daddiu	$11,$4,8192
.L1555:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,128
.L1554:
	lh	$2,0($3)
	addu	$2,$2,$10
	sra	$2,$2,$7
	sh	$2,0($8)
	daddiu	$3,$3,2
	bne	$3,$9,.L1554
	daddiu	$8,$8,2

	daddiu	$4,$4,128
	bne	$4,$11,.L1555
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi64EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi64EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi64EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi64EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi64EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi64EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$6,$6,1
	daddiu	$10,$5,8192
.L1561:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,128
.L1560:
	lh	$3,0($2)
	sll	$3,$3,$7
	sh	$3,0($8)
	daddiu	$2,$2,2
	bne	$2,$9,.L1560
	daddiu	$8,$8,2

	daddiu	$5,$5,128
	bne	$5,$10,.L1561
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi64EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi64EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi64EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi64EEEvPsPKsli
	.type	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi64EEEvPsPKsli, @function
_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi64EEEvPsPKsli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$7,-1
	li	$10,1			# 0x1
	sll	$10,$10,$2
	seh	$10,$10
	dsll	$6,$6,1
	daddiu	$11,$5,8192
.L1567:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,128
.L1566:
	lh	$2,0($3)
	addu	$2,$2,$10
	sra	$2,$2,$7
	sh	$2,0($8)
	daddiu	$3,$3,2
	bne	$3,$9,.L1566
	daddiu	$8,$8,2

	daddiu	$5,$5,128
	bne	$5,$11,.L1567
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi64EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi64EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi64EEEvPsPKsli
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19transposeILi64EEEvPhPKhl
	.type	_ZN12_GLOBAL__N_19transposeILi64EEEvPhPKhl, @function
_ZN12_GLOBAL__N_19transposeILi64EEEvPhPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	li	$10,4096			# 0x1000
.L1573:
	move	$3,$5
	addiu	$9,$2,64
.L1572:
	lbu	$8,0($3)
	daddu	$7,$4,$2
	sb	$8,0($7)
	addiu	$2,$2,1
	bne	$2,$9,.L1572
	daddu	$3,$3,$6

	bne	$2,$10,.L1573
	daddiu	$5,$5,1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19transposeILi64EEEvPhPKhl
	.size	_ZN12_GLOBAL__N_19transposeILi64EEEvPhPKhl, .-_ZN12_GLOBAL__N_19transposeILi64EEEvPhPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi64EEEjPKsl
	.type	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi64EEEjPKsl, @function
_ZN12_GLOBAL__N_113pixel_ssd_s_cILi64EEEjPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$7,64			# 0x40
	mtlo	$0
.L1579:
	move	$3,$4
	daddiu	$6,$4,128
.L1578:
	lh	$2,0($3)
	daddiu	$3,$3,2
	bne	$3,$6,.L1578
	madd	$2,$2

	addiu	$7,$7,-1
	bne	$7,$0,.L1579
	daddu	$4,$4,$5

	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi64EEEjPKsl
	.size	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi64EEEjPKsl, .-_ZN12_GLOBAL__N_113pixel_ssd_s_cILi64EEEjPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19pixel_varILi64EEEmPKhl
	.type	_ZN12_GLOBAL__N_19pixel_varILi64EEEmPKhl, @function
_ZN12_GLOBAL__N_19pixel_varILi64EEEmPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$8,64			# 0x40
	mtlo	$0
	move	$6,$0
.L1585:
	move	$3,$4
	daddiu	$7,$4,64
.L1584:
	lbu	$2,0($3)
	addu	$6,$2,$6
	daddiu	$3,$3,1
	bne	$3,$7,.L1584
	madd	$2,$2

	addiu	$8,$8,-1
	bne	$8,$0,.L1585
	daddu	$4,$4,$5

	mflo	$2
	dsll	$2,$2,32
	dext	$6,$6,0,32
	jr	$31
	daddu	$2,$2,$6

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19pixel_varILi64EEEmPKhl
	.size	_ZN12_GLOBAL__N_19pixel_varILi64EEEmPKhl, .-_ZN12_GLOBAL__N_19pixel_varILi64EEEmPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sseILi64ELi64EssEEjPKT1_lPKT2_l
	.type	_ZN12_GLOBAL__N_13sseILi64ELi64EssEEjPKT1_lPKT2_l, @function
_ZN12_GLOBAL__N_13sseILi64ELi64EssEEjPKT1_lPKT2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	dsll	$7,$7,1
	li	$11,64			# 0x40
	mtlo	$0
.L1591:
	move	$9,$4
	move	$10,$6
	daddiu	$2,$4,128
.L1590:
	lh	$8,0($9)
	lh	$3,0($10)
	subu	$3,$8,$3
	madd	$3,$3
	daddiu	$9,$9,2
	bne	$9,$2,.L1590
	daddiu	$10,$10,2

	daddu	$4,$4,$5
	addiu	$11,$11,-1
	bne	$11,$0,.L1591
	daddu	$6,$6,$7

	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi64ELi64EssEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi64ELi64EssEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi64ELi64EssEEjPKT1_lPKT2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113blockfill_s_cILi64EEEvPsls
	.type	_ZN12_GLOBAL__N_113blockfill_s_cILi64EEEvPsls, @function
_ZN12_GLOBAL__N_113blockfill_s_cILi64EEEvPsls:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$7,64			# 0x40
.L1597:
	daddiu	$3,$4,128
	move	$2,$4
.L1596:
	sh	$6,0($2)
	daddiu	$2,$2,2
	bne	$2,$3,.L1596
	nop

	addiu	$7,$7,-1
	bne	$7,$0,.L1597
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113blockfill_s_cILi64EEEvPsls
	.size	_ZN12_GLOBAL__N_113blockfill_s_cILi64EEEvPsls, .-_ZN12_GLOBAL__N_113blockfill_s_cILi64EEEvPsls
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_add_ps_cILi64ELi64EEEvPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_114pixel_add_ps_cILi64ELi64EEEvPhlPKhPKsll, @function
_ZN12_GLOBAL__N_114pixel_add_ps_cILi64ELi64EEEvPhlPKhPKsll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$9,$9,1
	li	$15,64			# 0x40
	li	$14,255			# 0xff
.L1603:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,64
.L1602:
	lbu	$2,0($3)
	lh	$12,0($11)
	addu	$2,$2,$12
	slt	$12,$2,256
	movz	$2,$14,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,2
	bne	$3,$13,.L1602
	daddiu	$10,$10,1

	daddu	$6,$6,$8
	daddu	$7,$7,$9
	addiu	$15,$15,-1
	bne	$15,$0,.L1603
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi64ELi64EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi64ELi64EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi64ELi64EEEvPhlPKhPKsll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111getResidualILi64EEEvPKhS2_Psl
	.type	_ZN12_GLOBAL__N_111getResidualILi64EEEvPKhS2_Psl, @function
_ZN12_GLOBAL__N_111getResidualILi64EEEvPKhS2_Psl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$13,$7,1
	li	$12,64			# 0x40
.L1609:
	move	$2,$4
	move	$9,$5
	move	$8,$6
	daddiu	$11,$4,64
.L1608:
	lbu	$3,0($2)
	lbu	$10,0($9)
	subu	$3,$3,$10
	sh	$3,0($8)
	daddiu	$2,$2,1
	daddiu	$9,$9,1
	bne	$2,$11,.L1608
	daddiu	$8,$8,2

	daddu	$4,$4,$7
	daddu	$6,$6,$13
	addiu	$12,$12,-1
	bne	$12,$0,.L1609
	daddu	$5,$5,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111getResidualILi64EEEvPKhS2_Psl
	.size	_ZN12_GLOBAL__N_111getResidualILi64EEEvPKhS2_Psl, .-_ZN12_GLOBAL__N_111getResidualILi64EEEvPKhS2_Psl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ss_cILi64ELi64EEEvPslPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_ss_cILi64ELi64EEEvPslPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_ss_cILi64ELi64EEEvPslPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	dsll	$7,$7,1
	li	$10,64			# 0x40
.L1615:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,128
.L1614:
	lh	$8,0($2)
	sh	$8,0($3)
	daddiu	$2,$2,2
	bne	$2,$9,.L1614
	daddiu	$3,$3,2

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L1615
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi64ELi64EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi64ELi64EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi64ELi64EEEvPslPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi2ELi2EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi2ELi2EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi2ELi2EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$3,2			# 0x2
	li	$10,255			# 0xff
.L1620:
	lh	$2,0($4)
	lh	$11,0($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($6)
	lh	$2,2($4)
	lh	$11,2($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($6)
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	addiu	$3,$3,-1
	bne	$3,$0,.L1620
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi2ELi2EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi2ELi2EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi2ELi2EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi2EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi2EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi2EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$2,0($6)
	sb	$2,0($4)
	lbu	$2,1($6)
	sb	$2,1($4)
	daddu	$4,$4,$5
	daddu	$6,$6,$7
	lbu	$2,0($6)
	sb	$2,0($4)
	lbu	$2,1($6)
	jr	$31
	sb	$2,1($4)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi2EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi2EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi2EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi2ELi4EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi2ELi4EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi2ELi4EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$3,4			# 0x4
	li	$10,255			# 0xff
.L1626:
	lh	$2,0($4)
	lh	$11,0($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($6)
	lh	$2,2($4)
	lh	$11,2($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($6)
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	addiu	$3,$3,-1
	bne	$3,$0,.L1626
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi2ELi4EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi2ELi4EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi2ELi4EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,4			# 0x4
.L1630:
	lbu	$3,0($6)
	sb	$3,0($4)
	lbu	$3,1($6)
	sb	$3,1($4)
	daddu	$4,$4,$5
	addiu	$2,$2,-1
	bne	$2,$0,.L1630
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi4ELi2EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi4ELi2EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi4ELi2EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$10,2			# 0x2
	li	$3,255			# 0xff
.L1634:
	lh	$2,0($5)
	lh	$11,0($4)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($6)
	lh	$2,2($4)
	lh	$11,2($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($6)
	lh	$2,4($4)
	lh	$11,4($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,2($6)
	lh	$2,6($4)
	lh	$11,6($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,3($6)
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	addiu	$10,$10,-1
	bne	$10,$0,.L1634
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi4ELi2EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi4ELi2EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi4ELi2EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi2EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi2EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi2EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L1638:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L1638
	daddiu	$3,$3,1

	daddu	$7,$6,$7
	daddu	$5,$4,$5
	daddiu	$3,$7,4
.L1639:
	lbu	$2,0($7)
	sb	$2,0($5)
	daddiu	$7,$7,1
	bne	$3,$7,.L1639
	daddiu	$5,$5,1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi2EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi2EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi2EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi8ELi6EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi8ELi6EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi8ELi6EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,6			# 0x6
	b	.L1645
	li	$12,255			# 0xff

.L1650:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L1651
	daddu	$6,$6,$9

.L1645:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L1644:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L1644
	daddiu	$10,$10,2

	b	.L1650
	daddu	$4,$4,$7

.L1651:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi8ELi6EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi8ELi6EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi8ELi6EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi6EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi6EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi6EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,6			# 0x6
.L1654:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1653:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L1653
	daddiu	$3,$3,1

	daddu	$4,$4,$5
	addiu	$10,$10,-1
	bne	$10,$0,.L1654
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi6EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi6EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi6EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi6ELi8EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi6ELi8EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi6ELi8EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,8			# 0x8
	b	.L1660
	li	$12,255			# 0xff

.L1665:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L1666
	daddu	$6,$6,$9

.L1660:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,12
.L1659:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L1659
	daddiu	$10,$10,2

	b	.L1665
	daddu	$4,$4,$7

.L1666:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi6ELi8EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi6ELi8EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi6ELi8EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi8EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi8EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi8EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L1669
	li	$10,8			# 0x8

.L1674:
	addiu	$10,$10,-1
	beq	$10,$0,.L1675
	daddu	$6,$6,$7

.L1669:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,6
.L1668:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L1668
	daddiu	$3,$3,1

	b	.L1674
	daddu	$4,$4,$5

.L1675:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi8EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi8EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi8EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,2			# 0x2
	li	$12,255			# 0xff
.L1678:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L1677:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L1677
	daddiu	$10,$10,2

	daddu	$4,$4,$7
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	bne	$15,$0,.L1678
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi2EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi2EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi2EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1683:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L1683
	daddiu	$3,$3,1

	daddu	$7,$6,$7
	daddu	$5,$4,$5
	daddiu	$3,$7,8
.L1684:
	lbu	$2,0($7)
	sb	$2,0($5)
	daddiu	$7,$7,1
	bne	$3,$7,.L1684
	daddiu	$5,$5,1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi2EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi2EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi2EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi2ELi8EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi2ELi8EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi2ELi8EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$3,8			# 0x8
	li	$10,255			# 0xff
.L1689:
	lh	$2,0($4)
	lh	$11,0($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($6)
	lh	$2,2($4)
	lh	$11,2($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($6)
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	addiu	$3,$3,-1
	bne	$3,$0,.L1689
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi2ELi8EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi2ELi8EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi2ELi8EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,8			# 0x8
.L1693:
	lbu	$3,0($6)
	sb	$3,0($4)
	lbu	$3,1($6)
	sb	$3,1($4)
	daddu	$4,$4,$5
	addiu	$2,$2,-1
	bne	$2,$0,.L1693
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi2EEEvPhlPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi2EEEvPhlPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi2EEEvPhlPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lhu	$2,0($6)
	sb	$2,0($4)
	lhu	$2,2($6)
	sb	$2,1($4)
	daddu	$4,$4,$5
	dlsa	$6,$7,$6,1
	lhu	$2,0($6)
	sb	$2,0($4)
	lhu	$2,2($6)
	jr	$31
	sb	$2,1($4)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi2EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi2EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi2EEEvPhlPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi2EEEvPslPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi2EEEvPslPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi2EEEvPslPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$2,0($6)
	sh	$2,0($4)
	lbu	$2,1($6)
	sh	$2,2($4)
	dlsa	$4,$5,$4,1
	daddu	$6,$6,$7
	lbu	$2,0($6)
	sh	$2,0($4)
	lbu	$2,1($6)
	jr	$31
	sh	$2,2($4)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi2EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi2EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi2EEEvPslPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_18sse_pp_aILi2ELi2EEEjPKhlS2_l
	.type	_ZN12_GLOBAL__N_18sse_pp_aILi2ELi2EEEjPKhlS2_l, @function
_ZN12_GLOBAL__N_18sse_pp_aILi2ELi2EEEjPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$8,0($4)
	lbu	$3,0($6)
	subu	$8,$8,$3
	lbu	$2,1($4)
	lbu	$3,1($6)
	subu	$2,$2,$3
	daddu	$4,$4,$5
	daddu	$6,$6,$7
	lbu	$3,0($4)
	lbu	$5,0($6)
	subu	$3,$3,$5
	gsmultu	$8,$8,$8
	mtlo	$8
	madd	$3,$3
	madd	$2,$2
	lbu	$3,1($4)
	lbu	$2,1($6)
	subu	$2,$3,$2
	madd	$2,$2
	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_18sse_pp_aILi2ELi2EEEjPKhlS2_l
	.size	_ZN12_GLOBAL__N_18sse_pp_aILi2ELi2EEEjPKhlS2_l, .-_ZN12_GLOBAL__N_18sse_pp_aILi2ELi2EEEjPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi2EEEvPslPKhS3_ll
	.type	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi2EEEvPslPKhS3_ll, @function
_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi2EEEvPslPKhS3_ll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$2,0($6)
	lbu	$3,0($7)
	subu	$2,$2,$3
	sh	$2,0($4)
	lbu	$2,1($6)
	lbu	$3,1($7)
	subu	$2,$2,$3
	sh	$2,2($4)
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	dlsa	$4,$5,$4,1
	lbu	$2,0($6)
	lbu	$3,0($7)
	subu	$2,$2,$3
	sh	$2,0($4)
	lbu	$2,1($6)
	lbu	$3,1($7)
	subu	$2,$2,$3
	jr	$31
	sh	$2,2($4)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi2EEEvPslPKhS3_ll
	.size	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi2EEEvPslPKhS3_ll, .-_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi2EEEvPslPKhS3_ll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll, @function
_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$9,$9,1
	li	$3,2			# 0x2
	li	$10,255			# 0xff
.L1705:
	lbu	$2,0($6)
	lh	$11,0($7)
	addu	$2,$2,$11
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($4)
	lbu	$2,1($6)
	lh	$11,2($7)
	addu	$2,$2,$11
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($4)
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	addiu	$3,$3,-1
	bne	$3,$0,.L1705
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi2EEEvPslPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi2EEEvPslPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi2EEEvPslPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lh	$2,0($6)
	sh	$2,0($4)
	lh	$2,2($6)
	sh	$2,2($4)
	dlsa	$4,$5,$4,1
	dlsa	$6,$7,$6,1
	lh	$2,0($6)
	sh	$2,0($4)
	lh	$2,2($6)
	jr	$31
	sh	$2,2($4)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi2EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi2EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi2EEEvPslPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi8ELi12EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi8ELi12EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi8ELi12EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,12			# 0xc
	b	.L1712
	li	$12,255			# 0xff

.L1717:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L1718
	daddu	$6,$6,$9

.L1712:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L1711:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L1711
	daddiu	$10,$10,2

	b	.L1717
	daddu	$4,$4,$7

.L1718:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi8ELi12EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi8ELi12EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi8ELi12EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi12EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi12EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi12EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L1721
	li	$10,12			# 0xc

.L1726:
	addiu	$10,$10,-1
	beq	$10,$0,.L1727
	daddu	$6,$6,$7

.L1721:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1720:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L1720
	daddiu	$3,$3,1

	b	.L1726
	daddu	$4,$4,$5

.L1727:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi12EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi12EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi12EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi6ELi16EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi6ELi16EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi6ELi16EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,16			# 0x10
	b	.L1730
	li	$12,255			# 0xff

.L1735:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L1736
	daddu	$6,$6,$9

.L1730:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,12
.L1729:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L1729
	daddiu	$10,$10,2

	b	.L1735
	daddu	$4,$4,$7

.L1736:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi6ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi6ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi6ELi16EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi16EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi16EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi16EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L1739
	li	$10,16			# 0x10

.L1744:
	addiu	$10,$10,-1
	beq	$10,$0,.L1745
	daddu	$6,$6,$7

.L1739:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,6
.L1738:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L1738
	daddiu	$3,$3,1

	b	.L1744
	daddu	$4,$4,$5

.L1745:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi16EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi16EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi16EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi2ELi16EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi2ELi16EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi2ELi16EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$3,16			# 0x10
	li	$10,255			# 0xff
.L1747:
	lh	$2,0($4)
	lh	$11,0($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($6)
	lh	$2,2($4)
	lh	$11,2($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($6)
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	addiu	$3,$3,-1
	bne	$3,$0,.L1747
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi2ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi2ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi2ELi16EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi16EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi16EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi16EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,16			# 0x10
.L1751:
	lbu	$3,0($6)
	sb	$3,0($4)
	lbu	$3,1($6)
	sb	$3,1($4)
	daddu	$4,$4,$5
	addiu	$2,$2,-1
	bne	$2,$0,.L1751
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi16EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi16EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi16EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi16ELi24EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi16ELi24EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi16ELi24EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,24			# 0x18
	b	.L1756
	li	$12,255			# 0xff

.L1761:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L1762
	daddu	$6,$6,$9

.L1756:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
.L1755:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L1755
	daddiu	$10,$10,2

	b	.L1761
	daddu	$4,$4,$7

.L1762:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi16ELi24EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi16ELi24EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi16ELi24EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi24EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi24EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi24EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L1765
	li	$10,24			# 0x18

.L1770:
	addiu	$10,$10,-1
	beq	$10,$0,.L1771
	daddu	$6,$6,$7

.L1765:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
.L1764:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L1764
	daddiu	$3,$3,1

	b	.L1770
	daddu	$4,$4,$5

.L1771:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi24EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi24EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi24EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi12ELi32EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi12ELi32EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi12ELi32EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,32			# 0x20
	b	.L1774
	li	$12,255			# 0xff

.L1779:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L1780
	daddu	$6,$6,$9

.L1774:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,24
.L1773:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L1773
	daddiu	$10,$10,2

	b	.L1779
	daddu	$4,$4,$7

.L1780:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi12ELi32EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi12ELi32EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi12ELi32EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi32EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi32EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi32EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L1783
	li	$10,32			# 0x20

.L1788:
	addiu	$10,$10,-1
	beq	$10,$0,.L1789
	daddu	$6,$6,$7

.L1783:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,12
.L1782:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L1782
	daddiu	$3,$3,1

	b	.L1788
	daddu	$4,$4,$5

.L1789:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi32EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi32EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi32EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi4ELi32EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi4ELi32EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi4ELi32EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$10,32			# 0x20
	li	$3,255			# 0xff
.L1791:
	lh	$2,0($5)
	lh	$11,0($4)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($6)
	lh	$2,2($4)
	lh	$11,2($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($6)
	lh	$2,4($4)
	lh	$11,4($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,2($6)
	lh	$2,6($4)
	lh	$11,6($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,3($6)
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	addiu	$10,$10,-1
	bne	$10,$0,.L1791
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi4ELi32EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi4ELi32EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi4ELi32EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi32EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi32EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi32EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L1796
	li	$10,32			# 0x20

.L1801:
	addiu	$10,$10,-1
	beq	$10,$0,.L1802
	daddu	$6,$6,$7

.L1796:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L1795:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L1795
	daddiu	$3,$3,1

	b	.L1801
	daddu	$4,$4,$5

.L1802:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi32EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi32EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi32EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi32ELi48EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi32ELi48EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi32ELi48EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,48			# 0x30
	b	.L1805
	li	$12,255			# 0xff

.L1810:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L1811
	daddu	$6,$6,$9

.L1805:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
.L1804:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L1804
	daddiu	$10,$10,2

	b	.L1810
	daddu	$4,$4,$7

.L1811:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi32ELi48EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi32ELi48EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi32ELi48EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi48EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi48EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi48EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L1814
	li	$10,48			# 0x30

.L1819:
	addiu	$10,$10,-1
	beq	$10,$0,.L1820
	daddu	$6,$6,$7

.L1814:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
.L1813:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L1813
	daddiu	$3,$3,1

	b	.L1819
	daddu	$4,$4,$5

.L1820:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi48EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi48EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi48EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi24ELi64EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi24ELi64EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi24ELi64EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,64			# 0x40
	b	.L1823
	li	$12,255			# 0xff

.L1828:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L1829
	daddu	$6,$6,$9

.L1823:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,48
.L1822:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L1822
	daddiu	$10,$10,2

	b	.L1828
	daddu	$4,$4,$7

.L1829:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi24ELi64EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi24ELi64EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi24ELi64EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi64EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi64EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi64EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L1832
	li	$10,64			# 0x40

.L1837:
	addiu	$10,$10,-1
	beq	$10,$0,.L1838
	daddu	$6,$6,$7

.L1832:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,24
.L1831:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L1831
	daddiu	$3,$3,1

	b	.L1837
	daddu	$4,$4,$5

.L1838:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi64EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi64EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi64EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi8ELi64EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi8ELi64EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi8ELi64EEEvPKsS2_Phlll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,64			# 0x40
	b	.L1841
	li	$12,255			# 0xff

.L1846:
	daddu	$5,$5,$8
	addiu	$15,$15,-1
	beq	$15,$0,.L1847
	daddu	$6,$6,$9

.L1841:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L1840:
	lh	$2,0($3)
	lh	$13,0($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,0($10)
	lh	$2,2($3)
	lh	$13,2($11)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,1($10)
	daddiu	$3,$3,4
	daddiu	$11,$11,4
	bne	$3,$14,.L1840
	daddiu	$10,$10,2

	b	.L1846
	daddu	$4,$4,$7

.L1847:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi8ELi64EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi8ELi64EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi8ELi64EEEvPKsS2_Phlll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi64EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi64EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi64EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	b	.L1850
	li	$10,64			# 0x40

.L1855:
	addiu	$10,$10,-1
	beq	$10,$0,.L1856
	daddu	$6,$6,$7

.L1850:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1849:
	lbu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,1
	bne	$2,$9,.L1849
	daddiu	$3,$3,1

	b	.L1855
	daddu	$4,$4,$5

.L1856:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi64EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi64EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi64EEEvPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_18sse_pp_aILi2ELi4EEEjPKhlS2_l
	.type	_ZN12_GLOBAL__N_18sse_pp_aILi2ELi4EEEjPKhlS2_l, @function
_ZN12_GLOBAL__N_18sse_pp_aILi2ELi4EEEjPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$9,4			# 0x4
	move	$2,$0
.L1858:
	lbu	$8,0($4)
	lbu	$3,0($6)
	subu	$8,$8,$3
	lbu	$3,1($4)
	lbu	$10,1($6)
	subu	$3,$3,$10
	gsmultu	$8,$8,$8
	mul	$10,$3,$3
	addu	$3,$10,$8
	addu	$2,$3,$2
	daddu	$4,$4,$5
	addiu	$9,$9,-1
	bne	$9,$0,.L1858
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_18sse_pp_aILi2ELi4EEEjPKhlS2_l
	.size	_ZN12_GLOBAL__N_18sse_pp_aILi2ELi4EEEjPKhlS2_l, .-_ZN12_GLOBAL__N_18sse_pp_aILi2ELi4EEEjPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi4EEEvPhlPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi4EEEvPhlPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi4EEEvPhlPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$2,4			# 0x4
.L1862:
	lhu	$3,0($6)
	sb	$3,0($4)
	lhu	$3,2($6)
	sb	$3,1($4)
	daddu	$4,$4,$5
	addiu	$2,$2,-1
	bne	$2,$0,.L1862
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi4EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi4EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi4EEEvPhlPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi4EEEvPslPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi4EEEvPslPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi4EEEvPslPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$2,4			# 0x4
.L1866:
	lbu	$3,0($6)
	sh	$3,0($4)
	lbu	$3,1($6)
	sh	$3,2($4)
	daddu	$4,$4,$5
	addiu	$2,$2,-1
	bne	$2,$0,.L1866
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi4EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi4EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi4EEEvPslPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi4EEEvPslPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi4EEEvPslPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi4EEEvPslPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	dsll	$7,$7,1
	li	$2,4			# 0x4
.L1870:
	lh	$3,0($6)
	sh	$3,0($4)
	lh	$3,2($6)
	sh	$3,2($4)
	daddu	$4,$4,$5
	addiu	$2,$2,-1
	bne	$2,$0,.L1870
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi4EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi4EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi4EEEvPslPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi4EEEvPslPKhS3_ll
	.type	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi4EEEvPslPKhS3_ll, @function
_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi4EEEvPslPKhS3_ll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$3,4			# 0x4
.L1874:
	lbu	$2,0($6)
	lbu	$10,0($7)
	subu	$2,$2,$10
	sh	$2,0($4)
	lbu	$2,1($6)
	lbu	$10,1($7)
	subu	$2,$2,$10
	sh	$2,2($4)
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	addiu	$3,$3,-1
	bne	$3,$0,.L1874
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi4EEEvPslPKhS3_ll
	.size	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi4EEEvPslPKhS3_ll, .-_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi4EEEvPslPKhS3_ll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi4EEEvPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi4EEEvPhlPKhPKsll, @function
_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi4EEEvPhlPKhPKsll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$9,$9,1
	li	$3,4			# 0x4
	li	$10,255			# 0xff
.L1878:
	lbu	$2,0($6)
	lh	$11,0($7)
	addu	$2,$2,$11
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($4)
	lbu	$2,1($6)
	lh	$11,2($7)
	addu	$2,$2,$11
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($4)
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	addiu	$3,$3,-1
	bne	$3,$0,.L1878
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi4EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi4EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi4EEEvPhlPKhPKsll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_18sse_pp_aILi4ELi8EEEjPKhlS2_l
	.type	_ZN12_GLOBAL__N_18sse_pp_aILi4ELi8EEEjPKhlS2_l, @function
_ZN12_GLOBAL__N_18sse_pp_aILi4ELi8EEEjPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$11,8			# 0x8
	b	.L1883
	mtlo	$0

.L1888:
	addiu	$11,$11,-1
	beq	$11,$0,.L1887
	daddu	$6,$6,$7

.L1883:
	move	$9,$4
	move	$10,$6
	daddiu	$2,$4,4
.L1882:
	lbu	$8,0($9)
	lbu	$3,0($10)
	subu	$3,$8,$3
	madd	$3,$3
	daddiu	$9,$9,1
	bne	$9,$2,.L1882
	daddiu	$10,$10,1

	b	.L1888
	daddu	$4,$4,$5

.L1887:
	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_18sse_pp_aILi4ELi8EEEjPKhlS2_l
	.size	_ZN12_GLOBAL__N_18sse_pp_aILi4ELi8EEEjPKhlS2_l, .-_ZN12_GLOBAL__N_18sse_pp_aILi4ELi8EEEjPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi8EEEvPhlPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi8EEEvPhlPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi8EEEvPhlPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	b	.L1891
	li	$10,8			# 0x8

.L1896:
	addiu	$10,$10,-1
	beq	$10,$0,.L1897
	daddu	$6,$6,$7

.L1891:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1890:
	lhu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,2
	bne	$2,$9,.L1890
	daddiu	$3,$3,1

	b	.L1896
	daddu	$4,$4,$5

.L1897:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi8EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi8EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi8EEEvPhlPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi8EEEvPslPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi8EEEvPslPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi8EEEvPslPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	b	.L1900
	li	$10,8			# 0x8

.L1905:
	addiu	$10,$10,-1
	beq	$10,$0,.L1906
	daddu	$6,$6,$7

.L1900:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,8
.L1899:
	lbu	$8,0($3)
	sh	$8,0($2)
	daddiu	$2,$2,2
	bne	$2,$9,.L1899
	daddiu	$3,$3,1

	b	.L1905
	daddu	$4,$4,$5

.L1906:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi8EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi8EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi8EEEvPslPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi8EEEvPslPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi8EEEvPslPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi8EEEvPslPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	dsll	$7,$7,1
	b	.L1909
	li	$10,8			# 0x8

.L1914:
	addiu	$10,$10,-1
	beq	$10,$0,.L1915
	daddu	$6,$6,$7

.L1909:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1908:
	lh	$8,0($2)
	sh	$8,0($3)
	daddiu	$2,$2,2
	bne	$2,$9,.L1908
	daddiu	$3,$3,2

	b	.L1914
	daddu	$4,$4,$5

.L1915:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi8EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi8EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi8EEEvPslPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi8EEEvPslPKhS3_ll
	.type	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi8EEEvPslPKhS3_ll, @function
_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi8EEEvPslPKhS3_ll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	b	.L1918
	li	$14,8			# 0x8

.L1923:
	daddu	$7,$7,$9
	addiu	$14,$14,-1
	beq	$14,$0,.L1924
	daddu	$4,$4,$5

.L1918:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,4
.L1917:
	lbu	$3,0($2)
	lbu	$12,0($11)
	subu	$3,$3,$12
	sh	$3,0($10)
	daddiu	$2,$2,1
	daddiu	$11,$11,1
	bne	$2,$13,.L1917
	daddiu	$10,$10,2

	b	.L1923
	daddu	$6,$6,$8

.L1924:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi8EEEvPslPKhS3_ll
	.size	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi8EEEvPslPKhS3_ll, .-_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi8EEEvPslPKhS3_ll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi8EEEvPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi8EEEvPhlPKhPKsll, @function
_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi8EEEvPhlPKhPKsll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$9,$9,1
	li	$15,8			# 0x8
	b	.L1927
	li	$14,255			# 0xff

.L1932:
	daddu	$7,$7,$9
	addiu	$15,$15,-1
	beq	$15,$0,.L1933
	daddu	$4,$4,$5

.L1927:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,4
.L1926:
	lbu	$2,0($3)
	lh	$12,0($11)
	addu	$2,$2,$12
	slt	$12,$2,256
	movz	$2,$14,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,2
	bne	$3,$13,.L1926
	daddiu	$10,$10,1

	b	.L1932
	daddu	$6,$6,$8

.L1933:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi8EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi8EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi8EEEvPhlPKhPKsll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_18sse_pp_aILi8ELi16EEEjPKhlS2_l
	.type	_ZN12_GLOBAL__N_18sse_pp_aILi8ELi16EEEjPKhlS2_l, @function
_ZN12_GLOBAL__N_18sse_pp_aILi8ELi16EEEjPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$11,16			# 0x10
	b	.L1936
	mtlo	$0

.L1941:
	addiu	$11,$11,-1
	beq	$11,$0,.L1940
	daddu	$6,$6,$7

.L1936:
	move	$9,$4
	move	$10,$6
	daddiu	$2,$4,8
.L1935:
	lbu	$8,0($9)
	lbu	$3,0($10)
	subu	$3,$8,$3
	madd	$3,$3
	daddiu	$9,$9,1
	bne	$9,$2,.L1935
	daddiu	$10,$10,1

	b	.L1941
	daddu	$4,$4,$5

.L1940:
	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_18sse_pp_aILi8ELi16EEEjPKhlS2_l
	.size	_ZN12_GLOBAL__N_18sse_pp_aILi8ELi16EEEjPKhlS2_l, .-_ZN12_GLOBAL__N_18sse_pp_aILi8ELi16EEEjPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi16EEEvPhlPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi16EEEvPhlPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi16EEEvPhlPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	b	.L1944
	li	$10,16			# 0x10

.L1949:
	addiu	$10,$10,-1
	beq	$10,$0,.L1950
	daddu	$6,$6,$7

.L1944:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
.L1943:
	lhu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,2
	bne	$2,$9,.L1943
	daddiu	$3,$3,1

	b	.L1949
	daddu	$4,$4,$5

.L1950:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi16EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi16EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi16EEEvPhlPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi16EEEvPslPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi16EEEvPslPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi16EEEvPslPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	b	.L1953
	li	$10,16			# 0x10

.L1958:
	addiu	$10,$10,-1
	beq	$10,$0,.L1959
	daddu	$6,$6,$7

.L1953:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,16
.L1952:
	lbu	$8,0($3)
	sh	$8,0($2)
	daddiu	$2,$2,2
	bne	$2,$9,.L1952
	daddiu	$3,$3,1

	b	.L1958
	daddu	$4,$4,$5

.L1959:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi16EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi16EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi16EEEvPslPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi16EEEvPslPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi16EEEvPslPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi16EEEvPslPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	dsll	$7,$7,1
	b	.L1962
	li	$10,16			# 0x10

.L1967:
	addiu	$10,$10,-1
	beq	$10,$0,.L1968
	daddu	$6,$6,$7

.L1962:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
.L1961:
	lh	$8,0($2)
	sh	$8,0($3)
	daddiu	$2,$2,2
	bne	$2,$9,.L1961
	daddiu	$3,$3,2

	b	.L1967
	daddu	$4,$4,$5

.L1968:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi16EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi16EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi16EEEvPslPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi16EEEvPslPKhS3_ll
	.type	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi16EEEvPslPKhS3_ll, @function
_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi16EEEvPslPKhS3_ll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	b	.L1971
	li	$14,16			# 0x10

.L1976:
	daddu	$7,$7,$9
	addiu	$14,$14,-1
	beq	$14,$0,.L1977
	daddu	$4,$4,$5

.L1971:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,8
.L1970:
	lbu	$3,0($2)
	lbu	$12,0($11)
	subu	$3,$3,$12
	sh	$3,0($10)
	daddiu	$2,$2,1
	daddiu	$11,$11,1
	bne	$2,$13,.L1970
	daddiu	$10,$10,2

	b	.L1976
	daddu	$6,$6,$8

.L1977:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi16EEEvPslPKhS3_ll
	.size	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi16EEEvPslPKhS3_ll, .-_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi16EEEvPslPKhS3_ll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi16EEEvPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi16EEEvPhlPKhPKsll, @function
_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi16EEEvPhlPKhPKsll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$9,$9,1
	li	$15,16			# 0x10
	b	.L1980
	li	$14,255			# 0xff

.L1985:
	daddu	$7,$7,$9
	addiu	$15,$15,-1
	beq	$15,$0,.L1986
	daddu	$4,$4,$5

.L1980:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,8
.L1979:
	lbu	$2,0($3)
	lh	$12,0($11)
	addu	$2,$2,$12
	slt	$12,$2,256
	movz	$2,$14,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,2
	bne	$3,$13,.L1979
	daddiu	$10,$10,1

	b	.L1985
	daddu	$6,$6,$8

.L1986:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi16EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi16EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi16EEEvPhlPKhPKsll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_18sse_pp_aILi16ELi32EEEjPKhlS2_l
	.type	_ZN12_GLOBAL__N_18sse_pp_aILi16ELi32EEEjPKhlS2_l, @function
_ZN12_GLOBAL__N_18sse_pp_aILi16ELi32EEEjPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$11,32			# 0x20
	b	.L1989
	mtlo	$0

.L1994:
	addiu	$11,$11,-1
	beq	$11,$0,.L1993
	daddu	$6,$6,$7

.L1989:
	move	$9,$4
	move	$10,$6
	daddiu	$2,$4,16
.L1988:
	lbu	$8,0($9)
	lbu	$3,0($10)
	subu	$3,$8,$3
	madd	$3,$3
	daddiu	$9,$9,1
	bne	$9,$2,.L1988
	daddiu	$10,$10,1

	b	.L1994
	daddu	$4,$4,$5

.L1993:
	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_18sse_pp_aILi16ELi32EEEjPKhlS2_l
	.size	_ZN12_GLOBAL__N_18sse_pp_aILi16ELi32EEEjPKhlS2_l, .-_ZN12_GLOBAL__N_18sse_pp_aILi16ELi32EEEjPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi32EEEvPhlPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi32EEEvPhlPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi32EEEvPhlPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	b	.L1997
	li	$10,32			# 0x20

.L2002:
	addiu	$10,$10,-1
	beq	$10,$0,.L2003
	daddu	$6,$6,$7

.L1997:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
.L1996:
	lhu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,2
	bne	$2,$9,.L1996
	daddiu	$3,$3,1

	b	.L2002
	daddu	$4,$4,$5

.L2003:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi32EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi32EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi32EEEvPhlPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi32EEEvPslPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi32EEEvPslPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi32EEEvPslPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	b	.L2006
	li	$10,32			# 0x20

.L2011:
	addiu	$10,$10,-1
	beq	$10,$0,.L2012
	daddu	$6,$6,$7

.L2006:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,32
.L2005:
	lbu	$8,0($3)
	sh	$8,0($2)
	daddiu	$2,$2,2
	bne	$2,$9,.L2005
	daddiu	$3,$3,1

	b	.L2011
	daddu	$4,$4,$5

.L2012:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi32EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi32EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi32EEEvPslPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi32EEEvPslPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi32EEEvPslPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi32EEEvPslPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	dsll	$7,$7,1
	b	.L2015
	li	$10,32			# 0x20

.L2020:
	addiu	$10,$10,-1
	beq	$10,$0,.L2021
	daddu	$6,$6,$7

.L2015:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
.L2014:
	lh	$8,0($2)
	sh	$8,0($3)
	daddiu	$2,$2,2
	bne	$2,$9,.L2014
	daddiu	$3,$3,2

	b	.L2020
	daddu	$4,$4,$5

.L2021:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi32EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi32EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi32EEEvPslPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi32EEEvPslPKhS3_ll
	.type	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi32EEEvPslPKhS3_ll, @function
_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi32EEEvPslPKhS3_ll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	b	.L2024
	li	$14,32			# 0x20

.L2029:
	daddu	$7,$7,$9
	addiu	$14,$14,-1
	beq	$14,$0,.L2030
	daddu	$4,$4,$5

.L2024:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,16
.L2023:
	lbu	$3,0($2)
	lbu	$12,0($11)
	subu	$3,$3,$12
	sh	$3,0($10)
	daddiu	$2,$2,1
	daddiu	$11,$11,1
	bne	$2,$13,.L2023
	daddiu	$10,$10,2

	b	.L2029
	daddu	$6,$6,$8

.L2030:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi32EEEvPslPKhS3_ll
	.size	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi32EEEvPslPKhS3_ll, .-_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi32EEEvPslPKhS3_ll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi32EEEvPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi32EEEvPhlPKhPKsll, @function
_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi32EEEvPhlPKhPKsll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$9,$9,1
	li	$15,32			# 0x20
	b	.L2033
	li	$14,255			# 0xff

.L2038:
	daddu	$7,$7,$9
	addiu	$15,$15,-1
	beq	$15,$0,.L2039
	daddu	$4,$4,$5

.L2033:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,16
.L2032:
	lbu	$2,0($3)
	lh	$12,0($11)
	addu	$2,$2,$12
	slt	$12,$2,256
	movz	$2,$14,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,2
	bne	$3,$13,.L2032
	daddiu	$10,$10,1

	b	.L2038
	daddu	$6,$6,$8

.L2039:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi32EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi32EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi32EEEvPhlPKhPKsll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_18sse_pp_aILi32ELi64EEEjPKhlS2_l
	.type	_ZN12_GLOBAL__N_18sse_pp_aILi32ELi64EEEjPKhlS2_l, @function
_ZN12_GLOBAL__N_18sse_pp_aILi32ELi64EEEjPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$11,64			# 0x40
	b	.L2042
	mtlo	$0

.L2047:
	addiu	$11,$11,-1
	beq	$11,$0,.L2046
	daddu	$6,$6,$7

.L2042:
	move	$9,$4
	move	$10,$6
	daddiu	$2,$4,32
.L2041:
	lbu	$8,0($9)
	lbu	$3,0($10)
	subu	$3,$8,$3
	madd	$3,$3
	daddiu	$9,$9,1
	bne	$9,$2,.L2041
	daddiu	$10,$10,1

	b	.L2047
	daddu	$4,$4,$5

.L2046:
	jr	$31
	mflo	$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_18sse_pp_aILi32ELi64EEEjPKhlS2_l
	.size	_ZN12_GLOBAL__N_18sse_pp_aILi32ELi64EEEjPKhlS2_l, .-_ZN12_GLOBAL__N_18sse_pp_aILi32ELi64EEEjPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi64EEEvPhlPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi64EEEvPhlPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi64EEEvPhlPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	b	.L2050
	li	$10,64			# 0x40

.L2055:
	addiu	$10,$10,-1
	beq	$10,$0,.L2056
	daddu	$6,$6,$7

.L2050:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
.L2049:
	lhu	$8,0($2)
	sb	$8,0($3)
	daddiu	$2,$2,2
	bne	$2,$9,.L2049
	daddiu	$3,$3,1

	b	.L2055
	daddu	$4,$4,$5

.L2056:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi64EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi64EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi64EEEvPhlPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi64EEEvPslPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi64EEEvPslPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi64EEEvPslPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	b	.L2059
	li	$10,64			# 0x40

.L2064:
	addiu	$10,$10,-1
	beq	$10,$0,.L2065
	daddu	$6,$6,$7

.L2059:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,64
.L2058:
	lbu	$8,0($3)
	sh	$8,0($2)
	daddiu	$2,$2,2
	bne	$2,$9,.L2058
	daddiu	$3,$3,1

	b	.L2064
	daddu	$4,$4,$5

.L2065:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi64EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi64EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi64EEEvPslPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi64EEEvPslPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi64EEEvPslPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi64EEEvPslPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	dsll	$7,$7,1
	b	.L2068
	li	$10,64			# 0x40

.L2073:
	addiu	$10,$10,-1
	beq	$10,$0,.L2074
	daddu	$6,$6,$7

.L2068:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
.L2067:
	lh	$8,0($2)
	sh	$8,0($3)
	daddiu	$2,$2,2
	bne	$2,$9,.L2067
	daddiu	$3,$3,2

	b	.L2073
	daddu	$4,$4,$5

.L2074:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi64EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi64EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi64EEEvPslPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi64EEEvPslPKhS3_ll
	.type	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi64EEEvPslPKhS3_ll, @function
_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi64EEEvPslPKhS3_ll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	b	.L2077
	li	$14,64			# 0x40

.L2082:
	daddu	$7,$7,$9
	addiu	$14,$14,-1
	beq	$14,$0,.L2083
	daddu	$4,$4,$5

.L2077:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,32
.L2076:
	lbu	$3,0($2)
	lbu	$12,0($11)
	subu	$3,$3,$12
	sh	$3,0($10)
	daddiu	$2,$2,1
	daddiu	$11,$11,1
	bne	$2,$13,.L2076
	daddiu	$10,$10,2

	b	.L2082
	daddu	$6,$6,$8

.L2083:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi64EEEvPslPKhS3_ll
	.size	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi64EEEvPslPKhS3_ll, .-_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi64EEEvPslPKhS3_ll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi64EEEvPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi64EEEvPhlPKhPKsll, @function
_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi64EEEvPhlPKhPKsll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$9,$9,1
	li	$15,64			# 0x40
	b	.L2086
	li	$14,255			# 0xff

.L2091:
	daddu	$7,$7,$9
	addiu	$15,$15,-1
	beq	$15,$0,.L2092
	daddu	$4,$4,$5

.L2086:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,32
.L2085:
	lbu	$2,0($3)
	lh	$12,0($11)
	addu	$2,$2,$12
	slt	$12,$2,256
	movz	$2,$14,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	sb	$2,0($10)
	daddiu	$3,$3,1
	daddiu	$11,$11,2
	bne	$3,$13,.L2085
	daddiu	$10,$10,1

	b	.L2091
	daddu	$6,$6,$8

.L2092:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi64EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi64EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi64EEEvPhlPKhPKsll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii
	.type	_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii, @function
_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii:
	.frame	$sp,448,$31		# vars= 352, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-448
	sd	$31,440($sp)
	sd	$fp,432($sp)
	sd	$28,424($sp)
	sd	$23,416($sp)
	sd	$22,408($sp)
	sd	$21,400($sp)
	sd	$20,392($sp)
	sd	$19,384($sp)
	sd	$18,376($sp)
	sd	$17,368($sp)
	sd	$16,360($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii)))
	lw	$13,448($sp)
	sd	$13,304($sp)
	addiu	$11,$11,15
	li	$2,-16			# 0xfffffffffffffff0
	and	$2,$11,$2
	addiu	$3,$13,-1
	gsdmultu	$12,$3,$9
	daddu	$12,$12,$2
	dlsa	$16,$12,$4,1
	sll	$10,$10,0
	mul	$12,$3,$10
	addu	$3,$12,$2
	daddu	$5,$5,$3
	sd	$5,256($sp)
	daddu	$5,$6,$3
	sd	$5,264($sp)
	daddu	$5,$7,$3
	sd	$5,272($sp)
	daddu	$5,$8,$3
	subu	$3,$10,$2
	sd	$3,288($sp)
	dsubu	$2,$9,$2
	sll	$2,$2,0
	sll	$2,$2,1
	blez	$13,.L2093
	sd	$2,296($sp)

	sd	$9,144($sp)
	sra	$2,$11,4
	sd	$2,312($sp)
	addiu	$2,$2,-1
	dext	$2,$2,0,32
	daddiu	$2,$2,1
	dsubu	$3,$0,$2
	dsll	$3,$3,5
	sd	$3,344($sp)
	dsubu	$2,$0,$2
	dsll	$2,$2,4
	sd	$2,336($sp)
	sd	$0,280($sp)
	daddiu	$fp,$sp,32
	daddiu	$23,$sp,16
	daddiu	$22,$sp,80
	daddiu	$21,$sp,64
	daddiu	$20,$sp,48
	sd	$fp,320($sp)
	move	$fp,$5
	sd	$23,328($sp)
	sd	$22,152($sp)
	sd	$21,240($sp)
	sd	$20,248($sp)
	ld	$8,320($sp)
.L2101:
	ld	$7,328($sp)
	move	$6,$sp
	ld	$5,144($sp)
	ld	$25,%call16(_Z5LD_V3PKhlPDv2_xS2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V3PKhlPDv2_xS2_S2_
1:	jalr	$25
	move	$4,$16

	ld.b	$w0,16($sp)
	ld.b	$w1,0($sp)
	aver_u.b	$w1,$w1,$w0
	st.b	$w1,160($sp)
	ld.b	$w1,32($sp)
	aver_u.b	$w0,$w0,$w1
	st.b	$w0,176($sp)
	ld	$2,312($sp)
	blez	$2,.L2095
	ld	$2,344($sp)

	daddu	$23,$16,$2
	move	$20,$fp
	ld	$19,272($sp)
	ld	$18,264($sp)
	ld	$17,256($sp)
	daddiu	$22,$sp,128
	daddiu	$21,$sp,112
.L2096:
	daddiu	$16,$16,-32
	daddiu	$17,$17,-16
	daddiu	$18,$18,-16
	daddiu	$19,$19,-16
	daddiu	$20,$20,-16
	ld	$8,152($sp)
	ld	$7,240($sp)
	ld	$6,248($sp)
	ld	$5,144($sp)
	ld	$25,%call16(_Z5LD_V3PKhlPDv2_xS2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V3PKhlPDv2_xS2_S2_
1:	jalr	$25
	daddiu	$4,$16,16

	move	$8,$22
	move	$7,$21
	daddiu	$6,$sp,96
	ld	$5,144($sp)
	ld	$25,%call16(_Z5LD_V3PKhlPDv2_xS2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V3PKhlPDv2_xS2_S2_
1:	jalr	$25
	move	$4,$16

	ld.b	$w0,64($sp)
	ld.b	$w2,48($sp)
	aver_u.b	$w2,$w2,$w0
	ld.b	$w1,80($sp)
	aver_u.b	$w0,$w0,$w1
	ld.b	$w1,112($sp)
	ld.b	$w3,96($sp)
	aver_u.b	$w4,$w3,$w1
	move.v	$w6,$w4
	ld.b	$w3,128($sp)
	aver_u.b	$w7,$w1,$w3
	ld.b	$w1,160($sp)
	vextr.v	$w3,$w1,$w2,1
	ld.b	$w1,176($sp)
	vextr.v	$w1,$w1,$w0,1
	vextr.v	$w5,$w2,$w4,1
	vextr.v	$w4,$w0,$w7,1
	aver_u.b	$w2,$w3,$w2
	aver_u.b	$w0,$w1,$w0
	st.b	$w6,160($sp)
	aver_u.b	$w3,$w5,$w6
	st.b	$w7,176($sp)
	aver_u.b	$w1,$w4,$w7
	pckev.b	$w4,$w2,$w3
	pckod.b	$w2,$w2,$w3
	st.b	$w2,192($sp)
	pckev.b	$w3,$w0,$w1
	st.b	$w3,208($sp)
	pckod.b	$w0,$w0,$w1
	st.b	$w0,224($sp)
	move	$6,$17
	copy_s.d	$4,$w4[0]
	ld	$25,%call16(_Z4ST_VDv2_xPh)($28)
	.reloc	1f,R_MIPS_JALR,_Z4ST_VDv2_xPh
1:	jalr	$25
	copy_s.d	$5,$w4[1]

	move	$6,$18
	ld.d	$w1,192($sp)
	copy_s.d	$4,$w1[0]
	ld	$25,%call16(_Z4ST_VDv2_xPh)($28)
	.reloc	1f,R_MIPS_JALR,_Z4ST_VDv2_xPh
1:	jalr	$25
	copy_s.d	$5,$w1[1]

	move	$6,$19
	ld.d	$w1,208($sp)
	copy_s.d	$4,$w1[0]
	ld	$25,%call16(_Z4ST_VDv2_xPh)($28)
	.reloc	1f,R_MIPS_JALR,_Z4ST_VDv2_xPh
1:	jalr	$25
	copy_s.d	$5,$w1[1]

	move	$6,$20
	ld.d	$w0,224($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z4ST_VDv2_xPh)($28)
	.reloc	1f,R_MIPS_JALR,_Z4ST_VDv2_xPh
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	bne	$16,$23,.L2096
	ld	$3,256($sp)

	ld	$2,336($sp)
	daddu	$3,$3,$2
	sd	$3,256($sp)
	ld	$3,264($sp)
	daddu	$3,$3,$2
	sd	$3,264($sp)
	ld	$3,272($sp)
	daddu	$3,$3,$2
	sd	$3,272($sp)
	daddu	$fp,$fp,$2
.L2095:
	ld	$2,296($sp)
	dsubu	$16,$16,$2
	ld	$2,288($sp)
	dsubu	$2,$0,$2
	ld	$3,256($sp)
	daddu	$3,$3,$2
	sd	$3,256($sp)
	ld	$3,264($sp)
	daddu	$3,$3,$2
	sd	$3,264($sp)
	ld	$3,272($sp)
	daddu	$3,$3,$2
	sd	$3,272($sp)
	daddu	$fp,$fp,$2
	ld	$2,280($sp)
	addiu	$2,$2,1
	sd	$2,280($sp)
	ld	$3,304($sp)
	bne	$3,$2,.L2101
	ld	$8,320($sp)

.L2093:
	ld	$31,440($sp)
	ld	$fp,432($sp)
	ld	$28,424($sp)
	ld	$23,416($sp)
	ld	$22,408($sp)
	ld	$21,400($sp)
	ld	$20,392($sp)
	ld	$19,384($sp)
	ld	$18,376($sp)
	ld	$17,368($sp)
	ld	$16,360($sp)
	jr	$31
	daddiu	$sp,$sp,448

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii
	.size	_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii, .-_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii
	.type	_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii, @function
_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii:
	.frame	$sp,176,$31		# vars= 80, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-176
	sd	$31,168($sp)
	sd	$fp,160($sp)
	sd	$28,152($sp)
	sd	$23,144($sp)
	sd	$22,136($sp)
	sd	$21,128($sp)
	sd	$20,120($sp)
	sd	$19,112($sp)
	sd	$18,104($sp)
	sd	$17,96($sp)
	sd	$16,88($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii)))
	sll	$9,$9,6
	sll	$10,$10,16
	or	$9,$9,$10
	fill.w	$w0,$9
	shf.w	$w0,$w0,0
	lw	$2,176($sp)
	fill.w	$w1,$2
	shf.w	$w1,$w1,0
	st.w	$w1,32($sp)
	fill.w	$w1,$11
	shf.w	$w1,$w1,0
	blez	$8,.L2102
	st.w	$w1,48($sp)

	move	$18,$4
	move	$19,$5
	move	$23,$6
	move	$fp,$8
	sra	$20,$7,4
	move	$22,$0
	daddiu	$21,$sp,16
	st.h	$w0,64($sp)
.L2106:
	blez	$20,.L2104
	nop

	move	$16,$0
	sll	$17,$16,4
.L2110:
	move	$6,$21
	move	$5,$sp
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$18,$17

	ld.h	$w2,0($sp)
	ldi.h	$w0,1
	ilvr.h	$w3,$w0,$w2
	ilvl.h	$w2,$w0,$w2
	ld.h	$w1,16($sp)
	ilvr.h	$w0,$w0,$w1
	ldi.h	$w4,1
	ilvl.h	$w1,$w4,$w1
	ld.h	$w4,64($sp)
	dotp_s.w	$w3,$w4,$w3
	dotp_s.w	$w2,$w4,$w2
	dotp_s.w	$w0,$w4,$w0
	dotp_s.w	$w1,$w4,$w1
	ld.w	$w4,48($sp)
	srl.w	$w3,$w3,$w4
	srl.w	$w2,$w2,$w4
	srl.w	$w0,$w0,$w4
	srl.w	$w1,$w1,$w4
	ld.w	$w4,32($sp)
	addv.w	$w3,$w3,$w4
	addv.w	$w2,$w2,$w4
	addv.w	$w0,$w0,$w4
	addv.w	$w1,$w1,$w4
	vsrains_u.h	$w3,$w3,0
	st.h	$w3,0($sp)
	vsrains_u.h	$w2,$w2,0
	st.h	$w2,16($sp)
	vsrains_u.h	$w0,$w0,0
	vsrains_u.h	$w1,$w1,0
	ld.d	$w3,16($sp)
	ld.d	$w2,0($sp)
	insve.d	$w2[1],$w3[0]
	st.h	$w2,0($sp)
	insve.d	$w0[1],$w1[0]
	vsrlins_u.b	$w2,$w2,0
	vsrlins_u.b	$w0,$w0,0
	insve.d	$w2[1],$w0[0]
	daddu	$6,$19,$17
	copy_s.d	$4,$w2[0]
	ld	$25,%call16(_Z4ST_VDv2_xPh)($28)
	.reloc	1f,R_MIPS_JALR,_Z4ST_VDv2_xPh
1:	jalr	$25
	copy_s.d	$5,$w2[1]

	addiu	$16,$16,1
	bne	$20,$16,.L2110
	sll	$17,$16,4

.L2104:
	daddu	$18,$18,$23
	addiu	$22,$22,1
	bne	$fp,$22,.L2106
	daddu	$19,$19,$23

.L2102:
	ld	$31,168($sp)
	ld	$fp,160($sp)
	ld	$28,152($sp)
	ld	$23,144($sp)
	ld	$22,136($sp)
	ld	$21,128($sp)
	ld	$20,120($sp)
	ld	$19,112($sp)
	ld	$18,104($sp)
	ld	$17,96($sp)
	ld	$16,88($sp)
	jr	$31
	daddiu	$sp,$sp,176

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii
	.size	_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii, .-_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l
	.type	_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l, @function
_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l:
	.frame	$sp,320,$31		# vars= 224, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-320
	sd	$31,312($sp)
	sd	$fp,304($sp)
	sd	$28,296($sp)
	sd	$23,288($sp)
	sd	$22,280($sp)
	sd	$21,272($sp)
	sd	$20,264($sp)
	sd	$19,256($sp)
	sd	$18,248($sp)
	sd	$17,240($sp)
	sd	$16,232($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l)))
	dsll	$2,$5,3
	sd	$2,208($sp)
	dsll	$2,$7,3
	sd	$2,216($sp)
	move	$19,$5
	daddu	$2,$4,$5
	sd	$2,184($sp)
	move	$18,$7
	daddu	$2,$6,$7
	sd	$2,192($sp)
	dsll	$fp,$5,1
	dsll	$2,$7,1
	sd	$2,176($sp)
	li	$2,8			# 0x8
	sd	$2,200($sp)
	move	$22,$0
.L2113:
	ld	$20,184($sp)
	daddiu	$23,$20,64
	ld	$21,192($sp)
.L2112:
	dsubu	$17,$20,$19
	dsubu	$16,$21,$18
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$17

	insert.d	$w0[0],$2
	insert.d	$w0[1],$3
	st.d	$w0,0($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$20

	insert.d	$w1[0],$2
	insert.d	$w1[1],$3
	st.d	$w1,16($sp)
	daddu	$17,$17,$fp
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$17

	insert.d	$w2[0],$2
	insert.d	$w2[1],$3
	st.d	$w2,32($sp)
	daddu	$17,$17,$19
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$17

	insert.d	$w3[0],$2
	insert.d	$w3[1],$3
	st.d	$w3,48($sp)
	daddu	$17,$17,$19
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$16

	insert.d	$w4[0],$2
	insert.d	$w4[1],$3
	st.d	$w4,64($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$21

	insert.d	$w5[0],$2
	insert.d	$w5[1],$3
	st.d	$w5,80($sp)
	ld	$2,176($sp)
	daddu	$16,$16,$2
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$16

	insert.d	$w6[0],$2
	insert.d	$w6[1],$3
	st.d	$w6,96($sp)
	daddu	$16,$16,$18
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$16

	insert.d	$w0[0],$2
	insert.d	$w0[1],$3
	daddu	$16,$16,$18
	ld.b	$w7,0($sp)
	hadd_u.h	$w15,$w7,$w7
	ld.b	$w6,16($sp)
	hadd_u.h	$w13,$w6,$w6
	ld.b	$w5,32($sp)
	hadd_u.h	$w11,$w5,$w5
	ld.b	$w4,48($sp)
	hadd_u.h	$w9,$w4,$w4
	ld.b	$w3,64($sp)
	hadd_u.h	$w14,$w3,$w3
	ld.b	$w2,80($sp)
	hadd_u.h	$w12,$w2,$w2
	ld.b	$w1,96($sp)
	hadd_u.h	$w10,$w1,$w1
	hadd_u.h	$w8,$w0,$w0
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w2,$w2,$w2
	hsub_u.h	$w1,$w1,$w1
	hsub_u.h	$w0,$w0,$w0
	insve.d	$w15[1],$w7[0]
	insve.d	$w13[1],$w6[0]
	insve.d	$w11[1],$w5[0]
	insve.d	$w9[1],$w4[0]
	move.v	$w4,$w9
	move.v	$w9,$w14
	insve.d	$w9[1],$w3[0]
	move.v	$w3,$w9
	move.v	$w9,$w12
	insve.d	$w9[1],$w2[0]
	move.v	$w2,$w9
	move.v	$w9,$w10
	insve.d	$w9[1],$w1[0]
	insve.d	$w8[1],$w0[0]
	subv.h	$w3,$w15,$w3
	st.h	$w3,0($sp)
	subv.h	$w2,$w13,$w2
	st.h	$w2,16($sp)
	subv.h	$w1,$w11,$w9
	st.h	$w1,32($sp)
	subv.h	$w5,$w4,$w8
	st.h	$w5,48($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$17

	insert.d	$w6[0],$2
	insert.d	$w6[1],$3
	st.d	$w6,64($sp)
	daddu	$17,$17,$19
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$17

	insert.d	$w7[0],$2
	insert.d	$w7[1],$3
	st.d	$w7,80($sp)
	daddu	$17,$17,$19
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$17

	insert.d	$w8[0],$2
	insert.d	$w8[1],$3
	st.d	$w8,96($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	daddu	$4,$17,$19

	insert.d	$w9[0],$2
	insert.d	$w9[1],$3
	st.d	$w9,112($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$16

	insert.d	$w10[0],$2
	insert.d	$w10[1],$3
	st.d	$w10,128($sp)
	daddu	$16,$16,$18
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$16

	insert.d	$w11[0],$2
	insert.d	$w11[1],$3
	st.d	$w11,144($sp)
	daddu	$16,$16,$18
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$16

	insert.d	$w12[0],$2
	insert.d	$w12[1],$3
	st.d	$w12,160($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	daddu	$4,$16,$18

	insert.d	$w4[0],$2
	insert.d	$w4[1],$3
	ld.b	$w11,64($sp)
	hadd_u.h	$w13,$w11,$w11
	ld.b	$w10,80($sp)
	hadd_u.h	$w3,$w10,$w10
	ld.b	$w9,96($sp)
	hadd_u.h	$w12,$w9,$w9
	ld.b	$w8,112($sp)
	hadd_u.h	$w0,$w8,$w8
	ld.b	$w7,128($sp)
	hadd_u.h	$w15,$w7,$w7
	ld.b	$w6,144($sp)
	hadd_u.h	$w1,$w6,$w6
	ld.b	$w5,160($sp)
	hadd_u.h	$w14,$w5,$w5
	hadd_u.h	$w2,$w4,$w4
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	insve.d	$w13[1],$w11[0]
	insve.d	$w3[1],$w10[0]
	move.v	$w10,$w12
	insve.d	$w10[1],$w9[0]
	insve.d	$w0[1],$w8[0]
	move.v	$w8,$w15
	insve.d	$w8[1],$w7[0]
	insve.d	$w1[1],$w6[0]
	move.v	$w6,$w14
	insve.d	$w6[1],$w5[0]
	insve.d	$w2[1],$w4[0]
	subv.h	$w7,$w13,$w8
	subv.h	$w1,$w3,$w1
	subv.h	$w6,$w10,$w6
	subv.h	$w2,$w0,$w2
	ld.h	$w4,16($sp)
	ld.h	$w0,0($sp)
	addv.h	$w10,$w4,$w0
	subv.h	$w8,$w4,$w0
	ld.h	$w4,48($sp)
	ld.h	$w0,32($sp)
	addv.h	$w3,$w4,$w0
	subv.h	$w5,$w4,$w0
	addv.h	$w9,$w1,$w7
	subv.h	$w0,$w1,$w7
	addv.h	$w4,$w2,$w6
	subv.h	$w2,$w2,$w6
	addv.h	$w7,$w3,$w10
	subv.h	$w3,$w3,$w10
	addv.h	$w6,$w5,$w8
	subv.h	$w5,$w5,$w8
	addv.h	$w11,$w4,$w9
	subv.h	$w4,$w4,$w9
	addv.h	$w10,$w2,$w0
	subv.h	$w2,$w2,$w0
	addv.h	$w1,$w11,$w7
	subv.h	$w11,$w11,$w7
	addv.h	$w0,$w10,$w6
	subv.h	$w10,$w10,$w6
	addv.h	$w9,$w4,$w3
	subv.h	$w4,$w4,$w3
	addv.h	$w8,$w2,$w5
	subv.h	$w2,$w2,$w5
	pckod.h	$w7,$w11,$w1
	pckev.h	$w1,$w11,$w1
	pckod.h	$w6,$w10,$w0
	pckev.h	$w0,$w10,$w0
	pckod.h	$w3,$w4,$w9
	pckev.h	$w4,$w4,$w9
	pckod.h	$w5,$w2,$w8
	pckev.h	$w2,$w2,$w8
	addv.h	$w11,$w7,$w1
	asub_s.h	$w7,$w7,$w1
	addv.h	$w10,$w6,$w0
	asub_s.h	$w6,$w6,$w0
	addv.h	$w9,$w3,$w4
	asub_s.h	$w4,$w3,$w4
	addv.h	$w8,$w5,$w2
	asub_s.h	$w2,$w5,$w2
	vabs.h	$w0,$w11
	vabs.h	$w3,$w10
	vabs.h	$w5,$w9
	vabs.h	$w8,$w8
	ilvod.h	$w1,$w0,$w7
	ilvev.h	$w7,$w0,$w7
	ilvod.h	$w0,$w3,$w6
	ilvev.h	$w6,$w3,$w6
	ilvod.h	$w3,$w5,$w4
	ilvev.h	$w4,$w5,$w4
	ilvod.h	$w5,$w8,$w2
	ilvev.h	$w2,$w8,$w2
	max_s.h	$w1,$w1,$w7
	max_s.h	$w6,$w0,$w6
	max_s.h	$w3,$w3,$w4
	max_s.h	$w2,$w5,$w2
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w6,$w6,$w6
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w2,$w2,$w2
	addv.w	$w0,$w1,$w6
	addv.w	$w3,$w3,$w2
	addv.w	$w0,$w0,$w3
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addiu	$2,$2,1
	sra	$2,$2,1
	addu	$22,$2,$22
	daddiu	$20,$20,8
	bne	$20,$23,.L2112
	daddiu	$21,$21,8

	ld	$2,200($sp)
	addiu	$2,$2,-1
	sd	$2,200($sp)
	ld	$3,184($sp)
	ld	$4,208($sp)
	daddu	$3,$3,$4
	sd	$3,184($sp)
	ld	$3,192($sp)
	ld	$4,216($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2113
	sd	$3,192($sp)

	move	$2,$22
	ld	$31,312($sp)
	ld	$fp,304($sp)
	ld	$28,296($sp)
	ld	$23,288($sp)
	ld	$22,280($sp)
	ld	$21,272($sp)
	ld	$20,264($sp)
	ld	$19,256($sp)
	ld	$18,248($sp)
	ld	$17,240($sp)
	ld	$16,232($sp)
	jr	$31
	daddiu	$sp,$sp,320

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l
	.size	_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l, .-_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
	.type	_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l, @function
_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l:
	.frame	$sp,352,$31		# vars= 256, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-352
	sd	$31,344($sp)
	sd	$fp,336($sp)
	sd	$28,328($sp)
	sd	$23,320($sp)
	sd	$22,312($sp)
	sd	$21,304($sp)
	sd	$20,296($sp)
	sd	$19,288($sp)
	sd	$18,280($sp)
	sd	$17,272($sp)
	sd	$16,264($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)))
	sd	$4,208($sp)
	move	$17,$5
	sd	$6,216($sp)
	move	$16,$7
	dsll	$2,$5,3
	sd	$2,240($sp)
	dsll	$2,$7,3
	sd	$2,248($sp)
	li	$2,2			# 0x2
	sd	$2,232($sp)
	sd	$0,0($sp)
.L2119:
	ld	$2,208($sp)
	move	$18,$2
	ld	$19,216($sp)
	daddiu	$2,$2,16
	sd	$2,224($sp)
.L2118:
	daddu	$fp,$17,$18
	daddu	$23,$fp,$17
	daddu	$22,$17,$23
	daddu	$2,$17,$22
	sd	$2,144($sp)
	daddu	$3,$17,$2
	sd	$3,160($sp)
	daddu	$20,$17,$3
	sd	$20,176($sp)
	daddu	$21,$19,$16
	daddu	$20,$16,$21
	daddu	$5,$16,$20
	sd	$5,128($sp)
	daddu	$6,$16,$5
	sd	$6,8($sp)
	daddu	$7,$16,$6
	sd	$7,192($sp)
	daddu	$8,$16,$7
	sd	$8,200($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$18

	insert.d	$w0[0],$2
	insert.d	$w0[1],$3
	st.d	$w0,16($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$fp

	insert.d	$w1[0],$2
	insert.d	$w1[1],$3
	st.d	$w1,32($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$23

	insert.d	$w2[0],$2
	insert.d	$w2[1],$3
	st.d	$w2,48($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$22

	insert.d	$w3[0],$2
	insert.d	$w3[1],$3
	st.d	$w3,64($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$19

	insert.d	$w4[0],$2
	insert.d	$w4[1],$3
	st.d	$w4,80($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$21

	insert.d	$w5[0],$2
	insert.d	$w5[1],$3
	st.d	$w5,96($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$20

	insert.d	$w6[0],$2
	insert.d	$w6[1],$3
	st.d	$w6,112($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,128($sp)

	insert.d	$w0[0],$2
	insert.d	$w0[1],$3
	ld.b	$w7,16($sp)
	hadd_u.h	$w15,$w7,$w7
	ld.b	$w6,32($sp)
	hadd_u.h	$w13,$w6,$w6
	ld.b	$w5,48($sp)
	hadd_u.h	$w11,$w5,$w5
	ld.b	$w4,64($sp)
	hadd_u.h	$w9,$w4,$w4
	ld.b	$w3,80($sp)
	hadd_u.h	$w14,$w3,$w3
	ld.b	$w2,96($sp)
	hadd_u.h	$w12,$w2,$w2
	ld.b	$w1,112($sp)
	hadd_u.h	$w10,$w1,$w1
	hadd_u.h	$w8,$w0,$w0
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w2,$w2,$w2
	hsub_u.h	$w1,$w1,$w1
	hsub_u.h	$w0,$w0,$w0
	insve.d	$w15[1],$w7[0]
	insve.d	$w13[1],$w6[0]
	insve.d	$w11[1],$w5[0]
	insve.d	$w9[1],$w4[0]
	move.v	$w4,$w9
	move.v	$w9,$w14
	insve.d	$w9[1],$w3[0]
	move.v	$w3,$w9
	move.v	$w9,$w12
	insve.d	$w9[1],$w2[0]
	move.v	$w2,$w9
	move.v	$w9,$w10
	insve.d	$w9[1],$w1[0]
	insve.d	$w8[1],$w0[0]
	subv.h	$w3,$w15,$w3
	st.h	$w3,16($sp)
	subv.h	$w2,$w13,$w2
	st.h	$w2,32($sp)
	subv.h	$w1,$w11,$w9
	st.h	$w1,48($sp)
	subv.h	$w5,$w4,$w8
	st.h	$w5,64($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,144($sp)

	insert.d	$w6[0],$2
	insert.d	$w6[1],$3
	st.d	$w6,80($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,160($sp)

	insert.d	$w7[0],$2
	insert.d	$w7[1],$3
	st.d	$w7,96($sp)
	ld	$20,176($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$20

	insert.d	$w8[0],$2
	insert.d	$w8[1],$3
	st.d	$w8,112($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	daddu	$4,$17,$20

	insert.d	$w9[0],$2
	insert.d	$w9[1],$3
	st.d	$w9,128($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,8($sp)

	insert.d	$w10[0],$2
	insert.d	$w10[1],$3
	st.d	$w10,144($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,192($sp)

	insert.d	$w11[0],$2
	insert.d	$w11[1],$3
	st.d	$w11,160($sp)
	ld	$20,200($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$20

	insert.d	$w12[0],$2
	insert.d	$w12[1],$3
	st.d	$w12,176($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	daddu	$4,$16,$20

	insert.d	$w4[0],$2
	insert.d	$w4[1],$3
	ld.b	$w11,80($sp)
	hadd_u.h	$w13,$w11,$w11
	ld.b	$w10,96($sp)
	hadd_u.h	$w3,$w10,$w10
	ld.b	$w9,112($sp)
	hadd_u.h	$w12,$w9,$w9
	ld.b	$w8,128($sp)
	hadd_u.h	$w0,$w8,$w8
	ld.b	$w7,144($sp)
	hadd_u.h	$w15,$w7,$w7
	ld.b	$w6,160($sp)
	hadd_u.h	$w1,$w6,$w6
	ld.b	$w5,176($sp)
	hadd_u.h	$w14,$w5,$w5
	hadd_u.h	$w2,$w4,$w4
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	insve.d	$w13[1],$w11[0]
	insve.d	$w3[1],$w10[0]
	move.v	$w10,$w12
	insve.d	$w10[1],$w9[0]
	insve.d	$w0[1],$w8[0]
	move.v	$w8,$w15
	insve.d	$w8[1],$w7[0]
	insve.d	$w1[1],$w6[0]
	move.v	$w6,$w14
	insve.d	$w6[1],$w5[0]
	insve.d	$w2[1],$w4[0]
	subv.h	$w7,$w13,$w8
	subv.h	$w1,$w3,$w1
	subv.h	$w6,$w10,$w6
	subv.h	$w2,$w0,$w2
	ld.h	$w4,32($sp)
	ld.h	$w0,16($sp)
	addv.h	$w10,$w4,$w0
	subv.h	$w8,$w4,$w0
	ld.h	$w4,64($sp)
	ld.h	$w0,48($sp)
	addv.h	$w3,$w4,$w0
	subv.h	$w5,$w4,$w0
	addv.h	$w9,$w1,$w7
	subv.h	$w0,$w1,$w7
	addv.h	$w4,$w2,$w6
	subv.h	$w2,$w2,$w6
	addv.h	$w7,$w3,$w10
	subv.h	$w3,$w3,$w10
	addv.h	$w6,$w5,$w8
	subv.h	$w5,$w5,$w8
	addv.h	$w11,$w4,$w9
	subv.h	$w4,$w4,$w9
	addv.h	$w10,$w2,$w0
	subv.h	$w2,$w2,$w0
	addv.h	$w1,$w11,$w7
	subv.h	$w11,$w11,$w7
	addv.h	$w0,$w10,$w6
	subv.h	$w10,$w10,$w6
	addv.h	$w9,$w4,$w3
	subv.h	$w4,$w4,$w3
	addv.h	$w8,$w2,$w5
	subv.h	$w2,$w2,$w5
	pckod.h	$w7,$w11,$w1
	pckev.h	$w1,$w11,$w1
	pckod.h	$w6,$w10,$w0
	pckev.h	$w0,$w10,$w0
	pckod.h	$w3,$w4,$w9
	pckev.h	$w4,$w4,$w9
	pckod.h	$w5,$w2,$w8
	pckev.h	$w2,$w2,$w8
	addv.h	$w11,$w7,$w1
	asub_s.h	$w7,$w7,$w1
	addv.h	$w10,$w6,$w0
	asub_s.h	$w6,$w6,$w0
	addv.h	$w9,$w3,$w4
	asub_s.h	$w4,$w3,$w4
	addv.h	$w8,$w5,$w2
	asub_s.h	$w2,$w5,$w2
	vabs.h	$w0,$w11
	vabs.h	$w3,$w10
	vabs.h	$w5,$w9
	vabs.h	$w8,$w8
	ilvod.h	$w1,$w0,$w7
	ilvev.h	$w7,$w0,$w7
	ilvod.h	$w0,$w3,$w6
	ilvev.h	$w6,$w3,$w6
	ilvod.h	$w3,$w5,$w4
	ilvev.h	$w4,$w5,$w4
	ilvod.h	$w5,$w8,$w2
	ilvev.h	$w2,$w8,$w2
	max_s.h	$w1,$w1,$w7
	max_s.h	$w6,$w0,$w6
	max_s.h	$w3,$w3,$w4
	max_s.h	$w2,$w5,$w2
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w6,$w6,$w6
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w2,$w2,$w2
	addv.w	$w0,$w1,$w6
	addv.w	$w3,$w3,$w2
	addv.w	$w0,$w0,$w3
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addiu	$2,$2,1
	sra	$2,$2,1
	ld	$3,0($sp)
	addu	$2,$2,$3
	sd	$2,0($sp)
	daddiu	$18,$18,8
	ld	$2,224($sp)
	bne	$18,$2,.L2118
	daddiu	$19,$19,8

	ld	$2,208($sp)
	ld	$3,240($sp)
	daddu	$2,$2,$3
	sd	$2,208($sp)
	ld	$2,216($sp)
	ld	$3,248($sp)
	daddu	$2,$2,$3
	sd	$2,216($sp)
	ld	$2,232($sp)
	addiu	$2,$2,-1
	bne	$2,$0,.L2119
	sd	$2,232($sp)

	ld	$2,0($sp)
	ld	$31,344($sp)
	ld	$fp,336($sp)
	ld	$28,328($sp)
	ld	$23,320($sp)
	ld	$22,312($sp)
	ld	$21,304($sp)
	ld	$20,296($sp)
	ld	$19,288($sp)
	ld	$18,280($sp)
	ld	$17,272($sp)
	ld	$16,264($sp)
	jr	$31
	daddiu	$sp,$sp,352

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
	.size	_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l, .-_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sa8d16ILi32ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_16sa8d16ILi32ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_16sa8d16ILi32ELi64EEEiPKhlS2_l:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$31,88($sp)
	sd	$fp,80($sp)
	sd	$28,72($sp)
	sd	$23,64($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16sa8d16ILi32ELi64EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16sa8d16ILi32ELi64EEEiPKhlS2_l)))
	move	$22,$5
	move	$21,$7
	dsll	$fp,$5,4
	move	$18,$4
	dsll	$23,$7,4
	move	$17,$6
	li	$19,4			# 0x4
	move	$16,$0
	ld	$20,%got_page(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)
.L2124:
	move	$7,$21
	move	$6,$17
	move	$5,$22
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
1:	jalr	$25
	move	$4,$18

	addu	$16,$2,$16
	move	$7,$21
	daddiu	$6,$17,16
	move	$5,$22
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
1:	jalr	$25
	daddiu	$4,$18,16

	addu	$16,$2,$16
	addiu	$19,$19,-1
	daddu	$18,$18,$fp
	bne	$19,$0,.L2124
	daddu	$17,$17,$23

	move	$2,$16
	ld	$31,88($sp)
	ld	$fp,80($sp)
	ld	$28,72($sp)
	ld	$23,64($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sa8d16ILi32ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_16sa8d16ILi32ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_16sa8d16ILi32ELi64EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l)))
	move	$20,$4
	move	$17,$5
	move	$21,$6
	ld	$16,%got_page(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
1:	jalr	$25
	move	$18,$7

	move	$19,$2
	move	$7,$18
	dlsa	$6,$18,$21,4
	move	$5,$17
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
1:	jalr	$25
	dlsa	$4,$17,$20,4

	addu	$2,$2,$19
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
	.end	_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
	.type	_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l, @function
_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l:
	.frame	$sp,384,$31		# vars= 272, regs= 6/8, args= 0, gp= 0
	.mask	0x900f0000,-72
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-384
	sd	$31,312($sp)
	sd	$28,304($sp)
	sd	$19,296($sp)
	sd	$18,288($sp)
	sd	$17,280($sp)
	sd	$16,272($sp)
	sdc1	$f31,376($sp)
	sdc1	$f30,368($sp)
	sdc1	$f29,360($sp)
	sdc1	$f28,352($sp)
	sdc1	$f27,344($sp)
	sdc1	$f26,336($sp)
	sdc1	$f25,328($sp)
	sdc1	$f24,320($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)))
	move	$19,$4
	move	$18,$5
	move	$16,$6
	move	$17,$7
	daddiu	$9,$sp,48
	daddiu	$8,$sp,32
	daddiu	$7,$sp,16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$6,$sp

	daddiu	$9,$sp,112
	daddiu	$8,$sp,96
	daddiu	$7,$sp,80
	daddiu	$6,$sp,64
	move	$5,$17
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	dlsa	$16,$17,$16,2
	daddiu	$9,$sp,176
	daddiu	$8,$sp,160
	daddiu	$7,$sp,144
	daddiu	$6,$sp,128
	move	$5,$18
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	dlsa	$4,$18,$19,2

	daddiu	$9,$sp,240
	daddiu	$8,$sp,224
	daddiu	$7,$sp,208
	daddiu	$6,$sp,192
	move	$5,$17
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	ld.b	$w12,0($sp)
	hadd_u.h	$w20,$w12,$w12
	ld.b	$w11,16($sp)
	hadd_u.h	$w8,$w11,$w11
	ld.b	$w10,32($sp)
	hadd_u.h	$w0,$w10,$w10
	st.h	$w0,256($sp)
	ld.b	$w9,48($sp)
	hadd_u.h	$w3,$w9,$w9
	ld.b	$w19,64($sp)
	hadd_u.h	$w1,$w19,$w19
	ld.b	$w18,80($sp)
	hadd_u.h	$w2,$w18,$w18
	ld.b	$w17,96($sp)
	hadd_u.h	$w31,$w17,$w17
	ld.b	$w16,112($sp)
	hadd_u.h	$w30,$w16,$w16
	ld.b	$w4,128($sp)
	hadd_u.h	$w13,$w4,$w4
	ld.b	$w15,144($sp)
	hadd_u.h	$w5,$w15,$w15
	ld.b	$w14,160($sp)
	hadd_u.h	$w7,$w14,$w14
	ld.b	$w25,176($sp)
	hadd_u.h	$w0,$w25,$w25
	ld.b	$w24,192($sp)
	hadd_u.h	$w29,$w24,$w24
	ld.b	$w23,208($sp)
	hadd_u.h	$w28,$w23,$w23
	ld.b	$w22,224($sp)
	hadd_u.h	$w27,$w22,$w22
	ld.b	$w21,240($sp)
	hadd_u.h	$w26,$w21,$w21
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w19,$w19,$w19
	hsub_u.h	$w18,$w18,$w18
	hsub_u.h	$w17,$w17,$w17
	hsub_u.h	$w16,$w16,$w16
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w15,$w15,$w15
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w25,$w25,$w25
	hsub_u.h	$w24,$w24,$w24
	hsub_u.h	$w23,$w23,$w23
	hsub_u.h	$w22,$w22,$w22
	hsub_u.h	$w21,$w21,$w21
	insve.d	$w20[1],$w12[0]
	move.v	$w6,$w8
	insve.d	$w6[1],$w11[0]
	ld.d	$w12,256($sp)
	insve.d	$w12[1],$w10[0]
	insve.d	$w3[1],$w9[0]
	insve.d	$w1[1],$w19[0]
	insve.d	$w2[1],$w18[0]
	insve.d	$w31[1],$w17[0]
	insve.d	$w30[1],$w16[0]
	move.v	$w10,$w13
	insve.d	$w10[1],$w4[0]
	move.v	$w4,$w5
	insve.d	$w4[1],$w15[0]
	insve.d	$w7[1],$w14[0]
	insve.d	$w0[1],$w25[0]
	insve.d	$w29[1],$w24[0]
	insve.d	$w28[1],$w23[0]
	insve.d	$w27[1],$w22[0]
	insve.d	$w26[1],$w21[0]
	subv.h	$w13,$w20,$w1
	subv.h	$w8,$w6,$w2
	subv.h	$w11,$w12,$w31
	subv.h	$w1,$w3,$w30
	subv.h	$w9,$w10,$w29
	subv.h	$w5,$w4,$w28
	subv.h	$w6,$w7,$w27
	subv.h	$w2,$w0,$w26
	addv.h	$w10,$w8,$w13
	subv.h	$w8,$w8,$w13
	addv.h	$w3,$w1,$w11
	subv.h	$w0,$w1,$w11
	addv.h	$w1,$w5,$w9
	subv.h	$w5,$w5,$w9
	addv.h	$w4,$w2,$w6
	subv.h	$w2,$w2,$w6
	addv.h	$w7,$w3,$w10
	subv.h	$w3,$w3,$w10
	addv.h	$w6,$w0,$w8
	subv.h	$w0,$w0,$w8
	addv.h	$w11,$w4,$w1
	subv.h	$w4,$w4,$w1
	addv.h	$w10,$w2,$w5
	subv.h	$w2,$w2,$w5
	addv.h	$w1,$w11,$w7
	subv.h	$w11,$w11,$w7
	addv.h	$w9,$w10,$w6
	subv.h	$w10,$w10,$w6
	addv.h	$w5,$w4,$w3
	subv.h	$w4,$w4,$w3
	addv.h	$w8,$w2,$w0
	subv.h	$w2,$w2,$w0
	pckod.h	$w7,$w11,$w1
	pckev.h	$w1,$w11,$w1
	pckod.h	$w6,$w10,$w9
	pckev.h	$w0,$w10,$w9
	pckod.h	$w3,$w4,$w5
	pckev.h	$w4,$w4,$w5
	pckod.h	$w5,$w2,$w8
	pckev.h	$w2,$w2,$w8
	addv.h	$w11,$w7,$w1
	asub_s.h	$w7,$w7,$w1
	addv.h	$w10,$w6,$w0
	asub_s.h	$w6,$w6,$w0
	addv.h	$w9,$w3,$w4
	asub_s.h	$w4,$w3,$w4
	addv.h	$w8,$w5,$w2
	asub_s.h	$w2,$w5,$w2
	vabs.h	$w0,$w11
	vabs.h	$w3,$w10
	vabs.h	$w5,$w9
	vabs.h	$w8,$w8
	ilvod.h	$w1,$w0,$w7
	ilvev.h	$w7,$w0,$w7
	ilvod.h	$w0,$w3,$w6
	ilvev.h	$w6,$w3,$w6
	ilvod.h	$w3,$w5,$w4
	ilvev.h	$w4,$w5,$w4
	ilvod.h	$w5,$w8,$w2
	ilvev.h	$w2,$w8,$w2
	max_s.h	$w1,$w1,$w7
	max_s.h	$w6,$w0,$w6
	max_s.h	$w3,$w3,$w4
	max_s.h	$w2,$w5,$w2
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w6,$w6,$w6
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w2,$w2,$w2
	addv.w	$w0,$w1,$w6
	addv.w	$w3,$w3,$w2
	addv.w	$w0,$w0,$w3
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addiu	$2,$2,1
	sra	$2,$2,1
	ld	$31,312($sp)
	ld	$28,304($sp)
	ld	$19,296($sp)
	ld	$18,288($sp)
	ld	$17,280($sp)
	ld	$16,272($sp)
	ldc1	$f31,376($sp)
	ldc1	$f30,368($sp)
	ldc1	$f29,360($sp)
	ldc1	$f28,352($sp)
	ldc1	$f27,344($sp)
	ldc1	$f26,336($sp)
	ldc1	$f25,328($sp)
	ldc1	$f24,320($sp)
	jr	$31
	daddiu	$sp,$sp,384

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
	.size	_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l, .-_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l)))
	move	$20,$4
	move	$17,$5
	move	$21,$6
	ld	$16,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	move	$18,$7

	move	$19,$2
	move	$7,$18
	dlsa	$6,$18,$21,3
	move	$5,$17
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	dlsa	$4,$17,$20,3

	addu	$2,$2,$19
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
	.end	_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l
	.type	_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l, @function
_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l:
	.frame	$sp,448,$31		# vars= 288, regs= 11/8, args= 0, gp= 0
	.mask	0xd0ff0000,-72
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-448
	sd	$31,376($sp)
	sd	$fp,368($sp)
	sd	$28,360($sp)
	sd	$23,352($sp)
	sd	$22,344($sp)
	sd	$21,336($sp)
	sd	$20,328($sp)
	sd	$19,320($sp)
	sd	$18,312($sp)
	sd	$17,304($sp)
	sd	$16,296($sp)
	sdc1	$f31,440($sp)
	sdc1	$f30,432($sp)
	sdc1	$f29,424($sp)
	sdc1	$f28,416($sp)
	sdc1	$f27,408($sp)
	sdc1	$f26,400($sp)
	sdc1	$f25,392($sp)
	sdc1	$f24,384($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l)))
	move	$17,$4
	sd	$5,256($sp)
	move	$16,$6
	sd	$7,264($sp)
	dsll	$2,$5,2
	sd	$2,272($sp)
	dsll	$2,$7,2
	sd	$2,280($sp)
	li	$18,4			# 0x4
	move	$19,$0
	daddiu	$fp,$sp,192
	daddiu	$23,$sp,208
	daddiu	$22,$sp,224
	daddiu	$21,$sp,240
	daddiu	$20,$sp,64
.L2134:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,256($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	move	$9,$20
	daddiu	$8,$sp,80
	daddiu	$7,$sp,96
	daddiu	$6,$sp,112
	ld	$5,256($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddiu	$4,$17,8

	daddiu	$9,$sp,128
	daddiu	$8,$sp,144
	daddiu	$7,$sp,160
	daddiu	$6,$sp,176
	ld	$5,264($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$sp
	daddiu	$8,$sp,16
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,264($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddiu	$4,$16,8

	ld.b	$w12,240($sp)
	hadd_u.h	$w20,$w12,$w12
	ld.b	$w11,224($sp)
	hadd_u.h	$w6,$w11,$w11
	ld.b	$w10,208($sp)
	hadd_u.h	$w3,$w10,$w10
	ld.b	$w9,192($sp)
	hadd_u.h	$w1,$w9,$w9
	ld.b	$w19,176($sp)
	hadd_u.h	$w5,$w19,$w19
	ld.b	$w18,160($sp)
	hadd_u.h	$w31,$w18,$w18
	ld.b	$w17,144($sp)
	hadd_u.h	$w30,$w17,$w17
	ld.b	$w16,128($sp)
	hadd_u.h	$w29,$w16,$w16
	ld.b	$w4,112($sp)
	hadd_u.h	$w13,$w4,$w4
	ld.b	$w15,96($sp)
	hadd_u.h	$w7,$w15,$w15
	ld.b	$w14,80($sp)
	hadd_u.h	$w8,$w14,$w14
	ld.b	$w25,64($sp)
	hadd_u.h	$w0,$w25,$w25
	ld.b	$w24,48($sp)
	hadd_u.h	$w28,$w24,$w24
	ld.b	$w23,32($sp)
	hadd_u.h	$w27,$w23,$w23
	ld.b	$w22,16($sp)
	hadd_u.h	$w2,$w22,$w22
	ld.b	$w21,0($sp)
	hadd_u.h	$w26,$w21,$w21
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w19,$w19,$w19
	hsub_u.h	$w18,$w18,$w18
	hsub_u.h	$w17,$w17,$w17
	hsub_u.h	$w16,$w16,$w16
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w15,$w15,$w15
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w25,$w25,$w25
	hsub_u.h	$w24,$w24,$w24
	hsub_u.h	$w23,$w23,$w23
	hsub_u.h	$w22,$w22,$w22
	hsub_u.h	$w21,$w21,$w21
	insve.d	$w20[1],$w12[0]
	insve.d	$w6[1],$w11[0]
	insve.d	$w3[1],$w10[0]
	move.v	$w12,$w3
	insve.d	$w1[1],$w9[0]
	insve.d	$w5[1],$w19[0]
	insve.d	$w31[1],$w18[0]
	insve.d	$w30[1],$w17[0]
	insve.d	$w29[1],$w16[0]
	move.v	$w3,$w13
	insve.d	$w3[1],$w4[0]
	move.v	$w10,$w3
	move.v	$w3,$w7
	insve.d	$w3[1],$w15[0]
	move.v	$w4,$w3
	insve.d	$w8[1],$w14[0]
	insve.d	$w0[1],$w25[0]
	insve.d	$w28[1],$w24[0]
	insve.d	$w27[1],$w23[0]
	insve.d	$w2[1],$w22[0]
	insve.d	$w26[1],$w21[0]
	subv.h	$w13,$w20,$w5
	subv.h	$w5,$w6,$w31
	subv.h	$w11,$w12,$w30
	subv.h	$w3,$w1,$w29
	subv.h	$w9,$w10,$w28
	subv.h	$w7,$w4,$w27
	subv.h	$w1,$w8,$w2
	subv.h	$w2,$w0,$w26
	addv.h	$w8,$w5,$w13
	subv.h	$w0,$w5,$w13
	addv.h	$w6,$w3,$w11
	subv.h	$w3,$w3,$w11
	addv.h	$w4,$w7,$w9
	subv.h	$w7,$w7,$w9
	addv.h	$w5,$w2,$w1
	subv.h	$w2,$w2,$w1
	addv.h	$w1,$w6,$w8
	asub_s.h	$w6,$w6,$w8
	addv.h	$w9,$w3,$w0
	asub_s.h	$w3,$w3,$w0
	addv.h	$w8,$w5,$w4
	asub_s.h	$w5,$w5,$w4
	addv.h	$w10,$w2,$w7
	asub_s.h	$w2,$w2,$w7
	vabs.h	$w7,$w1
	vabs.h	$w9,$w9
	vabs.h	$w8,$w8
	vabs.h	$w10,$w10
	ilvod.h	$w1,$w9,$w7
	ilvod.h	$w0,$w3,$w6
	ilvev.h	$w9,$w9,$w7
	ilvev.h	$w3,$w3,$w6
	ilvod.h	$w4,$w10,$w8
	ilvod.h	$w7,$w2,$w5
	ilvev.h	$w8,$w10,$w8
	ilvev.h	$w2,$w2,$w5
	max_s.h	$w1,$w1,$w9
	max_s.h	$w3,$w0,$w3
	max_s.h	$w4,$w4,$w8
	max_s.h	$w2,$w7,$w2
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w4,$w4,$w4
	hadd_s.w	$w2,$w2,$w2
	addv.w	$w0,$w1,$w3
	addv.w	$w4,$w4,$w2
	addv.w	$w0,$w0,$w4
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$19,$2,$19
	ld	$2,272($sp)
	daddu	$17,$17,$2
	ld	$2,280($sp)
	addiu	$18,$18,-1
	bne	$18,$0,.L2134
	daddu	$16,$16,$2

	move	$2,$19
	ld	$31,376($sp)
	ld	$fp,368($sp)
	ld	$28,360($sp)
	ld	$23,352($sp)
	ld	$22,344($sp)
	ld	$21,336($sp)
	ld	$20,328($sp)
	ld	$19,320($sp)
	ld	$18,312($sp)
	ld	$17,304($sp)
	ld	$16,296($sp)
	ldc1	$f31,440($sp)
	ldc1	$f30,432($sp)
	ldc1	$f29,424($sp)
	ldc1	$f28,416($sp)
	ldc1	$f27,408($sp)
	ldc1	$f26,400($sp)
	ldc1	$f25,392($sp)
	ldc1	$f24,384($sp)
	jr	$31
	daddiu	$sp,$sp,448

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l
	.size	_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l, .-_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
	.type	_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l, @function
_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l:
	.frame	$sp,160,$31		# vars= 128, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	sd	$31,152($sp)
	sd	$28,144($sp)
	sd	$17,136($sp)
	sd	$16,128($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)))
	move	$16,$6
	move	$17,$7
	daddiu	$9,$sp,48
	daddiu	$8,$sp,32
	daddiu	$7,$sp,16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$6,$sp

	daddiu	$9,$sp,112
	daddiu	$8,$sp,96
	daddiu	$7,$sp,80
	daddiu	$6,$sp,64
	move	$5,$17
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	ld.b	$w14,0($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,16($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,32($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,48($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,64($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,80($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,96($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,112($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[1]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[2]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	ld	$31,152($sp)
	ld	$28,144($sp)
	ld	$17,136($sp)
	ld	$16,128($sp)
	jr	$31
	daddiu	$sp,$sp,160

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
	.size	_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l, .-_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l
	.type	_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l, @function
_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l:
	.frame	$sp,368,$31		# vars= 256, regs= 6/8, args= 0, gp= 0
	.mask	0x900f0000,-72
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-368
	sd	$31,296($sp)
	sd	$28,288($sp)
	sd	$19,280($sp)
	sd	$18,272($sp)
	sd	$17,264($sp)
	sd	$16,256($sp)
	sdc1	$f31,360($sp)
	sdc1	$f30,352($sp)
	sdc1	$f29,344($sp)
	sdc1	$f28,336($sp)
	sdc1	$f27,328($sp)
	sdc1	$f26,320($sp)
	sdc1	$f25,312($sp)
	sdc1	$f24,304($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l)))
	move	$19,$4
	move	$18,$5
	move	$17,$6
	move	$16,$7
	daddiu	$9,$sp,48
	daddiu	$8,$sp,32
	daddiu	$7,$sp,16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$6,$sp

	daddiu	$9,$sp,176
	daddiu	$8,$sp,160
	daddiu	$7,$sp,144
	daddiu	$6,$sp,128
	move	$5,$18
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	dlsa	$4,$18,$19,2

	daddiu	$9,$sp,112
	daddiu	$8,$sp,96
	daddiu	$7,$sp,80
	daddiu	$6,$sp,64
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	daddiu	$9,$sp,240
	daddiu	$8,$sp,224
	daddiu	$7,$sp,208
	daddiu	$6,$sp,192
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	dlsa	$4,$16,$17,2

	ld.b	$w12,0($sp)
	hadd_u.h	$w20,$w12,$w12
	ld.b	$w11,16($sp)
	hadd_u.h	$w6,$w11,$w11
	ld.b	$w10,32($sp)
	hadd_u.h	$w3,$w10,$w10
	ld.b	$w9,48($sp)
	hadd_u.h	$w1,$w9,$w9
	ld.b	$w19,64($sp)
	hadd_u.h	$w5,$w19,$w19
	ld.b	$w18,80($sp)
	hadd_u.h	$w31,$w18,$w18
	ld.b	$w17,96($sp)
	hadd_u.h	$w30,$w17,$w17
	ld.b	$w16,112($sp)
	hadd_u.h	$w29,$w16,$w16
	ld.b	$w4,128($sp)
	hadd_u.h	$w13,$w4,$w4
	ld.b	$w15,144($sp)
	hadd_u.h	$w7,$w15,$w15
	ld.b	$w14,160($sp)
	hadd_u.h	$w8,$w14,$w14
	ld.b	$w25,176($sp)
	hadd_u.h	$w0,$w25,$w25
	ld.b	$w24,192($sp)
	hadd_u.h	$w28,$w24,$w24
	ld.b	$w23,208($sp)
	hadd_u.h	$w27,$w23,$w23
	ld.b	$w22,224($sp)
	hadd_u.h	$w2,$w22,$w22
	ld.b	$w21,240($sp)
	hadd_u.h	$w26,$w21,$w21
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w19,$w19,$w19
	hsub_u.h	$w18,$w18,$w18
	hsub_u.h	$w17,$w17,$w17
	hsub_u.h	$w16,$w16,$w16
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w15,$w15,$w15
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w25,$w25,$w25
	hsub_u.h	$w24,$w24,$w24
	hsub_u.h	$w23,$w23,$w23
	hsub_u.h	$w22,$w22,$w22
	hsub_u.h	$w21,$w21,$w21
	insve.d	$w20[1],$w12[0]
	insve.d	$w6[1],$w11[0]
	insve.d	$w3[1],$w10[0]
	move.v	$w12,$w3
	insve.d	$w1[1],$w9[0]
	insve.d	$w5[1],$w19[0]
	insve.d	$w31[1],$w18[0]
	insve.d	$w30[1],$w17[0]
	insve.d	$w29[1],$w16[0]
	move.v	$w3,$w13
	insve.d	$w3[1],$w4[0]
	move.v	$w10,$w3
	move.v	$w3,$w7
	insve.d	$w3[1],$w15[0]
	move.v	$w4,$w3
	insve.d	$w8[1],$w14[0]
	insve.d	$w0[1],$w25[0]
	insve.d	$w28[1],$w24[0]
	insve.d	$w27[1],$w23[0]
	insve.d	$w2[1],$w22[0]
	insve.d	$w26[1],$w21[0]
	subv.h	$w13,$w20,$w5
	subv.h	$w5,$w6,$w31
	subv.h	$w11,$w12,$w30
	subv.h	$w3,$w1,$w29
	subv.h	$w9,$w10,$w28
	subv.h	$w7,$w4,$w27
	subv.h	$w1,$w8,$w2
	subv.h	$w2,$w0,$w26
	addv.h	$w8,$w5,$w13
	subv.h	$w0,$w5,$w13
	addv.h	$w6,$w3,$w11
	subv.h	$w3,$w3,$w11
	addv.h	$w4,$w7,$w9
	subv.h	$w7,$w7,$w9
	addv.h	$w5,$w2,$w1
	subv.h	$w2,$w2,$w1
	addv.h	$w1,$w6,$w8
	asub_s.h	$w6,$w6,$w8
	addv.h	$w9,$w3,$w0
	asub_s.h	$w3,$w3,$w0
	addv.h	$w8,$w5,$w4
	asub_s.h	$w5,$w5,$w4
	addv.h	$w10,$w2,$w7
	asub_s.h	$w2,$w2,$w7
	vabs.h	$w7,$w1
	vabs.h	$w9,$w9
	vabs.h	$w8,$w8
	vabs.h	$w10,$w10
	ilvod.h	$w1,$w9,$w7
	ilvod.h	$w0,$w3,$w6
	ilvev.h	$w9,$w9,$w7
	ilvev.h	$w3,$w3,$w6
	ilvod.h	$w4,$w10,$w8
	ilvod.h	$w7,$w2,$w5
	ilvev.h	$w8,$w10,$w8
	ilvev.h	$w2,$w2,$w5
	max_s.h	$w1,$w1,$w9
	max_s.h	$w3,$w0,$w3
	max_s.h	$w4,$w4,$w8
	max_s.h	$w2,$w7,$w2
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w4,$w4,$w4
	hadd_s.w	$w2,$w2,$w2
	addv.w	$w0,$w1,$w3
	addv.w	$w4,$w4,$w2
	addv.w	$w0,$w0,$w4
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[1]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[2]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	ld	$31,296($sp)
	ld	$28,288($sp)
	ld	$19,280($sp)
	ld	$18,272($sp)
	ld	$17,264($sp)
	ld	$16,256($sp)
	ldc1	$f31,360($sp)
	ldc1	$f30,352($sp)
	ldc1	$f29,344($sp)
	ldc1	$f28,336($sp)
	ldc1	$f27,328($sp)
	ldc1	$f26,320($sp)
	ldc1	$f25,312($sp)
	ldc1	$f24,304($sp)
	jr	$31
	daddiu	$sp,$sp,368

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l
	.size	_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l, .-_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl
	.type	_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl, @function
_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl:
	.frame	$sp,752,$31		# vars= 640, regs= 11/0, args= 16, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-752
	sd	$31,744($sp)
	sd	$fp,736($sp)
	sd	$28,728($sp)
	sd	$23,720($sp)
	sd	$22,712($sp)
	sd	$21,704($sp)
	sd	$20,696($sp)
	sd	$19,688($sp)
	sd	$18,680($sp)
	sd	$17,672($sp)
	sd	$16,664($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl)))
	sd	$6,592($sp)
	dsll	$2,$7,1
	daddu	$3,$6,$2
	sd	$3,528($sp)
	daddu	$3,$3,$2
	sd	$3,536($sp)
	daddu	$3,$3,$2
	sd	$3,544($sp)
	daddu	$3,$3,$2
	sd	$3,552($sp)
	daddu	$3,$3,$2
	sd	$3,560($sp)
	daddu	$3,$3,$2
	sd	$3,568($sp)
	daddu	$2,$3,$2
	sd	$2,576($sp)
	dsll	$2,$5,1
	move	$3,$4
	daddu	$19,$4,$2
	daddu	$18,$19,$2
	daddu	$4,$18,$2
	sd	$4,584($sp)
	daddu	$4,$4,$2
	daddu	$6,$4,$2
	daddu	$8,$6,$2
	daddu	$2,$8,$2
	dsll	$17,$7,4
	dsll	$16,$5,4
	li	$5,4			# 0x4
	sd	$5,600($sp)
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,48
	daddiu	$22,$sp,32
	daddiu	$21,$sp,16
	daddiu	$20,$sp,128
	sd	$fp,608($sp)
	move	$fp,$3
	sd	$23,616($sp)
	move	$23,$2
	sd	$22,624($sp)
	move	$22,$8
	sd	$20,632($sp)
	move	$20,$4
	sd	$21,640($sp)
	move	$21,$6
.L2142:
	ld	$8,608($sp)
	ld	$7,616($sp)
	ld	$6,624($sp)
	ld	$5,640($sp)
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,592($sp)

	ld	$8,632($sp)
	daddiu	$7,$sp,112
	daddiu	$6,$sp,96
	daddiu	$5,$sp,80
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,528($sp)

	daddiu	$8,$sp,192
	daddiu	$7,$sp,176
	daddiu	$6,$sp,160
	daddiu	$5,$sp,144
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,536($sp)

	daddiu	$8,$sp,256
	daddiu	$7,$sp,240
	daddiu	$6,$sp,224
	daddiu	$5,$sp,208
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,544($sp)

	daddiu	$8,$sp,320
	daddiu	$7,$sp,304
	daddiu	$6,$sp,288
	daddiu	$5,$sp,272
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,552($sp)

	daddiu	$8,$sp,384
	daddiu	$7,$sp,368
	daddiu	$6,$sp,352
	daddiu	$5,$sp,336
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,560($sp)

	daddiu	$8,$sp,448
	daddiu	$7,$sp,432
	daddiu	$6,$sp,416
	daddiu	$5,$sp,400
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,568($sp)

	daddiu	$8,$sp,512
	daddiu	$7,$sp,496
	daddiu	$6,$sp,480
	daddiu	$5,$sp,464
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,576($sp)

	ld	$2,592($sp)
	daddu	$3,$2,$17
	sd	$3,592($sp)
	ld	$2,528($sp)
	daddu	$3,$2,$17
	sd	$3,528($sp)
	ld	$2,536($sp)
	daddu	$3,$2,$17
	sd	$3,536($sp)
	ld	$2,544($sp)
	daddu	$3,$2,$17
	sd	$3,544($sp)
	ld	$2,552($sp)
	daddu	$3,$2,$17
	sd	$3,552($sp)
	ld	$2,560($sp)
	daddu	$3,$2,$17
	sd	$3,560($sp)
	ld	$2,568($sp)
	daddu	$3,$2,$17
	sd	$3,568($sp)
	ld	$2,576($sp)
	daddu	$2,$2,$17
	sd	$2,576($sp)
	sd	$fp,0($sp)
	ld.d	$w0,64($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,48($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,32($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,16($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$19,0($sp)
	ld.d	$w0,128($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,112($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,96($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,80($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$18,0($sp)
	ld.d	$w0,192($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,176($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,160($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,144($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$2,584($sp)
	sd	$2,0($sp)
	ld.d	$w0,256($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,240($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,224($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,208($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$20,0($sp)
	ld.d	$w0,320($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,304($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,288($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,272($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$21,0($sp)
	ld.d	$w0,384($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,368($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,352($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,336($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$22,0($sp)
	ld.d	$w0,448($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,432($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,416($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,400($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$23,0($sp)
	ld.d	$w0,512($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,496($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,480($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,464($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$fp,$fp,$16
	daddu	$19,$19,$16
	daddu	$18,$18,$16
	ld	$2,584($sp)
	daddu	$2,$2,$16
	sd	$2,584($sp)
	daddu	$20,$20,$16
	daddu	$21,$21,$16
	daddu	$22,$22,$16
	daddu	$23,$23,$16
	ld	$2,600($sp)
	addiu	$2,$2,-1
	bne	$2,$0,.L2142
	sd	$2,600($sp)

	ld	$31,744($sp)
	ld	$fp,736($sp)
	ld	$28,728($sp)
	ld	$23,720($sp)
	ld	$22,712($sp)
	ld	$21,704($sp)
	ld	$20,696($sp)
	ld	$19,688($sp)
	ld	$18,680($sp)
	ld	$17,672($sp)
	ld	$16,664($sp)
	jr	$31
	daddiu	$sp,$sp,752

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl
	.size	_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl, .-_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl
	.type	_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl, @function
_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl:
	.frame	$sp,752,$31		# vars= 640, regs= 11/0, args= 16, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-752
	sd	$31,744($sp)
	sd	$fp,736($sp)
	sd	$28,728($sp)
	sd	$23,720($sp)
	sd	$22,712($sp)
	sd	$21,704($sp)
	sd	$20,696($sp)
	sd	$19,688($sp)
	sd	$18,680($sp)
	sd	$17,672($sp)
	sd	$16,664($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl)))
	sd	$6,592($sp)
	daddu	$2,$6,$7
	sd	$2,528($sp)
	daddu	$2,$2,$7
	sd	$2,536($sp)
	daddu	$2,$2,$7
	sd	$2,544($sp)
	daddu	$2,$2,$7
	sd	$2,552($sp)
	daddu	$2,$2,$7
	sd	$2,560($sp)
	daddu	$2,$2,$7
	sd	$2,568($sp)
	daddu	$2,$2,$7
	sd	$2,576($sp)
	move	$2,$4
	daddu	$19,$4,$5
	daddu	$18,$19,$5
	daddu	$3,$18,$5
	sd	$3,584($sp)
	daddu	$3,$3,$5
	daddu	$4,$3,$5
	daddu	$6,$4,$5
	daddu	$8,$6,$5
	dsll	$17,$7,3
	dsll	$16,$5,3
	li	$5,8			# 0x8
	sd	$5,600($sp)
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,48
	daddiu	$22,$sp,32
	daddiu	$21,$sp,16
	daddiu	$20,$sp,128
	sd	$fp,608($sp)
	move	$fp,$2
	sd	$23,616($sp)
	move	$23,$8
	sd	$22,624($sp)
	move	$22,$6
	sd	$20,632($sp)
	move	$20,$3
	sd	$21,640($sp)
	move	$21,$4
.L2146:
	ld	$8,608($sp)
	ld	$7,616($sp)
	ld	$6,624($sp)
	ld	$5,640($sp)
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,592($sp)

	ld	$8,632($sp)
	daddiu	$7,$sp,112
	daddiu	$6,$sp,96
	daddiu	$5,$sp,80
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,528($sp)

	daddiu	$8,$sp,192
	daddiu	$7,$sp,176
	daddiu	$6,$sp,160
	daddiu	$5,$sp,144
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,536($sp)

	daddiu	$8,$sp,256
	daddiu	$7,$sp,240
	daddiu	$6,$sp,224
	daddiu	$5,$sp,208
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,544($sp)

	daddiu	$8,$sp,320
	daddiu	$7,$sp,304
	daddiu	$6,$sp,288
	daddiu	$5,$sp,272
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,552($sp)

	daddiu	$8,$sp,384
	daddiu	$7,$sp,368
	daddiu	$6,$sp,352
	daddiu	$5,$sp,336
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,560($sp)

	daddiu	$8,$sp,448
	daddiu	$7,$sp,432
	daddiu	$6,$sp,416
	daddiu	$5,$sp,400
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,568($sp)

	daddiu	$8,$sp,512
	daddiu	$7,$sp,496
	daddiu	$6,$sp,480
	daddiu	$5,$sp,464
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,576($sp)

	ld	$2,592($sp)
	daddu	$3,$2,$17
	sd	$3,592($sp)
	ld	$2,528($sp)
	daddu	$3,$2,$17
	sd	$3,528($sp)
	ld	$2,536($sp)
	daddu	$3,$2,$17
	sd	$3,536($sp)
	ld	$2,544($sp)
	daddu	$3,$2,$17
	sd	$3,544($sp)
	ld	$2,552($sp)
	daddu	$3,$2,$17
	sd	$3,552($sp)
	ld	$2,560($sp)
	daddu	$3,$2,$17
	sd	$3,560($sp)
	ld	$2,568($sp)
	daddu	$3,$2,$17
	sd	$3,568($sp)
	ld	$2,576($sp)
	daddu	$2,$2,$17
	sd	$2,576($sp)
	sd	$fp,0($sp)
	ld.d	$w0,64($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,48($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,32($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,16($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$19,0($sp)
	ld.d	$w0,128($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,112($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,96($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,80($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$18,0($sp)
	ld.d	$w0,192($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,176($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,160($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,144($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$2,584($sp)
	sd	$2,0($sp)
	ld.d	$w0,256($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,240($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,224($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,208($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$20,0($sp)
	ld.d	$w0,320($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,304($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,288($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,272($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$21,0($sp)
	ld.d	$w0,384($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,368($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,352($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,336($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$22,0($sp)
	ld.d	$w0,448($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,432($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,416($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,400($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$23,0($sp)
	ld.d	$w0,512($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,496($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,480($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,464($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$fp,$fp,$16
	daddu	$19,$19,$16
	daddu	$18,$18,$16
	ld	$2,584($sp)
	daddu	$2,$2,$16
	sd	$2,584($sp)
	daddu	$20,$20,$16
	daddu	$21,$21,$16
	daddu	$22,$22,$16
	daddu	$23,$23,$16
	ld	$2,600($sp)
	addiu	$2,$2,-1
	bne	$2,$0,.L2146
	sd	$2,600($sp)

	ld	$31,744($sp)
	ld	$fp,736($sp)
	ld	$28,728($sp)
	ld	$23,720($sp)
	ld	$22,712($sp)
	ld	$21,704($sp)
	ld	$20,696($sp)
	ld	$19,688($sp)
	ld	$18,680($sp)
	ld	$17,672($sp)
	ld	$16,664($sp)
	jr	$31
	daddiu	$sp,$sp,752

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl
	.size	_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl, .-_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl
	.type	_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl, @function
_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl:
	.frame	$sp,560,$31		# vars= 512, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-560
	sd	$31,552($sp)
	sd	$28,544($sp)
	sd	$19,536($sp)
	sd	$18,528($sp)
	sd	$17,520($sp)
	sd	$16,512($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl)))
	move	$16,$4
	move	$17,$5
	move	$18,$6
	move	$19,$7
	daddiu	$6,$sp,16
	move	$5,$sp
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	dsll	$19,$19,1
	daddu	$18,$18,$19
	daddiu	$6,$sp,48
	daddiu	$5,$sp,32
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddu	$18,$18,$19
	daddiu	$6,$sp,80
	daddiu	$5,$sp,64
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddu	$18,$18,$19
	daddiu	$6,$sp,112
	daddiu	$5,$sp,96
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddu	$18,$18,$19
	daddiu	$6,$sp,144
	daddiu	$5,$sp,128
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddu	$18,$18,$19
	daddiu	$6,$sp,176
	daddiu	$5,$sp,160
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddu	$18,$18,$19
	daddiu	$6,$sp,208
	daddiu	$5,$sp,192
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddu	$18,$18,$19
	daddiu	$6,$sp,240
	daddiu	$5,$sp,224
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddu	$18,$18,$19
	daddiu	$6,$sp,272
	daddiu	$5,$sp,256
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddu	$18,$18,$19
	daddiu	$6,$sp,304
	daddiu	$5,$sp,288
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddu	$18,$18,$19
	daddiu	$6,$sp,336
	daddiu	$5,$sp,320
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddu	$18,$18,$19
	daddiu	$6,$sp,368
	daddiu	$5,$sp,352
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddu	$18,$18,$19
	daddiu	$6,$sp,400
	daddiu	$5,$sp,384
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddu	$18,$18,$19
	daddiu	$6,$sp,432
	daddiu	$5,$sp,416
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddu	$18,$18,$19
	daddiu	$6,$sp,464
	daddiu	$5,$sp,448
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddiu	$6,$sp,496
	daddiu	$5,$sp,480
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$18,$19

	move	$8,$16
	ld.d	$w0,16($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,0($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	dsll	$17,$17,1
	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,48($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,32($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,80($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,64($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,112($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,96($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,144($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,128($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,176($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,160($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,208($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,192($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,240($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,224($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,272($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,256($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,304($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,288($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,336($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,320($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,368($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,352($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,400($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,384($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,432($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,416($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,464($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,448($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$8,$16,$17
	ld.d	$w0,496($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,480($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$31,552($sp)
	ld	$28,544($sp)
	ld	$19,536($sp)
	ld	$18,528($sp)
	ld	$17,520($sp)
	ld	$16,512($sp)
	jr	$31
	daddiu	$sp,$sp,560

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl
	.size	_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl, .-_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl
	.type	_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl, @function
_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl:
	.frame	$sp,496,$31		# vars= 400, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-496
	sd	$31,488($sp)
	sd	$fp,480($sp)
	sd	$28,472($sp)
	sd	$23,464($sp)
	sd	$22,456($sp)
	sd	$21,448($sp)
	sd	$20,440($sp)
	sd	$19,432($sp)
	sd	$18,424($sp)
	sd	$17,416($sp)
	sd	$16,408($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl)))
	move	$17,$4
	move	$16,$5
	sd	$6,256($sp)
	move	$19,$7
	dsll	$2,$7,1
	sd	$2,264($sp)
	dsll	$18,$7,2
	dsll	$3,$7,3
	sd	$3,384($sp)
	daddu	$2,$6,$2
	sd	$2,272($sp)
	li	$2,4			# 0x4
	sd	$2,280($sp)
	daddiu	$fp,$sp,16
	daddiu	$23,$sp,48
	daddiu	$22,$sp,32
	daddiu	$21,$sp,80
	daddiu	$20,$sp,64
.L2152:
	move	$6,$fp
	move	$5,$sp
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$17

	move	$6,$23
	move	$5,$22
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$17,$19

	move	$6,$21
	move	$5,$20
	ld	$2,264($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$17,$2

	ld	$2,264($sp)
	daddu	$2,$19,$2
	daddiu	$6,$sp,112
	daddiu	$5,$sp,96
	sd	$2,288($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$17,$2

	daddiu	$6,$sp,144
	daddiu	$5,$sp,128
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$16

	daddiu	$6,$sp,176
	daddiu	$5,$sp,160
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$16,$19

	daddiu	$6,$sp,208
	daddiu	$5,$sp,192
	ld	$2,264($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$16,$2

	daddiu	$6,$sp,240
	daddiu	$5,$sp,224
	ld	$3,288($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$16,$3

	ld.h	$w0,0($sp)
	ld.h	$w1,128($sp)
	subv.h	$w0,$w0,$w1
	ld.h	$w1,16($sp)
	ld.h	$w2,144($sp)
	subv.h	$w1,$w1,$w2
	ld.h	$w3,32($sp)
	ld.h	$w2,160($sp)
	subv.h	$w2,$w3,$w2
	st.h	$w2,288($sp)
	ld.h	$w3,48($sp)
	ld.h	$w2,176($sp)
	subv.h	$w3,$w3,$w2
	st.h	$w3,304($sp)
	ld.h	$w3,64($sp)
	ld.h	$w2,192($sp)
	subv.h	$w4,$w3,$w2
	st.h	$w4,320($sp)
	ld.h	$w3,80($sp)
	ld.h	$w2,208($sp)
	subv.h	$w5,$w3,$w2
	st.h	$w5,336($sp)
	ld.h	$w3,96($sp)
	ld.h	$w2,224($sp)
	subv.h	$w6,$w3,$w2
	st.h	$w6,352($sp)
	ld.h	$w3,112($sp)
	ld.h	$w2,240($sp)
	subv.h	$w7,$w3,$w2
	st.h	$w7,368($sp)
	ld	$8,256($sp)
	copy_s.d	$6,$w1[0]
	copy_s.d	$7,$w1[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$8,272($sp)
	ld.d	$w0,304($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,288($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$2,256($sp)
	daddu	$8,$2,$18
	ld.d	$w0,336($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,320($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$3,272($sp)
	daddu	$3,$18,$3
	sd	$3,272($sp)
	move	$8,$3
	ld.d	$w0,368($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,352($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$4,280($sp)
	addiu	$4,$4,-1
	sd	$4,280($sp)
	ld	$3,272($sp)
	daddu	$3,$18,$3
	sd	$3,272($sp)
	daddu	$17,$18,$17
	daddu	$16,$18,$16
	ld	$3,384($sp)
	ld	$2,256($sp)
	daddu	$2,$3,$2
	bne	$4,$0,.L2152
	sd	$2,256($sp)

	ld	$31,488($sp)
	ld	$fp,480($sp)
	ld	$28,472($sp)
	ld	$23,464($sp)
	ld	$22,456($sp)
	ld	$21,448($sp)
	ld	$20,440($sp)
	ld	$19,432($sp)
	ld	$18,424($sp)
	ld	$17,416($sp)
	ld	$16,408($sp)
	jr	$31
	daddiu	$sp,$sp,496

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl
	.size	_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl, .-_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl
	.type	_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl, @function
_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl:
	.frame	$sp,624,$31		# vars= 528, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-624
	sd	$31,616($sp)
	sd	$fp,608($sp)
	sd	$28,600($sp)
	sd	$23,592($sp)
	sd	$22,584($sp)
	sd	$21,576($sp)
	sd	$20,568($sp)
	sd	$19,560($sp)
	sd	$18,552($sp)
	sd	$17,544($sp)
	sd	$16,536($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl)))
	sd	$4,512($sp)
	move	$18,$5
	move	$16,$6
	move	$17,$7
	li	$19,2			# 0x2
	daddiu	$fp,$sp,16
	daddiu	$23,$sp,48
	daddiu	$22,$sp,32
	daddiu	$21,$sp,80
	daddiu	$20,$sp,64
.L2156:
	move	$6,$fp
	move	$5,$sp
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	move	$6,$23
	move	$5,$22
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	move	$6,$21
	move	$5,$20
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$6,$sp,112
	daddiu	$5,$sp,96
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$6,$sp,144
	daddiu	$5,$sp,128
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$6,$sp,176
	daddiu	$5,$sp,160
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$6,$sp,208
	daddiu	$5,$sp,192
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$6,$sp,240
	daddiu	$5,$sp,224
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$6,$sp,272
	daddiu	$5,$sp,256
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$6,$sp,304
	daddiu	$5,$sp,288
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$6,$sp,336
	daddiu	$5,$sp,320
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$6,$sp,368
	daddiu	$5,$sp,352
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$6,$sp,400
	daddiu	$5,$sp,384
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$6,$sp,432
	daddiu	$5,$sp,416
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$6,$sp,464
	daddiu	$5,$sp,448
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	daddu	$2,$16,$17
	daddiu	$6,$sp,496
	daddiu	$5,$sp,480
	sd	$2,520($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$2

	ld	$16,512($sp)
	move	$8,$16
	ld.d	$w0,16($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,0($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$18
	move	$8,$16
	ld.d	$w0,48($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,32($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$18
	move	$8,$16
	ld.d	$w0,80($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,64($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$18
	move	$8,$16
	ld.d	$w0,112($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,96($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$18
	move	$8,$16
	ld.d	$w0,144($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,128($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$18
	move	$8,$16
	ld.d	$w0,176($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,160($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$18
	move	$8,$16
	ld.d	$w0,208($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,192($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$18
	move	$8,$16
	ld.d	$w0,240($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,224($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$18
	move	$8,$16
	ld.d	$w0,272($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,256($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$18
	move	$8,$16
	ld.d	$w0,304($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,288($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$18
	move	$8,$16
	ld.d	$w0,336($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,320($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$18
	move	$8,$16
	ld.d	$w0,368($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,352($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$18
	move	$8,$16
	ld.d	$w0,400($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,384($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$18
	move	$8,$16
	ld.d	$w0,432($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,416($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$18
	move	$8,$16
	ld.d	$w0,464($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,448($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$3,$16,$18
	sd	$3,512($sp)
	move	$8,$3
	ld.d	$w0,496($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,480($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$2,520($sp)
	daddu	$16,$2,$17
	ld	$3,512($sp)
	daddu	$2,$3,$18
	addiu	$19,$19,-1
	bne	$19,$0,.L2156
	sd	$2,512($sp)

	ld	$31,616($sp)
	ld	$fp,608($sp)
	ld	$28,600($sp)
	ld	$23,592($sp)
	ld	$22,584($sp)
	ld	$21,576($sp)
	ld	$20,568($sp)
	ld	$19,560($sp)
	ld	$18,552($sp)
	ld	$17,544($sp)
	ld	$16,536($sp)
	jr	$31
	daddiu	$sp,$sp,624

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl
	.size	_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl, .-_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl
	.type	_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl, @function
_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl:
	.frame	$sp,208,$31		# vars= 128, regs= 7/0, args= 16, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-208
	sd	$31,200($sp)
	sd	$28,192($sp)
	sd	$20,184($sp)
	sd	$19,176($sp)
	sd	$18,168($sp)
	sd	$17,160($sp)
	sd	$16,152($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl)))
	move	$17,$4
	move	$16,$5
	move	$18,$6
	move	$19,$7
	dsll	$20,$7,1
	daddiu	$9,$sp,64
	daddiu	$8,$sp,48
	daddiu	$7,$sp,32
	daddiu	$6,$sp,16
	move	$5,$20
	ld	$25,%call16(_Z5LD_V4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$18

	daddiu	$9,$sp,128
	daddiu	$8,$sp,112
	daddiu	$7,$sp,96
	daddiu	$6,$sp,80
	move	$5,$20
	ld	$25,%call16(_Z5LD_V4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	dlsa	$4,$19,$18,3

	dsll	$18,$16,1
	sd	$18,8($sp)
	sd	$17,0($sp)
	ld.d	$w0,64($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,48($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,32($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,16($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5ST_V4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z5ST_V4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$18,8($sp)
	dlsa	$16,$16,$17,3
	sd	$16,0($sp)
	ld.d	$w0,128($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,112($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,96($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,80($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5ST_V4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z5ST_V4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$31,200($sp)
	ld	$28,192($sp)
	ld	$20,184($sp)
	ld	$19,176($sp)
	ld	$18,168($sp)
	ld	$17,160($sp)
	ld	$16,152($sp)
	jr	$31
	daddiu	$sp,$sp,208

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl
	.size	_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl, .-_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl
	.type	_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl, @function
_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl:
	.frame	$sp,336,$31		# vars= 256, regs= 7/0, args= 16, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-336
	sd	$31,328($sp)
	sd	$28,320($sp)
	sd	$20,312($sp)
	sd	$19,304($sp)
	sd	$18,296($sp)
	sd	$17,288($sp)
	sd	$16,280($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl)))
	move	$16,$4
	move	$18,$5
	move	$17,$6
	move	$19,$7
	daddiu	$9,$sp,64
	daddiu	$8,$sp,48
	daddiu	$7,$sp,32
	daddiu	$6,$sp,16
	move	$5,$19
	ld	$25,%call16(_Z5LD_V4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	dsll	$20,$19,2
	daddu	$17,$17,$20
	daddiu	$9,$sp,128
	daddiu	$8,$sp,112
	daddiu	$7,$sp,96
	daddiu	$6,$sp,80
	move	$5,$19
	ld	$25,%call16(_Z5LD_V4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	daddu	$17,$17,$20
	daddiu	$9,$sp,192
	daddiu	$8,$sp,176
	daddiu	$7,$sp,160
	daddiu	$6,$sp,144
	move	$5,$19
	ld	$25,%call16(_Z5LD_V4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	daddiu	$9,$sp,256
	daddiu	$8,$sp,240
	daddiu	$7,$sp,224
	daddiu	$6,$sp,208
	move	$5,$19
	ld	$25,%call16(_Z5LD_V4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddu	$4,$17,$20

	sd	$18,8($sp)
	sd	$16,0($sp)
	ld.d	$w0,64($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,48($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,32($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,16($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5ST_V4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z5ST_V4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	dsll	$17,$18,2
	daddu	$16,$16,$17
	sd	$18,8($sp)
	sd	$16,0($sp)
	ld.d	$w0,128($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,112($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,96($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,80($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5ST_V4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z5ST_V4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$18,8($sp)
	sd	$16,0($sp)
	ld.d	$w0,192($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,176($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,160($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,144($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5ST_V4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z5ST_V4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$18,8($sp)
	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,256($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,240($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,224($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,208($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5ST_V4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z5ST_V4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$31,328($sp)
	ld	$28,320($sp)
	ld	$20,312($sp)
	ld	$19,304($sp)
	ld	$18,296($sp)
	ld	$17,288($sp)
	ld	$16,280($sp)
	jr	$31
	daddiu	$sp,$sp,336

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl
	.size	_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl, .-_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl
	.type	_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl, @function
_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl:
	.frame	$sp,112,$31		# vars= 64, regs= 4/0, args= 16, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$28,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl)))
	move	$17,$4
	move	$16,$5
	move	$4,$6
	dsll	$5,$7,1
	daddiu	$9,$sp,64
	daddiu	$8,$sp,48
	daddiu	$7,$sp,32
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddiu	$6,$sp,16

	dsll	$16,$16,1
	sd	$16,8($sp)
	sd	$17,0($sp)
	ld.d	$w0,64($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,48($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,32($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,16($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z3SD4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z3SD4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$31,104($sp)
	ld	$28,96($sp)
	ld	$17,88($sp)
	ld	$16,80($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl
	.size	_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl, .-_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl
	.type	_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl, @function
_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl:
	.frame	$sp,192,$31		# vars= 128, regs= 6/0, args= 16, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-192
	sd	$31,184($sp)
	sd	$28,176($sp)
	sd	$19,168($sp)
	sd	$18,160($sp)
	sd	$17,152($sp)
	sd	$16,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl)))
	move	$18,$4
	move	$16,$5
	move	$19,$6
	move	$17,$7
	daddiu	$9,$sp,64
	daddiu	$8,$sp,48
	daddiu	$7,$sp,32
	daddiu	$6,$sp,16
	move	$5,$17
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$19

	daddiu	$9,$sp,128
	daddiu	$8,$sp,112
	daddiu	$7,$sp,96
	daddiu	$6,$sp,80
	move	$5,$17
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	dlsa	$4,$17,$19,2

	sd	$16,8($sp)
	sd	$18,0($sp)
	ld.d	$w0,64($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,48($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,32($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,16($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z3SD4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z3SD4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$16,8($sp)
	dlsa	$16,$16,$18,2
	sd	$16,0($sp)
	ld.d	$w0,128($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,112($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,96($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,80($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z3SD4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z3SD4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$31,184($sp)
	ld	$28,176($sp)
	ld	$19,168($sp)
	ld	$18,160($sp)
	ld	$17,152($sp)
	ld	$16,144($sp)
	jr	$31
	daddiu	$sp,$sp,192

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl
	.size	_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl, .-_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116psyCost_pp_16x16EPKhlS1_l
	.type	_ZN12_GLOBAL__N_116psyCost_pp_16x16EPKhlS1_l, @function
_ZN12_GLOBAL__N_116psyCost_pp_16x16EPKhlS1_l:
	.frame	$sp,336,$31		# vars= 240, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-336
	sd	$31,328($sp)
	sd	$fp,320($sp)
	sd	$28,312($sp)
	sd	$23,304($sp)
	sd	$22,296($sp)
	sd	$21,288($sp)
	sd	$20,280($sp)
	sd	$19,272($sp)
	sd	$18,264($sp)
	sd	$17,256($sp)
	sd	$16,248($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116psyCost_pp_16x16EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116psyCost_pp_16x16EPKhlS1_l)))
	sd	$4,192($sp)
	move	$17,$5
	sd	$6,200($sp)
	move	$16,$7
	dsll	$2,$5,3
	sd	$2,224($sp)
	dsll	$2,$7,3
	sd	$2,232($sp)
	li	$2,2			# 0x2
	sd	$2,216($sp)
	sd	$0,0($sp)
.L2169:
	ld	$2,192($sp)
	move	$18,$2
	ld	$19,200($sp)
	daddiu	$2,$2,16
	sd	$2,208($sp)
.L2168:
	daddu	$fp,$17,$18
	daddu	$23,$fp,$17
	daddu	$22,$17,$23
	daddu	$21,$17,$22
	daddu	$20,$17,$21
	daddu	$2,$17,$20
	sd	$2,112($sp)
	daddu	$3,$19,$16
	sd	$3,128($sp)
	daddu	$5,$16,$3
	sd	$5,144($sp)
	daddu	$6,$16,$5
	sd	$6,160($sp)
	daddu	$7,$16,$6
	sd	$7,8($sp)
	daddu	$8,$16,$7
	sd	$8,176($sp)
	daddu	$9,$16,$8
	sd	$9,184($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$18

	insert.d	$w0[0],$2
	insert.d	$w0[1],$3
	st.d	$w0,16($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$fp

	insert.d	$w1[0],$2
	insert.d	$w1[1],$3
	st.d	$w1,32($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$23

	insert.d	$w2[0],$2
	insert.d	$w2[1],$3
	st.d	$w2,48($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$22

	insert.d	$w3[0],$2
	insert.d	$w3[1],$3
	st.d	$w3,64($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$21

	insert.d	$w4[0],$2
	insert.d	$w4[1],$3
	st.d	$w4,80($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$20

	insert.d	$w5[0],$2
	insert.d	$w5[1],$3
	st.d	$w5,96($sp)
	ld	$20,112($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$20

	insert.d	$w6[0],$2
	insert.d	$w6[1],$3
	st.d	$w6,112($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	daddu	$4,$17,$20

	insert.d	$w2[0],$2
	insert.d	$w2[1],$3
	ld.b	$w11,16($sp)
	hadd_u.h	$w16,$w11,$w11
	ld.b	$w10,32($sp)
	hadd_u.h	$w4,$w10,$w10
	ld.b	$w9,48($sp)
	hadd_u.h	$w15,$w9,$w9
	ld.b	$w8,64($sp)
	hadd_u.h	$w1,$w8,$w8
	ld.b	$w7,80($sp)
	hadd_u.h	$w14,$w7,$w7
	ld.b	$w6,96($sp)
	hadd_u.h	$w3,$w6,$w6
	ld.b	$w5,112($sp)
	hadd_u.h	$w13,$w5,$w5
	hadd_u.h	$w0,$w2,$w2
	hsub_u.h	$w12,$w11,$w11
	hsub_u.h	$w11,$w10,$w10
	hsub_u.h	$w10,$w9,$w9
	hsub_u.h	$w9,$w8,$w8
	hsub_u.h	$w8,$w7,$w7
	hsub_u.h	$w7,$w6,$w6
	hsub_u.h	$w6,$w5,$w5
	hsub_u.h	$w5,$w2,$w2
	addv.h	$w2,$w16,$w4
	addv.h	$w19,$w15,$w1
	addv.h	$w17,$w14,$w3
	addv.h	$w18,$w13,$w0
	addv.h	$w2,$w2,$w19
	addv.h	$w17,$w17,$w18
	addv.h	$w2,$w2,$w17
	hadd_s.w	$w2,$w2,$w2
	hadd_s.d	$w2,$w2,$w2
	srli.w	$w2,$w2,2
	st.w	$w2,16($sp)
	move.v	$w2,$w16
	insve.d	$w2[1],$w12[0]
	move.v	$w12,$w2
	insve.d	$w4[1],$w11[0]
	move.v	$w2,$w15
	insve.d	$w2[1],$w10[0]
	move.v	$w10,$w2
	insve.d	$w1[1],$w9[0]
	move.v	$w2,$w14
	insve.d	$w2[1],$w8[0]
	move.v	$w8,$w2
	insve.d	$w3[1],$w7[0]
	move.v	$w2,$w13
	insve.d	$w2[1],$w6[0]
	move.v	$w7,$w2
	insve.d	$w0[1],$w5[0]
	addv.h	$w11,$w4,$w12
	subv.h	$w4,$w4,$w12
	addv.h	$w6,$w1,$w10
	subv.h	$w1,$w1,$w10
	addv.h	$w9,$w3,$w8
	subv.h	$w3,$w3,$w8
	addv.h	$w2,$w0,$w2
	subv.h	$w0,$w0,$w7
	addv.h	$w5,$w6,$w11
	subv.h	$w6,$w6,$w11
	addv.h	$w7,$w1,$w4
	subv.h	$w1,$w1,$w4
	addv.h	$w10,$w2,$w9
	subv.h	$w2,$w2,$w9
	addv.h	$w4,$w0,$w3
	subv.h	$w0,$w0,$w3
	addv.h	$w9,$w10,$w5
	subv.h	$w10,$w10,$w5
	addv.h	$w8,$w4,$w7
	subv.h	$w3,$w4,$w7
	addv.h	$w7,$w2,$w6
	subv.h	$w2,$w2,$w6
	addv.h	$w6,$w0,$w1
	subv.h	$w0,$w0,$w1
	pckod.h	$w5,$w10,$w9
	pckev.h	$w9,$w10,$w9
	pckod.h	$w4,$w3,$w8
	pckev.h	$w8,$w3,$w8
	pckod.h	$w3,$w2,$w7
	pckev.h	$w2,$w2,$w7
	pckod.h	$w1,$w0,$w6
	pckev.h	$w0,$w0,$w6
	addv.h	$w10,$w5,$w9
	asub_s.h	$w5,$w5,$w9
	addv.h	$w7,$w4,$w8
	asub_s.h	$w4,$w4,$w8
	addv.h	$w6,$w3,$w2
	asub_s.h	$w2,$w3,$w2
	addv.h	$w8,$w1,$w0
	asub_s.h	$w0,$w1,$w0
	vabs.h	$w9,$w10
	vabs.h	$w3,$w7
	vabs.h	$w1,$w6
	vabs.h	$w8,$w8
	ilvod.h	$w7,$w9,$w5
	ilvev.h	$w5,$w9,$w5
	ilvod.h	$w6,$w3,$w4
	ilvev.h	$w4,$w3,$w4
	ilvod.h	$w3,$w1,$w2
	ilvev.h	$w2,$w1,$w2
	ilvod.h	$w1,$w8,$w0
	ilvev.h	$w0,$w8,$w0
	max_s.h	$w5,$w7,$w5
	max_s.h	$w4,$w6,$w4
	max_s.h	$w2,$w3,$w2
	max_s.h	$w0,$w1,$w0
	hadd_s.w	$w5,$w5,$w5
	hadd_s.w	$w4,$w4,$w4
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w1,$w5,$w4
	st.w	$w1,32($sp)
	addv.w	$w0,$w2,$w0
	st.w	$w0,48($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$19

	insert.d	$w3[0],$2
	insert.d	$w3[1],$3
	st.d	$w3,64($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,128($sp)

	insert.d	$w4[0],$2
	insert.d	$w4[1],$3
	st.d	$w4,80($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,144($sp)

	insert.d	$w5[0],$2
	insert.d	$w5[1],$3
	st.d	$w5,96($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,160($sp)

	insert.d	$w7[0],$2
	insert.d	$w7[1],$3
	st.d	$w7,112($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,8($sp)

	insert.d	$w8[0],$2
	insert.d	$w8[1],$3
	st.d	$w8,128($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,176($sp)

	insert.d	$w9[0],$2
	insert.d	$w9[1],$3
	st.d	$w9,144($sp)
	ld	$20,184($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$20

	insert.d	$w10[0],$2
	insert.d	$w10[1],$3
	st.d	$w10,160($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	daddu	$4,$16,$20

	insert.d	$w0[0],$2
	insert.d	$w0[1],$3
	ld.b	$w11,64($sp)
	hadd_u.h	$w17,$w11,$w11
	ld.b	$w10,80($sp)
	hadd_u.h	$w1,$w10,$w10
	ld.b	$w9,96($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,112($sp)
	hadd_u.h	$w3,$w8,$w8
	ld.b	$w7,128($sp)
	hadd_u.h	$w15,$w7,$w7
	ld.b	$w6,144($sp)
	hadd_u.h	$w5,$w6,$w6
	ld.b	$w4,160($sp)
	hadd_u.h	$w14,$w4,$w4
	hadd_u.h	$w2,$w0,$w0
	hsub_u.h	$w13,$w11,$w11
	hsub_u.h	$w12,$w10,$w10
	hsub_u.h	$w11,$w9,$w9
	hsub_u.h	$w10,$w8,$w8
	hsub_u.h	$w9,$w7,$w7
	hsub_u.h	$w8,$w6,$w6
	hsub_u.h	$w7,$w4,$w4
	hsub_u.h	$w4,$w0,$w0
	addv.h	$w0,$w17,$w1
	addv.h	$w19,$w16,$w3
	addv.h	$w6,$w15,$w5
	addv.h	$w18,$w14,$w2
	addv.h	$w0,$w0,$w19
	addv.h	$w6,$w6,$w18
	addv.h	$w0,$w0,$w6
	hadd_s.w	$w0,$w0,$w0
	hadd_s.d	$w0,$w0,$w0
	srli.w	$w0,$w0,2
	ld.w	$w6,16($sp)
	subv.w	$w6,$w6,$w0
	move.v	$w0,$w17
	insve.d	$w0[1],$w13[0]
	move.v	$w13,$w0
	insve.d	$w1[1],$w12[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w11[0]
	move.v	$w11,$w0
	insve.d	$w3[1],$w10[0]
	move.v	$w0,$w15
	insve.d	$w0[1],$w9[0]
	move.v	$w10,$w0
	insve.d	$w5[1],$w8[0]
	move.v	$w0,$w14
	insve.d	$w0[1],$w7[0]
	insve.d	$w2[1],$w4[0]
	addv.h	$w7,$w1,$w13
	subv.h	$w1,$w1,$w13
	addv.h	$w9,$w3,$w11
	subv.h	$w3,$w3,$w11
	addv.h	$w12,$w5,$w10
	subv.h	$w5,$w5,$w10
	addv.h	$w4,$w2,$w0
	subv.h	$w2,$w2,$w0
	addv.h	$w8,$w9,$w7
	subv.h	$w9,$w9,$w7
	addv.h	$w7,$w3,$w1
	subv.h	$w3,$w3,$w1
	addv.h	$w11,$w4,$w12
	subv.h	$w4,$w4,$w12
	addv.h	$w10,$w2,$w5
	subv.h	$w2,$w2,$w5
	addv.h	$w1,$w11,$w8
	subv.h	$w11,$w11,$w8
	addv.h	$w0,$w10,$w7
	subv.h	$w10,$w10,$w7
	addv.h	$w5,$w4,$w9
	subv.h	$w4,$w4,$w9
	addv.h	$w9,$w2,$w3
	subv.h	$w2,$w2,$w3
	pckod.h	$w8,$w11,$w1
	pckev.h	$w1,$w11,$w1
	pckod.h	$w7,$w10,$w0
	pckev.h	$w0,$w10,$w0
	pckod.h	$w3,$w4,$w5
	pckev.h	$w4,$w4,$w5
	pckod.h	$w5,$w2,$w9
	pckev.h	$w2,$w2,$w9
	addv.h	$w12,$w8,$w1
	asub_s.h	$w8,$w8,$w1
	addv.h	$w11,$w7,$w0
	asub_s.h	$w7,$w7,$w0
	addv.h	$w10,$w3,$w4
	asub_s.h	$w4,$w3,$w4
	addv.h	$w9,$w5,$w2
	asub_s.h	$w2,$w5,$w2
	vabs.h	$w0,$w12
	vabs.h	$w3,$w11
	vabs.h	$w5,$w10
	vabs.h	$w9,$w9
	ilvod.h	$w1,$w0,$w8
	ilvev.h	$w8,$w0,$w8
	ilvod.h	$w0,$w3,$w7
	ilvev.h	$w7,$w3,$w7
	ilvod.h	$w3,$w5,$w4
	ilvev.h	$w4,$w5,$w4
	ilvod.h	$w5,$w9,$w2
	ilvev.h	$w2,$w9,$w2
	max_s.h	$w1,$w1,$w8
	max_s.h	$w7,$w0,$w7
	max_s.h	$w3,$w3,$w4
	max_s.h	$w2,$w5,$w2
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w7,$w7,$w7
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w2,$w2,$w2
	addv.w	$w0,$w1,$w7
	addv.w	$w3,$w3,$w2
	addv.w	$w0,$w0,$w3
	ld.w	$w1,32($sp)
	ld.w	$w2,48($sp)
	addv.w	$w1,$w1,$w2
	hadd_s.d	$w0,$w0,$w0
	hadd_s.d	$w1,$w1,$w1
	copy_s.w	$2,$w1[0]
	copy_s.w	$3,$w1[2]
	addu	$2,$2,$3
	addiu	$2,$2,1
	sra	$2,$2,1
	copy_s.w	$4,$w0[0]
	copy_s.w	$3,$w0[2]
	addu	$3,$4,$3
	addiu	$3,$3,1
	sra	$3,$3,1
	subu	$2,$2,$3
	copy_s.w	$3,$w6[0]
	subu	$2,$2,$3
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	ld	$3,0($sp)
	addu	$2,$2,$3
	sd	$2,0($sp)
	daddiu	$18,$18,8
	ld	$2,208($sp)
	bne	$18,$2,.L2168
	daddiu	$19,$19,8

	ld	$2,192($sp)
	ld	$3,224($sp)
	daddu	$2,$2,$3
	sd	$2,192($sp)
	ld	$2,200($sp)
	ld	$3,232($sp)
	daddu	$2,$2,$3
	sd	$2,200($sp)
	ld	$2,216($sp)
	addiu	$2,$2,-1
	bne	$2,$0,.L2169
	sd	$2,216($sp)

	ld	$2,0($sp)
	ld	$31,328($sp)
	ld	$fp,320($sp)
	ld	$28,312($sp)
	ld	$23,304($sp)
	ld	$22,296($sp)
	ld	$21,288($sp)
	ld	$20,280($sp)
	ld	$19,272($sp)
	ld	$18,264($sp)
	ld	$17,256($sp)
	ld	$16,248($sp)
	jr	$31
	daddiu	$sp,$sp,336

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116psyCost_pp_16x16EPKhlS1_l
	.size	_ZN12_GLOBAL__N_116psyCost_pp_16x16EPKhlS1_l, .-_ZN12_GLOBAL__N_116psyCost_pp_16x16EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114psyCost_pp_8x8EPKhlS1_l
	.type	_ZN12_GLOBAL__N_114psyCost_pp_8x8EPKhlS1_l, @function
_ZN12_GLOBAL__N_114psyCost_pp_8x8EPKhlS1_l:
	.frame	$sp,384,$31		# vars= 288, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-384
	sd	$31,376($sp)
	sd	$fp,368($sp)
	sd	$28,360($sp)
	sd	$23,352($sp)
	sd	$22,344($sp)
	sd	$21,336($sp)
	sd	$20,328($sp)
	sd	$19,320($sp)
	sd	$18,312($sp)
	sd	$17,304($sp)
	sd	$16,296($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114psyCost_pp_8x8EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114psyCost_pp_8x8EPKhlS1_l)))
	move	$16,$4
	move	$17,$5
	move	$fp,$6
	move	$23,$7
	daddiu	$22,$sp,48
	move	$9,$22
	daddiu	$21,$sp,32
	move	$8,$21
	daddiu	$20,$sp,16
	move	$7,$20
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$6,$sp

	daddiu	$19,$sp,112
	move	$9,$19
	daddiu	$18,$sp,96
	move	$8,$18
	daddiu	$2,$sp,80
	sd	$2,272($sp)
	move	$7,$2
	daddiu	$3,$sp,64
	sd	$3,280($sp)
	move	$6,$3
	move	$5,$17
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	dlsa	$4,$17,$16,2

	ld.b	$w8,0($sp)
	hadd_u.h	$w16,$w8,$w8
	ld.b	$w7,16($sp)
	hadd_u.h	$w11,$w7,$w7
	ld.b	$w6,32($sp)
	hadd_u.h	$w15,$w6,$w6
	ld.b	$w5,48($sp)
	hadd_u.h	$w12,$w5,$w5
	ld.b	$w4,64($sp)
	hadd_u.h	$w14,$w4,$w4
	ld.b	$w3,80($sp)
	hadd_u.h	$w10,$w3,$w3
	ld.b	$w2,96($sp)
	hadd_u.h	$w13,$w2,$w2
	ld.b	$w1,112($sp)
	hadd_u.h	$w0,$w1,$w1
	hsub_u.h	$w9,$w8,$w8
	hsub_u.h	$w8,$w7,$w7
	hsub_u.h	$w7,$w6,$w6
	hsub_u.h	$w6,$w5,$w5
	hsub_u.h	$w5,$w4,$w4
	hsub_u.h	$w4,$w3,$w3
	hsub_u.h	$w3,$w2,$w2
	hsub_u.h	$w2,$w1,$w1
	addv.h	$w1,$w16,$w11
	addv.h	$w19,$w15,$w12
	addv.h	$w17,$w14,$w10
	addv.h	$w18,$w13,$w0
	addv.h	$w1,$w1,$w19
	addv.h	$w17,$w17,$w18
	addv.h	$w1,$w1,$w17
	hadd_s.w	$w1,$w1,$w1
	hadd_s.d	$w1,$w1,$w1
	srli.w	$w1,$w1,2
	st.w	$w1,128($sp)
	move.v	$w1,$w16
	insve.d	$w1[1],$w9[0]
	st.d	$w1,144($sp)
	move.v	$w1,$w11
	insve.d	$w1[1],$w8[0]
	st.d	$w1,160($sp)
	move.v	$w1,$w15
	insve.d	$w1[1],$w7[0]
	st.d	$w1,176($sp)
	move.v	$w1,$w12
	insve.d	$w1[1],$w6[0]
	st.d	$w1,192($sp)
	move.v	$w1,$w14
	insve.d	$w1[1],$w5[0]
	st.d	$w1,208($sp)
	move.v	$w1,$w10
	insve.d	$w1[1],$w4[0]
	st.d	$w1,224($sp)
	move.v	$w1,$w13
	insve.d	$w1[1],$w3[0]
	st.d	$w1,240($sp)
	insve.d	$w0[1],$w2[0]
	st.d	$w0,256($sp)
	move	$9,$22
	move	$8,$21
	move	$7,$20
	move	$6,$sp
	move	$5,$23
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$fp

	move	$9,$19
	move	$8,$18
	ld	$7,272($sp)
	ld	$6,280($sp)
	move	$5,$23
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	dlsa	$4,$23,$fp,2

	ld.b	$w14,0($sp)
	hadd_u.h	$w13,$w14,$w14
	ld.b	$w10,16($sp)
	hadd_u.h	$w18,$w10,$w10
	ld.b	$w8,32($sp)
	hadd_u.h	$w12,$w8,$w8
	ld.b	$w7,48($sp)
	hadd_u.h	$w5,$w7,$w7
	ld.b	$w6,64($sp)
	hadd_u.h	$w11,$w6,$w6
	ld.b	$w4,80($sp)
	hadd_u.h	$w9,$w4,$w4
	ld.b	$w1,96($sp)
	hadd_u.h	$w2,$w1,$w1
	ld.b	$w0,112($sp)
	hadd_u.h	$w3,$w0,$w0
	hsub_u.h	$w16,$w14,$w14
	hsub_u.h	$w15,$w10,$w10
	hsub_u.h	$w14,$w8,$w8
	hsub_u.h	$w10,$w7,$w7
	hsub_u.h	$w7,$w6,$w6
	hsub_u.h	$w6,$w4,$w4
	hsub_u.h	$w4,$w1,$w1
	hsub_u.h	$w1,$w0,$w0
	addv.h	$w0,$w13,$w18
	addv.h	$w19,$w12,$w5
	addv.h	$w8,$w11,$w9
	addv.h	$w17,$w2,$w3
	addv.h	$w0,$w0,$w19
	addv.h	$w8,$w8,$w17
	addv.h	$w0,$w0,$w8
	hadd_s.w	$w0,$w0,$w0
	hadd_s.d	$w0,$w0,$w0
	srli.w	$w0,$w0,2
	ld.w	$w8,128($sp)
	subv.w	$w8,$w8,$w0
	insve.d	$w13[1],$w16[0]
	insve.d	$w18[1],$w15[0]
	insve.d	$w12[1],$w14[0]
	insve.d	$w5[1],$w10[0]
	insve.d	$w11[1],$w7[0]
	insve.d	$w9[1],$w6[0]
	insve.d	$w2[1],$w4[0]
	insve.d	$w3[1],$w1[0]
	ld.h	$w0,160($sp)
	ld.h	$w1,144($sp)
	addv.h	$w16,$w0,$w1
	subv.h	$w10,$w0,$w1
	ld.h	$w0,192($sp)
	ld.h	$w1,176($sp)
	addv.h	$w19,$w0,$w1
	subv.h	$w6,$w0,$w1
	ld.h	$w0,224($sp)
	ld.h	$w1,208($sp)
	addv.h	$w15,$w0,$w1
	subv.h	$w1,$w0,$w1
	ld.h	$w4,256($sp)
	ld.h	$w7,240($sp)
	addv.h	$w0,$w4,$w7
	subv.h	$w4,$w4,$w7
	addv.h	$w14,$w18,$w13
	subv.h	$w18,$w18,$w13
	addv.h	$w13,$w5,$w12
	subv.h	$w5,$w5,$w12
	addv.h	$w12,$w9,$w11
	subv.h	$w9,$w9,$w11
	addv.h	$w7,$w3,$w2
	subv.h	$w3,$w3,$w2
	addv.h	$w2,$w19,$w16
	subv.h	$w19,$w19,$w16
	addv.h	$w20,$w6,$w10
	subv.h	$w6,$w6,$w10
	addv.h	$w17,$w0,$w15
	subv.h	$w0,$w0,$w15
	addv.h	$w16,$w4,$w1
	subv.h	$w4,$w4,$w1
	addv.h	$w11,$w13,$w14
	subv.h	$w1,$w13,$w14
	addv.h	$w10,$w5,$w18
	subv.h	$w5,$w5,$w18
	addv.h	$w15,$w7,$w12
	subv.h	$w7,$w7,$w12
	addv.h	$w14,$w3,$w9
	subv.h	$w3,$w3,$w9
	addv.h	$w13,$w17,$w2
	subv.h	$w17,$w17,$w2
	addv.h	$w12,$w16,$w20
	subv.h	$w16,$w16,$w20
	addv.h	$w23,$w0,$w19
	subv.h	$w0,$w0,$w19
	addv.h	$w22,$w4,$w6
	subv.h	$w4,$w4,$w6
	addv.h	$w21,$w15,$w11
	subv.h	$w15,$w15,$w11
	addv.h	$w20,$w14,$w10
	subv.h	$w14,$w14,$w10
	addv.h	$w19,$w7,$w1
	subv.h	$w7,$w7,$w1
	addv.h	$w18,$w3,$w5
	subv.h	$w3,$w3,$w5
	pckod.h	$w2,$w17,$w13
	pckev.h	$w13,$w17,$w13
	pckod.h	$w9,$w16,$w12
	pckev.h	$w12,$w16,$w12
	pckod.h	$w1,$w0,$w23
	pckev.h	$w0,$w0,$w23
	pckod.h	$w23,$w4,$w22
	pckev.h	$w4,$w4,$w22
	pckod.h	$w5,$w15,$w21
	pckev.h	$w11,$w15,$w21
	pckod.h	$w21,$w14,$w20
	pckev.h	$w10,$w14,$w20
	pckod.h	$w17,$w7,$w19
	pckev.h	$w7,$w7,$w19
	pckod.h	$w14,$w3,$w18
	pckev.h	$w3,$w3,$w18
	addv.h	$w6,$w2,$w13
	asub_s.h	$w13,$w2,$w13
	addv.h	$w20,$w9,$w12
	asub_s.h	$w12,$w9,$w12
	addv.h	$w16,$w1,$w0
	asub_s.h	$w0,$w1,$w0
	addv.h	$w1,$w23,$w4
	asub_s.h	$w15,$w23,$w4
	addv.h	$w19,$w5,$w11
	asub_s.h	$w11,$w5,$w11
	addv.h	$w5,$w21,$w10
	asub_s.h	$w10,$w21,$w10
	addv.h	$w18,$w17,$w7
	asub_s.h	$w7,$w17,$w7
	addv.h	$w17,$w14,$w3
	asub_s.h	$w14,$w14,$w3
	vabs.h	$w6,$w6
	vabs.h	$w4,$w20
	vabs.h	$w16,$w16
	vabs.h	$w1,$w1
	vabs.h	$w19,$w19
	vabs.h	$w5,$w5
	vabs.h	$w3,$w18
	vabs.h	$w17,$w17
	ilvod.h	$w2,$w6,$w13
	ilvev.h	$w13,$w6,$w13
	ilvod.h	$w9,$w4,$w12
	ilvev.h	$w12,$w4,$w12
	ilvod.h	$w6,$w16,$w0
	ilvev.h	$w16,$w16,$w0
	ilvod.h	$w4,$w1,$w15
	ilvev.h	$w15,$w1,$w15
	ilvod.h	$w1,$w19,$w11
	ilvev.h	$w11,$w19,$w11
	ilvod.h	$w0,$w5,$w10
	ilvev.h	$w10,$w5,$w10
	ilvod.h	$w5,$w3,$w7
	ilvev.h	$w7,$w3,$w7
	ilvod.h	$w3,$w17,$w14
	ilvev.h	$w14,$w17,$w14
	max_s.h	$w2,$w2,$w13
	max_s.h	$w9,$w9,$w12
	max_s.h	$w6,$w6,$w16
	max_s.h	$w4,$w4,$w15
	max_s.h	$w1,$w1,$w11
	max_s.h	$w0,$w0,$w10
	max_s.h	$w5,$w5,$w7
	max_s.h	$w3,$w3,$w14
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w9,$w9,$w9
	hadd_s.w	$w6,$w6,$w6
	hadd_s.w	$w4,$w4,$w4
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	hadd_s.w	$w5,$w5,$w5
	hadd_s.w	$w3,$w3,$w3
	addv.w	$w2,$w2,$w9
	addv.w	$w6,$w6,$w4
	addv.w	$w0,$w1,$w0
	addv.w	$w5,$w5,$w3
	addv.w	$w1,$w2,$w6
	addv.w	$w0,$w0,$w5
	hadd_s.d	$w1,$w1,$w1
	hadd_s.d	$w0,$w0,$w0
	copy_s.w	$3,$w1[0]
	copy_s.w	$2,$w1[2]
	addu	$3,$3,$2
	addiu	$3,$3,1
	sra	$3,$3,1
	copy_s.w	$4,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$4,$2
	addiu	$2,$2,1
	sra	$2,$2,1
	subu	$3,$3,$2
	copy_s.w	$2,$w8[0]
	subu	$3,$3,$2
	sra	$2,$3,31
	xor	$3,$2,$3
	subu	$2,$3,$2
	ld	$31,376($sp)
	ld	$fp,368($sp)
	ld	$28,360($sp)
	ld	$23,352($sp)
	ld	$22,344($sp)
	ld	$21,336($sp)
	ld	$20,328($sp)
	ld	$19,320($sp)
	ld	$18,312($sp)
	ld	$17,304($sp)
	ld	$16,296($sp)
	jr	$31
	daddiu	$sp,$sp,384

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114psyCost_pp_8x8EPKhlS1_l
	.size	_ZN12_GLOBAL__N_114psyCost_pp_8x8EPKhlS1_l, .-_ZN12_GLOBAL__N_114psyCost_pp_8x8EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114psyCost_pp_4x4EPKhlS1_l
	.type	_ZN12_GLOBAL__N_114psyCost_pp_4x4EPKhlS1_l, @function
_ZN12_GLOBAL__N_114psyCost_pp_4x4EPKhlS1_l:
	.frame	$sp,160,$31		# vars= 128, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	sd	$31,152($sp)
	sd	$28,144($sp)
	sd	$17,136($sp)
	sd	$16,128($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114psyCost_pp_4x4EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114psyCost_pp_4x4EPKhlS1_l)))
	move	$16,$6
	move	$17,$7
	daddiu	$9,$sp,48
	daddiu	$8,$sp,32
	daddiu	$7,$sp,16
	ld	$25,%call16(_Z3LW4PKhlPDv4_iS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LW4PKhlPDv4_iS2_S2_S2_
1:	jalr	$25
	move	$6,$sp

	daddiu	$9,$sp,112
	daddiu	$8,$sp,96
	daddiu	$7,$sp,80
	daddiu	$6,$sp,64
	move	$5,$17
	ld	$25,%call16(_Z3LW4PKhlPDv4_iS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LW4PKhlPDv4_iS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	ld.w	$w1,16($sp)
	ld.w	$w0,0($sp)
	insve.w	$w0[1],$w1[0]
	st.w	$w0,0($sp)
	ld.w	$w1,48($sp)
	ld.w	$w0,32($sp)
	insve.w	$w0[1],$w1[0]
	st.w	$w0,32($sp)
	ld.w	$w1,80($sp)
	ld.w	$w0,64($sp)
	insve.w	$w0[1],$w1[0]
	st.w	$w0,64($sp)
	ld.w	$w1,112($sp)
	ld.w	$w0,96($sp)
	insve.w	$w0[1],$w1[0]
	st.w	$w0,96($sp)
	ld.b	$w5,0($sp)
	hadd_u.h	$w10,$w5,$w5
	ld.b	$w4,32($sp)
	hadd_u.h	$w9,$w4,$w4
	ld.b	$w1,64($sp)
	hadd_u.h	$w8,$w1,$w1
	ld.b	$w0,96($sp)
	hadd_u.h	$w7,$w0,$w0
	hsub_u.h	$w6,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w3,$w1,$w1
	hsub_u.h	$w2,$w0,$w0
	addv.h	$w0,$w10,$w9
	addv.h	$w1,$w8,$w7
	hadd_s.w	$w0,$w0,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.d	$w0,$w0,$w0
	hadd_s.d	$w1,$w1,$w1
	srli.w	$w0,$w0,2
	srli.w	$w5,$w1,2
	ilvr.w	$w6,$w6,$w10
	st.w	$w6,0($sp)
	ilvr.w	$w4,$w4,$w9
	st.w	$w4,16($sp)
	ilvr.w	$w1,$w3,$w8
	st.w	$w1,32($sp)
	ilvr.w	$w2,$w2,$w7
	st.w	$w2,48($sp)
	ld.h	$w3,0($sp)
	ld.h	$w1,16($sp)
	ld.h	$w7,32($sp)
	ld.h	$w2,48($sp)
	addv.h	$w4,$w3,$w1
	subv.h	$w1,$w1,$w3
	move.v	$w3,$w4
	insve.d	$w3[1],$w1[0]
	move.v	$w6,$w3
	ilvl.d	$w4,$w1,$w4
	addv.h	$w3,$w7,$w2
	subv.h	$w2,$w2,$w7
	move.v	$w1,$w3
	insve.d	$w1[1],$w2[0]
	ilvl.d	$w3,$w2,$w3
	addv.h	$w7,$w6,$w4
	subv.h	$w4,$w4,$w6
	addv.h	$w6,$w1,$w3
	subv.h	$w3,$w3,$w1
	ilvod.h	$w1,$w4,$w7
	ilvev.h	$w4,$w4,$w7
	ilvod.h	$w2,$w3,$w6
	ilvev.h	$w3,$w3,$w6
	vabs.h	$w1,$w1
	vabs.h	$w4,$w4
	vabs.h	$w2,$w2
	vabs.h	$w3,$w3
	max_s.h	$w1,$w1,$w4
	max_s.h	$w2,$w2,$w3
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w2,$w2,$w2
	subv.w	$w0,$w1,$w0
	subv.w	$w5,$w2,$w5
	subv.w	$w0,$w0,$w5
	subv.w	$w1,$w1,$w2
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w1[1]
	addu	$3,$3,$2
	copy_s.w	$2,$w1[2]
	addu	$3,$3,$2
	copy_s.w	$2,$w1[3]
	addu	$3,$3,$2
	sra	$2,$3,31
	xor	$3,$2,$3
	subu	$2,$3,$2
	ld	$31,152($sp)
	ld	$28,144($sp)
	ld	$17,136($sp)
	ld	$16,128($sp)
	jr	$31
	daddiu	$sp,$sp,160

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114psyCost_pp_4x4EPKhlS1_l
	.size	_ZN12_GLOBAL__N_114psyCost_pp_4x4EPKhlS1_l, .-_ZN12_GLOBAL__N_114psyCost_pp_4x4EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
	.type	_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l, @function
_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l:
	.frame	$sp,160,$31		# vars= 128, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	sd	$31,152($sp)
	sd	$28,144($sp)
	sd	$17,136($sp)
	sd	$16,128($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)))
	move	$16,$6
	move	$17,$7
	daddiu	$9,$sp,48
	daddiu	$8,$sp,32
	daddiu	$7,$sp,16
	ld	$25,%call16(_Z3LW4PKhlPDv4_iS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LW4PKhlPDv4_iS2_S2_S2_
1:	jalr	$25
	move	$6,$sp

	daddiu	$9,$sp,112
	daddiu	$8,$sp,96
	daddiu	$7,$sp,80
	daddiu	$6,$sp,64
	move	$5,$17
	ld	$25,%call16(_Z3LW4PKhlPDv4_iS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LW4PKhlPDv4_iS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	ld.w	$w1,16($sp)
	ld.w	$w0,0($sp)
	insve.w	$w0[1],$w1[0]
	st.w	$w0,0($sp)
	ld.w	$w1,48($sp)
	ld.w	$w0,32($sp)
	insve.w	$w0[1],$w1[0]
	st.w	$w0,32($sp)
	ld.w	$w1,80($sp)
	ld.w	$w0,64($sp)
	insve.w	$w0[1],$w1[0]
	st.w	$w0,64($sp)
	ld.w	$w1,112($sp)
	ld.w	$w0,96($sp)
	insve.w	$w0[1],$w1[0]
	st.w	$w0,96($sp)
	ld.b	$w3,0($sp)
	hadd_u.h	$w7,$w3,$w3
	ld.b	$w2,32($sp)
	hadd_u.h	$w6,$w2,$w2
	ld.b	$w1,64($sp)
	hadd_u.h	$w5,$w1,$w1
	ld.b	$w0,96($sp)
	hadd_u.h	$w4,$w0,$w0
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w2,$w2,$w2
	hsub_u.h	$w1,$w1,$w1
	hsub_u.h	$w0,$w0,$w0
	ilvr.w	$w3,$w3,$w7
	st.w	$w3,0($sp)
	ilvr.w	$w2,$w2,$w6
	st.w	$w2,16($sp)
	ilvr.w	$w1,$w1,$w5
	st.w	$w1,32($sp)
	ilvr.w	$w0,$w0,$w4
	st.w	$w0,48($sp)
	ld.h	$w0,0($sp)
	ld.h	$w2,32($sp)
	subv.h	$w2,$w0,$w2
	ld.h	$w0,16($sp)
	ld.h	$w1,48($sp)
	subv.h	$w0,$w0,$w1
	addv.h	$w1,$w2,$w0
	subv.h	$w0,$w0,$w2
	move.v	$w2,$w1
	insve.d	$w2[1],$w0[0]
	move.v	$w3,$w2
	ilvl.d	$w1,$w0,$w1
	addv.h	$w2,$w2,$w1
	subv.h	$w1,$w1,$w3
	ilvod.h	$w0,$w1,$w2
	ilvev.h	$w1,$w1,$w2
	vabs.h	$w0,$w0
	vabs.h	$w1,$w1
	max_s.h	$w0,$w0,$w1
	hadd_s.w	$w0,$w0,$w0
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[1]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[2]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	ld	$31,152($sp)
	ld	$28,144($sp)
	ld	$17,136($sp)
	ld	$16,128($sp)
	jr	$31
	daddiu	$sp,$sp,160

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
	.size	_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l, .-_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$31,88($sp)
	sd	$fp,80($sp)
	sd	$28,72($sp)
	sd	$23,64($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l)))
	move	$22,$5
	move	$21,$7
	dsll	$fp,$5,2
	move	$18,$4
	dsll	$23,$7,2
	move	$17,$6
	li	$16,8			# 0x8
	move	$19,$0
	ld	$20,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
.L2180:
	move	$7,$21
	move	$6,$17
	move	$5,$22
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$4,$18

	addu	$19,$2,$19
	addiu	$16,$16,-1
	daddu	$18,$18,$fp
	bne	$16,$0,.L2180
	daddu	$17,$17,$23

	move	$2,$19
	ld	$31,88($sp)
	ld	$fp,80($sp)
	ld	$28,72($sp)
	ld	$23,64($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$28,104($sp)
	sd	$23,96($sp)
	sd	$22,88($sp)
	sd	$21,80($sp)
	sd	$20,72($sp)
	sd	$19,64($sp)
	sd	$18,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l)))
	sd	$5,0($sp)
	sd	$7,8($sp)
	dsll	$2,$5,2
	sd	$2,16($sp)
	move	$19,$4
	dsll	$22,$7,2
	move	$fp,$6
	li	$23,8			# 0x8
	move	$18,$0
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	b	.L2185
	daddiu	$21,$2,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)

.L2190:
	ld	$2,16($sp)
	daddu	$19,$19,$2
	beq	$23,$0,.L2189
	daddu	$fp,$fp,$22

.L2185:
	daddiu	$20,$19,12
	move	$17,$fp
	move	$16,$19
.L2184:
	ld	$7,8($sp)
	move	$6,$17
	ld	$5,0($sp)
	move	$25,$21
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$4,$16

	addu	$18,$2,$18
	daddiu	$16,$16,4
	bne	$16,$20,.L2184
	daddiu	$17,$17,4

	b	.L2190
	addiu	$23,$23,-1

.L2189:
	move	$2,$18
	ld	$31,120($sp)
	ld	$fp,112($sp)
	ld	$28,104($sp)
	ld	$23,96($sp)
	ld	$22,88($sp)
	ld	$21,80($sp)
	ld	$20,72($sp)
	ld	$19,64($sp)
	ld	$18,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	jr	$31
	daddiu	$sp,$sp,128

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l)))
	move	$18,$4
	move	$19,$5
	move	$20,$6
	ld	$16,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$21,$7

	move	$17,$2
	move	$7,$21
	daddiu	$6,$20,4
	move	$5,$19
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	daddiu	$4,$18,4

	addu	$2,$2,$17
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
	.end	_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$31,88($sp)
	sd	$fp,80($sp)
	sd	$28,72($sp)
	sd	$23,64($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l)))
	move	$22,$5
	move	$21,$7
	dsll	$fp,$5,2
	move	$18,$4
	dsll	$23,$7,2
	move	$17,$6
	li	$19,3			# 0x3
	move	$16,$0
	ld	$20,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
.L2194:
	move	$7,$21
	move	$6,$17
	move	$5,$22
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$4,$18

	addu	$16,$2,$16
	move	$7,$21
	daddiu	$6,$17,4
	move	$5,$22
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	daddiu	$4,$18,4

	addu	$16,$2,$16
	addiu	$19,$19,-1
	daddu	$18,$18,$fp
	bne	$19,$0,.L2194
	daddu	$17,$17,$23

	move	$2,$16
	ld	$31,88($sp)
	ld	$fp,80($sp)
	ld	$28,72($sp)
	ld	$23,64($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l:
	.frame	$sp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$28,64($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l)))
	move	$22,$5
	move	$21,$7
	move	$16,$4
	move	$17,$6
	daddiu	$19,$4,16
	move	$18,$0
	ld	$20,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
.L2198:
	move	$7,$21
	move	$6,$17
	move	$5,$22
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$4,$16

	addu	$18,$2,$18
	daddiu	$16,$16,4
	bne	$19,$16,.L2198
	daddiu	$17,$17,4

	move	$2,$18
	ld	$31,72($sp)
	ld	$28,64($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$28,104($sp)
	sd	$23,96($sp)
	sd	$22,88($sp)
	sd	$21,80($sp)
	sd	$20,72($sp)
	sd	$19,64($sp)
	sd	$18,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l)))
	move	$21,$5
	sd	$7,0($sp)
	dsll	$2,$5,2
	sd	$2,8($sp)
	move	$22,$4
	dsll	$2,$7,2
	sd	$2,16($sp)
	move	$fp,$6
	li	$23,3			# 0x3
	move	$18,$0
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	daddiu	$20,$2,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
.L2203:
	daddiu	$19,$22,16
	move	$17,$fp
	move	$16,$22
.L2202:
	ld	$7,0($sp)
	move	$6,$17
	move	$5,$21
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$4,$16

	addu	$18,$2,$18
	daddiu	$16,$16,4
	bne	$16,$19,.L2202
	daddiu	$17,$17,4

	addiu	$23,$23,-1
	ld	$2,8($sp)
	daddu	$22,$22,$2
	ld	$2,16($sp)
	bne	$23,$0,.L2203
	daddu	$fp,$fp,$2

	move	$2,$18
	ld	$31,120($sp)
	ld	$fp,112($sp)
	ld	$28,104($sp)
	ld	$23,96($sp)
	ld	$22,88($sp)
	ld	$21,80($sp)
	ld	$20,72($sp)
	ld	$19,64($sp)
	ld	$18,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	jr	$31
	daddiu	$sp,$sp,128

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$31,88($sp)
	sd	$fp,80($sp)
	sd	$28,72($sp)
	sd	$23,64($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)))
	move	$22,$5
	move	$21,$7
	dsll	$fp,$5,2
	move	$18,$4
	dsll	$23,$7,2
	move	$17,$6
	li	$16,4			# 0x4
	move	$19,$0
	ld	$20,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
.L2208:
	move	$7,$21
	move	$6,$17
	move	$5,$22
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$4,$18

	addu	$19,$2,$19
	addiu	$16,$16,-1
	daddu	$18,$18,$fp
	bne	$16,$0,.L2208
	daddu	$17,$17,$23

	move	$2,$19
	ld	$31,88($sp)
	ld	$fp,80($sp)
	ld	$28,72($sp)
	ld	$23,64($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$28,104($sp)
	sd	$23,96($sp)
	sd	$22,88($sp)
	sd	$21,80($sp)
	sd	$20,72($sp)
	sd	$19,64($sp)
	sd	$18,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l)))
	sd	$5,0($sp)
	sd	$7,8($sp)
	dsll	$2,$5,2
	sd	$2,16($sp)
	move	$19,$4
	dsll	$22,$7,2
	move	$fp,$6
	li	$23,4			# 0x4
	move	$18,$0
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	b	.L2213
	daddiu	$21,$2,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)

.L2218:
	ld	$2,16($sp)
	daddu	$19,$19,$2
	beq	$23,$0,.L2217
	daddu	$fp,$fp,$22

.L2213:
	daddiu	$20,$19,12
	move	$17,$fp
	move	$16,$19
.L2212:
	ld	$7,8($sp)
	move	$6,$17
	ld	$5,0($sp)
	move	$25,$21
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$4,$16

	addu	$18,$2,$18
	daddiu	$16,$16,4
	bne	$16,$20,.L2212
	daddiu	$17,$17,4

	b	.L2218
	addiu	$23,$23,-1

.L2217:
	move	$2,$18
	ld	$31,120($sp)
	ld	$fp,112($sp)
	ld	$28,104($sp)
	ld	$23,96($sp)
	ld	$22,88($sp)
	ld	$21,80($sp)
	ld	$20,72($sp)
	ld	$19,64($sp)
	ld	$18,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	jr	$31
	daddiu	$sp,$sp,128

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l)))
	move	$20,$4
	move	$17,$5
	move	$21,$6
	ld	$16,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$18,$7

	move	$19,$2
	move	$7,$18
	dlsa	$6,$18,$21,2
	move	$5,$17
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	dlsa	$4,$17,$20,2

	addu	$2,$2,$19
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
	.end	_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl
	.type	_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl, @function
_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl:
	.frame	$sp,528,$31		# vars= 416, regs= 11/2, args= 0, gp= 0
	.mask	0xd0ff0000,-24
	.fmask	0x03000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-528
	sd	$31,504($sp)
	sd	$fp,496($sp)
	sd	$28,488($sp)
	sd	$23,480($sp)
	sd	$22,472($sp)
	sd	$21,464($sp)
	sd	$20,456($sp)
	sd	$19,448($sp)
	sd	$18,440($sp)
	sd	$17,432($sp)
	sd	$16,424($sp)
	sdc1	$f25,520($sp)
	sdc1	$f24,512($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl)))
	move	$16,$4
	move	$17,$5
	daddiu	$2,$sp,16
	sd	$2,352($sp)
	move	$6,$2
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$5,$sp

	daddu	$16,$16,$17
	daddiu	$fp,$sp,48
	move	$6,$fp
	daddiu	$23,$sp,32
	move	$5,$23
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$22,$sp,80
	move	$6,$22
	daddiu	$21,$sp,64
	move	$5,$21
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$20,$sp,112
	move	$6,$20
	daddiu	$19,$sp,96
	move	$5,$19
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$18,$sp,144
	move	$6,$18
	daddiu	$3,$sp,128
	sd	$3,360($sp)
	move	$5,$3
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$4,$sp,176
	sd	$4,368($sp)
	move	$6,$4
	daddiu	$7,$sp,160
	sd	$7,376($sp)
	move	$5,$7
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$8,$sp,208
	sd	$8,384($sp)
	move	$6,$8
	daddiu	$9,$sp,192
	sd	$9,392($sp)
	move	$5,$9
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	daddiu	$10,$sp,240
	sd	$10,400($sp)
	move	$6,$10
	daddiu	$11,$sp,224
	sd	$11,408($sp)
	move	$5,$11
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	ld.h	$w19,0($sp)
	ld.h	$w17,64($sp)
	addv.h	$w11,$w19,$w17
	ld.h	$w7,16($sp)
	ld.h	$w5,80($sp)
	addv.h	$w23,$w7,$w5
	ld.h	$w18,32($sp)
	ld.h	$w16,96($sp)
	addv.h	$w10,$w18,$w16
	ld.h	$w6,48($sp)
	ld.h	$w4,112($sp)
	addv.h	$w22,$w6,$w4
	ld.h	$w15,128($sp)
	ld.h	$w13,192($sp)
	addv.h	$w9,$w15,$w13
	ld.h	$w3,144($sp)
	ld.h	$w1,208($sp)
	addv.h	$w21,$w3,$w1
	ld.h	$w14,160($sp)
	ld.h	$w12,224($sp)
	addv.h	$w8,$w14,$w12
	ld.h	$w2,176($sp)
	ld.h	$w0,240($sp)
	addv.h	$w20,$w2,$w0
	dotp_u.w	$w7,$w7,$w7
	dotp_u.w	$w6,$w6,$w6
	dotp_u.w	$w5,$w5,$w5
	dotp_u.w	$w4,$w4,$w4
	dotp_u.w	$w3,$w3,$w3
	dotp_u.w	$w2,$w2,$w2
	dotp_u.w	$w1,$w1,$w1
	dotp_u.w	$w0,$w0,$w0
	hadd_u.w	$w11,$w11,$w11
	hadd_u.w	$w23,$w23,$w23
	hadd_u.w	$w10,$w10,$w10
	hadd_u.w	$w22,$w22,$w22
	hadd_u.w	$w9,$w9,$w9
	hadd_u.w	$w21,$w21,$w21
	hadd_u.w	$w8,$w8,$w8
	hadd_u.w	$w20,$w20,$w20
	dpadd_u.w	$w7,$w19,$w19
	dpadd_u.w	$w6,$w18,$w18
	dpadd_u.w	$w5,$w17,$w17
	dpadd_u.w	$w4,$w16,$w16
	dpadd_u.w	$w3,$w15,$w15
	dpadd_u.w	$w2,$w14,$w14
	dpadd_u.w	$w1,$w13,$w13
	dpadd_u.w	$w0,$w12,$w12
	addv.w	$w11,$w11,$w23
	addv.w	$w10,$w10,$w22
	addv.w	$w9,$w9,$w21
	addv.w	$w8,$w8,$w20
	addv.w	$w6,$w7,$w6
	st.w	$w6,256($sp)
	addv.w	$w4,$w5,$w4
	st.w	$w4,272($sp)
	addv.w	$w2,$w3,$w2
	st.w	$w2,288($sp)
	addv.w	$w0,$w1,$w0
	st.w	$w0,304($sp)
	addv.w	$w1,$w11,$w10
	st.w	$w1,320($sp)
	addv.w	$w3,$w9,$w8
	st.w	$w3,336($sp)
	ld	$6,352($sp)
	move	$5,$sp
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	move	$6,$fp
	move	$5,$23
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	move	$6,$22
	move	$5,$21
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	move	$6,$20
	move	$5,$19
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	move	$6,$18
	ld	$5,360($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	ld	$6,368($sp)
	ld	$5,376($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$16

	daddu	$16,$16,$17
	ld	$6,384($sp)
	ld	$5,392($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$16

	ld	$6,400($sp)
	ld	$5,408($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$16,$17

	ld.h	$w22,0($sp)
	ld.h	$w20,64($sp)
	addv.h	$w0,$w22,$w20
	ld.h	$w1,16($sp)
	ld.h	$w7,80($sp)
	addv.h	$w25,$w1,$w7
	ld.h	$w21,32($sp)
	ld.h	$w19,96($sp)
	addv.h	$w11,$w21,$w19
	ld.h	$w8,48($sp)
	ld.h	$w6,112($sp)
	addv.h	$w24,$w8,$w6
	ld.h	$w18,128($sp)
	ld.h	$w16,192($sp)
	addv.h	$w14,$w18,$w16
	ld.h	$w2,144($sp)
	ld.h	$w4,208($sp)
	addv.h	$w3,$w2,$w4
	ld.h	$w17,160($sp)
	ld.h	$w15,224($sp)
	addv.h	$w10,$w17,$w15
	ld.h	$w5,176($sp)
	ld.h	$w9,240($sp)
	addv.h	$w23,$w5,$w9
	dotp_u.w	$w1,$w1,$w1
	dotp_u.w	$w12,$w8,$w8
	dotp_u.w	$w7,$w7,$w7
	dotp_u.w	$w6,$w6,$w6
	dotp_u.w	$w2,$w2,$w2
	dotp_u.w	$w5,$w5,$w5
	dotp_u.w	$w4,$w4,$w4
	dotp_u.w	$w9,$w9,$w9
	hadd_u.w	$w13,$w0,$w0
	hadd_u.w	$w25,$w25,$w25
	hadd_u.w	$w11,$w11,$w11
	hadd_u.w	$w24,$w24,$w24
	hadd_u.w	$w14,$w14,$w14
	hadd_u.w	$w3,$w3,$w3
	hadd_u.w	$w10,$w10,$w10
	hadd_u.w	$w23,$w23,$w23
	dpadd_u.w	$w1,$w22,$w22
	dpadd_u.w	$w12,$w21,$w21
	dpadd_u.w	$w7,$w20,$w20
	move.v	$w8,$w7
	dpadd_u.w	$w6,$w19,$w19
	move.v	$w7,$w6
	dpadd_u.w	$w2,$w18,$w18
	move.v	$w6,$w2
	move.v	$w2,$w5
	dpadd_u.w	$w2,$w17,$w17
	dpadd_u.w	$w4,$w16,$w16
	dpadd_u.w	$w9,$w15,$w15
	addv.w	$w0,$w13,$w25
	addv.w	$w11,$w11,$w24
	addv.w	$w3,$w14,$w3
	addv.w	$w10,$w10,$w23
	addv.w	$w1,$w1,$w12
	addv.w	$w7,$w8,$w7
	addv.w	$w2,$w6,$w2
	addv.w	$w4,$w4,$w9
	addv.w	$w0,$w0,$w11
	addv.w	$w3,$w3,$w10
	ld.w	$w6,256($sp)
	addv.w	$w1,$w6,$w1
	ld.w	$w5,272($sp)
	addv.w	$w7,$w5,$w7
	ld.w	$w5,288($sp)
	addv.w	$w2,$w5,$w2
	ld.w	$w5,304($sp)
	addv.w	$w4,$w5,$w4
	ld.w	$w5,320($sp)
	addv.w	$w0,$w5,$w0
	ld.w	$w5,336($sp)
	addv.w	$w3,$w5,$w3
	addv.w	$w1,$w1,$w7
	addv.w	$w2,$w2,$w4
	addv.w	$w0,$w0,$w3
	addv.w	$w1,$w1,$w2
	hadd_s.d	$w0,$w0,$w0
	hadd_s.d	$w1,$w1,$w1
	slli.d	$w1,$w1,32
	addv.d	$w0,$w0,$w1
	copy_s.d	$3,$w0[0]
	copy_s.d	$2,$w0[1]
	daddu	$2,$3,$2
	ld	$31,504($sp)
	ld	$fp,496($sp)
	ld	$28,488($sp)
	ld	$23,480($sp)
	ld	$22,472($sp)
	ld	$21,464($sp)
	ld	$20,456($sp)
	ld	$19,448($sp)
	ld	$18,440($sp)
	ld	$17,432($sp)
	ld	$16,424($sp)
	ldc1	$f25,520($sp)
	ldc1	$f24,512($sp)
	jr	$31
	daddiu	$sp,$sp,528

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl
	.size	_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl, .-_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl
	.type	_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl, @function
_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl:
	.frame	$sp,160,$31		# vars= 128, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	sd	$31,152($sp)
	sd	$28,144($sp)
	sd	$17,136($sp)
	sd	$16,128($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl)))
	move	$17,$4
	move	$16,$5
	daddiu	$9,$sp,48
	daddiu	$8,$sp,32
	daddiu	$7,$sp,16
	ld	$25,%call16(_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$6,$sp

	daddiu	$9,$sp,112
	daddiu	$8,$sp,96
	daddiu	$7,$sp,80
	daddiu	$6,$sp,64
	move	$5,$16
	ld	$25,%call16(_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
1:	jalr	$25
	dlsa	$4,$16,$17,2

	ld.h	$w10,0($sp)
	ld.h	$w8,64($sp)
	addv.h	$w2,$w10,$w8
	ld.h	$w0,16($sp)
	ld.h	$w3,80($sp)
	addv.h	$w1,$w0,$w3
	ld.h	$w9,32($sp)
	ld.h	$w7,96($sp)
	addv.h	$w6,$w9,$w7
	ld.h	$w5,48($sp)
	ld.h	$w4,112($sp)
	addv.h	$w11,$w5,$w4
	dotp_u.w	$w0,$w0,$w0
	dotp_u.w	$w5,$w5,$w5
	dotp_u.w	$w3,$w3,$w3
	dotp_u.w	$w4,$w4,$w4
	hadd_u.w	$w2,$w2,$w2
	hadd_u.w	$w12,$w1,$w1
	hadd_u.w	$w6,$w6,$w6
	hadd_u.w	$w11,$w11,$w11
	dpadd_u.w	$w0,$w10,$w10
	move.v	$w1,$w0
	move.v	$w0,$w5
	dpadd_u.w	$w0,$w9,$w9
	dpadd_u.w	$w3,$w8,$w8
	dpadd_u.w	$w4,$w7,$w7
	addv.w	$w2,$w2,$w12
	addv.w	$w6,$w6,$w11
	addv.w	$w0,$w1,$w0
	addv.w	$w3,$w3,$w4
	addv.w	$w1,$w2,$w6
	addv.w	$w0,$w0,$w3
	hadd_s.d	$w1,$w1,$w1
	hadd_s.d	$w0,$w0,$w0
	slli.d	$w0,$w0,32
	addv.d	$w0,$w1,$w0
	copy_s.d	$3,$w0[0]
	copy_s.d	$2,$w0[1]
	daddu	$2,$3,$2
	ld	$31,152($sp)
	ld	$28,144($sp)
	ld	$17,136($sp)
	ld	$16,128($sp)
	jr	$31
	daddiu	$sp,$sp,160

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl
	.size	_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl, .-_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl
	.type	_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl, @function
_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl:
	.frame	$sp,400,$31		# vars= 320, regs= 7/0, args= 16, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-400
	sd	$31,392($sp)
	sd	$28,384($sp)
	sd	$20,376($sp)
	sd	$19,368($sp)
	sd	$18,360($sp)
	sd	$17,352($sp)
	sd	$16,344($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl)))
	move	$20,$4
	move	$19,$5
	move	$17,$6
	move	$16,$7
	daddiu	$9,$sp,64
	daddiu	$8,$sp,48
	daddiu	$7,$sp,32
	daddiu	$6,$sp,16
	ld	$25,%call16(_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$5,$16

	dsll	$18,$16,2
	daddiu	$9,$sp,192
	daddiu	$8,$sp,176
	daddiu	$7,$sp,160
	daddiu	$6,$sp,144
	move	$5,$16
	ld	$25,%call16(_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
1:	jalr	$25
	daddu	$4,$20,$18

	daddiu	$9,$sp,128
	daddiu	$8,$sp,112
	daddiu	$7,$sp,96
	daddiu	$6,$sp,80
	move	$5,$16
	ld	$25,%call16(_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$4,$19

	daddiu	$9,$sp,256
	daddiu	$8,$sp,240
	daddiu	$7,$sp,224
	daddiu	$6,$sp,208
	move	$5,$16
	ld	$25,%call16(_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
1:	jalr	$25
	daddu	$4,$19,$18

	ld.h	$w0,16($sp)
	ld.h	$w1,80($sp)
	subv.h	$w0,$w0,$w1
	ld.h	$w1,32($sp)
	ld.h	$w2,96($sp)
	subv.h	$w1,$w1,$w2
	ld.h	$w2,48($sp)
	ld.h	$w3,112($sp)
	subv.h	$w2,$w2,$w3
	ld.h	$w3,64($sp)
	ld.h	$w4,128($sp)
	subv.h	$w3,$w3,$w4
	ld.h	$w5,144($sp)
	ld.h	$w4,208($sp)
	subv.h	$w4,$w5,$w4
	st.h	$w4,272($sp)
	ld.h	$w5,160($sp)
	ld.h	$w4,224($sp)
	subv.h	$w5,$w5,$w4
	st.h	$w5,288($sp)
	ld.h	$w5,176($sp)
	ld.h	$w4,240($sp)
	subv.h	$w6,$w5,$w4
	st.h	$w6,304($sp)
	ld.h	$w5,192($sp)
	ld.h	$w4,256($sp)
	subv.h	$w7,$w5,$w4
	st.h	$w7,320($sp)
	dsll	$18,$16,1
	sd	$18,8($sp)
	sd	$17,0($sp)
	copy_s.d	$10,$w3[0]
	copy_s.d	$11,$w3[1]
	copy_s.d	$8,$w2[0]
	copy_s.d	$9,$w2[1]
	copy_s.d	$6,$w1[0]
	copy_s.d	$7,$w1[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5ST_V4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z5ST_V4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$18,8($sp)
	dlsa	$16,$16,$17,3
	sd	$16,0($sp)
	ld.d	$w0,320($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,304($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,288($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,272($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5ST_V4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z5ST_V4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$31,392($sp)
	ld	$28,384($sp)
	ld	$20,376($sp)
	ld	$19,368($sp)
	ld	$18,360($sp)
	ld	$17,352($sp)
	ld	$16,344($sp)
	jr	$31
	daddiu	$sp,$sp,400

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl
	.size	_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl, .-_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll
	.type	_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll, @function
_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll:
	.frame	$sp,400,$31		# vars= 320, regs= 8/0, args= 16, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-400
	sd	$31,392($sp)
	sd	$28,384($sp)
	sd	$21,376($sp)
	sd	$20,368($sp)
	sd	$19,360($sp)
	sd	$18,352($sp)
	sd	$17,344($sp)
	sd	$16,336($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll)))
	move	$20,$4
	move	$16,$5
	move	$21,$6
	move	$17,$7
	move	$19,$8
	move	$18,$9
	daddiu	$9,$sp,64
	daddiu	$8,$sp,48
	daddiu	$7,$sp,32
	daddiu	$6,$sp,16
	move	$5,$19
	ld	$25,%call16(_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$4,$21

	daddiu	$9,$sp,128
	daddiu	$8,$sp,112
	daddiu	$7,$sp,96
	daddiu	$6,$sp,80
	move	$5,$18
	ld	$25,%call16(_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	dlsa	$17,$18,$17,2
	daddiu	$9,$sp,192
	daddiu	$8,$sp,176
	daddiu	$7,$sp,160
	daddiu	$6,$sp,144
	move	$5,$19
	ld	$25,%call16(_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
1:	jalr	$25
	dlsa	$4,$19,$21,2

	daddiu	$9,$sp,256
	daddiu	$8,$sp,240
	daddiu	$7,$sp,224
	daddiu	$6,$sp,208
	move	$5,$18
	ld	$25,%call16(_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.h	$w0,16($sp)
	ld.h	$w1,80($sp)
	subv.h	$w0,$w0,$w1
	ld.h	$w1,32($sp)
	ld.h	$w2,96($sp)
	subv.h	$w1,$w1,$w2
	ld.h	$w2,48($sp)
	ld.h	$w3,112($sp)
	subv.h	$w2,$w2,$w3
	ld.h	$w3,64($sp)
	ld.h	$w4,128($sp)
	subv.h	$w3,$w3,$w4
	ld.h	$w5,144($sp)
	ld.h	$w4,208($sp)
	subv.h	$w4,$w5,$w4
	st.h	$w4,272($sp)
	ld.h	$w5,160($sp)
	ld.h	$w4,224($sp)
	subv.h	$w5,$w5,$w4
	st.h	$w5,288($sp)
	ld.h	$w5,176($sp)
	ld.h	$w4,240($sp)
	subv.h	$w6,$w5,$w4
	st.h	$w6,304($sp)
	ld.h	$w5,192($sp)
	ld.h	$w4,256($sp)
	subv.h	$w7,$w5,$w4
	st.h	$w7,320($sp)
	dsll	$17,$16,1
	sd	$17,8($sp)
	sd	$20,0($sp)
	copy_s.d	$10,$w3[0]
	copy_s.d	$11,$w3[1]
	copy_s.d	$8,$w2[0]
	copy_s.d	$9,$w2[1]
	copy_s.d	$6,$w1[0]
	copy_s.d	$7,$w1[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5ST_V4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z5ST_V4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$17,8($sp)
	dlsa	$16,$16,$20,3
	sd	$16,0($sp)
	ld.d	$w0,320($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,304($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,288($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,272($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5ST_V4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z5ST_V4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$31,392($sp)
	ld	$28,384($sp)
	ld	$21,376($sp)
	ld	$20,368($sp)
	ld	$19,360($sp)
	ld	$18,352($sp)
	ld	$17,344($sp)
	ld	$16,336($sp)
	jr	$31
	daddiu	$sp,$sp,400

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll
	.size	_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll, .-_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl
	.type	_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl, @function
_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl:
	.frame	$sp,464,$31		# vars= 352, regs= 11/0, args= 16, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-464
	sd	$31,456($sp)
	sd	$fp,448($sp)
	sd	$28,440($sp)
	sd	$23,432($sp)
	sd	$22,424($sp)
	sd	$21,416($sp)
	sd	$20,408($sp)
	sd	$19,400($sp)
	sd	$18,392($sp)
	sd	$17,384($sp)
	sd	$16,376($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl)))
	move	$18,$4
	move	$17,$5
	move	$16,$6
	sd	$7,272($sp)
	dsll	$3,$7,1
	sd	$3,280($sp)
	sd	$3,352($sp)
	dsll	$2,$7,2
	sd	$2,360($sp)
	li	$19,16			# 0x10
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,48
	daddiu	$22,$sp,32
	daddiu	$21,$sp,16
	daddiu	$20,$sp,192
.L2230:
	move	$8,$fp
	move	$7,$23
	move	$6,$22
	move	$5,$21
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$4,$18

	move	$8,$20
	daddiu	$7,$sp,176
	daddiu	$6,$sp,160
	daddiu	$5,$sp,144
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	daddiu	$8,$sp,128
	daddiu	$7,$sp,112
	daddiu	$6,$sp,96
	daddiu	$5,$sp,80
	ld	$2,272($sp)
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	daddu	$4,$18,$2

	daddiu	$8,$sp,256
	daddiu	$7,$sp,240
	daddiu	$6,$sp,224
	daddiu	$5,$sp,208
	ld	$2,272($sp)
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	daddu	$4,$17,$2

	ld.h	$w0,16($sp)
	ld.h	$w1,144($sp)
	subv.h	$w0,$w0,$w1
	ld.h	$w1,32($sp)
	ld.h	$w2,160($sp)
	subv.h	$w1,$w1,$w2
	ld.h	$w2,48($sp)
	ld.h	$w3,176($sp)
	subv.h	$w2,$w2,$w3
	ld.h	$w3,64($sp)
	ld.h	$w4,192($sp)
	subv.h	$w3,$w3,$w4
	ld.h	$w5,80($sp)
	ld.h	$w4,208($sp)
	subv.h	$w4,$w5,$w4
	st.h	$w4,288($sp)
	ld.h	$w5,96($sp)
	ld.h	$w4,224($sp)
	subv.h	$w5,$w5,$w4
	st.h	$w5,304($sp)
	ld.h	$w5,112($sp)
	ld.h	$w4,240($sp)
	subv.h	$w6,$w5,$w4
	st.h	$w6,320($sp)
	ld.h	$w5,128($sp)
	ld.h	$w4,256($sp)
	subv.h	$w7,$w5,$w4
	st.h	$w7,336($sp)
	sd	$16,0($sp)
	copy_s.d	$10,$w3[0]
	copy_s.d	$11,$w3[1]
	copy_s.d	$8,$w2[0]
	copy_s.d	$9,$w2[1]
	copy_s.d	$6,$w1[0]
	copy_s.d	$7,$w1[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$2,280($sp)
	daddu	$2,$16,$2
	sd	$2,0($sp)
	ld.d	$w0,336($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,320($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,304($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,288($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$2,352($sp)
	daddu	$18,$18,$2
	daddu	$17,$17,$2
	ld	$2,360($sp)
	addiu	$19,$19,-1
	bne	$19,$0,.L2230
	daddu	$16,$16,$2

	ld	$31,456($sp)
	ld	$fp,448($sp)
	ld	$28,440($sp)
	ld	$23,432($sp)
	ld	$22,424($sp)
	ld	$21,416($sp)
	ld	$20,408($sp)
	ld	$19,400($sp)
	ld	$18,392($sp)
	ld	$17,384($sp)
	ld	$16,376($sp)
	jr	$31
	daddiu	$sp,$sp,464

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl
	.size	_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl, .-_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll
	.type	_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll, @function
_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll:
	.frame	$sp,464,$31		# vars= 352, regs= 11/0, args= 16, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-464
	sd	$31,456($sp)
	sd	$fp,448($sp)
	sd	$28,440($sp)
	sd	$23,432($sp)
	sd	$22,424($sp)
	sd	$21,416($sp)
	sd	$20,408($sp)
	sd	$19,400($sp)
	sd	$18,392($sp)
	sd	$17,384($sp)
	sd	$16,376($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll)))
	move	$18,$4
	move	$17,$6
	move	$16,$7
	sd	$8,344($sp)
	sd	$9,352($sp)
	dsll	$2,$5,1
	sd	$2,336($sp)
	li	$19,64			# 0x40
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,48
	daddiu	$22,$sp,32
	daddiu	$21,$sp,16
	daddiu	$20,$sp,192
.L2234:
	move	$8,$fp
	move	$7,$23
	move	$6,$22
	move	$5,$21
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	move	$8,$20
	daddiu	$7,$sp,176
	daddiu	$6,$sp,160
	daddiu	$5,$sp,144
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	daddiu	$8,$sp,128
	daddiu	$7,$sp,112
	daddiu	$6,$sp,96
	daddiu	$5,$sp,80
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	daddiu	$4,$17,32

	daddiu	$8,$sp,256
	daddiu	$7,$sp,240
	daddiu	$6,$sp,224
	daddiu	$5,$sp,208
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	daddiu	$4,$16,32

	ld.h	$w0,16($sp)
	ld.h	$w1,144($sp)
	subv.h	$w0,$w0,$w1
	ld.h	$w1,32($sp)
	ld.h	$w2,160($sp)
	subv.h	$w1,$w1,$w2
	ld.h	$w2,48($sp)
	ld.h	$w3,176($sp)
	subv.h	$w2,$w2,$w3
	ld.h	$w3,64($sp)
	ld.h	$w4,192($sp)
	subv.h	$w3,$w3,$w4
	ld.h	$w5,80($sp)
	ld.h	$w4,208($sp)
	subv.h	$w4,$w5,$w4
	st.h	$w4,272($sp)
	ld.h	$w5,96($sp)
	ld.h	$w4,224($sp)
	subv.h	$w5,$w5,$w4
	st.h	$w5,288($sp)
	ld.h	$w5,112($sp)
	ld.h	$w4,240($sp)
	subv.h	$w6,$w5,$w4
	st.h	$w6,304($sp)
	ld.h	$w5,128($sp)
	ld.h	$w4,256($sp)
	subv.h	$w7,$w5,$w4
	st.h	$w7,320($sp)
	sd	$18,0($sp)
	copy_s.d	$10,$w3[0]
	copy_s.d	$11,$w3[1]
	copy_s.d	$8,$w2[0]
	copy_s.d	$9,$w2[1]
	copy_s.d	$6,$w1[0]
	copy_s.d	$7,$w1[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddiu	$2,$18,64
	sd	$2,0($sp)
	ld.d	$w0,320($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,304($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,288($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,272($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$2,344($sp)
	daddu	$17,$17,$2
	ld	$2,352($sp)
	daddu	$16,$16,$2
	ld	$2,336($sp)
	addiu	$19,$19,-1
	bne	$19,$0,.L2234
	daddu	$18,$18,$2

	ld	$31,456($sp)
	ld	$fp,448($sp)
	ld	$28,440($sp)
	ld	$23,432($sp)
	ld	$22,424($sp)
	ld	$21,416($sp)
	ld	$20,408($sp)
	ld	$19,400($sp)
	ld	$18,392($sp)
	ld	$17,384($sp)
	ld	$16,376($sp)
	jr	$31
	daddiu	$sp,$sp,464

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll
	.size	_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll, .-_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll
	.type	_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll, @function
_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll:
	.frame	$sp,480,$31		# vars= 368, regs= 11/0, args= 16, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-480
	sd	$31,472($sp)
	sd	$fp,464($sp)
	sd	$28,456($sp)
	sd	$23,448($sp)
	sd	$22,440($sp)
	sd	$21,432($sp)
	sd	$20,424($sp)
	sd	$19,416($sp)
	sd	$18,408($sp)
	sd	$17,400($sp)
	sd	$16,392($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll)))
	move	$18,$4
	move	$17,$6
	move	$16,$7
	sd	$8,368($sp)
	sd	$9,376($sp)
	dsll	$2,$5,1
	sd	$2,336($sp)
	dsll	$2,$8,1
	sd	$2,344($sp)
	dsll	$2,$9,1
	sd	$2,352($sp)
	dsll	$2,$5,2
	sd	$2,360($sp)
	li	$19,16			# 0x10
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,48
	daddiu	$22,$sp,32
	daddiu	$21,$sp,16
	daddiu	$20,$sp,192
.L2238:
	move	$8,$fp
	move	$7,$23
	move	$6,$22
	move	$5,$21
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	move	$8,$20
	daddiu	$7,$sp,176
	daddiu	$6,$sp,160
	daddiu	$5,$sp,144
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	daddiu	$8,$sp,128
	daddiu	$7,$sp,112
	daddiu	$6,$sp,96
	daddiu	$5,$sp,80
	ld	$2,368($sp)
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	daddu	$4,$17,$2

	daddiu	$8,$sp,256
	daddiu	$7,$sp,240
	daddiu	$6,$sp,224
	daddiu	$5,$sp,208
	ld	$2,376($sp)
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	daddu	$4,$16,$2

	ld.h	$w0,16($sp)
	ld.h	$w1,144($sp)
	subv.h	$w0,$w0,$w1
	ld.h	$w1,32($sp)
	ld.h	$w2,160($sp)
	subv.h	$w1,$w1,$w2
	ld.h	$w2,48($sp)
	ld.h	$w3,176($sp)
	subv.h	$w2,$w2,$w3
	ld.h	$w3,64($sp)
	ld.h	$w4,192($sp)
	subv.h	$w3,$w3,$w4
	ld.h	$w5,80($sp)
	ld.h	$w4,208($sp)
	subv.h	$w4,$w5,$w4
	st.h	$w4,272($sp)
	ld.h	$w5,96($sp)
	ld.h	$w4,224($sp)
	subv.h	$w5,$w5,$w4
	st.h	$w5,288($sp)
	ld.h	$w5,112($sp)
	ld.h	$w4,240($sp)
	subv.h	$w6,$w5,$w4
	st.h	$w6,304($sp)
	ld.h	$w5,128($sp)
	ld.h	$w4,256($sp)
	subv.h	$w7,$w5,$w4
	st.h	$w7,320($sp)
	sd	$18,0($sp)
	copy_s.d	$10,$w3[0]
	copy_s.d	$11,$w3[1]
	copy_s.d	$8,$w2[0]
	copy_s.d	$9,$w2[1]
	copy_s.d	$6,$w1[0]
	copy_s.d	$7,$w1[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$2,336($sp)
	daddu	$2,$18,$2
	sd	$2,0($sp)
	ld.d	$w0,320($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,304($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,288($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,272($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$2,344($sp)
	daddu	$17,$17,$2
	ld	$2,352($sp)
	daddu	$16,$16,$2
	ld	$2,360($sp)
	addiu	$19,$19,-1
	bne	$19,$0,.L2238
	daddu	$18,$18,$2

	ld	$31,472($sp)
	ld	$fp,464($sp)
	ld	$28,456($sp)
	ld	$23,448($sp)
	ld	$22,440($sp)
	ld	$21,432($sp)
	ld	$20,424($sp)
	ld	$19,416($sp)
	ld	$18,408($sp)
	ld	$17,400($sp)
	ld	$16,392($sp)
	jr	$31
	daddiu	$sp,$sp,480

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll
	.size	_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll, .-_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl
	.type	_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl, @function
_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl:
	.frame	$sp,112,$31		# vars= 64, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$28,96($sp)
	sd	$18,88($sp)
	sd	$17,80($sp)
	sd	$16,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl)))
	move	$18,$5
	move	$17,$6
	move	$16,$7
	daddiu	$7,$sp,16
	move	$6,$sp
	ld	$25,%call16(_Z9L_4x4_B_HPKhlPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z9L_4x4_B_HPKhlPDv8_tS2_
1:	jalr	$25
	move	$5,$16

	daddiu	$7,$sp,48
	daddiu	$6,$sp,32
	move	$5,$16
	ld	$25,%call16(_Z9L_4x4_B_HPKhlPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z9L_4x4_B_HPKhlPDv8_tS2_
1:	jalr	$25
	move	$4,$18

	ld.h	$w0,0($sp)
	ld.h	$w1,32($sp)
	subv.h	$w0,$w0,$w1
	ld.h	$w1,16($sp)
	ld.h	$w2,48($sp)
	subv.h	$w1,$w1,$w2
	move	$9,$16
	move	$8,$17
	copy_s.d	$6,$w1[0]
	copy_s.d	$7,$w1[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7S_4x4_HDv8_sS_Psl)($28)
	.reloc	1f,R_MIPS_JALR,_Z7S_4x4_HDv8_sS_Psl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$31,104($sp)
	ld	$28,96($sp)
	ld	$18,88($sp)
	ld	$17,80($sp)
	ld	$16,72($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl
	.size	_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl, .-_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll
	.type	_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll, @function
_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll:
	.frame	$sp,112,$31		# vars= 64, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$28,96($sp)
	sd	$19,88($sp)
	sd	$18,80($sp)
	sd	$17,72($sp)
	sd	$16,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll)))
	move	$16,$4
	move	$17,$5
	move	$4,$6
	move	$18,$7
	move	$19,$9
	daddiu	$7,$sp,16
	move	$6,$sp
	ld	$25,%call16(_Z9L_4x4_B_HPKhlPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z9L_4x4_B_HPKhlPDv8_tS2_
1:	jalr	$25
	move	$5,$8

	daddiu	$7,$sp,48
	daddiu	$6,$sp,32
	move	$5,$19
	ld	$25,%call16(_Z9L_4x4_B_HPKhlPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z9L_4x4_B_HPKhlPDv8_tS2_
1:	jalr	$25
	move	$4,$18

	ld.h	$w0,0($sp)
	ld.h	$w1,32($sp)
	subv.h	$w0,$w0,$w1
	ld.h	$w1,16($sp)
	ld.h	$w2,48($sp)
	subv.h	$w1,$w1,$w2
	move	$9,$17
	move	$8,$16
	copy_s.d	$6,$w1[0]
	copy_s.d	$7,$w1[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7S_4x4_HDv8_sS_Psl)($28)
	.reloc	1f,R_MIPS_JALR,_Z7S_4x4_HDv8_sS_Psl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$31,104($sp)
	ld	$28,96($sp)
	ld	$19,88($sp)
	ld	$18,80($sp)
	ld	$17,72($sp)
	ld	$16,64($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll
	.size	_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll, .-_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll, @function
_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll:
	.frame	$sp,400,$31		# vars= 320, regs= 8/0, args= 16, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-400
	sd	$31,392($sp)
	sd	$28,384($sp)
	sd	$21,376($sp)
	sd	$20,368($sp)
	sd	$19,360($sp)
	sd	$18,352($sp)
	sd	$17,344($sp)
	sd	$16,336($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll)))
	move	$18,$4
	move	$16,$5
	move	$21,$6
	move	$19,$7
	move	$17,$8
	move	$20,$9
	daddiu	$9,$sp,64
	daddiu	$8,$sp,48
	daddiu	$7,$sp,32
	daddiu	$6,$sp,16
	move	$5,$17
	ld	$25,%call16(_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$4,$21

	daddiu	$9,$sp,128
	daddiu	$8,$sp,112
	daddiu	$7,$sp,96
	daddiu	$6,$sp,80
	move	$5,$17
	ld	$25,%call16(_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
1:	jalr	$25
	dlsa	$4,$17,$21,2

	dsll	$17,$20,1
	daddiu	$9,$sp,192
	daddiu	$8,$sp,176
	daddiu	$7,$sp,160
	daddiu	$6,$sp,144
	move	$5,$17
	ld	$25,%call16(_Z5LD_V4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$19

	daddiu	$9,$sp,256
	daddiu	$8,$sp,240
	daddiu	$7,$sp,224
	daddiu	$6,$sp,208
	move	$5,$17
	ld	$25,%call16(_Z5LD_V4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	dlsa	$4,$20,$19,3

	ld.h	$w0,16($sp)
	ld.h	$w1,144($sp)
	addv.h	$w0,$w0,$w1
	ld.h	$w1,32($sp)
	ld.h	$w2,160($sp)
	addv.h	$w1,$w1,$w2
	ld.h	$w2,48($sp)
	ld.h	$w3,176($sp)
	addv.h	$w2,$w2,$w3
	ld.h	$w3,64($sp)
	ld.h	$w4,192($sp)
	addv.h	$w3,$w3,$w4
	ld.h	$w7,80($sp)
	ld.h	$w4,208($sp)
	addv.h	$w7,$w7,$w4
	ld.h	$w6,96($sp)
	ld.h	$w4,224($sp)
	addv.h	$w6,$w6,$w4
	ld.h	$w5,112($sp)
	ld.h	$w4,240($sp)
	addv.h	$w5,$w5,$w4
	ld.h	$w4,128($sp)
	ld.h	$w8,256($sp)
	addv.h	$w4,$w4,$w8
	vsrains_u.b	$w0,$w0,0
	vsrains_u.b	$w1,$w1,0
	vsrains_u.b	$w2,$w2,0
	vsrains_u.b	$w3,$w3,0
	vsrains_u.b	$w7,$w7,0
	st.b	$w7,272($sp)
	vsrains_u.b	$w6,$w6,0
	st.b	$w6,288($sp)
	vsrains_u.b	$w5,$w5,0
	st.b	$w5,304($sp)
	vsrains_u.b	$w4,$w4,0
	st.b	$w4,320($sp)
	sd	$16,8($sp)
	sd	$18,0($sp)
	copy_s.d	$10,$w3[0]
	copy_s.d	$11,$w3[1]
	copy_s.d	$8,$w2[0]
	copy_s.d	$9,$w2[1]
	copy_s.d	$6,$w1[0]
	copy_s.d	$7,$w1[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z3SD4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z3SD4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$16,8($sp)
	dlsa	$16,$16,$18,2
	sd	$16,0($sp)
	ld.d	$w0,320($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,304($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,288($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,272($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z3SD4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z3SD4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$31,392($sp)
	ld	$28,384($sp)
	ld	$21,376($sp)
	ld	$20,368($sp)
	ld	$19,360($sp)
	ld	$18,352($sp)
	ld	$17,344($sp)
	ld	$16,336($sp)
	jr	$31
	daddiu	$sp,$sp,400

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll, .-_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll, @function
_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll:
	.frame	$sp,912,$31		# vars= 800, regs= 11/0, args= 16, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-912
	sd	$31,904($sp)
	sd	$fp,896($sp)
	sd	$28,888($sp)
	sd	$23,880($sp)
	sd	$22,872($sp)
	sd	$21,864($sp)
	sd	$20,856($sp)
	sd	$19,848($sp)
	sd	$18,840($sp)
	sd	$17,832($sp)
	sd	$16,824($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll)))
	move	$2,$6
	sd	$6,576($sp)
	daddu	$2,$2,$8
	sd	$2,528($sp)
	daddu	$2,$2,$8
	sd	$2,536($sp)
	daddu	$2,$2,$8
	sd	$2,544($sp)
	dsll	$2,$9,1
	daddu	$3,$7,$2
	sd	$3,552($sp)
	daddu	$3,$3,$2
	sd	$3,560($sp)
	daddu	$2,$3,$2
	sd	$2,568($sp)
	daddu	$19,$4,$5
	daddu	$2,$19,$5
	daddu	$3,$2,$5
	dsll	$17,$8,2
	dsll	$18,$9,3
	dsll	$16,$5,2
	li	$5,8			# 0x8
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,48
	daddiu	$22,$sp,32
	daddiu	$21,$sp,16
	daddiu	$20,$sp,128
	sd	$fp,584($sp)
	move	$fp,$7
	sd	$23,784($sp)
	move	$23,$4
	sd	$22,792($sp)
	move	$22,$3
	sd	$20,800($sp)
	move	$20,$5
	sd	$21,808($sp)
	move	$21,$2
.L2248:
	ld	$8,584($sp)
	ld	$7,784($sp)
	ld	$6,792($sp)
	ld	$5,808($sp)
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	ld	$4,576($sp)

	ld	$8,800($sp)
	daddiu	$7,$sp,112
	daddiu	$6,$sp,96
	daddiu	$5,$sp,80
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	ld	$4,528($sp)

	daddiu	$8,$sp,192
	daddiu	$7,$sp,176
	daddiu	$6,$sp,160
	daddiu	$5,$sp,144
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	ld	$4,536($sp)

	daddiu	$8,$sp,256
	daddiu	$7,$sp,240
	daddiu	$6,$sp,224
	daddiu	$5,$sp,208
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	ld	$4,544($sp)

	daddiu	$8,$sp,320
	daddiu	$7,$sp,304
	daddiu	$6,$sp,288
	daddiu	$5,$sp,272
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$fp

	daddiu	$8,$sp,384
	daddiu	$7,$sp,368
	daddiu	$6,$sp,352
	daddiu	$5,$sp,336
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,552($sp)

	daddiu	$8,$sp,448
	daddiu	$7,$sp,432
	daddiu	$6,$sp,416
	daddiu	$5,$sp,400
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,560($sp)

	daddiu	$8,$sp,512
	daddiu	$7,$sp,496
	daddiu	$6,$sp,480
	daddiu	$5,$sp,464
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	ld	$4,568($sp)

	ld.h	$w6,16($sp)
	ld.h	$w0,272($sp)
	addv.h	$w13,$w6,$w0
	ld.h	$w14,32($sp)
	ld.h	$w0,288($sp)
	addv.h	$w14,$w14,$w0
	ld.h	$w16,48($sp)
	ld.h	$w0,304($sp)
	addv.h	$w16,$w16,$w0
	ld.h	$w15,64($sp)
	ld.h	$w0,320($sp)
	addv.h	$w15,$w15,$w0
	ld.h	$w1,80($sp)
	ld.h	$w0,336($sp)
	addv.h	$w1,$w1,$w0
	ld.h	$w2,96($sp)
	ld.h	$w0,352($sp)
	addv.h	$w2,$w2,$w0
	ld.h	$w3,112($sp)
	ld.h	$w0,368($sp)
	addv.h	$w3,$w3,$w0
	ld.h	$w4,128($sp)
	ld.h	$w0,384($sp)
	addv.h	$w4,$w4,$w0
	ld.h	$w5,144($sp)
	ld.h	$w0,400($sp)
	addv.h	$w0,$w5,$w0
	ld.h	$w12,160($sp)
	ld.h	$w5,416($sp)
	addv.h	$w12,$w12,$w5
	ld.h	$w11,176($sp)
	ld.h	$w5,432($sp)
	addv.h	$w11,$w11,$w5
	ld.h	$w10,192($sp)
	ld.h	$w5,448($sp)
	addv.h	$w10,$w10,$w5
	ld.h	$w9,208($sp)
	ld.h	$w5,464($sp)
	addv.h	$w9,$w9,$w5
	ld.h	$w8,224($sp)
	ld.h	$w5,480($sp)
	addv.h	$w8,$w8,$w5
	ld.h	$w7,240($sp)
	ld.h	$w5,496($sp)
	addv.h	$w7,$w7,$w5
	ld.h	$w6,256($sp)
	ld.h	$w5,512($sp)
	addv.h	$w5,$w6,$w5
	vsrains_u.b	$w6,$w13,0
	vsrains_u.b	$w13,$w14,0
	vsrains_u.b	$w14,$w16,0
	vsrains_u.b	$w15,$w15,0
	vsrains_u.b	$w1,$w1,0
	daddiu	$2,$sp,592
	st.b	$w1,0($2)
	vsrains_u.b	$w2,$w2,0
	daddiu	$2,$sp,608
	st.b	$w2,0($2)
	vsrains_u.b	$w3,$w3,0
	daddiu	$2,$sp,624
	st.b	$w3,0($2)
	vsrains_u.b	$w4,$w4,0
	daddiu	$2,$sp,640
	st.b	$w4,0($2)
	vsrains_u.b	$w0,$w0,0
	daddiu	$2,$sp,656
	st.b	$w0,0($2)
	vsrains_u.b	$w12,$w12,0
	daddiu	$2,$sp,672
	st.b	$w12,0($2)
	vsrains_u.b	$w11,$w11,0
	daddiu	$2,$sp,688
	st.b	$w11,0($2)
	vsrains_u.b	$w10,$w10,0
	daddiu	$2,$sp,704
	st.b	$w10,0($2)
	vsrains_u.b	$w9,$w9,0
	daddiu	$2,$sp,720
	st.b	$w9,0($2)
	vsrains_u.b	$w8,$w8,0
	daddiu	$2,$sp,736
	st.b	$w8,0($2)
	vsrains_u.b	$w7,$w7,0
	daddiu	$2,$sp,752
	st.b	$w7,0($2)
	vsrains_u.b	$w5,$w5,0
	daddiu	$2,$sp,768
	st.b	$w5,0($2)
	sd	$23,0($sp)
	copy_s.d	$10,$w15[0]
	copy_s.d	$11,$w15[1]
	copy_s.d	$8,$w14[0]
	copy_s.d	$9,$w14[1]
	copy_s.d	$6,$w13[0]
	copy_s.d	$7,$w13[1]
	copy_s.d	$4,$w6[0]
	ld	$25,%call16(_Z5SD4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z5SD4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w6[1]

	sd	$19,0($sp)
	ld.d	$w4,640($sp)
	copy_s.d	$10,$w4[0]
	copy_s.d	$11,$w4[1]
	ld.d	$w3,624($sp)
	copy_s.d	$8,$w3[0]
	copy_s.d	$9,$w3[1]
	ld.d	$w2,608($sp)
	copy_s.d	$6,$w2[0]
	copy_s.d	$7,$w2[1]
	ld.d	$w1,592($sp)
	copy_s.d	$4,$w1[0]
	ld	$25,%call16(_Z5SD4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z5SD4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w1[1]

	sd	$21,0($sp)
	ld.d	$w1,704($sp)
	copy_s.d	$10,$w1[0]
	copy_s.d	$11,$w1[1]
	ld.d	$w1,688($sp)
	copy_s.d	$8,$w1[0]
	copy_s.d	$9,$w1[1]
	ld.d	$w1,672($sp)
	copy_s.d	$6,$w1[0]
	copy_s.d	$7,$w1[1]
	ld.d	$w0,656($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5SD4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z5SD4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$22,0($sp)
	ld.d	$w0,768($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w0,752($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.d	$w0,736($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,720($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5SD4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z5SD4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$2,576($sp)
	daddu	$3,$2,$17
	sd	$3,576($sp)
	ld	$2,528($sp)
	daddu	$3,$2,$17
	sd	$3,528($sp)
	ld	$2,536($sp)
	daddu	$3,$2,$17
	sd	$3,536($sp)
	ld	$2,544($sp)
	daddu	$3,$2,$17
	sd	$3,544($sp)
	daddu	$fp,$fp,$18
	ld	$2,552($sp)
	daddu	$3,$2,$18
	sd	$3,552($sp)
	ld	$2,560($sp)
	daddu	$3,$2,$18
	sd	$3,560($sp)
	ld	$2,568($sp)
	daddu	$2,$2,$18
	sd	$2,568($sp)
	daddu	$23,$23,$16
	daddu	$19,$19,$16
	daddu	$21,$21,$16
	addiu	$20,$20,-1
	bne	$20,$0,.L2248
	daddu	$22,$22,$16

	ld	$31,904($sp)
	ld	$fp,896($sp)
	ld	$28,888($sp)
	ld	$23,880($sp)
	ld	$22,872($sp)
	ld	$21,864($sp)
	ld	$20,856($sp)
	ld	$19,848($sp)
	ld	$18,840($sp)
	ld	$17,832($sp)
	ld	$16,824($sp)
	jr	$31
	daddiu	$sp,$sp,912

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll, .-_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll, @function
_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll:
	.frame	$sp,752,$31		# vars= 656, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-752
	sd	$31,744($sp)
	sd	$fp,736($sp)
	sd	$28,728($sp)
	sd	$23,720($sp)
	sd	$22,712($sp)
	sd	$21,704($sp)
	sd	$20,696($sp)
	sd	$19,688($sp)
	sd	$18,680($sp)
	sd	$17,672($sp)
	sd	$16,664($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll)))
	sd	$4,304($sp)
	sd	$6,312($sp)
	sd	$7,320($sp)
	daddu	$2,$6,$8
	sd	$2,256($sp)
	daddu	$2,$2,$8
	sd	$2,296($sp)
	daddu	$2,$2,$8
	sd	$2,264($sp)
	dsll	$2,$9,1
	daddu	$3,$7,$2
	sd	$3,288($sp)
	daddu	$3,$3,$2
	daddu	$6,$3,$2
	daddu	$2,$4,$5
	daddu	$4,$2,$5
	sd	$4,272($sp)
	daddu	$4,$4,$5
	sd	$4,280($sp)
	dsll	$4,$8,2
	dsll	$7,$9,3
	dsll	$21,$5,2
	dsll	$fp,$8,3
	dsll	$23,$9,4
	dsll	$22,$5,3
	li	$5,2			# 0x2
	sd	$5,328($sp)
	daddiu	$20,$sp,16
	daddiu	$19,$sp,48
	daddiu	$18,$sp,32
	daddiu	$17,$sp,80
	daddiu	$16,$sp,64
	sd	$20,336($sp)
	move	$20,$2
	sd	$19,344($sp)
	move	$19,$6
	sd	$18,352($sp)
	move	$18,$3
	sd	$17,360($sp)
	move	$17,$7
	sd	$16,368($sp)
	move	$16,$4
.L2252:
	ld	$6,336($sp)
	move	$5,$sp
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	ld	$4,312($sp)

	ld	$6,344($sp)
	ld	$5,352($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	ld	$4,256($sp)

	ld	$6,360($sp)
	ld	$5,368($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	ld	$4,296($sp)

	daddiu	$7,$sp,112
	sd	$7,512($sp)
	move	$6,$7
	daddiu	$8,$sp,96
	sd	$8,528($sp)
	move	$5,$8
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	ld	$4,264($sp)

	daddiu	$9,$sp,144
	sd	$9,544($sp)
	move	$6,$9
	daddiu	$10,$sp,128
	sd	$10,560($sp)
	move	$5,$10
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	ld	$4,320($sp)

	daddiu	$11,$sp,176
	sd	$11,576($sp)
	move	$6,$11
	daddiu	$12,$sp,160
	sd	$12,592($sp)
	move	$5,$12
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	ld	$4,288($sp)

	daddiu	$13,$sp,208
	sd	$13,608($sp)
	move	$6,$13
	daddiu	$14,$sp,192
	sd	$14,624($sp)
	move	$5,$14
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddiu	$15,$sp,240
	sd	$15,376($sp)
	move	$6,$15
	daddiu	$24,$sp,224
	sd	$24,640($sp)
	move	$5,$24
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$19

	ld.h	$w1,0($sp)
	ld.h	$w0,128($sp)
	addv.h	$w0,$w1,$w0
	st.h	$w0,384($sp)
	ld.h	$w1,16($sp)
	ld.h	$w0,144($sp)
	addv.h	$w1,$w1,$w0
	st.h	$w1,400($sp)
	ld.h	$w1,32($sp)
	ld.h	$w0,160($sp)
	addv.h	$w2,$w1,$w0
	st.h	$w2,416($sp)
	ld.h	$w1,48($sp)
	ld.h	$w0,176($sp)
	addv.h	$w3,$w1,$w0
	st.h	$w3,432($sp)
	ld.h	$w1,64($sp)
	ld.h	$w0,192($sp)
	addv.h	$w4,$w1,$w0
	st.h	$w4,448($sp)
	ld.h	$w1,80($sp)
	ld.h	$w0,208($sp)
	addv.h	$w5,$w1,$w0
	st.h	$w5,464($sp)
	ld.h	$w1,96($sp)
	ld.h	$w0,224($sp)
	addv.h	$w6,$w1,$w0
	st.h	$w6,480($sp)
	ld.h	$w1,112($sp)
	ld.h	$w0,240($sp)
	addv.h	$w7,$w1,$w0
	st.h	$w7,496($sp)
	ld	$6,336($sp)
	move	$5,$sp
	ld	$2,312($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$2,$16

	ld	$6,344($sp)
	ld	$5,352($sp)
	ld	$3,256($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$3,$16

	ld	$6,360($sp)
	ld	$5,368($sp)
	ld	$4,296($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$4,$16

	ld	$6,512($sp)
	ld	$5,528($sp)
	ld	$7,264($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$7,$16

	ld	$6,544($sp)
	ld	$5,560($sp)
	ld	$8,320($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$8,$17

	ld	$6,576($sp)
	ld	$5,592($sp)
	ld	$9,288($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$9,$17

	ld	$6,608($sp)
	ld	$5,624($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$18,$17

	ld	$6,376($sp)
	ld	$5,640($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$19,$17

	ld.h	$w1,0($sp)
	ld.h	$w0,128($sp)
	addv.h	$w8,$w1,$w0
	st.h	$w8,512($sp)
	ld.h	$w1,16($sp)
	ld.h	$w0,144($sp)
	addv.h	$w9,$w1,$w0
	st.h	$w9,528($sp)
	ld.h	$w1,32($sp)
	ld.h	$w0,160($sp)
	addv.h	$w10,$w1,$w0
	st.h	$w10,544($sp)
	ld.h	$w1,48($sp)
	ld.h	$w0,176($sp)
	addv.h	$w11,$w1,$w0
	st.h	$w11,560($sp)
	ld.h	$w1,64($sp)
	ld.h	$w0,192($sp)
	addv.h	$w12,$w1,$w0
	st.h	$w12,576($sp)
	ld.h	$w1,80($sp)
	ld.h	$w0,208($sp)
	addv.h	$w13,$w1,$w0
	st.h	$w13,592($sp)
	ld.h	$w1,96($sp)
	ld.h	$w0,224($sp)
	addv.h	$w14,$w1,$w0
	st.h	$w14,608($sp)
	ld.h	$w1,112($sp)
	ld.h	$w0,240($sp)
	addv.h	$w15,$w1,$w0
	st.h	$w15,624($sp)
	ld.h	$w0,384($sp)
	vsrains_u.b	$w0,$w0,0
	ld.h	$w1,400($sp)
	vsrains_u.b	$w1,$w1,0
	ld.h	$w2,416($sp)
	vsrains_u.b	$w2,$w2,0
	st.b	$w2,384($sp)
	ld.h	$w3,432($sp)
	vsrains_u.b	$w3,$w3,0
	st.b	$w3,400($sp)
	ld.h	$w4,448($sp)
	vsrains_u.b	$w4,$w4,0
	st.b	$w4,416($sp)
	ld.h	$w5,464($sp)
	vsrains_u.b	$w5,$w5,0
	st.b	$w5,432($sp)
	ld.h	$w6,480($sp)
	vsrains_u.b	$w6,$w6,0
	st.b	$w6,448($sp)
	ld.h	$w7,496($sp)
	vsrains_u.b	$w7,$w7,0
	st.b	$w7,464($sp)
	ld	$8,304($sp)
	copy_s.d	$6,$w1[0]
	copy_s.d	$7,$w1[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5SD2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z5SD2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	move	$8,$20
	ld.d	$w0,400($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,384($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5SD2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z5SD2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$8,272($sp)
	ld.d	$w0,432($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,416($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5SD2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z5SD2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$8,280($sp)
	ld.d	$w0,464($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,448($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5SD2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z5SD2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld.h	$w8,512($sp)
	vsrains_u.b	$w0,$w8,0
	ld.h	$w9,528($sp)
	vsrains_u.b	$w1,$w9,0
	ld.h	$w10,544($sp)
	vsrains_u.b	$w2,$w10,0
	st.b	$w2,384($sp)
	ld.h	$w11,560($sp)
	vsrains_u.b	$w3,$w11,0
	st.b	$w3,400($sp)
	ld.h	$w12,576($sp)
	vsrains_u.b	$w4,$w12,0
	st.b	$w4,416($sp)
	ld.h	$w13,592($sp)
	vsrains_u.b	$w5,$w13,0
	st.b	$w5,432($sp)
	ld.h	$w14,608($sp)
	vsrains_u.b	$w6,$w14,0
	st.b	$w6,448($sp)
	ld.h	$w15,624($sp)
	vsrains_u.b	$w7,$w15,0
	st.b	$w7,464($sp)
	ld	$5,304($sp)
	daddu	$8,$5,$21
	copy_s.d	$6,$w1[0]
	copy_s.d	$7,$w1[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5SD2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z5SD2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$8,$20,$21
	ld.d	$w0,400($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,384($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5SD2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z5SD2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$6,272($sp)
	daddu	$8,$6,$21
	ld.d	$w0,432($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,416($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5SD2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z5SD2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$10,280($sp)
	daddu	$8,$10,$21
	ld.d	$w0,464($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,448($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5SD2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z5SD2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$11,328($sp)
	addiu	$11,$11,-1
	sd	$11,328($sp)
	ld	$2,312($sp)
	daddu	$2,$2,$fp
	sd	$2,312($sp)
	ld	$3,256($sp)
	daddu	$2,$3,$fp
	sd	$2,256($sp)
	ld	$4,296($sp)
	daddu	$2,$4,$fp
	sd	$2,296($sp)
	ld	$7,264($sp)
	daddu	$2,$7,$fp
	sd	$2,264($sp)
	ld	$8,320($sp)
	daddu	$2,$8,$23
	sd	$2,320($sp)
	ld	$9,288($sp)
	daddu	$2,$9,$23
	sd	$2,288($sp)
	daddu	$18,$18,$23
	daddu	$19,$19,$23
	ld	$5,304($sp)
	daddu	$2,$5,$22
	sd	$2,304($sp)
	daddu	$20,$20,$22
	ld	$6,272($sp)
	daddu	$2,$6,$22
	sd	$2,272($sp)
	ld	$10,280($sp)
	daddu	$2,$10,$22
	bne	$11,$0,.L2252
	sd	$2,280($sp)

	ld	$31,744($sp)
	ld	$fp,736($sp)
	ld	$28,728($sp)
	ld	$23,720($sp)
	ld	$22,712($sp)
	ld	$21,704($sp)
	ld	$20,696($sp)
	ld	$19,688($sp)
	ld	$18,680($sp)
	ld	$17,672($sp)
	ld	$16,664($sp)
	jr	$31
	daddiu	$sp,$sp,752

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll, .-_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll, @function
_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll:
	.frame	$sp,208,$31		# vars= 160, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-208
	sd	$31,200($sp)
	sd	$28,192($sp)
	sd	$19,184($sp)
	sd	$18,176($sp)
	sd	$17,168($sp)
	sd	$16,160($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll)))
	move	$17,$4
	move	$16,$5
	move	$4,$6
	move	$18,$7
	move	$5,$8
	move	$19,$9
	daddiu	$9,$sp,48
	daddiu	$8,$sp,32
	daddiu	$7,$sp,16
	ld	$25,%call16(_Z3LW4PKhlPDv4_iS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LW4PKhlPDv4_iS2_S2_S2_
1:	jalr	$25
	move	$6,$sp

	ld.w	$w1,32($sp)
	ld.w	$w0,0($sp)
	insve.w	$w0[1],$w1[0]
	st.w	$w0,0($sp)
	ld.w	$w1,48($sp)
	ld.w	$w0,16($sp)
	insve.w	$w0[1],$w1[0]
	st.w	$w0,16($sp)
	ld.b	$w0,0($sp)
	vextb_u.h	$w0,$w0
	st.h	$w0,128($sp)
	ld.b	$w0,16($sp)
	vextb_u.h	$w1,$w0
	st.h	$w1,144($sp)
	daddiu	$9,$sp,112
	daddiu	$8,$sp,96
	daddiu	$7,$sp,80
	daddiu	$6,$sp,64
	dsll	$5,$19,1
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$18

	ld.d	$w1,96($sp)
	ld.d	$w0,64($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,64($sp)
	ld.d	$w1,112($sp)
	ld.d	$w0,80($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,80($sp)
	ld.h	$w1,64($sp)
	ld.h	$w0,128($sp)
	addv.h	$w1,$w0,$w1
	ld.h	$w0,80($sp)
	ld.h	$w2,144($sp)
	addv.h	$w0,$w2,$w0
	vsrains_u.b	$w1,$w1,0
	vsrains_u.b	$w0,$w0,0
	move	$9,$16
	move	$8,$17
	st.w	$w0,144($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	st.w	$w1,128($sp)
	copy_s.d	$4,$w1[0]
	ld	$25,%call16(_Z3SW2Dv4_iS_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z3SW2Dv4_iS_Phl
1:	jalr	$25
	copy_s.d	$5,$w1[1]

	move	$9,$16
	dlsa	$8,$16,$17,1
	ld.w	$w0,144($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.w	$w1,128($sp)
	copy_s.d	$4,$w1[0]
	ld	$25,%call16(_Z5SW2_1Dv4_iS_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z5SW2_1Dv4_iS_Phl
1:	jalr	$25
	copy_s.d	$5,$w1[1]

	ld	$31,200($sp)
	ld	$28,192($sp)
	ld	$19,184($sp)
	ld	$18,176($sp)
	ld	$17,168($sp)
	ld	$16,160($sp)
	jr	$31
	daddiu	$sp,$sp,208

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll, .-_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll
	.type	_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll, @function
_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll:
	.frame	$sp,512,$31		# vars= 416, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-512
	sd	$31,504($sp)
	sd	$fp,496($sp)
	sd	$28,488($sp)
	sd	$23,480($sp)
	sd	$22,472($sp)
	sd	$21,464($sp)
	sd	$20,456($sp)
	sd	$19,448($sp)
	sd	$18,440($sp)
	sd	$17,432($sp)
	sd	$16,424($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll)))
	move	$18,$4
	move	$17,$6
	move	$16,$7
	dsll	$2,$5,1
	sd	$2,256($sp)
	dsll	$2,$5,2
	sd	$2,264($sp)
	sd	$8,280($sp)
	dsll	$20,$8,1
	daddu	$19,$20,$8
	dsll	$3,$8,2
	sd	$3,400($sp)
	daddu	$3,$9,$19
	sd	$3,408($sp)
	dsll	$3,$5,3
	sd	$3,296($sp)
	li	$3,4			# 0x4
	sd	$3,272($sp)
	daddiu	$fp,$sp,16
	daddiu	$23,$sp,32
	daddiu	$2,$8,8
	sd	$2,288($sp)
	daddiu	$22,$sp,48
	daddiu	$21,$sp,64
.L2258:
	move	$5,$sp
	ld	$25,%call16(_Z9LD_H_BtoHPKhPDv8_t)($28)
	.reloc	1f,R_MIPS_JALR,_Z9LD_H_BtoHPKhPDv8_t
1:	jalr	$25
	move	$4,$17

	move	$5,$fp
	ld	$25,%call16(_Z9LD_H_BtoHPKhPDv8_t)($28)
	.reloc	1f,R_MIPS_JALR,_Z9LD_H_BtoHPKhPDv8_t
1:	jalr	$25
	daddiu	$4,$17,8

	move	$5,$23
	ld	$2,280($sp)
	ld	$25,%call16(_Z9LD_H_BtoHPKhPDv8_t)($28)
	.reloc	1f,R_MIPS_JALR,_Z9LD_H_BtoHPKhPDv8_t
1:	jalr	$25
	daddu	$4,$17,$2

	move	$5,$22
	ld	$3,288($sp)
	ld	$25,%call16(_Z9LD_H_BtoHPKhPDv8_t)($28)
	.reloc	1f,R_MIPS_JALR,_Z9LD_H_BtoHPKhPDv8_t
1:	jalr	$25
	daddu	$4,$17,$3

	move	$5,$21
	ld	$25,%call16(_Z9LD_H_BtoHPKhPDv8_t)($28)
	.reloc	1f,R_MIPS_JALR,_Z9LD_H_BtoHPKhPDv8_t
1:	jalr	$25
	daddu	$4,$17,$20

	daddiu	$2,$20,8
	daddiu	$5,$sp,80
	sd	$2,320($sp)
	ld	$25,%call16(_Z9LD_H_BtoHPKhPDv8_t)($28)
	.reloc	1f,R_MIPS_JALR,_Z9LD_H_BtoHPKhPDv8_t
1:	jalr	$25
	daddu	$4,$17,$2

	daddiu	$5,$sp,96
	ld	$25,%call16(_Z9LD_H_BtoHPKhPDv8_t)($28)
	.reloc	1f,R_MIPS_JALR,_Z9LD_H_BtoHPKhPDv8_t
1:	jalr	$25
	daddu	$4,$17,$19

	daddiu	$2,$19,8
	daddiu	$5,$sp,112
	sd	$2,304($sp)
	ld	$25,%call16(_Z9LD_H_BtoHPKhPDv8_t)($28)
	.reloc	1f,R_MIPS_JALR,_Z9LD_H_BtoHPKhPDv8_t
1:	jalr	$25
	daddu	$4,$17,$2

	daddiu	$5,$sp,128
	ld	$25,%call16(_Z9LD_H_BtoHPKhPDv8_t)($28)
	.reloc	1f,R_MIPS_JALR,_Z9LD_H_BtoHPKhPDv8_t
1:	jalr	$25
	move	$4,$16

	daddiu	$5,$sp,144
	ld	$25,%call16(_Z9LD_H_BtoHPKhPDv8_t)($28)
	.reloc	1f,R_MIPS_JALR,_Z9LD_H_BtoHPKhPDv8_t
1:	jalr	$25
	daddiu	$4,$16,8

	daddiu	$5,$sp,160
	ld	$2,280($sp)
	ld	$25,%call16(_Z9LD_H_BtoHPKhPDv8_t)($28)
	.reloc	1f,R_MIPS_JALR,_Z9LD_H_BtoHPKhPDv8_t
1:	jalr	$25
	daddu	$4,$16,$2

	daddiu	$5,$sp,176
	ld	$3,288($sp)
	ld	$25,%call16(_Z9LD_H_BtoHPKhPDv8_t)($28)
	.reloc	1f,R_MIPS_JALR,_Z9LD_H_BtoHPKhPDv8_t
1:	jalr	$25
	daddu	$4,$16,$3

	daddiu	$5,$sp,192
	ld	$25,%call16(_Z9LD_H_BtoHPKhPDv8_t)($28)
	.reloc	1f,R_MIPS_JALR,_Z9LD_H_BtoHPKhPDv8_t
1:	jalr	$25
	daddu	$4,$16,$20

	daddiu	$5,$sp,208
	ld	$4,320($sp)
	ld	$25,%call16(_Z9LD_H_BtoHPKhPDv8_t)($28)
	.reloc	1f,R_MIPS_JALR,_Z9LD_H_BtoHPKhPDv8_t
1:	jalr	$25
	daddu	$4,$16,$4

	daddiu	$5,$sp,224
	ld	$25,%call16(_Z9LD_H_BtoHPKhPDv8_t)($28)
	.reloc	1f,R_MIPS_JALR,_Z9LD_H_BtoHPKhPDv8_t
1:	jalr	$25
	daddu	$4,$16,$19

	daddiu	$5,$sp,240
	ld	$6,304($sp)
	ld	$25,%call16(_Z9LD_H_BtoHPKhPDv8_t)($28)
	.reloc	1f,R_MIPS_JALR,_Z9LD_H_BtoHPKhPDv8_t
1:	jalr	$25
	daddu	$4,$16,$6

	ld.h	$w0,0($sp)
	ld.h	$w1,128($sp)
	subv.h	$w0,$w0,$w1
	ld.h	$w1,16($sp)
	ld.h	$w2,144($sp)
	subv.h	$w1,$w1,$w2
	ld.h	$w3,32($sp)
	ld.h	$w2,160($sp)
	subv.h	$w2,$w3,$w2
	st.h	$w2,304($sp)
	ld.h	$w3,48($sp)
	ld.h	$w2,176($sp)
	subv.h	$w3,$w3,$w2
	st.h	$w3,320($sp)
	ld.h	$w3,64($sp)
	ld.h	$w2,192($sp)
	subv.h	$w4,$w3,$w2
	st.h	$w4,336($sp)
	ld.h	$w3,80($sp)
	ld.h	$w2,208($sp)
	subv.h	$w5,$w3,$w2
	st.h	$w5,352($sp)
	ld.h	$w3,96($sp)
	ld.h	$w2,224($sp)
	subv.h	$w6,$w3,$w2
	st.h	$w6,368($sp)
	ld.h	$w3,112($sp)
	ld.h	$w2,240($sp)
	subv.h	$w7,$w3,$w2
	st.h	$w7,384($sp)
	move	$8,$18
	copy_s.d	$6,$w1[0]
	copy_s.d	$7,$w1[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$2,256($sp)
	daddu	$8,$18,$2
	ld.d	$w0,320($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,304($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$3,264($sp)
	daddu	$8,$18,$3
	ld.d	$w0,352($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,336($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$2,256($sp)
	ld	$3,264($sp)
	daddu	$8,$2,$3
	daddu	$8,$18,$8
	ld.d	$w0,384($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.d	$w0,368($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$2,272($sp)
	addiu	$2,$2,-1
	sd	$2,272($sp)
	ld	$3,296($sp)
	daddu	$18,$18,$3
	ld	$3,400($sp)
	daddu	$17,$17,$3
	ld	$3,408($sp)
	bne	$2,$0,.L2258
	daddu	$16,$16,$3

	ld	$31,504($sp)
	ld	$fp,496($sp)
	ld	$28,488($sp)
	ld	$23,480($sp)
	ld	$22,472($sp)
	ld	$21,464($sp)
	ld	$20,456($sp)
	ld	$19,448($sp)
	ld	$18,440($sp)
	ld	$17,432($sp)
	ld	$16,424($sp)
	jr	$31
	daddiu	$sp,$sp,512

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll
	.size	_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll, .-_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls
	.type	_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls, @function
_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls:
	.frame	$sp,64,$31		# vars= 16, regs= 4/0, args= 16, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	sd	$17,40($sp)
	sd	$16,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls)))
	move	$16,$4
	move	$17,$5
	ldi.d	$w0,0
	insert.h	$w0[0],$6
	insert.h	$w0[4],$6
	shf.h	$w0,$w0,0
	sd	$4,0($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	st.d	$w0,16($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	dsll	$17,$17,1
	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V4_HDv2_xS_S_S_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V4_HDv2_xS_S_S_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$17,40($sp)
	ld	$16,32($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls
	.size	_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls, .-_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls
	.type	_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls, @function
_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls:
	.frame	$sp,48,$31		# vars= 16, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$17,24($sp)
	sd	$16,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls)))
	move	$16,$4
	move	$17,$5
	ldi.d	$w0,0
	insert.h	$w0[0],$6
	insert.h	$w0[4],$6
	shf.h	$w0,$w0,0
	move	$8,$4
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	st.d	$w0,0($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	dsll	$17,$17,1
	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,0($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,0($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,0($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,0($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,0($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,0($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,0($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,0($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,0($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,0($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,0($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,0($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,0($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$16,$16,$17
	move	$8,$16
	ld.d	$w0,0($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	daddu	$8,$16,$17
	ld.d	$w0,0($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z7ST_V2_HDv2_xS_Ph)($28)
	.reloc	1f,R_MIPS_JALR,_Z7ST_V2_HDv2_xS_Ph
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls
	.size	_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls, .-_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls
	.type	_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls, @function
_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls:
	.frame	$sp,80,$31		# vars= 16, regs= 5/0, args= 16, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$31,72($sp)
	sd	$28,64($sp)
	sd	$18,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls)))
	move	$17,$4
	move	$16,$5
	ldi.d	$w0,0
	insert.h	$w0[0],$6
	insert.h	$w0[4],$6
	shf.h	$w0,$w0,0
	dsll	$18,$5,1
	sd	$18,8($sp)
	sd	$4,0($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	st.d	$w0,16($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5ST_V4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z5ST_V4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	sd	$18,8($sp)
	dlsa	$16,$16,$17,3
	sd	$16,0($sp)
	ld.d	$w0,16($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z5ST_V4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z5ST_V4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$31,72($sp)
	ld	$28,64($sp)
	ld	$18,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls
	.size	_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls, .-_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls
	.type	_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls, @function
_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls:
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls)))
	ldi.d	$w0,0
	insert.h	$w0[0],$6
	insert.h	$w0[4],$6
	shf.h	$w0,$w0,0
	dsll	$5,$5,1
	sd	$5,8($sp)
	sd	$4,0($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z3SD4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z3SD4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$31,24($sp)
	ld	$28,16($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls
	.size	_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls, .-_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l
	.type	_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l, @function
_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l:
	.frame	$sp,432,$31		# vars= 336, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-432
	sd	$31,424($sp)
	sd	$fp,416($sp)
	sd	$28,408($sp)
	sd	$23,400($sp)
	sd	$22,392($sp)
	sd	$21,384($sp)
	sd	$20,376($sp)
	sd	$19,368($sp)
	sd	$18,360($sp)
	sd	$17,352($sp)
	sd	$16,344($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l)))
	move	$17,$4
	move	$fp,$5
	move	$16,$6
	sd	$7,320($sp)
	ldi.w	$w0,0
	st.w	$w0,256($sp)
	st.w	$w0,272($sp)
	st.w	$w0,288($sp)
	st.w	$w0,304($sp)
	li	$18,64			# 0x40
	daddiu	$23,$sp,48
	daddiu	$22,$sp,32
	daddiu	$21,$sp,16
	daddiu	$20,$sp,112
	daddiu	$19,$sp,96
.L2270:
	move	$8,$23
	move	$7,$22
	move	$6,$21
	move	$5,$sp
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	move	$8,$20
	move	$7,$19
	daddiu	$6,$sp,80
	daddiu	$5,$sp,64
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	daddiu	$4,$17,32

	daddiu	$8,$sp,176
	daddiu	$7,$sp,160
	daddiu	$6,$sp,144
	daddiu	$5,$sp,128
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	daddiu	$8,$sp,240
	daddiu	$7,$sp,224
	daddiu	$6,$sp,208
	daddiu	$5,$sp,192
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	daddiu	$4,$16,32

	ld.h	$w7,0($sp)
	ld.h	$w0,128($sp)
	subv.h	$w7,$w7,$w0
	ld.h	$w6,16($sp)
	ld.h	$w0,144($sp)
	subv.h	$w6,$w6,$w0
	ld.h	$w5,32($sp)
	ld.h	$w0,160($sp)
	subv.h	$w5,$w5,$w0
	ld.h	$w4,48($sp)
	ld.h	$w0,176($sp)
	subv.h	$w4,$w4,$w0
	ld.h	$w3,64($sp)
	ld.h	$w0,192($sp)
	subv.h	$w3,$w3,$w0
	ld.h	$w2,80($sp)
	ld.h	$w0,208($sp)
	subv.h	$w2,$w2,$w0
	ld.h	$w1,96($sp)
	ld.h	$w0,224($sp)
	subv.h	$w1,$w1,$w0
	ld.h	$w0,112($sp)
	ld.h	$w8,240($sp)
	subv.h	$w0,$w0,$w8
	ld.w	$w8,256($sp)
	dpadd_s.w	$w8,$w7,$w7
	move.v	$w7,$w8
	ld.w	$w8,272($sp)
	dpadd_s.w	$w8,$w6,$w6
	move.v	$w6,$w8
	ld.w	$w8,288($sp)
	dpadd_s.w	$w8,$w5,$w5
	move.v	$w5,$w8
	ld.w	$w8,304($sp)
	dpadd_s.w	$w8,$w4,$w4
	move.v	$w4,$w8
	dpadd_s.w	$w7,$w3,$w3
	st.w	$w7,256($sp)
	dpadd_s.w	$w6,$w2,$w2
	st.w	$w6,272($sp)
	dpadd_s.w	$w5,$w1,$w1
	st.w	$w5,288($sp)
	dpadd_s.w	$w4,$w0,$w0
	st.w	$w4,304($sp)
	daddu	$17,$17,$fp
	ld	$2,320($sp)
	addiu	$18,$18,-1
	bne	$18,$0,.L2270
	daddu	$16,$16,$2

	addv.w	$w0,$w7,$w6
	addv.w	$w1,$w5,$w4
	addv.w	$w0,$w0,$w1
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[1]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[2]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	ld	$31,424($sp)
	ld	$fp,416($sp)
	ld	$28,408($sp)
	ld	$23,400($sp)
	ld	$22,392($sp)
	ld	$21,384($sp)
	ld	$20,376($sp)
	ld	$19,368($sp)
	ld	$18,360($sp)
	ld	$17,352($sp)
	ld	$16,344($sp)
	jr	$31
	daddiu	$sp,$sp,432

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l
	.size	_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l, .-_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l
	.type	_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l, @function
_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l:
	.frame	$sp,448,$31		# vars= 352, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-448
	sd	$31,440($sp)
	sd	$fp,432($sp)
	sd	$28,424($sp)
	sd	$23,416($sp)
	sd	$22,408($sp)
	sd	$21,400($sp)
	sd	$20,392($sp)
	sd	$19,384($sp)
	sd	$18,376($sp)
	sd	$17,368($sp)
	sd	$16,360($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l)))
	move	$17,$4
	move	$19,$5
	move	$16,$6
	sd	$7,336($sp)
	ldi.w	$w0,0
	st.w	$w0,256($sp)
	st.w	$w0,272($sp)
	st.w	$w0,288($sp)
	st.w	$w0,304($sp)
	dsll	$2,$5,1
	sd	$2,320($sp)
	dsll	$2,$7,1
	sd	$2,328($sp)
	li	$18,16			# 0x10
	daddiu	$fp,$sp,48
	daddiu	$23,$sp,32
	daddiu	$22,$sp,16
	daddiu	$21,$sp,112
	daddiu	$20,$sp,96
.L2274:
	move	$8,$fp
	move	$7,$23
	move	$6,$22
	move	$5,$sp
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	move	$8,$21
	move	$7,$20
	daddiu	$6,$sp,80
	daddiu	$5,$sp,64
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	daddu	$4,$17,$19

	daddiu	$8,$sp,176
	daddiu	$7,$sp,160
	daddiu	$6,$sp,144
	daddiu	$5,$sp,128
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	daddiu	$8,$sp,240
	daddiu	$7,$sp,224
	daddiu	$6,$sp,208
	daddiu	$5,$sp,192
	ld	$2,336($sp)
	ld	$25,%call16(_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
1:	jalr	$25
	daddu	$4,$16,$2

	ld.h	$w7,0($sp)
	ld.h	$w0,128($sp)
	subv.h	$w7,$w7,$w0
	ld.h	$w6,16($sp)
	ld.h	$w0,144($sp)
	subv.h	$w6,$w6,$w0
	ld.h	$w5,32($sp)
	ld.h	$w0,160($sp)
	subv.h	$w5,$w5,$w0
	ld.h	$w4,48($sp)
	ld.h	$w0,176($sp)
	subv.h	$w4,$w4,$w0
	ld.h	$w3,64($sp)
	ld.h	$w0,192($sp)
	subv.h	$w3,$w3,$w0
	ld.h	$w2,80($sp)
	ld.h	$w0,208($sp)
	subv.h	$w2,$w2,$w0
	ld.h	$w1,96($sp)
	ld.h	$w0,224($sp)
	subv.h	$w1,$w1,$w0
	ld.h	$w0,112($sp)
	ld.h	$w8,240($sp)
	subv.h	$w0,$w0,$w8
	ld.w	$w8,256($sp)
	dpadd_s.w	$w8,$w7,$w7
	move.v	$w7,$w8
	ld.w	$w8,272($sp)
	dpadd_s.w	$w8,$w6,$w6
	move.v	$w6,$w8
	ld.w	$w8,288($sp)
	dpadd_s.w	$w8,$w5,$w5
	move.v	$w5,$w8
	ld.w	$w8,304($sp)
	dpadd_s.w	$w8,$w4,$w4
	move.v	$w4,$w8
	dpadd_s.w	$w7,$w3,$w3
	st.w	$w7,256($sp)
	dpadd_s.w	$w6,$w2,$w2
	st.w	$w6,272($sp)
	dpadd_s.w	$w5,$w1,$w1
	st.w	$w5,288($sp)
	dpadd_s.w	$w4,$w0,$w0
	st.w	$w4,304($sp)
	ld	$2,320($sp)
	daddu	$17,$17,$2
	ld	$2,328($sp)
	addiu	$18,$18,-1
	bne	$18,$0,.L2274
	daddu	$16,$16,$2

	addv.w	$w0,$w7,$w6
	addv.w	$w1,$w5,$w4
	addv.w	$w0,$w0,$w1
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[1]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[2]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	ld	$31,440($sp)
	ld	$fp,432($sp)
	ld	$28,424($sp)
	ld	$23,416($sp)
	ld	$22,408($sp)
	ld	$21,400($sp)
	ld	$20,392($sp)
	ld	$19,384($sp)
	ld	$18,376($sp)
	ld	$17,368($sp)
	ld	$16,360($sp)
	jr	$31
	daddiu	$sp,$sp,448

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l
	.size	_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l, .-_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l
	.type	_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l, @function
_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l:
	.frame	$sp,480,$31		# vars= 384, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-480
	sd	$31,472($sp)
	sd	$fp,464($sp)
	sd	$28,456($sp)
	sd	$23,448($sp)
	sd	$22,440($sp)
	sd	$21,432($sp)
	sd	$20,424($sp)
	sd	$19,416($sp)
	sd	$18,408($sp)
	sd	$17,400($sp)
	sd	$16,392($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l)))
	move	$17,$4
	move	$19,$5
	move	$16,$6
	sd	$7,368($sp)
	ldi.w	$w0,0
	st.w	$w0,256($sp)
	st.w	$w0,272($sp)
	st.w	$w0,288($sp)
	st.w	$w0,304($sp)
	dsll	$2,$5,1
	sd	$2,320($sp)
	daddu	$2,$2,$5
	sd	$2,328($sp)
	dsll	$2,$7,1
	sd	$2,336($sp)
	daddu	$2,$2,$7
	sd	$2,344($sp)
	dsll	$2,$5,2
	sd	$2,352($sp)
	dsll	$2,$7,2
	sd	$2,360($sp)
	li	$18,4			# 0x4
	daddiu	$fp,$sp,16
	daddiu	$23,$sp,48
	daddiu	$22,$sp,32
	daddiu	$21,$sp,80
	daddiu	$20,$sp,64
.L2278:
	move	$6,$fp
	move	$5,$sp
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$17

	move	$6,$23
	move	$5,$22
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$17,$19

	move	$6,$21
	move	$5,$20
	ld	$2,320($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$17,$2

	daddiu	$6,$sp,112
	daddiu	$5,$sp,96
	ld	$2,328($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$17,$2

	daddiu	$6,$sp,144
	daddiu	$5,$sp,128
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	move	$4,$16

	daddiu	$6,$sp,176
	daddiu	$5,$sp,160
	ld	$2,368($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$16,$2

	daddiu	$6,$sp,208
	daddiu	$5,$sp,192
	ld	$2,336($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$16,$2

	daddiu	$6,$sp,240
	daddiu	$5,$sp,224
	ld	$2,344($sp)
	ld	$25,%call16(_Z10LD2_H_BtoHPKhPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z10LD2_H_BtoHPKhPDv8_tS2_
1:	jalr	$25
	daddu	$4,$16,$2

	ld.h	$w7,0($sp)
	ld.h	$w0,128($sp)
	subv.h	$w7,$w7,$w0
	ld.h	$w6,16($sp)
	ld.h	$w0,144($sp)
	subv.h	$w6,$w6,$w0
	ld.h	$w5,32($sp)
	ld.h	$w0,160($sp)
	subv.h	$w5,$w5,$w0
	ld.h	$w4,48($sp)
	ld.h	$w0,176($sp)
	subv.h	$w4,$w4,$w0
	ld.h	$w3,64($sp)
	ld.h	$w0,192($sp)
	subv.h	$w3,$w3,$w0
	ld.h	$w2,80($sp)
	ld.h	$w0,208($sp)
	subv.h	$w2,$w2,$w0
	ld.h	$w1,96($sp)
	ld.h	$w0,224($sp)
	subv.h	$w1,$w1,$w0
	ld.h	$w0,112($sp)
	ld.h	$w8,240($sp)
	subv.h	$w0,$w0,$w8
	ld.w	$w8,256($sp)
	dpadd_s.w	$w8,$w7,$w7
	move.v	$w7,$w8
	ld.w	$w8,272($sp)
	dpadd_s.w	$w8,$w6,$w6
	move.v	$w6,$w8
	ld.w	$w8,288($sp)
	dpadd_s.w	$w8,$w5,$w5
	move.v	$w5,$w8
	ld.w	$w8,304($sp)
	dpadd_s.w	$w8,$w4,$w4
	move.v	$w4,$w8
	dpadd_s.w	$w7,$w3,$w3
	st.w	$w7,256($sp)
	dpadd_s.w	$w6,$w2,$w2
	st.w	$w6,272($sp)
	dpadd_s.w	$w5,$w1,$w1
	st.w	$w5,288($sp)
	dpadd_s.w	$w4,$w0,$w0
	st.w	$w4,304($sp)
	ld	$2,352($sp)
	daddu	$17,$17,$2
	ld	$2,360($sp)
	addiu	$18,$18,-1
	bne	$18,$0,.L2278
	daddu	$16,$16,$2

	addv.w	$w0,$w7,$w6
	addv.w	$w1,$w5,$w4
	addv.w	$w0,$w0,$w1
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[1]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[2]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	ld	$31,472($sp)
	ld	$fp,464($sp)
	ld	$28,456($sp)
	ld	$23,448($sp)
	ld	$22,440($sp)
	ld	$21,432($sp)
	ld	$20,424($sp)
	ld	$19,416($sp)
	ld	$18,408($sp)
	ld	$17,400($sp)
	ld	$16,392($sp)
	jr	$31
	daddiu	$sp,$sp,480

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l
	.size	_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l, .-_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l
	.type	_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l, @function
_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l:
	.frame	$sp,304,$31		# vars= 256, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-304
	sd	$31,296($sp)
	sd	$28,288($sp)
	sd	$19,280($sp)
	sd	$18,272($sp)
	sd	$17,264($sp)
	sd	$16,256($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l)))
	move	$19,$4
	move	$18,$5
	move	$17,$6
	move	$16,$7
	daddiu	$9,$sp,48
	daddiu	$8,$sp,32
	daddiu	$7,$sp,16
	ld	$25,%call16(_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$6,$sp

	daddiu	$9,$sp,112
	daddiu	$8,$sp,96
	daddiu	$7,$sp,80
	daddiu	$6,$sp,64
	move	$5,$16
	ld	$25,%call16(_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	daddiu	$9,$sp,176
	daddiu	$8,$sp,160
	daddiu	$7,$sp,144
	daddiu	$6,$sp,128
	move	$5,$18
	ld	$25,%call16(_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
1:	jalr	$25
	dlsa	$4,$18,$19,2

	daddiu	$9,$sp,240
	daddiu	$8,$sp,224
	daddiu	$7,$sp,208
	daddiu	$6,$sp,192
	move	$5,$16
	ld	$25,%call16(_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
1:	jalr	$25
	dlsa	$4,$16,$17,2

	ld.h	$w1,0($sp)
	ld.h	$w0,64($sp)
	subv.h	$w1,$w1,$w0
	ld.h	$w0,16($sp)
	ld.h	$w2,80($sp)
	subv.h	$w0,$w0,$w2
	ld.h	$w2,32($sp)
	ld.h	$w3,96($sp)
	subv.h	$w2,$w2,$w3
	ld.h	$w3,48($sp)
	ld.h	$w4,112($sp)
	subv.h	$w3,$w3,$w4
	ld.h	$w7,128($sp)
	ld.h	$w4,192($sp)
	subv.h	$w7,$w7,$w4
	ld.h	$w6,144($sp)
	ld.h	$w4,208($sp)
	subv.h	$w6,$w6,$w4
	ld.h	$w5,160($sp)
	ld.h	$w4,224($sp)
	subv.h	$w5,$w5,$w4
	ld.h	$w4,176($sp)
	ld.h	$w8,240($sp)
	subv.h	$w4,$w4,$w8
	dotp_s.w	$w1,$w1,$w1
	dotp_s.w	$w0,$w0,$w0
	dotp_s.w	$w2,$w2,$w2
	dotp_s.w	$w3,$w3,$w3
	dpadd_s.w	$w1,$w7,$w7
	dpadd_s.w	$w0,$w6,$w6
	dpadd_s.w	$w2,$w5,$w5
	dpadd_s.w	$w3,$w4,$w4
	addv.w	$w0,$w1,$w0
	addv.w	$w2,$w2,$w3
	addv.w	$w0,$w0,$w2
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[1]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[2]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	ld	$31,296($sp)
	ld	$28,288($sp)
	ld	$19,280($sp)
	ld	$18,272($sp)
	ld	$17,264($sp)
	ld	$16,256($sp)
	jr	$31
	daddiu	$sp,$sp,304

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l
	.size	_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l, .-_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l
	.type	_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l, @function
_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l:
	.frame	$sp,96,$31		# vars= 64, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$31,88($sp)
	sd	$28,80($sp)
	sd	$17,72($sp)
	sd	$16,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l)))
	move	$16,$6
	move	$17,$7
	daddiu	$7,$sp,16
	ld	$25,%call16(_Z9L_4x4_B_HPKhlPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z9L_4x4_B_HPKhlPDv8_tS2_
1:	jalr	$25
	move	$6,$sp

	daddiu	$7,$sp,48
	daddiu	$6,$sp,32
	move	$5,$17
	ld	$25,%call16(_Z9L_4x4_B_HPKhlPDv8_tS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z9L_4x4_B_HPKhlPDv8_tS2_
1:	jalr	$25
	move	$4,$16

	ld.h	$w0,0($sp)
	ld.h	$w1,32($sp)
	subv.h	$w0,$w0,$w1
	ld.h	$w1,16($sp)
	ld.h	$w2,48($sp)
	subv.h	$w1,$w1,$w2
	dotp_s.w	$w0,$w0,$w0
	dpadd_s.w	$w0,$w1,$w1
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[1]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[2]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	ld	$31,88($sp)
	ld	$28,80($sp)
	ld	$17,72($sp)
	ld	$16,64($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l
	.size	_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l, .-_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl
	.type	_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl, @function
_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl:
	.frame	$sp,112,$31		# vars= 64, regs= 4/0, args= 16, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$31,104($sp)
	sd	$28,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl)))
	move	$16,$4
	move	$17,$5
	move	$4,$6
	move	$5,$7
	daddiu	$9,$sp,64
	daddiu	$8,$sp,48
	daddiu	$7,$sp,32
	ld	$25,%call16(_Z3LW4PKhlPDv4_iS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LW4PKhlPDv4_iS2_S2_S2_
1:	jalr	$25
	daddiu	$6,$sp,16

	sd	$17,8($sp)
	sd	$16,0($sp)
	ld.w	$w0,64($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.w	$w0,48($sp)
	copy_s.d	$8,$w0[0]
	copy_s.d	$9,$w0[1]
	ld.w	$w0,32($sp)
	copy_s.d	$6,$w0[0]
	copy_s.d	$7,$w0[1]
	ld.w	$w0,16($sp)
	copy_s.d	$4,$w0[0]
	ld	$25,%call16(_Z3SW4Dv4_iS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z3SW4Dv4_iS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w0[1]

	ld	$31,104($sp)
	ld	$28,96($sp)
	ld	$17,88($sp)
	ld	$16,80($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl
	.size	_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl, .-_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li
	.type	_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li, @function
_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li:
	.frame	$sp,400,$31		# vars= 320, regs= 8/0, args= 16, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-400
	sd	$31,392($sp)
	sd	$28,384($sp)
	sd	$21,376($sp)
	sd	$20,368($sp)
	sd	$19,360($sp)
	sd	$18,352($sp)
	sd	$17,344($sp)
	sd	$16,336($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li)))
	move	$19,$4
	move	$16,$5
	move	$21,$6
	move	$18,$7
	move	$20,$8
	move	$17,$9
	daddiu	$9,$sp,64
	daddiu	$8,$sp,48
	daddiu	$7,$sp,32
	daddiu	$6,$sp,16
	move	$5,$18
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$21

	daddiu	$9,$sp,128
	daddiu	$8,$sp,112
	daddiu	$7,$sp,96
	daddiu	$6,$sp,80
	move	$5,$18
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	dlsa	$4,$18,$21,2

	ld.d	$w1,80($sp)
	ld.d	$w0,16($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,16($sp)
	ld.d	$w1,96($sp)
	ld.d	$w0,32($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,32($sp)
	ld.d	$w1,112($sp)
	ld.d	$w0,48($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,48($sp)
	ld.d	$w1,128($sp)
	ld.d	$w0,64($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,64($sp)
	daddiu	$9,$sp,192
	daddiu	$8,$sp,176
	daddiu	$7,$sp,160
	daddiu	$6,$sp,144
	move	$5,$17
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$20

	daddiu	$9,$sp,256
	daddiu	$8,$sp,240
	daddiu	$7,$sp,224
	daddiu	$6,$sp,208
	move	$5,$17
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	dlsa	$4,$17,$20,2

	ld.d	$w1,208($sp)
	ld.d	$w0,144($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,144($sp)
	ld.d	$w1,224($sp)
	ld.d	$w0,160($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,160($sp)
	ld.d	$w1,240($sp)
	ld.d	$w0,176($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,176($sp)
	ld.d	$w1,256($sp)
	ld.d	$w0,192($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,192($sp)
	ld.b	$w0,16($sp)
	ld.b	$w1,144($sp)
	aver_u.b	$w0,$w0,$w1
	move.v	$w4,$w0
	ld.b	$w0,32($sp)
	ld.b	$w1,160($sp)
	aver_u.b	$w0,$w0,$w1
	move.v	$w3,$w0
	ld.b	$w0,48($sp)
	ld.b	$w1,176($sp)
	aver_u.b	$w0,$w0,$w1
	move.v	$w2,$w0
	ld.b	$w0,64($sp)
	ld.b	$w1,192($sp)
	aver_u.b	$w0,$w0,$w1
	sd	$16,8($sp)
	sd	$19,0($sp)
	st.d	$w0,320($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	st.d	$w2,304($sp)
	copy_s.d	$8,$w2[0]
	copy_s.d	$9,$w2[1]
	st.d	$w3,288($sp)
	copy_s.d	$6,$w3[0]
	copy_s.d	$7,$w3[1]
	st.d	$w4,272($sp)
	copy_s.d	$4,$w4[0]
	ld	$25,%call16(_Z3SD4Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z3SD4Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w4[1]

	sd	$16,8($sp)
	dlsa	$16,$16,$19,2
	sd	$16,0($sp)
	ld.d	$w0,320($sp)
	copy_s.d	$10,$w0[0]
	copy_s.d	$11,$w0[1]
	ld.d	$w2,304($sp)
	copy_s.d	$8,$w2[0]
	copy_s.d	$9,$w2[1]
	ld.d	$w3,288($sp)
	copy_s.d	$6,$w3[0]
	copy_s.d	$7,$w3[1]
	ld.d	$w4,272($sp)
	copy_s.d	$4,$w4[0]
	ld	$25,%call16(_Z5SD4_1Dv2_xS_S_S_Phl)($28)
	.reloc	1f,R_MIPS_JALR,_Z5SD4_1Dv2_xS_S_S_Phl
1:	jalr	$25
	copy_s.d	$5,$w4[1]

	ld	$31,392($sp)
	ld	$28,384($sp)
	ld	$21,376($sp)
	ld	$20,368($sp)
	ld	$19,360($sp)
	ld	$18,352($sp)
	ld	$17,344($sp)
	ld	$16,336($sp)
	jr	$31
	daddiu	$sp,$sp,400

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li
	.size	_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li, .-_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi:
	.frame	$sp,384,$31		# vars= 288, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-384
	sd	$31,376($sp)
	sd	$fp,368($sp)
	sd	$28,360($sp)
	sd	$23,352($sp)
	sd	$22,344($sp)
	sd	$21,336($sp)
	sd	$20,328($sp)
	sd	$19,320($sp)
	sd	$18,312($sp)
	sd	$17,304($sp)
	sd	$16,296($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi)))
	move	$16,$4
	move	$19,$5
	move	$18,$6
	sd	$7,160($sp)
	sd	$8,168($sp)
	move	$17,$9
	sd	$10,280($sp)
	ldi.d	$w0,0
	st.d	$w0,176($sp)
	st.d	$w0,192($sp)
	st.d	$w0,208($sp)
	st.d	$w0,224($sp)
	daddiu	$2,$4,4096
	sd	$2,272($sp)
	daddiu	$fp,$sp,16
	daddiu	$23,$sp,48
	daddiu	$22,$sp,32
	daddiu	$21,$sp,80
	daddiu	$20,$sp,64
.L2290:
	move	$6,$fp
	move	$5,$sp
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	move	$6,$23
	move	$5,$22
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$19

	move	$6,$21
	move	$5,$20
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddiu	$2,$sp,112
	sd	$2,240($sp)
	move	$6,$2
	daddiu	$3,$sp,96
	sd	$3,248($sp)
	move	$5,$3
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	ld	$4,160($sp)

	daddiu	$4,$sp,144
	sd	$4,256($sp)
	move	$6,$4
	daddiu	$7,$sp,128
	sd	$7,264($sp)
	move	$5,$7
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	ld	$4,168($sp)

	ld.b	$w0,0($sp)
	ld.b	$w4,32($sp)
	asub_u.b	$w4,$w0,$w4
	ld.b	$w1,16($sp)
	ld.b	$w7,48($sp)
	asub_u.b	$w7,$w1,$w7
	ld.b	$w3,64($sp)
	asub_u.b	$w3,$w0,$w3
	ld.b	$w6,80($sp)
	asub_u.b	$w6,$w1,$w6
	ld.b	$w2,96($sp)
	asub_u.b	$w2,$w0,$w2
	ld.b	$w5,112($sp)
	asub_u.b	$w5,$w1,$w5
	ld.b	$w8,128($sp)
	asub_u.b	$w0,$w0,$w8
	ld.b	$w8,144($sp)
	asub_u.b	$w1,$w1,$w8
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w1,$w1
	ld.d	$w8,176($sp)
	addv.d	$w4,$w8,$w4
	addv.d	$w4,$w4,$w7
	st.d	$w4,176($sp)
	ld.d	$w7,192($sp)
	addv.d	$w3,$w7,$w3
	addv.d	$w3,$w3,$w6
	st.d	$w3,192($sp)
	ld.d	$w7,208($sp)
	addv.d	$w2,$w7,$w2
	addv.d	$w2,$w2,$w5
	st.d	$w2,208($sp)
	ld.d	$w5,224($sp)
	addv.d	$w0,$w5,$w0
	addv.d	$w0,$w0,$w1
	st.d	$w0,224($sp)
	move	$6,$fp
	move	$5,$sp
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddiu	$4,$16,32

	move	$6,$23
	move	$5,$22
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddiu	$4,$19,32

	move	$6,$21
	move	$5,$20
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddiu	$4,$18,32

	ld	$6,240($sp)
	ld	$5,248($sp)
	ld	$2,160($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddiu	$4,$2,32

	ld	$6,256($sp)
	ld	$5,264($sp)
	ld	$3,168($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddiu	$4,$3,32

	ld.b	$w1,0($sp)
	ld.b	$w7,32($sp)
	asub_u.b	$w7,$w1,$w7
	ld.b	$w0,16($sp)
	ld.b	$w6,48($sp)
	asub_u.b	$w6,$w0,$w6
	ld.b	$w5,64($sp)
	asub_u.b	$w5,$w1,$w5
	ld.b	$w4,80($sp)
	asub_u.b	$w4,$w0,$w4
	ld.b	$w3,96($sp)
	asub_u.b	$w3,$w1,$w3
	ld.b	$w2,112($sp)
	asub_u.b	$w2,$w0,$w2
	ld.b	$w8,128($sp)
	asub_u.b	$w1,$w1,$w8
	ld.b	$w8,144($sp)
	asub_u.b	$w0,$w0,$w8
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w0,$w0
	ld.d	$w8,176($sp)
	addv.d	$w7,$w8,$w7
	addv.d	$w7,$w7,$w6
	st.d	$w7,176($sp)
	ld.d	$w6,192($sp)
	addv.d	$w5,$w6,$w5
	addv.d	$w5,$w5,$w4
	st.d	$w5,192($sp)
	ld.d	$w4,208($sp)
	addv.d	$w3,$w4,$w3
	addv.d	$w3,$w3,$w2
	st.d	$w3,208($sp)
	ld.d	$w2,224($sp)
	addv.d	$w1,$w2,$w1
	addv.d	$w0,$w1,$w0
	st.d	$w0,224($sp)
	daddiu	$16,$16,64
	daddu	$19,$19,$17
	ld	$2,160($sp)
	daddu	$2,$2,$17
	sd	$2,160($sp)
	ld	$3,168($sp)
	daddu	$2,$3,$17
	sd	$2,168($sp)
	ld	$2,272($sp)
	bne	$16,$2,.L2290
	daddu	$18,$18,$17

	copy_s.w	$3,$w7[0]
	copy_s.w	$2,$w7[2]
	addu	$2,$3,$2
	ld	$4,280($sp)
	sw	$2,0($4)
	copy_s.w	$3,$w5[0]
	copy_s.w	$2,$w5[2]
	addu	$2,$3,$2
	sw	$2,4($4)
	copy_s.w	$3,$w3[0]
	copy_s.w	$2,$w3[2]
	addu	$2,$3,$2
	sw	$2,8($4)
	ld.d	$w0,224($sp)
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,12($4)
	ld	$31,376($sp)
	ld	$fp,368($sp)
	ld	$28,360($sp)
	ld	$23,352($sp)
	ld	$22,344($sp)
	ld	$21,336($sp)
	ld	$20,328($sp)
	ld	$19,320($sp)
	ld	$18,312($sp)
	ld	$17,304($sp)
	ld	$16,296($sp)
	jr	$31
	daddiu	$sp,$sp,384

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi:
	.frame	$sp,592,$31		# vars= 496, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-592
	sd	$31,584($sp)
	sd	$fp,576($sp)
	sd	$28,568($sp)
	sd	$23,560($sp)
	sd	$22,552($sp)
	sd	$21,544($sp)
	sd	$20,536($sp)
	sd	$19,528($sp)
	sd	$18,520($sp)
	sd	$17,512($sp)
	sd	$16,504($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi)))
	move	$16,$4
	move	$19,$5
	sd	$6,320($sp)
	sd	$7,328($sp)
	sd	$8,336($sp)
	move	$17,$9
	sd	$10,480($sp)
	ldi.d	$w0,0
	st.d	$w0,352($sp)
	st.d	$w0,448($sp)
	st.d	$w0,368($sp)
	st.d	$w0,432($sp)
	st.d	$w0,384($sp)
	st.d	$w0,416($sp)
	st.d	$w0,400($sp)
	st.d	$w0,464($sp)
	dsll	$18,$9,1
	daddiu	$2,$4,2048
	sd	$2,344($sp)
	daddiu	$fp,$sp,16
	daddiu	$23,$sp,48
	daddiu	$22,$sp,32
	daddiu	$21,$sp,80
	daddiu	$20,$sp,64
.L2294:
	move	$6,$fp
	move	$5,$sp
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	move	$6,$23
	move	$5,$22
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$19

	move	$6,$21
	move	$5,$20
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	ld	$4,320($sp)

	daddiu	$6,$sp,112
	daddiu	$5,$sp,96
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	ld	$4,328($sp)

	daddiu	$6,$sp,272
	daddiu	$5,$sp,256
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	ld	$4,336($sp)

	daddiu	$6,$sp,144
	daddiu	$5,$sp,128
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddiu	$4,$16,64

	daddiu	$6,$sp,176
	daddiu	$5,$sp,160
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$19,$17

	daddiu	$6,$sp,208
	daddiu	$5,$sp,192
	ld	$2,320($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$2,$17

	daddiu	$6,$sp,240
	daddiu	$5,$sp,224
	ld	$3,328($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$3,$17

	daddiu	$6,$sp,304
	daddiu	$5,$sp,288
	ld	$4,336($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$4,$17

	ld.b	$w2,0($sp)
	ld.b	$w8,32($sp)
	asub_u.b	$w8,$w2,$w8
	ld.b	$w0,16($sp)
	ld.b	$w15,48($sp)
	asub_u.b	$w15,$w0,$w15
	ld.b	$w7,64($sp)
	asub_u.b	$w7,$w2,$w7
	ld.b	$w14,80($sp)
	asub_u.b	$w14,$w0,$w14
	ld.b	$w6,96($sp)
	asub_u.b	$w6,$w2,$w6
	ld.b	$w13,112($sp)
	asub_u.b	$w13,$w0,$w13
	ld.b	$w1,256($sp)
	asub_u.b	$w2,$w2,$w1
	ld.b	$w9,272($sp)
	asub_u.b	$w9,$w0,$w9
	ld.b	$w0,128($sp)
	ld.b	$w5,160($sp)
	asub_u.b	$w5,$w0,$w5
	ld.b	$w1,144($sp)
	ld.b	$w12,176($sp)
	asub_u.b	$w12,$w1,$w12
	ld.b	$w4,192($sp)
	asub_u.b	$w4,$w0,$w4
	ld.b	$w11,208($sp)
	asub_u.b	$w11,$w1,$w11
	ld.b	$w3,224($sp)
	asub_u.b	$w3,$w0,$w3
	ld.b	$w10,240($sp)
	asub_u.b	$w10,$w1,$w10
	ld.b	$w16,288($sp)
	asub_u.b	$w0,$w0,$w16
	ld.b	$w16,304($sp)
	asub_u.b	$w1,$w1,$w16
	vacc8b_u.d	$w8,$w8
	vacc8b_u.d	$w15,$w15
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w14,$w14
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w13,$w13
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w9,$w9
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w12,$w12
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w11,$w11
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w10,$w10
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w1,$w1
	ld.d	$w16,352($sp)
	addv.d	$w8,$w16,$w8
	addv.d	$w8,$w8,$w15
	st.d	$w8,352($sp)
	ld.d	$w8,448($sp)
	addv.d	$w7,$w8,$w7
	addv.d	$w7,$w7,$w14
	st.d	$w7,448($sp)
	ld.d	$w7,368($sp)
	addv.d	$w6,$w7,$w6
	addv.d	$w6,$w6,$w13
	st.d	$w6,368($sp)
	ld.d	$w6,432($sp)
	addv.d	$w5,$w6,$w5
	addv.d	$w5,$w5,$w12
	st.d	$w5,432($sp)
	ld.d	$w5,384($sp)
	addv.d	$w4,$w5,$w4
	addv.d	$w4,$w4,$w11
	st.d	$w4,384($sp)
	ld.d	$w4,416($sp)
	addv.d	$w3,$w4,$w3
	addv.d	$w3,$w3,$w10
	st.d	$w3,416($sp)
	ld.d	$w3,400($sp)
	addv.d	$w2,$w3,$w2
	addv.d	$w2,$w2,$w9
	st.d	$w2,400($sp)
	ld.d	$w2,464($sp)
	addv.d	$w0,$w2,$w0
	addv.d	$w0,$w0,$w1
	st.d	$w0,464($sp)
	daddiu	$16,$16,128
	ld	$2,320($sp)
	daddu	$2,$2,$18
	sd	$2,320($sp)
	ld	$3,328($sp)
	daddu	$2,$3,$18
	sd	$2,328($sp)
	ld	$4,336($sp)
	daddu	$2,$4,$18
	sd	$2,336($sp)
	ld	$2,344($sp)
	bne	$16,$2,.L2294
	daddu	$19,$19,$18

	ld.d	$w0,352($sp)
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld.d	$w0,432($sp)
	copy_s.w	$3,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	ld	$4,480($sp)
	sw	$3,0($4)
	ld.d	$w0,448($sp)
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld.d	$w0,384($sp)
	copy_s.w	$3,$w0[0]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,4($4)
	ld.d	$w0,368($sp)
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld.d	$w0,416($sp)
	copy_s.w	$3,$w0[0]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,8($4)
	ld.d	$w0,400($sp)
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld.d	$w0,464($sp)
	copy_s.w	$3,$w0[0]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,12($4)
	ld	$31,584($sp)
	ld	$fp,576($sp)
	ld	$28,568($sp)
	ld	$23,560($sp)
	ld	$22,552($sp)
	ld	$21,544($sp)
	ld	$20,536($sp)
	ld	$19,528($sp)
	ld	$18,520($sp)
	ld	$17,512($sp)
	ld	$16,504($sp)
	jr	$31
	daddiu	$sp,$sp,592

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi:
	.frame	$sp,464,$31		# vars= 368, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-464
	sd	$31,456($sp)
	sd	$fp,448($sp)
	sd	$28,440($sp)
	sd	$23,432($sp)
	sd	$22,424($sp)
	sd	$21,416($sp)
	sd	$20,408($sp)
	sd	$19,400($sp)
	sd	$18,392($sp)
	sd	$17,384($sp)
	sd	$16,376($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi)))
	move	$17,$4
	move	$21,$5
	move	$19,$6
	move	$18,$7
	move	$22,$8
	move	$16,$9
	move	$23,$10
	daddiu	$9,$sp,48
	daddiu	$8,$sp,32
	daddiu	$7,$sp,16
	move	$6,$sp
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	li	$5,64			# 0x40

	daddiu	$9,$sp,176
	daddiu	$8,$sp,160
	daddiu	$7,$sp,144
	daddiu	$6,$sp,128
	li	$5,64			# 0x40
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddiu	$4,$17,256

	ld.d	$w1,128($sp)
	ld.d	$w0,0($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,0($sp)
	ld.d	$w1,144($sp)
	ld.d	$w0,16($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,16($sp)
	ld.d	$w1,160($sp)
	ld.d	$w0,32($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,32($sp)
	ld.d	$w1,176($sp)
	ld.d	$w0,48($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,48($sp)
	daddiu	$20,$sp,112
	move	$9,$20
	daddiu	$2,$sp,96
	sd	$2,328($sp)
	move	$8,$2
	daddiu	$3,$sp,80
	sd	$3,320($sp)
	move	$7,$3
	daddiu	$17,$sp,64
	move	$6,$17
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$21

	dsll	$fp,$16,2
	daddiu	$9,$sp,240
	daddiu	$8,$sp,224
	daddiu	$7,$sp,208
	daddiu	$6,$sp,192
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddu	$4,$21,$fp

	ld.d	$w1,192($sp)
	ld.d	$w0,64($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,64($sp)
	ld.d	$w1,208($sp)
	ld.d	$w0,80($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,80($sp)
	ld.d	$w1,224($sp)
	ld.d	$w0,96($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,96($sp)
	ld.d	$w1,240($sp)
	ld.d	$w0,112($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,112($sp)
	ld.b	$w0,0($sp)
	ld.b	$w1,64($sp)
	asub_u.b	$w0,$w0,$w1
	ld.b	$w3,16($sp)
	ld.b	$w1,80($sp)
	asub_u.b	$w3,$w3,$w1
	ld.b	$w1,32($sp)
	ld.b	$w2,96($sp)
	asub_u.b	$w1,$w1,$w2
	ld.b	$w2,48($sp)
	ld.b	$w4,112($sp)
	asub_u.b	$w2,$w2,$w4
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w2,$w2
	addv.d	$w0,$w0,$w3
	addv.d	$w1,$w1,$w2
	addv.d	$w0,$w0,$w1
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,0($23)
	move	$9,$20
	ld	$8,328($sp)
	ld	$7,320($sp)
	move	$6,$17
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$19

	daddiu	$4,$sp,304
	sd	$4,336($sp)
	move	$9,$4
	daddiu	$21,$sp,288
	move	$8,$21
	daddiu	$5,$sp,272
	sd	$5,344($sp)
	move	$7,$5
	daddiu	$6,$sp,256
	sd	$6,352($sp)
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddu	$4,$19,$fp

	ld.d	$w1,256($sp)
	ld.d	$w0,64($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,64($sp)
	ld.d	$w1,272($sp)
	ld.d	$w0,80($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,80($sp)
	ld.d	$w1,288($sp)
	ld.d	$w0,96($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,96($sp)
	ld.d	$w1,304($sp)
	ld.d	$w0,112($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,112($sp)
	ld.b	$w0,0($sp)
	ld.b	$w1,64($sp)
	asub_u.b	$w0,$w0,$w1
	ld.b	$w3,16($sp)
	ld.b	$w1,80($sp)
	asub_u.b	$w3,$w3,$w1
	ld.b	$w1,32($sp)
	ld.b	$w2,96($sp)
	asub_u.b	$w1,$w1,$w2
	ld.b	$w2,48($sp)
	ld.b	$w4,112($sp)
	asub_u.b	$w2,$w2,$w4
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w2,$w2
	addv.d	$w0,$w0,$w3
	addv.d	$w1,$w1,$w2
	addv.d	$w0,$w0,$w1
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,4($23)
	move	$9,$20
	ld	$19,328($sp)
	move	$8,$19
	ld	$7,320($sp)
	move	$6,$17
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$18

	ld	$9,336($sp)
	move	$8,$21
	ld	$7,344($sp)
	ld	$6,352($sp)
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddu	$4,$18,$fp

	ld.d	$w1,256($sp)
	ld.d	$w0,64($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,64($sp)
	ld.d	$w1,272($sp)
	ld.d	$w0,80($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,80($sp)
	ld.d	$w1,288($sp)
	ld.d	$w0,96($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,96($sp)
	ld.d	$w1,304($sp)
	ld.d	$w0,112($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,112($sp)
	ld.b	$w0,0($sp)
	ld.b	$w1,64($sp)
	asub_u.b	$w0,$w0,$w1
	ld.b	$w3,16($sp)
	ld.b	$w1,80($sp)
	asub_u.b	$w3,$w3,$w1
	ld.b	$w1,32($sp)
	ld.b	$w2,96($sp)
	asub_u.b	$w1,$w1,$w2
	ld.b	$w2,48($sp)
	ld.b	$w4,112($sp)
	asub_u.b	$w2,$w2,$w4
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w2,$w2
	addv.d	$w0,$w0,$w3
	addv.d	$w1,$w1,$w2
	addv.d	$w0,$w0,$w1
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,8($23)
	move	$9,$20
	move	$8,$19
	ld	$7,320($sp)
	move	$6,$17
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$22

	ld	$9,336($sp)
	move	$8,$21
	ld	$7,344($sp)
	ld	$6,352($sp)
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddu	$4,$22,$fp

	ld.d	$w1,256($sp)
	ld.d	$w0,64($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,64($sp)
	ld.d	$w1,272($sp)
	ld.d	$w0,80($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,80($sp)
	ld.d	$w1,288($sp)
	ld.d	$w0,96($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,96($sp)
	ld.d	$w1,304($sp)
	ld.d	$w0,112($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,112($sp)
	ld.b	$w0,0($sp)
	ld.b	$w1,64($sp)
	asub_u.b	$w0,$w0,$w1
	ld.b	$w3,16($sp)
	ld.b	$w1,80($sp)
	asub_u.b	$w3,$w3,$w1
	ld.b	$w1,32($sp)
	ld.b	$w2,96($sp)
	asub_u.b	$w1,$w1,$w2
	ld.b	$w2,48($sp)
	ld.b	$w4,112($sp)
	asub_u.b	$w2,$w2,$w4
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w2,$w2
	addv.d	$w0,$w0,$w3
	addv.d	$w1,$w1,$w2
	addv.d	$w0,$w0,$w1
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,12($23)
	ld	$31,456($sp)
	ld	$fp,448($sp)
	ld	$28,440($sp)
	ld	$23,432($sp)
	ld	$22,424($sp)
	ld	$21,416($sp)
	ld	$20,408($sp)
	ld	$19,400($sp)
	ld	$18,392($sp)
	ld	$17,384($sp)
	ld	$16,376($sp)
	jr	$31
	daddiu	$sp,$sp,464

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi, .-_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi:
	.frame	$sp,320,$31		# vars= 224, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-320
	sd	$31,312($sp)
	sd	$fp,304($sp)
	sd	$28,296($sp)
	sd	$23,288($sp)
	sd	$22,280($sp)
	sd	$21,272($sp)
	sd	$20,264($sp)
	sd	$19,256($sp)
	sd	$18,248($sp)
	sd	$17,240($sp)
	sd	$16,232($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi)))
	move	$16,$4
	move	$19,$5
	move	$18,$6
	move	$17,$7
	sd	$8,200($sp)
	sd	$9,208($sp)
	ldi.d	$w0,0
	st.d	$w0,128($sp)
	st.d	$w0,144($sp)
	st.d	$w0,160($sp)
	daddiu	$2,$4,4096
	sd	$2,192($sp)
	daddiu	$fp,$sp,16
	daddiu	$23,$sp,48
	daddiu	$22,$sp,32
	daddiu	$21,$sp,80
	daddiu	$20,$sp,64
	move	$6,$fp
.L2303:
	move	$5,$sp
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	move	$6,$23
	move	$5,$22
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$19

	move	$6,$21
	move	$5,$20
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddiu	$2,$sp,112
	sd	$2,176($sp)
	move	$6,$2
	daddiu	$3,$sp,96
	sd	$3,184($sp)
	move	$5,$3
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w0,0($sp)
	ld.b	$w3,32($sp)
	asub_u.b	$w3,$w0,$w3
	ld.b	$w1,16($sp)
	ld.b	$w5,48($sp)
	asub_u.b	$w5,$w1,$w5
	ld.b	$w2,64($sp)
	asub_u.b	$w2,$w0,$w2
	ld.b	$w4,80($sp)
	asub_u.b	$w4,$w1,$w4
	ld.b	$w6,96($sp)
	asub_u.b	$w0,$w0,$w6
	ld.b	$w6,112($sp)
	asub_u.b	$w1,$w1,$w6
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w1,$w1
	ld.d	$w6,128($sp)
	addv.d	$w3,$w6,$w3
	addv.d	$w3,$w3,$w5
	st.d	$w3,128($sp)
	ld.d	$w5,144($sp)
	addv.d	$w2,$w5,$w2
	addv.d	$w2,$w2,$w4
	st.d	$w2,144($sp)
	ld.d	$w5,160($sp)
	addv.d	$w0,$w5,$w0
	addv.d	$w0,$w0,$w1
	st.d	$w0,160($sp)
	move	$6,$fp
	move	$5,$sp
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddiu	$4,$16,32

	move	$6,$23
	move	$5,$22
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddiu	$4,$19,32

	move	$6,$21
	move	$5,$20
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddiu	$4,$18,32

	ld	$6,176($sp)
	ld	$5,184($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddiu	$4,$17,32

	ld.b	$w1,0($sp)
	ld.b	$w5,32($sp)
	asub_u.b	$w5,$w1,$w5
	ld.b	$w0,16($sp)
	ld.b	$w4,48($sp)
	asub_u.b	$w4,$w0,$w4
	ld.b	$w3,64($sp)
	asub_u.b	$w3,$w1,$w3
	ld.b	$w2,80($sp)
	asub_u.b	$w2,$w0,$w2
	ld.b	$w6,96($sp)
	asub_u.b	$w1,$w1,$w6
	ld.b	$w6,112($sp)
	asub_u.b	$w0,$w0,$w6
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w0,$w0
	ld.d	$w6,128($sp)
	addv.d	$w5,$w6,$w5
	addv.d	$w5,$w5,$w4
	st.d	$w5,128($sp)
	ld.d	$w4,144($sp)
	addv.d	$w3,$w4,$w3
	addv.d	$w3,$w3,$w2
	st.d	$w3,144($sp)
	ld.d	$w2,160($sp)
	addv.d	$w1,$w2,$w1
	addv.d	$w0,$w1,$w0
	st.d	$w0,160($sp)
	daddiu	$16,$16,64
	ld	$2,200($sp)
	daddu	$19,$19,$2
	daddu	$18,$18,$2
	daddu	$17,$17,$2
	ld	$2,192($sp)
	bne	$16,$2,.L2303
	move	$6,$fp

	copy_s.w	$3,$w5[0]
	copy_s.w	$2,$w5[2]
	addu	$2,$3,$2
	ld	$4,208($sp)
	sw	$2,0($4)
	copy_s.w	$3,$w3[0]
	copy_s.w	$2,$w3[2]
	addu	$2,$3,$2
	sw	$2,4($4)
	ld.d	$w0,160($sp)
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,8($4)
	ld	$31,312($sp)
	ld	$fp,304($sp)
	ld	$28,296($sp)
	ld	$23,288($sp)
	ld	$22,280($sp)
	ld	$21,272($sp)
	ld	$20,264($sp)
	ld	$19,256($sp)
	ld	$18,248($sp)
	ld	$17,240($sp)
	ld	$16,232($sp)
	jr	$31
	daddiu	$sp,$sp,320

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi:
	.frame	$sp,480,$31		# vars= 384, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-480
	sd	$31,472($sp)
	sd	$fp,464($sp)
	sd	$28,456($sp)
	sd	$23,448($sp)
	sd	$22,440($sp)
	sd	$21,432($sp)
	sd	$20,424($sp)
	sd	$19,416($sp)
	sd	$18,408($sp)
	sd	$17,400($sp)
	sd	$16,392($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi)))
	move	$16,$4
	move	$19,$5
	move	$18,$6
	move	$17,$7
	sd	$8,256($sp)
	sd	$9,376($sp)
	ldi.d	$w0,0
	st.d	$w0,272($sp)
	st.d	$w0,336($sp)
	st.d	$w0,288($sp)
	st.d	$w0,320($sp)
	st.d	$w0,304($sp)
	st.d	$w0,352($sp)
	dsll	$2,$8,1
	sd	$2,264($sp)
	daddiu	$2,$4,2048
	sd	$2,368($sp)
	daddiu	$fp,$sp,16
	daddiu	$23,$sp,48
	daddiu	$22,$sp,32
	daddiu	$21,$sp,80
	daddiu	$20,$sp,64
	move	$6,$fp
.L2308:
	move	$5,$sp
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	move	$6,$23
	move	$5,$22
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$19

	move	$6,$21
	move	$5,$20
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddiu	$6,$sp,112
	daddiu	$5,$sp,96
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$17

	daddiu	$6,$sp,144
	daddiu	$5,$sp,128
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddiu	$4,$16,64

	daddiu	$6,$sp,176
	daddiu	$5,$sp,160
	ld	$2,256($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$19,$2

	daddiu	$6,$sp,208
	daddiu	$5,$sp,192
	ld	$2,256($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$18,$2

	daddiu	$6,$sp,240
	daddiu	$5,$sp,224
	ld	$2,256($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$17,$2

	ld.b	$w0,0($sp)
	ld.b	$w7,32($sp)
	asub_u.b	$w7,$w0,$w7
	ld.b	$w2,16($sp)
	ld.b	$w11,48($sp)
	asub_u.b	$w11,$w2,$w11
	ld.b	$w6,64($sp)
	asub_u.b	$w6,$w0,$w6
	ld.b	$w10,80($sp)
	asub_u.b	$w10,$w2,$w10
	ld.b	$w1,96($sp)
	asub_u.b	$w1,$w0,$w1
	ld.b	$w5,112($sp)
	asub_u.b	$w5,$w2,$w5
	ld.b	$w0,128($sp)
	ld.b	$w4,160($sp)
	asub_u.b	$w4,$w0,$w4
	ld.b	$w2,144($sp)
	ld.b	$w9,176($sp)
	asub_u.b	$w9,$w2,$w9
	ld.b	$w3,192($sp)
	asub_u.b	$w3,$w0,$w3
	ld.b	$w8,208($sp)
	asub_u.b	$w8,$w2,$w8
	ld.b	$w12,224($sp)
	asub_u.b	$w0,$w0,$w12
	ld.b	$w12,240($sp)
	asub_u.b	$w2,$w2,$w12
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w11,$w11
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w10,$w10
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w9,$w9
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w8,$w8
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w2,$w2
	ld.d	$w12,272($sp)
	addv.d	$w7,$w12,$w7
	addv.d	$w7,$w7,$w11
	st.d	$w7,272($sp)
	ld.d	$w7,336($sp)
	addv.d	$w6,$w7,$w6
	addv.d	$w6,$w6,$w10
	st.d	$w6,336($sp)
	ld.d	$w6,288($sp)
	addv.d	$w1,$w6,$w1
	addv.d	$w1,$w1,$w5
	st.d	$w1,288($sp)
	ld.d	$w1,320($sp)
	addv.d	$w1,$w1,$w4
	addv.d	$w1,$w1,$w9
	st.d	$w1,320($sp)
	ld.d	$w1,304($sp)
	addv.d	$w1,$w1,$w3
	addv.d	$w1,$w1,$w8
	st.d	$w1,304($sp)
	ld.d	$w1,352($sp)
	addv.d	$w0,$w1,$w0
	addv.d	$w0,$w0,$w2
	st.d	$w0,352($sp)
	daddiu	$16,$16,128
	ld	$2,264($sp)
	daddu	$19,$19,$2
	daddu	$18,$18,$2
	daddu	$17,$17,$2
	ld	$2,368($sp)
	bne	$16,$2,.L2308
	move	$6,$fp

	ld.d	$w0,272($sp)
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld.d	$w0,320($sp)
	copy_s.w	$3,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	ld	$4,376($sp)
	sw	$3,0($4)
	ld.d	$w0,336($sp)
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld.d	$w0,304($sp)
	copy_s.w	$3,$w0[0]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,4($4)
	ld.d	$w0,288($sp)
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld.d	$w0,352($sp)
	copy_s.w	$3,$w0[0]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,8($4)
	ld	$31,472($sp)
	ld	$fp,464($sp)
	ld	$28,456($sp)
	ld	$23,448($sp)
	ld	$22,440($sp)
	ld	$21,432($sp)
	ld	$20,424($sp)
	ld	$19,416($sp)
	ld	$18,408($sp)
	ld	$17,400($sp)
	ld	$16,392($sp)
	jr	$31
	daddiu	$sp,$sp,480

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi:
	.frame	$sp,448,$31		# vars= 352, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-448
	sd	$31,440($sp)
	sd	$fp,432($sp)
	sd	$28,424($sp)
	sd	$23,416($sp)
	sd	$22,408($sp)
	sd	$21,400($sp)
	sd	$20,392($sp)
	sd	$19,384($sp)
	sd	$18,376($sp)
	sd	$17,368($sp)
	sd	$16,360($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi)))
	move	$17,$4
	move	$fp,$5
	move	$23,$6
	move	$18,$7
	move	$16,$8
	move	$21,$9
	daddiu	$9,$sp,48
	daddiu	$8,$sp,32
	daddiu	$7,$sp,16
	move	$6,$sp
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	li	$5,64			# 0x40

	daddiu	$9,$sp,176
	daddiu	$8,$sp,160
	daddiu	$7,$sp,144
	daddiu	$6,$sp,128
	li	$5,64			# 0x40
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddiu	$4,$17,256

	ld.d	$w1,128($sp)
	ld.d	$w0,0($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,0($sp)
	ld.d	$w1,144($sp)
	ld.d	$w0,16($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,16($sp)
	ld.d	$w1,160($sp)
	ld.d	$w0,32($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,32($sp)
	ld.d	$w1,176($sp)
	ld.d	$w0,48($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,48($sp)
	daddiu	$20,$sp,112
	move	$9,$20
	daddiu	$19,$sp,96
	move	$8,$19
	daddiu	$2,$sp,80
	sd	$2,320($sp)
	move	$7,$2
	daddiu	$17,$sp,64
	move	$6,$17
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$fp

	dsll	$22,$16,2
	daddiu	$9,$sp,240
	daddiu	$8,$sp,224
	daddiu	$7,$sp,208
	daddiu	$6,$sp,192
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddu	$4,$fp,$22

	ld.d	$w1,192($sp)
	ld.d	$w0,64($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,64($sp)
	ld.d	$w1,208($sp)
	ld.d	$w0,80($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,80($sp)
	ld.d	$w1,224($sp)
	ld.d	$w0,96($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,96($sp)
	ld.d	$w1,240($sp)
	ld.d	$w0,112($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,112($sp)
	ld.b	$w0,0($sp)
	ld.b	$w1,64($sp)
	asub_u.b	$w0,$w0,$w1
	ld.b	$w3,16($sp)
	ld.b	$w1,80($sp)
	asub_u.b	$w3,$w3,$w1
	ld.b	$w1,32($sp)
	ld.b	$w2,96($sp)
	asub_u.b	$w1,$w1,$w2
	ld.b	$w2,48($sp)
	ld.b	$w4,112($sp)
	asub_u.b	$w2,$w2,$w4
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w2,$w2
	addv.d	$w0,$w0,$w3
	addv.d	$w1,$w1,$w2
	addv.d	$w0,$w0,$w1
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,0($21)
	move	$9,$20
	move	$8,$19
	ld	$7,320($sp)
	move	$6,$17
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$23

	daddiu	$fp,$sp,304
	move	$9,$fp
	daddiu	$3,$sp,288
	sd	$3,328($sp)
	move	$8,$3
	daddiu	$4,$sp,272
	sd	$4,336($sp)
	move	$7,$4
	daddiu	$5,$sp,256
	sd	$5,344($sp)
	move	$6,$5
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddu	$4,$23,$22

	ld.d	$w1,256($sp)
	ld.d	$w0,64($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,64($sp)
	ld.d	$w1,272($sp)
	ld.d	$w0,80($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,80($sp)
	ld.d	$w1,288($sp)
	ld.d	$w0,96($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,96($sp)
	ld.d	$w1,304($sp)
	ld.d	$w0,112($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,112($sp)
	ld.b	$w0,0($sp)
	ld.b	$w1,64($sp)
	asub_u.b	$w0,$w0,$w1
	ld.b	$w3,16($sp)
	ld.b	$w1,80($sp)
	asub_u.b	$w3,$w3,$w1
	ld.b	$w1,32($sp)
	ld.b	$w2,96($sp)
	asub_u.b	$w1,$w1,$w2
	ld.b	$w2,48($sp)
	ld.b	$w4,112($sp)
	asub_u.b	$w2,$w2,$w4
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w2,$w2
	addv.d	$w0,$w0,$w3
	addv.d	$w1,$w1,$w2
	addv.d	$w0,$w0,$w1
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,4($21)
	move	$9,$20
	move	$8,$19
	ld	$7,320($sp)
	move	$6,$17
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$18

	move	$9,$fp
	ld	$8,328($sp)
	ld	$7,336($sp)
	ld	$6,344($sp)
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddu	$4,$18,$22

	ld.d	$w1,256($sp)
	ld.d	$w0,64($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,64($sp)
	ld.d	$w1,272($sp)
	ld.d	$w0,80($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,80($sp)
	ld.d	$w1,288($sp)
	ld.d	$w0,96($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,96($sp)
	ld.d	$w1,304($sp)
	ld.d	$w0,112($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,112($sp)
	ld.b	$w0,0($sp)
	ld.b	$w1,64($sp)
	asub_u.b	$w0,$w0,$w1
	ld.b	$w3,16($sp)
	ld.b	$w1,80($sp)
	asub_u.b	$w3,$w3,$w1
	ld.b	$w1,32($sp)
	ld.b	$w2,96($sp)
	asub_u.b	$w1,$w1,$w2
	ld.b	$w2,48($sp)
	ld.b	$w4,112($sp)
	asub_u.b	$w2,$w2,$w4
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w2,$w2
	addv.d	$w0,$w0,$w3
	addv.d	$w1,$w1,$w2
	addv.d	$w0,$w0,$w1
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,8($21)
	ld	$31,440($sp)
	ld	$fp,432($sp)
	ld	$28,424($sp)
	ld	$23,416($sp)
	ld	$22,408($sp)
	ld	$21,400($sp)
	ld	$20,392($sp)
	ld	$19,384($sp)
	ld	$18,376($sp)
	ld	$17,368($sp)
	ld	$16,360($sp)
	jr	$31
	daddiu	$sp,$sp,448

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi, .-_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l
	.type	_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l, @function
_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l:
	.frame	$sp,448,$31		# vars= 352, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-448
	sd	$31,440($sp)
	sd	$fp,432($sp)
	sd	$28,424($sp)
	sd	$23,416($sp)
	sd	$22,408($sp)
	sd	$21,400($sp)
	sd	$20,392($sp)
	sd	$19,384($sp)
	sd	$18,376($sp)
	sd	$17,368($sp)
	sd	$16,360($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l)))
	move	$17,$4
	move	$19,$5
	move	$16,$6
	sd	$7,336($sp)
	ldi.d	$w0,0
	st.d	$w0,288($sp)
	st.d	$w0,256($sp)
	st.d	$w0,304($sp)
	st.d	$w0,272($sp)
	dsll	$2,$5,1
	sd	$2,320($sp)
	dsll	$2,$7,1
	sd	$2,328($sp)
	li	$18,32			# 0x20
	daddiu	$fp,$sp,48
	daddiu	$23,$sp,32
	daddiu	$22,$sp,16
	daddiu	$21,$sp,112
	daddiu	$20,$sp,96
.L2312:
	move	$8,$fp
	move	$7,$23
	move	$6,$22
	move	$5,$sp
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	move	$8,$21
	move	$7,$20
	daddiu	$6,$sp,80
	daddiu	$5,$sp,64
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	daddiu	$8,$sp,176
	daddiu	$7,$sp,160
	daddiu	$6,$sp,144
	daddiu	$5,$sp,128
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	daddu	$4,$17,$19

	daddiu	$8,$sp,240
	daddiu	$7,$sp,224
	daddiu	$6,$sp,208
	daddiu	$5,$sp,192
	ld	$2,336($sp)
	ld	$25,%call16(_Z7LD_V4_HPKhPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
1:	jalr	$25
	daddu	$4,$16,$2

	ld.b	$w3,0($sp)
	ld.b	$w0,64($sp)
	asub_u.b	$w3,$w3,$w0
	ld.b	$w2,16($sp)
	ld.b	$w0,80($sp)
	asub_u.b	$w2,$w2,$w0
	ld.b	$w7,32($sp)
	ld.b	$w0,96($sp)
	asub_u.b	$w7,$w7,$w0
	ld.b	$w6,48($sp)
	ld.b	$w0,112($sp)
	asub_u.b	$w6,$w6,$w0
	ld.b	$w1,128($sp)
	ld.b	$w0,192($sp)
	asub_u.b	$w1,$w1,$w0
	ld.b	$w0,144($sp)
	ld.b	$w4,208($sp)
	asub_u.b	$w0,$w0,$w4
	ld.b	$w5,160($sp)
	ld.b	$w4,224($sp)
	asub_u.b	$w5,$w5,$w4
	ld.b	$w4,176($sp)
	ld.b	$w8,240($sp)
	asub_u.b	$w4,$w4,$w8
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w4,$w4
	ld.d	$w8,288($sp)
	addv.d	$w3,$w8,$w3
	ld.d	$w8,256($sp)
	addv.d	$w2,$w8,$w2
	addv.d	$w3,$w3,$w7
	st.d	$w3,288($sp)
	addv.d	$w2,$w2,$w6
	st.d	$w2,256($sp)
	ld.d	$w2,304($sp)
	addv.d	$w1,$w2,$w1
	ld.d	$w2,272($sp)
	addv.d	$w0,$w2,$w0
	addv.d	$w1,$w1,$w5
	st.d	$w1,304($sp)
	addv.d	$w0,$w0,$w4
	st.d	$w0,272($sp)
	ld	$2,320($sp)
	daddu	$17,$17,$2
	ld	$2,328($sp)
	addiu	$18,$18,-1
	bne	$18,$0,.L2312
	daddu	$16,$16,$2

	copy_s.w	$3,$w3[0]
	copy_s.w	$2,$w3[2]
	addu	$2,$3,$2
	ld.d	$w0,256($sp)
	copy_s.w	$3,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	ld.d	$w0,304($sp)
	copy_s.w	$2,$w0[0]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld.d	$w0,272($sp)
	copy_s.w	$3,$w0[0]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld	$31,440($sp)
	ld	$fp,432($sp)
	ld	$28,424($sp)
	ld	$23,416($sp)
	ld	$22,408($sp)
	ld	$21,400($sp)
	ld	$20,392($sp)
	ld	$19,384($sp)
	ld	$18,376($sp)
	ld	$17,368($sp)
	ld	$16,360($sp)
	jr	$31
	daddiu	$sp,$sp,448

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l
	.size	_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l, .-_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l
	.type	_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l, @function
_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l:
	.frame	$sp,480,$31		# vars= 384, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-480
	sd	$31,472($sp)
	sd	$fp,464($sp)
	sd	$28,456($sp)
	sd	$23,448($sp)
	sd	$22,440($sp)
	sd	$21,432($sp)
	sd	$20,424($sp)
	sd	$19,416($sp)
	sd	$18,408($sp)
	sd	$17,400($sp)
	sd	$16,392($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l)))
	move	$17,$4
	move	$19,$5
	move	$16,$6
	sd	$7,368($sp)
	ldi.d	$w0,0
	st.d	$w0,288($sp)
	st.d	$w0,256($sp)
	st.d	$w0,304($sp)
	st.d	$w0,272($sp)
	dsll	$2,$5,1
	sd	$2,320($sp)
	daddu	$2,$2,$5
	sd	$2,328($sp)
	dsll	$2,$7,1
	sd	$2,336($sp)
	daddu	$2,$2,$7
	sd	$2,344($sp)
	dsll	$2,$5,2
	sd	$2,352($sp)
	dsll	$2,$7,2
	sd	$2,360($sp)
	li	$18,8			# 0x8
	daddiu	$fp,$sp,16
	daddiu	$23,$sp,48
	daddiu	$22,$sp,32
	daddiu	$21,$sp,80
	daddiu	$20,$sp,64
.L2316:
	move	$6,$fp
	move	$5,$sp
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$17

	move	$6,$23
	move	$5,$22
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$17,$19

	move	$6,$21
	move	$5,$20
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	daddiu	$6,$sp,112
	daddiu	$5,$sp,96
	ld	$2,368($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$16,$2

	daddiu	$6,$sp,144
	daddiu	$5,$sp,128
	ld	$2,320($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$17,$2

	daddiu	$6,$sp,176
	daddiu	$5,$sp,160
	ld	$2,328($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$17,$2

	daddiu	$6,$sp,208
	daddiu	$5,$sp,192
	ld	$2,336($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$16,$2

	daddiu	$6,$sp,240
	daddiu	$5,$sp,224
	ld	$2,344($sp)
	ld	$25,%call16(_Z7LD_V2_HPKhPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z7LD_V2_HPKhPDv2_xS2_
1:	jalr	$25
	daddu	$4,$16,$2

	ld.b	$w3,0($sp)
	ld.b	$w0,64($sp)
	asub_u.b	$w3,$w3,$w0
	ld.b	$w2,16($sp)
	ld.b	$w0,80($sp)
	asub_u.b	$w2,$w2,$w0
	ld.b	$w7,32($sp)
	ld.b	$w0,96($sp)
	asub_u.b	$w7,$w7,$w0
	ld.b	$w6,48($sp)
	ld.b	$w0,112($sp)
	asub_u.b	$w6,$w6,$w0
	ld.b	$w1,128($sp)
	ld.b	$w0,192($sp)
	asub_u.b	$w1,$w1,$w0
	ld.b	$w0,144($sp)
	ld.b	$w4,208($sp)
	asub_u.b	$w0,$w0,$w4
	ld.b	$w5,160($sp)
	ld.b	$w4,224($sp)
	asub_u.b	$w5,$w5,$w4
	ld.b	$w4,176($sp)
	ld.b	$w8,240($sp)
	asub_u.b	$w4,$w4,$w8
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w4,$w4
	ld.d	$w8,288($sp)
	addv.d	$w3,$w8,$w3
	ld.d	$w8,256($sp)
	addv.d	$w2,$w8,$w2
	addv.d	$w3,$w3,$w7
	st.d	$w3,288($sp)
	addv.d	$w2,$w2,$w6
	st.d	$w2,256($sp)
	ld.d	$w2,304($sp)
	addv.d	$w1,$w2,$w1
	ld.d	$w2,272($sp)
	addv.d	$w0,$w2,$w0
	addv.d	$w1,$w1,$w5
	st.d	$w1,304($sp)
	addv.d	$w0,$w0,$w4
	st.d	$w0,272($sp)
	ld	$2,352($sp)
	daddu	$17,$17,$2
	ld	$2,360($sp)
	addiu	$18,$18,-1
	bne	$18,$0,.L2316
	daddu	$16,$16,$2

	copy_s.w	$3,$w3[0]
	copy_s.w	$2,$w3[2]
	addu	$2,$3,$2
	ld.d	$w0,256($sp)
	copy_s.w	$3,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	ld.d	$w0,304($sp)
	copy_s.w	$2,$w0[0]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld.d	$w0,272($sp)
	copy_s.w	$3,$w0[0]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld	$31,472($sp)
	ld	$fp,464($sp)
	ld	$28,456($sp)
	ld	$23,448($sp)
	ld	$22,440($sp)
	ld	$21,432($sp)
	ld	$20,424($sp)
	ld	$19,416($sp)
	ld	$18,408($sp)
	ld	$17,400($sp)
	ld	$16,392($sp)
	jr	$31
	daddiu	$sp,$sp,480

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l
	.size	_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l, .-_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l
	.type	_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l, @function
_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l:
	.frame	$sp,512,$31		# vars= 416, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-512
	sd	$31,504($sp)
	sd	$fp,496($sp)
	sd	$28,488($sp)
	sd	$23,480($sp)
	sd	$22,472($sp)
	sd	$21,464($sp)
	sd	$20,456($sp)
	sd	$19,448($sp)
	sd	$18,440($sp)
	sd	$17,432($sp)
	sd	$16,424($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l)))
	move	$17,$4
	move	$19,$5
	move	$16,$6
	move	$18,$7
	daddiu	$22,$sp,48
	move	$9,$22
	daddiu	$21,$sp,32
	move	$8,$21
	daddiu	$20,$sp,16
	move	$7,$20
	ld	$25,%call16(_Z5LD_V4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$6,$sp

	daddiu	$2,$sp,112
	sd	$2,320($sp)
	move	$9,$2
	daddiu	$3,$sp,96
	sd	$3,328($sp)
	move	$8,$3
	daddiu	$4,$sp,80
	sd	$4,336($sp)
	move	$7,$4
	daddiu	$5,$sp,64
	sd	$5,344($sp)
	move	$6,$5
	move	$5,$18
	ld	$25,%call16(_Z5LD_V4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	dsll	$fp,$19,2
	daddu	$17,$17,$fp
	daddiu	$10,$sp,176
	sd	$10,352($sp)
	move	$9,$10
	daddiu	$11,$sp,160
	sd	$11,360($sp)
	move	$8,$11
	daddiu	$12,$sp,144
	sd	$12,368($sp)
	move	$7,$12
	daddiu	$13,$sp,128
	sd	$13,376($sp)
	move	$6,$13
	move	$5,$19
	ld	$25,%call16(_Z5LD_V4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	dsll	$23,$18,2
	daddu	$16,$16,$23
	daddiu	$14,$sp,240
	sd	$14,384($sp)
	move	$9,$14
	daddiu	$15,$sp,224
	sd	$15,392($sp)
	move	$8,$15
	daddiu	$24,$sp,208
	sd	$24,400($sp)
	move	$7,$24
	daddiu	$25,$sp,192
	sd	$25,408($sp)
	move	$6,$25
	move	$5,$18
	ld	$25,%call16(_Z5LD_V4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	ld.b	$w7,0($sp)
	ld.b	$w0,64($sp)
	asub_u.b	$w7,$w7,$w0
	ld.b	$w5,16($sp)
	ld.b	$w0,80($sp)
	asub_u.b	$w5,$w5,$w0
	ld.b	$w6,32($sp)
	ld.b	$w0,96($sp)
	asub_u.b	$w6,$w6,$w0
	ld.b	$w4,48($sp)
	ld.b	$w0,112($sp)
	asub_u.b	$w4,$w4,$w0
	ld.b	$w3,128($sp)
	ld.b	$w0,192($sp)
	asub_u.b	$w3,$w3,$w0
	ld.b	$w1,144($sp)
	ld.b	$w0,208($sp)
	asub_u.b	$w1,$w1,$w0
	ld.b	$w2,160($sp)
	ld.b	$w0,224($sp)
	asub_u.b	$w2,$w2,$w0
	ld.b	$w0,176($sp)
	ld.b	$w8,240($sp)
	asub_u.b	$w0,$w0,$w8
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w0,$w0
	addv.d	$w6,$w7,$w6
	st.d	$w6,256($sp)
	addv.d	$w4,$w5,$w4
	st.d	$w4,272($sp)
	addv.d	$w2,$w3,$w2
	st.d	$w2,288($sp)
	addv.d	$w0,$w1,$w0
	st.d	$w0,304($sp)
	daddu	$17,$17,$fp
	daddu	$16,$16,$23
	move	$9,$22
	move	$8,$21
	move	$7,$20
	move	$6,$sp
	move	$5,$19
	ld	$25,%call16(_Z5LD_V4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld	$9,320($sp)
	ld	$8,328($sp)
	ld	$7,336($sp)
	ld	$6,344($sp)
	move	$5,$18
	ld	$25,%call16(_Z5LD_V4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	ld	$9,352($sp)
	ld	$8,360($sp)
	ld	$7,368($sp)
	ld	$6,376($sp)
	move	$5,$19
	ld	$25,%call16(_Z5LD_V4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddu	$4,$17,$fp

	ld	$9,384($sp)
	ld	$8,392($sp)
	ld	$7,400($sp)
	ld	$6,408($sp)
	move	$5,$18
	ld	$25,%call16(_Z5LD_V4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddu	$4,$16,$23

	ld.b	$w3,0($sp)
	ld.b	$w0,64($sp)
	asub_u.b	$w3,$w3,$w0
	ld.b	$w2,16($sp)
	ld.b	$w0,80($sp)
	asub_u.b	$w2,$w2,$w0
	ld.b	$w7,32($sp)
	ld.b	$w0,96($sp)
	asub_u.b	$w7,$w7,$w0
	ld.b	$w6,48($sp)
	ld.b	$w0,112($sp)
	asub_u.b	$w6,$w6,$w0
	ld.b	$w1,128($sp)
	ld.b	$w0,192($sp)
	asub_u.b	$w1,$w1,$w0
	ld.b	$w0,144($sp)
	ld.b	$w4,208($sp)
	asub_u.b	$w0,$w0,$w4
	ld.b	$w5,160($sp)
	ld.b	$w4,224($sp)
	asub_u.b	$w5,$w5,$w4
	ld.b	$w4,176($sp)
	ld.b	$w8,240($sp)
	asub_u.b	$w4,$w4,$w8
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w4,$w4
	ld.d	$w8,256($sp)
	addv.d	$w3,$w8,$w3
	ld.d	$w8,272($sp)
	addv.d	$w2,$w8,$w2
	addv.d	$w3,$w3,$w7
	addv.d	$w2,$w2,$w6
	ld.d	$w6,288($sp)
	addv.d	$w1,$w6,$w1
	ld.d	$w6,304($sp)
	addv.d	$w0,$w6,$w0
	addv.d	$w1,$w1,$w5
	addv.d	$w0,$w0,$w4
	copy_s.w	$2,$w3[0]
	copy_s.w	$3,$w3[2]
	addu	$2,$2,$3
	copy_s.w	$3,$w2[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w2[2]
	addu	$2,$2,$3
	copy_s.w	$3,$w1[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w1[2]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$2,$2,$3
	ld	$31,504($sp)
	ld	$fp,496($sp)
	ld	$28,488($sp)
	ld	$23,480($sp)
	ld	$22,472($sp)
	ld	$21,464($sp)
	ld	$20,456($sp)
	ld	$19,448($sp)
	ld	$18,440($sp)
	ld	$17,432($sp)
	ld	$16,424($sp)
	jr	$31
	daddiu	$sp,$sp,512

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l
	.size	_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l, .-_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
	.type	_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l, @function
_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l:
	.frame	$sp,304,$31		# vars= 256, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-304
	sd	$31,296($sp)
	sd	$28,288($sp)
	sd	$19,280($sp)
	sd	$18,272($sp)
	sd	$17,264($sp)
	sd	$16,256($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)))
	move	$19,$4
	move	$18,$5
	move	$17,$6
	move	$16,$7
	daddiu	$9,$sp,48
	daddiu	$8,$sp,32
	daddiu	$7,$sp,16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$6,$sp

	daddiu	$9,$sp,176
	daddiu	$8,$sp,160
	daddiu	$7,$sp,144
	daddiu	$6,$sp,128
	move	$5,$18
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	dlsa	$4,$18,$19,2

	ld.d	$w1,128($sp)
	ld.d	$w0,0($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,0($sp)
	ld.d	$w1,144($sp)
	ld.d	$w0,16($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,16($sp)
	ld.d	$w1,160($sp)
	ld.d	$w0,32($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,32($sp)
	ld.d	$w1,176($sp)
	ld.d	$w0,48($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,48($sp)
	daddiu	$9,$sp,112
	daddiu	$8,$sp,96
	daddiu	$7,$sp,80
	daddiu	$6,$sp,64
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	daddiu	$9,$sp,240
	daddiu	$8,$sp,224
	daddiu	$7,$sp,208
	daddiu	$6,$sp,192
	move	$5,$16
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	dlsa	$4,$16,$17,2

	ld.d	$w1,192($sp)
	ld.d	$w0,64($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,64($sp)
	ld.d	$w1,208($sp)
	ld.d	$w0,80($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,80($sp)
	ld.d	$w1,224($sp)
	ld.d	$w0,96($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,96($sp)
	ld.d	$w1,240($sp)
	ld.d	$w0,112($sp)
	insve.d	$w0[1],$w1[0]
	st.d	$w0,112($sp)
	ld.b	$w0,0($sp)
	ld.b	$w1,64($sp)
	asub_u.b	$w0,$w0,$w1
	ld.b	$w3,16($sp)
	ld.b	$w1,80($sp)
	asub_u.b	$w3,$w3,$w1
	ld.b	$w1,32($sp)
	ld.b	$w2,96($sp)
	asub_u.b	$w1,$w1,$w2
	ld.b	$w2,48($sp)
	ld.b	$w4,112($sp)
	asub_u.b	$w2,$w2,$w4
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w2,$w2
	addv.d	$w0,$w0,$w3
	addv.d	$w1,$w1,$w2
	addv.d	$w0,$w0,$w1
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld	$31,296($sp)
	ld	$28,288($sp)
	ld	$19,280($sp)
	ld	$18,272($sp)
	ld	$17,264($sp)
	ld	$16,256($sp)
	jr	$31
	daddiu	$sp,$sp,304

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
	.size	_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l, .-_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi:
	.frame	$sp,592,$31		# vars= 496, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-592
	sd	$31,584($sp)
	sd	$fp,576($sp)
	sd	$28,568($sp)
	sd	$23,560($sp)
	sd	$22,552($sp)
	sd	$21,544($sp)
	sd	$20,536($sp)
	sd	$19,528($sp)
	sd	$18,520($sp)
	sd	$17,512($sp)
	sd	$16,504($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi)))
	move	$16,$4
	move	$19,$5
	sd	$6,328($sp)
	sd	$7,336($sp)
	sd	$8,344($sp)
	sd	$9,320($sp)
	sd	$10,488($sp)
	ldi.d	$w0,0
	st.d	$w0,352($sp)
	st.d	$w0,448($sp)
	st.d	$w0,368($sp)
	st.d	$w0,432($sp)
	st.d	$w0,384($sp)
	st.d	$w0,416($sp)
	st.d	$w0,400($sp)
	st.d	$w0,464($sp)
	dsll	$18,$9,1
	dsll	$17,$9,2
	daddiu	$2,$4,1024
	sd	$2,480($sp)
	daddiu	$fp,$sp,16
	daddiu	$23,$sp,48
	daddiu	$22,$sp,32
	daddiu	$21,$sp,80
	daddiu	$20,$sp,64
.L2324:
	move	$7,$fp
	move	$6,$sp
	li	$5,64			# 0x40
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	move	$7,$23
	move	$6,$22
	ld	$5,320($sp)
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	move	$4,$19

	move	$7,$21
	move	$6,$20
	ld	$5,320($sp)
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	ld	$4,328($sp)

	daddiu	$7,$sp,112
	daddiu	$6,$sp,96
	ld	$5,320($sp)
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	ld	$4,336($sp)

	daddiu	$7,$sp,272
	daddiu	$6,$sp,256
	ld	$5,320($sp)
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	ld	$4,344($sp)

	daddiu	$7,$sp,144
	daddiu	$6,$sp,128
	li	$5,64			# 0x40
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	daddiu	$4,$16,128

	daddiu	$7,$sp,176
	daddiu	$6,$sp,160
	ld	$5,320($sp)
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	daddu	$4,$19,$18

	daddiu	$7,$sp,208
	daddiu	$6,$sp,192
	ld	$5,320($sp)
	ld	$2,328($sp)
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	daddu	$4,$2,$18

	daddiu	$7,$sp,240
	daddiu	$6,$sp,224
	ld	$5,320($sp)
	ld	$3,336($sp)
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	daddu	$4,$3,$18

	daddiu	$7,$sp,304
	daddiu	$6,$sp,288
	ld	$5,320($sp)
	ld	$4,344($sp)
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	daddu	$4,$4,$18

	ld.b	$w2,0($sp)
	ld.b	$w8,32($sp)
	asub_u.b	$w8,$w2,$w8
	ld.b	$w0,16($sp)
	ld.b	$w15,48($sp)
	asub_u.b	$w15,$w0,$w15
	ld.b	$w7,64($sp)
	asub_u.b	$w7,$w2,$w7
	ld.b	$w14,80($sp)
	asub_u.b	$w14,$w0,$w14
	ld.b	$w6,96($sp)
	asub_u.b	$w6,$w2,$w6
	ld.b	$w13,112($sp)
	asub_u.b	$w13,$w0,$w13
	ld.b	$w1,256($sp)
	asub_u.b	$w2,$w2,$w1
	ld.b	$w9,272($sp)
	asub_u.b	$w9,$w0,$w9
	ld.b	$w0,128($sp)
	ld.b	$w5,160($sp)
	asub_u.b	$w5,$w0,$w5
	ld.b	$w1,144($sp)
	ld.b	$w12,176($sp)
	asub_u.b	$w12,$w1,$w12
	ld.b	$w4,192($sp)
	asub_u.b	$w4,$w0,$w4
	ld.b	$w11,208($sp)
	asub_u.b	$w11,$w1,$w11
	ld.b	$w3,224($sp)
	asub_u.b	$w3,$w0,$w3
	ld.b	$w10,240($sp)
	asub_u.b	$w10,$w1,$w10
	ld.b	$w16,288($sp)
	asub_u.b	$w0,$w0,$w16
	ld.b	$w16,304($sp)
	asub_u.b	$w1,$w1,$w16
	vacc8b_u.d	$w8,$w8
	vacc8b_u.d	$w15,$w15
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w14,$w14
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w13,$w13
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w9,$w9
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w12,$w12
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w11,$w11
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w10,$w10
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w1,$w1
	ld.d	$w16,352($sp)
	addv.d	$w8,$w16,$w8
	addv.d	$w8,$w8,$w15
	st.d	$w8,352($sp)
	ld.d	$w8,448($sp)
	addv.d	$w7,$w8,$w7
	addv.d	$w7,$w7,$w14
	st.d	$w7,448($sp)
	ld.d	$w7,368($sp)
	addv.d	$w6,$w7,$w6
	addv.d	$w6,$w6,$w13
	st.d	$w6,368($sp)
	ld.d	$w6,432($sp)
	addv.d	$w5,$w6,$w5
	addv.d	$w5,$w5,$w12
	st.d	$w5,432($sp)
	ld.d	$w5,384($sp)
	addv.d	$w4,$w5,$w4
	addv.d	$w4,$w4,$w11
	st.d	$w4,384($sp)
	ld.d	$w4,416($sp)
	addv.d	$w3,$w4,$w3
	addv.d	$w3,$w3,$w10
	st.d	$w3,416($sp)
	ld.d	$w3,400($sp)
	addv.d	$w2,$w3,$w2
	addv.d	$w2,$w2,$w9
	st.d	$w2,400($sp)
	ld.d	$w2,464($sp)
	addv.d	$w0,$w2,$w0
	addv.d	$w0,$w0,$w1
	st.d	$w0,464($sp)
	daddiu	$16,$16,256
	ld	$2,328($sp)
	daddu	$2,$2,$17
	sd	$2,328($sp)
	ld	$3,336($sp)
	daddu	$2,$3,$17
	sd	$2,336($sp)
	ld	$4,344($sp)
	daddu	$2,$4,$17
	sd	$2,344($sp)
	ld	$2,480($sp)
	bne	$16,$2,.L2324
	daddu	$19,$19,$17

	ld.d	$w0,352($sp)
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld.d	$w0,432($sp)
	copy_s.w	$3,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	ld	$4,488($sp)
	sw	$3,0($4)
	ld.d	$w0,448($sp)
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld.d	$w0,384($sp)
	copy_s.w	$3,$w0[0]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,4($4)
	ld.d	$w0,368($sp)
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld.d	$w0,416($sp)
	copy_s.w	$3,$w0[0]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,8($4)
	ld.d	$w0,400($sp)
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld.d	$w0,464($sp)
	copy_s.w	$3,$w0[0]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,12($4)
	ld	$31,584($sp)
	ld	$fp,576($sp)
	ld	$28,568($sp)
	ld	$23,560($sp)
	ld	$22,552($sp)
	ld	$21,544($sp)
	ld	$20,536($sp)
	ld	$19,528($sp)
	ld	$18,520($sp)
	ld	$17,512($sp)
	ld	$16,504($sp)
	jr	$31
	daddiu	$sp,$sp,592

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi:
	.frame	$sp,496,$31		# vars= 400, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-496
	sd	$31,488($sp)
	sd	$fp,480($sp)
	sd	$28,472($sp)
	sd	$23,464($sp)
	sd	$22,456($sp)
	sd	$21,448($sp)
	sd	$20,440($sp)
	sd	$19,432($sp)
	sd	$18,424($sp)
	sd	$17,416($sp)
	sd	$16,408($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi)))
	move	$16,$4
	move	$19,$5
	move	$18,$6
	move	$17,$7
	sd	$8,256($sp)
	sd	$9,384($sp)
	ldi.d	$w0,0
	st.d	$w0,272($sp)
	st.d	$w0,336($sp)
	st.d	$w0,288($sp)
	st.d	$w0,320($sp)
	st.d	$w0,304($sp)
	st.d	$w0,352($sp)
	dsll	$2,$8,1
	sd	$2,264($sp)
	dsll	$2,$8,2
	sd	$2,368($sp)
	daddiu	$2,$4,1024
	sd	$2,376($sp)
	daddiu	$fp,$sp,16
	daddiu	$23,$sp,48
	daddiu	$22,$sp,32
	daddiu	$21,$sp,80
	daddiu	$20,$sp,64
	move	$7,$fp
.L2331:
	move	$6,$sp
	li	$5,64			# 0x40
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	move	$4,$16

	move	$7,$23
	move	$6,$22
	ld	$5,256($sp)
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	move	$4,$19

	move	$7,$21
	move	$6,$20
	ld	$5,256($sp)
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	move	$4,$18

	daddiu	$7,$sp,112
	daddiu	$6,$sp,96
	ld	$5,256($sp)
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	move	$4,$17

	daddiu	$7,$sp,144
	daddiu	$6,$sp,128
	li	$5,64			# 0x40
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	daddiu	$4,$16,128

	daddiu	$7,$sp,176
	daddiu	$6,$sp,160
	ld	$5,256($sp)
	ld	$2,264($sp)
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	daddu	$4,$19,$2

	daddiu	$7,$sp,208
	daddiu	$6,$sp,192
	ld	$5,256($sp)
	ld	$2,264($sp)
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	daddu	$4,$18,$2

	daddiu	$7,$sp,240
	daddiu	$6,$sp,224
	ld	$5,256($sp)
	ld	$2,264($sp)
	ld	$25,%call16(_Z5LD_V2PKhlPDv2_xS2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z5LD_V2PKhlPDv2_xS2_
1:	jalr	$25
	daddu	$4,$17,$2

	ld.b	$w0,0($sp)
	ld.b	$w7,32($sp)
	asub_u.b	$w7,$w0,$w7
	ld.b	$w2,16($sp)
	ld.b	$w11,48($sp)
	asub_u.b	$w11,$w2,$w11
	ld.b	$w6,64($sp)
	asub_u.b	$w6,$w0,$w6
	ld.b	$w10,80($sp)
	asub_u.b	$w10,$w2,$w10
	ld.b	$w1,96($sp)
	asub_u.b	$w1,$w0,$w1
	ld.b	$w5,112($sp)
	asub_u.b	$w5,$w2,$w5
	ld.b	$w0,128($sp)
	ld.b	$w4,160($sp)
	asub_u.b	$w4,$w0,$w4
	ld.b	$w2,144($sp)
	ld.b	$w9,176($sp)
	asub_u.b	$w9,$w2,$w9
	ld.b	$w3,192($sp)
	asub_u.b	$w3,$w0,$w3
	ld.b	$w8,208($sp)
	asub_u.b	$w8,$w2,$w8
	ld.b	$w12,224($sp)
	asub_u.b	$w0,$w0,$w12
	ld.b	$w12,240($sp)
	asub_u.b	$w2,$w2,$w12
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w11,$w11
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w10,$w10
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w9,$w9
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w8,$w8
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w2,$w2
	ld.d	$w12,272($sp)
	addv.d	$w7,$w12,$w7
	addv.d	$w7,$w7,$w11
	st.d	$w7,272($sp)
	ld.d	$w7,336($sp)
	addv.d	$w6,$w7,$w6
	addv.d	$w6,$w6,$w10
	st.d	$w6,336($sp)
	ld.d	$w6,288($sp)
	addv.d	$w1,$w6,$w1
	addv.d	$w1,$w1,$w5
	st.d	$w1,288($sp)
	ld.d	$w1,320($sp)
	addv.d	$w1,$w1,$w4
	addv.d	$w1,$w1,$w9
	st.d	$w1,320($sp)
	ld.d	$w1,304($sp)
	addv.d	$w1,$w1,$w3
	addv.d	$w1,$w1,$w8
	st.d	$w1,304($sp)
	ld.d	$w1,352($sp)
	addv.d	$w0,$w1,$w0
	addv.d	$w0,$w0,$w2
	st.d	$w0,352($sp)
	daddiu	$16,$16,256
	ld	$2,368($sp)
	daddu	$19,$19,$2
	daddu	$18,$18,$2
	daddu	$17,$17,$2
	ld	$2,376($sp)
	bne	$16,$2,.L2331
	move	$7,$fp

	ld.d	$w0,272($sp)
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld.d	$w0,320($sp)
	copy_s.w	$3,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	ld	$4,384($sp)
	sw	$3,0($4)
	ld.d	$w0,336($sp)
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld.d	$w0,304($sp)
	copy_s.w	$3,$w0[0]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,4($4)
	ld.d	$w0,288($sp)
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld.d	$w0,352($sp)
	copy_s.w	$3,$w0[0]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,8($4)
	ld	$31,488($sp)
	ld	$fp,480($sp)
	ld	$28,472($sp)
	ld	$23,464($sp)
	ld	$22,456($sp)
	ld	$21,448($sp)
	ld	$20,440($sp)
	ld	$19,432($sp)
	ld	$18,424($sp)
	ld	$17,416($sp)
	ld	$16,408($sp)
	jr	$31
	daddiu	$sp,$sp,496

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l
	.type	_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l, @function
_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l:
	.frame	$sp,48,$31		# vars= 16, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	sd	$17,24($sp)
	sd	$16,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l)))
	move	$16,$6
	ld	$25,%call16(_Z7L_4x4_BPKhl)($28)
	.reloc	1f,R_MIPS_JALR,_Z7L_4x4_BPKhl
1:	jalr	$25
	move	$17,$7

	insert.d	$w0[0],$2
	insert.d	$w0[1],$3
	st.w	$w0,0($sp)
	move	$5,$17
	ld	$25,%call16(_Z7L_4x4_BPKhl)($28)
	.reloc	1f,R_MIPS_JALR,_Z7L_4x4_BPKhl
1:	jalr	$25
	move	$4,$16

	insert.d	$w0[0],$2
	insert.d	$w0[1],$3
	ld.b	$w1,0($sp)
	asub_u.b	$w0,$w1,$w0
	vacc8b_u.d	$w0,$w0
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l
	.size	_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l, .-_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l:
	.frame	$sp,288,$31		# vars= 192, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-288
	sd	$31,280($sp)
	sd	$fp,272($sp)
	sd	$28,264($sp)
	sd	$23,256($sp)
	sd	$22,248($sp)
	sd	$21,240($sp)
	sd	$20,232($sp)
	sd	$19,224($sp)
	sd	$18,216($sp)
	sd	$17,208($sp)
	sd	$16,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l)))
	sd	$5,128($sp)
	sd	$7,136($sp)
	dsll	$2,$5,2
	sd	$2,168($sp)
	sd	$4,144($sp)
	dsll	$2,$7,2
	sd	$2,176($sp)
	sd	$6,152($sp)
	li	$2,16			# 0x10
	sd	$2,160($sp)
	move	$18,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	b	.L2336
	daddiu	$20,$sp,16

.L2341:
	addiu	$2,$2,-1
	sd	$2,160($sp)
	ld	$3,144($sp)
	ld	$4,168($sp)
	daddu	$3,$3,$4
	sd	$3,144($sp)
	ld	$3,152($sp)
	ld	$4,176($sp)
	daddu	$3,$3,$4
	beq	$2,$0,.L2340
	sd	$3,152($sp)

.L2336:
	ld	$16,144($sp)
	daddiu	$19,$16,48
	ld	$17,152($sp)
.L2335:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,128($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,136($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,8
	bne	$16,$19,.L2335
	daddiu	$17,$17,8

	b	.L2341
	ld	$2,160($sp)

.L2340:
	move	$2,$18
	ld	$31,280($sp)
	ld	$fp,272($sp)
	ld	$28,264($sp)
	ld	$23,256($sp)
	ld	$22,248($sp)
	ld	$21,240($sp)
	ld	$20,232($sp)
	ld	$19,224($sp)
	ld	$18,216($sp)
	ld	$17,208($sp)
	ld	$16,200($sp)
	jr	$31
	daddiu	$sp,$sp,288

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l:
	.frame	$sp,288,$31		# vars= 192, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-288
	sd	$31,280($sp)
	sd	$fp,272($sp)
	sd	$28,264($sp)
	sd	$23,256($sp)
	sd	$22,248($sp)
	sd	$21,240($sp)
	sd	$20,232($sp)
	sd	$19,224($sp)
	sd	$18,216($sp)
	sd	$17,208($sp)
	sd	$16,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l)))
	sd	$5,128($sp)
	sd	$7,136($sp)
	dsll	$2,$5,2
	sd	$2,168($sp)
	sd	$4,144($sp)
	dsll	$2,$7,2
	sd	$2,176($sp)
	sd	$6,152($sp)
	li	$2,12			# 0xc
	sd	$2,160($sp)
	move	$18,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	b	.L2344
	daddiu	$20,$sp,16

.L2349:
	addiu	$2,$2,-1
	sd	$2,160($sp)
	ld	$3,144($sp)
	ld	$4,168($sp)
	daddu	$3,$3,$4
	sd	$3,144($sp)
	ld	$3,152($sp)
	ld	$4,176($sp)
	daddu	$3,$3,$4
	beq	$2,$0,.L2348
	sd	$3,152($sp)

.L2344:
	ld	$16,144($sp)
	daddiu	$19,$16,64
	ld	$17,152($sp)
.L2343:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,128($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,136($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,8
	bne	$16,$19,.L2343
	daddiu	$17,$17,8

	b	.L2349
	ld	$2,160($sp)

.L2348:
	move	$2,$18
	ld	$31,280($sp)
	ld	$fp,272($sp)
	ld	$28,264($sp)
	ld	$23,256($sp)
	ld	$22,248($sp)
	ld	$21,240($sp)
	ld	$20,232($sp)
	ld	$19,224($sp)
	ld	$18,216($sp)
	ld	$17,208($sp)
	ld	$16,200($sp)
	jr	$31
	daddiu	$sp,$sp,288

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l:
	.frame	$sp,288,$31		# vars= 192, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-288
	sd	$31,280($sp)
	sd	$fp,272($sp)
	sd	$28,264($sp)
	sd	$23,256($sp)
	sd	$22,248($sp)
	sd	$21,240($sp)
	sd	$20,232($sp)
	sd	$19,224($sp)
	sd	$18,216($sp)
	sd	$17,208($sp)
	sd	$16,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l)))
	sd	$5,128($sp)
	sd	$7,136($sp)
	dsll	$2,$5,2
	sd	$2,168($sp)
	sd	$4,144($sp)
	dsll	$2,$7,2
	sd	$2,176($sp)
	sd	$6,152($sp)
	li	$2,16			# 0x10
	sd	$2,160($sp)
	move	$18,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	b	.L2352
	daddiu	$20,$sp,16

.L2357:
	addiu	$2,$2,-1
	sd	$2,160($sp)
	ld	$3,144($sp)
	ld	$4,168($sp)
	daddu	$3,$3,$4
	sd	$3,144($sp)
	ld	$3,152($sp)
	ld	$4,176($sp)
	daddu	$3,$3,$4
	beq	$2,$0,.L2356
	sd	$3,152($sp)

.L2352:
	ld	$16,144($sp)
	daddiu	$19,$16,32
	ld	$17,152($sp)
.L2351:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,128($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,136($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,8
	bne	$16,$19,.L2351
	daddiu	$17,$17,8

	b	.L2357
	ld	$2,160($sp)

.L2356:
	move	$2,$18
	ld	$31,280($sp)
	ld	$fp,272($sp)
	ld	$28,264($sp)
	ld	$23,256($sp)
	ld	$22,248($sp)
	ld	$21,240($sp)
	ld	$20,232($sp)
	ld	$19,224($sp)
	ld	$18,216($sp)
	ld	$17,208($sp)
	ld	$16,200($sp)
	jr	$31
	daddiu	$sp,$sp,288

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l:
	.frame	$sp,288,$31		# vars= 192, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-288
	sd	$31,280($sp)
	sd	$fp,272($sp)
	sd	$28,264($sp)
	sd	$23,256($sp)
	sd	$22,248($sp)
	sd	$21,240($sp)
	sd	$20,232($sp)
	sd	$19,224($sp)
	sd	$18,216($sp)
	sd	$17,208($sp)
	sd	$16,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l)))
	sd	$5,128($sp)
	sd	$7,136($sp)
	dsll	$2,$5,2
	sd	$2,168($sp)
	sd	$4,144($sp)
	dsll	$2,$7,2
	sd	$2,176($sp)
	sd	$6,152($sp)
	li	$2,8			# 0x8
	sd	$2,160($sp)
	move	$18,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	daddiu	$20,$sp,16
.L2360:
	ld	$16,144($sp)
	daddiu	$19,$16,64
	ld	$17,152($sp)
.L2359:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,128($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,136($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,8
	bne	$16,$19,.L2359
	daddiu	$17,$17,8

	ld	$2,160($sp)
	addiu	$2,$2,-1
	sd	$2,160($sp)
	ld	$3,144($sp)
	ld	$4,168($sp)
	daddu	$3,$3,$4
	sd	$3,144($sp)
	ld	$3,152($sp)
	ld	$4,176($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2360
	sd	$3,152($sp)

	move	$2,$18
	ld	$31,280($sp)
	ld	$fp,272($sp)
	ld	$28,264($sp)
	ld	$23,256($sp)
	ld	$22,248($sp)
	ld	$21,240($sp)
	ld	$20,232($sp)
	ld	$19,224($sp)
	ld	$18,216($sp)
	ld	$17,208($sp)
	ld	$16,200($sp)
	jr	$31
	daddiu	$sp,$sp,288

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l:
	.frame	$sp,288,$31		# vars= 192, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-288
	sd	$31,280($sp)
	sd	$fp,272($sp)
	sd	$28,264($sp)
	sd	$23,256($sp)
	sd	$22,248($sp)
	sd	$21,240($sp)
	sd	$20,232($sp)
	sd	$19,224($sp)
	sd	$18,216($sp)
	sd	$17,208($sp)
	sd	$16,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l)))
	sd	$5,144($sp)
	sd	$7,152($sp)
	dsll	$2,$5,2
	sd	$2,168($sp)
	sd	$4,128($sp)
	dsll	$2,$7,2
	sd	$2,176($sp)
	sd	$6,136($sp)
	li	$2,16			# 0x10
	sd	$2,160($sp)
	move	$18,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	b	.L2366
	daddiu	$20,$sp,16

.L2371:
	addiu	$2,$2,-1
	sd	$2,160($sp)
	ld	$3,128($sp)
	ld	$4,168($sp)
	daddu	$3,$3,$4
	sd	$3,128($sp)
	ld	$3,136($sp)
	ld	$4,176($sp)
	daddu	$3,$3,$4
	beq	$2,$0,.L2370
	sd	$3,136($sp)

.L2366:
	ld	$16,128($sp)
	daddiu	$19,$16,24
	ld	$17,136($sp)
.L2365:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,144($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,152($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,8
	bne	$16,$19,.L2365
	daddiu	$17,$17,8

	b	.L2371
	ld	$2,160($sp)

.L2370:
	move	$2,$18
	ld	$31,280($sp)
	ld	$fp,272($sp)
	ld	$28,264($sp)
	ld	$23,256($sp)
	ld	$22,248($sp)
	ld	$21,240($sp)
	ld	$20,232($sp)
	ld	$19,224($sp)
	ld	$18,216($sp)
	ld	$17,208($sp)
	ld	$16,200($sp)
	jr	$31
	daddiu	$sp,$sp,288

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l:
	.frame	$sp,288,$31		# vars= 192, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-288
	sd	$31,280($sp)
	sd	$fp,272($sp)
	sd	$28,264($sp)
	sd	$23,256($sp)
	sd	$22,248($sp)
	sd	$21,240($sp)
	sd	$20,232($sp)
	sd	$19,224($sp)
	sd	$18,216($sp)
	sd	$17,208($sp)
	sd	$16,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l)))
	sd	$5,128($sp)
	sd	$7,136($sp)
	dsll	$2,$5,2
	sd	$2,168($sp)
	sd	$4,144($sp)
	dsll	$2,$7,2
	sd	$2,176($sp)
	sd	$6,152($sp)
	li	$2,12			# 0xc
	sd	$2,160($sp)
	move	$18,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	b	.L2374
	daddiu	$20,$sp,16

.L2379:
	addiu	$2,$2,-1
	sd	$2,160($sp)
	ld	$3,144($sp)
	ld	$4,168($sp)
	daddu	$3,$3,$4
	sd	$3,144($sp)
	ld	$3,152($sp)
	ld	$4,176($sp)
	daddu	$3,$3,$4
	beq	$2,$0,.L2378
	sd	$3,152($sp)

.L2374:
	ld	$16,144($sp)
	daddiu	$19,$16,32
	ld	$17,152($sp)
.L2373:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,128($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,136($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,8
	bne	$16,$19,.L2373
	daddiu	$17,$17,8

	b	.L2379
	ld	$2,160($sp)

.L2378:
	move	$2,$18
	ld	$31,280($sp)
	ld	$fp,272($sp)
	ld	$28,264($sp)
	ld	$23,256($sp)
	ld	$22,248($sp)
	ld	$21,240($sp)
	ld	$20,232($sp)
	ld	$19,224($sp)
	ld	$18,216($sp)
	ld	$17,208($sp)
	ld	$16,200($sp)
	jr	$31
	daddiu	$sp,$sp,288

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l:
	.frame	$sp,288,$31		# vars= 192, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-288
	sd	$31,280($sp)
	sd	$fp,272($sp)
	sd	$28,264($sp)
	sd	$23,256($sp)
	sd	$22,248($sp)
	sd	$21,240($sp)
	sd	$20,232($sp)
	sd	$19,224($sp)
	sd	$18,216($sp)
	sd	$17,208($sp)
	sd	$16,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l)))
	sd	$5,144($sp)
	sd	$7,152($sp)
	dsll	$2,$5,2
	sd	$2,168($sp)
	move	$19,$4
	dsll	$2,$7,2
	sd	$2,176($sp)
	sd	$6,128($sp)
	li	$2,16			# 0x10
	sd	$2,160($sp)
	move	$18,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	b	.L2382
	daddiu	$20,$sp,16

.L2387:
	addiu	$2,$2,-1
	sd	$2,160($sp)
	ld	$3,168($sp)
	daddu	$19,$19,$3
	ld	$3,128($sp)
	ld	$4,176($sp)
	daddu	$3,$3,$4
	beq	$2,$0,.L2386
	sd	$3,128($sp)

.L2382:
	daddiu	$2,$19,16
	sd	$2,136($sp)
	ld	$17,128($sp)
	move	$16,$19
.L2381:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,144($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,152($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,8
	ld	$2,136($sp)
	bne	$16,$2,.L2381
	daddiu	$17,$17,8

	b	.L2387
	ld	$2,160($sp)

.L2386:
	move	$2,$18
	ld	$31,280($sp)
	ld	$fp,272($sp)
	ld	$28,264($sp)
	ld	$23,256($sp)
	ld	$22,248($sp)
	ld	$21,240($sp)
	ld	$20,232($sp)
	ld	$19,224($sp)
	ld	$18,216($sp)
	ld	$17,208($sp)
	ld	$16,200($sp)
	jr	$31
	daddiu	$sp,$sp,288

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l:
	.frame	$sp,288,$31		# vars= 192, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-288
	sd	$31,280($sp)
	sd	$fp,272($sp)
	sd	$28,264($sp)
	sd	$23,256($sp)
	sd	$22,248($sp)
	sd	$21,240($sp)
	sd	$20,232($sp)
	sd	$19,224($sp)
	sd	$18,216($sp)
	sd	$17,208($sp)
	sd	$16,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l)))
	sd	$5,128($sp)
	sd	$7,136($sp)
	dsll	$2,$5,2
	sd	$2,168($sp)
	sd	$4,144($sp)
	dsll	$2,$7,2
	sd	$2,176($sp)
	sd	$6,152($sp)
	li	$2,4			# 0x4
	sd	$2,160($sp)
	move	$18,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	daddiu	$20,$sp,16
.L2390:
	ld	$16,144($sp)
	daddiu	$19,$16,64
	ld	$17,152($sp)
.L2389:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,128($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,136($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,8
	bne	$16,$19,.L2389
	daddiu	$17,$17,8

	ld	$2,160($sp)
	addiu	$2,$2,-1
	sd	$2,160($sp)
	ld	$3,144($sp)
	ld	$4,168($sp)
	daddu	$3,$3,$4
	sd	$3,144($sp)
	ld	$3,152($sp)
	ld	$4,176($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2390
	sd	$3,152($sp)

	move	$2,$18
	ld	$31,280($sp)
	ld	$fp,272($sp)
	ld	$28,264($sp)
	ld	$23,256($sp)
	ld	$22,248($sp)
	ld	$21,240($sp)
	ld	$20,232($sp)
	ld	$19,224($sp)
	ld	$18,216($sp)
	ld	$17,208($sp)
	ld	$16,200($sp)
	jr	$31
	daddiu	$sp,$sp,288

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l:
	.frame	$sp,288,$31		# vars= 192, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-288
	sd	$31,280($sp)
	sd	$fp,272($sp)
	sd	$28,264($sp)
	sd	$23,256($sp)
	sd	$22,248($sp)
	sd	$21,240($sp)
	sd	$20,232($sp)
	sd	$19,224($sp)
	sd	$18,216($sp)
	sd	$17,208($sp)
	sd	$16,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l)))
	sd	$5,144($sp)
	sd	$7,152($sp)
	dsll	$2,$5,2
	sd	$2,168($sp)
	sd	$4,128($sp)
	dsll	$2,$7,2
	sd	$2,176($sp)
	sd	$6,136($sp)
	li	$2,8			# 0x8
	sd	$2,160($sp)
	move	$18,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	b	.L2396
	daddiu	$20,$sp,16

.L2401:
	addiu	$2,$2,-1
	sd	$2,160($sp)
	ld	$3,128($sp)
	ld	$4,168($sp)
	daddu	$3,$3,$4
	sd	$3,128($sp)
	ld	$3,136($sp)
	ld	$4,176($sp)
	daddu	$3,$3,$4
	beq	$2,$0,.L2400
	sd	$3,136($sp)

.L2396:
	ld	$16,128($sp)
	daddiu	$19,$16,24
	ld	$17,136($sp)
.L2395:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,144($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,152($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,8
	bne	$16,$19,.L2395
	daddiu	$17,$17,8

	b	.L2401
	ld	$2,160($sp)

.L2400:
	move	$2,$18
	ld	$31,280($sp)
	ld	$fp,272($sp)
	ld	$28,264($sp)
	ld	$23,256($sp)
	ld	$22,248($sp)
	ld	$21,240($sp)
	ld	$20,232($sp)
	ld	$19,224($sp)
	ld	$18,216($sp)
	ld	$17,208($sp)
	ld	$16,200($sp)
	jr	$31
	daddiu	$sp,$sp,288

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l:
	.frame	$sp,288,$31		# vars= 192, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-288
	sd	$31,280($sp)
	sd	$fp,272($sp)
	sd	$28,264($sp)
	sd	$23,256($sp)
	sd	$22,248($sp)
	sd	$21,240($sp)
	sd	$20,232($sp)
	sd	$19,224($sp)
	sd	$18,216($sp)
	sd	$17,208($sp)
	sd	$16,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l)))
	sd	$5,128($sp)
	sd	$7,136($sp)
	dsll	$2,$5,2
	sd	$2,168($sp)
	sd	$4,144($sp)
	dsll	$2,$7,2
	sd	$2,176($sp)
	sd	$6,152($sp)
	li	$2,6			# 0x6
	sd	$2,160($sp)
	move	$18,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	b	.L2404
	daddiu	$20,$sp,16

.L2409:
	addiu	$2,$2,-1
	sd	$2,160($sp)
	ld	$3,144($sp)
	ld	$4,168($sp)
	daddu	$3,$3,$4
	sd	$3,144($sp)
	ld	$3,152($sp)
	ld	$4,176($sp)
	daddu	$3,$3,$4
	beq	$2,$0,.L2408
	sd	$3,152($sp)

.L2404:
	ld	$16,144($sp)
	daddiu	$19,$16,32
	ld	$17,152($sp)
.L2403:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,128($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,136($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,8
	bne	$16,$19,.L2403
	daddiu	$17,$17,8

	b	.L2409
	ld	$2,160($sp)

.L2408:
	move	$2,$18
	ld	$31,280($sp)
	ld	$fp,272($sp)
	ld	$28,264($sp)
	ld	$23,256($sp)
	ld	$22,248($sp)
	ld	$21,240($sp)
	ld	$20,232($sp)
	ld	$19,224($sp)
	ld	$18,216($sp)
	ld	$17,208($sp)
	ld	$16,200($sp)
	jr	$31
	daddiu	$sp,$sp,288

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l
	.type	_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l, @function
_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l:
	.frame	$sp,480,$31		# vars= 320, regs= 11/8, args= 0, gp= 0
	.mask	0xd0ff0000,-72
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-480
	sd	$31,408($sp)
	sd	$fp,400($sp)
	sd	$28,392($sp)
	sd	$23,384($sp)
	sd	$22,376($sp)
	sd	$21,368($sp)
	sd	$20,360($sp)
	sd	$19,352($sp)
	sd	$18,344($sp)
	sd	$17,336($sp)
	sd	$16,328($sp)
	sdc1	$f31,472($sp)
	sdc1	$f30,464($sp)
	sdc1	$f29,456($sp)
	sdc1	$f28,448($sp)
	sdc1	$f27,440($sp)
	sdc1	$f26,432($sp)
	sdc1	$f25,424($sp)
	sdc1	$f24,416($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l)))
	sd	$4,272($sp)
	sd	$5,256($sp)
	sd	$6,280($sp)
	sd	$7,264($sp)
	dsll	$2,$5,2
	sd	$2,296($sp)
	dsll	$2,$7,2
	sd	$2,304($sp)
	li	$2,16			# 0x10
	sd	$2,288($sp)
	move	$18,$0
	daddiu	$fp,$sp,192
	daddiu	$23,$sp,208
	daddiu	$22,$sp,224
	daddiu	$21,$sp,240
	b	.L2412
	daddiu	$20,$sp,64

.L2417:
	ld	$3,296($sp)
	daddu	$2,$2,$3
	sd	$2,272($sp)
	ld	$2,280($sp)
	ld	$3,304($sp)
	daddu	$2,$2,$3
	sd	$2,280($sp)
	ld	$2,288($sp)
	addiu	$2,$2,-1
	beq	$2,$0,.L2416
	sd	$2,288($sp)

.L2412:
	ld	$2,272($sp)
	move	$16,$2
	ld	$17,280($sp)
	daddiu	$19,$2,64
.L2411:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,256($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$20
	daddiu	$8,$sp,80
	daddiu	$7,$sp,96
	daddiu	$6,$sp,112
	ld	$5,256($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddiu	$4,$16,8

	daddiu	$9,$sp,128
	daddiu	$8,$sp,144
	daddiu	$7,$sp,160
	daddiu	$6,$sp,176
	ld	$5,264($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	move	$9,$sp
	daddiu	$8,$sp,16
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,264($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddiu	$4,$17,8

	ld.b	$w12,240($sp)
	hadd_u.h	$w20,$w12,$w12
	ld.b	$w11,224($sp)
	hadd_u.h	$w6,$w11,$w11
	ld.b	$w10,208($sp)
	hadd_u.h	$w3,$w10,$w10
	ld.b	$w9,192($sp)
	hadd_u.h	$w1,$w9,$w9
	ld.b	$w19,176($sp)
	hadd_u.h	$w5,$w19,$w19
	ld.b	$w18,160($sp)
	hadd_u.h	$w31,$w18,$w18
	ld.b	$w17,144($sp)
	hadd_u.h	$w30,$w17,$w17
	ld.b	$w16,128($sp)
	hadd_u.h	$w29,$w16,$w16
	ld.b	$w4,112($sp)
	hadd_u.h	$w13,$w4,$w4
	ld.b	$w15,96($sp)
	hadd_u.h	$w7,$w15,$w15
	ld.b	$w14,80($sp)
	hadd_u.h	$w8,$w14,$w14
	ld.b	$w25,64($sp)
	hadd_u.h	$w0,$w25,$w25
	ld.b	$w24,48($sp)
	hadd_u.h	$w28,$w24,$w24
	ld.b	$w23,32($sp)
	hadd_u.h	$w27,$w23,$w23
	ld.b	$w22,16($sp)
	hadd_u.h	$w2,$w22,$w22
	ld.b	$w21,0($sp)
	hadd_u.h	$w26,$w21,$w21
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w19,$w19,$w19
	hsub_u.h	$w18,$w18,$w18
	hsub_u.h	$w17,$w17,$w17
	hsub_u.h	$w16,$w16,$w16
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w15,$w15,$w15
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w25,$w25,$w25
	hsub_u.h	$w24,$w24,$w24
	hsub_u.h	$w23,$w23,$w23
	hsub_u.h	$w22,$w22,$w22
	hsub_u.h	$w21,$w21,$w21
	insve.d	$w20[1],$w12[0]
	insve.d	$w6[1],$w11[0]
	insve.d	$w3[1],$w10[0]
	move.v	$w12,$w3
	insve.d	$w1[1],$w9[0]
	insve.d	$w5[1],$w19[0]
	insve.d	$w31[1],$w18[0]
	insve.d	$w30[1],$w17[0]
	insve.d	$w29[1],$w16[0]
	move.v	$w3,$w13
	insve.d	$w3[1],$w4[0]
	move.v	$w10,$w3
	move.v	$w3,$w7
	insve.d	$w3[1],$w15[0]
	move.v	$w4,$w3
	insve.d	$w8[1],$w14[0]
	insve.d	$w0[1],$w25[0]
	insve.d	$w28[1],$w24[0]
	insve.d	$w27[1],$w23[0]
	insve.d	$w2[1],$w22[0]
	insve.d	$w26[1],$w21[0]
	subv.h	$w13,$w20,$w5
	subv.h	$w5,$w6,$w31
	subv.h	$w11,$w12,$w30
	subv.h	$w3,$w1,$w29
	subv.h	$w9,$w10,$w28
	subv.h	$w7,$w4,$w27
	subv.h	$w1,$w8,$w2
	subv.h	$w2,$w0,$w26
	addv.h	$w8,$w5,$w13
	subv.h	$w0,$w5,$w13
	addv.h	$w6,$w3,$w11
	subv.h	$w3,$w3,$w11
	addv.h	$w4,$w7,$w9
	subv.h	$w7,$w7,$w9
	addv.h	$w5,$w2,$w1
	subv.h	$w2,$w2,$w1
	addv.h	$w1,$w6,$w8
	asub_s.h	$w6,$w6,$w8
	addv.h	$w9,$w3,$w0
	asub_s.h	$w3,$w3,$w0
	addv.h	$w8,$w5,$w4
	asub_s.h	$w5,$w5,$w4
	addv.h	$w10,$w2,$w7
	asub_s.h	$w2,$w2,$w7
	vabs.h	$w7,$w1
	vabs.h	$w9,$w9
	vabs.h	$w8,$w8
	vabs.h	$w10,$w10
	ilvod.h	$w1,$w9,$w7
	ilvod.h	$w0,$w3,$w6
	ilvev.h	$w9,$w9,$w7
	ilvev.h	$w3,$w3,$w6
	ilvod.h	$w4,$w10,$w8
	ilvod.h	$w7,$w2,$w5
	ilvev.h	$w8,$w10,$w8
	ilvev.h	$w2,$w2,$w5
	max_s.h	$w1,$w1,$w9
	max_s.h	$w3,$w0,$w3
	max_s.h	$w4,$w4,$w8
	max_s.h	$w2,$w7,$w2
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w4,$w4,$w4
	hadd_s.w	$w2,$w2,$w2
	addv.w	$w0,$w1,$w3
	addv.w	$w4,$w4,$w2
	addv.w	$w0,$w0,$w4
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,16
	bne	$16,$19,.L2411
	daddiu	$17,$17,16

	b	.L2417
	ld	$2,272($sp)

.L2416:
	move	$2,$18
	ld	$31,408($sp)
	ld	$fp,400($sp)
	ld	$28,392($sp)
	ld	$23,384($sp)
	ld	$22,376($sp)
	ld	$21,368($sp)
	ld	$20,360($sp)
	ld	$19,352($sp)
	ld	$18,344($sp)
	ld	$17,336($sp)
	ld	$16,328($sp)
	ldc1	$f31,472($sp)
	ldc1	$f30,464($sp)
	ldc1	$f29,456($sp)
	ldc1	$f28,448($sp)
	ldc1	$f27,440($sp)
	ldc1	$f26,432($sp)
	ldc1	$f25,424($sp)
	ldc1	$f24,416($sp)
	jr	$31
	daddiu	$sp,$sp,480

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l
	.size	_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l, .-_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l:
	.frame	$sp,256,$31		# vars= 160, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-256
	sd	$31,248($sp)
	sd	$fp,240($sp)
	sd	$28,232($sp)
	sd	$23,224($sp)
	sd	$22,216($sp)
	sd	$21,208($sp)
	sd	$20,200($sp)
	sd	$19,192($sp)
	sd	$18,184($sp)
	sd	$17,176($sp)
	sd	$16,168($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l)))
	sd	$5,144($sp)
	sd	$7,152($sp)
	dsll	$2,$5,2
	sd	$2,128($sp)
	move	$18,$4
	dsll	$2,$7,2
	sd	$2,136($sp)
	move	$17,$6
	li	$16,16			# 0x10
	move	$19,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	daddiu	$20,$sp,16
.L2419:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,144($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$18

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,152($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w3,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w0,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w3[1],$w13[0]
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w0,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w0
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$19,$2,$19
	addiu	$16,$16,-1
	ld	$2,128($sp)
	daddu	$18,$18,$2
	ld	$2,136($sp)
	bne	$16,$0,.L2419
	daddu	$17,$17,$2

	move	$2,$19
	ld	$31,248($sp)
	ld	$fp,240($sp)
	ld	$28,232($sp)
	ld	$23,224($sp)
	ld	$22,216($sp)
	ld	$21,208($sp)
	ld	$20,200($sp)
	ld	$19,192($sp)
	ld	$18,184($sp)
	ld	$17,176($sp)
	ld	$16,168($sp)
	jr	$31
	daddiu	$sp,$sp,256

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l:
	.frame	$sp,288,$31		# vars= 192, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-288
	sd	$31,280($sp)
	sd	$fp,272($sp)
	sd	$28,264($sp)
	sd	$23,256($sp)
	sd	$22,248($sp)
	sd	$21,240($sp)
	sd	$20,232($sp)
	sd	$19,224($sp)
	sd	$18,216($sp)
	sd	$17,208($sp)
	sd	$16,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l)))
	sd	$5,128($sp)
	sd	$7,136($sp)
	dsll	$2,$5,2
	sd	$2,168($sp)
	sd	$4,144($sp)
	dsll	$2,$7,2
	sd	$2,176($sp)
	sd	$6,152($sp)
	li	$2,4			# 0x4
	sd	$2,160($sp)
	move	$18,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	daddiu	$20,$sp,16
.L2424:
	ld	$16,144($sp)
	daddiu	$19,$16,32
	ld	$17,152($sp)
.L2423:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,128($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,136($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,8
	bne	$16,$19,.L2423
	daddiu	$17,$17,8

	ld	$2,160($sp)
	addiu	$2,$2,-1
	sd	$2,160($sp)
	ld	$3,144($sp)
	ld	$4,168($sp)
	daddu	$3,$3,$4
	sd	$3,144($sp)
	ld	$3,152($sp)
	ld	$4,176($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2424
	sd	$3,152($sp)

	move	$2,$18
	ld	$31,280($sp)
	ld	$fp,272($sp)
	ld	$28,264($sp)
	ld	$23,256($sp)
	ld	$22,248($sp)
	ld	$21,240($sp)
	ld	$20,232($sp)
	ld	$19,224($sp)
	ld	$18,216($sp)
	ld	$17,208($sp)
	ld	$16,200($sp)
	jr	$31
	daddiu	$sp,$sp,288

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l:
	.frame	$sp,288,$31		# vars= 192, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-288
	sd	$31,280($sp)
	sd	$fp,272($sp)
	sd	$28,264($sp)
	sd	$23,256($sp)
	sd	$22,248($sp)
	sd	$21,240($sp)
	sd	$20,232($sp)
	sd	$19,224($sp)
	sd	$18,216($sp)
	sd	$17,208($sp)
	sd	$16,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l)))
	sd	$5,144($sp)
	sd	$7,152($sp)
	dsll	$2,$5,2
	sd	$2,168($sp)
	move	$19,$4
	dsll	$2,$7,2
	sd	$2,176($sp)
	sd	$6,128($sp)
	li	$2,8			# 0x8
	sd	$2,160($sp)
	move	$18,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	b	.L2430
	daddiu	$20,$sp,16

.L2435:
	addiu	$2,$2,-1
	sd	$2,160($sp)
	ld	$3,168($sp)
	daddu	$19,$19,$3
	ld	$3,128($sp)
	ld	$4,176($sp)
	daddu	$3,$3,$4
	beq	$2,$0,.L2434
	sd	$3,128($sp)

.L2430:
	daddiu	$2,$19,16
	sd	$2,136($sp)
	ld	$17,128($sp)
	move	$16,$19
.L2429:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,144($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,152($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,8
	ld	$2,136($sp)
	bne	$16,$2,.L2429
	daddiu	$17,$17,8

	b	.L2435
	ld	$2,160($sp)

.L2434:
	move	$2,$18
	ld	$31,280($sp)
	ld	$fp,272($sp)
	ld	$28,264($sp)
	ld	$23,256($sp)
	ld	$22,248($sp)
	ld	$21,240($sp)
	ld	$20,232($sp)
	ld	$19,224($sp)
	ld	$18,216($sp)
	ld	$17,208($sp)
	ld	$16,200($sp)
	jr	$31
	daddiu	$sp,$sp,288

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l:
	.frame	$sp,288,$31		# vars= 192, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-288
	sd	$31,280($sp)
	sd	$fp,272($sp)
	sd	$28,264($sp)
	sd	$23,256($sp)
	sd	$22,248($sp)
	sd	$21,240($sp)
	sd	$20,232($sp)
	sd	$19,224($sp)
	sd	$18,216($sp)
	sd	$17,208($sp)
	sd	$16,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l)))
	sd	$5,144($sp)
	sd	$7,152($sp)
	dsll	$2,$5,2
	sd	$2,168($sp)
	move	$19,$4
	dsll	$2,$7,2
	sd	$2,176($sp)
	sd	$6,128($sp)
	li	$2,6			# 0x6
	sd	$2,160($sp)
	move	$18,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	b	.L2438
	daddiu	$20,$sp,16

.L2443:
	addiu	$2,$2,-1
	sd	$2,160($sp)
	ld	$3,168($sp)
	daddu	$19,$19,$3
	ld	$3,128($sp)
	ld	$4,176($sp)
	daddu	$3,$3,$4
	beq	$2,$0,.L2442
	sd	$3,128($sp)

.L2438:
	daddiu	$2,$19,16
	sd	$2,136($sp)
	ld	$17,128($sp)
	move	$16,$19
.L2437:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,144($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,152($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,8
	ld	$2,136($sp)
	bne	$16,$2,.L2437
	daddiu	$17,$17,8

	b	.L2443
	ld	$2,160($sp)

.L2442:
	move	$2,$18
	ld	$31,280($sp)
	ld	$fp,272($sp)
	ld	$28,264($sp)
	ld	$23,256($sp)
	ld	$22,248($sp)
	ld	$21,240($sp)
	ld	$20,232($sp)
	ld	$19,224($sp)
	ld	$18,216($sp)
	ld	$17,208($sp)
	ld	$16,200($sp)
	jr	$31
	daddiu	$sp,$sp,288

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l
	.type	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l, @function
_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l:
	.frame	$sp,352,$31		# vars= 256, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-352
	sd	$31,344($sp)
	sd	$fp,336($sp)
	sd	$28,328($sp)
	sd	$23,320($sp)
	sd	$22,312($sp)
	sd	$21,304($sp)
	sd	$20,296($sp)
	sd	$19,288($sp)
	sd	$18,280($sp)
	sd	$17,272($sp)
	sd	$16,264($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l)))
	sd	$4,216($sp)
	move	$17,$5
	sd	$6,224($sp)
	move	$16,$7
	dsll	$2,$5,3
	sd	$2,240($sp)
	dsll	$2,$7,3
	sd	$2,248($sp)
	li	$2,4			# 0x4
	sd	$2,232($sp)
	sd	$0,0($sp)
.L2446:
	ld	$2,216($sp)
	move	$18,$2
	ld	$19,224($sp)
	daddiu	$2,$2,32
	sd	$2,208($sp)
.L2445:
	daddu	$fp,$17,$18
	daddu	$23,$fp,$17
	daddu	$22,$17,$23
	daddu	$2,$17,$22
	sd	$2,144($sp)
	daddu	$3,$17,$2
	sd	$3,160($sp)
	daddu	$20,$17,$3
	sd	$20,176($sp)
	daddu	$21,$19,$16
	daddu	$20,$16,$21
	daddu	$5,$16,$20
	sd	$5,128($sp)
	daddu	$6,$16,$5
	sd	$6,8($sp)
	daddu	$7,$16,$6
	sd	$7,192($sp)
	daddu	$8,$16,$7
	sd	$8,200($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$18

	insert.d	$w0[0],$2
	insert.d	$w0[1],$3
	st.d	$w0,16($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$fp

	insert.d	$w1[0],$2
	insert.d	$w1[1],$3
	st.d	$w1,32($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$23

	insert.d	$w2[0],$2
	insert.d	$w2[1],$3
	st.d	$w2,48($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$22

	insert.d	$w3[0],$2
	insert.d	$w3[1],$3
	st.d	$w3,64($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$19

	insert.d	$w4[0],$2
	insert.d	$w4[1],$3
	st.d	$w4,80($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$21

	insert.d	$w5[0],$2
	insert.d	$w5[1],$3
	st.d	$w5,96($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$20

	insert.d	$w6[0],$2
	insert.d	$w6[1],$3
	st.d	$w6,112($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,128($sp)

	insert.d	$w0[0],$2
	insert.d	$w0[1],$3
	ld.b	$w7,16($sp)
	hadd_u.h	$w15,$w7,$w7
	ld.b	$w6,32($sp)
	hadd_u.h	$w13,$w6,$w6
	ld.b	$w5,48($sp)
	hadd_u.h	$w11,$w5,$w5
	ld.b	$w4,64($sp)
	hadd_u.h	$w9,$w4,$w4
	ld.b	$w3,80($sp)
	hadd_u.h	$w14,$w3,$w3
	ld.b	$w2,96($sp)
	hadd_u.h	$w12,$w2,$w2
	ld.b	$w1,112($sp)
	hadd_u.h	$w10,$w1,$w1
	hadd_u.h	$w8,$w0,$w0
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w2,$w2,$w2
	hsub_u.h	$w1,$w1,$w1
	hsub_u.h	$w0,$w0,$w0
	insve.d	$w15[1],$w7[0]
	insve.d	$w13[1],$w6[0]
	insve.d	$w11[1],$w5[0]
	insve.d	$w9[1],$w4[0]
	move.v	$w4,$w9
	move.v	$w9,$w14
	insve.d	$w9[1],$w3[0]
	move.v	$w3,$w9
	move.v	$w9,$w12
	insve.d	$w9[1],$w2[0]
	move.v	$w2,$w9
	move.v	$w9,$w10
	insve.d	$w9[1],$w1[0]
	insve.d	$w8[1],$w0[0]
	subv.h	$w3,$w15,$w3
	st.h	$w3,16($sp)
	subv.h	$w2,$w13,$w2
	st.h	$w2,32($sp)
	subv.h	$w1,$w11,$w9
	st.h	$w1,48($sp)
	subv.h	$w5,$w4,$w8
	st.h	$w5,64($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,144($sp)

	insert.d	$w6[0],$2
	insert.d	$w6[1],$3
	st.d	$w6,80($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,160($sp)

	insert.d	$w7[0],$2
	insert.d	$w7[1],$3
	st.d	$w7,96($sp)
	ld	$20,176($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$20

	insert.d	$w8[0],$2
	insert.d	$w8[1],$3
	st.d	$w8,112($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	daddu	$4,$17,$20

	insert.d	$w9[0],$2
	insert.d	$w9[1],$3
	st.d	$w9,128($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,8($sp)

	insert.d	$w10[0],$2
	insert.d	$w10[1],$3
	st.d	$w10,144($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,192($sp)

	insert.d	$w11[0],$2
	insert.d	$w11[1],$3
	st.d	$w11,160($sp)
	ld	$20,200($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$20

	insert.d	$w12[0],$2
	insert.d	$w12[1],$3
	st.d	$w12,176($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	daddu	$4,$16,$20

	insert.d	$w4[0],$2
	insert.d	$w4[1],$3
	ld.b	$w11,80($sp)
	hadd_u.h	$w13,$w11,$w11
	ld.b	$w10,96($sp)
	hadd_u.h	$w3,$w10,$w10
	ld.b	$w9,112($sp)
	hadd_u.h	$w12,$w9,$w9
	ld.b	$w8,128($sp)
	hadd_u.h	$w0,$w8,$w8
	ld.b	$w7,144($sp)
	hadd_u.h	$w15,$w7,$w7
	ld.b	$w6,160($sp)
	hadd_u.h	$w1,$w6,$w6
	ld.b	$w5,176($sp)
	hadd_u.h	$w14,$w5,$w5
	hadd_u.h	$w2,$w4,$w4
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	insve.d	$w13[1],$w11[0]
	insve.d	$w3[1],$w10[0]
	move.v	$w10,$w12
	insve.d	$w10[1],$w9[0]
	insve.d	$w0[1],$w8[0]
	move.v	$w8,$w15
	insve.d	$w8[1],$w7[0]
	insve.d	$w1[1],$w6[0]
	move.v	$w6,$w14
	insve.d	$w6[1],$w5[0]
	insve.d	$w2[1],$w4[0]
	subv.h	$w7,$w13,$w8
	subv.h	$w1,$w3,$w1
	subv.h	$w6,$w10,$w6
	subv.h	$w2,$w0,$w2
	ld.h	$w4,32($sp)
	ld.h	$w0,16($sp)
	addv.h	$w10,$w4,$w0
	subv.h	$w8,$w4,$w0
	ld.h	$w4,64($sp)
	ld.h	$w0,48($sp)
	addv.h	$w3,$w4,$w0
	subv.h	$w5,$w4,$w0
	addv.h	$w9,$w1,$w7
	subv.h	$w0,$w1,$w7
	addv.h	$w4,$w2,$w6
	subv.h	$w2,$w2,$w6
	addv.h	$w7,$w3,$w10
	subv.h	$w3,$w3,$w10
	addv.h	$w6,$w5,$w8
	subv.h	$w5,$w5,$w8
	addv.h	$w11,$w4,$w9
	subv.h	$w4,$w4,$w9
	addv.h	$w10,$w2,$w0
	subv.h	$w2,$w2,$w0
	addv.h	$w1,$w11,$w7
	subv.h	$w11,$w11,$w7
	addv.h	$w0,$w10,$w6
	subv.h	$w10,$w10,$w6
	addv.h	$w9,$w4,$w3
	subv.h	$w4,$w4,$w3
	addv.h	$w8,$w2,$w5
	subv.h	$w2,$w2,$w5
	pckod.h	$w7,$w11,$w1
	pckev.h	$w1,$w11,$w1
	pckod.h	$w6,$w10,$w0
	pckev.h	$w0,$w10,$w0
	pckod.h	$w3,$w4,$w9
	pckev.h	$w4,$w4,$w9
	pckod.h	$w5,$w2,$w8
	pckev.h	$w2,$w2,$w8
	addv.h	$w11,$w7,$w1
	asub_s.h	$w7,$w7,$w1
	addv.h	$w10,$w6,$w0
	asub_s.h	$w6,$w6,$w0
	addv.h	$w9,$w3,$w4
	asub_s.h	$w4,$w3,$w4
	addv.h	$w8,$w5,$w2
	asub_s.h	$w2,$w5,$w2
	vabs.h	$w0,$w11
	vabs.h	$w3,$w10
	vabs.h	$w5,$w9
	vabs.h	$w8,$w8
	ilvod.h	$w1,$w0,$w7
	ilvev.h	$w7,$w0,$w7
	ilvod.h	$w0,$w3,$w6
	ilvev.h	$w6,$w3,$w6
	ilvod.h	$w3,$w5,$w4
	ilvev.h	$w4,$w5,$w4
	ilvod.h	$w5,$w8,$w2
	ilvev.h	$w2,$w8,$w2
	max_s.h	$w1,$w1,$w7
	max_s.h	$w6,$w0,$w6
	max_s.h	$w3,$w3,$w4
	max_s.h	$w2,$w5,$w2
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w6,$w6,$w6
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w2,$w2,$w2
	addv.w	$w0,$w1,$w6
	addv.w	$w3,$w3,$w2
	addv.w	$w0,$w0,$w3
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addiu	$2,$2,1
	sra	$2,$2,1
	ld	$3,0($sp)
	addu	$2,$2,$3
	sd	$2,0($sp)
	daddiu	$18,$18,8
	ld	$2,208($sp)
	bne	$18,$2,.L2445
	daddiu	$19,$19,8

	ld	$2,216($sp)
	ld	$3,240($sp)
	daddu	$2,$2,$3
	sd	$2,216($sp)
	ld	$2,224($sp)
	ld	$3,248($sp)
	daddu	$2,$2,$3
	sd	$2,224($sp)
	ld	$2,232($sp)
	addiu	$2,$2,-1
	bne	$2,$0,.L2446
	sd	$2,232($sp)

	ld	$2,0($sp)
	ld	$31,344($sp)
	ld	$fp,336($sp)
	ld	$28,328($sp)
	ld	$23,320($sp)
	ld	$22,312($sp)
	ld	$21,304($sp)
	ld	$20,296($sp)
	ld	$19,288($sp)
	ld	$18,280($sp)
	ld	$17,272($sp)
	ld	$16,264($sp)
	jr	$31
	daddiu	$sp,$sp,352

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l
	.size	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l, .-_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l:
	.frame	$sp,256,$31		# vars= 160, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-256
	sd	$31,248($sp)
	sd	$fp,240($sp)
	sd	$28,232($sp)
	sd	$23,224($sp)
	sd	$22,216($sp)
	sd	$21,208($sp)
	sd	$20,200($sp)
	sd	$19,192($sp)
	sd	$18,184($sp)
	sd	$17,176($sp)
	sd	$16,168($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l)))
	sd	$5,144($sp)
	sd	$7,152($sp)
	dsll	$2,$5,2
	sd	$2,128($sp)
	move	$18,$4
	dsll	$2,$7,2
	sd	$2,136($sp)
	move	$17,$6
	li	$16,8			# 0x8
	move	$19,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	daddiu	$20,$sp,16
.L2451:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,144($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$18

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,152($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w3,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w0,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w3[1],$w13[0]
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w0,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w0
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$19,$2,$19
	addiu	$16,$16,-1
	ld	$2,128($sp)
	daddu	$18,$18,$2
	ld	$2,136($sp)
	bne	$16,$0,.L2451
	daddu	$17,$17,$2

	move	$2,$19
	ld	$31,248($sp)
	ld	$fp,240($sp)
	ld	$28,232($sp)
	ld	$23,224($sp)
	ld	$22,216($sp)
	ld	$21,208($sp)
	ld	$20,200($sp)
	ld	$19,192($sp)
	ld	$18,184($sp)
	ld	$17,176($sp)
	ld	$16,168($sp)
	jr	$31
	daddiu	$sp,$sp,256

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l:
	.frame	$sp,288,$31		# vars= 192, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-288
	sd	$31,280($sp)
	sd	$fp,272($sp)
	sd	$28,264($sp)
	sd	$23,256($sp)
	sd	$22,248($sp)
	sd	$21,240($sp)
	sd	$20,232($sp)
	sd	$19,224($sp)
	sd	$18,216($sp)
	sd	$17,208($sp)
	sd	$16,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l)))
	sd	$5,128($sp)
	sd	$7,136($sp)
	dsll	$2,$5,2
	sd	$2,168($sp)
	sd	$4,144($sp)
	dsll	$2,$7,2
	sd	$2,176($sp)
	sd	$6,152($sp)
	li	$2,2			# 0x2
	sd	$2,160($sp)
	move	$18,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	daddiu	$20,$sp,16
.L2456:
	ld	$16,144($sp)
	daddiu	$19,$16,32
	ld	$17,152($sp)
.L2455:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,128($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,136($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,8
	bne	$16,$19,.L2455
	daddiu	$17,$17,8

	ld	$2,160($sp)
	addiu	$2,$2,-1
	sd	$2,160($sp)
	ld	$3,144($sp)
	ld	$4,168($sp)
	daddu	$3,$3,$4
	sd	$3,144($sp)
	ld	$3,152($sp)
	ld	$4,176($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2456
	sd	$3,152($sp)

	move	$2,$18
	ld	$31,280($sp)
	ld	$fp,272($sp)
	ld	$28,264($sp)
	ld	$23,256($sp)
	ld	$22,248($sp)
	ld	$21,240($sp)
	ld	$20,232($sp)
	ld	$19,224($sp)
	ld	$18,216($sp)
	ld	$17,208($sp)
	ld	$16,200($sp)
	jr	$31
	daddiu	$sp,$sp,288

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l:
	.frame	$sp,288,$31		# vars= 192, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-288
	sd	$31,280($sp)
	sd	$fp,272($sp)
	sd	$28,264($sp)
	sd	$23,256($sp)
	sd	$22,248($sp)
	sd	$21,240($sp)
	sd	$20,232($sp)
	sd	$19,224($sp)
	sd	$18,216($sp)
	sd	$17,208($sp)
	sd	$16,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l)))
	sd	$5,144($sp)
	sd	$7,152($sp)
	dsll	$2,$5,2
	sd	$2,168($sp)
	move	$19,$4
	dsll	$2,$7,2
	sd	$2,176($sp)
	sd	$6,128($sp)
	li	$2,3			# 0x3
	sd	$2,160($sp)
	move	$18,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	b	.L2462
	daddiu	$20,$sp,16

.L2467:
	addiu	$2,$2,-1
	sd	$2,160($sp)
	ld	$3,168($sp)
	daddu	$19,$19,$3
	ld	$3,128($sp)
	ld	$4,176($sp)
	daddu	$3,$3,$4
	beq	$2,$0,.L2466
	sd	$3,128($sp)

.L2462:
	daddiu	$2,$19,16
	sd	$2,136($sp)
	ld	$17,128($sp)
	move	$16,$19
.L2461:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,144($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,152($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,8
	ld	$2,136($sp)
	bne	$16,$2,.L2461
	daddiu	$17,$17,8

	b	.L2467
	ld	$2,160($sp)

.L2466:
	move	$2,$18
	ld	$31,280($sp)
	ld	$fp,272($sp)
	ld	$28,264($sp)
	ld	$23,256($sp)
	ld	$22,248($sp)
	ld	$21,240($sp)
	ld	$20,232($sp)
	ld	$19,224($sp)
	ld	$18,216($sp)
	ld	$17,208($sp)
	ld	$16,200($sp)
	jr	$31
	daddiu	$sp,$sp,288

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l
	.type	_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l, @function
_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l:
	.frame	$sp,480,$31		# vars= 320, regs= 11/8, args= 0, gp= 0
	.mask	0xd0ff0000,-72
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-480
	sd	$31,408($sp)
	sd	$fp,400($sp)
	sd	$28,392($sp)
	sd	$23,384($sp)
	sd	$22,376($sp)
	sd	$21,368($sp)
	sd	$20,360($sp)
	sd	$19,352($sp)
	sd	$18,344($sp)
	sd	$17,336($sp)
	sd	$16,328($sp)
	sdc1	$f31,472($sp)
	sdc1	$f30,464($sp)
	sdc1	$f29,456($sp)
	sdc1	$f28,448($sp)
	sdc1	$f27,440($sp)
	sdc1	$f26,432($sp)
	sdc1	$f25,424($sp)
	sdc1	$f24,416($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l)))
	move	$19,$4
	sd	$5,256($sp)
	sd	$6,272($sp)
	sd	$7,264($sp)
	dsll	$2,$5,2
	sd	$2,296($sp)
	dsll	$2,$7,2
	sd	$2,304($sp)
	li	$2,8			# 0x8
	sd	$2,288($sp)
	move	$18,$0
	daddiu	$fp,$sp,192
	daddiu	$23,$sp,208
	daddiu	$22,$sp,224
	daddiu	$21,$sp,240
	b	.L2470
	daddiu	$20,$sp,64

.L2475:
	daddu	$19,$19,$2
	ld	$2,272($sp)
	ld	$3,304($sp)
	daddu	$2,$2,$3
	sd	$2,272($sp)
	ld	$2,288($sp)
	addiu	$2,$2,-1
	beq	$2,$0,.L2474
	sd	$2,288($sp)

.L2470:
	move	$16,$19
	ld	$17,272($sp)
	daddiu	$2,$19,32
	sd	$2,280($sp)
.L2469:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,256($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$20
	daddiu	$8,$sp,80
	daddiu	$7,$sp,96
	daddiu	$6,$sp,112
	ld	$5,256($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddiu	$4,$16,8

	daddiu	$9,$sp,128
	daddiu	$8,$sp,144
	daddiu	$7,$sp,160
	daddiu	$6,$sp,176
	ld	$5,264($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	move	$9,$sp
	daddiu	$8,$sp,16
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,264($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddiu	$4,$17,8

	ld.b	$w12,240($sp)
	hadd_u.h	$w20,$w12,$w12
	ld.b	$w11,224($sp)
	hadd_u.h	$w6,$w11,$w11
	ld.b	$w10,208($sp)
	hadd_u.h	$w3,$w10,$w10
	ld.b	$w9,192($sp)
	hadd_u.h	$w1,$w9,$w9
	ld.b	$w19,176($sp)
	hadd_u.h	$w5,$w19,$w19
	ld.b	$w18,160($sp)
	hadd_u.h	$w31,$w18,$w18
	ld.b	$w17,144($sp)
	hadd_u.h	$w30,$w17,$w17
	ld.b	$w16,128($sp)
	hadd_u.h	$w29,$w16,$w16
	ld.b	$w4,112($sp)
	hadd_u.h	$w13,$w4,$w4
	ld.b	$w15,96($sp)
	hadd_u.h	$w7,$w15,$w15
	ld.b	$w14,80($sp)
	hadd_u.h	$w8,$w14,$w14
	ld.b	$w25,64($sp)
	hadd_u.h	$w0,$w25,$w25
	ld.b	$w24,48($sp)
	hadd_u.h	$w28,$w24,$w24
	ld.b	$w23,32($sp)
	hadd_u.h	$w27,$w23,$w23
	ld.b	$w22,16($sp)
	hadd_u.h	$w2,$w22,$w22
	ld.b	$w21,0($sp)
	hadd_u.h	$w26,$w21,$w21
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w19,$w19,$w19
	hsub_u.h	$w18,$w18,$w18
	hsub_u.h	$w17,$w17,$w17
	hsub_u.h	$w16,$w16,$w16
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w15,$w15,$w15
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w25,$w25,$w25
	hsub_u.h	$w24,$w24,$w24
	hsub_u.h	$w23,$w23,$w23
	hsub_u.h	$w22,$w22,$w22
	hsub_u.h	$w21,$w21,$w21
	insve.d	$w20[1],$w12[0]
	insve.d	$w6[1],$w11[0]
	insve.d	$w3[1],$w10[0]
	move.v	$w12,$w3
	insve.d	$w1[1],$w9[0]
	insve.d	$w5[1],$w19[0]
	insve.d	$w31[1],$w18[0]
	insve.d	$w30[1],$w17[0]
	insve.d	$w29[1],$w16[0]
	move.v	$w3,$w13
	insve.d	$w3[1],$w4[0]
	move.v	$w10,$w3
	move.v	$w3,$w7
	insve.d	$w3[1],$w15[0]
	move.v	$w4,$w3
	insve.d	$w8[1],$w14[0]
	insve.d	$w0[1],$w25[0]
	insve.d	$w28[1],$w24[0]
	insve.d	$w27[1],$w23[0]
	insve.d	$w2[1],$w22[0]
	insve.d	$w26[1],$w21[0]
	subv.h	$w13,$w20,$w5
	subv.h	$w5,$w6,$w31
	subv.h	$w11,$w12,$w30
	subv.h	$w3,$w1,$w29
	subv.h	$w9,$w10,$w28
	subv.h	$w7,$w4,$w27
	subv.h	$w1,$w8,$w2
	subv.h	$w2,$w0,$w26
	addv.h	$w8,$w5,$w13
	subv.h	$w0,$w5,$w13
	addv.h	$w6,$w3,$w11
	subv.h	$w3,$w3,$w11
	addv.h	$w4,$w7,$w9
	subv.h	$w7,$w7,$w9
	addv.h	$w5,$w2,$w1
	subv.h	$w2,$w2,$w1
	addv.h	$w1,$w6,$w8
	asub_s.h	$w6,$w6,$w8
	addv.h	$w9,$w3,$w0
	asub_s.h	$w3,$w3,$w0
	addv.h	$w8,$w5,$w4
	asub_s.h	$w5,$w5,$w4
	addv.h	$w10,$w2,$w7
	asub_s.h	$w2,$w2,$w7
	vabs.h	$w7,$w1
	vabs.h	$w9,$w9
	vabs.h	$w8,$w8
	vabs.h	$w10,$w10
	ilvod.h	$w1,$w9,$w7
	ilvod.h	$w0,$w3,$w6
	ilvev.h	$w9,$w9,$w7
	ilvev.h	$w3,$w3,$w6
	ilvod.h	$w4,$w10,$w8
	ilvod.h	$w7,$w2,$w5
	ilvev.h	$w8,$w10,$w8
	ilvev.h	$w2,$w2,$w5
	max_s.h	$w1,$w1,$w9
	max_s.h	$w3,$w0,$w3
	max_s.h	$w4,$w4,$w8
	max_s.h	$w2,$w7,$w2
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w4,$w4,$w4
	hadd_s.w	$w2,$w2,$w2
	addv.w	$w0,$w1,$w3
	addv.w	$w4,$w4,$w2
	addv.w	$w0,$w0,$w4
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,16
	ld	$2,280($sp)
	bne	$16,$2,.L2469
	daddiu	$17,$17,16

	b	.L2475
	ld	$2,296($sp)

.L2474:
	move	$2,$18
	ld	$31,408($sp)
	ld	$fp,400($sp)
	ld	$28,392($sp)
	ld	$23,384($sp)
	ld	$22,376($sp)
	ld	$21,368($sp)
	ld	$20,360($sp)
	ld	$19,352($sp)
	ld	$18,344($sp)
	ld	$17,336($sp)
	ld	$16,328($sp)
	ldc1	$f31,472($sp)
	ldc1	$f30,464($sp)
	ldc1	$f29,456($sp)
	ldc1	$f28,448($sp)
	ldc1	$f27,440($sp)
	ldc1	$f26,432($sp)
	ldc1	$f25,424($sp)
	ldc1	$f24,416($sp)
	jr	$31
	daddiu	$sp,$sp,480

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l
	.size	_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l, .-_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l:
	.frame	$sp,288,$31		# vars= 192, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-288
	sd	$31,280($sp)
	sd	$fp,272($sp)
	sd	$28,264($sp)
	sd	$23,256($sp)
	sd	$22,248($sp)
	sd	$21,240($sp)
	sd	$20,232($sp)
	sd	$19,224($sp)
	sd	$18,216($sp)
	sd	$17,208($sp)
	sd	$16,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l)))
	sd	$5,152($sp)
	sd	$7,160($sp)
	dsll	$2,$5,2
	sd	$2,168($sp)
	sd	$4,128($sp)
	dsll	$2,$7,2
	sd	$2,176($sp)
	sd	$6,136($sp)
	li	$19,2			# 0x2
	move	$18,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	daddiu	$20,$sp,16
.L2478:
	ld	$16,128($sp)
	daddiu	$2,$16,16
	sd	$2,144($sp)
	ld	$17,136($sp)
.L2477:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,152($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$16

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,160($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$18,$2,$18
	daddiu	$16,$16,8
	ld	$2,144($sp)
	bne	$16,$2,.L2477
	daddiu	$17,$17,8

	addiu	$19,$19,-1
	ld	$2,128($sp)
	ld	$3,168($sp)
	daddu	$2,$2,$3
	sd	$2,128($sp)
	ld	$2,136($sp)
	ld	$3,176($sp)
	daddu	$2,$2,$3
	bne	$19,$0,.L2478
	sd	$2,136($sp)

	move	$2,$18
	ld	$31,280($sp)
	ld	$fp,272($sp)
	ld	$28,264($sp)
	ld	$23,256($sp)
	ld	$22,248($sp)
	ld	$21,240($sp)
	ld	$20,232($sp)
	ld	$19,224($sp)
	ld	$18,216($sp)
	ld	$17,208($sp)
	ld	$16,200($sp)
	jr	$31
	daddiu	$sp,$sp,288

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l:
	.frame	$sp,256,$31		# vars= 160, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-256
	sd	$31,248($sp)
	sd	$fp,240($sp)
	sd	$28,232($sp)
	sd	$23,224($sp)
	sd	$22,216($sp)
	sd	$21,208($sp)
	sd	$20,200($sp)
	sd	$19,192($sp)
	sd	$18,184($sp)
	sd	$17,176($sp)
	sd	$16,168($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l)))
	sd	$5,144($sp)
	sd	$7,152($sp)
	dsll	$2,$5,2
	sd	$2,128($sp)
	move	$18,$4
	dsll	$2,$7,2
	sd	$2,136($sp)
	move	$17,$6
	li	$16,4			# 0x4
	move	$19,$0
	daddiu	$fp,$sp,64
	daddiu	$23,$sp,80
	daddiu	$22,$sp,96
	daddiu	$21,$sp,112
	daddiu	$20,$sp,16
.L2483:
	move	$9,$fp
	move	$8,$23
	move	$7,$22
	move	$6,$21
	ld	$5,144($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$18

	move	$9,$sp
	move	$8,$20
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,152($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	move	$4,$17

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w3,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w0,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w3[1],$w13[0]
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w0,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w0
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$19,$2,$19
	addiu	$16,$16,-1
	ld	$2,128($sp)
	daddu	$18,$18,$2
	ld	$2,136($sp)
	bne	$16,$0,.L2483
	daddu	$17,$17,$2

	move	$2,$19
	ld	$31,248($sp)
	ld	$fp,240($sp)
	ld	$28,232($sp)
	ld	$23,224($sp)
	ld	$22,216($sp)
	ld	$21,208($sp)
	ld	$20,200($sp)
	ld	$19,192($sp)
	ld	$18,184($sp)
	ld	$17,176($sp)
	ld	$16,168($sp)
	jr	$31
	daddiu	$sp,$sp,256

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116psyCost_pp_32x32EPKhlS1_l
	.type	_ZN12_GLOBAL__N_116psyCost_pp_32x32EPKhlS1_l, @function
_ZN12_GLOBAL__N_116psyCost_pp_32x32EPKhlS1_l:
	.frame	$sp,336,$31		# vars= 240, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-336
	sd	$31,328($sp)
	sd	$fp,320($sp)
	sd	$28,312($sp)
	sd	$23,304($sp)
	sd	$22,296($sp)
	sd	$21,288($sp)
	sd	$20,280($sp)
	sd	$19,272($sp)
	sd	$18,264($sp)
	sd	$17,256($sp)
	sd	$16,248($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116psyCost_pp_32x32EPKhlS1_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116psyCost_pp_32x32EPKhlS1_l)))
	sd	$4,200($sp)
	move	$17,$5
	sd	$6,208($sp)
	move	$16,$7
	dsll	$2,$5,3
	sd	$2,224($sp)
	dsll	$2,$7,3
	sd	$2,232($sp)
	li	$2,4			# 0x4
	sd	$2,216($sp)
	sd	$0,0($sp)
.L2488:
	ld	$2,200($sp)
	move	$18,$2
	ld	$19,208($sp)
	daddiu	$2,$2,32
	sd	$2,192($sp)
.L2487:
	daddu	$fp,$17,$18
	daddu	$23,$fp,$17
	daddu	$22,$17,$23
	daddu	$21,$17,$22
	daddu	$20,$17,$21
	daddu	$2,$17,$20
	sd	$2,112($sp)
	daddu	$3,$19,$16
	sd	$3,128($sp)
	daddu	$5,$16,$3
	sd	$5,144($sp)
	daddu	$6,$16,$5
	sd	$6,160($sp)
	daddu	$7,$16,$6
	sd	$7,8($sp)
	daddu	$8,$16,$7
	sd	$8,176($sp)
	daddu	$9,$16,$8
	sd	$9,184($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$18

	insert.d	$w0[0],$2
	insert.d	$w0[1],$3
	st.d	$w0,16($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$fp

	insert.d	$w1[0],$2
	insert.d	$w1[1],$3
	st.d	$w1,32($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$23

	insert.d	$w2[0],$2
	insert.d	$w2[1],$3
	st.d	$w2,48($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$22

	insert.d	$w3[0],$2
	insert.d	$w3[1],$3
	st.d	$w3,64($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$21

	insert.d	$w4[0],$2
	insert.d	$w4[1],$3
	st.d	$w4,80($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$20

	insert.d	$w5[0],$2
	insert.d	$w5[1],$3
	st.d	$w5,96($sp)
	ld	$20,112($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$20

	insert.d	$w6[0],$2
	insert.d	$w6[1],$3
	st.d	$w6,112($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	daddu	$4,$17,$20

	insert.d	$w2[0],$2
	insert.d	$w2[1],$3
	ld.b	$w11,16($sp)
	hadd_u.h	$w16,$w11,$w11
	ld.b	$w10,32($sp)
	hadd_u.h	$w4,$w10,$w10
	ld.b	$w9,48($sp)
	hadd_u.h	$w15,$w9,$w9
	ld.b	$w8,64($sp)
	hadd_u.h	$w1,$w8,$w8
	ld.b	$w7,80($sp)
	hadd_u.h	$w14,$w7,$w7
	ld.b	$w6,96($sp)
	hadd_u.h	$w3,$w6,$w6
	ld.b	$w5,112($sp)
	hadd_u.h	$w13,$w5,$w5
	hadd_u.h	$w0,$w2,$w2
	hsub_u.h	$w12,$w11,$w11
	hsub_u.h	$w11,$w10,$w10
	hsub_u.h	$w10,$w9,$w9
	hsub_u.h	$w9,$w8,$w8
	hsub_u.h	$w8,$w7,$w7
	hsub_u.h	$w7,$w6,$w6
	hsub_u.h	$w6,$w5,$w5
	hsub_u.h	$w5,$w2,$w2
	addv.h	$w2,$w16,$w4
	addv.h	$w19,$w15,$w1
	addv.h	$w17,$w14,$w3
	addv.h	$w18,$w13,$w0
	addv.h	$w2,$w2,$w19
	addv.h	$w17,$w17,$w18
	addv.h	$w2,$w2,$w17
	hadd_s.w	$w2,$w2,$w2
	hadd_s.d	$w2,$w2,$w2
	srli.w	$w2,$w2,2
	st.w	$w2,16($sp)
	move.v	$w2,$w16
	insve.d	$w2[1],$w12[0]
	move.v	$w12,$w2
	insve.d	$w4[1],$w11[0]
	move.v	$w2,$w15
	insve.d	$w2[1],$w10[0]
	move.v	$w10,$w2
	insve.d	$w1[1],$w9[0]
	move.v	$w2,$w14
	insve.d	$w2[1],$w8[0]
	move.v	$w8,$w2
	insve.d	$w3[1],$w7[0]
	move.v	$w2,$w13
	insve.d	$w2[1],$w6[0]
	move.v	$w7,$w2
	insve.d	$w0[1],$w5[0]
	addv.h	$w11,$w4,$w12
	subv.h	$w4,$w4,$w12
	addv.h	$w6,$w1,$w10
	subv.h	$w1,$w1,$w10
	addv.h	$w9,$w3,$w8
	subv.h	$w3,$w3,$w8
	addv.h	$w2,$w0,$w2
	subv.h	$w0,$w0,$w7
	addv.h	$w5,$w6,$w11
	subv.h	$w6,$w6,$w11
	addv.h	$w7,$w1,$w4
	subv.h	$w1,$w1,$w4
	addv.h	$w10,$w2,$w9
	subv.h	$w2,$w2,$w9
	addv.h	$w4,$w0,$w3
	subv.h	$w0,$w0,$w3
	addv.h	$w9,$w10,$w5
	subv.h	$w10,$w10,$w5
	addv.h	$w8,$w4,$w7
	subv.h	$w3,$w4,$w7
	addv.h	$w7,$w2,$w6
	subv.h	$w2,$w2,$w6
	addv.h	$w6,$w0,$w1
	subv.h	$w0,$w0,$w1
	pckod.h	$w5,$w10,$w9
	pckev.h	$w9,$w10,$w9
	pckod.h	$w4,$w3,$w8
	pckev.h	$w8,$w3,$w8
	pckod.h	$w3,$w2,$w7
	pckev.h	$w2,$w2,$w7
	pckod.h	$w1,$w0,$w6
	pckev.h	$w0,$w0,$w6
	addv.h	$w10,$w5,$w9
	asub_s.h	$w5,$w5,$w9
	addv.h	$w7,$w4,$w8
	asub_s.h	$w4,$w4,$w8
	addv.h	$w6,$w3,$w2
	asub_s.h	$w2,$w3,$w2
	addv.h	$w8,$w1,$w0
	asub_s.h	$w0,$w1,$w0
	vabs.h	$w9,$w10
	vabs.h	$w3,$w7
	vabs.h	$w1,$w6
	vabs.h	$w8,$w8
	ilvod.h	$w7,$w9,$w5
	ilvev.h	$w5,$w9,$w5
	ilvod.h	$w6,$w3,$w4
	ilvev.h	$w4,$w3,$w4
	ilvod.h	$w3,$w1,$w2
	ilvev.h	$w2,$w1,$w2
	ilvod.h	$w1,$w8,$w0
	ilvev.h	$w0,$w8,$w0
	max_s.h	$w5,$w7,$w5
	max_s.h	$w4,$w6,$w4
	max_s.h	$w2,$w3,$w2
	max_s.h	$w0,$w1,$w0
	hadd_s.w	$w5,$w5,$w5
	hadd_s.w	$w4,$w4,$w4
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w1,$w5,$w4
	st.w	$w1,32($sp)
	addv.w	$w0,$w2,$w0
	st.w	$w0,48($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$19

	insert.d	$w3[0],$2
	insert.d	$w3[1],$3
	st.d	$w3,64($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,128($sp)

	insert.d	$w4[0],$2
	insert.d	$w4[1],$3
	st.d	$w4,80($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,144($sp)

	insert.d	$w5[0],$2
	insert.d	$w5[1],$3
	st.d	$w5,96($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,160($sp)

	insert.d	$w7[0],$2
	insert.d	$w7[1],$3
	st.d	$w7,112($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,8($sp)

	insert.d	$w8[0],$2
	insert.d	$w8[1],$3
	st.d	$w8,128($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	ld	$4,176($sp)

	insert.d	$w9[0],$2
	insert.d	$w9[1],$3
	st.d	$w9,144($sp)
	ld	$20,184($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	move	$4,$20

	insert.d	$w10[0],$2
	insert.d	$w10[1],$3
	st.d	$w10,160($sp)
	ld	$25,%call16(_Z2LDPKh)($28)
	.reloc	1f,R_MIPS_JALR,_Z2LDPKh
1:	jalr	$25
	daddu	$4,$16,$20

	insert.d	$w0[0],$2
	insert.d	$w0[1],$3
	ld.b	$w11,64($sp)
	hadd_u.h	$w17,$w11,$w11
	ld.b	$w10,80($sp)
	hadd_u.h	$w1,$w10,$w10
	ld.b	$w9,96($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,112($sp)
	hadd_u.h	$w3,$w8,$w8
	ld.b	$w7,128($sp)
	hadd_u.h	$w15,$w7,$w7
	ld.b	$w6,144($sp)
	hadd_u.h	$w5,$w6,$w6
	ld.b	$w4,160($sp)
	hadd_u.h	$w14,$w4,$w4
	hadd_u.h	$w2,$w0,$w0
	hsub_u.h	$w13,$w11,$w11
	hsub_u.h	$w12,$w10,$w10
	hsub_u.h	$w11,$w9,$w9
	hsub_u.h	$w10,$w8,$w8
	hsub_u.h	$w9,$w7,$w7
	hsub_u.h	$w8,$w6,$w6
	hsub_u.h	$w7,$w4,$w4
	hsub_u.h	$w4,$w0,$w0
	addv.h	$w0,$w17,$w1
	addv.h	$w19,$w16,$w3
	addv.h	$w6,$w15,$w5
	addv.h	$w18,$w14,$w2
	addv.h	$w0,$w0,$w19
	addv.h	$w6,$w6,$w18
	addv.h	$w0,$w0,$w6
	hadd_s.w	$w0,$w0,$w0
	hadd_s.d	$w0,$w0,$w0
	srli.w	$w0,$w0,2
	ld.w	$w6,16($sp)
	subv.w	$w6,$w6,$w0
	move.v	$w0,$w17
	insve.d	$w0[1],$w13[0]
	move.v	$w13,$w0
	insve.d	$w1[1],$w12[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w11[0]
	move.v	$w11,$w0
	insve.d	$w3[1],$w10[0]
	move.v	$w0,$w15
	insve.d	$w0[1],$w9[0]
	move.v	$w10,$w0
	insve.d	$w5[1],$w8[0]
	move.v	$w0,$w14
	insve.d	$w0[1],$w7[0]
	insve.d	$w2[1],$w4[0]
	addv.h	$w7,$w1,$w13
	subv.h	$w1,$w1,$w13
	addv.h	$w9,$w3,$w11
	subv.h	$w3,$w3,$w11
	addv.h	$w12,$w5,$w10
	subv.h	$w5,$w5,$w10
	addv.h	$w4,$w2,$w0
	subv.h	$w2,$w2,$w0
	addv.h	$w8,$w9,$w7
	subv.h	$w9,$w9,$w7
	addv.h	$w7,$w3,$w1
	subv.h	$w3,$w3,$w1
	addv.h	$w11,$w4,$w12
	subv.h	$w4,$w4,$w12
	addv.h	$w10,$w2,$w5
	subv.h	$w2,$w2,$w5
	addv.h	$w1,$w11,$w8
	subv.h	$w11,$w11,$w8
	addv.h	$w0,$w10,$w7
	subv.h	$w10,$w10,$w7
	addv.h	$w5,$w4,$w9
	subv.h	$w4,$w4,$w9
	addv.h	$w9,$w2,$w3
	subv.h	$w2,$w2,$w3
	pckod.h	$w8,$w11,$w1
	pckev.h	$w1,$w11,$w1
	pckod.h	$w7,$w10,$w0
	pckev.h	$w0,$w10,$w0
	pckod.h	$w3,$w4,$w5
	pckev.h	$w4,$w4,$w5
	pckod.h	$w5,$w2,$w9
	pckev.h	$w2,$w2,$w9
	addv.h	$w12,$w8,$w1
	asub_s.h	$w8,$w8,$w1
	addv.h	$w11,$w7,$w0
	asub_s.h	$w7,$w7,$w0
	addv.h	$w10,$w3,$w4
	asub_s.h	$w4,$w3,$w4
	addv.h	$w9,$w5,$w2
	asub_s.h	$w2,$w5,$w2
	vabs.h	$w0,$w12
	vabs.h	$w3,$w11
	vabs.h	$w5,$w10
	vabs.h	$w9,$w9
	ilvod.h	$w1,$w0,$w8
	ilvev.h	$w8,$w0,$w8
	ilvod.h	$w0,$w3,$w7
	ilvev.h	$w7,$w3,$w7
	ilvod.h	$w3,$w5,$w4
	ilvev.h	$w4,$w5,$w4
	ilvod.h	$w5,$w9,$w2
	ilvev.h	$w2,$w9,$w2
	max_s.h	$w1,$w1,$w8
	max_s.h	$w7,$w0,$w7
	max_s.h	$w3,$w3,$w4
	max_s.h	$w2,$w5,$w2
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w7,$w7,$w7
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w2,$w2,$w2
	addv.w	$w0,$w1,$w7
	addv.w	$w3,$w3,$w2
	addv.w	$w0,$w0,$w3
	ld.w	$w1,32($sp)
	ld.w	$w2,48($sp)
	addv.w	$w1,$w1,$w2
	hadd_s.d	$w0,$w0,$w0
	hadd_s.d	$w1,$w1,$w1
	copy_s.w	$2,$w1[0]
	copy_s.w	$3,$w1[2]
	addu	$2,$2,$3
	addiu	$2,$2,1
	sra	$2,$2,1
	copy_s.w	$4,$w0[0]
	copy_s.w	$3,$w0[2]
	addu	$3,$4,$3
	addiu	$3,$3,1
	sra	$3,$3,1
	subu	$2,$2,$3
	copy_s.w	$3,$w6[0]
	subu	$2,$2,$3
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	ld	$3,0($sp)
	addu	$2,$2,$3
	sd	$2,0($sp)
	daddiu	$18,$18,8
	ld	$2,192($sp)
	bne	$18,$2,.L2487
	daddiu	$19,$19,8

	ld	$2,200($sp)
	ld	$3,224($sp)
	daddu	$2,$2,$3
	sd	$2,200($sp)
	ld	$2,208($sp)
	ld	$3,232($sp)
	daddu	$2,$2,$3
	sd	$2,208($sp)
	ld	$2,216($sp)
	addiu	$2,$2,-1
	bne	$2,$0,.L2488
	sd	$2,216($sp)

	ld	$2,0($sp)
	ld	$31,328($sp)
	ld	$fp,320($sp)
	ld	$28,312($sp)
	ld	$23,304($sp)
	ld	$22,296($sp)
	ld	$21,288($sp)
	ld	$20,280($sp)
	ld	$19,272($sp)
	ld	$18,264($sp)
	ld	$17,256($sp)
	ld	$16,248($sp)
	jr	$31
	daddiu	$sp,$sp,336

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116psyCost_pp_32x32EPKhlS1_l
	.size	_ZN12_GLOBAL__N_116psyCost_pp_32x32EPKhlS1_l, .-_ZN12_GLOBAL__N_116psyCost_pp_32x32EPKhlS1_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l:
	.frame	$sp,240,$31		# vars= 144, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-240
	sd	$31,232($sp)
	sd	$fp,224($sp)
	sd	$28,216($sp)
	sd	$23,208($sp)
	sd	$22,200($sp)
	sd	$21,192($sp)
	sd	$20,184($sp)
	sd	$19,176($sp)
	sd	$18,168($sp)
	sd	$17,160($sp)
	sd	$16,152($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l)))
	move	$fp,$4
	sd	$5,128($sp)
	move	$23,$6
	sd	$7,136($sp)
	move	$16,$0
	move	$17,$0
	daddiu	$22,$sp,64
	daddiu	$21,$sp,80
	daddiu	$20,$sp,96
	daddiu	$19,$sp,112
	daddiu	$18,$sp,16
	move	$9,$22
.L2496:
	move	$8,$21
	move	$7,$20
	move	$6,$19
	ld	$5,128($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddu	$4,$fp,$16

	move	$9,$sp
	move	$8,$18
	daddiu	$7,$sp,32
	daddiu	$6,$sp,48
	ld	$5,136($sp)
	ld	$25,%call16(_Z3LD4PKhlPDv2_xS2_S2_S2_)($28)
	.reloc	1f,R_MIPS_JALR,_Z3LD4PKhlPDv2_xS2_S2_S2_
1:	jalr	$25
	daddu	$4,$23,$16

	ld.b	$w14,112($sp)
	hadd_u.h	$w6,$w14,$w14
	ld.b	$w13,96($sp)
	hadd_u.h	$w0,$w13,$w13
	ld.b	$w12,80($sp)
	hadd_u.h	$w4,$w12,$w12
	ld.b	$w11,64($sp)
	hadd_u.h	$w2,$w11,$w11
	ld.b	$w10,48($sp)
	hadd_u.h	$w5,$w10,$w10
	ld.b	$w9,32($sp)
	hadd_u.h	$w16,$w9,$w9
	ld.b	$w8,16($sp)
	hadd_u.h	$w15,$w8,$w8
	ld.b	$w7,0($sp)
	hadd_u.h	$w1,$w7,$w7
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w6[1],$w14[0]
	insve.d	$w0[1],$w13[0]
	move.v	$w3,$w0
	insve.d	$w4[1],$w12[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w5[1],$w10[0]
	move.v	$w0,$w16
	insve.d	$w0[1],$w9[0]
	move.v	$w9,$w15
	insve.d	$w9[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	subv.h	$w5,$w6,$w5
	subv.h	$w0,$w3,$w0
	subv.h	$w3,$w4,$w9
	subv.h	$w1,$w2,$w1
	addv.h	$w6,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	addv.h	$w4,$w2,$w6
	asub_s.h	$w2,$w2,$w6
	addv.h	$w5,$w1,$w0
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w4,$w4
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w4
	ilvod.h	$w3,$w0,$w2
	ilvev.h	$w4,$w5,$w4
	ilvev.h	$w0,$w0,$w2
	max_s.h	$w1,$w1,$w4
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addu	$2,$3,$2
	addu	$17,$2,$17
	daddiu	$16,$16,8
	li	$2,16			# 0x10
	bne	$16,$2,.L2496
	move	$9,$22

	move	$2,$17
	ld	$31,232($sp)
	ld	$fp,224($sp)
	ld	$28,216($sp)
	ld	$23,208($sp)
	ld	$22,200($sp)
	ld	$21,192($sp)
	ld	$20,184($sp)
	ld	$19,176($sp)
	ld	$18,168($sp)
	ld	$17,160($sp)
	ld	$16,152($sp)
	jr	$31
	daddiu	$sp,$sp,240

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l:
	.frame	$sp,160,$31		# vars= 64, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	sd	$31,152($sp)
	sd	$fp,144($sp)
	sd	$28,136($sp)
	sd	$23,128($sp)
	sd	$22,120($sp)
	sd	$21,112($sp)
	sd	$20,104($sp)
	sd	$19,96($sp)
	sd	$18,88($sp)
	sd	$17,80($sp)
	sd	$16,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l)))
	sd	$5,8($sp)
	sd	$7,0($sp)
	dsll	$2,$5,3
	sd	$2,40($sp)
	sd	$4,16($sp)
	dsll	$2,$7,3
	sd	$2,48($sp)
	sd	$6,24($sp)
	li	$2,8			# 0x8
	sd	$2,32($sp)
	move	$22,$0
	ld	$19,%got_page(_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf)($28)
	daddiu	$19,$19,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf)
	ld	$21,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	ld	$2,%got_page(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)($28)
	daddiu	$23,$2,%got_ofst(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)
.L2499:
	ld	$17,16($sp)
	daddiu	$fp,$17,64
	ld	$18,24($sp)
.L2498:
	move	$7,$0
	move	$6,$19
	ld	$20,8($sp)
	move	$5,$20
	move	$25,$21
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	move	$4,$17

	move	$16,$2
	move	$7,$0
	move	$6,$19
	move	$5,$20
	move	$25,$23
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
1:	jalr	$25
	move	$4,$17

	sra	$2,$2,2
	subu	$16,$16,$2
	move	$7,$0
	move	$6,$19
	ld	$5,0($sp)
	move	$25,$21
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	move	$4,$18

	move	$20,$2
	move	$7,$0
	move	$6,$19
	ld	$5,0($sp)
	move	$25,$23
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
1:	jalr	$25
	move	$4,$18

	sra	$2,$2,2
	subu	$20,$20,$2
	subu	$16,$16,$20
	sra	$20,$16,31
	xor	$16,$20,$16
	subu	$16,$16,$20
	addu	$22,$16,$22
	daddiu	$17,$17,8
	bne	$17,$fp,.L2498
	daddiu	$18,$18,8

	ld	$2,32($sp)
	addiu	$2,$2,-1
	sd	$2,32($sp)
	ld	$3,16($sp)
	ld	$4,40($sp)
	daddu	$3,$3,$4
	sd	$3,16($sp)
	ld	$3,24($sp)
	ld	$4,48($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2499
	sd	$3,24($sp)

	move	$2,$22
	ld	$31,152($sp)
	ld	$fp,144($sp)
	ld	$28,136($sp)
	ld	$23,128($sp)
	ld	$22,120($sp)
	ld	$21,112($sp)
	ld	$20,104($sp)
	ld	$19,96($sp)
	ld	$18,88($sp)
	ld	$17,80($sp)
	ld	$16,72($sp)
	jr	$31
	daddiu	$sp,$sp,160

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l
	.align	2
	.globl	_ZN4x26515extendPicBorderEPhliiii
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26515extendPicBorderEPhliiii
	.type	_ZN4x26515extendPicBorderEPhliiii, @function
_ZN4x26515extendPicBorderEPhliiii:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$31,88($sp)
	sd	$fp,80($sp)
	sd	$28,72($sp)
	sd	$23,64($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26515extendPicBorderEPhliiii)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26515extendPicBorderEPhliiii)))
	move	$20,$4
	move	$18,$5
	move	$23,$7
	move	$fp,$8
	ld	$2,%got_disp(_ZN4x26510primitivesE)($28)
	ld	$25,5912($2)
	jalr	$25
	move	$21,$9

	blez	$21,.L2503
	dsubu	$22,$20,$fp

	move	$17,$18
	dsubu	$19,$22,$18
	move	$16,$0
.L2506:
	addiu	$16,$16,1
	move	$6,$17
	move	$5,$22
	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$19

	bne	$16,$21,.L2506
	dsubu	$19,$19,$17

	addiu	$23,$23,-1
	gsdmultu	$23,$23,$18
	dsubu	$fp,$23,$fp
	daddu	$20,$20,$fp
	daddu	$18,$20,$18
	move	$19,$0
.L2507:
	addiu	$19,$19,1
	move	$6,$17
	move	$5,$20
	ld	$25,%call16(memcpy)($28)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	move	$4,$18

	bne	$16,$19,.L2507
	daddu	$18,$18,$17

.L2503:
	ld	$31,88($sp)
	ld	$fp,80($sp)
	ld	$28,72($sp)
	ld	$23,64($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.set	macro
	.set	reorder
	.end	_ZN4x26515extendPicBorderEPhliiii
	.size	_ZN4x26515extendPicBorderEPhliiii, .-_ZN4x26515extendPicBorderEPhliiii
	.align	2
	.globl	_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE
	.type	_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE, @function
_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE:
	.frame	$sp,96,$31		# vars= 16, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$fp,88($sp)
	sd	$28,80($sp)
	sd	$23,72($sp)
	sd	$22,64($sp)
	sd	$21,56($sp)
	sd	$20,48($sp)
	sd	$19,40($sp)
	sd	$18,32($sp)
	sd	$17,24($sp)
	sd	$16,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE)))
	ld	$22,%got_page(_ZN12_GLOBAL__N_16addAvgILi4ELi4EEEvPKsS2_Phlll)($28)
	daddiu	$22,$22,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi4ELi4EEEvPKsS2_Phlll)
	sd	$22,104($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li)
	sd	$2,96($4)
	ld	$21,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi8EEEvPKsS2_Phlll)($28)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi8EEEvPKsS2_Phlll)
	sd	$21,232($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi16EEEvPKsS2_Phlll)
	sd	$20,360($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi16EEEvPhlPKhlS3_li)
	sd	$2,352($4)
	ld	$19,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi32EEEvPKsS2_Phlll)
	sd	$19,488($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi32EEEvPhlPKhlS3_li)
	sd	$2,480($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll)
	sd	$2,616($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi64EEEvPhlPKhlS3_li)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi64EEEvPhlPKhlS3_li)
	sd	$2,608($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl)
	sd	$25,880($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_16addAvgILi4ELi8EEEvPKsS2_Phlll)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi4ELi8EEEvPKsS2_Phlll)
	sd	$16,872($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi8EEEvPhlPKhlS3_li)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi8EEEvPhlPKhlS3_li)
	sd	$2,864($4)
	ld	$17,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl)($28)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl)
	sd	$17,752($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi4EEEvPKsS2_Phlll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi4EEEvPKsS2_Phlll)
	sd	$18,744($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li)
	sd	$2,736($4)
	ld	$15,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl)($28)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl)
	sd	$15,1008($4)
	ld	$24,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll)($28)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll)
	sd	$24,1000($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi8EEEvPhlPKhlS3_li)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi8EEEvPhlPKhlS3_li)
	sd	$2,992($4)
	ld	$13,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl)($28)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl)
	sd	$13,1136($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll)
	sd	$14,1128($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi16EEEvPhlPKhlS3_li)
	sd	$2,1120($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi12EEEvPhlPKhl)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi12EEEvPhlPKhl)
	sd	$11,1776($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi12EEEvPKsS2_Phlll)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi12EEEvPKsS2_Phlll)
	sd	$12,1768($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi12EEEvPhlPKhlS3_li)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi12EEEvPhlPKhlS3_li)
	sd	$2,1760($4)
	ld	$9,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi16EEEvPhlPKhl)($28)
	daddiu	$9,$9,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi16EEEvPhlPKhl)
	sd	$9,1904($4)
	ld	$10,%got_page(_ZN12_GLOBAL__N_16addAvgILi12ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$10,$10,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi12ELi16EEEvPKsS2_Phlll)
	sd	$10,1896($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi12ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi12ELi16EEEvPhlPKhlS3_li)
	sd	$2,1888($4)
	ld	$7,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl)($28)
	daddiu	$7,$7,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl)
	sd	$7,2032($4)
	ld	$8,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi4EEEvPKsS2_Phlll)($28)
	daddiu	$8,$8,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi4EEEvPKsS2_Phlll)
	sd	$8,2024($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li)
	sd	$2,2016($4)
	ld	$5,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl)($28)
	daddiu	$5,$5,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl)
	sd	$5,2160($4)
	ld	$6,%got_page(_ZN12_GLOBAL__N_16addAvgILi4ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$6,$6,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi4ELi16EEEvPKsS2_Phlll)
	sd	$6,2152($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi16EEEvPhlPKhlS3_li)
	sd	$2,2144($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl)
	sd	$2,1264($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi16EEEvPKsS2_Phlll)
	sd	$3,1256($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi16EEEvPhlPKhlS3_li)
	sd	$23,1248($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl)($28)
	sd	$23,0($sp)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl)
	sd	$23,1392($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$23,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi32EEEvPKsS2_Phlll)
	sd	$fp,8($sp)
	sd	$fp,1384($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi32EEEvPhlPKhlS3_li)
	sd	$23,1376($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi24EEEvPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi24EEEvPhlPKhl)
	sd	$23,2288($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi24EEEvPKsS2_Phlll)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi24EEEvPKsS2_Phlll)
	sd	$23,2280($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi24EEEvPhlPKhlS3_li)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi24EEEvPhlPKhlS3_li)
	sd	$23,2272($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi32EEEvPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi32EEEvPhlPKhl)
	sd	$23,2416($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16addAvgILi24ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi24ELi32EEEvPKsS2_Phlll)
	sd	$23,2408($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi24ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi24ELi32EEEvPhlPKhlS3_li)
	sd	$23,2400($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl)
	sd	$23,2544($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi8EEEvPKsS2_Phlll)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi8EEEvPKsS2_Phlll)
	sd	$23,2536($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi8EEEvPhlPKhlS3_li)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi8EEEvPhlPKhlS3_li)
	sd	$23,2528($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi32EEEvPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi32EEEvPhlPKhl)
	sd	$23,2672($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi32EEEvPKsS2_Phlll)
	sd	$23,2664($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi32EEEvPhlPKhlS3_li)
	sd	$23,2656($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi32EEEvPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi32EEEvPhlPKhl)
	sd	$23,1520($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16addAvgILi64ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi64ELi32EEEvPKsS2_Phlll)
	sd	$23,1512($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi32EEEvPhlPKhlS3_li)
	sd	$23,1504($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl)
	sd	$23,1648($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll)
	sd	$23,1640($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi64EEEvPhlPKhlS3_li)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi64EEEvPhlPKhlS3_li)
	sd	$23,1632($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi48EEEvPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi48EEEvPhlPKhl)
	sd	$23,2800($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16addAvgILi64ELi48EEEvPKsS2_Phlll)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi64ELi48EEEvPKsS2_Phlll)
	sd	$23,2792($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi48EEEvPhlPKhlS3_li)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi48EEEvPhlPKhlS3_li)
	sd	$23,2784($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi48ELi64EEEvPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi48ELi64EEEvPhlPKhl)
	sd	$23,2928($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16addAvgILi48ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi48ELi64EEEvPKsS2_Phlll)
	sd	$23,2920($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi48ELi64EEEvPhlPKhlS3_li)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi48ELi64EEEvPhlPKhlS3_li)
	sd	$23,2912($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi16EEEvPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi16EEEvPhlPKhl)
	sd	$23,3056($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16addAvgILi64ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi64ELi16EEEvPKsS2_Phlll)
	sd	$23,3048($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi16EEEvPhlPKhlS3_li)
	sd	$23,3040($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl)
	sd	$23,3184($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll)
	sd	$23,3176($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi64EEEvPhlPKhlS3_li)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi64EEEvPhlPKhlS3_li)
	sd	$23,3168($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l)
	sd	$23,0($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)
	sd	$23,128($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l)
	sd	$23,256($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l)
	sd	$23,384($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l)
	sd	$23,512($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi4ELi8EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi4ELi8EEEiPKhlS2_l)
	sd	$23,768($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi8ELi4EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi8ELi4EEEiPKhlS2_l)
	sd	$23,640($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi8EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi8EEEiPKhlS2_l)
	sd	$23,896($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi8ELi16EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi8ELi16EEEiPKhlS2_l)
	sd	$23,1024($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi12EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi12EEEiPKhlS2_l)
	sd	$23,1664($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi12ELi16EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi12ELi16EEEiPKhlS2_l)
	sd	$23,1792($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi4EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi4EEEiPKhlS2_l)
	sd	$23,1920($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi4ELi16EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi4ELi16EEEiPKhlS2_l)
	sd	$23,2048($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi32ELi16EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi32ELi16EEEiPKhlS2_l)
	sd	$23,1152($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi32EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi32EEEiPKhlS2_l)
	sd	$23,1280($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi32ELi24EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi32ELi24EEEiPKhlS2_l)
	sd	$23,2176($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi24ELi32EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi24ELi32EEEiPKhlS2_l)
	sd	$23,2304($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi32ELi8EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi32ELi8EEEiPKhlS2_l)
	sd	$23,2432($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi8ELi32EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi8ELi32EEEiPKhlS2_l)
	sd	$23,2560($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi64ELi32EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi64ELi32EEEiPKhlS2_l)
	sd	$23,1408($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi32ELi64EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi32ELi64EEEiPKhlS2_l)
	sd	$23,1536($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi64ELi48EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi64ELi48EEEiPKhlS2_l)
	sd	$23,2688($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi48ELi64EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi48ELi64EEEiPKhlS2_l)
	sd	$23,2816($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi64ELi16EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi64ELi16EEEiPKhlS2_l)
	sd	$23,2944($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi64EEEiPKhlS2_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi64EEEiPKhlS2_l)
	sd	$23,3072($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi)
	sd	$23,8($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi)
	sd	$23,136($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi)
	sd	$23,264($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi)
	sd	$23,392($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi)
	sd	$23,520($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi)
	sd	$23,776($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi)
	sd	$23,648($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi)
	sd	$23,904($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$23,1032($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi)
	sd	$23,1672($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$23,1800($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi)
	sd	$23,1928($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$23,2056($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$23,1160($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi)
	sd	$23,1288($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi)
	sd	$23,2184($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi)
	sd	$23,2312($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi)
	sd	$23,2440($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi)
	sd	$23,2568($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi)
	sd	$23,1416($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi)
	sd	$23,1544($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi)
	sd	$23,2696($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi)
	sd	$23,2824($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$23,2952($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi)
	sd	$23,3080($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,16($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi)
	sd	$23,144($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi)
	sd	$23,272($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi)
	sd	$23,400($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi)
	sd	$23,528($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,784($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,656($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,912($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,1040($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,1680($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,1808($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,1936($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,2064($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,1168($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,1296($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,2192($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,2320($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,2448($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,2576($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,1424($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,1552($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,2704($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,2832($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,2960($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi)
	sd	$23,3088($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li)
	sd	$23,224($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl)
	sd	$23,112($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl)
	sd	$23,240($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl)
	sd	$23,368($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl)
	sd	$23,496($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl)
	sd	$23,624($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii)
	sd	$23,24($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x1ILi8ELi8EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x1ILi8ELi8EEEiPiPjiPtPsii)
	sd	$23,152($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)
	sd	$23,664($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi4ELi8EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi4ELi8EEEiPiPjiPtPsii)
	sd	$23,792($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii)
	sd	$23,280($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi16ELi8EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi16ELi8EEEiPiPjiPtPsii)
	sd	$23,920($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi8ELi16EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi8ELi16EEEiPiPjiPtPsii)
	sd	$23,1048($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x1ILi16ELi12EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x1ILi16ELi12EEEiPiPjiPtPsii)
	sd	$23,1688($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x1ILi12ELi16EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x1ILi12ELi16EEEiPiPjiPtPsii)
	sd	$23,1816($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x1ILi16ELi4EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x1ILi16ELi4EEEiPiPjiPtPsii)
	sd	$23,1944($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x1ILi4ELi16EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x1ILi4ELi16EEEiPiPjiPtPsii)
	sd	$23,2072($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii)
	sd	$23,408($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi32ELi16EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi32ELi16EEEiPiPjiPtPsii)
	sd	$23,1176($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi16ELi32EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi16ELi32EEEiPiPjiPtPsii)
	sd	$23,1304($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi32ELi24EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi32ELi24EEEiPiPjiPtPsii)
	sd	$23,2200($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi24ELi32EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi24ELi32EEEiPiPjiPtPsii)
	sd	$23,2328($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi32ELi8EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi32ELi8EEEiPiPjiPtPsii)
	sd	$23,2456($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi8ELi32EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi8ELi32EEEiPiPjiPtPsii)
	sd	$23,2584($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii)
	sd	$23,536($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi64ELi32EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi64ELi32EEEiPiPjiPtPsii)
	sd	$23,1432($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi32ELi64EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi32ELi64EEEiPiPjiPtPsii)
	sd	$23,1560($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi64ELi48EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi64ELi48EEEiPiPjiPtPsii)
	sd	$23,2712($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi48ELi64EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi48ELi64EEEiPiPjiPtPsii)
	sd	$23,2840($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi64ELi16EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi64ELi16EEEiPiPjiPtPsii)
	sd	$23,2968($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi16ELi64EEEiPiPjiPtPsii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi16ELi64EEEiPiPjiPtPsii)
	sd	$23,3096($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	sd	$23,32($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l)
	sd	$fp,160($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	sd	$fp,672($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l)
	sd	$fp,800($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l)
	sd	$fp,288($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l)
	sd	$fp,928($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l)
	sd	$fp,1056($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l)
	sd	$fp,1696($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l)
	sd	$fp,1824($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l)
	sd	$fp,1952($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)
	sd	$fp,2080($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l)
	sd	$fp,416($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l)
	sd	$fp,1184($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l)
	sd	$fp,1312($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l)
	sd	$fp,2208($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l)
	sd	$fp,2336($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l)
	sd	$fp,2464($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l)
	sd	$fp,2592($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l)
	sd	$fp,544($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l)
	sd	$fp,1440($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l)
	sd	$fp,1568($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l)
	sd	$fp,2720($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l)
	sd	$fp,2848($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l)
	sd	$fp,2976($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l)
	sd	$fp,3104($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl)
	sd	$fp,3312($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl)
	sd	$fp,3320($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi4EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi4EEEvPsPKsli)
	sd	$fp,3280($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi4EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi4EEEvPsPKsli)
	sd	$fp,3288($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi4EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi4EEEvPsPKsli)
	sd	$fp,3296($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi4EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi4EEEvPsPKsli)
	sd	$fp,3304($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19transposeILi4EEEvPhPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19transposeILi4EEEvPhPKhl)
	sd	$fp,3392($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113pixel_ssd_s_cILi4EEEjPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113pixel_ssd_s_cILi4EEEjPKsl)
	sd	$fp,3376($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19pixel_varILi4EEEmPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19pixel_varILi4EEEmPKhl)
	sd	$fp,3344($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sseILi4ELi4EssEEjPKT1_lPKT2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sseILi4ELi4EssEEjPKT1_lPKT2_l)
	sd	$fp,3360($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl)
	sd	$fp,3808($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl)
	sd	$fp,3816($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi8EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi8EEEvPsPKsli)
	sd	$fp,3776($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi8EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi8EEEvPsPKsli)
	sd	$fp,3784($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi8EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi8EEEvPsPKsli)
	sd	$fp,3792($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi8EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi8EEEvPsPKsli)
	sd	$fp,3800($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19transposeILi8EEEvPhPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19transposeILi8EEEvPhPKhl)
	sd	$fp,3888($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113pixel_ssd_s_cILi8EEEjPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113pixel_ssd_s_cILi8EEEjPKsl)
	sd	$fp,3872($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sseILi8ELi8EssEEjPKT1_lPKT2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sseILi8ELi8EssEEjPKT1_lPKT2_l)
	sd	$fp,3856($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl)
	sd	$fp,4304($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl)
	sd	$fp,4312($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi16EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi16EEEvPsPKsli)
	sd	$fp,4272($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi16EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi16EEEvPsPKsli)
	sd	$fp,4280($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi16EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi16EEEvPsPKsli)
	sd	$fp,4288($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi16EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi16EEEvPsPKsli)
	sd	$fp,4296($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19transposeILi16EEEvPhPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19transposeILi16EEEvPhPKhl)
	sd	$fp,4384($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113pixel_ssd_s_cILi16EEEjPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113pixel_ssd_s_cILi16EEEjPKsl)
	sd	$fp,4368($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sseILi16ELi16EssEEjPKT1_lPKT2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sseILi16ELi16EssEEjPKT1_lPKT2_l)
	sd	$fp,4352($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl)
	sd	$fp,4800($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl)
	sd	$fp,4808($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi32EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi32EEEvPsPKsli)
	sd	$fp,4768($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi32EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi32EEEvPsPKsli)
	sd	$fp,4776($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi32EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi32EEEvPsPKsli)
	sd	$fp,4784($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi32EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi32EEEvPsPKsli)
	sd	$fp,4792($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19transposeILi32EEEvPhPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19transposeILi32EEEvPhPKhl)
	sd	$fp,4880($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113pixel_ssd_s_cILi32EEEjPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113pixel_ssd_s_cILi32EEEjPKsl)
	sd	$fp,4864($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19pixel_varILi32EEEmPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19pixel_varILi32EEEmPKhl)
	sd	$fp,4832($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sseILi32ELi32EssEEjPKT1_lPKT2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sseILi32ELi32EssEEjPKT1_lPKT2_l)
	sd	$fp,4848($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi64ELi64EEEvPhlPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi64ELi64EEEvPhlPKsl)
	sd	$fp,5296($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi64ELi64EEEvPslPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi64ELi64EEEvPslPKhl)
	sd	$fp,5304($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi64EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi64EEEvPsPKsli)
	sd	$fp,5264($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi64EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi64EEEvPsPKsli)
	sd	$fp,5272($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi64EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi64EEEvPsPKsli)
	sd	$fp,5280($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi64EEEvPsPKsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi64EEEvPsPKsli)
	sd	$fp,5288($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19transposeILi64EEEvPhPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19transposeILi64EEEvPhPKhl)
	sd	$fp,5376($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113pixel_ssd_s_cILi64EEEjPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113pixel_ssd_s_cILi64EEEjPKsl)
	sd	$fp,5360($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19pixel_varILi64EEEmPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19pixel_varILi64EEEmPKhl)
	sd	$fp,5328($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sseILi64ELi64EssEEjPKT1_lPKT2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sseILi64ELi64EssEEjPKT1_lPKT2_l)
	sd	$fp,5344($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l)
	sd	$fp,3352($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l)
	sd	$fp,3848($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l)
	sd	$fp,4344($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l)
	sd	$fp,4840($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l)
	sd	$fp,5336($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls)
	sd	$fp,3256($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls)
	sd	$fp,3752($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls)
	sd	$fp,4248($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls)
	sd	$fp,4744($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113blockfill_s_cILi64EEEvPsls)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113blockfill_s_cILi64EEEvPsls)
	sd	$fp,5240($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll)
	sd	$fp,3240($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll)
	sd	$fp,3736($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll)
	sd	$fp,4232($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll)
	sd	$fp,4728($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll)
	sd	$fp,5224($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll)
	sd	$fp,3248($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll)
	sd	$fp,3744($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll)
	sd	$fp,4240($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll)
	sd	$fp,4736($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi64ELi64EEEvPhlPKhPKsll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi64ELi64EEEvPhlPKhPKsll)
	sd	$fp,5232($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl)
	sd	$fp,3232($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl)
	sd	$fp,3728($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl)
	sd	$fp,4224($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl)
	sd	$fp,4720($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111getResidualILi64EEEvPKhS2_Psl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111getResidualILi64EEEvPKhS2_Psl)
	sd	$fp,5216($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl)
	sd	$fp,3840($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl)
	sd	$fp,4336($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114psyCost_pp_4x4EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114psyCost_pp_4x4EPKhlS1_l)
	sd	$fp,3368($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114psyCost_pp_8x8EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114psyCost_pp_8x8EPKhlS1_l)
	sd	$fp,3864($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116psyCost_pp_16x16EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116psyCost_pp_16x16EPKhlS1_l)
	sd	$fp,4360($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116psyCost_pp_32x32EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116psyCost_pp_32x32EPKhlS1_l)
	sd	$fp,4856($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l)
	sd	$fp,5352($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl)
	sd	$fp,3328($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl)
	sd	$fp,3824($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl)
	sd	$fp,4320($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl)
	sd	$fp,4816($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi64ELi64EEEvPslPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi64ELi64EEEvPslPKsl)
	sd	$fp,5312($4)
	sd	$23,3384($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	sd	$23,3880($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)
	sd	$23,4376($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l)
	sd	$23,4872($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l)
	sd	$23,5368($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16addAvgILi2ELi2EEEvPKsS2_Phlll)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi2ELi2EEEvPKsS2_Phlll)
	sd	$23,8512($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi2EEEvPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi2EEEvPhlPKhl)
	sd	$23,8520($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16addAvgILi2ELi4EEEvPKsS2_Phlll)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi2ELi4EEEvPKsS2_Phlll)
	sd	$23,8992($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl)
	sd	$23,9000($4)
	sd	$22,8592($4)
	sd	$21,8672($4)
	sd	$20,8752($4)
	sd	$19,8832($4)
	ld	$19,%got_page(_ZN12_GLOBAL__N_16addAvgILi4ELi2EEEvPKsS2_Phlll)($28)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi4ELi2EEEvPKsS2_Phlll)
	sd	$19,8912($4)
	ld	$19,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi2EEEvPhlPKhl)($28)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi2EEEvPhlPKhl)
	sd	$19,8920($4)
	sd	$18,9072($4)
	sd	$17,9080($4)
	sd	$16,9152($4)
	sd	$25,9160($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi6EEEvPKsS2_Phlll)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi6EEEvPKsS2_Phlll)
	sd	$25,9552($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi6EEEvPhlPKhl)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi6EEEvPhlPKhl)
	sd	$25,9560($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_16addAvgILi6ELi8EEEvPKsS2_Phlll)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi6ELi8EEEvPKsS2_Phlll)
	sd	$25,9632($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi8EEEvPhlPKhl)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi8EEEvPhlPKhl)
	sd	$25,9640($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll)
	sd	$25,9712($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi2EEEvPhlPKhl)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi2EEEvPhlPKhl)
	sd	$25,9720($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_16addAvgILi2ELi8EEEvPKsS2_Phlll)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi2ELi8EEEvPKsS2_Phlll)
	sd	$25,9792($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl)
	sd	$25,9800($4)
	sd	$24,9232($4)
	sd	$15,9240($4)
	sd	$14,9312($4)
	sd	$13,9320($4)
	sd	$12,9872($4)
	sd	$11,9880($4)
	sd	$10,9952($4)
	sd	$9,9960($4)
	sd	$8,10032($4)
	sd	$7,10040($4)
	sd	$6,10112($4)
	sd	$5,10120($4)
	sd	$3,9392($4)
	sd	$2,9400($4)
	ld	$fp,8($sp)
	sd	$fp,9472($4)
	ld	$23,0($sp)
	daddiu	$19,$23,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl)
	sd	$19,9480($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi24EEEvPKsS2_Phlll)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi24EEEvPKsS2_Phlll)
	sd	$2,10192($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi24EEEvPhlPKhl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi24EEEvPhlPKhl)
	sd	$2,10200($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_16addAvgILi24ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi24ELi32EEEvPKsS2_Phlll)
	sd	$2,10272($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi32EEEvPhlPKhl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi32EEEvPhlPKhl)
	sd	$2,10280($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi8EEEvPKsS2_Phlll)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi8EEEvPKsS2_Phlll)
	sd	$2,10352($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl)
	sd	$2,10360($4)
	ld	$17,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi32EEEvPKsS2_Phlll)
	sd	$17,10432($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi32EEEvPhlPKhl)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi32EEEvPhlPKhl)
	sd	$16,10440($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl)
	sd	$25,8600($4)
	ld	$24,%got_page(_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl)($28)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl)
	sd	$24,8680($4)
	ld	$15,%got_page(_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl)($28)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl)
	sd	$15,8760($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl)
	sd	$14,8840($4)
	sd	$0,8456($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	sd	$3,8536($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l)
	sd	$11,8616($4)
	ld	$9,%got_page(_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l)($28)
	daddiu	$9,$9,%got_ofst(_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l)
	sd	$9,8696($4)
	ld	$7,%got_page(_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l)($28)
	daddiu	$7,$7,%got_ofst(_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l)
	sd	$7,8776($4)
	sd	$0,8856($4)
	sd	$0,8936($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	sd	$2,9016($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l)
	sd	$2,9096($4)
	ld	$6,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l)($28)
	daddiu	$6,$6,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l)
	sd	$6,9176($4)
	ld	$13,%got_page(_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l)($28)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l)
	sd	$13,9256($4)
	ld	$5,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l)($28)
	daddiu	$5,$5,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l)
	sd	$5,9336($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l)
	sd	$12,9416($4)
	sd	$0,9496($4)
	sd	$0,9576($4)
	sd	$0,9656($4)
	sd	$0,9736($4)
	ld	$8,%got_page(_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l)($28)
	daddiu	$8,$8,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l)
	sd	$8,9816($4)
	ld	$8,%got_page(_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l)($28)
	daddiu	$8,$8,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l)
	sd	$8,9896($4)
	ld	$8,%got_page(_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l)($28)
	daddiu	$8,$8,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l)
	sd	$8,9976($4)
	ld	$10,%got_page(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)($28)
	daddiu	$10,$10,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)
	sd	$10,10056($4)
	ld	$8,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l)($28)
	daddiu	$8,$8,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l)
	sd	$8,10136($4)
	ld	$8,%got_page(_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l)($28)
	daddiu	$8,$8,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l)
	sd	$8,10216($4)
	ld	$8,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l)($28)
	daddiu	$8,$8,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l)
	sd	$8,10296($4)
	ld	$8,%got_page(_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l)($28)
	daddiu	$8,$8,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l)
	sd	$8,10376($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi2EEEvPhlPKsl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi2EEEvPhlPKsl)
	sd	$18,10496($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi2EEEvPslPKhl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi2EEEvPslPKhl)
	sd	$18,10488($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl)
	sd	$18,10560($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl)
	sd	$18,10552($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl)
	sd	$18,10624($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl)
	sd	$18,10616($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl)
	sd	$18,10688($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl)
	sd	$18,10680($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl)
	sd	$18,10752($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl)
	sd	$18,10744($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_18sse_pp_aILi2ELi2EEEjPKhlS2_l)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_18sse_pp_aILi2ELi2EEEjPKhlS2_l)
	sd	$18,10464($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l)
	sd	$18,10528($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l)
	sd	$18,10592($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l)
	sd	$18,10656($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l)
	sd	$18,10720($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi2EEEvPslPKhS3_ll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi2EEEvPslPKhS3_ll)
	sd	$18,10472($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll)
	sd	$18,10536($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll)
	sd	$18,10600($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll)
	sd	$18,10664($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll)
	sd	$18,10728($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll)
	sd	$18,10480($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll)
	sd	$18,10544($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll)
	sd	$18,10608($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll)
	sd	$18,10672($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll)
	sd	$18,10736($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi2EEEvPslPKsl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi2EEEvPslPKsl)
	sd	$18,10504($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl)
	sd	$18,10568($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl)
	sd	$18,10632($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl)
	sd	$18,10696($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl)
	sd	$18,10760($4)
	sd	$3,10520($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	sd	$18,10584($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)
	sd	$18,10648($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l)
	sd	$18,10712($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_16addAvgILi2ELi4EEEvPKsS2_Phlll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi2ELi4EEEvPKsS2_Phlll)
	sd	$18,10832($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl)
	sd	$18,10840($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_16addAvgILi4ELi8EEEvPKsS2_Phlll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi4ELi8EEEvPKsS2_Phlll)
	sd	$18,10912($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl)
	sd	$18,10920($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll)
	sd	$18,10992($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl)
	sd	$18,11000($4)
	sd	$fp,11072($4)
	sd	$19,11080($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll)
	sd	$18,11152($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl)
	sd	$18,11160($4)
	sd	$22,11232($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_16addAvgILi2ELi8EEEvPKsS2_Phlll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi2ELi8EEEvPKsS2_Phlll)
	sd	$18,11312($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl)
	sd	$18,11320($4)
	sd	$21,11392($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_16addAvgILi4ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi4ELi16EEEvPKsS2_Phlll)
	sd	$18,11472($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl)
	sd	$18,11480($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi12EEEvPKsS2_Phlll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi12EEEvPKsS2_Phlll)
	sd	$18,11872($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi12EEEvPhlPKhl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi12EEEvPhlPKhl)
	sd	$18,11880($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_16addAvgILi6ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi6ELi16EEEvPKsS2_Phlll)
	sd	$18,11952($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi16EEEvPhlPKhl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi16EEEvPhlPKhl)
	sd	$18,11960($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi4EEEvPKsS2_Phlll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi4EEEvPKsS2_Phlll)
	sd	$18,12032($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl)
	sd	$18,12040($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_16addAvgILi2ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi2ELi16EEEvPKsS2_Phlll)
	sd	$18,12112($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi16EEEvPhlPKhl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi16EEEvPhlPKhl)
	sd	$18,12120($4)
	sd	$20,11552($4)
	sd	$17,11632($4)
	sd	$16,11640($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi24EEEvPKsS2_Phlll)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi24EEEvPKsS2_Phlll)
	sd	$16,12192($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi24EEEvPhlPKhl)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi24EEEvPhlPKhl)
	sd	$16,12200($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_16addAvgILi12ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi12ELi32EEEvPKsS2_Phlll)
	sd	$16,12272($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi32EEEvPhlPKhl)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi32EEEvPhlPKhl)
	sd	$16,12280($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll)
	sd	$16,12352($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl)
	sd	$16,12360($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_16addAvgILi4ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi4ELi32EEEvPKsS2_Phlll)
	sd	$16,12432($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi32EEEvPhlPKhl)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi32EEEvPhlPKhl)
	sd	$16,12440($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi32EEEvPKsS2_Phlll)
	sd	$16,11712($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll)
	sd	$16,11792($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl)
	sd	$16,11800($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi48EEEvPKsS2_Phlll)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi48EEEvPKsS2_Phlll)
	sd	$16,12512($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi48EEEvPhlPKhl)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi48EEEvPhlPKhl)
	sd	$16,12520($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_16addAvgILi24ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi24ELi64EEEvPKsS2_Phlll)
	sd	$16,12592($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi64EEEvPhlPKhl)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi64EEEvPhlPKhl)
	sd	$16,12600($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi16EEEvPKsS2_Phlll)
	sd	$16,12672($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl)
	sd	$16,12680($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi64EEEvPKsS2_Phlll)
	sd	$16,12752($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi64EEEvPhlPKhl)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi64EEEvPhlPKhl)
	sd	$16,12760($4)
	sd	$25,11240($4)
	sd	$24,11400($4)
	sd	$15,11560($4)
	sd	$14,11720($4)
	sd	$0,10776($4)
	sd	$2,10856($4)
	sd	$13,10936($4)
	sd	$12,11016($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l)
	sd	$12,11096($4)
	sd	$3,11176($4)
	sd	$0,11256($4)
	sd	$11,11336($4)
	sd	$10,11416($4)
	sd	$9,11496($4)
	sd	$8,11576($4)
	sd	$7,11656($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l)
	sd	$3,11736($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l)
	sd	$3,11816($4)
	sd	$0,11896($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l)
	sd	$3,11976($4)
	sd	$0,12056($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l)
	sd	$3,12136($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l)
	sd	$3,12216($4)
	sd	$6,12296($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l)
	sd	$3,12376($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l)
	sd	$3,12456($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l)
	sd	$3,12536($4)
	sd	$5,12616($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l)
	sd	$3,12696($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_18sse_pp_aILi2ELi4EEEjPKhlS2_l)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_18sse_pp_aILi2ELi4EEEjPKhlS2_l)
	sd	$3,12784($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi4EEEvPhlPKsl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi4EEEvPhlPKsl)
	sd	$3,12816($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi4EEEvPslPKhl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi4EEEvPslPKhl)
	sd	$3,12808($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi4EEEvPslPKsl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi4EEEvPslPKsl)
	sd	$3,12824($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi4EEEvPslPKhS3_ll)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi4EEEvPslPKhS3_ll)
	sd	$3,12792($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi4EEEvPhlPKhPKsll)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi4EEEvPhlPKhPKsll)
	sd	$3,12800($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_18sse_pp_aILi4ELi8EEEjPKhlS2_l)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_18sse_pp_aILi4ELi8EEEjPKhlS2_l)
	sd	$3,12848($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi8EEEvPhlPKsl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi8EEEvPhlPKsl)
	sd	$3,12880($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi8EEEvPslPKhl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi8EEEvPslPKhl)
	sd	$3,12872($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi8EEEvPslPKsl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi8EEEvPslPKsl)
	sd	$3,12888($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi8EEEvPslPKhS3_ll)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi8EEEvPslPKhS3_ll)
	sd	$3,12856($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi8EEEvPhlPKhPKsll)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi8EEEvPhlPKhPKsll)
	sd	$3,12864($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_18sse_pp_aILi8ELi16EEEjPKhlS2_l)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_18sse_pp_aILi8ELi16EEEjPKhlS2_l)
	sd	$3,12912($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi16EEEvPhlPKsl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi16EEEvPhlPKsl)
	sd	$3,12944($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi16EEEvPslPKhl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi16EEEvPslPKhl)
	sd	$3,12936($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi16EEEvPslPKsl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi16EEEvPslPKsl)
	sd	$3,12952($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi16EEEvPslPKhS3_ll)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi16EEEvPslPKhS3_ll)
	sd	$3,12920($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi16EEEvPhlPKhPKsll)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi16EEEvPhlPKhPKsll)
	sd	$3,12928($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_18sse_pp_aILi16ELi32EEEjPKhlS2_l)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_18sse_pp_aILi16ELi32EEEjPKhlS2_l)
	sd	$3,12976($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi32EEEvPhlPKsl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi32EEEvPhlPKsl)
	sd	$3,13008($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi32EEEvPslPKhl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi32EEEvPslPKhl)
	sd	$3,13000($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi32EEEvPslPKsl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi32EEEvPslPKsl)
	sd	$3,13016($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi32EEEvPslPKhS3_ll)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi32EEEvPslPKhS3_ll)
	sd	$3,12984($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi32EEEvPhlPKhPKsll)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi32EEEvPhlPKhPKsll)
	sd	$3,12992($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_18sse_pp_aILi32ELi64EEEjPKhlS2_l)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_18sse_pp_aILi32ELi64EEEjPKhlS2_l)
	sd	$3,13040($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi64EEEvPhlPKsl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi64EEEvPhlPKsl)
	sd	$3,13072($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi64EEEvPslPKhl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi64EEEvPslPKhl)
	sd	$3,13064($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi64EEEvPslPKsl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi64EEEvPslPKsl)
	sd	$3,13080($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi64EEEvPslPKhS3_ll)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi64EEEvPslPKhS3_ll)
	sd	$3,13048($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi64EEEvPhlPKhPKsll)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi64EEEvPhlPKhPKsll)
	sd	$3,13056($4)
	sd	$2,12840($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l)
	sd	$2,12904($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l)
	sd	$2,12968($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_16sa8d16ILi32ELi64EEEiPKhlS2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_16sa8d16ILi32ELi64EEEiPKhlS2_l)
	sd	$2,13032($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii)
	sd	$2,5960($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L11weight_sp_cEPKsPhlliiiiii)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L11weight_sp_cEPKsPhlliiiiii)
	sd	$2,5952($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L15scale1D_128to64EPhPKh)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L15scale1D_128to64EPhPKh)
	sd	$2,5736($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L14scale2D_64to32EPhPKhl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L14scale2D_64to32EPhPKhl)
	sd	$2,5744($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii)
	sd	$2,5880($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L15ssim_4x4x2_coreEPKhlS1_lPA4_i)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L15ssim_4x4x2_coreEPKhlS1_lPA4_i)
	sd	$2,5752($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L10ssim_end_4EPA4_iS1_i)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L10ssim_end_4EPA4_iS1_i)
	sd	$2,5760($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L14planecopy_cp_cEPKhlPhliii)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L14planecopy_cp_cEPKhlPhliii)
	sd	$2,5920($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L14planecopy_sp_cEPKtlPhliiit)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L14planecopy_sp_cEPKtlPhliiit)
	sd	$2,5928($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L18planecopy_sp_shl_cEPKtlPhliiit)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L18planecopy_sp_shl_cEPKtlPhliiit)
	sd	$2,5936($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L23estimateCUPropagateCostEPiPKtPKiS2_S4_PKdi)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L23estimateCUPropagateCostEPiPKtPKiS2_S4_PKdi)
	sd	$2,5888($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L16cuTreeFix8UnpackEPdPti)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L16cuTreeFix8UnpackEPdPti)
	sd	$2,5896($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L14cuTreeFix8PackEPtPdi)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L14cuTreeFix8PackEPtPdi)
	sd	$2,5904($4)
	ld	$fp,88($sp)
	ld	$28,80($sp)
	ld	$23,72($sp)
	ld	$22,64($sp)
	ld	$21,56($sp)
	ld	$20,48($sp)
	ld	$19,40($sp)
	ld	$18,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.set	macro
	.set	reorder
	.end	_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE
	.size	_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE, .-_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE
	.local	_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf
	.comm	_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC0:
	.word	0
	.word	1064304640
	.align	3
.LC1:
	.word	0
	.word	1071644672
	.align	3
.LC2:
	.word	0
	.word	1081081856
	.align	3
.LC3:
	.word	0
	.word	1105199104
	.ident	"GCC: (GNU) 7.3.0"
