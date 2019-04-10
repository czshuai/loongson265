	.file	1 "pixel.cpp"
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
	.ent	_ZN12_GLOBAL__N_1L11weight_sp_cEPKsPhlliiiiii
	.type	_ZN12_GLOBAL__N_1L11weight_sp_cEPKsPhlliiiiii, @function
_ZN12_GLOBAL__N_1L11weight_sp_cEPKsPhlliiiiii:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x10030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$17,16($sp)
	sd	$16,8($sp)
	lw	$15,32($sp)
	blez	$9,.L1
	lw	$24,40($sp)

	addiu	$16,$8,-1
	dsll	$17,$6,1
	dext	$16,$16,0,32
	move	$6,$0
	dsll	$16,$16,1
	li	$25,255			# 0xff
	daddiu	$16,$16,2
	.align	3
.L5:
	blez	$8,.L3
	nop

	move	$3,$4
	move	$12,$5
	daddu	$14,$16,$4
	.align	3
.L4:
	lh	$2,0($3)
	daddiu	$12,$12,1
	daddiu	$3,$3,2
	addiu	$2,$2,8192
	mul	$13,$2,$10
	addu	$2,$13,$11
	sra	$2,$2,$15
	addu	$2,$2,$24
	slt	$13,$2,256
	movz	$2,$25,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L4
	sb	$2,-1($12)

.L3:
	addiu	$6,$6,1
	daddu	$4,$4,$17
	bne	$9,$6,.L5
	daddu	$5,$5,$7

.L1:
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L11weight_sp_cEPKsPhlliiiiii
	.size	_ZN12_GLOBAL__N_1L11weight_sp_cEPKsPhlliiiiii, .-_ZN12_GLOBAL__N_1L11weight_sp_cEPKsPhlliiiiii
	.align	2
	.align	3
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
	li	$10,128			# 0x80
	.align	3
.L11:
	lbu	$3,128($5)
	daddiu	$5,$5,2
	dsra	$6,$7,1
	lbu	$9,127($5)
	daddu	$6,$4,$6
	addiu	$7,$7,2
	lbu	$2,-2($5)
	addu	$3,$3,$9
	lbu	$8,-1($5)
	addiu	$3,$3,1
	sra	$3,$3,1
	sb	$3,64($6)
	addu	$2,$2,$8
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$7,$10,.L11
	sb	$2,0($6)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L15scale1D_128to64EPhPKh
	.size	_ZN12_GLOBAL__N_1L15scale1D_128to64EPhPKh, .-_ZN12_GLOBAL__N_1L15scale1D_128to64EPhPKh
	.align	2
	.align	3
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
	move	$14,$0
	li	$13,64			# 0x40
	.align	3
.L16:
	srl	$12,$14,1
	daddu	$15,$6,$5
	sll	$12,$12,5
	move	$8,$15
	move	$7,$0
	.align	3
.L15:
	lbu	$2,0($5)
	daddiu	$8,$8,2
	srl	$3,$7,1
	lbu	$11,1($5)
	addu	$3,$3,$12
	addiu	$7,$7,2
	lbu	$10,-2($8)
	dext	$3,$3,0,32
	daddiu	$5,$5,2
	daddu	$3,$4,$3
	addu	$2,$2,$11
	lbu	$9,-1($8)
	addu	$2,$2,$10
	addu	$2,$2,$9
	addiu	$2,$2,2
	sra	$2,$2,2
	bne	$7,$13,.L15
	sb	$2,0($3)

	addiu	$14,$14,2
	bne	$14,$13,.L16
	daddu	$5,$15,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L14scale2D_64to32EPhPKhl
	.size	_ZN12_GLOBAL__N_1L14scale2D_64to32EPhPKhl, .-_ZN12_GLOBAL__N_1L14scale2D_64to32EPhPKhl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L15ssim_4x4x2_coreEPKhlS1_lPA4_i
	.type	_ZN12_GLOBAL__N_1L15ssim_4x4x2_coreEPKhlS1_lPA4_i, @function
_ZN12_GLOBAL__N_1L15ssim_4x4x2_coreEPKhlS1_lPA4_i:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$18,24($sp)
	daddiu	$18,$8,32
	sd	$19,32($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
.L23:
	move	$25,$4
	move	$17,$6
	li	$16,4			# 0x4
	mtlo	$0
	move	$12,$0
	move	$13,$0
	move	$14,$0
.L22:
	daddiu	$24,$25,4
	move	$10,$17
	move	$3,$25
.L21:
	lbu	$2,0($10)
	daddiu	$3,$3,1
	mflo	$19
	lbu	$11,-1($3)
	mtlo	$19
	daddiu	$10,$10,1
	move	$9,$2
	gsmultu	$15,$2,$2
	madd	$11,$9
	addu	$13,$2,$13
	addu	$14,$11,$14
	mflo	$19
	mul	$9,$11,$11
	addu	$2,$9,$15
	move	$9,$19
	mtlo	$9
	bne	$24,$3,.L21
	addu	$12,$2,$12

	addiu	$16,$16,-1
	daddu	$25,$25,$5
	bne	$16,$0,.L22
	daddu	$17,$17,$7

	sw	$14,0($8)
	daddiu	$8,$8,16
	daddiu	$4,$4,4
	sw	$13,-12($8)
	daddiu	$6,$6,4
	sw	$12,-8($8)
	bne	$18,$8,.L23
	sw	$19,-4($8)

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L15ssim_4x4x2_coreEPKhlS1_lPA4_i
	.size	_ZN12_GLOBAL__N_1L15ssim_4x4x2_coreEPKhlS1_lPA4_i, .-_ZN12_GLOBAL__N_1L15ssim_4x4x2_coreEPKhlS1_lPA4_i
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L10ssim_end_4EPA4_iS1_i
	.type	_ZN12_GLOBAL__N_1L10ssim_end_4EPA4_iS1_i, @function
_ZN12_GLOBAL__N_1L10ssim_end_4EPA4_iS1_i:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	blez	$6,.L28
	mtc1	$0,$f0

	addiu	$8,$6,-1
	daddiu	$2,$4,16
	dext	$8,$8,0,32
	li	$7,196608			# 0x30000
	dlsa	$8,$8,$2,4
	ori	$7,$7,0x99bb
	.align	3
.L30:
	lw	$10,0($4)
	daddiu	$4,$4,16
	daddiu	$5,$5,16
	lw	$3,-16($5)
	lw	$12,-4($5)
	lw	$9,0($4)
	lw	$6,12($4)
	lw	$2,-4($4)
	addu	$10,$10,$9
	lw	$11,4($4)
	lw	$9,-12($4)
	addu	$10,$10,$3
	addu	$2,$2,$6
	lw	$6,-12($5)
	lw	$3,0($5)
	addu	$2,$2,$12
	lw	$12,4($5)
	addu	$9,$9,$11
	addu	$9,$9,$6
	lw	$11,12($5)
	addu	$10,$10,$3
	lw	$15,8($4)
	addu	$9,$9,$12
	lw	$3,-8($4)
	gsmultu	$6,$10,$10
	mul	$24,$10,$9
	lw	$14,-8($5)
	gsmultu	$12,$9,$9
	addu	$2,$2,$11
	lw	$13,8($5)
	sll	$11,$10,1
	sll	$2,$2,6
	addu	$3,$3,$15
	gsmultu	$9,$11,$9
	addu	$3,$3,$14
	addu	$3,$3,$13
	sll	$3,$3,6
	subu	$3,$3,$6
	addu	$6,$6,$12
	subu	$3,$3,$12
	addiu	$6,$6,416
	addu	$3,$3,$7
	addiu	$9,$9,416
	mtc1	$6,$f3
	mtc1	$3,$f2
	mtc1	$9,$f4
	cvt.s.w	$f3,$f3
	cvt.s.w	$f2,$f2
	cvt.s.w	$f4,$f4
	subu	$2,$2,$24
	mul.s	$f2,$f2,$f3
	lsa	$2,$2,$7,1
	mtc1	$2,$f1
	cvt.s.w	$f1,$f1
	mul.s	$f1,$f1,$f4
	div.s	$f1,$f1,$f2
	bne	$8,$4,.L30
	add.s	$f0,$f0,$f1

.L28:
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L10ssim_end_4EPA4_iS1_i
	.size	_ZN12_GLOBAL__N_1L10ssim_end_4EPA4_iS1_i, .-_ZN12_GLOBAL__N_1L10ssim_end_4EPA4_iS1_i
	.align	2
	.align	3
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
	addiu	$14,$8,-1

	move	$13,$0
	dext	$14,$14,0,32
	daddiu	$14,$14,1
	.align	3
.L38:
	blez	$8,.L36
	nop

	move	$2,$4
	move	$11,$6
	daddu	$12,$14,$4
	.align	3
.L37:
	lbu	$3,0($2)
	daddiu	$11,$11,1
	daddiu	$2,$2,1
	sll	$3,$3,$10
	bne	$2,$12,.L37
	sb	$3,-1($11)

.L36:
	addiu	$13,$13,1
	daddu	$6,$6,$7
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
	.align	3
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
	addiu	$15,$8,-1

	dsll	$5,$5,1
	dext	$15,$15,0,32
	move	$14,$0
	dsll	$15,$15,1
	seb	$11,$11
	daddiu	$15,$15,2
	.align	3
.L47:
	blez	$8,.L45
	nop

	move	$3,$4
	move	$12,$6
	daddu	$13,$15,$4
	.align	3
.L46:
	lhu	$2,0($3)
	daddiu	$12,$12,1
	daddiu	$3,$3,2
	sra	$2,$2,$10
	and	$2,$2,$11
	bne	$13,$3,.L46
	sb	$2,-1($12)

.L45:
	addiu	$14,$14,1
	daddu	$6,$6,$7
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
	.align	3
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
	addiu	$15,$8,-1

	dsll	$5,$5,1
	dext	$15,$15,0,32
	move	$14,$0
	dsll	$15,$15,1
	seb	$11,$11
	daddiu	$15,$15,2
	.align	3
.L56:
	blez	$8,.L54
	nop

	move	$3,$4
	move	$12,$6
	daddu	$13,$15,$4
	.align	3
.L55:
	lhu	$2,0($3)
	daddiu	$12,$12,1
	daddiu	$3,$3,2
	sll	$2,$2,$10
	and	$2,$2,$11
	bne	$13,$3,.L55
	sb	$2,-1($12)

.L54:
	addiu	$14,$14,1
	daddu	$6,$6,$7
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
	.align	3
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
	lui	$13,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_1L23estimateCUPropagateCostEPiPKtPKiS2_S4_PKdi)))
	ldc1	$f4,0($9)
	daddu	$13,$13,$25
	daddiu	$13,$13,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_1L23estimateCUPropagateCostEPiPKtPKiS2_S4_PKdi)))
	ld	$2,%got_page(.LC0)($13)
	ldc1	$f0,%got_ofst(.LC0)($2)
	blez	$10,.L66
	mul.d	$f4,$f4,$f0

	ld	$3,%got_page(.LC1)($13)
	addiu	$12,$10,-1
	daddiu	$2,$6,4
	dext	$12,$12,0,32
	dlsa	$12,$12,$2,2
	ldc1	$f5,%got_ofst(.LC1)($3)
	.align	3
.L63:
	lw	$9,0($6)
	daddiu	$5,$5,2
	daddiu	$7,$7,2
	lw	$3,0($8)
	daddiu	$4,$4,4
	daddiu	$6,$6,4
	lhu	$11,-2($5)
	daddiu	$8,$8,4
	dmtc1	$9,$f0
	gsmultu	$3,$3,$9
	lhu	$10,-2($7)
	cvt.d.w	$f3,$f0
	mtc1	$11,$f0
	andi	$10,$10,0x3fff
	slt	$11,$9,$10
	movn	$10,$9,$11
	subu	$9,$9,$10
	cvt.d.w	$f2,$f0
	mtc1	$3,$f0
	mtc1	$9,$f1
	cvt.d.w	$f0,$f0
	cvt.d.w	$f1,$f1
	madd.d	$f0,$f2,$f4,$f0
	mul.d	$f0,$f0,$f1
	div.d	$f0,$f0,$f3
	add.d	$f0,$f0,$f5
	trunc.w.d $f0,$f0
	bne	$12,$6,.L63
	swc1	$f0,-4($4)

.L66:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L23estimateCUPropagateCostEPiPKtPKiS2_S4_PKdi
	.size	_ZN12_GLOBAL__N_1L23estimateCUPropagateCostEPiPKtPKiS2_S4_PKdi, .-_ZN12_GLOBAL__N_1L23estimateCUPropagateCostEPiPKtPKiS2_S4_PKdi
	.align	2
	.align	3
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

	addiu	$3,$6,-1
	daddiu	$2,$5,8
	dext	$3,$3,0,32
	li	$6,-2147483648			# 0xffffffff80000000
	dlsa	$3,$3,$2,3
	ld	$2,%got_page(.LC2)($7)
	ldc1	$f3,%got_ofst(.LC2)($2)
	ld	$2,%got_page(.LC3)($7)
	ldc1	$f1,%got_ofst(.LC3)($2)
	.align	3
.L71:
	ldc1	$f0,0($5)
	mul.d	$f0,$f0,$f3
	sub.d	$f2,$f0,$f1
	c.le.d	$fcc0,$f1,$f0
	trunc.w.d $f0,$f0
	bc1f	$fcc0,.L70
	mfc1	$2,$f0

	trunc.w.d $f0,$f2
	mfc1	$2,$f0
	or	$2,$2,$6
.L70:
	daddiu	$5,$5,8
	sh	$2,0($4)
	bne	$5,$3,.L71
	daddiu	$4,$4,2

.L74:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L14cuTreeFix8PackEPtPdi
	.size	_ZN12_GLOBAL__N_1L14cuTreeFix8PackEPtPdi, .-_ZN12_GLOBAL__N_1L14cuTreeFix8PackEPtPdi
	.align	2
	.align	3
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

	addiu	$3,$6,-1
	daddiu	$2,$5,2
	dext	$3,$3,0,32
	dlsa	$3,$3,$2,1
	ld	$2,%got_page(.LC0)($7)
	ldc1	$f1,%got_ofst(.LC0)($2)
	.align	3
.L77:
	lh	$2,0($5)
	daddiu	$4,$4,8
	daddiu	$5,$5,2
	mtc1	$2,$f0
	cvt.d.w	$f0,$f0
	mul.d	$f0,$f0,$f1
	bne	$5,$3,.L77
	sdc1	$f0,-8($4)

.L80:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L16cuTreeFix8UnpackEPdPti
	.size	_ZN12_GLOBAL__N_1L16cuTreeFix8UnpackEPdPti, .-_ZN12_GLOBAL__N_1L16cuTreeFix8UnpackEPdPti
	.align	2
	.align	3
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
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L82
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L83
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi4EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi4EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi4EEEvPhlPKhl
	.align	2
	.align	3
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
	lh	$11,0($4)
	addiu	$10,$10,-1
	lh	$2,0($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($6)
	lh	$11,2($4)
	lh	$2,2($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($6)
	lh	$11,4($5)
	lh	$2,4($4)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,2($6)
	lh	$11,6($5)
	daddu	$5,$5,$8
	lh	$2,6($4)
	daddu	$4,$4,$7
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,3($6)
	bne	$10,$0,.L88
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi4ELi4EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi4ELi4EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi4ELi4EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L92
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L93
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	.align	3
.L99:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L98:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L98
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L99
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi8EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi8EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi8EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L105:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L104:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L104
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L105
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi8ELi8EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi8ELi8EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi8ELi8EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	.align	3
.L111:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L110:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L110
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L111
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi8EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi8EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi8EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	.align	3
.L117:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L116:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L116
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L117
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi16EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi16EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi16EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L123:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L122:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L122
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L123
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi16ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi16ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi16ELi16EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	.align	3
.L129:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L128:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L128
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L129
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi16EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi16EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi16EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	.align	3
.L135:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L134:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L134
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L135
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi32EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi32EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi32EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L141:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L140:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L140
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L141
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi32ELi32EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi32ELi32EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi32ELi32EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	.align	3
.L147:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L146:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L146
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L147
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi32EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi32EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi32EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	.align	3
.L153:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L152:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L152
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L153
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi64EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi64EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi64EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L159:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
	.align	3
.L158:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L158
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L159
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	.align	3
.L165:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L164:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L164
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L165
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi64EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi64EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi64EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	li	$10,8			# 0x8
	.align	3
.L171:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L170:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L170
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L171
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl
	.align	2
	.align	3
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
	.align	3
.L176:
	lh	$11,0($4)
	addiu	$10,$10,-1
	lh	$2,0($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($6)
	lh	$11,2($4)
	lh	$2,2($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($6)
	lh	$11,4($5)
	lh	$2,4($4)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,2($6)
	lh	$11,6($5)
	daddu	$5,$5,$8
	lh	$2,6($4)
	daddu	$4,$4,$7
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,3($6)
	bne	$10,$0,.L176
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi4ELi8EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi4ELi8EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi4ELi8EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$14,8			# 0x8
	.align	3
.L181:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,4
.L180:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L180
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L181
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi8EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi8EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi8EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
.L187:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L186:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L186
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L187
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl
	.align	2
	.align	3
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
.L193:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L192:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L192
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L193
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi8ELi4EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi8ELi4EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi8ELi4EEEvPKsS2_Phlll
	.align	2
	.align	3
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
.L199:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L198:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L198
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L199
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	.align	3
.L205:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L204:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L204
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L205
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl
	.align	2
	.align	3
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
	.align	3
.L211:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L210:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L210
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L211
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	.align	3
.L217:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L216:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L216
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L217
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi8EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi8EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi8EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	li	$10,16			# 0x10
	.align	3
.L223:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L222:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L222
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L223
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L229:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L228:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L228
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L229
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$14,16			# 0x10
	.align	3
.L235:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L234:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L234
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L235
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi16EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi16EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi16EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	.align	3
.L241:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L240:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L240
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L241
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi12EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi12EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi12EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L247:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L246:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L246
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L247
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi16ELi12EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi16ELi12EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi16ELi12EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	.align	3
.L253:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L252:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L252
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L253
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi12EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi12EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi12EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	li	$10,16			# 0x10
	.align	3
.L259:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,12
	.align	3
.L258:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L258
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L259
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi16EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi16EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi16EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L265:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,24
	.align	3
.L264:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L264
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L265
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi12ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi12ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi12ELi16EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$14,16			# 0x10
	.align	3
.L271:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,12
	.align	3
.L270:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L270
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L271
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi12ELi16EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi12ELi16EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi12ELi16EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
.L277:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L276:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L276
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L277
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl
	.align	2
	.align	3
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
.L283:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L282:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L282
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L283
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi16ELi4EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi16ELi4EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi16ELi4EEEvPKsS2_Phlll
	.align	2
	.align	3
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
.L289:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L288:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L288
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L289
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	li	$10,16			# 0x10
	.align	3
.L295:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L294:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L294
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L295
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl
	.align	2
	.align	3
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
	.align	3
.L300:
	lh	$11,0($4)
	addiu	$10,$10,-1
	lh	$2,0($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($6)
	lh	$11,2($4)
	lh	$2,2($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($6)
	lh	$11,4($5)
	lh	$2,4($4)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,2($6)
	lh	$11,6($5)
	daddu	$5,$5,$8
	lh	$2,6($4)
	daddu	$4,$4,$7
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,3($6)
	bne	$10,$0,.L300
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi4ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi4ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi4ELi16EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$14,16			# 0x10
	.align	3
.L305:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,4
.L304:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L304
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L305
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi16EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi16EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi16EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	.align	3
.L311:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L310:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L310
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L311
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl
	.align	2
	.align	3
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
	.align	3
.L317:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L316:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L316
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L317
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi32ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi32ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi32ELi16EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	.align	3
.L323:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L322:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L322
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L323
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi16EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi16EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi16EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	li	$10,32			# 0x20
	.align	3
.L329:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L328:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L328
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L329
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L335:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L334:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L334
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L335
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi16ELi32EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi16ELi32EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi16ELi32EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$14,32			# 0x20
	.align	3
.L341:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L340:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L340
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L341
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi32EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi32EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi32EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	.align	3
.L347:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L346:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L346
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L347
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi24EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi24EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi24EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L353:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L352:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L352
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L353
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi32ELi24EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi32ELi24EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi32ELi24EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	.align	3
.L359:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L358:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L358
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L359
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi24EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi24EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi24EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	li	$10,32			# 0x20
	.align	3
.L365:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,24
	.align	3
.L364:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L364
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L365
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi32EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi32EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi32EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L371:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,48
	.align	3
.L370:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L370
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L371
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi24ELi32EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi24ELi32EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi24ELi32EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$14,32			# 0x20
	.align	3
.L377:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,24
	.align	3
.L376:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L376
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L377
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi24ELi32EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi24ELi32EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi24ELi32EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	.align	3
.L383:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L382:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L382
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L383
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl
	.align	2
	.align	3
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
	.align	3
.L389:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L388:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L388
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L389
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi32ELi8EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi32ELi8EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi32ELi8EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	.align	3
.L395:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L394:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L394
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L395
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi8EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi8EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi8EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	li	$10,32			# 0x20
	.align	3
.L401:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L400:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L400
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L401
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi32EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi32EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi32EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L407:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L406:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L406
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L407
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi8ELi32EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi8ELi32EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi8ELi32EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$14,32			# 0x20
	.align	3
.L413:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L412:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L412
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L413
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi32EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi32EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi32EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	.align	3
.L419:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L418:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L418
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L419
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi32EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi32EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi32EEEvPhlPKhl
	.align	2
	.align	3
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
	.align	3
.L425:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
	.align	3
.L424:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L424
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L425
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi64ELi32EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi64ELi32EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi64ELi32EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	.align	3
.L431:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L430:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L430
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L431
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi32EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi32EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi32EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	li	$10,64			# 0x40
	.align	3
.L437:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L436:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L436
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L437
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L443:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L442:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L442
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L443
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$14,64			# 0x40
	.align	3
.L449:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L448:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L448
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L449
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi64EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi64EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi64EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	.align	3
.L455:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L454:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L454
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L455
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi48EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi48EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi48EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L461:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
	.align	3
.L460:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L460
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L461
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi64ELi48EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi64ELi48EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi64ELi48EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	.align	3
.L467:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L466:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L466
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L467
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi48EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi48EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi48EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	li	$10,64			# 0x40
	.align	3
.L473:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,48
	.align	3
.L472:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L472
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L473
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi48ELi64EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi48ELi64EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi48ELi64EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L479:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,96
	.align	3
.L478:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L478
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L479
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi48ELi64EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi48ELi64EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi48ELi64EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$14,64			# 0x40
	.align	3
.L485:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,48
	.align	3
.L484:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L484
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L485
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi48ELi64EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi48ELi64EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi48ELi64EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	.align	3
.L491:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L490:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L490
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L491
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi16EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi16EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi16EEEvPhlPKhl
	.align	2
	.align	3
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
	.align	3
.L497:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
	.align	3
.L496:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L496
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L497
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi64ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi64ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi64ELi16EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	.align	3
.L503:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L502:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L502
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L503
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi16EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi16EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi16EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	li	$10,64			# 0x40
	.align	3
.L509:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L508:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L508
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L509
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L515:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L514:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L514
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L515
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$14,64			# 0x40
	.align	3
.L521:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L520:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L520
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L521
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi64EEEvPhlPKhlS3_li
	.size	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi64EEEvPhlPKhlS3_li, .-_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi64EEEvPhlPKhlS3_li
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L527:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,4
.L526:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L526
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L527
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi4ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi4ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi4ELi8EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
.L533:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L532:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L532
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L533
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi8ELi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi8ELi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi8ELi4EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L539:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L538:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L538
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L539
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi16ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi16ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi16ELi8EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L545:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L544:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L544
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L545
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi8ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi8ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi8ELi16EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L551:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L550:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L550
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L551
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi16ELi12EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi16ELi12EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi16ELi12EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L557:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,12
	.align	3
.L556:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L556
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L557
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi12ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi12ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi12ELi16EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
.L563:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L562:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L562
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L563
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi16ELi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi16ELi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi16ELi4EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L569:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,4
.L568:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L568
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L569
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi4ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi4ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi4ELi16EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L575:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L574:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L574
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L575
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi32ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi32ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi32ELi16EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L581:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L580:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L580
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L581
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi16ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi16ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi16ELi32EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L587:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L586:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L586
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L587
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi32ELi24EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi32ELi24EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi32ELi24EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L593:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,24
	.align	3
.L592:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L592
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L593
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi24ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi24ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi24ELi32EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L599:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L598:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L598
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L599
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi32ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi32ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi32ELi8EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L605:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L604:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L604
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L605
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi8ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi8ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi8ELi32EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L611:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L610:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L610
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L611
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi64ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi64ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi64ELi32EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L617:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L616:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L616
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L617
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi32ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi32ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi32ELi64EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L623:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L622:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L622
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L623
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi64ELi48EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi64ELi48EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi64ELi48EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L629:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,48
	.align	3
.L628:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L628
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L629
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi48ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi48ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi48ELi64EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L635:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L634:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L634
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L635
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi64ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi64ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi64ELi16EEEiPKhlS2_l
	.align	2
	.align	3
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
	move	$10,$0
	.align	3
.L641:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L640:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L640
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L641
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi16ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi16ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi16ELi64EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,256
	sw	$0,4($9)
	sw	$0,8($9)
.L647:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,4
.L646:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L646
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L647
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,512
	sw	$0,4($9)
	sw	$0,8($9)
	.align	3
.L653:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,4
.L652:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L652
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L653
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,256
	sw	$0,4($9)
	sw	$0,8($9)
.L659:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,8
	.align	3
.L658:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L658
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L659
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,512
	sw	$0,4($9)
	sw	$0,8($9)
	.align	3
.L665:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L664:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L664
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L665
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,1024
	sw	$0,4($9)
	sw	$0,8($9)
	.align	3
.L671:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,8
	.align	3
.L670:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L670
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L671
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,768
	sw	$0,4($9)
	sw	$0,8($9)
	.align	3
.L677:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L676:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L676
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L677
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,1024
	sw	$0,4($9)
	sw	$0,8($9)
	.align	3
.L683:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,12
	.align	3
.L682:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L682
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L683
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,256
	sw	$0,4($9)
	sw	$0,8($9)
.L689:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L688:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L688
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L689
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,1024
	sw	$0,4($9)
	sw	$0,8($9)
	.align	3
.L695:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,4
.L694:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L694
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L695
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,1024
	sw	$0,4($9)
	sw	$0,8($9)
	.align	3
.L701:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L700:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L700
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L701
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,2048
	sw	$0,4($9)
	sw	$0,8($9)
	.align	3
.L707:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L706:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L706
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L707
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,1536
	sw	$0,4($9)
	sw	$0,8($9)
	.align	3
.L713:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L712:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L712
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L713
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,2048
	sw	$0,4($9)
	sw	$0,8($9)
	.align	3
.L719:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,24
	.align	3
.L718:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L718
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L719
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,512
	sw	$0,4($9)
	sw	$0,8($9)
	.align	3
.L725:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L724:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L724
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L725
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,2048
	sw	$0,4($9)
	sw	$0,8($9)
	.align	3
.L731:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,8
	.align	3
.L730:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L730
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L731
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$24,$4,2048
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sw	$0,4($9)
	move	$12,$0
	sw	$0,8($9)
	.align	3
.L737:
	move	$11,$5
	move	$10,$6
	move	$3,$7
	daddiu	$15,$4,64
	.align	3
.L736:
	daddiu	$11,$11,1
	lbu	$2,0($4)
	daddiu	$10,$10,1
	lbu	$25,-1($11)
	daddiu	$4,$4,1
	daddiu	$3,$3,1
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	addu	$12,$2,$12
	sw	$12,0($9)
	lbu	$25,-1($10)
	lbu	$2,-1($4)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	addu	$13,$2,$13
	sw	$13,4($9)
	lbu	$25,-1($3)
	lbu	$2,-1($4)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	addu	$14,$2,$14
	bne	$15,$4,.L736
	sw	$14,8($9)

	move	$4,$15
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$24,$15,.L737
	daddu	$7,$7,$8

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,4096
	sw	$0,4($9)
	sw	$0,8($9)
	.align	3
.L743:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L742:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L742
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L743
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$24,$4,3072
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sw	$0,4($9)
	move	$12,$0
	sw	$0,8($9)
	.align	3
.L749:
	move	$11,$5
	move	$10,$6
	move	$3,$7
	daddiu	$15,$4,64
	.align	3
.L748:
	daddiu	$11,$11,1
	lbu	$2,0($4)
	daddiu	$10,$10,1
	lbu	$25,-1($11)
	daddiu	$4,$4,1
	daddiu	$3,$3,1
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	addu	$12,$2,$12
	sw	$12,0($9)
	lbu	$25,-1($10)
	lbu	$2,-1($4)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	addu	$13,$2,$13
	sw	$13,4($9)
	lbu	$25,-1($3)
	lbu	$2,-1($4)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	addu	$14,$2,$14
	bne	$15,$4,.L748
	sw	$14,8($9)

	move	$4,$15
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$24,$15,.L749
	daddu	$7,$7,$8

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,4096
	sw	$0,4($9)
	sw	$0,8($9)
	.align	3
.L755:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,48
	.align	3
.L754:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L754
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L755
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$24,$4,1024
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sw	$0,4($9)
	move	$12,$0
	sw	$0,8($9)
	.align	3
.L761:
	move	$11,$5
	move	$10,$6
	move	$3,$7
	daddiu	$15,$4,64
	.align	3
.L760:
	daddiu	$11,$11,1
	lbu	$2,0($4)
	daddiu	$10,$10,1
	lbu	$25,-1($11)
	daddiu	$4,$4,1
	daddiu	$3,$3,1
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	addu	$12,$2,$12
	sw	$12,0($9)
	lbu	$25,-1($10)
	lbu	$2,-1($4)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	addu	$13,$2,$13
	sw	$13,4($9)
	lbu	$25,-1($3)
	lbu	$2,-1($4)
	subu	$2,$2,$25
	sra	$25,$2,31
	xor	$2,$25,$2
	subu	$2,$2,$25
	addu	$14,$2,$14
	bne	$15,$4,.L760
	sw	$14,8($9)

	move	$4,$15
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$24,$15,.L761
	daddu	$7,$7,$8

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$15,$0
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sd	$16,0($sp)
	daddiu	$25,$4,4096
	sw	$0,4($9)
	sw	$0,8($9)
	.align	3
.L767:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L766:
	daddiu	$12,$12,1
	lbu	$2,0($3)
	daddiu	$11,$11,1
	lbu	$16,-1($12)
	daddiu	$3,$3,1
	daddiu	$10,$10,1
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$13,$2,$13
	sw	$13,0($9)
	lbu	$16,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$14,$2,$14
	sw	$14,4($9)
	lbu	$16,-1($10)
	lbu	$2,-1($3)
	subu	$2,$2,$16
	sra	$16,$2,31
	xor	$2,$16,$2
	subu	$2,$2,$16
	addu	$15,$2,$15
	bne	$24,$3,.L766
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L767
	daddu	$7,$7,$8

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,256
	move	$25,$0
	sd	$16,8($sp)
	move	$15,$0
	move	$16,$0
	sd	$19,32($sp)
	sd	$17,16($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
.L773:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,4
.L772:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$16,$2,$16
	bne	$3,$17,.L772
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L773
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,512
	move	$25,$0
	sd	$16,8($sp)
	move	$15,$0
	move	$16,$0
	sd	$19,32($sp)
	sd	$17,16($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L779:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,4
.L778:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$16,$2,$16
	bne	$3,$17,.L778
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L779
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,256
	move	$25,$0
	sd	$16,8($sp)
	move	$15,$0
	move	$16,$0
	sd	$19,32($sp)
	sd	$17,16($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
.L785:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,8
	.align	3
.L784:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$16,$2,$16
	bne	$3,$17,.L784
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L785
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,512
	move	$25,$0
	sd	$16,8($sp)
	move	$15,$0
	move	$16,$0
	sd	$19,32($sp)
	sd	$17,16($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L791:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,16
	.align	3
.L790:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$16,$2,$16
	bne	$3,$17,.L790
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L791
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,1024
	move	$25,$0
	sd	$16,8($sp)
	move	$15,$0
	move	$16,$0
	sd	$19,32($sp)
	sd	$17,16($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L797:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,8
	.align	3
.L796:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$16,$2,$16
	bne	$3,$17,.L796
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L797
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,768
	move	$25,$0
	sd	$16,8($sp)
	move	$15,$0
	move	$16,$0
	sd	$19,32($sp)
	sd	$17,16($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L803:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,16
	.align	3
.L802:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$16,$2,$16
	bne	$3,$17,.L802
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L803
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,1024
	move	$25,$0
	sd	$16,8($sp)
	move	$15,$0
	move	$16,$0
	sd	$19,32($sp)
	sd	$17,16($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L809:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,12
	.align	3
.L808:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$16,$2,$16
	bne	$3,$17,.L808
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L809
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,256
	move	$25,$0
	sd	$16,8($sp)
	move	$15,$0
	move	$16,$0
	sd	$19,32($sp)
	sd	$17,16($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
.L815:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,16
	.align	3
.L814:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$16,$2,$16
	bne	$3,$17,.L814
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L815
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,1024
	move	$25,$0
	sd	$16,8($sp)
	move	$15,$0
	move	$16,$0
	sd	$19,32($sp)
	sd	$17,16($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L821:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,4
.L820:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$16,$2,$16
	bne	$3,$17,.L820
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L821
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,1024
	move	$25,$0
	sd	$17,16($sp)
	move	$15,$0
	move	$17,$5
	sd	$16,8($sp)
	move	$16,$4
	move	$4,$0
	sd	$19,32($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L827:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,32
	.align	3
.L826:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$4,$2,$4
	bne	$3,$5,.L826
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L827
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,2048
	move	$25,$0
	sd	$17,16($sp)
	move	$15,$0
	move	$17,$5
	sd	$16,8($sp)
	move	$16,$4
	move	$4,$0
	sd	$19,32($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L833:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,16
	.align	3
.L832:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$4,$2,$4
	bne	$3,$5,.L832
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L833
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,1536
	move	$25,$0
	sd	$17,16($sp)
	move	$15,$0
	move	$17,$5
	sd	$16,8($sp)
	move	$16,$4
	move	$4,$0
	sd	$19,32($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L839:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,32
	.align	3
.L838:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$4,$2,$4
	bne	$3,$5,.L838
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L839
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,2048
	move	$25,$0
	sd	$17,16($sp)
	move	$15,$0
	move	$17,$5
	sd	$16,8($sp)
	move	$16,$4
	move	$4,$0
	sd	$19,32($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L845:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,24
	.align	3
.L844:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$4,$2,$4
	bne	$3,$5,.L844
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L845
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,512
	move	$25,$0
	sd	$16,8($sp)
	move	$15,$0
	move	$16,$0
	sd	$19,32($sp)
	sd	$17,16($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L851:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,32
	.align	3
.L850:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$16,$2,$16
	bne	$3,$17,.L850
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L851
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,2048
	move	$25,$0
	sd	$16,8($sp)
	move	$15,$0
	move	$16,$0
	sd	$19,32($sp)
	sd	$17,16($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L857:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,8
	.align	3
.L856:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$16,$2,$16
	bne	$3,$17,.L856
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L857
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$24,$0
	sw	$0,0($10)
	sd	$17,8($sp)
	daddiu	$17,$4,2048
	move	$25,$0
	sd	$16,0($sp)
	move	$15,$0
	move	$16,$5
	move	$14,$0
	sd	$18,16($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L863:
	move	$13,$16
	move	$12,$6
	move	$11,$7
	move	$3,$8
	daddiu	$5,$4,64
	.align	3
.L862:
	daddiu	$13,$13,1
	lbu	$2,0($4)
	daddiu	$12,$12,1
	lbu	$18,-1($13)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	daddiu	$3,$3,1
	subu	$2,$2,$18
	sra	$18,$2,31
	xor	$2,$18,$2
	subu	$2,$2,$18
	addu	$14,$2,$14
	sw	$14,0($10)
	lbu	$18,-1($12)
	lbu	$2,-1($4)
	subu	$2,$2,$18
	sra	$18,$2,31
	xor	$2,$18,$2
	subu	$2,$2,$18
	addu	$15,$2,$15
	sw	$15,4($10)
	lbu	$18,-1($11)
	lbu	$2,-1($4)
	subu	$2,$2,$18
	sra	$18,$2,31
	xor	$2,$18,$2
	subu	$2,$2,$18
	addu	$24,$2,$24
	sw	$24,8($10)
	lbu	$18,-1($3)
	lbu	$2,-1($4)
	subu	$2,$2,$18
	sra	$18,$2,31
	xor	$2,$18,$2
	subu	$2,$2,$18
	addu	$25,$2,$25
	bne	$5,$4,.L862
	sw	$25,12($10)

	move	$4,$5
	daddu	$16,$16,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$5,$17,.L863
	daddu	$8,$8,$9

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,4096
	move	$25,$0
	sd	$17,16($sp)
	move	$15,$0
	move	$17,$5
	sd	$16,8($sp)
	move	$16,$4
	move	$4,$0
	sd	$19,32($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L869:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,32
	.align	3
.L868:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$4,$2,$4
	bne	$3,$5,.L868
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L869
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$24,$0
	sw	$0,0($10)
	sd	$17,8($sp)
	daddiu	$17,$4,3072
	move	$25,$0
	sd	$16,0($sp)
	move	$15,$0
	move	$16,$5
	move	$14,$0
	sd	$18,16($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L875:
	move	$13,$16
	move	$12,$6
	move	$11,$7
	move	$3,$8
	daddiu	$5,$4,64
	.align	3
.L874:
	daddiu	$13,$13,1
	lbu	$2,0($4)
	daddiu	$12,$12,1
	lbu	$18,-1($13)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	daddiu	$3,$3,1
	subu	$2,$2,$18
	sra	$18,$2,31
	xor	$2,$18,$2
	subu	$2,$2,$18
	addu	$14,$2,$14
	sw	$14,0($10)
	lbu	$18,-1($12)
	lbu	$2,-1($4)
	subu	$2,$2,$18
	sra	$18,$2,31
	xor	$2,$18,$2
	subu	$2,$2,$18
	addu	$15,$2,$15
	sw	$15,4($10)
	lbu	$18,-1($11)
	lbu	$2,-1($4)
	subu	$2,$2,$18
	sra	$18,$2,31
	xor	$2,$18,$2
	subu	$2,$2,$18
	addu	$24,$2,$24
	sw	$24,8($10)
	lbu	$18,-1($3)
	lbu	$2,-1($4)
	subu	$2,$2,$18
	sra	$18,$2,31
	xor	$2,$18,$2
	subu	$2,$2,$18
	addu	$25,$2,$25
	bne	$5,$4,.L874
	sw	$25,12($10)

	move	$4,$5
	daddu	$16,$16,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$5,$17,.L875
	daddu	$8,$8,$9

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,4096
	move	$25,$0
	sd	$17,16($sp)
	move	$15,$0
	move	$17,$5
	sd	$16,8($sp)
	move	$16,$4
	move	$4,$0
	sd	$19,32($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L881:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,48
	.align	3
.L880:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$4,$2,$4
	bne	$3,$5,.L880
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L881
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$24,$0
	sw	$0,0($10)
	sd	$17,8($sp)
	daddiu	$17,$4,1024
	move	$25,$0
	sd	$16,0($sp)
	move	$15,$0
	move	$16,$5
	move	$14,$0
	sd	$18,16($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L887:
	move	$13,$16
	move	$12,$6
	move	$11,$7
	move	$3,$8
	daddiu	$5,$4,64
	.align	3
.L886:
	daddiu	$13,$13,1
	lbu	$2,0($4)
	daddiu	$12,$12,1
	lbu	$18,-1($13)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	daddiu	$3,$3,1
	subu	$2,$2,$18
	sra	$18,$2,31
	xor	$2,$18,$2
	subu	$2,$2,$18
	addu	$14,$2,$14
	sw	$14,0($10)
	lbu	$18,-1($12)
	lbu	$2,-1($4)
	subu	$2,$2,$18
	sra	$18,$2,31
	xor	$2,$18,$2
	subu	$2,$2,$18
	addu	$15,$2,$15
	sw	$15,4($10)
	lbu	$18,-1($11)
	lbu	$2,-1($4)
	subu	$2,$2,$18
	sra	$18,$2,31
	xor	$2,$18,$2
	subu	$2,$2,$18
	addu	$24,$2,$24
	sw	$24,8($10)
	lbu	$18,-1($3)
	lbu	$2,-1($4)
	subu	$2,$2,$18
	sra	$18,$2,31
	xor	$2,$18,$2
	subu	$2,$2,$18
	addu	$25,$2,$25
	bne	$5,$4,.L886
	sw	$25,12($10)

	move	$4,$5
	daddu	$16,$16,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$5,$17,.L887
	daddu	$8,$8,$9

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$24,$0
	sw	$0,0($10)
	sd	$18,24($sp)
	daddiu	$18,$4,4096
	move	$25,$0
	sd	$17,16($sp)
	move	$15,$0
	move	$17,$5
	sd	$16,8($sp)
	move	$16,$4
	move	$4,$0
	sd	$19,32($sp)
	sw	$0,4($10)
	sw	$0,8($10)
	sw	$0,12($10)
	.align	3
.L893:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,16
	.align	3
.L892:
	daddiu	$14,$14,1
	lbu	$2,0($3)
	daddiu	$13,$13,1
	lbu	$19,-1($14)
	daddiu	$3,$3,1
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$15,$2,$15
	sw	$15,0($10)
	lbu	$19,-1($13)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$24,$2,$24
	sw	$24,4($10)
	lbu	$19,-1($12)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$25,$2,$25
	sw	$25,8($10)
	lbu	$19,-1($11)
	lbu	$2,-1($3)
	subu	$2,$2,$19
	sra	$19,$2,31
	xor	$2,$19,$2
	subu	$2,$2,$19
	addu	$4,$2,$4
	bne	$3,$5,.L892
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L893
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi
	.align	2
	.align	3
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
	blez	$9,.L901
	move	$6,$0

	lw	$14,0($4)
	move	$2,$0
	move	$4,$0
	.align	3
.L900:
	lwu	$3,0($5)
	dlsa	$4,$4,$7,1
	addiu	$11,$6,1
	lhu	$12,0($4)
	daddiu	$5,$5,4
	dsubu	$3,$14,$3
	dsra	$4,$3,63
	xor	$3,$4,$3
	dsubu	$3,$3,$4
	sll	$3,$3,0
	addu	$3,$3,$12
	slt	$3,$3,$10
	beq	$3,$0,.L899
	dlsa	$13,$2,$8,1

	addiu	$2,$2,1
	sh	$6,0($13)
.L899:
	seh	$6,$11
	slt	$3,$6,$9
	bne	$3,$0,.L900
	move	$4,$6

	jr	$31
	nop

	.align	3
.L901:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii
	.align	2
	.align	3
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
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x1ILi8ELi8EEEiPiPjiPtPsii)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x1ILi8ELi8EEEiPiPjiPtPsii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x1ILi8ELi8EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x1ILi8ELi8EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x1ILi8ELi8EEEiPiPjiPtPsii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L910
	dlsa	$6,$6,$5,2

	daddiu	$sp,$sp,-16
	lw	$14,0($4)
	lw	$13,4($4)
	move	$12,$0
	move	$2,$0
	move	$4,$0
	sd	$16,0($sp)
	.align	3
.L909:
	dlsa	$11,$4,$7,1
	lwu	$3,0($5)
	addiu	$15,$12,1
	lwu	$4,0($6)
	daddiu	$5,$5,4
	daddiu	$6,$6,4
	lhu	$16,0($11)
	dsubu	$3,$14,$3
	dsubu	$4,$13,$4
	dsra	$25,$3,63
	dsra	$11,$4,63
	xor	$3,$25,$3
	xor	$4,$11,$4
	dsubu	$3,$3,$25
	dsubu	$4,$4,$11
	daddu	$3,$3,$4
	sll	$3,$3,0
	addu	$3,$3,$16
	slt	$3,$3,$10
	beq	$3,$0,.L908
	dlsa	$24,$2,$8,1

	addiu	$2,$2,1
	sh	$12,0($24)
.L908:
	seh	$12,$15
	slt	$3,$12,$9
	bne	$3,$0,.L909
	move	$4,$12

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L910:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii
	.align	2
	.align	3
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
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x2ILi4ELi8EEEiPiPjiPtPsii)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x2ILi4ELi8EEEiPiPjiPtPsii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x2ILi4ELi8EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x2ILi4ELi8EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x2ILi4ELi8EEEiPiPjiPtPsii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L922
	dsll	$11,$6,2

	daddiu	$sp,$sp,-80
	lw	$24,12($4)
	daddiu	$13,$11,32
	sd	$17,8($sp)
	move	$12,$0
	sd	$16,0($sp)
	daddu	$11,$5,$11
	daddu	$13,$5,$13
	lw	$17,0($4)
	move	$2,$0
	lw	$16,4($4)
	lw	$25,8($4)
	move	$4,$0
	sd	$fp,72($sp)
	sd	$23,56($sp)
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	.align	3
.L921:
	lwu	$3,0($5)
	dlsa	$4,$4,$7,1
	addiu	$14,$12,1
	lwu	$20,32($5)
	dlsa	$15,$2,$8,1
	daddiu	$5,$5,4
	lwu	$18,0($11)
	daddiu	$13,$13,4
	lwu	$6,-4($13)
	dsubu	$3,$17,$3
	dsubu	$20,$16,$20
	dsra	$fp,$3,63
	lhu	$19,0($4)
	dsra	$23,$20,63
	dsubu	$18,$25,$18
	dsra	$22,$18,63
	dsubu	$6,$24,$6
	xor	$4,$fp,$3
	xor	$20,$23,$20
	dsra	$21,$6,63
	dsubu	$4,$4,$fp
	dsubu	$20,$20,$23
	xor	$3,$22,$18
	daddu	$4,$4,$20
	dsubu	$3,$3,$22
	xor	$6,$21,$6
	daddu	$3,$4,$3
	dsubu	$6,$6,$21
	daddu	$3,$3,$6
	sll	$3,$3,0
	addu	$3,$3,$19
	slt	$3,$3,$10
	beq	$3,$0,.L920
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L920:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L921
	move	$4,$12

	ld	$fp,72($sp)
	ld	$23,56($sp)
	ld	$22,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.align	3
.L922:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii
	.align	2
	.align	3
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
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x2ILi16ELi8EEEiPiPjiPtPsii)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x2ILi16ELi8EEEiPiPjiPtPsii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x2ILi16ELi8EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x2ILi16ELi8EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x2ILi16ELi8EEEiPiPjiPtPsii
	.align	2
	.align	3
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
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x2ILi8ELi16EEEiPiPjiPtPsii)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x2ILi8ELi16EEEiPiPjiPtPsii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x2ILi8ELi16EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x2ILi8ELi16EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x2ILi8ELi16EEEiPiPjiPtPsii
	.align	2
	.align	3
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
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x1ILi16ELi12EEEiPiPjiPtPsii)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x1ILi16ELi12EEEiPiPjiPtPsii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x1ILi16ELi12EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x1ILi16ELi12EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x1ILi16ELi12EEEiPiPjiPtPsii
	.align	2
	.align	3
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
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x1ILi12ELi16EEEiPiPjiPtPsii)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x1ILi12ELi16EEEiPiPjiPtPsii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x1ILi12ELi16EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x1ILi12ELi16EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x1ILi12ELi16EEEiPiPjiPtPsii
	.align	2
	.align	3
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
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x1ILi16ELi4EEEiPiPjiPtPsii)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x1ILi16ELi4EEEiPiPjiPtPsii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x1ILi16ELi4EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x1ILi16ELi4EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x1ILi16ELi4EEEiPiPjiPtPsii
	.align	2
	.align	3
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
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x1ILi4ELi16EEEiPiPjiPtPsii)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x1ILi4ELi16EEEiPiPjiPtPsii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x1ILi4ELi16EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x1ILi4ELi16EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x1ILi4ELi16EEEiPiPjiPtPsii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L944
	dsll	$11,$6,2

	daddiu	$sp,$sp,-80
	lw	$24,12($4)
	daddiu	$13,$11,64
	sd	$17,8($sp)
	move	$12,$0
	sd	$16,0($sp)
	daddu	$11,$5,$11
	daddu	$13,$5,$13
	lw	$17,0($4)
	move	$2,$0
	lw	$16,4($4)
	lw	$25,8($4)
	move	$4,$0
	sd	$fp,72($sp)
	sd	$23,56($sp)
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	.align	3
.L943:
	lwu	$3,0($5)
	dlsa	$4,$4,$7,1
	addiu	$14,$12,1
	lwu	$20,64($5)
	dlsa	$15,$2,$8,1
	daddiu	$5,$5,4
	lwu	$18,0($11)
	daddiu	$13,$13,4
	lwu	$6,-4($13)
	dsubu	$3,$17,$3
	dsubu	$20,$16,$20
	dsra	$fp,$3,63
	lhu	$19,0($4)
	dsra	$23,$20,63
	dsubu	$18,$25,$18
	dsra	$22,$18,63
	dsubu	$6,$24,$6
	xor	$4,$fp,$3
	xor	$20,$23,$20
	dsra	$21,$6,63
	dsubu	$4,$4,$fp
	dsubu	$20,$20,$23
	xor	$3,$22,$18
	daddu	$4,$4,$20
	dsubu	$3,$3,$22
	xor	$6,$21,$6
	daddu	$3,$4,$3
	dsubu	$6,$6,$21
	daddu	$3,$3,$6
	sll	$3,$3,0
	addu	$3,$3,$19
	slt	$3,$3,$10
	beq	$3,$0,.L942
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L942:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L943
	move	$4,$12

	ld	$fp,72($sp)
	ld	$23,56($sp)
	ld	$22,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.align	3
.L944:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii
	.align	2
	.align	3
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
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x2ILi32ELi16EEEiPiPjiPtPsii)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x2ILi32ELi16EEEiPiPjiPtPsii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x2ILi32ELi16EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x2ILi32ELi16EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x2ILi32ELi16EEEiPiPjiPtPsii
	.align	2
	.align	3
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
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x2ILi16ELi32EEEiPiPjiPtPsii)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x2ILi16ELi32EEEiPiPjiPtPsii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x2ILi16ELi32EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x2ILi16ELi32EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x2ILi16ELi32EEEiPiPjiPtPsii
	.align	2
	.align	3
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
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x4ILi32ELi24EEEiPiPjiPtPsii)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x4ILi32ELi24EEEiPiPjiPtPsii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi32ELi24EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi32ELi24EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi32ELi24EEEiPiPjiPtPsii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x4ILi24ELi32EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x4ILi24ELi32EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x4ILi24ELi32EEEiPiPjiPtPsii:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L960
	dsll	$11,$6,2

	daddiu	$sp,$sp,-80
	lw	$24,12($4)
	daddiu	$13,$11,48
	sd	$17,8($sp)
	move	$12,$0
	sd	$16,0($sp)
	daddu	$11,$5,$11
	daddu	$13,$5,$13
	lw	$17,0($4)
	move	$2,$0
	lw	$16,4($4)
	lw	$25,8($4)
	move	$4,$0
	sd	$fp,72($sp)
	sd	$23,56($sp)
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	.align	3
.L959:
	lwu	$3,0($5)
	dlsa	$4,$4,$7,1
	addiu	$14,$12,1
	lwu	$20,48($5)
	dlsa	$15,$2,$8,1
	daddiu	$5,$5,4
	lwu	$18,0($11)
	daddiu	$13,$13,4
	lwu	$6,-4($13)
	dsubu	$3,$17,$3
	dsubu	$20,$16,$20
	dsra	$fp,$3,63
	lhu	$19,0($4)
	dsra	$23,$20,63
	dsubu	$18,$25,$18
	dsra	$22,$18,63
	dsubu	$6,$24,$6
	xor	$4,$fp,$3
	xor	$20,$23,$20
	dsra	$21,$6,63
	dsubu	$4,$4,$fp
	dsubu	$20,$20,$23
	xor	$3,$22,$18
	daddu	$4,$4,$20
	dsubu	$3,$3,$22
	xor	$6,$21,$6
	daddu	$3,$4,$3
	dsubu	$6,$6,$21
	daddu	$3,$3,$6
	sll	$3,$3,0
	addu	$3,$3,$19
	slt	$3,$3,$10
	beq	$3,$0,.L958
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L958:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L959
	move	$4,$12

	ld	$fp,72($sp)
	ld	$23,56($sp)
	ld	$22,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.align	3
.L960:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi24ELi32EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi24ELi32EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi24ELi32EEEiPiPjiPtPsii
	.align	2
	.align	3
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
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x4ILi32ELi8EEEiPiPjiPtPsii)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x4ILi32ELi8EEEiPiPjiPtPsii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi32ELi8EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi32ELi8EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi32ELi8EEEiPiPjiPtPsii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x4ILi8ELi32EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x4ILi8ELi32EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x4ILi8ELi32EEEiPiPjiPtPsii:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L972
	dsll	$11,$6,2

	daddiu	$sp,$sp,-80
	lw	$24,12($4)
	daddiu	$13,$11,16
	sd	$17,8($sp)
	move	$12,$0
	sd	$16,0($sp)
	daddu	$11,$5,$11
	daddu	$13,$5,$13
	lw	$17,0($4)
	move	$2,$0
	lw	$16,4($4)
	lw	$25,8($4)
	move	$4,$0
	sd	$fp,72($sp)
	sd	$23,56($sp)
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	.align	3
.L971:
	lwu	$3,0($5)
	dlsa	$4,$4,$7,1
	addiu	$14,$12,1
	lwu	$20,16($5)
	dlsa	$15,$2,$8,1
	daddiu	$5,$5,4
	lwu	$18,0($11)
	daddiu	$13,$13,4
	lwu	$6,-4($13)
	dsubu	$3,$17,$3
	dsubu	$20,$16,$20
	dsra	$fp,$3,63
	lhu	$19,0($4)
	dsra	$23,$20,63
	dsubu	$18,$25,$18
	dsra	$22,$18,63
	dsubu	$6,$24,$6
	xor	$4,$fp,$3
	xor	$20,$23,$20
	dsra	$21,$6,63
	dsubu	$4,$4,$fp
	dsubu	$20,$20,$23
	xor	$3,$22,$18
	daddu	$4,$4,$20
	dsubu	$3,$3,$22
	xor	$6,$21,$6
	daddu	$3,$4,$3
	dsubu	$6,$6,$21
	daddu	$3,$3,$6
	sll	$3,$3,0
	addu	$3,$3,$19
	slt	$3,$3,$10
	beq	$3,$0,.L970
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L970:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L971
	move	$4,$12

	ld	$fp,72($sp)
	ld	$23,56($sp)
	ld	$22,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.align	3
.L972:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi8ELi32EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi8ELi32EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi8ELi32EEEiPiPjiPtPsii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L982
	dsll	$11,$6,2

	daddiu	$sp,$sp,-80
	lw	$24,12($4)
	daddiu	$13,$11,128
	sd	$17,8($sp)
	move	$12,$0
	sd	$16,0($sp)
	daddu	$11,$5,$11
	daddu	$13,$5,$13
	lw	$17,0($4)
	move	$2,$0
	lw	$16,4($4)
	lw	$25,8($4)
	move	$4,$0
	sd	$fp,72($sp)
	sd	$23,56($sp)
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	.align	3
.L981:
	lwu	$3,0($5)
	dlsa	$4,$4,$7,1
	addiu	$14,$12,1
	lwu	$20,128($5)
	dlsa	$15,$2,$8,1
	daddiu	$5,$5,4
	lwu	$18,0($11)
	daddiu	$13,$13,4
	lwu	$6,-4($13)
	dsubu	$3,$17,$3
	dsubu	$20,$16,$20
	dsra	$fp,$3,63
	lhu	$19,0($4)
	dsra	$23,$20,63
	dsubu	$18,$25,$18
	dsra	$22,$18,63
	dsubu	$6,$24,$6
	xor	$4,$fp,$3
	xor	$20,$23,$20
	dsra	$21,$6,63
	dsubu	$4,$4,$fp
	dsubu	$20,$20,$23
	xor	$3,$22,$18
	daddu	$4,$4,$20
	dsubu	$3,$3,$22
	xor	$6,$21,$6
	daddu	$3,$4,$3
	dsubu	$6,$6,$21
	daddu	$3,$3,$6
	sll	$3,$3,0
	addu	$3,$3,$19
	slt	$3,$3,$10
	beq	$3,$0,.L980
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L980:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L981
	move	$4,$12

	ld	$fp,72($sp)
	ld	$23,56($sp)
	ld	$22,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.align	3
.L982:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii
	.align	2
	.align	3
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
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x2ILi64ELi32EEEiPiPjiPtPsii)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x2ILi64ELi32EEEiPiPjiPtPsii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x2ILi64ELi32EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x2ILi64ELi32EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x2ILi64ELi32EEEiPiPjiPtPsii
	.align	2
	.align	3
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
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x2ILi32ELi64EEEiPiPjiPtPsii)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x2ILi32ELi64EEEiPiPjiPtPsii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x2ILi32ELi64EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x2ILi32ELi64EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x2ILi32ELi64EEEiPiPjiPtPsii
	.align	2
	.align	3
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
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x4ILi64ELi48EEEiPiPjiPtPsii)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x4ILi64ELi48EEEiPiPjiPtPsii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi64ELi48EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi64ELi48EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi64ELi48EEEiPiPjiPtPsii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16ads_x4ILi48ELi64EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x4ILi48ELi64EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x4ILi48ELi64EEEiPiPjiPtPsii:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L998
	dsll	$11,$6,2

	daddiu	$sp,$sp,-80
	lw	$24,12($4)
	daddiu	$13,$11,96
	sd	$17,8($sp)
	move	$12,$0
	sd	$16,0($sp)
	daddu	$11,$5,$11
	daddu	$13,$5,$13
	lw	$17,0($4)
	move	$2,$0
	lw	$16,4($4)
	lw	$25,8($4)
	move	$4,$0
	sd	$fp,72($sp)
	sd	$23,56($sp)
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	.align	3
.L997:
	lwu	$3,0($5)
	dlsa	$4,$4,$7,1
	addiu	$14,$12,1
	lwu	$20,96($5)
	dlsa	$15,$2,$8,1
	daddiu	$5,$5,4
	lwu	$18,0($11)
	daddiu	$13,$13,4
	lwu	$6,-4($13)
	dsubu	$3,$17,$3
	dsubu	$20,$16,$20
	dsra	$fp,$3,63
	lhu	$19,0($4)
	dsra	$23,$20,63
	dsubu	$18,$25,$18
	dsra	$22,$18,63
	dsubu	$6,$24,$6
	xor	$4,$fp,$3
	xor	$20,$23,$20
	dsra	$21,$6,63
	dsubu	$4,$4,$fp
	dsubu	$20,$20,$23
	xor	$3,$22,$18
	daddu	$4,$4,$20
	dsubu	$3,$3,$22
	xor	$6,$21,$6
	daddu	$3,$4,$3
	dsubu	$6,$6,$21
	daddu	$3,$3,$6
	sll	$3,$3,0
	addu	$3,$3,$19
	slt	$3,$3,$10
	beq	$3,$0,.L996
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L996:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L997
	move	$4,$12

	ld	$fp,72($sp)
	ld	$23,56($sp)
	ld	$22,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.align	3
.L998:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi48ELi64EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi48ELi64EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi48ELi64EEEiPiPjiPtPsii
	.align	2
	.align	3
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
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x4ILi64ELi16EEEiPiPjiPtPsii)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x4ILi64ELi16EEEiPiPjiPtPsii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi64ELi16EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi64ELi16EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi64ELi16EEEiPiPjiPtPsii
	.align	2
	.align	3
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
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x4ILi16ELi64EEEiPiPjiPtPsii)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16ads_x4ILi16ELi64EEEiPiPjiPtPsii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16ads_x4ILi16ELi64EEEiPiPjiPtPsii
	.size	_ZN12_GLOBAL__N_16ads_x4ILi16ELi64EEEiPiPjiPtPsii, .-_ZN12_GLOBAL__N_16ads_x4ILi16ELi64EEEiPiPjiPtPsii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi4EEEvPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi4EEEvPhlPKhPKsll, @function
_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi4EEEvPhlPKhPKsll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$9,$9,1
	li	$15,4			# 0x4
	li	$14,255			# 0xff
.L1010:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,4
.L1009:
	daddiu	$11,$11,2
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lh	$12,-2($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	slt	$12,$2,256
	movz	$2,$14,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	bne	$13,$3,.L1009
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1010
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi4EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi4EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi4EEEvPhlPKhPKsll
	.align	2
	.align	3
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
.L1016:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1015:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1015
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1016
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl
	.align	2
	.align	3
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
.L1022:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,8
.L1021:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1021
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1022
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi4EEEvPslPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi4EEEvPslPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi4EEEvPslPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	dsll	$7,$7,1
	li	$10,4			# 0x4
.L1028:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1027:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1027
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1028
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi4EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi4EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi4EEEvPslPKsl
	.align	2
	.align	3
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
.L1034:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,8
.L1033:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1033
	sh	$3,-2($8)

	daddiu	$4,$4,8
	bne	$10,$4,.L1034
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi4EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi4EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi4EEEvPsPKsli
	.align	2
	.align	3
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
	dsll	$6,$6,1
	seh	$9,$9
	daddiu	$11,$4,32
.L1040:
	move	$3,$5
	move	$8,$4
	daddiu	$10,$5,8
.L1039:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$10,$3,.L1039
	sh	$2,-2($8)

	daddiu	$4,$4,8
	bne	$11,$4,.L1040
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi4EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi4EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi4EEEvPsPKsli
	.align	2
	.align	3
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
	daddiu	$9,$5,32
.L1046:
	move	$3,$4
	daddiu	$8,$5,8
.L1045:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1045
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1046
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi4EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi4EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi4EEEvPsPKsli
	.align	2
	.align	3
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
	dsll	$6,$6,1
	seh	$9,$9
	daddiu	$10,$5,32
.L1052:
	move	$3,$4
	daddiu	$8,$5,8
.L1051:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1051
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1052
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi4EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi4EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi4EEEvPsPKsli
	.align	2
	.align	3
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
	daddiu	$8,$4,16
.L1058:
	daddiu	$7,$4,4
	move	$2,$5
.L1057:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1057
	sb	$3,-1($4)

	bne	$4,$8,.L1058
	daddiu	$5,$5,1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19transposeILi4EEEvPhPKhl
	.size	_ZN12_GLOBAL__N_19transposeILi4EEEvPhPKhl, .-_ZN12_GLOBAL__N_19transposeILi4EEEvPhPKhl
	.align	2
	.align	3
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
	li	$8,4			# 0x4
	move	$6,$0
.L1064:
	move	$3,$4
	daddiu	$7,$4,8
.L1063:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1063
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1064
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi4EEEjPKsl
	.size	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi4EEEjPKsl, .-_ZN12_GLOBAL__N_113pixel_ssd_s_cILi4EEEjPKsl
	.align	2
	.align	3
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
.L1070:
	move	$2,$4
	daddiu	$7,$4,4
.L1069:
	lbu	$3,0($2)
	daddiu	$2,$2,1
	madd	$3,$3
	bne	$7,$2,.L1069
	addu	$6,$3,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1070
	daddu	$4,$4,$5

	dext	$6,$6,0,32
	mflo	$2
	dsll	$2,$2,32
	jr	$31
	daddu	$2,$2,$6

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19pixel_varILi4EEEmPKhl
	.size	_ZN12_GLOBAL__N_19pixel_varILi4EEEmPKhl, .-_ZN12_GLOBAL__N_19pixel_varILi4EEEmPKhl
	.align	2
	.align	3
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
	li	$12,4			# 0x4
	move	$9,$0
.L1076:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
.L1075:
	daddiu	$8,$8,2
	lh	$2,0($3)
	mtlo	$9
	lh	$10,-2($8)
	daddiu	$3,$3,2
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1075
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1076
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi4ELi4EssEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi4ELi4EssEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi4ELi4EssEEjPKT1_lPKT2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi8EEEvPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi8EEEvPhlPKhPKsll, @function
_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi8EEEvPhlPKhPKsll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$9,$9,1
	li	$15,8			# 0x8
	li	$14,255			# 0xff
	.align	3
.L1082:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L1081:
	daddiu	$11,$11,2
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lh	$12,-2($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	slt	$12,$2,256
	movz	$2,$14,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	bne	$13,$3,.L1081
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1082
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi8EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi8EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi8EEEvPhlPKhPKsll
	.align	2
	.align	3
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
	.align	3
.L1088:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L1087:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1087
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1088
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl
	.align	2
	.align	3
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
	.align	3
.L1094:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,16
	.align	3
.L1093:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1093
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1094
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi8EEEvPslPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi8EEEvPslPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi8EEEvPslPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	dsll	$7,$7,1
	li	$10,8			# 0x8
	.align	3
.L1100:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L1099:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1099
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1100
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi8EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi8EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi8EEEvPslPKsl
	.align	2
	.align	3
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
	.align	3
.L1106:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,16
	.align	3
.L1105:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1105
	sh	$3,-2($8)

	daddiu	$4,$4,16
	bne	$10,$4,.L1106
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi8EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi8EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi8EEEvPsPKsli
	.align	2
	.align	3
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
	dsll	$6,$6,1
	seh	$10,$10
	daddiu	$11,$4,128
	.align	3
.L1112:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,16
	.align	3
.L1111:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$10
	sra	$2,$2,$7
	bne	$9,$3,.L1111
	sh	$2,-2($8)

	daddiu	$4,$4,16
	bne	$11,$4,.L1112
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi8EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi8EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi8EEEvPsPKsli
	.align	2
	.align	3
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
	daddiu	$9,$5,128
	.align	3
.L1118:
	move	$3,$4
	daddiu	$8,$5,16
	.align	3
.L1117:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1117
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1118
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi8EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi8EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi8EEEvPsPKsli
	.align	2
	.align	3
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
	li	$9,1			# 0x1
	sll	$9,$9,$2
	dsll	$6,$6,1
	seh	$9,$9
	daddiu	$10,$5,128
	.align	3
.L1124:
	move	$3,$4
	daddiu	$8,$5,16
	.align	3
.L1123:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1123
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1124
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi8EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi8EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi8EEEvPsPKsli
	.align	2
	.align	3
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
	daddiu	$8,$4,64
	.align	3
.L1130:
	daddiu	$7,$4,8
	move	$2,$5
	.align	3
.L1129:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1129
	sb	$3,-1($4)

	bne	$4,$8,.L1130
	daddiu	$5,$5,1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19transposeILi8EEEvPhPKhl
	.size	_ZN12_GLOBAL__N_19transposeILi8EEEvPhPKhl, .-_ZN12_GLOBAL__N_19transposeILi8EEEvPhPKhl
	.align	2
	.align	3
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
	li	$8,8			# 0x8
	move	$6,$0
	.align	3
.L1136:
	move	$3,$4
	daddiu	$7,$4,16
	.align	3
.L1135:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1135
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1136
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi8EEEjPKsl
	.size	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi8EEEjPKsl, .-_ZN12_GLOBAL__N_113pixel_ssd_s_cILi8EEEjPKsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19pixel_varILi8EEEmPKhl
	.type	_ZN12_GLOBAL__N_19pixel_varILi8EEEmPKhl, @function
_ZN12_GLOBAL__N_19pixel_varILi8EEEmPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$8,8			# 0x8
	mtlo	$0
	move	$6,$0
	.align	3
.L1142:
	move	$3,$4
	daddiu	$7,$4,8
	.align	3
.L1141:
	lbu	$2,0($3)
	daddiu	$3,$3,1
	madd	$2,$2
	bne	$7,$3,.L1141
	addu	$6,$2,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1142
	daddu	$4,$4,$5

	dext	$6,$6,0,32
	mflo	$2
	dsll	$2,$2,32
	jr	$31
	daddu	$2,$2,$6

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19pixel_varILi8EEEmPKhl
	.size	_ZN12_GLOBAL__N_19pixel_varILi8EEEmPKhl, .-_ZN12_GLOBAL__N_19pixel_varILi8EEEmPKhl
	.align	2
	.align	3
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
	li	$12,8			# 0x8
	move	$9,$0
	.align	3
.L1148:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L1147:
	daddiu	$8,$8,2
	lh	$2,0($3)
	mtlo	$9
	lh	$10,-2($8)
	daddiu	$3,$3,2
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1147
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1148
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi8ELi8EssEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi8ELi8EssEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi8ELi8EssEEjPKT1_lPKT2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi16EEEvPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi16EEEvPhlPKhPKsll, @function
_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi16EEEvPhlPKhPKsll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$9,$9,1
	li	$15,16			# 0x10
	li	$14,255			# 0xff
	.align	3
.L1154:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L1153:
	daddiu	$11,$11,2
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lh	$12,-2($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	slt	$12,$2,256
	movz	$2,$14,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	bne	$13,$3,.L1153
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1154
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi16EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi16EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi16EEEvPhlPKhPKsll
	.align	2
	.align	3
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
	.align	3
.L1160:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L1159:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1159
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1160
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl
	.align	2
	.align	3
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
	.align	3
.L1166:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,32
	.align	3
.L1165:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1165
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1166
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi16EEEvPslPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi16EEEvPslPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi16EEEvPslPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	dsll	$7,$7,1
	li	$10,16			# 0x10
	.align	3
.L1172:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L1171:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1171
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1172
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi16EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi16EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi16EEEvPslPKsl
	.align	2
	.align	3
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
	.align	3
.L1178:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,32
	.align	3
.L1177:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1177
	sh	$3,-2($8)

	daddiu	$4,$4,32
	bne	$10,$4,.L1178
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi16EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi16EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi16EEEvPsPKsli
	.align	2
	.align	3
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
	dsll	$6,$6,1
	seh	$10,$10
	daddiu	$11,$4,512
	.align	3
.L1184:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,32
	.align	3
.L1183:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$10
	sra	$2,$2,$7
	bne	$9,$3,.L1183
	sh	$2,-2($8)

	daddiu	$4,$4,32
	bne	$11,$4,.L1184
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi16EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi16EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi16EEEvPsPKsli
	.align	2
	.align	3
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
	daddiu	$9,$5,512
	.align	3
.L1190:
	move	$3,$4
	daddiu	$8,$5,32
	.align	3
.L1189:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1189
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1190
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi16EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi16EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi16EEEvPsPKsli
	.align	2
	.align	3
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
	li	$9,1			# 0x1
	sll	$9,$9,$2
	dsll	$6,$6,1
	seh	$9,$9
	daddiu	$10,$5,512
	.align	3
.L1196:
	move	$3,$4
	daddiu	$8,$5,32
	.align	3
.L1195:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1195
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1196
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi16EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi16EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi16EEEvPsPKsli
	.align	2
	.align	3
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
	daddiu	$8,$4,256
	.align	3
.L1202:
	daddiu	$7,$4,16
	move	$2,$5
	.align	3
.L1201:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1201
	sb	$3,-1($4)

	bne	$4,$8,.L1202
	daddiu	$5,$5,1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19transposeILi16EEEvPhPKhl
	.size	_ZN12_GLOBAL__N_19transposeILi16EEEvPhPKhl, .-_ZN12_GLOBAL__N_19transposeILi16EEEvPhPKhl
	.align	2
	.align	3
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
	li	$8,16			# 0x10
	move	$6,$0
	.align	3
.L1208:
	move	$3,$4
	daddiu	$7,$4,32
	.align	3
.L1207:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1207
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1208
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi16EEEjPKsl
	.size	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi16EEEjPKsl, .-_ZN12_GLOBAL__N_113pixel_ssd_s_cILi16EEEjPKsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19pixel_varILi16EEEmPKhl
	.type	_ZN12_GLOBAL__N_19pixel_varILi16EEEmPKhl, @function
_ZN12_GLOBAL__N_19pixel_varILi16EEEmPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$8,16			# 0x10
	mtlo	$0
	move	$6,$0
	.align	3
.L1214:
	move	$3,$4
	daddiu	$7,$4,16
	.align	3
.L1213:
	lbu	$2,0($3)
	daddiu	$3,$3,1
	madd	$2,$2
	bne	$7,$3,.L1213
	addu	$6,$2,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1214
	daddu	$4,$4,$5

	mflo	$2
	dext	$6,$6,0,32
	dsll	$2,$2,32
	jr	$31
	daddu	$2,$2,$6

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19pixel_varILi16EEEmPKhl
	.size	_ZN12_GLOBAL__N_19pixel_varILi16EEEmPKhl, .-_ZN12_GLOBAL__N_19pixel_varILi16EEEmPKhl
	.align	2
	.align	3
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
	li	$12,16			# 0x10
	move	$9,$0
	.align	3
.L1220:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L1219:
	daddiu	$8,$8,2
	lh	$2,0($3)
	mtlo	$9
	lh	$10,-2($8)
	daddiu	$3,$3,2
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1219
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1220
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi16ELi16EssEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi16ELi16EssEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi16ELi16EssEEjPKT1_lPKT2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi32EEEvPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi32EEEvPhlPKhPKsll, @function
_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi32EEEvPhlPKhPKsll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$9,$9,1
	li	$15,32			# 0x20
	li	$14,255			# 0xff
	.align	3
.L1226:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L1225:
	daddiu	$11,$11,2
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lh	$12,-2($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	slt	$12,$2,256
	movz	$2,$14,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	bne	$13,$3,.L1225
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1226
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi32EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi32EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi32EEEvPhlPKhPKsll
	.align	2
	.align	3
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
	.align	3
.L1232:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L1231:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1231
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1232
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl
	.align	2
	.align	3
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
	.align	3
.L1238:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,64
	.align	3
.L1237:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1237
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1238
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi32EEEvPslPKsl
	.type	_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi32EEEvPslPKsl, @function
_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi32EEEvPslPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	dsll	$7,$7,1
	li	$10,32			# 0x20
	.align	3
.L1244:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L1243:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1243
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1244
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi32EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi32EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi32EEEvPslPKsl
	.align	2
	.align	3
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
	.align	3
.L1250:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,64
	.align	3
.L1249:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1249
	sh	$3,-2($8)

	daddiu	$4,$4,64
	bne	$10,$4,.L1250
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi32EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi32EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi32EEEvPsPKsli
	.align	2
	.align	3
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
	dsll	$6,$6,1
	seh	$10,$10
	daddiu	$11,$4,2048
	.align	3
.L1256:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,64
	.align	3
.L1255:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$10
	sra	$2,$2,$7
	bne	$9,$3,.L1255
	sh	$2,-2($8)

	daddiu	$4,$4,64
	bne	$11,$4,.L1256
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi32EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi32EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi32EEEvPsPKsli
	.align	2
	.align	3
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
	daddiu	$9,$5,2048
	.align	3
.L1262:
	move	$3,$4
	daddiu	$8,$5,64
	.align	3
.L1261:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1261
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1262
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi32EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi32EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi32EEEvPsPKsli
	.align	2
	.align	3
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
	li	$9,1			# 0x1
	sll	$9,$9,$2
	dsll	$6,$6,1
	seh	$9,$9
	daddiu	$10,$5,2048
	.align	3
.L1268:
	move	$3,$4
	daddiu	$8,$5,64
	.align	3
.L1267:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1267
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1268
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi32EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi32EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi32EEEvPsPKsli
	.align	2
	.align	3
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
	daddiu	$8,$4,1024
	.align	3
.L1274:
	daddiu	$7,$4,32
	move	$2,$5
	.align	3
.L1273:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1273
	sb	$3,-1($4)

	bne	$4,$8,.L1274
	daddiu	$5,$5,1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19transposeILi32EEEvPhPKhl
	.size	_ZN12_GLOBAL__N_19transposeILi32EEEvPhPKhl, .-_ZN12_GLOBAL__N_19transposeILi32EEEvPhPKhl
	.align	2
	.align	3
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
	li	$8,32			# 0x20
	move	$6,$0
	.align	3
.L1280:
	move	$3,$4
	daddiu	$7,$4,64
	.align	3
.L1279:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1279
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1280
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi32EEEjPKsl
	.size	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi32EEEjPKsl, .-_ZN12_GLOBAL__N_113pixel_ssd_s_cILi32EEEjPKsl
	.align	2
	.align	3
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
	.align	3
.L1286:
	move	$3,$4
	daddiu	$7,$4,32
	.align	3
.L1285:
	lbu	$2,0($3)
	daddiu	$3,$3,1
	madd	$2,$2
	bne	$7,$3,.L1285
	addu	$6,$2,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1286
	daddu	$4,$4,$5

	mflo	$2
	dext	$6,$6,0,32
	dsll	$2,$2,32
	jr	$31
	daddu	$2,$2,$6

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19pixel_varILi32EEEmPKhl
	.size	_ZN12_GLOBAL__N_19pixel_varILi32EEEmPKhl, .-_ZN12_GLOBAL__N_19pixel_varILi32EEEmPKhl
	.align	2
	.align	3
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
	li	$12,32			# 0x20
	move	$9,$0
	.align	3
.L1292:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L1291:
	daddiu	$8,$8,2
	lh	$2,0($3)
	mtlo	$9
	lh	$10,-2($8)
	daddiu	$3,$3,2
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1291
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1292
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi32ELi32EssEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi32ELi32EssEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi32ELi32EssEEjPKT1_lPKT2_l
	.align	2
	.align	3
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
	.align	3
.L1298:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L1297:
	daddiu	$11,$11,2
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lh	$12,-2($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	slt	$12,$2,256
	movz	$2,$14,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	bne	$13,$3,.L1297
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1298
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi64ELi64EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi64ELi64EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi64ELi64EEEvPhlPKhPKsll
	.align	2
	.align	3
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
	.align	3
.L1304:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,128
	.align	3
.L1303:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1303
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1304
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi64ELi64EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi64ELi64EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi64ELi64EEEvPhlPKsl
	.align	2
	.align	3
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
	.align	3
.L1310:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,128
	.align	3
.L1309:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1309
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1310
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi64ELi64EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi64ELi64EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi64ELi64EEEvPslPKhl
	.align	2
	.align	3
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
	.align	3
.L1316:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,128
	.align	3
.L1315:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1315
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1316
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi64ELi64EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi64ELi64EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi64ELi64EEEvPslPKsl
	.align	2
	.align	3
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
	.align	3
.L1322:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,128
	.align	3
.L1321:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1321
	sh	$3,-2($8)

	daddiu	$4,$4,128
	bne	$10,$4,.L1322
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi64EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi64EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi64EEEvPsPKsli
	.align	2
	.align	3
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
	dsll	$6,$6,1
	seh	$10,$10
	daddiu	$11,$4,8192
	.align	3
.L1328:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,128
	.align	3
.L1327:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$10
	sra	$2,$2,$7
	bne	$9,$3,.L1327
	sh	$2,-2($8)

	daddiu	$4,$4,128
	bne	$11,$4,.L1328
	daddu	$5,$5,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi64EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi64EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy2Dto1D_shrILi64EEEvPsPKsli
	.align	2
	.align	3
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
	daddiu	$9,$5,8192
	.align	3
.L1334:
	move	$3,$4
	daddiu	$8,$5,128
	.align	3
.L1333:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1333
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1334
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi64EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi64EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shlILi64EEEvPsPKsli
	.align	2
	.align	3
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
	li	$9,1			# 0x1
	sll	$9,$9,$2
	dsll	$6,$6,1
	seh	$9,$9
	daddiu	$10,$5,8192
	.align	3
.L1340:
	move	$3,$4
	daddiu	$8,$5,128
	.align	3
.L1339:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1339
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1340
	daddu	$4,$4,$6

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi64EEEvPsPKsli
	.size	_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi64EEEvPsPKsli, .-_ZN12_GLOBAL__N_113cpy1Dto2D_shrILi64EEEvPsPKsli
	.align	2
	.align	3
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
	daddiu	$8,$4,4096
	.align	3
.L1346:
	daddiu	$7,$4,64
	move	$2,$5
	.align	3
.L1345:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1345
	sb	$3,-1($4)

	bne	$4,$8,.L1346
	daddiu	$5,$5,1

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19transposeILi64EEEvPhPKhl
	.size	_ZN12_GLOBAL__N_19transposeILi64EEEvPhPKhl, .-_ZN12_GLOBAL__N_19transposeILi64EEEvPhPKhl
	.align	2
	.align	3
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
	li	$8,64			# 0x40
	move	$6,$0
	.align	3
.L1352:
	move	$3,$4
	daddiu	$7,$4,128
	.align	3
.L1351:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1351
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1352
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi64EEEjPKsl
	.size	_ZN12_GLOBAL__N_113pixel_ssd_s_cILi64EEEjPKsl, .-_ZN12_GLOBAL__N_113pixel_ssd_s_cILi64EEEjPKsl
	.align	2
	.align	3
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
	.align	3
.L1358:
	move	$3,$4
	daddiu	$7,$4,64
	.align	3
.L1357:
	lbu	$2,0($3)
	daddiu	$3,$3,1
	madd	$2,$2
	bne	$7,$3,.L1357
	addu	$6,$2,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1358
	daddu	$4,$4,$5

	mflo	$2
	dext	$6,$6,0,32
	dsll	$2,$2,32
	jr	$31
	daddu	$2,$2,$6

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19pixel_varILi64EEEmPKhl
	.size	_ZN12_GLOBAL__N_19pixel_varILi64EEEmPKhl, .-_ZN12_GLOBAL__N_19pixel_varILi64EEEmPKhl
	.align	2
	.align	3
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
	li	$12,64			# 0x40
	move	$9,$0
	.align	3
.L1364:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,128
	.align	3
.L1363:
	daddiu	$8,$8,2
	lh	$2,0($3)
	mtlo	$9
	lh	$10,-2($8)
	daddiu	$3,$3,2
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1363
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1364
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi64ELi64EssEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi64ELi64EssEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi64ELi64EssEEjPKT1_lPKT2_l
	.align	2
	.align	3
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
	.align	3
.L1370:
	daddiu	$3,$4,128
	move	$2,$4
	.align	3
.L1369:
	sh	$6,0($2)
	daddiu	$2,$2,2
	bne	$2,$3,.L1369
	nop

	addiu	$7,$7,-1
	bne	$7,$0,.L1370
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113blockfill_s_cILi64EEEvPsls
	.size	_ZN12_GLOBAL__N_113blockfill_s_cILi64EEEvPsls, .-_ZN12_GLOBAL__N_113blockfill_s_cILi64EEEvPsls
	.align	2
	.align	3
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
	.align	3
.L1376:
	move	$2,$4
	move	$9,$5
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L1375:
	daddiu	$9,$9,1
	lbu	$3,0($2)
	daddiu	$8,$8,2
	lbu	$10,-1($9)
	daddiu	$2,$2,1
	subu	$3,$3,$10
	bne	$11,$2,.L1375
	sh	$3,-2($8)

	addiu	$12,$12,-1
	daddu	$4,$4,$7
	daddu	$6,$6,$13
	bne	$12,$0,.L1376
	daddu	$5,$5,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111getResidualILi64EEEvPKhS2_Psl
	.size	_ZN12_GLOBAL__N_111getResidualILi64EEEvPKhS2_Psl, .-_ZN12_GLOBAL__N_111getResidualILi64EEEvPKhS2_Psl
	.align	2
	.align	3
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
	li	$10,2			# 0x2
	li	$3,255			# 0xff
	li	$12,1			# 0x1
.L1381:
	lh	$11,0($5)
	lh	$2,0($4)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($6)
	lh	$11,2($5)
	daddu	$5,$5,$8
	lh	$2,2($4)
	daddu	$4,$4,$7
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($6)
	bne	$10,$12,.L1382
	daddu	$6,$6,$9

	jr	$31
	nop

	.align	3
.L1382:
	b	.L1381
	li	$10,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi2ELi2EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi2ELi2EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi2ELi2EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	daddu	$7,$6,$7
	daddu	$5,$4,$5
	sb	$2,0($4)
	lbu	$2,1($6)
	sb	$2,1($4)
	lbu	$2,0($7)
	sb	$2,0($5)
	lbu	$2,1($7)
	jr	$31
	sb	$2,1($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi2EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi2EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi2EEEvPhlPKhl
	.align	2
	.align	3
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
.L1389:
	lh	$11,0($5)
	addiu	$3,$3,-1
	lh	$2,0($4)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($6)
	lh	$11,2($5)
	daddu	$5,$5,$8
	lh	$2,2($4)
	daddu	$4,$4,$7
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($6)
	bne	$3,$0,.L1389
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi2ELi4EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi2ELi4EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi2ELi4EEEvPKsS2_Phlll
	.align	2
	.align	3
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
.L1393:
	lbu	$3,0($6)
	addiu	$2,$2,-1
	sb	$3,0($4)
	lbu	$3,1($6)
	daddu	$6,$6,$7
	sb	$3,1($4)
	bne	$2,$0,.L1393
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$11,1			# 0x1
.L1397:
	lh	$12,0($4)
	lh	$2,0($5)
	addu	$2,$2,$12
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$12,$2,256
	movz	$2,$3,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	sb	$2,0($6)
	lh	$12,2($4)
	lh	$2,2($5)
	addu	$2,$2,$12
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$12,$2,256
	movz	$2,$3,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	sb	$2,1($6)
	lh	$12,4($5)
	lh	$2,4($4)
	addu	$2,$2,$12
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$12,$2,256
	movz	$2,$3,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	sb	$2,2($6)
	lh	$12,6($5)
	daddu	$5,$5,$8
	lh	$2,6($4)
	daddu	$4,$4,$7
	addu	$2,$2,$12
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$12,$2,256
	movz	$2,$3,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	sb	$2,3($6)
	bne	$10,$11,.L1398
	daddu	$6,$6,$9

	jr	$31
	nop

	.align	3
.L1398:
	b	.L1397
	li	$10,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi4ELi2EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi4ELi2EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi4ELi2EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	move	$3,$4
	daddiu	$9,$6,4
	move	$2,$6
.L1403:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$9,$2,.L1403
	sb	$8,-1($3)

	daddiu	$2,$7,4
	daddu	$5,$4,$5
	daddu	$7,$6,$7
	daddu	$6,$6,$2
.L1404:
	lbu	$2,0($7)
	daddiu	$5,$5,1
	daddiu	$7,$7,1
	bne	$6,$7,.L1404
	sb	$2,-1($5)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi2EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi2EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi2EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L1410:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L1409:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L1409
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1410
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi8ELi6EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi8ELi6EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi8ELi6EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	.align	3
.L1416:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L1415:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1415
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1416
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi6EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi6EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi6EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L1422:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,12
.L1421:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L1421
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1422
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi6ELi8EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi6ELi8EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi6ELi8EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$10,8			# 0x8
	.align	3
.L1428:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,6
	.align	3
.L1427:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1427
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1428
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi8EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi8EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi8EEEvPhlPKhl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll
	.type	_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll, @function
_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	dsll	$7,$7,1
	dsll	$8,$8,1
	li	$15,2			# 0x2
	li	$12,255			# 0xff
	li	$24,1			# 0x1
.L1434:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L1433:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L1433
	sb	$2,-1($10)

	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$24,.L1435
	daddu	$6,$6,$9

	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1435:
	b	.L1434
	li	$15,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	move	$3,$4
	daddiu	$9,$6,8
	move	$2,$6
	.align	3
.L1439:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$9,$2,.L1439
	sb	$8,-1($3)

	daddiu	$2,$7,8
	daddu	$5,$4,$5
	daddu	$7,$6,$7
	daddu	$6,$6,$2
	.align	3
.L1440:
	lbu	$2,0($7)
	daddiu	$5,$5,1
	daddiu	$7,$7,1
	bne	$6,$7,.L1440
	sb	$2,-1($5)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi2EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi2EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi2EEEvPhlPKhl
	.align	2
	.align	3
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
	.align	3
.L1445:
	lh	$11,0($5)
	addiu	$3,$3,-1
	lh	$2,0($4)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($6)
	lh	$11,2($5)
	daddu	$5,$5,$8
	lh	$2,2($4)
	daddu	$4,$4,$7
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($6)
	bne	$3,$0,.L1445
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi2ELi8EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi2ELi8EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi2ELi8EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	.align	3
.L1449:
	lbu	$3,0($6)
	addiu	$2,$2,-1
	sb	$3,0($4)
	lbu	$3,1($6)
	daddu	$6,$6,$7
	sb	$3,1($4)
	bne	$2,$0,.L1449
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl
	.align	2
	.align	3
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
	dlsa	$7,$7,$6,1
	daddu	$5,$4,$5
	sb	$2,0($4)
	lhu	$2,2($6)
	sb	$2,1($4)
	lhu	$2,0($7)
	sb	$2,0($5)
	lhu	$2,2($7)
	jr	$31
	sb	$2,1($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi2EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi2EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi2EEEvPhlPKsl
	.align	2
	.align	3
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
	daddu	$7,$6,$7
	dlsa	$5,$5,$4,1
	sh	$2,0($4)
	lbu	$2,1($6)
	sh	$2,2($4)
	lbu	$2,0($7)
	sh	$2,0($5)
	lbu	$2,1($7)
	jr	$31
	sh	$2,2($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi2EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi2EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi2EEEvPslPKhl
	.align	2
	.align	3
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
	dlsa	$7,$7,$6,1
	dlsa	$5,$5,$4,1
	sh	$2,0($4)
	lh	$2,2($6)
	sh	$2,2($4)
	lh	$2,0($7)
	sh	$2,0($5)
	lh	$2,2($7)
	jr	$31
	sh	$2,2($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi2EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi2EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi2EEEvPslPKsl
	.align	2
	.align	3
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
	li	$11,2			# 0x2
	li	$3,255			# 0xff
	li	$12,1			# 0x1
.L1459:
	lh	$10,0($7)
	lbu	$2,0($6)
	addu	$2,$2,$10
	slt	$10,$2,256
	movz	$2,$3,$10
	slt	$10,$2,0
	movn	$2,$0,$10
	sb	$2,0($4)
	lh	$10,2($7)
	daddu	$7,$7,$9
	lbu	$2,1($6)
	daddu	$6,$6,$8
	addu	$2,$2,$10
	slt	$10,$2,256
	movz	$2,$3,$10
	slt	$10,$2,0
	movn	$2,$0,$10
	sb	$2,1($4)
	bne	$11,$12,.L1460
	daddu	$4,$4,$5

	jr	$31
	nop

	.align	3
.L1460:
	b	.L1459
	li	$11,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll
	.align	2
	.align	3
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
	daddu	$5,$4,$5
	daddu	$7,$6,$7
	lbu	$2,0($4)
	lbu	$8,0($6)
	lbu	$3,1($5)
	lbu	$10,1($7)
	subu	$2,$2,$8
	lbu	$8,1($4)
	gsmultu	$9,$2,$2
	lbu	$2,1($6)
	subu	$3,$3,$10
	lbu	$4,0($5)
	gsmultu	$5,$3,$3
	lbu	$3,0($7)
	subu	$2,$8,$2
	subu	$3,$4,$3
	mul	$4,$2,$2
	addu	$2,$4,$9
	mul	$4,$3,$3
	addu	$3,$4,$5
	jr	$31
	addu	$2,$2,$3

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_18sse_pp_aILi2ELi2EEEjPKhlS2_l
	.size	_ZN12_GLOBAL__N_18sse_pp_aILi2ELi2EEEjPKhlS2_l, .-_ZN12_GLOBAL__N_18sse_pp_aILi2ELi2EEEjPKhlS2_l
	.align	2
	.align	3
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
	lbu	$3,0($7)
	daddu	$8,$6,$8
	daddu	$9,$7,$9
	lbu	$2,0($6)
	dlsa	$5,$5,$4,1
	subu	$2,$2,$3
	sh	$2,0($4)
	lbu	$3,1($7)
	lbu	$2,1($6)
	subu	$2,$2,$3
	sh	$2,2($4)
	lbu	$3,0($9)
	lbu	$2,0($8)
	subu	$2,$2,$3
	sh	$2,0($5)
	lbu	$2,1($8)
	lbu	$3,1($9)
	subu	$2,$2,$3
	jr	$31
	sh	$2,2($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi2EEEvPslPKhS3_ll
	.size	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi2EEEvPslPKhS3_ll, .-_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi2EEEvPslPKhS3_ll
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L1470:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L1469:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L1469
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1470
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi8ELi12EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi8ELi12EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi8ELi12EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$10,12			# 0xc
	.align	3
.L1476:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L1475:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1475
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1476
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi12EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi12EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi12EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L1482:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,12
.L1481:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L1481
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1482
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi6ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi6ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi6ELi16EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$10,16			# 0x10
	.align	3
.L1488:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,6
	.align	3
.L1487:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1487
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1488
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi16EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi16EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi16EEEvPhlPKhl
	.align	2
	.align	3
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
	.align	3
.L1493:
	lh	$11,0($5)
	addiu	$3,$3,-1
	lh	$2,0($4)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($6)
	lh	$11,2($5)
	daddu	$5,$5,$8
	lh	$2,2($4)
	daddu	$4,$4,$7
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($6)
	bne	$3,$0,.L1493
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi2ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi2ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi2ELi16EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	.align	3
.L1497:
	lbu	$3,0($6)
	addiu	$2,$2,-1
	sb	$3,0($4)
	lbu	$3,1($6)
	daddu	$6,$6,$7
	sb	$3,1($4)
	bne	$2,$0,.L1497
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi16EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi16EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi16EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L1502:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L1501:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L1501
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1502
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi16ELi24EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi16ELi24EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi16ELi24EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$10,24			# 0x18
	.align	3
.L1508:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L1507:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1507
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1508
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi24EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi24EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi24EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L1514:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,24
	.align	3
.L1513:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L1513
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1514
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi12ELi32EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi12ELi32EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi12ELi32EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$10,32			# 0x20
	.align	3
.L1520:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,12
	.align	3
.L1519:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1519
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1520
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi32EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi32EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi32EEEvPhlPKhl
	.align	2
	.align	3
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
	.align	3
.L1525:
	lh	$11,0($4)
	addiu	$10,$10,-1
	lh	$2,0($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($6)
	lh	$11,2($4)
	lh	$2,2($5)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($6)
	lh	$11,4($5)
	lh	$2,4($4)
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,2($6)
	lh	$11,6($5)
	daddu	$5,$5,$8
	lh	$2,6($4)
	daddu	$4,$4,$7
	addu	$2,$2,$11
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$11,$2,256
	movz	$2,$3,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,3($6)
	bne	$10,$0,.L1525
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi4ELi32EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi4ELi32EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi4ELi32EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$10,32			# 0x20
	.align	3
.L1530:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L1529:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1529
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1530
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi32EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi32EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi32EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L1536:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L1535:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L1535
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1536
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi32ELi48EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi32ELi48EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi32ELi48EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$10,48			# 0x30
	.align	3
.L1542:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L1541:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1541
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1542
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi48EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi48EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi48EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L1548:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,48
	.align	3
.L1547:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L1547
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1548
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi24ELi64EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi24ELi64EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi24ELi64EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$10,64			# 0x40
	.align	3
.L1554:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,24
	.align	3
.L1553:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1553
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1554
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi64EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi64EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi64EEEvPhlPKhl
	.align	2
	.align	3
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
	li	$12,255			# 0xff
	.align	3
.L1560:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L1559:
	daddiu	$11,$11,4
	lh	$2,0($3)
	daddiu	$10,$10,2
	lh	$13,-4($11)
	daddiu	$3,$3,4
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,-2($10)
	lh	$13,-2($11)
	lh	$2,-2($3)
	addu	$2,$2,$13
	addiu	$2,$2,16448
	sra	$2,$2,7
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L1559
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1560
	daddu	$6,$6,$9

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16addAvgILi8ELi64EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi8ELi64EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi8ELi64EEEvPKsS2_Phlll
	.align	2
	.align	3
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
	li	$10,64			# 0x40
	.align	3
.L1566:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L1565:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1565
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1566
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi64EEEvPhlPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi64EEEvPhlPKhl, .-_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi64EEEvPhlPKhl
	.align	2
	.align	3
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
	move	$10,$0
.L1571:
	lbu	$8,1($6)
	addiu	$9,$9,-1
	lbu	$2,1($4)
	lbu	$3,0($4)
	daddu	$4,$4,$5
	lbu	$11,0($6)
	daddu	$6,$6,$7
	subu	$2,$2,$8
	gsmultu	$8,$2,$2
	subu	$2,$3,$11
	mul	$3,$2,$2
	addu	$2,$3,$8
	addu	$2,$2,$10
	bne	$9,$0,.L1571
	move	$10,$2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_18sse_pp_aILi2ELi4EEEjPKhlS2_l
	.size	_ZN12_GLOBAL__N_18sse_pp_aILi2ELi4EEEjPKhlS2_l, .-_ZN12_GLOBAL__N_18sse_pp_aILi2ELi4EEEjPKhlS2_l
	.align	2
	.align	3
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
.L1575:
	lhu	$3,0($6)
	addiu	$2,$2,-1
	sb	$3,0($4)
	lhu	$3,2($6)
	daddu	$6,$6,$7
	sb	$3,1($4)
	bne	$2,$0,.L1575
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi4EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi4EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi4EEEvPhlPKsl
	.align	2
	.align	3
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
.L1579:
	lbu	$3,0($6)
	addiu	$2,$2,-1
	sh	$3,0($4)
	lbu	$3,1($6)
	daddu	$6,$6,$7
	sh	$3,2($4)
	bne	$2,$0,.L1579
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi4EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi4EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi4EEEvPslPKhl
	.align	2
	.align	3
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
.L1583:
	lh	$3,0($6)
	addiu	$2,$2,-1
	sh	$3,0($4)
	lh	$3,2($6)
	daddu	$6,$6,$7
	sh	$3,2($4)
	bne	$2,$0,.L1583
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi4EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi4EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi4EEEvPslPKsl
	.align	2
	.align	3
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
.L1587:
	lbu	$10,0($7)
	addiu	$3,$3,-1
	lbu	$2,0($6)
	subu	$2,$2,$10
	sh	$2,0($4)
	lbu	$2,1($6)
	daddu	$6,$6,$8
	lbu	$10,1($7)
	daddu	$7,$7,$9
	subu	$2,$2,$10
	sh	$2,2($4)
	bne	$3,$0,.L1587
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi4EEEvPslPKhS3_ll
	.size	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi4EEEvPslPKhS3_ll, .-_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi4EEEvPslPKhS3_ll
	.align	2
	.align	3
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
.L1591:
	lh	$11,0($7)
	addiu	$3,$3,-1
	lbu	$2,0($6)
	addu	$2,$2,$11
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,0($4)
	lh	$11,2($7)
	daddu	$7,$7,$9
	lbu	$2,1($6)
	daddu	$6,$6,$8
	addu	$2,$2,$11
	slt	$11,$2,256
	movz	$2,$10,$11
	slt	$11,$2,0
	movn	$2,$0,$11
	sb	$2,1($4)
	bne	$3,$0,.L1591
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi4EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi4EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi4EEEvPhlPKhPKsll
	.align	2
	.align	3
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
	li	$12,8			# 0x8
	move	$9,$0
	.align	3
.L1596:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,4
.L1595:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1595
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1596
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_18sse_pp_aILi4ELi8EEEjPKhlS2_l
	.size	_ZN12_GLOBAL__N_18sse_pp_aILi4ELi8EEEjPKhlS2_l, .-_ZN12_GLOBAL__N_18sse_pp_aILi4ELi8EEEjPKhlS2_l
	.align	2
	.align	3
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
	li	$10,8			# 0x8
	.align	3
.L1602:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1601:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1601
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1602
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi8EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi8EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi8EEEvPhlPKsl
	.align	2
	.align	3
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
	li	$10,8			# 0x8
	.align	3
.L1608:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,8
.L1607:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1607
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1608
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi8EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi8EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi8EEEvPslPKhl
	.align	2
	.align	3
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
	li	$10,8			# 0x8
	.align	3
.L1614:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1613:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1613
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1614
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi8EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi8EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi8EEEvPslPKsl
	.align	2
	.align	3
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
	li	$14,8			# 0x8
	.align	3
.L1620:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,4
.L1619:
	daddiu	$11,$11,1
	lbu	$3,0($2)
	daddiu	$10,$10,2
	lbu	$12,-1($11)
	daddiu	$2,$2,1
	subu	$3,$3,$12
	bne	$13,$2,.L1619
	sh	$3,-2($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$14,$0,.L1620
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi8EEEvPslPKhS3_ll
	.size	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi8EEEvPslPKhS3_ll, .-_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi8EEEvPslPKhS3_ll
	.align	2
	.align	3
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
	li	$14,255			# 0xff
	.align	3
.L1626:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,4
.L1625:
	daddiu	$11,$11,2
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lh	$12,-2($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	slt	$12,$2,256
	movz	$2,$14,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	bne	$13,$3,.L1625
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1626
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi8EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi8EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi8EEEvPhlPKhPKsll
	.align	2
	.align	3
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
	li	$12,16			# 0x10
	move	$9,$0
	.align	3
.L1632:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L1631:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1631
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1632
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_18sse_pp_aILi8ELi16EEEjPKhlS2_l
	.size	_ZN12_GLOBAL__N_18sse_pp_aILi8ELi16EEEjPKhlS2_l, .-_ZN12_GLOBAL__N_18sse_pp_aILi8ELi16EEEjPKhlS2_l
	.align	2
	.align	3
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
	li	$10,16			# 0x10
	.align	3
.L1638:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L1637:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1637
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1638
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi16EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi16EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi16EEEvPhlPKsl
	.align	2
	.align	3
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
	li	$10,16			# 0x10
	.align	3
.L1644:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,16
	.align	3
.L1643:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1643
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1644
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi16EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi16EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi16EEEvPslPKhl
	.align	2
	.align	3
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
	li	$10,16			# 0x10
	.align	3
.L1650:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L1649:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1649
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1650
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi16EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi16EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi16EEEvPslPKsl
	.align	2
	.align	3
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
	li	$14,16			# 0x10
	.align	3
.L1656:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L1655:
	daddiu	$11,$11,1
	lbu	$3,0($2)
	daddiu	$10,$10,2
	lbu	$12,-1($11)
	daddiu	$2,$2,1
	subu	$3,$3,$12
	bne	$13,$2,.L1655
	sh	$3,-2($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$14,$0,.L1656
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi16EEEvPslPKhS3_ll
	.size	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi16EEEvPslPKhS3_ll, .-_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi16EEEvPslPKhS3_ll
	.align	2
	.align	3
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
	li	$14,255			# 0xff
	.align	3
.L1662:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L1661:
	daddiu	$11,$11,2
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lh	$12,-2($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	slt	$12,$2,256
	movz	$2,$14,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	bne	$13,$3,.L1661
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1662
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi16EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi16EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi16EEEvPhlPKhPKsll
	.align	2
	.align	3
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
	li	$12,32			# 0x20
	move	$9,$0
	.align	3
.L1668:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L1667:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1667
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1668
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_18sse_pp_aILi16ELi32EEEjPKhlS2_l
	.size	_ZN12_GLOBAL__N_18sse_pp_aILi16ELi32EEEjPKhlS2_l, .-_ZN12_GLOBAL__N_18sse_pp_aILi16ELi32EEEjPKhlS2_l
	.align	2
	.align	3
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
	li	$10,32			# 0x20
	.align	3
.L1674:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L1673:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1673
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1674
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi32EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi32EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi32EEEvPhlPKsl
	.align	2
	.align	3
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
	li	$10,32			# 0x20
	.align	3
.L1680:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,32
	.align	3
.L1679:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1679
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1680
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi32EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi32EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi32EEEvPslPKhl
	.align	2
	.align	3
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
	li	$10,32			# 0x20
	.align	3
.L1686:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L1685:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1685
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1686
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi32EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi32EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi32EEEvPslPKsl
	.align	2
	.align	3
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
	li	$14,32			# 0x20
	.align	3
.L1692:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L1691:
	daddiu	$11,$11,1
	lbu	$3,0($2)
	daddiu	$10,$10,2
	lbu	$12,-1($11)
	daddiu	$2,$2,1
	subu	$3,$3,$12
	bne	$13,$2,.L1691
	sh	$3,-2($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$14,$0,.L1692
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi32EEEvPslPKhS3_ll
	.size	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi32EEEvPslPKhS3_ll, .-_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi32EEEvPslPKhS3_ll
	.align	2
	.align	3
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
	li	$14,255			# 0xff
	.align	3
.L1698:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L1697:
	daddiu	$11,$11,2
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lh	$12,-2($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	slt	$12,$2,256
	movz	$2,$14,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	bne	$13,$3,.L1697
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1698
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi32EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi32EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi32EEEvPhlPKhPKsll
	.align	2
	.align	3
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
	li	$12,64			# 0x40
	move	$9,$0
	.align	3
.L1704:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L1703:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1703
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1704
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_18sse_pp_aILi32ELi64EEEjPKhlS2_l
	.size	_ZN12_GLOBAL__N_18sse_pp_aILi32ELi64EEEjPKhlS2_l, .-_ZN12_GLOBAL__N_18sse_pp_aILi32ELi64EEEjPKhlS2_l
	.align	2
	.align	3
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
	li	$10,64			# 0x40
	.align	3
.L1710:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L1709:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1709
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1710
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi64EEEvPhlPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi64EEEvPhlPKsl, .-_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi64EEEvPhlPKsl
	.align	2
	.align	3
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
	li	$10,64			# 0x40
	.align	3
.L1716:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,64
	.align	3
.L1715:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1715
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1716
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi64EEEvPslPKhl
	.size	_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi64EEEvPslPKhl, .-_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi64EEEvPslPKhl
	.align	2
	.align	3
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
	li	$10,64			# 0x40
	.align	3
.L1722:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L1721:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1721
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1722
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi64EEEvPslPKsl
	.size	_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi64EEEvPslPKsl, .-_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi64EEEvPslPKsl
	.align	2
	.align	3
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
	li	$14,64			# 0x40
	.align	3
.L1728:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L1727:
	daddiu	$11,$11,1
	lbu	$3,0($2)
	daddiu	$10,$10,2
	lbu	$12,-1($11)
	daddiu	$2,$2,1
	subu	$3,$3,$12
	bne	$13,$2,.L1727
	sh	$3,-2($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$14,$0,.L1728
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi64EEEvPslPKhS3_ll
	.size	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi64EEEvPslPKhS3_ll, .-_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi64EEEvPslPKhS3_ll
	.align	2
	.align	3
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
	li	$14,255			# 0xff
	.align	3
.L1734:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L1733:
	daddiu	$11,$11,2
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lh	$12,-2($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	slt	$12,$2,256
	movz	$2,$14,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	bne	$13,$3,.L1733
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1734
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi64EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi64EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi64EEEvPhlPKhPKsll
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li
	.type	_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li, @function
_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$10,$6,$7
	daddu	$3,$8,$9
	vbld	$w4,0($8)
	vbld	$w5,0($6)
	daddu	$14,$4,$5
	vbld	$w2,0($3)
	daddu	$2,$10,$7
	vbld	$w3,0($10)
	daddu	$3,$3,$9
	daddu	$11,$14,$5
	vbld	$w8,0($2)
	dlsa	$10,$7,$2,1
	dlsa	$8,$9,$3,1
	vbld	$w10,0($3)
	dlsa	$13,$5,$11,1
	vbld	$w12,0($8)
	daddu	$6,$10,$7
	vbld	$w0,0($10)
	daddu	$8,$8,$9
	daddu	$12,$13,$5
	vbld	$w1,0($6)
	insve.d	$w5[1],$w0[0]
	vbld	$w7,0($8)
	daddu	$10,$8,$9
	daddu	$6,$6,$7
	insve.d	$w3[1],$w1[0]
	daddu	$8,$12,$5
	daddu	$2,$2,$7
	vbld	$w0,0($6)
	vbld	$w11,0($10)
	vbld	$w1,0($2)
	daddu	$3,$3,$9
	daddu	$2,$11,$5
	insve.d	$w8[1],$w0[0]
	daddu	$6,$6,$7
	daddu	$9,$10,$9
	vbld	$w0,0($3)
	insve.d	$w4[1],$w12[0]
	daddu	$5,$8,$5
	vbld	$w6,0($6)
	vbld	$w9,0($9)
	aver_u.b	$w4,$w5,$w4
	insve.d	$w1[1],$w6[0]
	vsd	$w4,0,0($4)
	insve.d	$w2[1],$w7[0]
	insve.d	$w0[1],$w9[0]
	aver_u.b	$w2,$w3,$w2
	aver_u.b	$w0,$w1,$w0
	vsd	$w2,0,0($14)
	move.v	$w3,$w10
	insve.d	$w3[1],$w11[0]
	aver_u.b	$w3,$w8,$w3
	vsd	$w3,0,0($11)
	vsd	$w0,0,0($2)
	vsd	$w4,1,0($13)
	vsd	$w2,1,0($12)
	vsd	$w3,1,0($8)
	jr	$31
	vsd	$w0,1,0($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li
	.size	_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li, .-_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii
	.type	_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii, @function
_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x107f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sll	$12,$10,0
	sd	$16,0($sp)
	addiu	$11,$11,15
	li	$2,-16			# 0xfffffffffffffff0
	lw	$16,64($sp)
	and	$2,$11,$2
	sd	$20,32($sp)
	dsubu	$20,$9,$2
	sd	$17,8($sp)
	addiu	$3,$16,-1
	sd	$22,48($sp)
	mul	$14,$3,$12
	gsdmultu	$3,$3,$9
	sd	$21,40($sp)
	subu	$12,$12,$2
	sd	$19,24($sp)
	sd	$18,16($sp)
	daddu	$3,$3,$2
	dlsa	$4,$3,$4,1
	addu	$10,$14,$2
	daddu	$17,$5,$10
	daddu	$6,$6,$10
	daddu	$7,$7,$10
	blez	$16,.L1740
	daddu	$8,$8,$10

	dsra	$21,$11,4
	sll	$20,$20,0
	addiu	$18,$21,-1
	sll	$20,$20,1
	dext	$18,$18,0,32
	dsll	$13,$9,1
	nor	$18,$0,$18
	dsubu	$20,$0,$20
	dsll	$22,$18,5
	dsubu	$5,$0,$12
	move	$19,$0
	dsll	$18,$18,4
	.align	3
.L1744:
	daddu	$2,$4,$9
	ld.d	$w3,0($4)
	daddu	$3,$2,$9
	ld.b	$w2,0($2)
	aver_u.b	$w3,$w3,$w2
	ld.d	$w0,0($3)
	blez	$21,.L1742
	aver_u.b	$w2,$w2,$w0

	daddu	$25,$4,$22
	move	$12,$8
	move	$11,$7
	move	$10,$6
	move	$3,$17
	.align	3
.L1743:
	daddiu	$4,$4,-32
	daddiu	$3,$3,-16
	ld.d	$w1,16($4)
	ld.d	$w5,0($4)
	daddiu	$2,$4,16
	daddiu	$10,$10,-16
	daddu	$24,$2,$9
	daddiu	$11,$11,-16
	daddiu	$12,$12,-16
	daddu	$2,$2,$13
	ld.b	$w0,0($24)
	aver_u.b	$w1,$w1,$w0
	daddu	$15,$4,$9
	daddu	$14,$4,$13
	ld.d	$w7,0($2)
	vextr.v	$w3,$w3,$w1,1
	ld.b	$w4,0($15)
	ld.d	$w6,0($14)
	aver_u.b	$w5,$w5,$w4
	aver_u.b	$w3,$w3,$w1
	aver_u.b	$w4,$w4,$w6
	aver_u.b	$w0,$w0,$w7
	vextr.v	$w1,$w1,$w5,1
	vextr.v	$w2,$w2,$w0,1
	aver_u.b	$w1,$w1,$w5
	aver_u.b	$w2,$w2,$w0
	pckev.b	$w6,$w3,$w1
	vextr.v	$w0,$w0,$w4,1
	st.d	$w6,0($3)
	aver_u.b	$w0,$w0,$w4
	pckod.b	$w1,$w3,$w1
	pckev.b	$w3,$w2,$w0
	st.d	$w1,0($10)
	pckod.b	$w0,$w2,$w0
	st.d	$w3,0($11)
	move.v	$w2,$w4
	move.v	$w3,$w5
	bne	$4,$25,.L1743
	st.d	$w0,0($12)

	daddu	$17,$17,$18
	daddu	$6,$6,$18
	daddu	$7,$7,$18
	daddu	$8,$8,$18
.L1742:
	addiu	$19,$19,1
	daddu	$4,$4,$20
	daddu	$17,$17,$5
	daddu	$6,$6,$5
	daddu	$7,$7,$5
	bne	$16,$19,.L1744
	daddu	$8,$8,$5

.L1740:
	ld	$22,48($sp)
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
	.end	_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii
	.size	_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii, .-_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii
	.type	_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii, @function
_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($sp)
	sll	$9,$9,6
	sll	$10,$10,16
	fill.w	$w6,$11
	or	$9,$9,$10
	shf.w	$w6,$w6,0
	fill.w	$w4,$9
	shf.w	$w4,$w4,0
	fill.w	$w5,$2
	blez	$8,.L1756
	shf.w	$w5,$w5,0

	sra	$7,$7,4
	move	$10,$0
	ldi.h	$w7,1
	addiu	$11,$7,-1
	dext	$11,$11,0,32
	dsll	$11,$11,4
	daddiu	$11,$11,16
	.align	3
.L1752:
	blez	$7,.L1750
	nop

	move	$2,$4
	move	$3,$5
	daddu	$9,$11,$4
	.align	3
.L1751:
	vbld	$w2,0($2)
	vbld	$w1,8($2)
	daddiu	$3,$3,16
	daddiu	$2,$2,16
	vextb_u.h	$w2,$w2
	vextb_u.h	$w1,$w1
	ilvr.h	$w0,$w7,$w2
	ilvr.h	$w3,$w7,$w1
	ilvl.h	$w2,$w7,$w2
	ilvl.h	$w1,$w7,$w1
	dotp_s.w	$w0,$w4,$w0
	dotp_s.w	$w2,$w4,$w2
	dotp_s.w	$w3,$w4,$w3
	dotp_s.w	$w1,$w4,$w1
	srl.w	$w0,$w0,$w6
	srl.w	$w2,$w2,$w6
	srl.w	$w3,$w3,$w6
	srl.w	$w1,$w1,$w6
	addv.w	$w0,$w0,$w5
	addv.w	$w2,$w2,$w5
	addv.w	$w3,$w3,$w5
	vsrains_u.h	$w2,$w2,0
	addv.w	$w1,$w1,$w5
	vsrains_u.h	$w0,$w0,0
	vsrains_u.h	$w1,$w1,0
	insve.d	$w0[1],$w2[0]
	vsrains_u.h	$w3,$w3,0
	vsrlins_u.b	$w0,$w0,0
	move.v	$w2,$w3
	insve.d	$w2[1],$w1[0]
	vsrlins_u.b	$w1,$w2,0
	insve.d	$w0[1],$w1[0]
	bne	$2,$9,.L1751
	st.d	$w0,-16($3)

.L1750:
	addiu	$10,$10,1
	daddu	$4,$4,$6
	bne	$8,$10,.L1752
	daddu	$5,$5,$6

.L1756:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii
	.size	_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii, .-_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl
	.type	_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl, @function
_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$3,$7,1
	vblw	$w3,0($4)
	vblw	$w2,0($5)
	daddu	$4,$4,$7
	daddu	$5,$5,$7
	daddu	$9,$6,$3
	vblw	$w0,0($4)
	insve.w	$w3[1],$w0[0]
	daddu	$4,$4,$7
	daddu	$2,$5,$7
	vblw	$w4,0($5)
	vextb_u.h	$w3,$w3
	daddu	$8,$9,$3
	daddu	$5,$4,$7
	vblw	$w1,0($4)
	vblw	$w0,0($2)
	daddu	$7,$2,$7
	daddu	$3,$8,$3
	vblw	$w5,0($5)
	insve.w	$w2[1],$w4[0]
	insve.w	$w1[1],$w5[0]
	vblw	$w4,0($7)
	vextb_u.h	$w2,$w2
	vextb_u.h	$w1,$w1
	subv.h	$w2,$w3,$w2
	insve.w	$w0[1],$w4[0]
	vsd	$w2,0,0($6)
	vextb_u.h	$w0,$w0
	vsd	$w2,1,0($9)
	subv.h	$w0,$w1,$w0
	vsd	$w0,0,0($8)
	jr	$31
	vsd	$w0,1,0($3)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl
	.size	_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl, .-_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll
	.type	_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll, @function
_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	vblw	$w0,0($7)
	daddu	$2,$7,$9
	vblw	$w1,0($6)
	daddu	$10,$6,$8
	daddu	$7,$4,$5
	vblw	$w6,0($2)
	insve.w	$w0[1],$w6[0]
	daddu	$3,$10,$8
	daddu	$2,$2,$9
	vblw	$w2,0($10)
	vextb_u.h	$w0,$w0
	daddu	$6,$7,$5
	vblw	$w3,0($3)
	daddu	$9,$2,$9
	insve.w	$w1[1],$w2[0]
	daddu	$3,$3,$8
	daddu	$5,$6,$5
	vblw	$w2,0($2)
	vblw	$w4,0($9)
	vblw	$w5,0($3)
	vextb_u.h	$w1,$w1
	insve.w	$w3[1],$w5[0]
	subv.h	$w0,$w1,$w0
	vextb_u.h	$w3,$w3
	vsd	$w0,0,0($4)
	insve.w	$w2[1],$w4[0]
	vsd	$w0,1,0($7)
	vextb_u.h	$w1,$w2
	subv.h	$w1,$w3,$w1
	vsd	$w1,0,0($6)
	jr	$31
	vsd	$w1,1,0($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll
	.size	_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll, .-_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl
	.type	_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl, @function
_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$8,$7,1
	dsll	$9,$7,2
	vbld	$w9,0($4)
	vbld	$w0,0($5)
	daddu	$11,$6,$8
	daddu	$2,$4,$9
	vextb_u.h	$w0,$w0
	vextb_u.h	$w9,$w9
	daddu	$10,$11,$8
	daddu	$3,$5,$9
	vbld	$w6,0($2)
	subv.h	$w9,$w9,$w0
	daddu	$9,$10,$9
	daddu	$4,$4,$7
	vbld	$w12,0($3)
	vextb_u.h	$w6,$w6
	vbld	$w8,0($4)
	daddu	$13,$9,$8
	daddu	$2,$2,$7
	vextb_u.h	$w8,$w8
	daddu	$5,$5,$7
	daddu	$3,$3,$7
	vbld	$w5,0($2)
	vextb_u.h	$w12,$w12
	daddu	$4,$4,$7
	vbld	$w14,0($5)
	vbld	$w11,0($3)
	daddu	$2,$2,$7
	vbld	$w7,0($4)
	daddu	$5,$5,$7
	daddu	$3,$3,$7
	vbld	$w4,0($2)
	daddu	$12,$13,$8
	daddu	$4,$4,$7
	vbld	$w13,0($5)
	vbld	$w10,0($3)
	vbld	$w0,0($4)
	daddu	$2,$2,$7
	daddu	$4,$10,$8
	vextb_u.h	$w7,$w7
	daddu	$5,$5,$7
	daddu	$3,$3,$7
	vbld	$w1,0($2)
	vextb_u.h	$w0,$w0
	daddu	$8,$12,$8
	vbld	$w2,0($5)
	vbld	$w3,0($3)
	vextb_u.h	$w2,$w2
	st.d	$w9,0($6)
	subv.h	$w0,$w0,$w2
	vextb_u.h	$w5,$w5
	vextb_u.h	$w4,$w4
	vextb_u.h	$w1,$w1
	vextb_u.h	$w14,$w14
	vextb_u.h	$w13,$w13
	vextb_u.h	$w11,$w11
	vextb_u.h	$w9,$w10
	vextb_u.h	$w3,$w3
	subv.h	$w8,$w8,$w14
	subv.h	$w7,$w7,$w13
	st.d	$w8,0($11)
	subv.h	$w6,$w6,$w12
	st.d	$w7,0($10)
	subv.h	$w2,$w4,$w9
	st.d	$w0,0($4)
	st.d	$w6,0($9)
	subv.h	$w0,$w5,$w11
	st.d	$w0,0($13)
	subv.h	$w0,$w1,$w3
	st.d	$w2,0($12)
	jr	$31
	st.d	$w0,0($8)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl
	.size	_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl, .-_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll
	.type	_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll, @function
_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$11,$5,1
	daddu	$3,$7,$9
	vbld	$w5,0($6)
	vbld	$w8,0($7)
	daddu	$2,$6,$8
	daddu	$13,$4,$11
	vbld	$w7,0($3)
	vextb_u.h	$w5,$w5
	vbld	$w12,0($2)
	daddu	$10,$3,$9
	daddu	$12,$13,$11
	vextb_u.h	$w12,$w12
	daddu	$2,$2,$8
	dlsa	$7,$9,$10,1
	vbld	$w15,0($10)
	vextb_u.h	$w8,$w8
	dlsa	$6,$8,$2,1
	dlsa	$5,$5,$12,2
	vbld	$w11,0($2)
	vbld	$w6,0($7)
	vbld	$w10,0($6)
	daddu	$3,$7,$9
	daddu	$6,$6,$8
	subv.h	$w5,$w5,$w8
	daddu	$14,$5,$11
	vbld	$w2,0($6)
	vbld	$w14,0($3)
	daddu	$7,$6,$8
	daddu	$3,$3,$9
	daddu	$6,$14,$11
	vbld	$w9,0($7)
	vextb_u.h	$w2,$w2
	daddu	$2,$2,$8
	vbld	$w13,0($3)
	daddu	$10,$10,$9
	vextb_u.h	$w11,$w11
	vbld	$w0,0($2)
	daddu	$7,$7,$8
	daddu	$2,$12,$11
	vbld	$w4,0($10)
	daddu	$3,$3,$9
	daddu	$11,$6,$11
	vbld	$w3,0($7)
	vextb_u.h	$w7,$w7
	vbld	$w1,0($3)
	vextb_u.h	$w15,$w15
	st.d	$w5,0($4)
	vextb_u.h	$w0,$w0
	vextb_u.h	$w4,$w4
	vextb_u.h	$w10,$w10
	subv.h	$w0,$w0,$w4
	vextb_u.h	$w9,$w9
	vextb_u.h	$w3,$w3
	vextb_u.h	$w6,$w6
	vextb_u.h	$w14,$w14
	vextb_u.h	$w13,$w13
	vextb_u.h	$w1,$w1
	subv.h	$w7,$w12,$w7
	subv.h	$w5,$w11,$w15
	st.d	$w7,0($13)
	subv.h	$w6,$w10,$w6
	st.d	$w5,0($12)
	subv.h	$w1,$w3,$w1
	st.d	$w0,0($2)
	st.d	$w6,0($5)
	subv.h	$w0,$w2,$w14
	subv.h	$w2,$w9,$w13
	st.d	$w0,0($14)
	st.d	$w2,0($6)
	jr	$31
	st.d	$w1,0($11)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll
	.size	_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll, .-_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl
	.type	_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl, @function
_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$13,$7,1
	dsll	$14,$7,2
	daddiu	$sp,$sp,-48
	daddu	$12,$13,$14
	daddiu	$24,$7,8
	sd	$20,32($sp)
	daddu	$12,$6,$12
	sd	$19,24($sp)
	li	$15,4			# 0x4
	daddiu	$20,$13,16
	sd	$18,16($sp)
	daddiu	$19,$14,16
	dsll	$18,$7,3
	sd	$17,8($sp)
	daddu	$25,$13,$24
	daddiu	$17,$13,8
	sd	$16,0($sp)
	daddu	$16,$7,$13
.L1766:
	daddu	$11,$7,$4
	daddu	$10,$4,$24
	vbld	$w13,0($4)
	vbld	$w12,8($4)
	daddu	$9,$13,$4
	daddu	$8,$4,$17
	vbld	$w5,0($11)
	vbld	$w4,0($10)
	vbld	$w3,0($9)
	vbld	$w2,0($8)
	daddu	$3,$4,$16
	daddu	$2,$4,$25
	daddu	$11,$7,$5
	daddu	$10,$5,$24
	vbld	$w1,0($3)
	vbld	$w0,0($2)
	daddu	$9,$13,$5
	daddu	$8,$5,$17
	vbld	$w11,0($11)
	vbld	$w10,0($10)
	vbld	$w9,0($9)
	vbld	$w8,0($8)
	daddu	$3,$5,$16
	daddu	$2,$5,$25
	daddu	$11,$13,$6
	daddu	$10,$6,$20
	vbld	$w15,0($5)
	vbld	$w14,8($5)
	daddu	$9,$14,$6
	daddu	$8,$6,$19
	vbld	$w7,0($3)
	vbld	$w6,0($2)
	addiu	$15,$15,-1
	vextb_u.h	$w13,$w13
	vextb_u.h	$w12,$w12
	vextb_u.h	$w5,$w5
	vextb_u.h	$w4,$w4
	vextb_u.h	$w3,$w3
	vextb_u.h	$w2,$w2
	vextb_u.h	$w1,$w1
	vextb_u.h	$w0,$w0
	vextb_u.h	$w15,$w15
	vextb_u.h	$w14,$w14
	vextb_u.h	$w11,$w11
	vextb_u.h	$w10,$w10
	vextb_u.h	$w9,$w9
	vextb_u.h	$w8,$w8
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	subv.h	$w13,$w13,$w15
	subv.h	$w12,$w12,$w14
	st.d	$w13,0($6)
	st.d	$w12,16($6)
	subv.h	$w5,$w5,$w11
	subv.h	$w4,$w4,$w10
	st.d	$w5,0($11)
	subv.h	$w3,$w3,$w9
	st.d	$w4,0($10)
	subv.h	$w2,$w2,$w8
	st.d	$w3,0($9)
	subv.h	$w1,$w1,$w7
	st.d	$w2,0($8)
	subv.h	$w0,$w0,$w6
	st.d	$w1,0($12)
	st.d	$w0,16($12)
	daddu	$4,$14,$4
	daddu	$12,$12,$18
	daddu	$5,$14,$5
	bne	$15,$0,.L1766
	daddu	$6,$18,$6

	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl
	.size	_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl, .-_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll
	.type	_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll, @function
_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll:
	.frame	$sp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x10ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	li	$15,4			# 0x4
	sd	$20,40($sp)
	dsll	$20,$5,1
	dsll	$25,$8,1
	sd	$19,32($sp)
	dsll	$19,$5,2
	daddu	$24,$25,$8
	daddu	$14,$20,$19
	sd	$23,64($sp)
	dsll	$5,$5,3
	sd	$22,56($sp)
	daddu	$14,$4,$14
	dsll	$23,$8,2
	sd	$21,48($sp)
	daddu	$9,$9,$24
	daddiu	$22,$20,16
	sd	$18,24($sp)
	daddiu	$21,$19,16
	daddiu	$18,$8,8
	sd	$17,16($sp)
	daddiu	$17,$25,8
	sd	$16,8($sp)
	daddiu	$16,$24,8
.L1770:
	daddu	$13,$6,$8
	daddu	$12,$6,$18
	vbld	$w13,0($6)
	vbld	$w12,8($6)
	daddu	$11,$6,$25
	daddu	$10,$6,$17
	vbld	$w5,0($13)
	vbld	$w4,0($12)
	vbld	$w3,0($11)
	vbld	$w2,0($10)
	daddu	$3,$6,$24
	daddu	$2,$6,$16
	daddu	$13,$7,$8
	daddu	$12,$7,$18
	vbld	$w1,0($3)
	vbld	$w0,0($2)
	daddu	$11,$25,$7
	daddu	$10,$7,$17
	vbld	$w11,0($13)
	vbld	$w10,0($12)
	vbld	$w9,0($11)
	vbld	$w8,0($10)
	daddu	$3,$24,$7
	daddu	$2,$7,$16
	daddu	$13,$20,$4
	daddu	$12,$4,$22
	vbld	$w15,0($7)
	vbld	$w14,8($7)
	daddu	$11,$19,$4
	daddu	$10,$4,$21
	vbld	$w7,0($3)
	vbld	$w6,0($2)
	addiu	$15,$15,-1
	vextb_u.h	$w13,$w13
	vextb_u.h	$w12,$w12
	vextb_u.h	$w5,$w5
	vextb_u.h	$w4,$w4
	vextb_u.h	$w3,$w3
	vextb_u.h	$w2,$w2
	vextb_u.h	$w1,$w1
	vextb_u.h	$w0,$w0
	vextb_u.h	$w15,$w15
	vextb_u.h	$w14,$w14
	vextb_u.h	$w11,$w11
	vextb_u.h	$w10,$w10
	vextb_u.h	$w9,$w9
	vextb_u.h	$w8,$w8
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	subv.h	$w13,$w13,$w15
	subv.h	$w12,$w12,$w14
	st.d	$w13,0($4)
	st.d	$w12,16($4)
	subv.h	$w5,$w5,$w11
	subv.h	$w4,$w4,$w10
	st.d	$w5,0($13)
	subv.h	$w3,$w3,$w9
	st.d	$w4,0($12)
	subv.h	$w2,$w2,$w8
	st.d	$w3,0($11)
	subv.h	$w1,$w1,$w7
	st.d	$w2,0($10)
	subv.h	$w0,$w0,$w6
	st.d	$w1,0($14)
	st.d	$w0,16($14)
	daddu	$4,$5,$4
	daddu	$14,$14,$5
	daddu	$6,$6,$23
	bne	$15,$0,.L1770
	daddu	$7,$7,$9

	ld	$23,64($sp)
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
	.end	_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll
	.size	_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll, .-_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl
	.type	_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl, @function
_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	dsll	$24,$7,1
	daddu	$10,$6,$24
	sd	$18,16($sp)
	dsll	$18,$7,2
	sd	$17,8($sp)
	li	$15,16			# 0x10
	daddiu	$17,$7,8
	sd	$16,0($sp)
	daddiu	$25,$7,24
	daddiu	$16,$7,16
	.align	3
.L1774:
	daddu	$9,$7,$4
	daddu	$8,$4,$17
	vbld	$w11,0($4)
	vbld	$w10,8($4)
	daddu	$3,$4,$16
	daddu	$2,$4,$25
	vbld	$w9,16($4)
	vbld	$w8,24($4)
	daddu	$14,$7,$5
	daddu	$13,$5,$17
	vbld	$w15,0($5)
	vbld	$w14,8($5)
	daddu	$12,$5,$16
	daddu	$11,$5,$25
	vbld	$w13,16($5)
	vbld	$w12,24($5)
	addiu	$15,$15,-1
	vbld	$w3,0($9)
	vbld	$w2,0($8)
	vbld	$w1,0($3)
	vbld	$w0,0($2)
	vbld	$w7,0($14)
	vbld	$w6,0($13)
	vbld	$w5,0($12)
	vbld	$w4,0($11)
	vextb_u.h	$w11,$w11
	vextb_u.h	$w10,$w10
	vextb_u.h	$w9,$w9
	vextb_u.h	$w8,$w8
	vextb_u.h	$w15,$w15
	vextb_u.h	$w14,$w14
	vextb_u.h	$w13,$w13
	vextb_u.h	$w12,$w12
	vextb_u.h	$w3,$w3
	vextb_u.h	$w2,$w2
	vextb_u.h	$w1,$w1
	vextb_u.h	$w0,$w0
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	vextb_u.h	$w5,$w5
	vextb_u.h	$w4,$w4
	subv.h	$w11,$w11,$w15
	subv.h	$w10,$w10,$w14
	st.d	$w11,0($6)
	st.d	$w10,16($6)
	subv.h	$w9,$w9,$w13
	subv.h	$w8,$w8,$w12
	st.d	$w9,32($6)
	st.d	$w8,48($6)
	subv.h	$w3,$w3,$w7
	subv.h	$w2,$w2,$w6
	subv.h	$w1,$w1,$w5
	subv.h	$w0,$w0,$w4
	st.d	$w3,0($10)
	st.d	$w2,16($10)
	st.d	$w1,32($10)
	st.d	$w0,48($10)
	daddu	$4,$4,$24
	daddu	$5,$5,$24
	daddu	$6,$6,$18
	bne	$15,$0,.L1774
	daddu	$10,$10,$18

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl
	.size	_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl, .-_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll
	.type	_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll, @function
_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$2,64			# 0x40
	.align	3
.L1778:
	addiu	$2,$2,-1
	vbld	$w7,0($6)
	vbld	$w6,8($6)
	vbld	$w5,16($6)
	vbld	$w4,24($6)
	vbld	$w15,0($7)
	vbld	$w14,8($7)
	vbld	$w13,16($7)
	vbld	$w12,24($7)
	vbld	$w3,32($6)
	vbld	$w2,40($6)
	vbld	$w1,48($6)
	vbld	$w0,56($6)
	vbld	$w11,32($7)
	vbld	$w10,40($7)
	vbld	$w9,48($7)
	vbld	$w8,56($7)
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	vextb_u.h	$w5,$w5
	vextb_u.h	$w4,$w4
	vextb_u.h	$w15,$w15
	vextb_u.h	$w14,$w14
	vextb_u.h	$w13,$w13
	vextb_u.h	$w12,$w12
	vextb_u.h	$w3,$w3
	vextb_u.h	$w2,$w2
	vextb_u.h	$w1,$w1
	vextb_u.h	$w0,$w0
	vextb_u.h	$w11,$w11
	vextb_u.h	$w10,$w10
	vextb_u.h	$w9,$w9
	vextb_u.h	$w8,$w8
	subv.h	$w7,$w7,$w15
	subv.h	$w6,$w6,$w14
	subv.h	$w5,$w5,$w13
	subv.h	$w4,$w4,$w12
	subv.h	$w3,$w3,$w11
	subv.h	$w2,$w2,$w10
	subv.h	$w1,$w1,$w9
	subv.h	$w0,$w0,$w8
	st.d	$w7,0($4)
	st.d	$w6,16($4)
	st.d	$w5,32($4)
	st.d	$w4,48($4)
	st.d	$w3,64($4)
	st.d	$w2,80($4)
	st.d	$w1,96($4)
	st.d	$w0,112($4)
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$2,$0,.L1778
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll
	.size	_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll, .-_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll
	.type	_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll, @function
_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll:
	.frame	$sp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x10ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	li	$24,16			# 0x10
	sd	$23,64($sp)
	dsll	$23,$8,1
	dsll	$25,$5,2
	sd	$22,56($sp)
	dlsa	$5,$5,$4,1
	dsll	$22,$9,1
	sd	$21,48($sp)
	daddiu	$21,$8,8
	sd	$20,40($sp)
	daddiu	$20,$8,16
	sd	$19,32($sp)
	daddiu	$19,$8,24
	sd	$18,24($sp)
	daddiu	$18,$9,8
	sd	$17,16($sp)
	daddiu	$17,$9,16
	sd	$16,8($sp)
	daddiu	$16,$9,24
	.align	3
.L1782:
	daddu	$11,$6,$8
	daddu	$10,$6,$21
	vbld	$w11,0($6)
	vbld	$w10,8($6)
	daddu	$3,$6,$20
	daddu	$2,$6,$19
	vbld	$w9,16($6)
	vbld	$w8,24($6)
	daddu	$15,$7,$9
	daddu	$14,$7,$18
	vbld	$w15,0($7)
	vbld	$w14,8($7)
	daddu	$13,$7,$17
	daddu	$12,$7,$16
	vbld	$w13,16($7)
	vbld	$w12,24($7)
	addiu	$24,$24,-1
	vbld	$w3,0($11)
	vbld	$w2,0($10)
	vbld	$w1,0($3)
	vbld	$w0,0($2)
	vbld	$w7,0($15)
	vbld	$w6,0($14)
	vbld	$w5,0($13)
	vbld	$w4,0($12)
	vextb_u.h	$w11,$w11
	vextb_u.h	$w10,$w10
	vextb_u.h	$w9,$w9
	vextb_u.h	$w8,$w8
	vextb_u.h	$w15,$w15
	vextb_u.h	$w14,$w14
	vextb_u.h	$w13,$w13
	vextb_u.h	$w12,$w12
	vextb_u.h	$w3,$w3
	vextb_u.h	$w2,$w2
	vextb_u.h	$w1,$w1
	vextb_u.h	$w0,$w0
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	vextb_u.h	$w5,$w5
	vextb_u.h	$w4,$w4
	subv.h	$w11,$w11,$w15
	subv.h	$w10,$w10,$w14
	st.d	$w11,0($4)
	st.d	$w10,16($4)
	subv.h	$w9,$w9,$w13
	subv.h	$w8,$w8,$w12
	st.d	$w9,32($4)
	st.d	$w8,48($4)
	subv.h	$w3,$w3,$w7
	subv.h	$w2,$w2,$w6
	subv.h	$w1,$w1,$w5
	subv.h	$w0,$w0,$w4
	st.d	$w3,0($5)
	st.d	$w2,16($5)
	st.d	$w1,32($5)
	st.d	$w0,48($5)
	daddu	$6,$6,$23
	daddu	$7,$7,$22
	daddu	$4,$4,$25
	bne	$24,$0,.L1782
	daddu	$5,$5,$25

	ld	$23,64($sp)
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
	.end	_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll
	.size	_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll, .-_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
	.type	_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l, @function
_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l:
	.frame	$sp,128,$31		# vars= 48, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$8,$5,3
	sd	$8,8($sp)
	dsll	$8,$7,3
	dsll	$2,$5,1
	dsll	$3,$7,1
	sd	$8,0($sp)
	dsll	$8,$5,2
	sd	$fp,120($sp)
	li	$fp,2			# 0x2
	sd	$23,104($sp)
	daddu	$23,$2,$5
	sd	$22,96($sp)
	daddu	$22,$3,$7
	sd	$20,80($sp)
	move	$20,$0
	sd	$8,24($sp)
	dsll	$8,$7,2
	sd	$21,88($sp)
	sd	$19,72($sp)
	sd	$18,64($sp)
	sd	$17,56($sp)
	sd	$16,48($sp)
	sd	$2,32($sp)
	sd	$3,40($sp)
	sd	$8,16($sp)
.L1787:
	ld	$2,32($sp)
	move	$3,$4
	move	$15,$6
	daddiu	$21,$4,16
	daddu	$14,$4,$2
	ld	$2,40($sp)
	daddu	$13,$6,$2
	ld	$2,24($sp)
	daddu	$12,$2,$4
	ld	$2,16($sp)
	daddu	$11,$2,$6
.L1786:
	daddu	$10,$5,$14
	daddu	$9,$7,$13
	vbld	$w15,0($3)
	vbld	$w14,0($15)
	daddu	$8,$23,$10
	daddu	$2,$22,$9
	vbld	$w17,0($14)
	vbld	$w11,0($11)
	daddu	$19,$5,$3
	daddu	$18,$7,$15
	vbld	$w16,0($13)
	vbld	$w12,0($12)
	daddu	$17,$5,$12
	daddu	$16,$7,$11
	vbld	$w8,0($19)
	vbld	$w9,0($18)
	daddu	$25,$5,$8
	daddu	$24,$2,$7
	vbld	$w6,0($10)
	vbld	$w3,0($9)
	hadd_u.h	$w4,$w8,$w8
	hadd_u.h	$w1,$w6,$w6
	hadd_u.h	$w7,$w16,$w16
	hadd_u.h	$w10,$w3,$w3
	hsub_u.h	$w19,$w15,$w15
	hsub_u.h	$w18,$w17,$w17
	hadd_u.h	$w5,$w15,$w15
	hadd_u.h	$w13,$w17,$w17
	hsub_u.h	$w15,$w8,$w8
	hsub_u.h	$w17,$w14,$w14
	hsub_u.h	$w8,$w6,$w6
	insve.d	$w5[1],$w19[0]
	hsub_u.h	$w6,$w3,$w3
	insve.d	$w13[1],$w18[0]
	hadd_u.h	$w0,$w14,$w14
	hadd_u.h	$w2,$w9,$w9
	hsub_u.h	$w14,$w9,$w9
	hsub_u.h	$w16,$w16,$w16
	insve.d	$w2[1],$w14[0]
	move.v	$w3,$w4
	move.v	$w9,$w1
	insve.d	$w3[1],$w15[0]
	insve.d	$w9[1],$w8[0]
	subv.h	$w4,$w3,$w2
	vbld	$w15,0($8)
	insve.d	$w0[1],$w17[0]
	move.v	$w1,$w7
	subv.h	$w0,$w5,$w0
	insve.d	$w1[1],$w16[0]
	addv.h	$w2,$w4,$w0
	subv.h	$w3,$w13,$w1
	subv.h	$w4,$w4,$w0
	vbld	$w19,0($17)
	move.v	$w0,$w10
	vbld	$w17,0($16)
	insve.d	$w0[1],$w6[0]
	hadd_u.h	$w14,$w17,$w17
	subv.h	$w1,$w9,$w0
	vbld	$w18,0($25)
	addv.h	$w8,$w1,$w3
	hadd_u.h	$w9,$w19,$w19
	addv.h	$w0,$w8,$w2
	subv.h	$w1,$w1,$w3
	subv.h	$w8,$w8,$w2
	subv.h	$w6,$w1,$w4
	addv.h	$w3,$w1,$w4
	vbld	$w16,0($24)
	vbld	$w1,0($2)
	hadd_u.h	$w4,$w15,$w15
	hadd_u.h	$w10,$w16,$w16
	hadd_u.h	$w13,$w12,$w12
	hadd_u.h	$w7,$w18,$w18
	hadd_u.h	$w5,$w11,$w11
	hadd_u.h	$w2,$w1,$w1
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w15,$w15,$w15
	insve.d	$w13[1],$w12[0]
	hsub_u.h	$w20,$w11,$w11
	hsub_u.h	$w1,$w1,$w1
	move.v	$w12,$w9
	move.v	$w11,$w4
	insve.d	$w2[1],$w1[0]
	insve.d	$w11[1],$w15[0]
	move.v	$w1,$w2
	move.v	$w4,$w14
	hsub_u.h	$w19,$w19,$w19
	hsub_u.h	$w18,$w18,$w18
	insve.d	$w12[1],$w19[0]
	insve.d	$w7[1],$w18[0]
	hsub_u.h	$w17,$w17,$w17
	hsub_u.h	$w16,$w16,$w16
	insve.d	$w4[1],$w17[0]
	insve.d	$w5[1],$w20[0]
	subv.h	$w9,$w12,$w4
	subv.h	$w5,$w13,$w5
	subv.h	$w4,$w11,$w1
	addv.h	$w2,$w9,$w5
	move.v	$w1,$w10
	subv.h	$w9,$w9,$w5
	insve.d	$w1[1],$w16[0]
	subv.h	$w1,$w7,$w1
	addv.h	$w7,$w1,$w4
	subv.h	$w1,$w1,$w4
	addv.h	$w4,$w7,$w2
	subv.h	$w2,$w7,$w2
	addv.h	$w11,$w4,$w0
	addv.h	$w7,$w1,$w9
	subv.h	$w0,$w4,$w0
	subv.h	$w1,$w1,$w9
	pckod.h	$w4,$w0,$w11
	addv.h	$w9,$w7,$w3
	addv.h	$w5,$w1,$w6
	subv.h	$w3,$w7,$w3
	subv.h	$w1,$w1,$w6
	addv.h	$w7,$w2,$w8
	pckod.h	$w15,$w3,$w9
	pckod.h	$w13,$w1,$w5
	subv.h	$w2,$w2,$w8
	pckev.h	$w0,$w0,$w11
	pckod.h	$w14,$w2,$w7
	pckev.h	$w3,$w3,$w9
	pckev.h	$w2,$w2,$w7
	pckev.h	$w1,$w1,$w5
	asub_s.h	$w12,$w4,$w0
	asub_s.h	$w10,$w15,$w3
	asub_s.h	$w8,$w14,$w2
	asub_s.h	$w6,$w13,$w1
	addv.h	$w11,$w4,$w0
	addv.h	$w3,$w15,$w3
	vabs.h	$w11,$w11
	vabs.h	$w9,$w3
	addv.h	$w2,$w14,$w2
	addv.h	$w1,$w13,$w1
	vabs.h	$w7,$w2
	vabs.h	$w5,$w1
	ilvod.h	$w4,$w11,$w12
	ilvod.h	$w3,$w9,$w10
	ilvod.h	$w2,$w7,$w8
	ilvod.h	$w1,$w5,$w6
	ilvev.h	$w11,$w11,$w12
	ilvev.h	$w9,$w9,$w10
	ilvev.h	$w7,$w7,$w8
	ilvev.h	$w5,$w5,$w6
	max_s.h	$w4,$w4,$w11
	max_s.h	$w3,$w3,$w9
	max_s.h	$w2,$w2,$w7
	max_s.h	$w1,$w1,$w5
	hadd_s.w	$w4,$w4,$w4
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w3,$w4,$w3
	addv.w	$w1,$w2,$w1
	addv.w	$w0,$w3,$w1
	copy_s.w	$8,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$8
	copy_s.w	$8,$w0[2]
	daddiu	$3,$3,8
	addu	$2,$2,$8
	copy_s.w	$8,$w0[3]
	daddiu	$15,$15,8
	addu	$2,$2,$8
	daddiu	$14,$14,8
	addiu	$2,$2,1
	daddiu	$13,$13,8
	sra	$2,$2,1
	daddiu	$12,$12,8
	addu	$2,$2,$20
	daddiu	$11,$11,8
	bne	$3,$21,.L1786
	move	$20,$2

	ld	$3,8($sp)
	daddu	$4,$4,$3
	ld	$3,0($sp)
	daddu	$6,$6,$3
	li	$3,1			# 0x1
	bne	$fp,$3,.L1787
	li	$fp,1			# 0x1

	ld	$fp,120($sp)
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
	.end	_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
	.size	_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l, .-_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
	.align	2
	.align	3
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
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16sa8d16ILi32ELi64EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$19,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16sa8d16ILi32ELi64EEEiPKhlS2_l)))
	sd	$fp,80($sp)
	li	$fp,4			# 0x4
	ld	$19,%got_page(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)($28)
	sd	$23,64($sp)
	dsll	$23,$5,4
	sd	$22,56($sp)
	dsll	$22,$7,4
	sd	$21,48($sp)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)
	move	$21,$5
	sd	$20,40($sp)
	move	$20,$7
	sd	$18,24($sp)
	move	$18,$4
	sd	$17,16($sp)
	move	$17,$6
	sd	$16,8($sp)
	move	$16,$0
	sd	$31,88($sp)
.L1792:
	move	$6,$17
	move	$4,$18
	move	$7,$20
	move	$5,$21
	move	$25,$19
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
1:	jalr	$25
	addiu	$fp,$fp,-1

	daddiu	$6,$17,16
	daddiu	$4,$18,16
	move	$25,$19
	addu	$16,$2,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
1:	jalr	$25
	daddu	$18,$18,$23

	daddu	$17,$17,$22
	addu	$2,$2,$16
	bne	$fp,$0,.L1792
	move	$16,$2

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
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l)))
	sd	$31,56($sp)
	ld	$16,%got_page(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)($28)
	sd	$19,32($sp)
	move	$19,$6
	sd	$17,16($sp)
	move	$17,$4
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)
	sd	$20,40($sp)
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
1:	jalr	$25
	sd	$18,24($sp)

	move	$25,$16
	dlsa	$6,$7,$19,4
	dlsa	$4,$5,$17,4
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
1:	jalr	$25
	move	$17,$2

	ld	$31,56($sp)
	addu	$2,$2,$17
	ld	$28,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
	.type	_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l, @function
_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l:
	.frame	$sp,64,$31		# vars= 0, regs= 0/8, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddu	$9,$4,$5
	daddu	$12,$6,$7
	daddu	$3,$9,$5
	daddu	$2,$12,$7
	daddiu	$sp,$sp,-64
	dlsa	$11,$5,$3,1
	dlsa	$8,$7,$2,1
	sdc1	$f31,56($sp)
	daddu	$10,$11,$5
	sdc1	$f30,48($sp)
	sdc1	$f29,40($sp)
	sdc1	$f28,32($sp)
	sdc1	$f27,24($sp)
	sdc1	$f26,16($sp)
	sdc1	$f25,8($sp)
	sdc1	$f24,0($sp)
	vbld	$w13,0($6)
	daddu	$6,$8,$7
	vbld	$w15,0($4)
	vbld	$w14,0($9)
	daddu	$4,$6,$7
	daddu	$9,$10,$5
	vbld	$w19,0($3)
	vbld	$w18,0($2)
	daddu	$3,$3,$5
	daddu	$2,$2,$7
	vbld	$w12,0($12)
	daddu	$5,$9,$5
	daddu	$7,$4,$7
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	vbld	$w11,0($11)
	vbld	$w10,0($10)
	vbld	$w9,0($9)
	vbld	$w1,0($5)
	vbld	$w8,0($8)
	vbld	$w7,0($6)
	vbld	$w6,0($4)
	vbld	$w0,0($7)
	hadd_u.h	$w23,$w15,$w15
	hadd_u.h	$w17,$w14,$w14
	hadd_u.h	$w22,$w19,$w19
	hadd_u.h	$w5,$w4,$w4
	hadd_u.h	$w31,$w13,$w13
	hadd_u.h	$w30,$w12,$w12
	hadd_u.h	$w29,$w18,$w18
	hadd_u.h	$w28,$w3,$w3
	hadd_u.h	$w21,$w11,$w11
	hadd_u.h	$w16,$w10,$w10
	hadd_u.h	$w20,$w9,$w9
	hadd_u.h	$w2,$w1,$w1
	hadd_u.h	$w27,$w8,$w8
	hadd_u.h	$w26,$w7,$w7
	hadd_u.h	$w25,$w6,$w6
	hadd_u.h	$w24,$w0,$w0
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w30[1],$w12[0]
	insve.d	$w28[1],$w3[0]
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w1,$w1,$w1
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w6,$w6,$w6
	insve.d	$w26[1],$w7[0]
	hsub_u.h	$w0,$w0,$w0
	insve.d	$w5[1],$w4[0]
	insve.d	$w24[1],$w0[0]
	subv.h	$w5,$w5,$w28
	insve.d	$w21[1],$w11[0]
	insve.d	$w16[1],$w10[0]
	insve.d	$w20[1],$w9[0]
	subv.h	$w16,$w16,$w26
	insve.d	$w2[1],$w1[0]
	insve.d	$w27[1],$w8[0]
	subv.h	$w2,$w2,$w24
	subv.h	$w27,$w21,$w27
	insve.d	$w25[1],$w6[0]
	hsub_u.h	$w15,$w15,$w15
	addv.h	$w6,$w16,$w27
	subv.h	$w25,$w20,$w25
	subv.h	$w16,$w16,$w27
	addv.h	$w0,$w2,$w25
	hsub_u.h	$w14,$w14,$w14
	addv.h	$w1,$w0,$w6
	subv.h	$w2,$w2,$w25
	subv.h	$w0,$w0,$w6
	addv.h	$w11,$w2,$w16
	hsub_u.h	$w19,$w19,$w19
	subv.h	$w2,$w2,$w16
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w18,$w18,$w18
	insve.d	$w31[1],$w13[0]
	insve.d	$w23[1],$w15[0]
	insve.d	$w17[1],$w14[0]
	subv.h	$w23,$w23,$w31
	subv.h	$w17,$w17,$w30
	insve.d	$w22[1],$w19[0]
	addv.h	$w4,$w17,$w23
	insve.d	$w29[1],$w18[0]
	subv.h	$w17,$w17,$w23
	subv.h	$w29,$w22,$w29
	addv.h	$w3,$w5,$w29
	subv.h	$w5,$w5,$w29
	addv.h	$w10,$w3,$w4
	subv.h	$w3,$w3,$w4
	addv.h	$w8,$w1,$w10
	addv.h	$w4,$w5,$w17
	subv.h	$w1,$w1,$w10
	addv.h	$w6,$w11,$w4
	pckod.h	$w9,$w1,$w8
	subv.h	$w11,$w11,$w4
	pckev.h	$w8,$w1,$w8
	addv.h	$w4,$w0,$w3
	pckod.h	$w7,$w11,$w6
	asub_s.h	$w12,$w9,$w8
	pckev.h	$w6,$w11,$w6
	subv.h	$w5,$w5,$w17
	subv.h	$w0,$w0,$w3
	addv.h	$w10,$w2,$w5
	asub_s.h	$w3,$w7,$w6
	subv.h	$w2,$w2,$w5
	addv.h	$w9,$w9,$w8
	pckod.h	$w5,$w0,$w4
	vabs.h	$w8,$w9
	pckev.h	$w0,$w0,$w4
	ilvod.h	$w1,$w8,$w12
	pckod.h	$w4,$w2,$w10
	asub_s.h	$w11,$w5,$w0
	pckev.h	$w2,$w2,$w10
	addv.h	$w5,$w5,$w0
	asub_s.h	$w10,$w4,$w2
	addv.h	$w7,$w7,$w6
	addv.h	$w2,$w4,$w2
	vabs.h	$w6,$w7
	vabs.h	$w4,$w5
	ilvod.h	$w0,$w6,$w3
	vabs.h	$w2,$w2
	ilvev.h	$w6,$w6,$w3
	ilvod.h	$w5,$w2,$w10
	ilvod.h	$w3,$w4,$w11
	ilvev.h	$w8,$w8,$w12
	ilvev.h	$w4,$w4,$w11
	ilvev.h	$w2,$w2,$w10
	max_s.h	$w1,$w1,$w8
	max_s.h	$w0,$w0,$w6
	max_s.h	$w3,$w3,$w4
	max_s.h	$w2,$w5,$w2
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w2,$w2,$w2
	addv.w	$w0,$w1,$w0
	addv.w	$w3,$w3,$w2
	addv.w	$w0,$w0,$w3
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	ldc1	$f31,56($sp)
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	ldc1	$f30,48($sp)
	addu	$2,$3,$2
	ldc1	$f29,40($sp)
	addiu	$2,$2,1
	ldc1	$f28,32($sp)
	ldc1	$f27,24($sp)
	dsra	$2,$2,1
	ldc1	$f26,16($sp)
	ldc1	$f25,8($sp)
	ldc1	$f24,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
	.size	_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l, .-_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$15,$5
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l)))
	move	$14,$4
	daddu	$28,$28,$25
	sd	$31,24($sp)
	move	$24,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l)))
	sd	$16,8($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	move	$16,$7

	move	$7,$16
	dlsa	$6,$16,$24,3
	dlsa	$4,$15,$14,3
	move	$5,$15
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	move	$14,$2

	ld	$31,24($sp)
	ld	$28,16($sp)
	addu	$2,$2,$14
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l
	.type	_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l, @function
_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l:
	.frame	$sp,128,$31		# vars= 0, regs= 8/8, args= 0, gp= 0
	.mask	0x107f0000,-72
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$13,$5,1
	dsll	$12,$7,1
	sd	$16,0($sp)
	dsll	$16,$5,2
	dsll	$25,$7,2
	daddiu	$8,$4,8
	sd	$22,48($sp)
	daddiu	$3,$6,8
	li	$9,4			# 0x4
	sd	$21,40($sp)
	move	$24,$0
	daddu	$15,$13,$5
	sd	$20,32($sp)
	daddu	$14,$12,$7
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sdc1	$f31,120($sp)
	sdc1	$f30,112($sp)
	sdc1	$f29,104($sp)
	sdc1	$f28,96($sp)
	sdc1	$f27,88($sp)
	sdc1	$f26,80($sp)
	sdc1	$f25,72($sp)
	sdc1	$f24,64($sp)
.L1802:
	daddu	$2,$3,$7
	daddu	$17,$8,$5
	vbld	$w17,0($8)
	vbld	$w15,0($3)
	daddu	$10,$4,$13
	daddu	$22,$4,$5
	vbld	$w19,0($4)
	vbld	$w18,0($6)
	vbld	$w10,0($10)
	daddu	$21,$4,$15
	daddu	$10,$7,$2
	vbld	$w5,0($2)
	daddu	$11,$5,$17
	daddu	$8,$8,$15
	vbld	$w11,0($22)
	vbld	$w9,0($21)
	daddu	$20,$6,$7
	daddu	$19,$6,$12
	vbld	$w3,0($8)
	vbld	$w6,0($17)
	daddu	$18,$6,$14
	daddu	$3,$3,$14
	vbld	$w16,0($11)
	vbld	$w1,0($20)
	vbld	$w2,0($3)
	vbld	$w8,0($19)
	vbld	$w7,0($18)
	vbld	$w14,0($10)
	hadd_u.h	$w23,$w19,$w19
	hadd_u.h	$w13,$w11,$w11
	hadd_u.h	$w22,$w10,$w10
	hadd_u.h	$w0,$w9,$w9
	hadd_u.h	$w31,$w18,$w18
	hadd_u.h	$w30,$w1,$w1
	hadd_u.h	$w29,$w8,$w8
	hadd_u.h	$w28,$w7,$w7
	hadd_u.h	$w21,$w17,$w17
	hadd_u.h	$w12,$w6,$w6
	hadd_u.h	$w20,$w16,$w16
	hadd_u.h	$w4,$w3,$w3
	hadd_u.h	$w27,$w15,$w15
	hadd_u.h	$w26,$w5,$w5
	hadd_u.h	$w25,$w14,$w14
	hadd_u.h	$w24,$w2,$w2
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w1,$w1,$w1
	insve.d	$w0[1],$w9[0]
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w4[1],$w3[0]
	hsub_u.h	$w2,$w2,$w2
	insve.d	$w22[1],$w10[0]
	insve.d	$w30[1],$w1[0]
	insve.d	$w29[1],$w8[0]
	insve.d	$w28[1],$w7[0]
	subv.h	$w29,$w22,$w29
	insve.d	$w12[1],$w6[0]
	insve.d	$w26[1],$w5[0]
	insve.d	$w24[1],$w2[0]
	subv.h	$w12,$w12,$w26
	hsub_u.h	$w19,$w19,$w19
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w18,$w18,$w18
	hsub_u.h	$w17,$w17,$w17
	hsub_u.h	$w16,$w16,$w16
	hsub_u.h	$w15,$w15,$w15
	hsub_u.h	$w14,$w14,$w14
	insve.d	$w23[1],$w19[0]
	insve.d	$w13[1],$w11[0]
	insve.d	$w31[1],$w18[0]
	subv.h	$w13,$w13,$w30
	subv.h	$w23,$w23,$w31
	insve.d	$w21[1],$w17[0]
	addv.h	$w8,$w13,$w23
	insve.d	$w20[1],$w16[0]
	subv.h	$w23,$w13,$w23
	insve.d	$w27[1],$w15[0]
	subv.h	$w13,$w0,$w28
	subv.h	$w3,$w21,$w27
	addv.h	$w1,$w13,$w29
	addv.h	$w0,$w12,$w3
	asub_s.h	$w6,$w1,$w8
	subv.h	$w12,$w12,$w3
	addv.h	$w1,$w1,$w8
	subv.h	$w13,$w13,$w29
	subv.h	$w3,$w4,$w24
	asub_s.h	$w7,$w13,$w23
	vabs.h	$w5,$w1
	insve.d	$w25[1],$w14[0]
	addv.h	$w13,$w13,$w23
	subv.h	$w20,$w20,$w25
	vabs.h	$w13,$w13
	addv.h	$w4,$w3,$w20
	ilvod.h	$w1,$w13,$w5
	asub_s.h	$w9,$w4,$w0
	subv.h	$w3,$w3,$w20
	addv.h	$w4,$w4,$w0
	asub_s.h	$w10,$w3,$w12
	vabs.h	$w4,$w4
	addv.h	$w3,$w3,$w12
	ilvod.h	$w0,$w7,$w6
	vabs.h	$w2,$w3
	ilvev.h	$w5,$w13,$w5
	ilvod.h	$w3,$w2,$w4
	ilvev.h	$w6,$w7,$w6
	ilvev.h	$w2,$w2,$w4
	ilvod.h	$w8,$w10,$w9
	ilvev.h	$w4,$w10,$w9
	max_s.h	$w1,$w1,$w5
	max_s.h	$w0,$w0,$w6
	max_s.h	$w2,$w3,$w2
	max_s.h	$w4,$w8,$w4
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w4,$w4,$w4
	addv.w	$w0,$w1,$w0
	addv.w	$w2,$w2,$w4
	addv.w	$w0,$w0,$w2
	copy_s.w	$2,$w0[1]
	copy_s.w	$3,$w0[0]
	addu	$3,$3,$2
	copy_s.w	$8,$w0[2]
	copy_s.w	$2,$w0[3]
	addu	$3,$3,$8
	addiu	$9,$9,-1
	addu	$2,$3,$2
	daddu	$4,$4,$16
	addu	$2,$2,$24
	daddu	$6,$6,$25
	move	$24,$2
	daddu	$8,$13,$11
	bne	$9,$0,.L1802
	daddu	$3,$12,$10

	ld	$22,48($sp)
	ldc1	$f31,120($sp)
	ld	$21,40($sp)
	ldc1	$f30,112($sp)
	ld	$20,32($sp)
	ldc1	$f29,104($sp)
	ld	$19,24($sp)
	ldc1	$f28,96($sp)
	ld	$18,16($sp)
	ldc1	$f27,88($sp)
	ld	$17,8($sp)
	ldc1	$f26,80($sp)
	ld	$16,0($sp)
	ldc1	$f25,72($sp)
	ldc1	$f24,64($sp)
	jr	$31
	daddiu	$sp,$sp,128

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l
	.size	_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l, .-_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
	.type	_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l, @function
_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$3,$6,$7
	daddu	$8,$4,$5
	vbld	$w10,0($4)
	vbld	$w7,0($6)
	daddu	$2,$3,$7
	daddu	$4,$8,$5
	vbld	$w6,0($3)
	vbld	$w9,0($8)
	daddu	$7,$2,$7
	daddu	$5,$4,$5
	vbld	$w5,0($2)
	vbld	$w8,0($4)
	vbld	$w4,0($5)
	vbld	$w3,0($7)
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w15,$w7,$w7
	hadd_u.h	$w14,$w6,$w6
	hadd_u.h	$w13,$w5,$w5
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w9,$w9
	hadd_u.h	$w2,$w4,$w4
	hadd_u.h	$w1,$w3,$w3
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w2[1],$w4[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w12[1],$w10[0]
	insve.d	$w0[1],$w9[0]
	move.v	$w4,$w15
	move.v	$w9,$w0
	insve.d	$w4[1],$w7[0]
	move.v	$w0,$w11
	insve.d	$w1[1],$w3[0]
	insve.d	$w0[1],$w8[0]
	subv.h	$w1,$w2,$w1
	move.v	$w8,$w0
	move.v	$w0,$w14
	insve.d	$w0[1],$w6[0]
	subv.h	$w6,$w12,$w4
	subv.h	$w0,$w9,$w0
	move.v	$w4,$w13
	addv.h	$w7,$w0,$w6
	insve.d	$w4[1],$w5[0]
	subv.h	$w0,$w0,$w6
	subv.h	$w4,$w8,$w4
	addv.h	$w2,$w1,$w4
	subv.h	$w1,$w1,$w4
	asub_s.h	$w4,$w2,$w7
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w7
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[1]
	copy_s.w	$3,$w0[0]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[2]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[3]
	jr	$31
	addu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
	.size	_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l, .-_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l
	.type	_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l, @function
_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l:
	.frame	$sp,64,$31		# vars= 0, regs= 0/8, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddu	$10,$4,$5
	daddu	$9,$6,$7
	daddu	$2,$10,$5
	daddu	$3,$9,$7
	daddiu	$sp,$sp,-64
	dlsa	$12,$5,$2,1
	dlsa	$8,$7,$3,1
	sdc1	$f31,56($sp)
	daddu	$11,$12,$5
	sdc1	$f30,48($sp)
	sdc1	$f29,40($sp)
	sdc1	$f28,32($sp)
	sdc1	$f27,24($sp)
	sdc1	$f26,16($sp)
	sdc1	$f25,8($sp)
	sdc1	$f24,0($sp)
	vbld	$w13,0($6)
	daddu	$6,$8,$7
	vbld	$w15,0($4)
	vbld	$w14,0($10)
	daddu	$4,$6,$7
	daddu	$10,$11,$5
	vbld	$w19,0($2)
	vbld	$w10,0($11)
	daddu	$2,$2,$5
	daddu	$11,$3,$7
	vbld	$w5,0($3)
	daddu	$5,$10,$5
	daddu	$7,$4,$7
	vbld	$w4,0($2)
	vbld	$w11,0($12)
	vbld	$w9,0($10)
	vbld	$w1,0($5)
	vbld	$w12,0($9)
	vbld	$w16,0($11)
	vbld	$w8,0($8)
	vbld	$w7,0($6)
	vbld	$w6,0($4)
	vbld	$w0,0($7)
	hadd_u.h	$w23,$w15,$w15
	hadd_u.h	$w18,$w14,$w14
	hadd_u.h	$w22,$w19,$w19
	hadd_u.h	$w3,$w4,$w4
	hadd_u.h	$w31,$w13,$w13
	hadd_u.h	$w30,$w12,$w12
	hadd_u.h	$w29,$w5,$w5
	hadd_u.h	$w28,$w16,$w16
	hadd_u.h	$w21,$w11,$w11
	hadd_u.h	$w17,$w10,$w10
	hadd_u.h	$w20,$w9,$w9
	hadd_u.h	$w2,$w1,$w1
	hadd_u.h	$w27,$w8,$w8
	hadd_u.h	$w26,$w7,$w7
	hadd_u.h	$w25,$w6,$w6
	hadd_u.h	$w24,$w0,$w0
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w30[1],$w12[0]
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w1,$w1,$w1
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w6,$w6,$w6
	insve.d	$w26[1],$w7[0]
	insve.d	$w25[1],$w6[0]
	hsub_u.h	$w0,$w0,$w0
	insve.d	$w3[1],$w4[0]
	insve.d	$w24[1],$w0[0]
	insve.d	$w29[1],$w5[0]
	insve.d	$w21[1],$w11[0]
	insve.d	$w17[1],$w10[0]
	insve.d	$w2[1],$w1[0]
	subv.h	$w17,$w17,$w26
	subv.h	$w2,$w2,$w24
	insve.d	$w27[1],$w8[0]
	hsub_u.h	$w15,$w15,$w15
	subv.h	$w27,$w21,$w27
	hsub_u.h	$w14,$w14,$w14
	addv.h	$w1,$w17,$w27
	hsub_u.h	$w19,$w19,$w19
	subv.h	$w17,$w17,$w27
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w16,$w16,$w16
	insve.d	$w31[1],$w13[0]
	insve.d	$w28[1],$w16[0]
	hsub_u.h	$w9,$w9,$w9
	subv.h	$w3,$w3,$w28
	insve.d	$w23[1],$w15[0]
	insve.d	$w18[1],$w14[0]
	subv.h	$w23,$w23,$w31
	subv.h	$w18,$w18,$w30
	insve.d	$w22[1],$w19[0]
	addv.h	$w12,$w18,$w23
	subv.h	$w29,$w22,$w29
	subv.h	$w18,$w18,$w23
	addv.h	$w5,$w3,$w29
	insve.d	$w20[1],$w9[0]
	subv.h	$w3,$w3,$w29
	asub_s.h	$w10,$w5,$w12
	asub_s.h	$w11,$w3,$w18
	subv.h	$w20,$w20,$w25
	ilvod.h	$w0,$w11,$w10
	addv.h	$w4,$w2,$w20
	addv.h	$w5,$w5,$w12
	asub_s.h	$w7,$w4,$w1
	subv.h	$w20,$w2,$w20
	vabs.h	$w5,$w5
	asub_s.h	$w8,$w20,$w17
	addv.h	$w4,$w4,$w1
	addv.h	$w3,$w3,$w18
	vabs.h	$w4,$w4
	vabs.h	$w3,$w3
	addv.h	$w20,$w20,$w17
	ilvod.h	$w1,$w3,$w5
	vabs.h	$w2,$w20
	ilvev.h	$w5,$w3,$w5
	ilvev.h	$w10,$w11,$w10
	ilvod.h	$w3,$w2,$w4
	ilvod.h	$w6,$w8,$w7
	ilvev.h	$w2,$w2,$w4
	max_s.h	$w1,$w1,$w5
	ilvev.h	$w4,$w8,$w7
	max_s.h	$w0,$w0,$w10
	max_s.h	$w2,$w3,$w2
	max_s.h	$w4,$w6,$w4
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w4,$w4,$w4
	addv.w	$w0,$w1,$w0
	addv.w	$w2,$w2,$w4
	addv.w	$w0,$w0,$w2
	copy_s.w	$2,$w0[1]
	copy_s.w	$3,$w0[0]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[2]
	ldc1	$f31,56($sp)
	addu	$3,$3,$2
	ldc1	$f30,48($sp)
	copy_s.w	$2,$w0[3]
	ldc1	$f29,40($sp)
	addu	$2,$3,$2
	ldc1	$f28,32($sp)
	ldc1	$f27,24($sp)
	ldc1	$f26,16($sp)
	ldc1	$f25,8($sp)
	ldc1	$f24,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l
	.size	_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l, .-_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls
	.type	_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls, @function
_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	ldi.d	$w0,0
	insert.h	$w0[0],$6
	insert.h	$w0[4],$6
	daddu	$3,$4,$5
	shf.h	$w0,$w0,0
	vsd	$w0,0,0($4)
	daddu	$2,$3,$5
	vsd	$w0,0,0($3)
	daddu	$5,$2,$5
	vsd	$w0,0,0($2)
	jr	$31
	vsd	$w0,0,0($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls
	.size	_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls, .-_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls
	.type	_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls, @function
_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$2,$5,1
	ldi.d	$w0,0
	insert.h	$w0[0],$6
	insert.h	$w0[4],$6
	daddu	$7,$4,$2
	shf.h	$w0,$w0,0
	st.d	$w0,0($4)
	daddu	$3,$7,$2
	st.d	$w0,0($7)
	dlsa	$5,$5,$3,2
	st.d	$w0,0($3)
	daddu	$6,$3,$2
	daddu	$4,$5,$2
	st.d	$w0,0($6)
	st.d	$w0,0($5)
	daddu	$3,$4,$2
	st.d	$w0,0($4)
	daddu	$2,$3,$2
	st.d	$w0,0($3)
	jr	$31
	st.d	$w0,0($2)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls
	.size	_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls, .-_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls
	.type	_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls, @function
_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	ldi.d	$w0,0
	insert.h	$w0[0],$6
	insert.h	$w0[4],$6
	daddu	$7,$4,$5
	shf.h	$w0,$w0,0
	st.d	$w0,0($4)
	st.d	$w0,16($4)
	daddu	$3,$7,$5
	st.d	$w0,0($7)
	st.d	$w0,16($7)
	daddu	$2,$3,$5
	st.d	$w0,0($3)
	st.d	$w0,16($3)
	daddu	$4,$2,$5
	st.d	$w0,0($2)
	st.d	$w0,16($2)
	daddu	$3,$4,$5
	st.d	$w0,0($4)
	st.d	$w0,16($4)
	daddu	$2,$3,$5
	st.d	$w0,0($3)
	st.d	$w0,16($3)
	daddu	$3,$2,$5
	st.d	$w0,0($2)
	st.d	$w0,16($2)
	daddu	$2,$3,$5
	st.d	$w0,0($3)
	st.d	$w0,16($3)
	daddu	$3,$2,$5
	st.d	$w0,0($2)
	st.d	$w0,16($2)
	daddu	$2,$3,$5
	st.d	$w0,0($3)
	st.d	$w0,16($3)
	daddu	$3,$2,$5
	st.d	$w0,0($2)
	st.d	$w0,16($2)
	daddu	$2,$3,$5
	st.d	$w0,0($3)
	st.d	$w0,16($3)
	daddu	$3,$2,$5
	st.d	$w0,0($2)
	st.d	$w0,16($2)
	daddu	$2,$3,$5
	st.d	$w0,0($3)
	st.d	$w0,16($3)
	daddu	$5,$2,$5
	st.d	$w0,0($2)
	st.d	$w0,16($2)
	st.d	$w0,0($5)
	jr	$31
	st.d	$w0,16($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls
	.size	_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls, .-_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls
	.type	_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls, @function
_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	ldi.d	$w0,0
	insert.h	$w0[0],$6
	insert.h	$w0[4],$6
	daddu	$8,$4,$5
	shf.h	$w0,$w0,0
	st.d	$w0,0($4)
	st.d	$w0,16($4)
	daddu	$7,$8,$5
	st.d	$w0,32($4)
	st.d	$w0,48($4)
	st.d	$w0,0($8)
	daddu	$9,$7,$5
	st.d	$w0,16($8)
	st.d	$w0,32($8)
	st.d	$w0,48($8)
	daddu	$3,$9,$5
	st.d	$w0,0($7)
	st.d	$w0,16($7)
	st.d	$w0,32($7)
	daddu	$2,$3,$5
	st.d	$w0,48($7)
	st.d	$w0,0($9)
	st.d	$w0,16($9)
	daddu	$8,$2,$5
	st.d	$w0,32($9)
	st.d	$w0,48($9)
	st.d	$w0,0($3)
	daddu	$7,$8,$5
	st.d	$w0,16($3)
	st.d	$w0,32($3)
	st.d	$w0,48($3)
	daddu	$6,$7,$5
	st.d	$w0,0($2)
	st.d	$w0,16($2)
	st.d	$w0,32($2)
	daddu	$4,$6,$5
	st.d	$w0,48($2)
	st.d	$w0,0($8)
	st.d	$w0,16($8)
	daddu	$3,$4,$5
	st.d	$w0,32($8)
	st.d	$w0,48($8)
	st.d	$w0,0($7)
	daddu	$2,$3,$5
	st.d	$w0,16($7)
	st.d	$w0,32($7)
	st.d	$w0,48($7)
	daddu	$10,$2,$5
	st.d	$w0,0($6)
	st.d	$w0,16($6)
	st.d	$w0,32($6)
	daddu	$9,$10,$5
	st.d	$w0,48($6)
	st.d	$w0,0($4)
	st.d	$w0,16($4)
	daddu	$8,$9,$5
	st.d	$w0,32($4)
	st.d	$w0,48($4)
	st.d	$w0,0($3)
	daddu	$7,$8,$5
	st.d	$w0,16($3)
	st.d	$w0,32($3)
	st.d	$w0,48($3)
	daddu	$6,$7,$5
	st.d	$w0,0($2)
	st.d	$w0,16($2)
	st.d	$w0,32($2)
	daddu	$4,$6,$5
	st.d	$w0,48($2)
	st.d	$w0,0($10)
	st.d	$w0,16($10)
	daddu	$3,$4,$5
	st.d	$w0,32($10)
	st.d	$w0,48($10)
	st.d	$w0,0($9)
	daddu	$2,$3,$5
	st.d	$w0,16($9)
	st.d	$w0,32($9)
	st.d	$w0,48($9)
	daddu	$13,$2,$5
	st.d	$w0,0($8)
	st.d	$w0,16($8)
	st.d	$w0,32($8)
	daddu	$12,$13,$5
	st.d	$w0,48($8)
	st.d	$w0,0($7)
	st.d	$w0,16($7)
	daddu	$11,$12,$5
	st.d	$w0,32($7)
	st.d	$w0,48($7)
	st.d	$w0,0($6)
	daddu	$10,$11,$5
	st.d	$w0,16($6)
	st.d	$w0,32($6)
	st.d	$w0,48($6)
	daddu	$9,$10,$5
	st.d	$w0,0($4)
	st.d	$w0,16($4)
	st.d	$w0,32($4)
	daddu	$8,$9,$5
	st.d	$w0,48($4)
	st.d	$w0,0($3)
	st.d	$w0,16($3)
	daddu	$7,$8,$5
	st.d	$w0,32($3)
	st.d	$w0,48($3)
	st.d	$w0,0($2)
	daddu	$6,$7,$5
	st.d	$w0,16($2)
	st.d	$w0,32($2)
	st.d	$w0,48($2)
	daddu	$4,$6,$5
	st.d	$w0,0($13)
	st.d	$w0,16($13)
	st.d	$w0,32($13)
	daddu	$3,$4,$5
	st.d	$w0,48($13)
	st.d	$w0,0($12)
	st.d	$w0,16($12)
	daddu	$2,$3,$5
	st.d	$w0,32($12)
	st.d	$w0,48($12)
	st.d	$w0,0($11)
	daddu	$5,$2,$5
	st.d	$w0,16($11)
	st.d	$w0,32($11)
	st.d	$w0,48($11)
	st.d	$w0,0($10)
	st.d	$w0,16($10)
	st.d	$w0,32($10)
	st.d	$w0,48($10)
	st.d	$w0,0($9)
	st.d	$w0,16($9)
	st.d	$w0,32($9)
	st.d	$w0,48($9)
	st.d	$w0,0($8)
	st.d	$w0,16($8)
	st.d	$w0,32($8)
	st.d	$w0,48($8)
	st.d	$w0,0($7)
	st.d	$w0,16($7)
	st.d	$w0,32($7)
	st.d	$w0,48($7)
	st.d	$w0,0($6)
	st.d	$w0,16($6)
	st.d	$w0,32($6)
	st.d	$w0,48($6)
	st.d	$w0,0($4)
	st.d	$w0,16($4)
	st.d	$w0,32($4)
	st.d	$w0,48($4)
	st.d	$w0,0($3)
	st.d	$w0,16($3)
	st.d	$w0,32($3)
	st.d	$w0,48($3)
	st.d	$w0,0($2)
	st.d	$w0,16($2)
	st.d	$w0,32($2)
	st.d	$w0,48($2)
	st.d	$w0,0($5)
	st.d	$w0,16($5)
	st.d	$w0,32($5)
	jr	$31
	st.d	$w0,48($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls
	.size	_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls, .-_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l
	.type	_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l, @function
_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$3,$4,$5
	daddu	$9,$6,$7
	vbld	$w14,0($6)
	vbld	$w1,0($4)
	daddu	$8,$9,$7
	daddu	$2,$3,$5
	vbld	$w0,0($3)
	vbld	$w13,0($9)
	dlsa	$6,$5,$2,1
	dlsa	$11,$7,$8,1
	vbld	$w4,0($2)
	vextb_u.h	$w14,$w14
	daddu	$4,$6,$5
	daddu	$10,$11,$7
	vextb_u.h	$w13,$w13
	vbld	$w9,0($8)
	daddu	$3,$4,$5
	daddu	$9,$10,$7
	vbld	$w8,0($6)
	vextb_u.h	$w9,$w9
	daddu	$2,$2,$5
	daddu	$12,$8,$7
	vbld	$w6,0($3)
	vbld	$w7,0($4)
	daddu	$5,$3,$5
	daddu	$7,$9,$7
	vbld	$w2,0($2)
	vbld	$w15,0($12)
	vbld	$w3,0($5)
	vextb_u.h	$w15,$w15
	vbld	$w12,0($11)
	vbld	$w11,0($10)
	vextb_u.h	$w12,$w12
	vextb_u.h	$w11,$w11
	vbld	$w10,0($9)
	vbld	$w5,0($7)
	vextb_u.h	$w10,$w10
	vextb_u.h	$w5,$w5
	vextb_u.h	$w1,$w1
	vextb_u.h	$w0,$w0
	subv.h	$w1,$w1,$w14
	subv.h	$w0,$w0,$w13
	vextb_u.h	$w4,$w4
	vextb_u.h	$w2,$w2
	subv.h	$w4,$w4,$w9
	subv.h	$w2,$w2,$w15
	vextb_u.h	$w8,$w8
	vextb_u.h	$w7,$w7
	subv.h	$w8,$w8,$w12
	subv.h	$w7,$w7,$w11
	vextb_u.h	$w6,$w6
	vextb_u.h	$w3,$w3
	subv.h	$w6,$w6,$w10
	subv.h	$w3,$w3,$w5
	dotp_s.w	$w1,$w1,$w1
	dotp_s.w	$w0,$w0,$w0
	dpadd_s.w	$w1,$w8,$w8
	dpadd_s.w	$w0,$w7,$w7
	dotp_s.w	$w4,$w4,$w4
	addv.w	$w0,$w1,$w0
	dpadd_s.w	$w4,$w6,$w6
	dotp_s.w	$w2,$w2,$w2
	dpadd_s.w	$w2,$w3,$w3
	addv.w	$w2,$w4,$w2
	addv.w	$w0,$w0,$w2
	copy_s.w	$2,$w0[1]
	copy_s.w	$3,$w0[0]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[2]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[3]
	jr	$31
	addu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l
	.size	_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l, .-_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l
	.type	_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l, @function
_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$2,$4,8
	ldi.w	$w12,0
	move.v	$w15,$w12
	sd	$16,0($sp)
	dsll	$16,$5,1
	dsll	$25,$7,1
	move.v	$w13,$w12
	sd	$20,32($sp)
	daddiu	$3,$6,8
	daddu	$20,$16,$5
	move.v	$w14,$w12
	sd	$19,24($sp)
	li	$24,4			# 0x4
	daddu	$19,$25,$7
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,2
.L1820:
	daddu	$10,$2,$5
	daddu	$9,$3,$7
	vbld	$w1,0($3)
	vbld	$w0,0($2)
	daddu	$13,$10,$5
	daddu	$3,$4,$5
	vbld	$w6,0($10)
	vbld	$w8,0($4)
	daddu	$8,$7,$9
	vbld	$w7,0($3)
	daddu	$15,$16,$4
	vbld	$w19,0($6)
	daddu	$14,$20,$4
	daddu	$2,$5,$13
	vextb_u.h	$w17,$w7
	vextb_u.h	$w10,$w6
	daddu	$12,$6,$7
	daddu	$11,$25,$6
	vbld	$w5,0($15)
	vbld	$w4,0($13)
	daddu	$10,$19,$6
	daddu	$3,$7,$8
	vextb_u.h	$w16,$w5
	vextb_u.h	$w9,$w4
	addiu	$24,$24,-1
	vbld	$w3,0($14)
	vbld	$w2,0($2)
	vextb_u.h	$w11,$w3
	vbld	$w18,0($3)
	vextb_u.h	$w8,$w8
	vextb_u.h	$w0,$w0
	vextb_u.h	$w2,$w2
	vextb_u.h	$w19,$w19
	vextb_u.h	$w1,$w1
	vbld	$w7,0($12)
	vbld	$w6,0($9)
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	vbld	$w5,0($11)
	vbld	$w4,0($8)
	vextb_u.h	$w5,$w5
	vextb_u.h	$w4,$w4
	vbld	$w3,0($10)
	vextb_u.h	$w18,$w18
	vextb_u.h	$w3,$w3
	subv.h	$w8,$w8,$w19
	subv.h	$w1,$w0,$w1
	subv.h	$w7,$w17,$w7
	subv.h	$w6,$w10,$w6
	subv.h	$w5,$w16,$w5
	subv.h	$w4,$w9,$w4
	subv.h	$w3,$w11,$w3
	subv.h	$w2,$w2,$w18
	dpadd_s.w	$w12,$w8,$w8
	dpadd_s.w	$w15,$w1,$w1
	dpadd_s.w	$w13,$w7,$w7
	dpadd_s.w	$w14,$w6,$w6
	dpadd_s.w	$w12,$w5,$w5
	dpadd_s.w	$w15,$w4,$w4
	dpadd_s.w	$w13,$w3,$w3
	dpadd_s.w	$w14,$w2,$w2
	daddu	$4,$4,$18
	daddu	$6,$6,$17
	daddu	$2,$5,$2
	bne	$24,$0,.L1820
	daddu	$3,$7,$3

	addv.w	$w1,$w12,$w15
	addv.w	$w0,$w13,$w14
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$4,$w0[2]
	ld	$20,32($sp)
	addu	$2,$2,$4
	ld	$19,24($sp)
	copy_s.w	$3,$w0[3]
	ld	$18,16($sp)
	addu	$2,$2,$3
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l
	.size	_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l, .-_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l
	.type	_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l, @function
_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,64			# 0x40
	ldi.w	$w8,0
	move.v	$w11,$w8
	move.v	$w9,$w8
	move.v	$w10,$w8
	.align	3
.L1824:
	addiu	$2,$2,-1
	vbld	$w7,0($4)
	vbld	$w6,8($4)
	vbld	$w5,16($4)
	vbld	$w4,24($4)
	vbld	$w3,32($4)
	vbld	$w2,40($4)
	vbld	$w1,48($4)
	vbld	$w0,56($4)
	vbld	$w19,0($6)
	vbld	$w18,8($6)
	vbld	$w17,16($6)
	vbld	$w16,24($6)
	vbld	$w15,32($6)
	vbld	$w14,40($6)
	vbld	$w13,48($6)
	vbld	$w12,56($6)
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	vextb_u.h	$w5,$w5
	vextb_u.h	$w4,$w4
	vextb_u.h	$w3,$w3
	vextb_u.h	$w2,$w2
	vextb_u.h	$w1,$w1
	vextb_u.h	$w0,$w0
	vextb_u.h	$w19,$w19
	vextb_u.h	$w18,$w18
	vextb_u.h	$w17,$w17
	vextb_u.h	$w16,$w16
	vextb_u.h	$w15,$w15
	vextb_u.h	$w14,$w14
	vextb_u.h	$w13,$w13
	vextb_u.h	$w12,$w12
	subv.h	$w7,$w7,$w19
	subv.h	$w6,$w6,$w18
	subv.h	$w5,$w5,$w17
	subv.h	$w4,$w4,$w16
	subv.h	$w3,$w3,$w15
	subv.h	$w2,$w2,$w14
	subv.h	$w1,$w1,$w13
	subv.h	$w0,$w0,$w12
	dpadd_s.w	$w8,$w7,$w7
	dpadd_s.w	$w11,$w6,$w6
	dpadd_s.w	$w9,$w5,$w5
	dpadd_s.w	$w10,$w4,$w4
	dpadd_s.w	$w8,$w3,$w3
	dpadd_s.w	$w11,$w2,$w2
	dpadd_s.w	$w9,$w1,$w1
	dpadd_s.w	$w10,$w0,$w0
	daddu	$4,$4,$5
	bne	$2,$0,.L1824
	daddu	$6,$6,$7

	addv.w	$w8,$w8,$w11
	addv.w	$w9,$w9,$w10
	addv.w	$w8,$w8,$w9
	copy_s.w	$2,$w8[1]
	copy_s.w	$3,$w8[0]
	addu	$3,$3,$2
	copy_s.w	$4,$w8[2]
	copy_s.w	$2,$w8[3]
	addu	$3,$3,$4
	jr	$31
	addu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l
	.size	_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l, .-_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l
	.type	_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l, @function
_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	li	$14,16			# 0x10
	ldi.w	$w12,0
	move.v	$w15,$w12
	sd	$20,32($sp)
	dsll	$20,$5,1
	daddiu	$25,$7,8
	move.v	$w13,$w12
	sd	$19,24($sp)
	daddiu	$24,$7,16
	dsll	$19,$7,1
	move.v	$w14,$w12
	sd	$18,16($sp)
	daddiu	$15,$7,24
	daddiu	$18,$5,8
	sd	$17,8($sp)
	daddiu	$17,$5,16
	sd	$16,0($sp)
	daddiu	$16,$5,24
	.align	3
.L1828:
	daddu	$13,$4,$5
	daddu	$12,$4,$18
	vbld	$w7,0($4)
	vbld	$w6,8($4)
	daddu	$11,$4,$17
	daddu	$10,$4,$16
	vbld	$w5,16($4)
	vbld	$w4,24($4)
	daddu	$9,$6,$7
	daddu	$8,$6,$25
	vbld	$w19,0($6)
	vbld	$w18,8($6)
	daddu	$3,$6,$24
	daddu	$2,$6,$15
	vbld	$w17,16($6)
	vbld	$w16,24($6)
	addiu	$14,$14,-1
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	vextb_u.h	$w5,$w5
	vextb_u.h	$w4,$w4
	vbld	$w3,0($13)
	vbld	$w2,0($12)
	vextb_u.h	$w3,$w3
	vextb_u.h	$w2,$w2
	vbld	$w1,0($11)
	vbld	$w0,0($10)
	vextb_u.h	$w1,$w1
	vextb_u.h	$w0,$w0
	vextb_u.h	$w19,$w19
	vextb_u.h	$w18,$w18
	vextb_u.h	$w17,$w17
	vextb_u.h	$w16,$w16
	vbld	$w11,0($9)
	vbld	$w10,0($8)
	vextb_u.h	$w11,$w11
	vextb_u.h	$w10,$w10
	vbld	$w9,0($3)
	vbld	$w8,0($2)
	vextb_u.h	$w9,$w9
	vextb_u.h	$w8,$w8
	subv.h	$w7,$w7,$w19
	subv.h	$w6,$w6,$w18
	subv.h	$w5,$w5,$w17
	subv.h	$w4,$w4,$w16
	subv.h	$w3,$w3,$w11
	subv.h	$w2,$w2,$w10
	subv.h	$w1,$w1,$w9
	subv.h	$w0,$w0,$w8
	dpadd_s.w	$w12,$w7,$w7
	dpadd_s.w	$w15,$w6,$w6
	dpadd_s.w	$w13,$w5,$w5
	dpadd_s.w	$w14,$w4,$w4
	dpadd_s.w	$w12,$w3,$w3
	dpadd_s.w	$w15,$w2,$w2
	dpadd_s.w	$w13,$w1,$w1
	dpadd_s.w	$w14,$w0,$w0
	daddu	$4,$4,$20
	bne	$14,$0,.L1828
	daddu	$6,$6,$19

	addv.w	$w12,$w12,$w15
	addv.w	$w13,$w13,$w14
	addv.w	$w12,$w12,$w13
	copy_s.w	$2,$w12[1]
	copy_s.w	$3,$w12[0]
	addu	$3,$3,$2
	copy_s.w	$4,$w12[2]
	ld	$20,32($sp)
	addu	$3,$3,$4
	ld	$19,24($sp)
	copy_s.w	$2,$w12[3]
	ld	$18,16($sp)
	addu	$2,$3,$2
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l
	.size	_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l, .-_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l
	.type	_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l, @function
_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$9,$4,$5
	daddu	$8,$6,$7
	vblw	$w1,0($4)
	vblw	$w0,0($6)
	daddu	$2,$9,$5
	daddu	$3,$8,$7
	vblw	$w3,0($9)
	vblw	$w5,0($8)
	daddu	$5,$2,$5
	daddu	$7,$3,$7
	vblw	$w2,0($2)
	insve.w	$w1[1],$w3[0]
	vblw	$w4,0($7)
	vblw	$w3,0($5)
	vextb_u.h	$w1,$w1
	insve.w	$w2[1],$w3[0]
	insve.w	$w0[1],$w5[0]
	vblw	$w3,0($3)
	vextb_u.h	$w2,$w2
	insve.w	$w3[1],$w4[0]
	vextb_u.h	$w0,$w0
	vextb_u.h	$w3,$w3
	subv.h	$w0,$w1,$w0
	subv.h	$w1,$w2,$w3
	dotp_s.w	$w0,$w0,$w0
	dpadd_s.w	$w0,$w1,$w1
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$4,$w0[2]
	copy_s.w	$3,$w0[3]
	addu	$2,$2,$4
	jr	$31
	addu	$2,$2,$3

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l
	.size	_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l, .-_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
	.type	_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l, @function
_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$9,$4,$5
	daddu	$8,$6,$7
	vblw	$w3,0($4)
	vblw	$w1,0($6)
	daddu	$3,$9,$5
	daddu	$2,$8,$7
	vblw	$w2,0($9)
	vblw	$w0,0($8)
	daddu	$5,$3,$5
	daddu	$7,$2,$7
	insve.w	$w3[1],$w2[0]
	insve.w	$w1[1],$w0[0]
	vblw	$w2,0($3)
	vblw	$w4,0($5)
	vblw	$w0,0($2)
	insve.w	$w2[1],$w4[0]
	hadd_u.h	$w5,$w3,$w3
	vblw	$w4,0($7)
	hadd_u.h	$w7,$w1,$w1
	insve.w	$w0[1],$w4[0]
	hsub_u.h	$w3,$w3,$w3
	hadd_u.h	$w4,$w2,$w2
	hadd_u.h	$w6,$w0,$w0
	ilvr.w	$w3,$w3,$w5
	hsub_u.h	$w2,$w2,$w2
	hsub_u.h	$w1,$w1,$w1
	ilvr.w	$w2,$w2,$w4
	ilvr.w	$w1,$w1,$w7
	hsub_u.h	$w0,$w0,$w0
	subv.h	$w1,$w3,$w1
	ilvr.w	$w0,$w0,$w6
	subv.h	$w2,$w2,$w0
	addv.h	$w0,$w1,$w2
	subv.h	$w2,$w2,$w1
	move.v	$w1,$w0
	insve.d	$w1[1],$w2[0]
	ilvl.d	$w2,$w2,$w0
	move.v	$w3,$w1
	addv.h	$w1,$w1,$w2
	subv.h	$w2,$w2,$w3
	ilvod.h	$w0,$w2,$w1
	ilvev.h	$w2,$w2,$w1
	vabs.h	$w0,$w0
	vabs.h	$w2,$w2
	max_s.h	$w0,$w0,$w2
	hadd_s.w	$w0,$w0,$w0
	copy_s.w	$2,$w0[1]
	copy_s.w	$3,$w0[0]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[2]
	addu	$3,$3,$2
	copy_s.w	$2,$w0[3]
	jr	$31
	addu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
	.size	_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l, .-_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$24,$5
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l)))
	move	$15,$7
	daddu	$28,$28,$25
	sd	$17,8($sp)
	move	$13,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l)))
	sd	$16,0($sp)
	dsll	$17,$5,2
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	dsll	$16,$7,2
	move	$12,$6
	li	$11,8			# 0x8
	move	$14,$0
	sd	$31,24($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	.align	3
.L1836:
	move	$6,$12
	move	$4,$13
	move	$7,$15
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$24

	addu	$2,$2,$14
	addiu	$11,$11,-1
	daddu	$13,$13,$17
	move	$14,$2
	bne	$11,$0,.L1836
	daddu	$12,$12,$16

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	move	$24,$7
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l)))
	move	$14,$4
	daddu	$28,$28,$25
	sd	$20,40($sp)
	move	$13,$0
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l)))
	sd	$19,32($sp)
	dsll	$20,$5,2
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	dsll	$19,$7,2
	sd	$18,24($sp)
	move	$18,$6
	sd	$17,16($sp)
	li	$17,8			# 0x8
	sd	$16,8($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	move	$16,$5
	sd	$31,56($sp)
	.align	3
.L1841:
	daddiu	$15,$14,12
	move	$12,$18
	move	$11,$14
.L1840:
	move	$6,$12
	move	$4,$11
	move	$7,$24
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$16

	addu	$2,$2,$13
	daddiu	$11,$11,4
	daddiu	$12,$12,4
	bne	$11,$15,.L1840
	move	$13,$2

	addiu	$17,$17,-1
	daddu	$14,$14,$20
	bne	$17,$0,.L1841
	daddu	$18,$18,$19

	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$12,$5
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$14,$7

	move	$7,$14
	daddiu	$6,$6,4
	move	$5,$12
	daddiu	$4,$4,4
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$11,$2

	ld	$31,8($sp)
	ld	$28,0($sp)
	addu	$2,$2,$11
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$24,$5
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l)))
	move	$15,$7
	daddu	$28,$28,$25
	sd	$17,8($sp)
	move	$13,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l)))
	sd	$16,0($sp)
	dsll	$17,$5,2
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	dsll	$16,$7,2
	move	$12,$6
	li	$14,3			# 0x3
	move	$11,$0
	sd	$31,24($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
.L1848:
	move	$6,$12
	move	$4,$13
	move	$7,$15
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$24

	daddiu	$6,$12,4
	daddiu	$4,$13,4
	move	$7,$15
	move	$5,$24
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	addu	$11,$2,$11

	addu	$2,$2,$11
	addiu	$14,$14,-1
	daddu	$13,$13,$17
	move	$11,$2
	bne	$14,$0,.L1848
	daddu	$12,$12,$16

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$11,$4
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l)))
	move	$24,$5
	daddu	$28,$28,$25
	move	$15,$7
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l)))
	move	$12,$6
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	daddiu	$14,$4,16
	move	$13,$0
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
.L1852:
	move	$6,$12
	move	$4,$11
	move	$7,$15
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$24

	addu	$2,$2,$13
	daddiu	$11,$11,4
	daddiu	$12,$12,4
	bne	$11,$14,.L1852
	move	$13,$2

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	move	$24,$5
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l)))
	move	$15,$7
	daddu	$28,$28,$25
	sd	$20,40($sp)
	move	$13,$0
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l)))
	sd	$19,32($sp)
	dsll	$20,$5,2
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	dsll	$19,$7,2
	sd	$18,24($sp)
	move	$18,$6
	sd	$17,16($sp)
	li	$17,3			# 0x3
	sd	$16,8($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	move	$16,$4
	sd	$31,56($sp)
.L1857:
	daddiu	$14,$16,16
	move	$12,$18
	move	$11,$16
.L1856:
	move	$6,$12
	move	$4,$11
	move	$7,$15
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$24

	addu	$2,$2,$13
	daddiu	$11,$11,4
	daddiu	$12,$12,4
	bne	$11,$14,.L1856
	move	$13,$2

	addiu	$17,$17,-1
	daddu	$16,$16,$20
	bne	$17,$0,.L1857
	daddu	$18,$18,$19

	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$24,$5
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)))
	move	$15,$7
	daddu	$28,$28,$25
	sd	$17,8($sp)
	move	$13,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)))
	sd	$16,0($sp)
	dsll	$17,$5,2
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	dsll	$16,$7,2
	move	$12,$6
	li	$11,4			# 0x4
	move	$14,$0
	sd	$31,24($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
.L1862:
	move	$6,$12
	move	$4,$13
	move	$7,$15
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$24

	addu	$2,$2,$14
	addiu	$11,$11,-1
	daddu	$13,$13,$17
	move	$14,$2
	bne	$11,$0,.L1862
	daddu	$12,$12,$16

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	move	$24,$7
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l)))
	move	$14,$4
	daddu	$28,$28,$25
	sd	$20,40($sp)
	move	$13,$0
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l)))
	sd	$19,32($sp)
	dsll	$20,$5,2
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	dsll	$19,$7,2
	sd	$18,24($sp)
	move	$18,$6
	sd	$17,16($sp)
	li	$17,4			# 0x4
	sd	$16,8($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	move	$16,$5
	sd	$31,56($sp)
.L1867:
	daddiu	$15,$14,12
	move	$12,$18
	move	$11,$14
.L1866:
	move	$6,$12
	move	$4,$11
	move	$7,$24
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$16

	addu	$2,$2,$13
	daddiu	$11,$11,4
	daddiu	$12,$12,4
	bne	$11,$15,.L1866
	move	$13,$2

	addiu	$17,$17,-1
	daddu	$14,$14,$20
	bne	$17,$0,.L1867
	daddu	$18,$18,$19

	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$12,$5
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$14,$7

	move	$7,$14
	dlsa	$6,$14,$6,2
	move	$5,$12
	dlsa	$4,$12,$4,2
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$11,$2

	ld	$31,8($sp)
	ld	$28,0($sp)
	addu	$2,$2,$11
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l
	.type	_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l, @function
_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$3,$6,$7
	daddu	$8,$4,$5
	vblw	$w0,0($4)
	vblw	$w2,0($6)
	daddu	$2,$3,$7
	daddu	$4,$8,$5
	vblw	$w1,0($8)
	vblw	$w5,0($3)
	daddu	$7,$2,$7
	daddu	$5,$4,$5
	vblw	$w3,0($4)
	vblw	$w4,0($2)
	insve.w	$w0[1],$w1[0]
	vblw	$w1,0($5)
	insve.w	$w0[2],$w3[0]
	vblw	$w3,0($7)
	insve.w	$w0[3],$w1[0]
	move.v	$w1,$w0
	move.v	$w0,$w2
	insve.w	$w0[1],$w5[0]
	insve.w	$w0[2],$w4[0]
	insve.w	$w0[3],$w3[0]
	asub_u.b	$w0,$w1,$w0
	vacc8b_u.d	$w0,$w0
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	jr	$31
	addu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l
	.size	_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l, .-_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_l:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$24,$7
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_l)))
	move	$15,$6
	daddu	$28,$28,$25
	move	$7,$0
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_l)))
	move	$12,$5
	ld	$14,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	ld	$13,%got_page(_ZZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_lE7zeroBuf)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	move	$25,$14
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	daddiu	$6,$13,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_lE7zeroBuf)

	move	$7,$0
	move	$5,$12
	ld	$12,%got_page(_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l)($28)
	daddiu	$6,$13,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_lE7zeroBuf)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l)
	move	$25,$12
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l
1:	jalr	$25
	move	$11,$2

	move	$7,$0
	move	$5,$24
	daddiu	$6,$13,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_lE7zeroBuf)
	move	$25,$14
	move	$4,$15
	sra	$2,$2,2
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	subu	$11,$11,$2

	move	$7,$0
	daddiu	$6,$13,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_lE7zeroBuf)
	move	$5,$24
	move	$25,$12
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l
1:	jalr	$25
	move	$10,$2

	ld	$31,8($sp)
	sra	$3,$2,2
	ld	$28,0($sp)
	daddiu	$sp,$sp,16
	subu	$3,$10,$3
	subu	$3,$11,$3
	sra	$2,$3,31
	xor	$3,$2,$3
	jr	$31
	subu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x107f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$14,$9,2
	daddiu	$sp,$sp,-64
	daddu	$3,$5,$14
	sd	$22,48($sp)
	daddu	$25,$6,$14
	sd	$21,40($sp)
	daddu	$2,$3,$9
	daddu	$13,$6,$9
	sd	$20,32($sp)
	daddu	$24,$7,$14
	daddu	$11,$13,$9
	sd	$19,24($sp)
	daddu	$12,$7,$9
	daddu	$14,$8,$14
	sd	$18,16($sp)
	daddu	$20,$14,$9
	daddu	$15,$8,$9
	sd	$17,8($sp)
	daddu	$17,$25,$9
	daddu	$19,$20,$9
	sd	$16,0($sp)
	vbld	$w2,0($5)
	daddu	$5,$5,$9
	vbld	$w0,0($3)
	vbld	$w8,0($5)
	insve.d	$w2[1],$w0[0]
	daddu	$5,$5,$9
	vbld	$w0,0($2)
	daddu	$2,$2,$9
	daddu	$18,$17,$9
	vbld	$w6,0($5)
	insve.d	$w8[1],$w0[0]
	daddu	$16,$24,$9
	vbld	$w0,0($2)
	daddu	$5,$5,$9
	vbld	$w11,320($4)
	daddu	$2,$2,$9
	vbld	$w10,384($4)
	daddu	$21,$16,$9
	vbld	$w1,0($4)
	vbld	$w5,64($4)
	vbld	$w3,128($4)
	insve.d	$w5[1],$w11[0]
	insve.d	$w3[1],$w10[0]
	vbld	$w4,192($4)
	vbld	$w12,256($4)
	daddu	$3,$12,$9
	insve.d	$w1[1],$w12[0]
	daddu	$22,$18,$9
	move.v	$w9,$w8
	insve.d	$w6[1],$w0[0]
	vbld	$w8,0($2)
	vbld	$w0,0($5)
	move.v	$w7,$w6
	insve.d	$w0[1],$w8[0]
	vbld	$w6,448($4)
	asub_u.b	$w8,$w5,$w9
	insve.d	$w4[1],$w6[0]
	daddu	$4,$11,$9
	asub_u.b	$w6,$w3,$w7
	asub_u.b	$w2,$w1,$w2
	vacc8b_u.d	$w7,$w8
	asub_u.b	$w0,$w4,$w0
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w0,$w0
	addv.d	$w2,$w2,$w7
	addv.d	$w0,$w6,$w0
	addv.d	$w0,$w2,$w0
	copy_s.w	$5,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$5,$2
	sw	$2,0($10)
	daddu	$5,$15,$9
	vbld	$w9,0($17)
	vbld	$w0,0($6)
	vbld	$w2,0($11)
	vbld	$w7,0($4)
	vbld	$w10,0($25)
	daddu	$4,$3,$9
	daddu	$11,$21,$9
	vbld	$w6,0($13)
	insve.d	$w0[1],$w10[0]
	vbld	$w8,0($18)
	insve.d	$w6[1],$w9[0]
	vbld	$w11,0($22)
	insve.d	$w2[1],$w8[0]
	insve.d	$w7[1],$w11[0]
	asub_u.b	$w0,$w1,$w0
	asub_u.b	$w6,$w5,$w6
	asub_u.b	$w2,$w3,$w2
	asub_u.b	$w7,$w4,$w7
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w2,$w2
	addv.d	$w0,$w0,$w6
	addv.d	$w2,$w2,$w7
	addv.d	$w0,$w0,$w2
	copy_s.w	$6,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$6,$2
	daddu	$6,$5,$9
	ld	$22,48($sp)
	sw	$2,4($10)
	daddu	$9,$19,$9
	vbld	$w9,0($16)
	vbld	$w2,0($3)
	vbld	$w8,0($24)
	vbld	$w6,0($12)
	vbld	$w7,0($4)
	vbld	$w0,0($7)
	insve.d	$w6[1],$w9[0]
	insve.d	$w0[1],$w8[0]
	vbld	$w9,0($11)
	vbld	$w8,0($21)
	insve.d	$w7[1],$w9[0]
	insve.d	$w2[1],$w8[0]
	asub_u.b	$w0,$w1,$w0
	asub_u.b	$w6,$w5,$w6
	asub_u.b	$w2,$w3,$w2
	asub_u.b	$w7,$w4,$w7
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w2,$w2
	addv.d	$w0,$w0,$w6
	addv.d	$w2,$w2,$w7
	addv.d	$w0,$w0,$w2
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,8($10)
	vbld	$w10,0($20)
	vbld	$w9,0($19)
	vbld	$w7,0($15)
	vbld	$w6,0($5)
	vbld	$w8,0($6)
	vbld	$w11,0($14)
	vbld	$w0,0($9)
	vbld	$w2,0($8)
	insve.d	$w7[1],$w10[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w6[1],$w9[0]
	insve.d	$w8[1],$w0[0]
	asub_u.b	$w1,$w1,$w2
	asub_u.b	$w5,$w5,$w7
	asub_u.b	$w3,$w3,$w6
	asub_u.b	$w4,$w4,$w8
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w4,$w4
	addv.d	$w1,$w1,$w5
	addv.d	$w3,$w3,$w4
	addv.d	$w1,$w1,$w3
	copy_s.w	$3,$w1[0]
	copy_s.w	$2,$w1[2]
	addu	$2,$3,$2
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	daddiu	$sp,$sp,64
	jr	$31
	sw	$2,12($10)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi, .-_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x10030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$11,$8,2
	daddiu	$sp,$sp,-32
	daddu	$2,$5,$11
	sd	$17,16($sp)
	daddu	$25,$6,$11
	sd	$16,8($sp)
	daddu	$10,$2,$8
	vbld	$w0,0($5)
	daddu	$5,$5,$8
	vbld	$w1,0($2)
	vbld	$w2,0($5)
	daddu	$2,$5,$8
	daddu	$16,$25,$8
	daddu	$5,$6,$8
	insve.d	$w0[1],$w1[0]
	daddu	$11,$7,$11
	vbld	$w1,0($10)
	daddu	$10,$10,$8
	vbld	$w7,0($2)
	daddu	$3,$5,$8
	insve.d	$w2[1],$w1[0]
	daddu	$24,$16,$8
	vbld	$w1,0($10)
	daddu	$12,$7,$8
	vbld	$w11,320($4)
	daddu	$15,$11,$8
	daddu	$2,$2,$8
	vbld	$w10,384($4)
	vbld	$w6,64($4)
	daddu	$10,$10,$8
	vbld	$w4,128($4)
	vbld	$w5,192($4)
	vbld	$w12,256($4)
	vbld	$w9,0($10)
	vbld	$w3,0($2)
	insve.d	$w6[1],$w11[0]
	insve.d	$w4[1],$w10[0]
	insve.d	$w7[1],$w1[0]
	daddu	$10,$12,$8
	vbld	$w1,0($4)
	move.v	$w8,$w7
	insve.d	$w1[1],$w12[0]
	vbld	$w7,448($4)
	daddu	$17,$24,$8
	insve.d	$w5[1],$w7[0]
	daddu	$4,$3,$8
	asub_u.b	$w7,$w4,$w8
	daddu	$14,$15,$8
	insve.d	$w3[1],$w9[0]
	asub_u.b	$w0,$w1,$w0
	asub_u.b	$w2,$w6,$w2
	asub_u.b	$w3,$w5,$w3
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w3,$w3
	addv.d	$w0,$w0,$w2
	addv.d	$w3,$w7,$w3
	addv.d	$w0,$w0,$w3
	copy_s.w	$13,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$13,$2
	daddu	$13,$10,$8
	sw	$2,0($9)
	daddu	$8,$14,$8
	vbld	$w9,0($16)
	vbld	$w2,0($3)
	vbld	$w8,0($24)
	vbld	$w11,0($17)
	vbld	$w0,0($6)
	vbld	$w3,0($5)
	vbld	$w7,0($4)
	vbld	$w10,0($25)
	insve.d	$w3[1],$w9[0]
	insve.d	$w2[1],$w8[0]
	asub_u.b	$w3,$w6,$w3
	asub_u.b	$w2,$w4,$w2
	vacc8b_u.d	$w3,$w3
	insve.d	$w0[1],$w10[0]
	insve.d	$w7[1],$w11[0]
	asub_u.b	$w0,$w1,$w0
	asub_u.b	$w7,$w5,$w7
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w7,$w7
	addv.d	$w0,$w0,$w3
	vacc8b_u.d	$w2,$w2
	addv.d	$w2,$w2,$w7
	addv.d	$w0,$w0,$w2
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,4($9)
	vbld	$w2,0($7)
	vbld	$w7,0($12)
	vbld	$w3,0($10)
	vbld	$w9,0($11)
	vbld	$w0,0($15)
	vbld	$w8,0($13)
	insve.d	$w2[1],$w9[0]
	insve.d	$w7[1],$w0[0]
	vbld	$w9,0($14)
	vbld	$w0,0($8)
	insve.d	$w3[1],$w9[0]
	insve.d	$w8[1],$w0[0]
	asub_u.b	$w1,$w1,$w2
	asub_u.b	$w6,$w6,$w7
	asub_u.b	$w4,$w4,$w3
	asub_u.b	$w5,$w5,$w8
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w5,$w5
	addv.d	$w1,$w1,$w6
	addv.d	$w4,$w4,$w5
	addv.d	$w1,$w1,$w4
	copy_s.w	$3,$w1[0]
	copy_s.w	$2,$w1[2]
	addu	$2,$3,$2
	ld	$17,16($sp)
	ld	$16,8($sp)
	daddiu	$sp,$sp,32
	jr	$31
	sw	$2,8($9)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi, .-_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
	.type	_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l, @function
_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$3,$4,$5
	daddu	$8,$6,$7
	vbld	$w0,0($4)
	vbld	$w8,0($6)
	daddu	$2,$3,$5
	daddu	$4,$8,$7
	vbld	$w4,0($3)
	vbld	$w7,0($8)
	dlsa	$3,$7,$4,1
	dlsa	$8,$5,$2,1
	vbld	$w5,0($2)
	vbld	$w12,0($4)
	daddu	$9,$8,$5
	daddu	$6,$3,$7
	vbld	$w6,0($8)
	vbld	$w11,0($3)
	daddu	$8,$9,$5
	daddu	$3,$6,$7
	vbld	$w2,0($9)
	insve.d	$w0[1],$w6[0]
	daddu	$2,$2,$5
	daddu	$4,$4,$7
	move.v	$w1,$w0
	vbld	$w6,0($8)
	daddu	$7,$3,$7
	daddu	$5,$8,$5
	insve.d	$w4[1],$w2[0]
	insve.d	$w5[1],$w6[0]
	vbld	$w2,0($2)
	vbld	$w3,0($5)
	vbld	$w9,0($3)
	insve.d	$w2[1],$w3[0]
	vbld	$w6,0($4)
	vbld	$w3,0($7)
	vbld	$w10,0($6)
	insve.d	$w6[1],$w3[0]
	move.v	$w0,$w8
	insve.d	$w7[1],$w10[0]
	insve.d	$w0[1],$w11[0]
	asub_u.b	$w3,$w4,$w7
	move.v	$w8,$w12
	asub_u.b	$w0,$w1,$w0
	insve.d	$w8[1],$w9[0]
	asub_u.b	$w1,$w2,$w6
	asub_u.b	$w4,$w5,$w8
	vacc8b_u.d	$w2,$w3
	vacc8b_u.d	$w3,$w4
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w1,$w1
	addv.d	$w0,$w0,$w2
	addv.d	$w1,$w3,$w1
	addv.d	$w0,$w0,$w1
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	jr	$31
	addu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
	.size	_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l, .-_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,3
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$17,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l)))
	sd	$16,40($sp)
	ld	$17,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	ld	$24,%got_page(_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf)($28)
	ld	$16,%got_page(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)($28)
	sd	$2,8($sp)
	dsll	$2,$7,3
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	sd	$fp,112($sp)
	daddiu	$24,$24,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf)
	move	$fp,$0
	sd	$23,96($sp)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)
	move	$23,$6
	sd	$21,80($sp)
	move	$21,$4
	sd	$19,64($sp)
	move	$19,$5
	sd	$18,56($sp)
	move	$18,$7
	sd	$2,16($sp)
	li	$2,8			# 0x8
	sd	$31,120($sp)
	sd	$22,88($sp)
	sd	$20,72($sp)
	sd	$2,0($sp)
	.align	3
.L1885:
	daddiu	$20,$21,64
	move	$15,$23
	move	$14,$21
	.align	3
.L1884:
	move	$6,$24
	move	$4,$14
	move	$5,$19
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	move	$7,$0

	move	$5,$19
	move	$6,$24
	move	$4,$14
	move	$7,$0
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
1:	jalr	$25
	move	$22,$2

	move	$5,$18
	move	$4,$15
	move	$6,$24
	sra	$2,$2,2
	move	$7,$0
	move	$25,$17
	subu	$22,$22,$2
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	daddiu	$14,$14,8

	move	$7,$0
	move	$4,$15
	move	$6,$24
	move	$5,$18
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
1:	jalr	$25
	move	$11,$2

	sra	$2,$2,2
	daddiu	$15,$15,8
	subu	$2,$11,$2
	subu	$2,$22,$2
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	bne	$14,$20,.L1884
	addu	$fp,$2,$fp

	ld	$3,8($sp)
	ld	$2,0($sp)
	daddu	$21,$21,$3
	ld	$3,16($sp)
	addiu	$2,$2,-1
	sd	$2,0($sp)
	bne	$2,$0,.L1885
	daddu	$23,$23,$3

	ld	$31,120($sp)
	move	$2,$fp
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
	.end	_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,3
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$17,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l)))
	sd	$16,40($sp)
	ld	$17,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	ld	$24,%got_page(_ZZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_lE7zeroBuf)($28)
	ld	$16,%got_page(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)($28)
	sd	$2,8($sp)
	dsll	$2,$7,3
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	sd	$fp,112($sp)
	daddiu	$24,$24,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_lE7zeroBuf)
	move	$fp,$0
	sd	$23,96($sp)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)
	move	$23,$6
	sd	$21,80($sp)
	move	$21,$4
	sd	$19,64($sp)
	move	$19,$5
	sd	$18,56($sp)
	move	$18,$7
	sd	$2,16($sp)
	li	$2,4			# 0x4
	sd	$31,120($sp)
	sd	$22,88($sp)
	sd	$20,72($sp)
	sd	$2,0($sp)
.L1891:
	daddiu	$20,$21,32
	move	$15,$23
	move	$14,$21
.L1890:
	move	$6,$24
	move	$4,$14
	move	$5,$19
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	move	$7,$0

	move	$5,$19
	move	$6,$24
	move	$4,$14
	move	$7,$0
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
1:	jalr	$25
	move	$22,$2

	move	$5,$18
	move	$4,$15
	move	$6,$24
	sra	$2,$2,2
	move	$7,$0
	move	$25,$17
	subu	$22,$22,$2
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	daddiu	$14,$14,8

	move	$7,$0
	move	$4,$15
	move	$6,$24
	move	$5,$18
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
1:	jalr	$25
	move	$11,$2

	sra	$2,$2,2
	daddiu	$15,$15,8
	subu	$2,$11,$2
	subu	$2,$22,$2
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	bne	$14,$20,.L1890
	addu	$fp,$2,$fp

	ld	$3,8($sp)
	ld	$2,0($sp)
	daddu	$21,$21,$3
	ld	$3,16($sp)
	addiu	$2,$2,-1
	sd	$2,0($sp)
	bne	$2,$0,.L1891
	daddu	$23,$23,$3

	ld	$31,120($sp)
	move	$2,$fp
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
	.end	_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,3
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$17,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l)))
	sd	$16,40($sp)
	ld	$17,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	ld	$15,%got_page(_ZZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_lE7zeroBuf)($28)
	ld	$16,%got_page(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)($28)
	sd	$2,8($sp)
	dsll	$2,$7,3
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	sd	$fp,112($sp)
	daddiu	$15,$15,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_lE7zeroBuf)
	move	$fp,$4
	sd	$23,96($sp)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)
	move	$23,$0
	sd	$20,72($sp)
	move	$20,$6
	sd	$19,64($sp)
	move	$19,$5
	sd	$18,56($sp)
	move	$18,$7
	sd	$2,16($sp)
	li	$2,2			# 0x2
	sd	$31,120($sp)
	sd	$22,88($sp)
	sd	$21,80($sp)
	sd	$2,0($sp)
.L1897:
	daddiu	$21,$fp,16
	move	$24,$20
	move	$14,$fp
.L1896:
	move	$6,$15
	move	$4,$14
	move	$5,$19
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	move	$7,$0

	move	$5,$19
	move	$6,$15
	move	$4,$14
	move	$7,$0
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
1:	jalr	$25
	move	$22,$2

	move	$5,$18
	move	$4,$24
	move	$6,$15
	sra	$2,$2,2
	move	$7,$0
	move	$25,$17
	subu	$22,$22,$2
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	daddiu	$14,$14,8

	move	$7,$0
	move	$4,$24
	move	$6,$15
	move	$5,$18
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
1:	jalr	$25
	move	$11,$2

	sra	$2,$2,2
	daddiu	$24,$24,8
	subu	$2,$11,$2
	subu	$2,$22,$2
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	bne	$14,$21,.L1896
	addu	$23,$2,$23

	ld	$2,8($sp)
	li	$3,1			# 0x1
	daddu	$fp,$fp,$2
	ld	$2,16($sp)
	daddu	$20,$20,$2
	ld	$2,0($sp)
	bne	$2,$3,.L1898
	li	$2,1			# 0x1

	ld	$31,120($sp)
	move	$2,$23
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

	.align	3
.L1898:
	b	.L1897
	sd	$2,0($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$14,$4
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l)))
	move	$15,$5
	daddu	$28,$28,$25
	sd	$16,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l)))
	sd	$18,24($sp)
	move	$18,$7
	ld	$16,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	move	$7,$0
	ld	$24,%got_page(_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf)($28)
	sd	$17,16($sp)
	move	$17,$6
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	sd	$31,40($sp)
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	daddiu	$6,$24,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf)

	move	$7,$0
	move	$5,$15
	ld	$15,%got_page(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)($28)
	daddiu	$6,$24,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf)
	move	$4,$14
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)
	move	$25,$15
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
1:	jalr	$25
	move	$14,$2

	move	$5,$18
	move	$4,$17
	daddiu	$6,$24,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf)
	move	$25,$16
	sra	$2,$2,2
	move	$7,$0
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	subu	$14,$14,$2

	move	$5,$18
	move	$4,$17
	move	$7,$0
	daddiu	$6,$24,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf)
	move	$25,$15
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
1:	jalr	$25
	move	$11,$2

	ld	$31,40($sp)
	sra	$3,$2,2
	ld	$28,32($sp)
	subu	$3,$11,$3
	ld	$18,24($sp)
	subu	$3,$14,$3
	ld	$17,16($sp)
	sra	$2,$3,31
	ld	$16,8($sp)
	daddiu	$sp,$sp,48
	xor	$3,$2,$3
	jr	$31
	subu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 2/4, args= 0, gp= 0
	.mask	0x10010000,-40
	.fmask	0x0f000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$2,$9,1
	ldi.d	$w9,0
	move.v	$w16,$w9
	sd	$16,0($sp)
	dsll	$11,$9,2
	daddiu	$16,$4,1024
	move.v	$w15,$w9
	daddu	$3,$2,$9
	sdc1	$f27,40($sp)
	move.v	$w13,$w9
	move.v	$w12,$w9
	sdc1	$f26,32($sp)
	move.v	$w11,$w9
	move.v	$w14,$w9
	move.v	$w10,$w9
	sdc1	$f25,24($sp)
	sdc1	$f24,16($sp)
.L1904:
	daddu	$25,$5,$9
	daddu	$24,$6,$9
	ld.b	$w3,128($4)
	ld.b	$w5,0($4)
	daddu	$15,$7,$9
	daddu	$14,$8,$9
	ld.b	$w4,64($4)
	ld.b	$w2,192($4)
	daddu	$13,$2,$5
	daddu	$12,$5,$3
	ld.d	$w19,0($25)
	ld.d	$w18,0($24)
	daddu	$25,$2,$6
	daddu	$24,$6,$3
	ld.d	$w17,0($15)
	ld.d	$w26,0($14)
	daddu	$15,$2,$7
	daddu	$14,$7,$3
	ld.d	$w6,0($13)
	ld.d	$w21,0($12)
	daddu	$13,$2,$8
	daddu	$12,$8,$3
	ld.d	$w23,0($5)
	ld.d	$w8,0($6)
	daddiu	$4,$4,256
	ld.d	$w7,0($7)
	asub_u.b	$w23,$w5,$w23
	asub_u.b	$w19,$w4,$w19
	asub_u.b	$w8,$w5,$w8
	asub_u.b	$w18,$w4,$w18
	asub_u.b	$w7,$w5,$w7
	asub_u.b	$w17,$w4,$w17
	ld.b	$w27,0($8)
	asub_u.b	$w6,$w3,$w6
	asub_u.b	$w21,$w2,$w21
	ld.d	$w24,0($25)
	ld.d	$w20,0($24)
	ld.d	$w1,0($15)
	asub_u.b	$w20,$w2,$w20
	asub_u.b	$w1,$w3,$w1
	ld.d	$w22,0($14)
	ld.d	$w0,0($13)
	asub_u.b	$w22,$w2,$w22
	asub_u.b	$w0,$w3,$w0
	ld.d	$w25,0($12)
	asub_u.b	$w5,$w5,$w27
	asub_u.b	$w4,$w4,$w26
	asub_u.b	$w24,$w3,$w24
	asub_u.b	$w2,$w2,$w25
	vacc8b_u.d	$w23,$w23
	vacc8b_u.d	$w19,$w19
	vacc8b_u.d	$w8,$w8
	vacc8b_u.d	$w18,$w18
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w17,$w17
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w21,$w21
	vacc8b_u.d	$w3,$w24
	vacc8b_u.d	$w20,$w20
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w22,$w22
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w2,$w2
	addv.d	$w9,$w9,$w23
	addv.d	$w8,$w16,$w8
	addv.d	$w7,$w15,$w7
	addv.d	$w6,$w13,$w6
	addv.d	$w3,$w12,$w3
	addv.d	$w1,$w11,$w1
	addv.d	$w5,$w14,$w5
	addv.d	$w0,$w10,$w0
	addv.d	$w9,$w9,$w19
	addv.d	$w16,$w8,$w18
	addv.d	$w15,$w7,$w17
	addv.d	$w13,$w6,$w21
	addv.d	$w12,$w3,$w20
	addv.d	$w11,$w1,$w22
	addv.d	$w14,$w5,$w4
	addv.d	$w10,$w0,$w2
	daddu	$5,$5,$11
	daddu	$6,$6,$11
	daddu	$7,$7,$11
	bne	$4,$16,.L1904
	daddu	$8,$8,$11

	copy_s.w	$6,$w9[0]
	copy_s.w	$3,$w16[2]
	copy_s.w	$8,$w15[0]
	copy_s.w	$7,$w14[0]
	copy_s.w	$2,$w9[2]
	copy_s.w	$5,$w16[0]
	addu	$2,$6,$2
	addu	$5,$5,$3
	copy_s.w	$4,$w15[2]
	copy_s.w	$3,$w14[2]
	addu	$4,$8,$4
	addu	$3,$7,$3
	copy_s.w	$6,$w13[0]
	copy_s.w	$9,$w12[0]
	addu	$2,$2,$6
	addu	$9,$5,$9
	copy_s.w	$8,$w11[0]
	copy_s.w	$7,$w10[0]
	addu	$8,$4,$8
	addu	$7,$3,$7
	copy_s.w	$6,$w13[2]
	copy_s.w	$5,$w12[2]
	addu	$6,$2,$6
	addu	$5,$9,$5
	copy_s.w	$4,$w11[2]
	copy_s.w	$3,$w10[2]
	addu	$4,$8,$4
	addu	$3,$7,$3
	ld	$16,0($sp)
	ldc1	$f27,40($sp)
	ldc1	$f26,32($sp)
	sw	$6,0($10)
	ldc1	$f25,24($sp)
	sw	$5,4($10)
	ldc1	$f24,16($sp)
	sw	$4,8($10)
	daddiu	$sp,$sp,48
	jr	$31
	sw	$3,12($10)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$2,$8,1
	daddiu	$sp,$sp,-16
	ldi.d	$w8,0
	move.v	$w12,$w8
	dsll	$10,$8,2
	daddiu	$24,$4,1024
	move.v	$w13,$w8
	move.v	$w11,$w8
	daddu	$3,$8,$2
	move.v	$w10,$w8
	move.v	$w9,$w8
.L1908:
	daddu	$11,$5,$8
	daddu	$13,$6,$8
	ld.b	$w1,0($4)
	ld.b	$w5,64($4)
	daddu	$12,$7,$8
	ld.d	$w16,0($11)
	daddu	$11,$5,$3
	ld.b	$w0,128($4)
	ld.b	$w2,192($4)
	daddu	$15,$2,$5
	daddu	$14,$2,$6
	ld.d	$w17,0($13)
	ld.d	$w20,0($12)
	daddu	$13,$6,$3
	daddu	$12,$2,$7
	ld.d	$w7,0($11)
	daddiu	$4,$4,256
	daddu	$11,$7,$3
	ld.d	$w15,0($5)
	ld.d	$w14,0($6)
	ld.d	$w21,0($7)
	asub_u.b	$w15,$w1,$w15
	asub_u.b	$w16,$w5,$w16
	asub_u.b	$w14,$w1,$w14
	asub_u.b	$w17,$w5,$w17
	asub_u.b	$w7,$w2,$w7
	ld.d	$w4,0($15)
	ld.d	$w3,0($14)
	asub_u.b	$w4,$w0,$w4
	asub_u.b	$w3,$w0,$w3
	ld.d	$w6,0($13)
	ld.d	$w19,0($12)
	asub_u.b	$w6,$w2,$w6
	ld.d	$w18,0($11)
	asub_u.b	$w1,$w1,$w21
	asub_u.b	$w5,$w5,$w20
	asub_u.b	$w0,$w0,$w19
	asub_u.b	$w2,$w2,$w18
	vacc8b_u.d	$w15,$w15
	vacc8b_u.d	$w16,$w16
	vacc8b_u.d	$w14,$w14
	vacc8b_u.d	$w17,$w17
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w2,$w2
	addv.d	$w8,$w8,$w15
	addv.d	$w12,$w12,$w14
	addv.d	$w1,$w13,$w1
	addv.d	$w4,$w11,$w4
	addv.d	$w3,$w10,$w3
	addv.d	$w0,$w9,$w0
	addv.d	$w8,$w8,$w16
	addv.d	$w12,$w12,$w17
	addv.d	$w13,$w1,$w5
	addv.d	$w11,$w4,$w7
	addv.d	$w10,$w3,$w6
	addv.d	$w9,$w0,$w2
	daddu	$5,$5,$10
	daddu	$6,$6,$10
	bne	$4,$24,.L1908
	daddu	$7,$7,$10

	copy_s.w	$5,$w8[0]
	copy_s.w	$7,$w12[0]
	copy_s.w	$6,$w13[0]
	copy_s.w	$2,$w8[2]
	copy_s.w	$4,$w12[2]
	addu	$2,$5,$2
	addu	$4,$7,$4
	copy_s.w	$3,$w13[2]
	addu	$3,$6,$3
	copy_s.w	$5,$w11[0]
	copy_s.w	$7,$w10[0]
	addu	$2,$2,$5
	addu	$7,$4,$7
	copy_s.w	$6,$w9[0]
	addu	$6,$3,$6
	copy_s.w	$5,$w11[2]
	copy_s.w	$4,$w10[2]
	addu	$5,$2,$5
	addu	$4,$7,$4
	copy_s.w	$3,$w9[2]
	addu	$3,$6,$3
	sw	$5,0($9)
	daddiu	$sp,$sp,16
	sw	$4,4($9)
	jr	$31
	sw	$3,8($9)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$2,$4,4096
	ldi.d	$w20,0
	move.v	$w19,$w20
	move.v	$w18,$w20
	move.v	$w17,$w20
	.align	3
.L1912:
	ld.b	$w11,0($4)
	ld.b	$w2,16($4)
	ld.b	$w1,32($4)
	ld.b	$w0,48($4)
	daddiu	$4,$4,64
	ld.d	$w4,0($5)
	ld.d	$w16,16($5)
	ld.d	$w3,0($6)
	ld.d	$w15,16($6)
	ld.d	$w12,0($7)
	ld.d	$w21,16($7)
	ld.d	$w23,0($8)
	ld.d	$w22,16($8)
	ld.d	$w10,32($5)
	ld.d	$w7,48($5)
	ld.d	$w9,32($6)
	ld.d	$w6,48($6)
	ld.d	$w8,32($7)
	ld.d	$w5,48($7)
	ld.d	$w14,32($8)
	ld.d	$w13,48($8)
	asub_u.b	$w4,$w11,$w4
	asub_u.b	$w16,$w2,$w16
	asub_u.b	$w3,$w11,$w3
	asub_u.b	$w15,$w2,$w15
	asub_u.b	$w12,$w11,$w12
	asub_u.b	$w21,$w2,$w21
	asub_u.b	$w10,$w1,$w10
	asub_u.b	$w7,$w0,$w7
	asub_u.b	$w9,$w1,$w9
	asub_u.b	$w6,$w0,$w6
	asub_u.b	$w8,$w1,$w8
	asub_u.b	$w5,$w0,$w5
	asub_u.b	$w11,$w11,$w23
	asub_u.b	$w2,$w2,$w22
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w16,$w16
	addv.d	$w4,$w20,$w4
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w15,$w15
	addv.d	$w3,$w19,$w3
	vacc8b_u.d	$w12,$w12
	vacc8b_u.d	$w19,$w21
	addv.d	$w12,$w18,$w12
	vacc8b_u.d	$w11,$w11
	addv.d	$w12,$w12,$w19
	addv.d	$w11,$w17,$w11
	vacc8b_u.d	$w2,$w2
	addv.d	$w4,$w4,$w16
	addv.d	$w3,$w3,$w15
	addv.d	$w11,$w11,$w2
	asub_u.b	$w1,$w1,$w14
	asub_u.b	$w0,$w0,$w13
	vacc8b_u.d	$w10,$w10
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w9,$w9
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w8,$w8
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w0,$w0
	addv.d	$w4,$w4,$w10
	addv.d	$w3,$w3,$w9
	addv.d	$w12,$w12,$w8
	addv.d	$w11,$w11,$w1
	addv.d	$w20,$w4,$w7
	addv.d	$w19,$w3,$w6
	addv.d	$w18,$w12,$w5
	addv.d	$w17,$w11,$w0
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$2,.L1912
	daddu	$8,$8,$9

	copy_s.w	$2,$w20[2]
	copy_s.w	$6,$w20[0]
	copy_s.w	$5,$w19[0]
	addu	$6,$6,$2
	copy_s.w	$4,$w18[0]
	copy_s.w	$2,$w19[2]
	copy_s.w	$3,$w17[0]
	addu	$5,$5,$2
	copy_s.w	$2,$w18[2]
	addu	$4,$4,$2
	copy_s.w	$2,$w17[2]
	addu	$2,$3,$2
	sw	$6,0($10)
	sw	$5,4($10)
	sw	$4,8($10)
	jr	$31
	sw	$2,12($10)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi:
	.frame	$sp,64,$31		# vars= 0, regs= 3/3, args= 0, gp= 0
	.mask	0x10030000,-40
	.fmask	0x07000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	dsll	$3,$9,1
	ldi.d	$w9,0
	move.v	$w16,$w9
	sd	$17,16($sp)
	daddiu	$2,$9,16
	daddiu	$17,$4,2048
	move.v	$w15,$w9
	sd	$16,8($sp)
	move.v	$w13,$w9
	move.v	$w12,$w9
	move.v	$w11,$w9
	sdc1	$f26,56($sp)
	move.v	$w14,$w9
	move.v	$w10,$w9
	sdc1	$f25,48($sp)
	sdc1	$f24,40($sp)
	.align	3
.L1916:
	ld.b	$w3,64($4)
	ld.b	$w5,0($4)
	ld.b	$w4,16($4)
	ld.b	$w2,80($4)
	daddu	$16,$5,$9
	daddu	$25,$5,$2
	ld.b	$w26,0($8)
	ld.d	$w23,0($5)
	daddu	$24,$6,$9
	daddu	$15,$6,$2
	ld.d	$w19,16($5)
	ld.d	$w8,0($6)
	daddu	$14,$7,$9
	daddu	$13,$7,$2
	ld.d	$w18,16($6)
	ld.d	$w7,0($7)
	daddu	$12,$8,$9
	daddu	$11,$8,$2
	ld.d	$w17,16($7)
	asub_u.b	$w23,$w5,$w23
	daddiu	$4,$4,128
	asub_u.b	$w19,$w4,$w19
	asub_u.b	$w8,$w5,$w8
	asub_u.b	$w18,$w4,$w18
	asub_u.b	$w7,$w5,$w7
	asub_u.b	$w17,$w4,$w17
	asub_u.b	$w5,$w5,$w26
	ld.d	$w6,0($16)
	ld.b	$w26,16($8)
	asub_u.b	$w6,$w3,$w6
	ld.d	$w21,0($25)
	ld.d	$w24,0($24)
	asub_u.b	$w21,$w2,$w21
	ld.d	$w20,0($15)
	ld.d	$w1,0($14)
	asub_u.b	$w20,$w2,$w20
	asub_u.b	$w1,$w3,$w1
	ld.d	$w22,0($13)
	ld.d	$w0,0($12)
	asub_u.b	$w22,$w2,$w22
	asub_u.b	$w0,$w3,$w0
	ld.d	$w25,0($11)
	asub_u.b	$w4,$w4,$w26
	asub_u.b	$w24,$w3,$w24
	asub_u.b	$w2,$w2,$w25
	vacc8b_u.d	$w23,$w23
	vacc8b_u.d	$w19,$w19
	vacc8b_u.d	$w8,$w8
	vacc8b_u.d	$w18,$w18
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w17,$w17
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w21,$w21
	vacc8b_u.d	$w3,$w24
	vacc8b_u.d	$w20,$w20
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w22,$w22
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w2,$w2
	addv.d	$w9,$w9,$w23
	addv.d	$w8,$w16,$w8
	addv.d	$w7,$w15,$w7
	addv.d	$w6,$w13,$w6
	addv.d	$w3,$w12,$w3
	addv.d	$w1,$w11,$w1
	addv.d	$w5,$w14,$w5
	addv.d	$w0,$w10,$w0
	addv.d	$w9,$w9,$w19
	addv.d	$w16,$w8,$w18
	addv.d	$w15,$w7,$w17
	addv.d	$w13,$w6,$w21
	addv.d	$w12,$w3,$w20
	addv.d	$w11,$w1,$w22
	addv.d	$w14,$w5,$w4
	addv.d	$w10,$w0,$w2
	daddu	$5,$5,$3
	daddu	$6,$6,$3
	daddu	$7,$7,$3
	bne	$4,$17,.L1916
	daddu	$8,$8,$3

	copy_s.w	$2,$w9[2]
	copy_s.w	$3,$w16[2]
	copy_s.w	$7,$w15[0]
	copy_s.w	$5,$w9[0]
	copy_s.w	$6,$w16[0]
	addu	$5,$5,$2
	addu	$6,$6,$3
	copy_s.w	$4,$w15[2]
	copy_s.w	$3,$w14[2]
	addu	$4,$7,$4
	copy_s.w	$2,$w14[0]
	addu	$2,$2,$3
	copy_s.w	$8,$w13[0]
	copy_s.w	$3,$w12[0]
	addu	$8,$5,$8
	addu	$3,$6,$3
	copy_s.w	$7,$w11[0]
	copy_s.w	$6,$w10[0]
	addu	$7,$4,$7
	addu	$6,$2,$6
	copy_s.w	$5,$w13[2]
	copy_s.w	$4,$w12[2]
	addu	$5,$8,$5
	addu	$4,$3,$4
	copy_s.w	$2,$w10[2]
	copy_s.w	$3,$w11[2]
	addu	$2,$6,$2
	addu	$3,$7,$3
	ld	$17,16($sp)
	ldc1	$f26,56($sp)
	ld	$16,8($sp)
	ldc1	$f25,48($sp)
	ldc1	$f24,40($sp)
	sw	$5,0($10)
	daddiu	$sp,$sp,64
	sw	$4,4($10)
	sw	$3,8($10)
	jr	$31
	sw	$2,12($10)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$2,$4,4096
	ldi.d	$w1,0
	move.v	$w2,$w1
	move.v	$w16,$w1
	.align	3
.L1920:
	ld.b	$w0,0($4)
	ld.b	$w5,16($4)
	ld.b	$w4,32($4)
	ld.b	$w3,48($4)
	daddiu	$4,$4,64
	ld.d	$w6,48($6)
	ld.d	$w15,0($5)
	ld.d	$w11,16($5)
	ld.d	$w14,0($6)
	ld.d	$w10,16($6)
	ld.d	$w18,0($7)
	ld.d	$w17,16($7)
	ld.d	$w9,32($5)
	ld.d	$w7,48($5)
	ld.d	$w8,32($6)
	asub_u.b	$w7,$w3,$w7
	ld.d	$w13,32($7)
	ld.d	$w12,48($7)
	asub_u.b	$w15,$w0,$w15
	asub_u.b	$w11,$w5,$w11
	asub_u.b	$w14,$w0,$w14
	asub_u.b	$w10,$w5,$w10
	asub_u.b	$w9,$w4,$w9
	asub_u.b	$w8,$w4,$w8
	asub_u.b	$w0,$w0,$w18
	asub_u.b	$w5,$w5,$w17
	vacc8b_u.d	$w15,$w15
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w11,$w11
	addv.d	$w1,$w1,$w15
	vacc8b_u.d	$w14,$w14
	vacc8b_u.d	$w10,$w10
	addv.d	$w2,$w2,$w14
	vacc8b_u.d	$w0,$w0
	addv.d	$w1,$w1,$w11
	addv.d	$w0,$w16,$w0
	addv.d	$w2,$w2,$w10
	addv.d	$w0,$w0,$w5
	asub_u.b	$w4,$w4,$w13
	asub_u.b	$w5,$w3,$w6
	vacc8b_u.d	$w9,$w9
	vacc8b_u.d	$w6,$w7
	asub_u.b	$w3,$w3,$w12
	vacc8b_u.d	$w7,$w8
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w3,$w3
	addv.d	$w1,$w1,$w9
	addv.d	$w2,$w2,$w7
	addv.d	$w0,$w0,$w4
	addv.d	$w1,$w1,$w6
	addv.d	$w2,$w2,$w5
	addv.d	$w16,$w0,$w3
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$4,$2,.L1920
	daddu	$7,$7,$8

	copy_s.w	$2,$w1[2]
	copy_s.w	$5,$w1[0]
	copy_s.w	$4,$w2[0]
	addu	$5,$5,$2
	copy_s.w	$3,$w16[0]
	copy_s.w	$2,$w2[2]
	addu	$4,$4,$2
	copy_s.w	$2,$w16[2]
	addu	$2,$3,$2
	sw	$5,0($9)
	sw	$4,4($9)
	jr	$31
	sw	$2,8($9)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	dsll	$3,$8,1
	ldi.d	$w8,0
	move.v	$w12,$w8
	daddiu	$24,$4,2048
	daddiu	$2,$8,16
	move.v	$w13,$w8
	move.v	$w11,$w8
	move.v	$w10,$w8
	move.v	$w9,$w8
	.align	3
.L1924:
	ld.b	$w1,0($4)
	ld.b	$w5,16($4)
	ld.b	$w0,64($4)
	ld.b	$w2,80($4)
	daddu	$15,$5,$8
	daddu	$14,$5,$2
	ld.d	$w15,0($5)
	ld.d	$w16,16($5)
	daddu	$13,$6,$8
	daddu	$12,$6,$2
	ld.d	$w14,0($6)
	ld.d	$w17,16($6)
	daddu	$11,$7,$8
	daddu	$10,$7,$2
	ld.d	$w21,0($7)
	ld.d	$w20,16($7)
	daddiu	$4,$4,128
	asub_u.b	$w15,$w1,$w15
	asub_u.b	$w16,$w5,$w16
	asub_u.b	$w14,$w1,$w14
	asub_u.b	$w17,$w5,$w17
	ld.d	$w4,0($15)
	ld.d	$w7,0($14)
	asub_u.b	$w4,$w0,$w4
	asub_u.b	$w7,$w2,$w7
	ld.d	$w3,0($13)
	ld.d	$w6,0($12)
	asub_u.b	$w3,$w0,$w3
	asub_u.b	$w6,$w2,$w6
	ld.d	$w19,0($11)
	ld.d	$w18,0($10)
	asub_u.b	$w1,$w1,$w21
	asub_u.b	$w5,$w5,$w20
	asub_u.b	$w0,$w0,$w19
	asub_u.b	$w2,$w2,$w18
	vacc8b_u.d	$w15,$w15
	vacc8b_u.d	$w16,$w16
	vacc8b_u.d	$w14,$w14
	vacc8b_u.d	$w17,$w17
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w2,$w2
	addv.d	$w8,$w8,$w15
	addv.d	$w12,$w12,$w14
	addv.d	$w1,$w13,$w1
	addv.d	$w4,$w11,$w4
	addv.d	$w3,$w10,$w3
	addv.d	$w0,$w9,$w0
	addv.d	$w8,$w8,$w16
	addv.d	$w12,$w12,$w17
	addv.d	$w13,$w1,$w5
	addv.d	$w11,$w4,$w7
	addv.d	$w10,$w3,$w6
	addv.d	$w9,$w0,$w2
	daddu	$5,$5,$3
	daddu	$6,$6,$3
	bne	$4,$24,.L1924
	daddu	$7,$7,$3

	copy_s.w	$2,$w8[2]
	copy_s.w	$6,$w12[0]
	copy_s.w	$3,$w13[2]
	copy_s.w	$7,$w8[0]
	copy_s.w	$4,$w12[2]
	addu	$7,$7,$2
	addu	$4,$6,$4
	copy_s.w	$2,$w13[0]
	addu	$2,$2,$3
	copy_s.w	$5,$w11[0]
	copy_s.w	$3,$w10[0]
	addu	$7,$7,$5
	addu	$6,$4,$3
	copy_s.w	$5,$w9[0]
	addu	$5,$2,$5
	copy_s.w	$4,$w11[2]
	copy_s.w	$3,$w10[2]
	addu	$4,$7,$4
	addu	$3,$6,$3
	copy_s.w	$2,$w9[2]
	addu	$2,$5,$2
	sw	$4,0($9)
	daddiu	$sp,$sp,16
	sw	$3,4($9)
	jr	$31
	sw	$2,8($9)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l
	.type	_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l, @function
_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x107f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$14,$5,1
	dsll	$13,$7,1
	ldi.d	$w8,0
	move.v	$w11,$w8
	daddiu	$sp,$sp,-64
	daddu	$24,$14,$5
	move.v	$w10,$w8
	move.v	$w9,$w8
	daddu	$15,$13,$7
	sd	$22,48($sp)
	dsll	$22,$5,2
	sd	$21,40($sp)
	li	$2,8			# 0x8
	dsll	$21,$7,2
	sd	$20,32($sp)
	daddiu	$25,$15,16
	daddiu	$20,$5,16
	sd	$19,24($sp)
	daddiu	$19,$7,16
	sd	$18,16($sp)
	daddiu	$18,$14,16
	sd	$17,8($sp)
	daddiu	$17,$24,16
	sd	$16,0($sp)
	daddiu	$16,$13,16
	.align	3
.L1928:
	daddu	$12,$4,$5
	daddu	$11,$4,$20
	ld.d	$w3,0($4)
	ld.d	$w2,16($4)
	daddu	$10,$6,$7
	daddu	$9,$6,$19
	ld.d	$w7,0($12)
	ld.d	$w6,0($11)
	daddu	$8,$14,$4
	daddu	$3,$4,$18
	ld.d	$w17,0($10)
	ld.d	$w16,0($9)
	daddu	$12,$24,$4
	daddu	$11,$4,$17
	ld.d	$w1,0($8)
	ld.d	$w0,0($3)
	daddu	$10,$13,$6
	daddu	$9,$6,$16
	ld.d	$w19,0($6)
	ld.d	$w18,16($6)
	daddu	$8,$15,$6
	daddu	$3,$6,$25
	ld.d	$w5,0($12)
	ld.d	$w4,0($11)
	addiu	$2,$2,-1
	ld.d	$w15,0($10)
	ld.d	$w14,0($9)
	ld.d	$w13,0($8)
	ld.d	$w12,0($3)
	asub_u.b	$w3,$w3,$w19
	asub_u.b	$w2,$w2,$w18
	asub_u.b	$w7,$w7,$w17
	asub_u.b	$w6,$w6,$w16
	asub_u.b	$w1,$w1,$w15
	asub_u.b	$w0,$w0,$w14
	asub_u.b	$w5,$w5,$w13
	asub_u.b	$w4,$w4,$w12
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w4,$w4
	addv.d	$w3,$w8,$w3
	addv.d	$w2,$w11,$w2
	addv.d	$w1,$w10,$w1
	addv.d	$w0,$w9,$w0
	addv.d	$w8,$w3,$w7
	addv.d	$w11,$w2,$w6
	addv.d	$w10,$w1,$w5
	addv.d	$w9,$w0,$w4
	daddu	$4,$4,$22
	bne	$2,$0,.L1928
	daddu	$6,$6,$21

	copy_s.w	$3,$w8[0]
	copy_s.w	$2,$w8[2]
	addu	$2,$3,$2
	copy_s.w	$3,$w11[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w11[2]
	copy_s.w	$6,$w10[0]
	copy_s.w	$4,$w10[2]
	addu	$2,$2,$3
	copy_s.w	$5,$w9[0]
	ld	$22,48($sp)
	copy_s.w	$3,$w9[2]
	addu	$2,$2,$6
	ld	$21,40($sp)
	addu	$4,$2,$4
	ld	$20,32($sp)
	addu	$2,$4,$5
	ld	$19,24($sp)
	ld	$18,16($sp)
	addu	$2,$2,$3
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l
	.size	_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l, .-_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l
	.type	_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l, @function
_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x10030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$10,$4,$5
	daddu	$15,$6,$7
	daddiu	$sp,$sp,-32
	daddu	$3,$10,$5
	daddu	$2,$15,$7
	dsll	$9,$5,2
	sd	$17,16($sp)
	dlsa	$25,$5,$3,1
	dlsa	$12,$7,$2,1
	sd	$16,8($sp)
	ld.d	$w0,0($6)
	dsll	$8,$7,2
	daddu	$6,$25,$9
	ld.d	$w1,0($4)
	ld.d	$w2,0($2)
	daddu	$4,$12,$8
	daddu	$17,$6,$5
	asub_u.b	$w1,$w1,$w0
	ld.d	$w0,0($3)
	daddu	$16,$4,$7
	daddu	$11,$17,$5
	asub_u.b	$w0,$w0,$w2
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w0,$w0
	addv.d	$w1,$w1,$w0
	ld.d	$w0,0($10)
	daddu	$10,$16,$7
	ld.d	$w2,0($4)
	ld.d	$w4,0($10)
	ld.d	$w3,0($6)
	daddu	$4,$4,$8
	daddu	$6,$6,$9
	daddu	$8,$2,$7
	asub_u.b	$w3,$w3,$w2
	ld.d	$w2,0($11)
	daddu	$9,$3,$5
	daddu	$11,$11,$5
	vacc8b_u.d	$w3,$w3
	asub_u.b	$w2,$w2,$w4
	daddu	$10,$10,$7
	addv.d	$w1,$w1,$w3
	vacc8b_u.d	$w2,$w2
	addv.d	$w1,$w1,$w2
	copy_s.w	$3,$w1[0]
	copy_s.w	$2,$w1[2]
	addu	$2,$3,$2
	ld.d	$w3,0($15)
	ld.d	$w2,0($8)
	ld.d	$w4,0($16)
	daddu	$24,$25,$5
	daddu	$14,$12,$7
	daddu	$13,$6,$5
	ld.d	$w1,0($9)
	daddu	$15,$4,$7
	asub_u.b	$w0,$w0,$w3
	asub_u.b	$w1,$w1,$w2
	ld.d	$w3,0($10)
	ld.d	$w2,0($17)
	vacc8b_u.d	$w1,$w1
	asub_u.b	$w2,$w2,$w4
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w2,$w2
	addv.d	$w0,$w0,$w1
	ld.d	$w1,0($11)
	addv.d	$w0,$w0,$w2
	asub_u.b	$w1,$w1,$w3
	vacc8b_u.d	$w1,$w1
	addv.d	$w0,$w0,$w1
	copy_s.w	$3,$w0[0]
	addu	$3,$2,$3
	daddu	$11,$24,$5
	daddu	$10,$14,$7
	daddu	$9,$13,$5
	copy_s.w	$2,$w0[2]
	ld.d	$w1,0($11)
	addu	$2,$3,$2
	daddu	$8,$15,$7
	ld.d	$w2,0($10)
	ld.d	$w3,0($12)
	ld.d	$w4,0($4)
	ld.d	$w0,0($25)
	asub_u.b	$w1,$w1,$w2
	asub_u.b	$w0,$w0,$w3
	vacc8b_u.d	$w1,$w1
	ld.d	$w3,0($8)
	ld.d	$w2,0($6)
	vacc8b_u.d	$w0,$w0
	asub_u.b	$w2,$w2,$w4
	addv.d	$w0,$w0,$w1
	vacc8b_u.d	$w2,$w2
	ld.d	$w1,0($9)
	addv.d	$w0,$w0,$w2
	asub_u.b	$w1,$w1,$w3
	vacc8b_u.d	$w1,$w1
	addv.d	$w0,$w0,$w1
	copy_s.w	$3,$w0[0]
	addu	$3,$2,$3
	daddu	$11,$11,$5
	copy_s.w	$2,$w0[2]
	daddu	$10,$10,$7
	addu	$2,$3,$2
	ld.d	$w3,0($14)
	ld.d	$w0,0($24)
	daddu	$5,$9,$5
	daddu	$7,$8,$7
	ld.d	$w1,0($11)
	ld.d	$w2,0($10)
	asub_u.b	$w0,$w0,$w3
	asub_u.b	$w1,$w1,$w2
	vacc8b_u.d	$w0,$w0
	ld.d	$w2,0($13)
	vacc8b_u.d	$w1,$w1
	ld.d	$w4,0($15)
	addv.d	$w0,$w0,$w1
	ld.d	$w3,0($7)
	ld.d	$w1,0($5)
	asub_u.b	$w2,$w2,$w4
	asub_u.b	$w1,$w1,$w3
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w1,$w1
	addv.d	$w0,$w0,$w2
	addv.d	$w0,$w0,$w1
	copy_s.w	$3,$w0[0]
	addu	$3,$2,$3
	ld	$17,16($sp)
	copy_s.w	$2,$w0[2]
	ld	$16,8($sp)
	addu	$2,$3,$2
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l
	.size	_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l, .-_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l
	.type	_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l, @function
_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	li	$2,32			# 0x20
	ldi.d	$w8,0
	move.v	$w11,$w8
	sd	$20,32($sp)
	dsll	$20,$5,1
	daddiu	$25,$7,16
	move.v	$w10,$w8
	sd	$19,24($sp)
	daddiu	$24,$7,32
	dsll	$19,$7,1
	move.v	$w9,$w8
	sd	$18,16($sp)
	daddiu	$15,$7,48
	daddiu	$18,$5,16
	sd	$17,8($sp)
	daddiu	$17,$5,32
	sd	$16,0($sp)
	daddiu	$16,$5,48
	.align	3
.L1934:
	daddu	$14,$4,$5
	daddu	$13,$4,$18
	ld.d	$w3,0($4)
	ld.d	$w2,16($4)
	daddu	$12,$4,$17
	daddu	$11,$4,$16
	ld.d	$w7,32($4)
	ld.d	$w6,48($4)
	daddu	$10,$6,$7
	daddu	$9,$6,$25
	ld.d	$w19,0($6)
	ld.d	$w18,16($6)
	daddu	$8,$6,$24
	daddu	$3,$6,$15
	ld.d	$w17,32($6)
	ld.d	$w16,48($6)
	addiu	$2,$2,-1
	ld.d	$w1,0($14)
	ld.d	$w0,0($13)
	ld.d	$w5,0($12)
	ld.d	$w4,0($11)
	ld.d	$w15,0($10)
	ld.d	$w14,0($9)
	ld.d	$w13,0($8)
	ld.d	$w12,0($3)
	asub_u.b	$w3,$w3,$w19
	asub_u.b	$w2,$w2,$w18
	asub_u.b	$w7,$w7,$w17
	asub_u.b	$w6,$w6,$w16
	asub_u.b	$w1,$w1,$w15
	asub_u.b	$w0,$w0,$w14
	asub_u.b	$w5,$w5,$w13
	asub_u.b	$w4,$w4,$w12
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w4,$w4
	addv.d	$w3,$w8,$w3
	addv.d	$w2,$w11,$w2
	addv.d	$w1,$w10,$w1
	addv.d	$w0,$w9,$w0
	addv.d	$w8,$w3,$w7
	addv.d	$w11,$w2,$w6
	addv.d	$w10,$w1,$w5
	addv.d	$w9,$w0,$w4
	daddu	$4,$4,$20
	bne	$2,$0,.L1934
	daddu	$6,$6,$19

	copy_s.w	$4,$w8[0]
	copy_s.w	$2,$w8[2]
	addu	$2,$4,$2
	copy_s.w	$4,$w11[0]
	addu	$2,$2,$4
	copy_s.w	$4,$w11[2]
	copy_s.w	$6,$w10[0]
	copy_s.w	$3,$w10[2]
	addu	$4,$2,$4
	copy_s.w	$5,$w9[0]
	ld	$20,32($sp)
	copy_s.w	$2,$w9[2]
	addu	$4,$4,$6
	ld	$19,24($sp)
	addu	$3,$4,$3
	ld	$18,16($sp)
	addu	$3,$3,$5
	ld	$17,8($sp)
	ld	$16,0($sp)
	addu	$2,$3,$2
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l
	.size	_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l, .-_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$14,$0
	dlsa	$24,$7,$7,1
	sd	$18,16($sp)
	dsll	$18,$7,2
	sd	$17,8($sp)
	dlsa	$25,$5,$5,1
	dsll	$17,$5,2
	sd	$16,0($sp)
	li	$16,16			# 0x10
	.align	3
.L1939:
	daddiu	$15,$4,48
	move	$13,$6
	move	$12,$4
	.align	3
.L1938:
	daddu	$3,$12,$5
	daddu	$2,$13,$7
	vbld	$w10,0($12)
	vbld	$w9,0($13)
	daddu	$10,$25,$12
	daddu	$8,$24,$13
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$11,$3,$5
	daddu	$9,$2,$7
	vbld	$w7,0($10)
	vbld	$w5,0($8)
	vbld	$w8,0($11)
	vbld	$w6,0($9)
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w7[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	move.v	$w4,$w0
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w12[1],$w10[0]
	move.v	$w0,$w11
	move.v	$w7,$w15
	insve.d	$w0[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	move.v	$w8,$w0
	subv.h	$w7,$w12,$w7
	move.v	$w0,$w14
	insve.d	$w0[1],$w3[0]
	move.v	$w3,$w13
	subv.h	$w0,$w4,$w0
	insve.d	$w3[1],$w6[0]
	addv.h	$w6,$w0,$w7
	subv.h	$w3,$w8,$w3
	subv.h	$w0,$w0,$w7
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w6
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	daddiu	$12,$12,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,8
	addu	$2,$3,$2
	addu	$2,$2,$14
	bne	$12,$15,.L1938
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1939
	daddu	$6,$6,$18

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$14,$0
	dlsa	$24,$7,$7,1
	sd	$18,16($sp)
	dsll	$18,$7,2
	sd	$17,8($sp)
	dlsa	$25,$5,$5,1
	dsll	$17,$5,2
	sd	$16,0($sp)
	li	$16,12			# 0xc
	.align	3
.L1945:
	daddiu	$15,$4,64
	move	$13,$6
	move	$12,$4
	.align	3
.L1944:
	daddu	$3,$12,$5
	daddu	$2,$13,$7
	vbld	$w10,0($12)
	vbld	$w9,0($13)
	daddu	$10,$25,$12
	daddu	$8,$24,$13
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$11,$3,$5
	daddu	$9,$2,$7
	vbld	$w7,0($10)
	vbld	$w5,0($8)
	vbld	$w8,0($11)
	vbld	$w6,0($9)
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w7[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	move.v	$w4,$w0
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w12[1],$w10[0]
	move.v	$w0,$w11
	move.v	$w7,$w15
	insve.d	$w0[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	move.v	$w8,$w0
	subv.h	$w7,$w12,$w7
	move.v	$w0,$w14
	insve.d	$w0[1],$w3[0]
	move.v	$w3,$w13
	subv.h	$w0,$w4,$w0
	insve.d	$w3[1],$w6[0]
	addv.h	$w6,$w0,$w7
	subv.h	$w3,$w8,$w3
	subv.h	$w0,$w0,$w7
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w6
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	daddiu	$12,$12,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,8
	addu	$2,$3,$2
	addu	$2,$2,$14
	bne	$12,$15,.L1944
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1945
	daddu	$6,$6,$18

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$14,$0
	dlsa	$24,$7,$7,1
	sd	$18,16($sp)
	dsll	$18,$7,2
	sd	$17,8($sp)
	dlsa	$25,$5,$5,1
	dsll	$17,$5,2
	sd	$16,0($sp)
	li	$16,16			# 0x10
	.align	3
.L1951:
	daddiu	$15,$4,32
	move	$13,$6
	move	$12,$4
.L1950:
	daddu	$3,$12,$5
	daddu	$2,$13,$7
	vbld	$w10,0($12)
	vbld	$w9,0($13)
	daddu	$10,$25,$12
	daddu	$8,$24,$13
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$11,$3,$5
	daddu	$9,$2,$7
	vbld	$w7,0($10)
	vbld	$w5,0($8)
	vbld	$w8,0($11)
	vbld	$w6,0($9)
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w7[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	move.v	$w4,$w0
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w12[1],$w10[0]
	move.v	$w0,$w11
	move.v	$w7,$w15
	insve.d	$w0[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	move.v	$w8,$w0
	subv.h	$w7,$w12,$w7
	move.v	$w0,$w14
	insve.d	$w0[1],$w3[0]
	move.v	$w3,$w13
	subv.h	$w0,$w4,$w0
	insve.d	$w3[1],$w6[0]
	addv.h	$w6,$w0,$w7
	subv.h	$w3,$w8,$w3
	subv.h	$w0,$w0,$w7
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w6
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	daddiu	$12,$12,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,8
	addu	$2,$3,$2
	addu	$2,$2,$14
	bne	$12,$15,.L1950
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1951
	daddu	$6,$6,$18

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$14,$0
	dlsa	$24,$7,$7,1
	sd	$18,16($sp)
	dsll	$18,$7,2
	sd	$17,8($sp)
	dlsa	$25,$5,$5,1
	dsll	$17,$5,2
	sd	$16,0($sp)
	li	$16,8			# 0x8
	.align	3
.L1957:
	daddiu	$15,$4,64
	move	$13,$6
	move	$12,$4
	.align	3
.L1956:
	daddu	$3,$12,$5
	daddu	$2,$13,$7
	vbld	$w10,0($12)
	vbld	$w9,0($13)
	daddu	$10,$25,$12
	daddu	$8,$24,$13
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$11,$3,$5
	daddu	$9,$2,$7
	vbld	$w7,0($10)
	vbld	$w5,0($8)
	vbld	$w8,0($11)
	vbld	$w6,0($9)
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w7[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	move.v	$w4,$w0
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w12[1],$w10[0]
	move.v	$w0,$w11
	move.v	$w7,$w15
	insve.d	$w0[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	move.v	$w8,$w0
	subv.h	$w7,$w12,$w7
	move.v	$w0,$w14
	insve.d	$w0[1],$w3[0]
	move.v	$w3,$w13
	subv.h	$w0,$w4,$w0
	insve.d	$w3[1],$w6[0]
	addv.h	$w6,$w0,$w7
	subv.h	$w3,$w8,$w3
	subv.h	$w0,$w0,$w7
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w6
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	daddiu	$12,$12,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,8
	addu	$2,$3,$2
	addu	$2,$2,$14
	bne	$12,$15,.L1956
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1957
	daddu	$6,$6,$18

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$14,$0
	dlsa	$24,$7,$7,1
	sd	$18,16($sp)
	dsll	$18,$7,2
	sd	$17,8($sp)
	dlsa	$25,$5,$5,1
	dsll	$17,$5,2
	sd	$16,0($sp)
	li	$16,16			# 0x10
	.align	3
.L1963:
	daddiu	$15,$4,24
	move	$13,$6
	move	$12,$4
.L1962:
	daddu	$3,$12,$5
	daddu	$2,$13,$7
	vbld	$w10,0($12)
	vbld	$w9,0($13)
	daddu	$10,$25,$12
	daddu	$8,$24,$13
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$11,$3,$5
	daddu	$9,$2,$7
	vbld	$w7,0($10)
	vbld	$w5,0($8)
	vbld	$w8,0($11)
	vbld	$w6,0($9)
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w7[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	move.v	$w4,$w0
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w12[1],$w10[0]
	move.v	$w0,$w11
	move.v	$w7,$w15
	insve.d	$w0[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	move.v	$w8,$w0
	subv.h	$w7,$w12,$w7
	move.v	$w0,$w14
	insve.d	$w0[1],$w3[0]
	move.v	$w3,$w13
	subv.h	$w0,$w4,$w0
	insve.d	$w3[1],$w6[0]
	addv.h	$w6,$w0,$w7
	subv.h	$w3,$w8,$w3
	subv.h	$w0,$w0,$w7
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w6
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	daddiu	$12,$12,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,8
	addu	$2,$3,$2
	addu	$2,$2,$14
	bne	$12,$15,.L1962
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1963
	daddu	$6,$6,$18

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$14,$0
	dlsa	$24,$7,$7,1
	sd	$18,16($sp)
	dsll	$18,$7,2
	sd	$17,8($sp)
	dlsa	$25,$5,$5,1
	dsll	$17,$5,2
	sd	$16,0($sp)
	li	$16,12			# 0xc
	.align	3
.L1969:
	daddiu	$15,$4,32
	move	$13,$6
	move	$12,$4
.L1968:
	daddu	$3,$12,$5
	daddu	$2,$13,$7
	vbld	$w10,0($12)
	vbld	$w9,0($13)
	daddu	$10,$25,$12
	daddu	$8,$24,$13
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$11,$3,$5
	daddu	$9,$2,$7
	vbld	$w7,0($10)
	vbld	$w5,0($8)
	vbld	$w8,0($11)
	vbld	$w6,0($9)
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w7[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	move.v	$w4,$w0
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w12[1],$w10[0]
	move.v	$w0,$w11
	move.v	$w7,$w15
	insve.d	$w0[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	move.v	$w8,$w0
	subv.h	$w7,$w12,$w7
	move.v	$w0,$w14
	insve.d	$w0[1],$w3[0]
	move.v	$w3,$w13
	subv.h	$w0,$w4,$w0
	insve.d	$w3[1],$w6[0]
	addv.h	$w6,$w0,$w7
	subv.h	$w3,$w8,$w3
	subv.h	$w0,$w0,$w7
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w6
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	daddiu	$12,$12,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,8
	addu	$2,$3,$2
	addu	$2,$2,$14
	bne	$12,$15,.L1968
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1969
	daddu	$6,$6,$18

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	li	$15,16			# 0x10
	move	$14,$0
	sd	$18,16($sp)
	dlsa	$18,$5,$5,1
	sd	$17,8($sp)
	dlsa	$25,$7,$7,1
	dsll	$17,$7,2
	sd	$16,0($sp)
	dsll	$16,$5,2
	.align	3
.L1975:
	daddiu	$24,$4,16
	move	$13,$6
	move	$12,$4
.L1974:
	daddu	$3,$12,$5
	daddu	$2,$13,$7
	vbld	$w10,0($12)
	vbld	$w9,0($13)
	daddu	$10,$18,$12
	daddu	$8,$25,$13
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$11,$3,$5
	daddu	$9,$2,$7
	vbld	$w7,0($10)
	vbld	$w5,0($8)
	vbld	$w8,0($11)
	vbld	$w6,0($9)
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w7[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	move.v	$w4,$w0
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w12[1],$w10[0]
	move.v	$w0,$w11
	move.v	$w7,$w15
	insve.d	$w0[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	move.v	$w8,$w0
	subv.h	$w7,$w12,$w7
	move.v	$w0,$w14
	insve.d	$w0[1],$w3[0]
	move.v	$w3,$w13
	subv.h	$w0,$w4,$w0
	insve.d	$w3[1],$w6[0]
	addv.h	$w6,$w0,$w7
	subv.h	$w3,$w8,$w3
	subv.h	$w0,$w0,$w7
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w6
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	daddiu	$12,$12,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,8
	addu	$2,$3,$2
	addu	$2,$2,$14
	bne	$12,$24,.L1974
	move	$14,$2

	addiu	$15,$15,-1
	daddu	$4,$4,$16
	bne	$15,$0,.L1975
	daddu	$6,$6,$17

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$14,$0
	dlsa	$24,$7,$7,1
	sd	$18,16($sp)
	dsll	$18,$7,2
	sd	$17,8($sp)
	dlsa	$25,$5,$5,1
	dsll	$17,$5,2
	sd	$16,0($sp)
	li	$16,4			# 0x4
.L1981:
	daddiu	$15,$4,64
	move	$13,$6
	move	$12,$4
	.align	3
.L1980:
	daddu	$3,$12,$5
	daddu	$2,$13,$7
	vbld	$w10,0($12)
	vbld	$w9,0($13)
	daddu	$10,$25,$12
	daddu	$8,$24,$13
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$11,$3,$5
	daddu	$9,$2,$7
	vbld	$w7,0($10)
	vbld	$w5,0($8)
	vbld	$w8,0($11)
	vbld	$w6,0($9)
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w7[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	move.v	$w4,$w0
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w12[1],$w10[0]
	move.v	$w0,$w11
	move.v	$w7,$w15
	insve.d	$w0[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	move.v	$w8,$w0
	subv.h	$w7,$w12,$w7
	move.v	$w0,$w14
	insve.d	$w0[1],$w3[0]
	move.v	$w3,$w13
	subv.h	$w0,$w4,$w0
	insve.d	$w3[1],$w6[0]
	addv.h	$w6,$w0,$w7
	subv.h	$w3,$w8,$w3
	subv.h	$w0,$w0,$w7
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w6
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	daddiu	$12,$12,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,8
	addu	$2,$3,$2
	addu	$2,$2,$14
	bne	$12,$15,.L1980
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1981
	daddu	$6,$6,$18

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$14,$0
	dlsa	$24,$7,$7,1
	sd	$18,16($sp)
	dsll	$18,$7,2
	sd	$17,8($sp)
	dlsa	$25,$5,$5,1
	dsll	$17,$5,2
	sd	$16,0($sp)
	li	$16,8			# 0x8
	.align	3
.L1987:
	daddiu	$15,$4,24
	move	$13,$6
	move	$12,$4
.L1986:
	daddu	$3,$12,$5
	daddu	$2,$13,$7
	vbld	$w10,0($12)
	vbld	$w9,0($13)
	daddu	$10,$25,$12
	daddu	$8,$24,$13
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$11,$3,$5
	daddu	$9,$2,$7
	vbld	$w7,0($10)
	vbld	$w5,0($8)
	vbld	$w8,0($11)
	vbld	$w6,0($9)
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w7[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	move.v	$w4,$w0
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w12[1],$w10[0]
	move.v	$w0,$w11
	move.v	$w7,$w15
	insve.d	$w0[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	move.v	$w8,$w0
	subv.h	$w7,$w12,$w7
	move.v	$w0,$w14
	insve.d	$w0[1],$w3[0]
	move.v	$w3,$w13
	subv.h	$w0,$w4,$w0
	insve.d	$w3[1],$w6[0]
	addv.h	$w6,$w0,$w7
	subv.h	$w3,$w8,$w3
	subv.h	$w0,$w0,$w7
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w6
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	daddiu	$12,$12,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,8
	addu	$2,$3,$2
	addu	$2,$2,$14
	bne	$12,$15,.L1986
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1987
	daddu	$6,$6,$18

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$14,$0
	dlsa	$24,$7,$7,1
	sd	$18,16($sp)
	dsll	$18,$7,2
	sd	$17,8($sp)
	dlsa	$25,$5,$5,1
	dsll	$17,$5,2
	sd	$16,0($sp)
	li	$16,6			# 0x6
	.align	3
.L1993:
	daddiu	$15,$4,32
	move	$13,$6
	move	$12,$4
.L1992:
	daddu	$3,$12,$5
	daddu	$2,$13,$7
	vbld	$w10,0($12)
	vbld	$w9,0($13)
	daddu	$10,$25,$12
	daddu	$8,$24,$13
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$11,$3,$5
	daddu	$9,$2,$7
	vbld	$w7,0($10)
	vbld	$w5,0($8)
	vbld	$w8,0($11)
	vbld	$w6,0($9)
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w7[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	move.v	$w4,$w0
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w12[1],$w10[0]
	move.v	$w0,$w11
	move.v	$w7,$w15
	insve.d	$w0[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	move.v	$w8,$w0
	subv.h	$w7,$w12,$w7
	move.v	$w0,$w14
	insve.d	$w0[1],$w3[0]
	move.v	$w3,$w13
	subv.h	$w0,$w4,$w0
	insve.d	$w3[1],$w6[0]
	addv.h	$w6,$w0,$w7
	subv.h	$w3,$w8,$w3
	subv.h	$w0,$w0,$w7
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w6
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	daddiu	$12,$12,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,8
	addu	$2,$3,$2
	addu	$2,$2,$14
	bne	$12,$15,.L1992
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1993
	daddu	$6,$6,$18

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l
	.type	_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l, @function
_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l:
	.frame	$sp,144,$31		# vars= 0, regs= 10/8, args= 0, gp= 0
	.mask	0x50ff0000,-72
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-144
	move	$24,$0
	dlsa	$15,$5,$5,1
	sd	$18,16($sp)
	dlsa	$14,$7,$7,1
	sd	$17,8($sp)
	dsll	$18,$5,2
	dsll	$17,$7,2
	sd	$16,0($sp)
	li	$16,16			# 0x10
	sd	$fp,72($sp)
	sd	$23,56($sp)
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sdc1	$f31,136($sp)
	sdc1	$f30,128($sp)
	sdc1	$f29,120($sp)
	sdc1	$f28,112($sp)
	sdc1	$f27,104($sp)
	sdc1	$f26,96($sp)
	sdc1	$f25,88($sp)
	sdc1	$f24,80($sp)
	.align	3
.L1999:
	move	$8,$4
	daddiu	$11,$4,8
	move	$10,$6
	daddiu	$9,$6,8
	daddiu	$25,$4,64
.L1998:
	daddu	$13,$5,$8
	daddu	$12,$5,$11
	vbld	$w30,0($8)
	vbld	$w9,0($11)
	daddu	$3,$7,$10
	daddu	$2,$7,$9
	vbld	$w1,0($13)
	vbld	$w29,0($10)
	daddu	$fp,$15,$8
	daddu	$21,$15,$11
	vbld	$w25,0($9)
	vbld	$w14,0($12)
	vbld	$w22,0($fp)
	daddu	$20,$10,$14
	daddu	$19,$9,$14
	vbld	$w15,0($3)
	daddu	$23,$13,$5
	daddu	$22,$5,$12
	vbld	$w13,0($2)
	hadd_u.h	$w10,$w9,$w9
	daddu	$fp,$7,$3
	daddu	$13,$7,$2
	vbld	$w23,0($23)
	vbld	$w19,0($22)
	vbld	$w18,0($21)
	hadd_u.h	$w8,$w19,$w19
	vbld	$w21,0($fp)
	vbld	$w20,0($20)
	vbld	$w17,0($13)
	vbld	$w16,0($19)
	hadd_u.h	$w2,$w30,$w30
	hadd_u.h	$w7,$w1,$w1
	hadd_u.h	$w0,$w23,$w23
	hadd_u.h	$w12,$w22,$w22
	hadd_u.h	$w5,$w29,$w29
	hadd_u.h	$w31,$w15,$w15
	hadd_u.h	$w11,$w21,$w21
	hadd_u.h	$w3,$w20,$w20
	hadd_u.h	$w6,$w14,$w14
	hadd_u.h	$w4,$w18,$w18
	hadd_u.h	$w28,$w25,$w25
	hadd_u.h	$w27,$w13,$w13
	hadd_u.h	$w26,$w17,$w17
	hadd_u.h	$w24,$w16,$w16
	hsub_u.h	$w1,$w1,$w1
	hsub_u.h	$w15,$w15,$w15
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w14,$w14,$w14
	insve.d	$w7[1],$w1[0]
	insve.d	$w6[1],$w14[0]
	insve.d	$w31[1],$w15[0]
	hsub_u.h	$w30,$w30,$w30
	subv.h	$w7,$w7,$w31
	hsub_u.h	$w23,$w23,$w23
	hsub_u.h	$w22,$w22,$w22
	hsub_u.h	$w29,$w29,$w29
	insve.d	$w12[1],$w22[0]
	insve.d	$w5[1],$w29[0]
	hsub_u.h	$w21,$w21,$w21
	hsub_u.h	$w20,$w20,$w20
	hsub_u.h	$w19,$w19,$w19
	insve.d	$w3[1],$w20[0]
	hsub_u.h	$w18,$w18,$w18
	hsub_u.h	$w25,$w25,$w25
	insve.d	$w4[1],$w18[0]
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w17,$w17,$w17
	hsub_u.h	$w16,$w16,$w16
	insve.d	$w2[1],$w30[0]
	insve.d	$w0[1],$w23[0]
	subv.h	$w2,$w2,$w5
	insve.d	$w11[1],$w21[0]
	subv.h	$w1,$w7,$w2
	addv.h	$w15,$w7,$w2
	subv.h	$w0,$w0,$w11
	subv.h	$w7,$w12,$w3
	move.v	$w2,$w10
	addv.h	$w5,$w7,$w0
	insve.d	$w2[1],$w9[0]
	subv.h	$w7,$w7,$w0
	asub_s.h	$w12,$w5,$w15
	asub_s.h	$w14,$w7,$w1
	move.v	$w0,$w8
	insve.d	$w28[1],$w25[0]
	insve.d	$w0[1],$w19[0]
	subv.h	$w10,$w2,$w28
	move.v	$w9,$w0
	insve.d	$w27[1],$w13[0]
	insve.d	$w26[1],$w17[0]
	subv.h	$w2,$w6,$w27
	subv.h	$w8,$w9,$w26
	addv.h	$w0,$w2,$w10
	addv.h	$w6,$w7,$w1
	subv.h	$w2,$w2,$w10
	vabs.h	$w6,$w6
	insve.d	$w24[1],$w16[0]
	addv.h	$w5,$w5,$w15
	subv.h	$w3,$w4,$w24
	vabs.h	$w5,$w5
	addv.h	$w4,$w3,$w8
	ilvod.h	$w1,$w6,$w5
	subv.h	$w3,$w3,$w8
	ilvev.h	$w5,$w6,$w5
	asub_s.h	$w8,$w4,$w0
	asub_s.h	$w9,$w3,$w2
	addv.h	$w4,$w4,$w0
	addv.h	$w3,$w3,$w2
	vabs.h	$w4,$w4
	vabs.h	$w2,$w3
	ilvod.h	$w0,$w14,$w12
	ilvod.h	$w3,$w2,$w4
	ilvev.h	$w7,$w14,$w12
	ilvev.h	$w2,$w2,$w4
	ilvod.h	$w6,$w9,$w8
	ilvev.h	$w4,$w9,$w8
	max_s.h	$w1,$w1,$w5
	max_s.h	$w0,$w0,$w7
	max_s.h	$w2,$w3,$w2
	max_s.h	$w4,$w6,$w4
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w4,$w4,$w4
	addv.w	$w0,$w1,$w0
	addv.w	$w2,$w2,$w4
	addv.w	$w0,$w0,$w2
	copy_s.w	$2,$w0[1]
	copy_s.w	$3,$w0[0]
	addu	$3,$3,$2
	copy_s.w	$12,$w0[2]
	copy_s.w	$2,$w0[3]
	daddiu	$8,$8,16
	addu	$3,$3,$12
	daddiu	$11,$11,16
	addu	$2,$3,$2
	daddiu	$10,$10,16
	addu	$2,$2,$24
	daddiu	$9,$9,16
	bne	$8,$25,.L1998
	move	$24,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$18
	bne	$16,$0,.L1999
	daddu	$6,$6,$17

	ld	$fp,72($sp)
	ldc1	$f31,136($sp)
	ld	$23,56($sp)
	ldc1	$f30,128($sp)
	ld	$22,48($sp)
	ldc1	$f29,120($sp)
	ld	$21,40($sp)
	ldc1	$f28,112($sp)
	ld	$20,32($sp)
	ldc1	$f27,104($sp)
	ld	$19,24($sp)
	ldc1	$f26,96($sp)
	ld	$18,16($sp)
	ldc1	$f25,88($sp)
	ld	$17,8($sp)
	ldc1	$f24,80($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,144

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l
	.size	_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l, .-_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$13,$5,1
	dsll	$12,$7,1
	li	$8,16			# 0x10
	move	$11,$0
	daddu	$15,$5,$13
	daddu	$14,$7,$12
	.align	3
.L2004:
	daddu	$3,$4,$5
	daddu	$2,$6,$7
	vbld	$w9,0($4)
	vbld	$w7,0($6)
	daddu	$10,$3,$5
	daddu	$9,$7,$2
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$4,$15,$4
	daddu	$6,$14,$6
	vbld	$w8,0($10)
	vbld	$w6,0($9)
	vbld	$w1,0($4)
	vbld	$w0,0($6)
	hadd_u.h	$w11,$w9,$w9
	hadd_u.h	$w5,$w4,$w4
	hadd_u.h	$w10,$w8,$w8
	hadd_u.h	$w2,$w1,$w1
	hadd_u.h	$w15,$w7,$w7
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w12,$w0,$w0
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w1,$w1,$w1
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w2[1],$w1[0]
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w0,$w0,$w0
	insve.d	$w5[1],$w4[0]
	hsub_u.h	$w9,$w9,$w9
	move.v	$w4,$w5
	hsub_u.h	$w8,$w8,$w8
	insve.d	$w11[1],$w9[0]
	move.v	$w5,$w10
	move.v	$w1,$w15
	insve.d	$w5[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	move.v	$w7,$w1
	move.v	$w1,$w14
	subv.h	$w7,$w11,$w7
	insve.d	$w1[1],$w3[0]
	subv.h	$w3,$w4,$w1
	move.v	$w1,$w13
	insve.d	$w1[1],$w6[0]
	addv.h	$w6,$w3,$w7
	subv.h	$w4,$w5,$w1
	subv.h	$w3,$w3,$w7
	move.v	$w1,$w12
	insve.d	$w1[1],$w0[0]
	subv.h	$w1,$w2,$w1
	addv.h	$w2,$w1,$w4
	subv.h	$w1,$w1,$w4
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w3
	asub_s.h	$w0,$w1,$w3
	addv.h	$w2,$w2,$w6
	vabs.h	$w0,$w0
	vabs.h	$w2,$w2
	ilvod.h	$w3,$w0,$w4
	ilvod.h	$w1,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	max_s.h	$w0,$w3,$w0
	max_s.h	$w1,$w1,$w2
	hadd_s.w	$w0,$w0,$w0
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addiu	$8,$8,-1
	addu	$2,$3,$2
	daddu	$4,$13,$10
	addu	$2,$2,$11
	daddu	$6,$12,$9
	bne	$8,$0,.L2004
	move	$11,$2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$14,$0
	dlsa	$24,$7,$7,1
	sd	$18,16($sp)
	dsll	$18,$7,2
	sd	$17,8($sp)
	dlsa	$25,$5,$5,1
	dsll	$17,$5,2
	sd	$16,0($sp)
	li	$16,4			# 0x4
.L2009:
	daddiu	$15,$4,32
	move	$13,$6
	move	$12,$4
.L2008:
	daddu	$3,$12,$5
	daddu	$2,$13,$7
	vbld	$w10,0($12)
	vbld	$w9,0($13)
	daddu	$10,$25,$12
	daddu	$8,$24,$13
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$11,$3,$5
	daddu	$9,$2,$7
	vbld	$w7,0($10)
	vbld	$w5,0($8)
	vbld	$w8,0($11)
	vbld	$w6,0($9)
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w7[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	move.v	$w4,$w0
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w12[1],$w10[0]
	move.v	$w0,$w11
	move.v	$w7,$w15
	insve.d	$w0[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	move.v	$w8,$w0
	subv.h	$w7,$w12,$w7
	move.v	$w0,$w14
	insve.d	$w0[1],$w3[0]
	move.v	$w3,$w13
	subv.h	$w0,$w4,$w0
	insve.d	$w3[1],$w6[0]
	addv.h	$w6,$w0,$w7
	subv.h	$w3,$w8,$w3
	subv.h	$w0,$w0,$w7
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w6
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	daddiu	$12,$12,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,8
	addu	$2,$3,$2
	addu	$2,$2,$14
	bne	$12,$15,.L2008
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L2009
	daddu	$6,$6,$18

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	li	$15,8			# 0x8
	move	$14,$0
	sd	$18,16($sp)
	dlsa	$18,$5,$5,1
	sd	$17,8($sp)
	dlsa	$25,$7,$7,1
	dsll	$17,$7,2
	sd	$16,0($sp)
	dsll	$16,$5,2
	.align	3
.L2015:
	daddiu	$24,$4,16
	move	$13,$6
	move	$12,$4
.L2014:
	daddu	$3,$12,$5
	daddu	$2,$13,$7
	vbld	$w10,0($12)
	vbld	$w9,0($13)
	daddu	$10,$18,$12
	daddu	$8,$25,$13
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$11,$3,$5
	daddu	$9,$2,$7
	vbld	$w7,0($10)
	vbld	$w5,0($8)
	vbld	$w8,0($11)
	vbld	$w6,0($9)
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w7[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	move.v	$w4,$w0
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w12[1],$w10[0]
	move.v	$w0,$w11
	move.v	$w7,$w15
	insve.d	$w0[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	move.v	$w8,$w0
	subv.h	$w7,$w12,$w7
	move.v	$w0,$w14
	insve.d	$w0[1],$w3[0]
	move.v	$w3,$w13
	subv.h	$w0,$w4,$w0
	insve.d	$w3[1],$w6[0]
	addv.h	$w6,$w0,$w7
	subv.h	$w3,$w8,$w3
	subv.h	$w0,$w0,$w7
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w6
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	daddiu	$12,$12,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,8
	addu	$2,$3,$2
	addu	$2,$2,$14
	bne	$12,$24,.L2014
	move	$14,$2

	addiu	$15,$15,-1
	daddu	$4,$4,$16
	bne	$15,$0,.L2015
	daddu	$6,$6,$17

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	li	$15,6			# 0x6
	move	$14,$0
	sd	$18,16($sp)
	dlsa	$18,$5,$5,1
	sd	$17,8($sp)
	dlsa	$25,$7,$7,1
	dsll	$17,$7,2
	sd	$16,0($sp)
	dsll	$16,$5,2
	.align	3
.L2021:
	daddiu	$24,$4,16
	move	$13,$6
	move	$12,$4
.L2020:
	daddu	$3,$12,$5
	daddu	$2,$13,$7
	vbld	$w10,0($12)
	vbld	$w9,0($13)
	daddu	$10,$18,$12
	daddu	$8,$25,$13
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$11,$3,$5
	daddu	$9,$2,$7
	vbld	$w7,0($10)
	vbld	$w5,0($8)
	vbld	$w8,0($11)
	vbld	$w6,0($9)
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w7[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	move.v	$w4,$w0
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w12[1],$w10[0]
	move.v	$w0,$w11
	move.v	$w7,$w15
	insve.d	$w0[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	move.v	$w8,$w0
	subv.h	$w7,$w12,$w7
	move.v	$w0,$w14
	insve.d	$w0[1],$w3[0]
	move.v	$w3,$w13
	subv.h	$w0,$w4,$w0
	insve.d	$w3[1],$w6[0]
	addv.h	$w6,$w0,$w7
	subv.h	$w3,$w8,$w3
	subv.h	$w0,$w0,$w7
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w6
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	daddiu	$12,$12,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,8
	addu	$2,$3,$2
	addu	$2,$2,$14
	bne	$12,$24,.L2020
	move	$14,$2

	addiu	$15,$15,-1
	daddu	$4,$4,$16
	bne	$15,$0,.L2021
	daddu	$6,$6,$17

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l
	.type	_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l, @function
_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l:
	.frame	$sp,96,$31		# vars= 16, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	dsll	$2,$7,3
	sd	$18,32($sp)
	dsll	$18,$5,1
	dsll	$3,$5,3
	sd	$23,72($sp)
	dsubu	$2,$2,$7
	daddu	$6,$6,$7
	sd	$22,64($sp)
	li	$23,8			# 0x8
	dsll	$22,$7,1
	sd	$21,56($sp)
	daddu	$21,$18,$5
	sd	$20,48($sp)
	dsll	$20,$7,2
	sd	$17,24($sp)
	move	$17,$0
	sd	$fp,88($sp)
	sd	$19,40($sp)
	sd	$16,16($sp)
	sd	$3,0($sp)
	sd	$2,8($sp)
	.align	3
.L2027:
	daddu	$fp,$7,$6
	move	$24,$4
	daddu	$16,$18,$4
	daddiu	$19,$4,64
	move	$25,$fp
	.align	3
.L2026:
	daddu	$12,$5,$16
	daddu	$10,$7,$25
	vbld	$w10,0($24)
	vbld	$w8,0($6)
	daddu	$3,$10,$22
	daddu	$9,$12,$18
	vbld	$w9,0($16)
	vbld	$w7,0($25)
	dsubu	$11,$6,$7
	daddu	$13,$5,$24
	hadd_u.h	$w2,$w9,$w9
	hadd_u.h	$w14,$w8,$w8
	daddu	$2,$3,$7
	daddu	$8,$9,$5
	vbld	$w3,0($11)
	vbld	$w5,0($13)
	daddu	$15,$21,$13
	daddu	$14,$11,$20
	hadd_u.h	$w15,$w3,$w3
	hadd_u.h	$w13,$w7,$w7
	daddu	$13,$5,$8
	daddu	$11,$2,$7
	vbld	$w4,0($12)
	vbld	$w1,0($10)
	hadd_u.h	$w11,$w10,$w10
	hadd_u.h	$w12,$w1,$w1
	hadd_u.h	$w6,$w5,$w5
	hadd_u.h	$w0,$w4,$w4
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w11[1],$w10[0]
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w1,$w1,$w1
	insve.d	$w6[1],$w5[0]
	insve.d	$w0[1],$w4[0]
	move.v	$w5,$w6
	move.v	$w4,$w0
	move.v	$w6,$w2
	move.v	$w0,$w12
	insve.d	$w6[1],$w9[0]
	move.v	$w2,$w15
	insve.d	$w0[1],$w1[0]
	insve.d	$w2[1],$w3[0]
	subv.h	$w0,$w4,$w0
	move.v	$w3,$w14
	vbld	$w4,0($3)
	insve.d	$w3[1],$w8[0]
	vbld	$w10,0($15)
	subv.h	$w8,$w11,$w2
	subv.h	$w3,$w5,$w3
	move.v	$w2,$w13
	addv.h	$w5,$w3,$w8
	insve.d	$w2[1],$w7[0]
	subv.h	$w3,$w3,$w8
	subv.h	$w2,$w6,$w2
	vbld	$w8,0($14)
	addv.h	$w11,$w0,$w2
	vbld	$w6,0($9)
	addv.h	$w13,$w11,$w5
	subv.h	$w0,$w0,$w2
	subv.h	$w11,$w11,$w5
	subv.h	$w2,$w0,$w3
	addv.h	$w12,$w0,$w3
	vbld	$w5,0($8)
	vbld	$w3,0($2)
	vbld	$w9,0($13)
	vbld	$w7,0($11)
	hadd_u.h	$w16,$w10,$w10
	hadd_u.h	$w14,$w6,$w6
	hadd_u.h	$w15,$w5,$w5
	hadd_u.h	$w1,$w9,$w9
	hadd_u.h	$w19,$w8,$w8
	hadd_u.h	$w18,$w4,$w4
	hadd_u.h	$w0,$w3,$w3
	hadd_u.h	$w17,$w7,$w7
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	insve.d	$w1[1],$w9[0]
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w0[1],$w3[0]
	insve.d	$w16[1],$w10[0]
	insve.d	$w17[1],$w7[0]
	move.v	$w10,$w14
	insve.d	$w10[1],$w6[0]
	move.v	$w6,$w10
	move.v	$w10,$w15
	insve.d	$w10[1],$w5[0]
	move.v	$w5,$w19
	insve.d	$w5[1],$w8[0]
	move.v	$w8,$w5
	move.v	$w5,$w18
	subv.h	$w8,$w16,$w8
	insve.d	$w5[1],$w4[0]
	subv.h	$w4,$w6,$w5
	subv.h	$w5,$w10,$w0
	addv.h	$w6,$w4,$w8
	subv.h	$w3,$w4,$w8
	subv.h	$w0,$w1,$w17
	addv.h	$w4,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w7,$w4,$w6
	subv.h	$w4,$w4,$w6
	addv.h	$w1,$w7,$w13
	addv.h	$w6,$w0,$w3
	addv.h	$w8,$w4,$w11
	addv.h	$w5,$w6,$w12
	subv.h	$w11,$w4,$w11
	subv.h	$w0,$w0,$w3
	subv.h	$w13,$w7,$w13
	addv.h	$w3,$w0,$w2
	pckod.h	$w7,$w13,$w1
	subv.h	$w0,$w0,$w2
	pckev.h	$w13,$w13,$w1
	pckod.h	$w4,$w0,$w3
	asub_s.h	$w10,$w7,$w13
	pckev.h	$w0,$w0,$w3
	subv.h	$w12,$w6,$w12
	addv.h	$w13,$w7,$w13
	pckod.h	$w6,$w12,$w5
	vabs.h	$w13,$w13
	pckev.h	$w12,$w12,$w5
	ilvod.h	$w1,$w13,$w10
	pckod.h	$w5,$w11,$w8
	asub_s.h	$w2,$w6,$w12
	pckev.h	$w11,$w11,$w8
	addv.h	$w12,$w6,$w12
	asub_s.h	$w8,$w4,$w0
	asub_s.h	$w9,$w5,$w11
	addv.h	$w4,$w4,$w0
	vabs.h	$w12,$w12
	vabs.h	$w3,$w4
	ilvod.h	$w0,$w12,$w2
	ilvod.h	$w4,$w3,$w8
	ilvev.h	$w12,$w12,$w2
	addv.h	$w11,$w5,$w11
	ilvev.h	$w13,$w13,$w10
	vabs.h	$w11,$w11
	ilvev.h	$w3,$w3,$w8
	ilvod.h	$w2,$w11,$w9
	max_s.h	$w1,$w1,$w13
	ilvev.h	$w11,$w11,$w9
	max_s.h	$w0,$w0,$w12
	max_s.h	$w2,$w2,$w11
	max_s.h	$w3,$w4,$w3
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w3,$w3,$w3
	addv.w	$w0,$w1,$w0
	addv.w	$w2,$w2,$w3
	addv.w	$w0,$w0,$w2
	copy_s.w	$2,$w0[1]
	copy_s.w	$3,$w0[0]
	addu	$3,$3,$2
	copy_s.w	$8,$w0[2]
	addu	$3,$3,$8
	copy_s.w	$2,$w0[3]
	daddiu	$24,$24,8
	addu	$2,$3,$2
	daddiu	$6,$6,8
	addiu	$2,$2,1
	daddiu	$16,$16,8
	sra	$2,$2,1
	daddiu	$25,$25,8
	addu	$2,$2,$17
	bne	$24,$19,.L2026
	move	$17,$2

	ld	$3,0($sp)
	addiu	$23,$23,-1
	daddu	$4,$4,$3
	ld	$3,8($sp)
	bne	$23,$0,.L2027
	daddu	$6,$3,$fp

	ld	$fp,88($sp)
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
	.end	_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l
	.size	_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l, .-_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$14,$0
	dlsa	$24,$7,$7,1
	sd	$19,32($sp)
	li	$19,1			# 0x1
	sd	$18,24($sp)
	dlsa	$25,$5,$5,1
	dsll	$18,$7,2
	sd	$17,16($sp)
	dsll	$17,$5,2
	sd	$16,8($sp)
	li	$16,2			# 0x2
.L2033:
	daddiu	$15,$4,32
	move	$13,$6
	move	$12,$4
.L2032:
	daddu	$3,$12,$5
	daddu	$2,$13,$7
	vbld	$w10,0($12)
	vbld	$w9,0($13)
	daddu	$10,$25,$12
	daddu	$8,$24,$13
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$11,$3,$5
	daddu	$9,$2,$7
	vbld	$w7,0($10)
	vbld	$w5,0($8)
	vbld	$w8,0($11)
	vbld	$w6,0($9)
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w7[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	move.v	$w4,$w0
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w12[1],$w10[0]
	move.v	$w0,$w11
	move.v	$w7,$w15
	insve.d	$w0[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	move.v	$w8,$w0
	subv.h	$w7,$w12,$w7
	move.v	$w0,$w14
	insve.d	$w0[1],$w3[0]
	move.v	$w3,$w13
	subv.h	$w0,$w4,$w0
	insve.d	$w3[1],$w6[0]
	addv.h	$w6,$w0,$w7
	subv.h	$w3,$w8,$w3
	subv.h	$w0,$w0,$w7
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w6
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	daddiu	$12,$12,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,8
	addu	$2,$3,$2
	addu	$2,$2,$14
	bne	$12,$15,.L2032
	move	$14,$2

	daddu	$4,$4,$17
	bne	$16,$19,.L2034
	daddu	$6,$6,$18

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.align	3
.L2034:
	b	.L2033
	li	$16,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$13,$5,1
	dsll	$12,$7,1
	li	$8,8			# 0x8
	move	$11,$0
	daddu	$15,$5,$13
	daddu	$14,$7,$12
	.align	3
.L2038:
	daddu	$3,$4,$5
	daddu	$2,$6,$7
	vbld	$w9,0($4)
	vbld	$w7,0($6)
	daddu	$10,$3,$5
	daddu	$9,$7,$2
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$4,$15,$4
	daddu	$6,$14,$6
	vbld	$w8,0($10)
	vbld	$w6,0($9)
	vbld	$w1,0($4)
	vbld	$w0,0($6)
	hadd_u.h	$w11,$w9,$w9
	hadd_u.h	$w5,$w4,$w4
	hadd_u.h	$w10,$w8,$w8
	hadd_u.h	$w2,$w1,$w1
	hadd_u.h	$w15,$w7,$w7
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w12,$w0,$w0
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w1,$w1,$w1
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w2[1],$w1[0]
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w0,$w0,$w0
	insve.d	$w5[1],$w4[0]
	hsub_u.h	$w9,$w9,$w9
	move.v	$w4,$w5
	hsub_u.h	$w8,$w8,$w8
	insve.d	$w11[1],$w9[0]
	move.v	$w5,$w10
	move.v	$w1,$w15
	insve.d	$w5[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	move.v	$w7,$w1
	move.v	$w1,$w14
	subv.h	$w7,$w11,$w7
	insve.d	$w1[1],$w3[0]
	subv.h	$w3,$w4,$w1
	move.v	$w1,$w13
	insve.d	$w1[1],$w6[0]
	addv.h	$w6,$w3,$w7
	subv.h	$w4,$w5,$w1
	subv.h	$w3,$w3,$w7
	move.v	$w1,$w12
	insve.d	$w1[1],$w0[0]
	subv.h	$w1,$w2,$w1
	addv.h	$w2,$w1,$w4
	subv.h	$w1,$w1,$w4
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w3
	asub_s.h	$w0,$w1,$w3
	addv.h	$w2,$w2,$w6
	vabs.h	$w0,$w0
	vabs.h	$w2,$w2
	ilvod.h	$w3,$w0,$w4
	ilvod.h	$w1,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	max_s.h	$w0,$w3,$w0
	max_s.h	$w1,$w1,$w2
	hadd_s.w	$w0,$w0,$w0
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addiu	$8,$8,-1
	addu	$2,$3,$2
	daddu	$4,$13,$10
	addu	$2,$2,$11
	daddu	$6,$12,$9
	bne	$8,$0,.L2038
	move	$11,$2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	li	$15,3			# 0x3
	move	$14,$0
	sd	$18,16($sp)
	dlsa	$18,$5,$5,1
	sd	$17,8($sp)
	dlsa	$25,$7,$7,1
	dsll	$17,$7,2
	sd	$16,0($sp)
	dsll	$16,$5,2
.L2043:
	daddiu	$24,$4,16
	move	$13,$6
	move	$12,$4
.L2042:
	daddu	$3,$12,$5
	daddu	$2,$13,$7
	vbld	$w10,0($12)
	vbld	$w9,0($13)
	daddu	$10,$18,$12
	daddu	$8,$25,$13
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$11,$3,$5
	daddu	$9,$2,$7
	vbld	$w7,0($10)
	vbld	$w5,0($8)
	vbld	$w8,0($11)
	vbld	$w6,0($9)
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w7[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	move.v	$w4,$w0
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w12[1],$w10[0]
	move.v	$w0,$w11
	move.v	$w7,$w15
	insve.d	$w0[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	move.v	$w8,$w0
	subv.h	$w7,$w12,$w7
	move.v	$w0,$w14
	insve.d	$w0[1],$w3[0]
	move.v	$w3,$w13
	subv.h	$w0,$w4,$w0
	insve.d	$w3[1],$w6[0]
	addv.h	$w6,$w0,$w7
	subv.h	$w3,$w8,$w3
	subv.h	$w0,$w0,$w7
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w6
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	daddiu	$12,$12,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,8
	addu	$2,$3,$2
	addu	$2,$2,$14
	bne	$12,$24,.L2042
	move	$14,$2

	addiu	$15,$15,-1
	daddu	$4,$4,$16
	bne	$15,$0,.L2043
	daddu	$6,$6,$17

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l
	.type	_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l, @function
_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l:
	.frame	$sp,144,$31		# vars= 0, regs= 10/8, args= 0, gp= 0
	.mask	0x50ff0000,-72
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-144
	move	$24,$0
	dlsa	$15,$5,$5,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	li	$25,8			# 0x8
	dsll	$17,$7,2
	dlsa	$14,$7,$7,1
	sd	$fp,72($sp)
	sd	$23,56($sp)
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$16,0($sp)
	sdc1	$f31,136($sp)
	sdc1	$f30,128($sp)
	sdc1	$f29,120($sp)
	sdc1	$f28,112($sp)
	sdc1	$f27,104($sp)
	sdc1	$f26,96($sp)
	sdc1	$f25,88($sp)
	sdc1	$f24,80($sp)
	.align	3
.L2049:
	move	$8,$4
	daddiu	$11,$4,8
	move	$10,$6
	daddiu	$9,$6,8
	daddiu	$16,$4,32
.L2048:
	daddu	$13,$5,$8
	daddu	$12,$5,$11
	vbld	$w30,0($8)
	vbld	$w9,0($11)
	daddu	$3,$7,$10
	daddu	$2,$7,$9
	vbld	$w1,0($13)
	vbld	$w29,0($10)
	daddu	$fp,$15,$8
	daddu	$21,$15,$11
	vbld	$w25,0($9)
	vbld	$w14,0($12)
	vbld	$w22,0($fp)
	daddu	$20,$10,$14
	daddu	$19,$9,$14
	vbld	$w15,0($3)
	daddu	$23,$13,$5
	daddu	$22,$5,$12
	vbld	$w13,0($2)
	hadd_u.h	$w10,$w9,$w9
	daddu	$fp,$7,$3
	daddu	$13,$7,$2
	vbld	$w23,0($23)
	vbld	$w19,0($22)
	vbld	$w18,0($21)
	hadd_u.h	$w8,$w19,$w19
	vbld	$w21,0($fp)
	vbld	$w20,0($20)
	vbld	$w17,0($13)
	vbld	$w16,0($19)
	hadd_u.h	$w2,$w30,$w30
	hadd_u.h	$w7,$w1,$w1
	hadd_u.h	$w0,$w23,$w23
	hadd_u.h	$w12,$w22,$w22
	hadd_u.h	$w5,$w29,$w29
	hadd_u.h	$w31,$w15,$w15
	hadd_u.h	$w11,$w21,$w21
	hadd_u.h	$w3,$w20,$w20
	hadd_u.h	$w6,$w14,$w14
	hadd_u.h	$w4,$w18,$w18
	hadd_u.h	$w28,$w25,$w25
	hadd_u.h	$w27,$w13,$w13
	hadd_u.h	$w26,$w17,$w17
	hadd_u.h	$w24,$w16,$w16
	hsub_u.h	$w1,$w1,$w1
	hsub_u.h	$w15,$w15,$w15
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w14,$w14,$w14
	insve.d	$w7[1],$w1[0]
	insve.d	$w6[1],$w14[0]
	insve.d	$w31[1],$w15[0]
	hsub_u.h	$w30,$w30,$w30
	subv.h	$w7,$w7,$w31
	hsub_u.h	$w23,$w23,$w23
	hsub_u.h	$w22,$w22,$w22
	hsub_u.h	$w29,$w29,$w29
	insve.d	$w12[1],$w22[0]
	insve.d	$w5[1],$w29[0]
	hsub_u.h	$w21,$w21,$w21
	hsub_u.h	$w20,$w20,$w20
	hsub_u.h	$w19,$w19,$w19
	insve.d	$w3[1],$w20[0]
	hsub_u.h	$w18,$w18,$w18
	hsub_u.h	$w25,$w25,$w25
	insve.d	$w4[1],$w18[0]
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w17,$w17,$w17
	hsub_u.h	$w16,$w16,$w16
	insve.d	$w2[1],$w30[0]
	insve.d	$w0[1],$w23[0]
	subv.h	$w2,$w2,$w5
	insve.d	$w11[1],$w21[0]
	subv.h	$w1,$w7,$w2
	addv.h	$w15,$w7,$w2
	subv.h	$w0,$w0,$w11
	subv.h	$w7,$w12,$w3
	move.v	$w2,$w10
	addv.h	$w5,$w7,$w0
	insve.d	$w2[1],$w9[0]
	subv.h	$w7,$w7,$w0
	asub_s.h	$w12,$w5,$w15
	asub_s.h	$w14,$w7,$w1
	move.v	$w0,$w8
	insve.d	$w28[1],$w25[0]
	insve.d	$w0[1],$w19[0]
	subv.h	$w10,$w2,$w28
	move.v	$w9,$w0
	insve.d	$w27[1],$w13[0]
	insve.d	$w26[1],$w17[0]
	subv.h	$w2,$w6,$w27
	subv.h	$w8,$w9,$w26
	addv.h	$w0,$w2,$w10
	addv.h	$w6,$w7,$w1
	subv.h	$w2,$w2,$w10
	vabs.h	$w6,$w6
	insve.d	$w24[1],$w16[0]
	addv.h	$w5,$w5,$w15
	subv.h	$w3,$w4,$w24
	vabs.h	$w5,$w5
	addv.h	$w4,$w3,$w8
	ilvod.h	$w1,$w6,$w5
	subv.h	$w3,$w3,$w8
	ilvev.h	$w5,$w6,$w5
	asub_s.h	$w8,$w4,$w0
	asub_s.h	$w9,$w3,$w2
	addv.h	$w4,$w4,$w0
	addv.h	$w3,$w3,$w2
	vabs.h	$w4,$w4
	vabs.h	$w2,$w3
	ilvod.h	$w0,$w14,$w12
	ilvod.h	$w3,$w2,$w4
	ilvev.h	$w7,$w14,$w12
	ilvev.h	$w2,$w2,$w4
	ilvod.h	$w6,$w9,$w8
	ilvev.h	$w4,$w9,$w8
	max_s.h	$w1,$w1,$w5
	max_s.h	$w0,$w0,$w7
	max_s.h	$w2,$w3,$w2
	max_s.h	$w4,$w6,$w4
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w4,$w4,$w4
	addv.w	$w0,$w1,$w0
	addv.w	$w2,$w2,$w4
	addv.w	$w0,$w0,$w2
	copy_s.w	$2,$w0[1]
	copy_s.w	$3,$w0[0]
	addu	$3,$3,$2
	copy_s.w	$12,$w0[2]
	copy_s.w	$2,$w0[3]
	daddiu	$8,$8,16
	addu	$3,$3,$12
	daddiu	$11,$11,16
	addu	$2,$3,$2
	daddiu	$10,$10,16
	addu	$2,$2,$24
	daddiu	$9,$9,16
	bne	$8,$16,.L2048
	move	$24,$2

	addiu	$25,$25,-1
	daddu	$4,$4,$18
	bne	$25,$0,.L2049
	daddu	$6,$6,$17

	ld	$fp,72($sp)
	ldc1	$f31,136($sp)
	ld	$23,56($sp)
	ldc1	$f30,128($sp)
	ld	$22,48($sp)
	ldc1	$f29,120($sp)
	ld	$21,40($sp)
	ldc1	$f28,112($sp)
	ld	$20,32($sp)
	ldc1	$f27,104($sp)
	ld	$19,24($sp)
	ldc1	$f26,96($sp)
	ld	$18,16($sp)
	ldc1	$f25,88($sp)
	ld	$17,8($sp)
	ldc1	$f24,80($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,144

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l
	.size	_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l, .-_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$14,$0
	dlsa	$24,$7,$7,1
	sd	$19,32($sp)
	li	$19,1			# 0x1
	sd	$18,24($sp)
	dlsa	$25,$5,$5,1
	dsll	$18,$7,2
	sd	$17,16($sp)
	dsll	$17,$5,2
	sd	$16,8($sp)
	li	$16,2			# 0x2
.L2055:
	daddiu	$15,$4,16
	move	$13,$6
	move	$12,$4
.L2054:
	daddu	$3,$12,$5
	daddu	$2,$13,$7
	vbld	$w10,0($12)
	vbld	$w9,0($13)
	daddu	$10,$25,$12
	daddu	$8,$24,$13
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$11,$3,$5
	daddu	$9,$2,$7
	vbld	$w7,0($10)
	vbld	$w5,0($8)
	vbld	$w8,0($11)
	vbld	$w6,0($9)
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w7[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	move.v	$w4,$w0
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w12[1],$w10[0]
	move.v	$w0,$w11
	move.v	$w7,$w15
	insve.d	$w0[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	move.v	$w8,$w0
	subv.h	$w7,$w12,$w7
	move.v	$w0,$w14
	insve.d	$w0[1],$w3[0]
	move.v	$w3,$w13
	subv.h	$w0,$w4,$w0
	insve.d	$w3[1],$w6[0]
	addv.h	$w6,$w0,$w7
	subv.h	$w3,$w8,$w3
	subv.h	$w0,$w0,$w7
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w6
	asub_s.h	$w1,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w1
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	daddiu	$12,$12,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,8
	addu	$2,$3,$2
	addu	$2,$2,$14
	bne	$12,$15,.L2054
	move	$14,$2

	daddu	$4,$4,$17
	bne	$16,$19,.L2056
	daddu	$6,$6,$18

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.align	3
.L2056:
	b	.L2055
	li	$16,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$13,$5,1
	dsll	$12,$7,1
	li	$8,4			# 0x4
	move	$11,$0
	daddu	$15,$5,$13
	daddu	$14,$7,$12
.L2060:
	daddu	$3,$4,$5
	daddu	$2,$6,$7
	vbld	$w9,0($4)
	vbld	$w7,0($6)
	daddu	$10,$3,$5
	daddu	$9,$7,$2
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$4,$15,$4
	daddu	$6,$14,$6
	vbld	$w8,0($10)
	vbld	$w6,0($9)
	vbld	$w1,0($4)
	vbld	$w0,0($6)
	hadd_u.h	$w11,$w9,$w9
	hadd_u.h	$w5,$w4,$w4
	hadd_u.h	$w10,$w8,$w8
	hadd_u.h	$w2,$w1,$w1
	hadd_u.h	$w15,$w7,$w7
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w12,$w0,$w0
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w1,$w1,$w1
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w2[1],$w1[0]
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w0,$w0,$w0
	insve.d	$w5[1],$w4[0]
	hsub_u.h	$w9,$w9,$w9
	move.v	$w4,$w5
	hsub_u.h	$w8,$w8,$w8
	insve.d	$w11[1],$w9[0]
	move.v	$w5,$w10
	move.v	$w1,$w15
	insve.d	$w5[1],$w8[0]
	insve.d	$w1[1],$w7[0]
	move.v	$w7,$w1
	move.v	$w1,$w14
	subv.h	$w7,$w11,$w7
	insve.d	$w1[1],$w3[0]
	subv.h	$w3,$w4,$w1
	move.v	$w1,$w13
	insve.d	$w1[1],$w6[0]
	addv.h	$w6,$w3,$w7
	subv.h	$w4,$w5,$w1
	subv.h	$w3,$w3,$w7
	move.v	$w1,$w12
	insve.d	$w1[1],$w0[0]
	subv.h	$w1,$w2,$w1
	addv.h	$w2,$w1,$w4
	subv.h	$w1,$w1,$w4
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w3
	asub_s.h	$w0,$w1,$w3
	addv.h	$w2,$w2,$w6
	vabs.h	$w0,$w0
	vabs.h	$w2,$w2
	ilvod.h	$w3,$w0,$w4
	ilvod.h	$w1,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	max_s.h	$w0,$w3,$w0
	max_s.h	$w1,$w1,$w2
	hadd_s.w	$w0,$w0,$w0
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	addiu	$8,$8,-1
	addu	$2,$3,$2
	daddu	$4,$13,$10
	addu	$2,$2,$11
	daddu	$6,$12,$9
	bne	$8,$0,.L2060
	move	$11,$2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l
	.type	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l, @function
_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	daddu	$6,$6,$7
	dsll	$11,$5,1
	sd	$16,0($sp)
	dsll	$16,$5,3
	dsll	$25,$7,3
	dsll	$15,$7,1
	sd	$fp,72($sp)
	dsll	$14,$5,2
	li	$24,4			# 0x4
	sd	$23,56($sp)
	move	$12,$0
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
.L2065:
	move	$8,$4
	daddu	$10,$11,$4
	daddiu	$13,$4,32
	move	$9,$6
.L2064:
	dsubu	$2,$9,$7
	dsubu	$3,$10,$5
	vbld	$w9,0($8)
	vbld	$w7,0($9)
	daddu	$21,$15,$2
	daddu	$22,$3,$11
	vbld	$w6,0($3)
	vbld	$w4,0($2)
	daddu	$20,$7,$21
	daddu	$19,$22,$11
	vbld	$w3,0($21)
	vbld	$w8,0($10)
	daddu	$17,$7,$20
	daddu	$18,$19,$5
	hadd_u.h	$w10,$w8,$w8
	hadd_u.h	$w15,$w4,$w4
	daddu	$3,$7,$17
	daddu	$fp,$14,$8
	hadd_u.h	$w14,$w7,$w7
	hadd_u.h	$w13,$w3,$w3
	daddu	$2,$3,$7
	daddu	$23,$5,$18
	vbld	$w5,0($22)
	vbld	$w1,0($20)
	daddu	$21,$7,$2
	hadd_u.h	$w12,$w1,$w1
	hadd_u.h	$w11,$w9,$w9
	hadd_u.h	$w2,$w6,$w6
	hadd_u.h	$w0,$w5,$w5
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w6,$w6,$w6
	insve.d	$w11[1],$w9[0]
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w1,$w1,$w1
	insve.d	$w2[1],$w6[0]
	insve.d	$w0[1],$w5[0]
	move.v	$w6,$w2
	move.v	$w5,$w0
	move.v	$w2,$w10
	move.v	$w0,$w15
	insve.d	$w2[1],$w8[0]
	insve.d	$w0[1],$w4[0]
	move.v	$w8,$w2
	vbld	$w10,0($fp)
	move.v	$w2,$w14
	vbld	$w9,0($23)
	insve.d	$w2[1],$w7[0]
	hadd_u.h	$w16,$w10,$w10
	subv.h	$w7,$w11,$w0
	subv.h	$w2,$w6,$w2
	move.v	$w0,$w13
	addv.h	$w6,$w2,$w7
	insve.d	$w0[1],$w3[0]
	hsub_u.h	$w10,$w10,$w10
	subv.h	$w4,$w8,$w0
	subv.h	$w3,$w2,$w7
	move.v	$w0,$w12
	vbld	$w7,0($19)
	insve.d	$w0[1],$w1[0]
	vbld	$w8,0($21)
	subv.h	$w0,$w5,$w0
	hadd_u.h	$w14,$w7,$w7
	addv.h	$w11,$w0,$w4
	vbld	$w5,0($17)
	subv.h	$w0,$w0,$w4
	addv.h	$w13,$w11,$w6
	subv.h	$w2,$w0,$w3
	addv.h	$w12,$w0,$w3
	subv.h	$w11,$w11,$w6
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	vbld	$w6,0($18)
	hadd_u.h	$w1,$w9,$w9
	hadd_u.h	$w15,$w6,$w6
	hadd_u.h	$w19,$w5,$w5
	hadd_u.h	$w18,$w4,$w4
	hadd_u.h	$w0,$w3,$w3
	hadd_u.h	$w17,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w1[1],$w9[0]
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w8,$w8,$w8
	insve.d	$w0[1],$w3[0]
	insve.d	$w16[1],$w10[0]
	insve.d	$w14[1],$w7[0]
	insve.d	$w17[1],$w8[0]
	move.v	$w7,$w14
	move.v	$w9,$w19
	move.v	$w14,$w15
	insve.d	$w9[1],$w5[0]
	insve.d	$w14[1],$w6[0]
	subv.h	$w9,$w16,$w9
	move.v	$w5,$w18
	insve.d	$w5[1],$w4[0]
	subv.h	$w4,$w7,$w5
	subv.h	$w5,$w14,$w0
	addv.h	$w10,$w4,$w9
	subv.h	$w3,$w4,$w9
	subv.h	$w0,$w1,$w17
	addv.h	$w4,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w7,$w4,$w10
	addv.h	$w6,$w0,$w3
	subv.h	$w4,$w4,$w10
	addv.h	$w1,$w7,$w13
	addv.h	$w8,$w4,$w11
	addv.h	$w5,$w6,$w12
	subv.h	$w11,$w4,$w11
	subv.h	$w0,$w0,$w3
	subv.h	$w13,$w7,$w13
	addv.h	$w3,$w0,$w2
	pckod.h	$w7,$w13,$w1
	subv.h	$w0,$w0,$w2
	pckev.h	$w13,$w13,$w1
	pckod.h	$w4,$w0,$w3
	asub_s.h	$w10,$w7,$w13
	pckev.h	$w0,$w0,$w3
	subv.h	$w12,$w6,$w12
	addv.h	$w13,$w7,$w13
	pckod.h	$w6,$w12,$w5
	vabs.h	$w13,$w13
	pckev.h	$w12,$w12,$w5
	ilvod.h	$w1,$w13,$w10
	pckod.h	$w5,$w11,$w8
	asub_s.h	$w2,$w6,$w12
	pckev.h	$w11,$w11,$w8
	addv.h	$w12,$w6,$w12
	asub_s.h	$w8,$w4,$w0
	asub_s.h	$w9,$w5,$w11
	addv.h	$w4,$w4,$w0
	vabs.h	$w12,$w12
	vabs.h	$w3,$w4
	ilvod.h	$w0,$w12,$w2
	ilvod.h	$w4,$w3,$w8
	ilvev.h	$w12,$w12,$w2
	addv.h	$w11,$w5,$w11
	ilvev.h	$w13,$w13,$w10
	vabs.h	$w11,$w11
	ilvev.h	$w3,$w3,$w8
	ilvod.h	$w2,$w11,$w9
	max_s.h	$w1,$w1,$w13
	ilvev.h	$w11,$w11,$w9
	max_s.h	$w0,$w0,$w12
	max_s.h	$w2,$w2,$w11
	max_s.h	$w3,$w4,$w3
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w3,$w3,$w3
	addv.w	$w0,$w1,$w0
	addv.w	$w2,$w2,$w3
	addv.w	$w0,$w0,$w2
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$8,$8,8
	addu	$2,$3,$2
	daddiu	$9,$9,8
	addiu	$2,$2,1
	daddiu	$10,$10,8
	sra	$2,$2,1
	addu	$2,$2,$12
	bne	$8,$13,.L2064
	move	$12,$2

	addiu	$24,$24,-1
	daddu	$4,$4,$16
	bne	$24,$0,.L2065
	daddu	$6,$6,$25

	ld	$fp,72($sp)
	ld	$23,56($sp)
	ld	$22,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l
	.size	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l, .-_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$15,$4,16
	move	$12,$0
	dlsa	$14,$5,$5,1
	dlsa	$13,$7,$7,1
.L2070:
	daddu	$3,$4,$5
	daddu	$2,$6,$7
	vbld	$w10,0($4)
	vbld	$w9,0($6)
	daddu	$10,$14,$4
	daddu	$8,$13,$6
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	daddu	$11,$3,$5
	daddu	$9,$2,$7
	vbld	$w7,0($10)
	vbld	$w5,0($8)
	vbld	$w8,0($11)
	vbld	$w6,0($9)
	hadd_u.h	$w12,$w10,$w10
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w11,$w8,$w8
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w13,$w6,$w6
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w7[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	move.v	$w4,$w0
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w12[1],$w10[0]
	move.v	$w0,$w11
	move.v	$w7,$w15
	insve.d	$w0[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	move.v	$w8,$w0
	subv.h	$w7,$w12,$w7
	move.v	$w0,$w14
	insve.d	$w0[1],$w3[0]
	move.v	$w3,$w13
	subv.h	$w0,$w4,$w0
	insve.d	$w3[1],$w6[0]
	addv.h	$w6,$w0,$w7
	subv.h	$w3,$w8,$w3
	subv.h	$w0,$w0,$w7
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w6
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w6
	asub_s.h	$w0,$w1,$w0
	vabs.h	$w2,$w2
	vabs.h	$w0,$w0
	ilvod.h	$w1,$w5,$w2
	ilvod.h	$w3,$w0,$w4
	ilvev.h	$w2,$w5,$w2
	ilvev.h	$w0,$w0,$w4
	max_s.h	$w1,$w1,$w2
	max_s.h	$w0,$w3,$w0
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w0,$w0,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$3,$w0[1]
	copy_s.w	$2,$w0[0]
	addu	$2,$2,$3
	copy_s.w	$3,$w0[2]
	daddiu	$4,$4,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$6,$6,8
	addu	$2,$3,$2
	addu	$2,$2,$12
	bne	$4,$15,.L2070
	move	$12,$2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l
	.align	2
	.align	3
	.globl	_Z2LDPKh
	.set	nomips16
	.set	nomicromips
	.ent	_Z2LDPKh
	.type	_Z2LDPKh, @function
_Z2LDPKh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	vbld	$w0,0($4)
	copy_s.d	$2,$w0[0]
	jr	$31
	copy_s.d	$3,$w0[1]

	.set	macro
	.set	reorder
	.end	_Z2LDPKh
	.size	_Z2LDPKh, .-_Z2LDPKh
	.align	2
	.align	3
	.globl	_Z3LD2PKhlPDv2_xS2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z3LD2PKhlPDv2_xS2_
	.type	_Z3LD2PKhlPDv2_xS2_, @function
_Z3LD2PKhlPDv2_xS2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$5,$4,$5
	vbld	$w0,0($4)
	st.d	$w0,0($6)
	vbld	$w0,0($5)
	jr	$31
	st.d	$w0,0($7)

	.set	macro
	.set	reorder
	.end	_Z3LD2PKhlPDv2_xS2_
	.size	_Z3LD2PKhlPDv2_xS2_, .-_Z3LD2PKhlPDv2_xS2_
	.align	2
	.align	3
	.globl	_Z3LD4PKhlPDv2_xS2_S2_S2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z3LD4PKhlPDv2_xS2_S2_S2_
	.type	_Z3LD4PKhlPDv2_xS2_S2_S2_, @function
_Z3LD4PKhlPDv2_xS2_S2_S2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$3,$4,$5
	vbld	$w0,0($4)
	st.d	$w0,0($6)
	daddu	$2,$3,$5
	vbld	$w0,0($3)
	st.d	$w0,0($7)
	daddu	$5,$2,$5
	vbld	$w0,0($2)
	st.d	$w0,0($8)
	vbld	$w0,0($5)
	jr	$31
	st.d	$w0,0($9)

	.set	macro
	.set	reorder
	.end	_Z3LD4PKhlPDv2_xS2_S2_S2_
	.size	_Z3LD4PKhlPDv2_xS2_S2_S2_, .-_Z3LD4PKhlPDv2_xS2_S2_S2_
	.align	2
	.align	3
	.globl	_Z8LD2_BtoHPKhlPDv8_tS2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z8LD2_BtoHPKhlPDv8_tS2_
	.type	_Z8LD2_BtoHPKhlPDv8_tS2_, @function
_Z8LD2_BtoHPKhlPDv8_tS2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$5,$4,$5
	vbld	$w0,0($4)
	vextb_u.h	$w0,$w0
	vbld	$w1,0($5)
	st.h	$w0,0($6)
	vextb_u.h	$w0,$w1
	jr	$31
	st.h	$w0,0($7)

	.set	macro
	.set	reorder
	.end	_Z8LD2_BtoHPKhlPDv8_tS2_
	.size	_Z8LD2_BtoHPKhlPDv8_tS2_, .-_Z8LD2_BtoHPKhlPDv8_tS2_
	.align	2
	.align	3
	.globl	_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
	.type	_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_, @function
_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$3,$4,$5
	vbld	$w1,0($4)
	vextb_u.h	$w1,$w1
	daddu	$2,$3,$5
	vbld	$w0,0($3)
	st.h	$w1,0($6)
	vextb_u.h	$w0,$w0
	daddu	$5,$2,$5
	st.h	$w0,0($7)
	vbld	$w1,0($2)
	vextb_u.h	$w1,$w1
	vbld	$w0,0($5)
	st.h	$w1,0($8)
	vextb_u.h	$w0,$w0
	jr	$31
	st.h	$w0,0($9)

	.set	macro
	.set	reorder
	.end	_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
	.size	_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_, .-_Z8LD4_BtoHPKhlPDv8_tS2_S2_S2_
	.align	2
	.align	3
	.globl	_Z9LD_H_BtoHPKhPDv8_t
	.set	nomips16
	.set	nomicromips
	.ent	_Z9LD_H_BtoHPKhPDv8_t
	.type	_Z9LD_H_BtoHPKhPDv8_t, @function
_Z9LD_H_BtoHPKhPDv8_t:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	vbld	$w0,0($4)
	vextb_u.h	$w0,$w0
	jr	$31
	st.h	$w0,0($5)

	.set	macro
	.set	reorder
	.end	_Z9LD_H_BtoHPKhPDv8_t
	.size	_Z9LD_H_BtoHPKhPDv8_t, .-_Z9LD_H_BtoHPKhPDv8_t
	.align	2
	.align	3
	.globl	_Z10LD2_H_BtoHPKhPDv8_tS2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z10LD2_H_BtoHPKhPDv8_tS2_
	.type	_Z10LD2_H_BtoHPKhPDv8_tS2_, @function
_Z10LD2_H_BtoHPKhPDv8_tS2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	vbld	$w1,0($4)
	vbld	$w0,8($4)
	vextb_u.h	$w1,$w1
	vextb_u.h	$w0,$w0
	st.h	$w1,0($5)
	jr	$31
	st.h	$w0,0($6)

	.set	macro
	.set	reorder
	.end	_Z10LD2_H_BtoHPKhPDv8_tS2_
	.size	_Z10LD2_H_BtoHPKhPDv8_tS2_, .-_Z10LD2_H_BtoHPKhPDv8_tS2_
	.align	2
	.align	3
	.globl	_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
	.type	_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_, @function
_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	vbld	$w1,0($4)
	vbld	$w0,8($4)
	vextb_u.h	$w1,$w1
	vextb_u.h	$w0,$w0
	st.h	$w1,0($5)
	st.h	$w0,0($6)
	vbld	$w1,16($4)
	vbld	$w0,24($4)
	vextb_u.h	$w1,$w1
	vextb_u.h	$w0,$w0
	st.h	$w1,0($7)
	jr	$31
	st.h	$w0,0($8)

	.set	macro
	.set	reorder
	.end	_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
	.size	_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_, .-_Z10LD4_H_BtoHPKhPDv8_tS2_S2_S2_
	.align	2
	.align	3
	.globl	_Z5LD2_HPKhPDv2_xS2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z5LD2_HPKhPDv2_xS2_
	.type	_Z5LD2_HPKhPDv2_xS2_, @function
_Z5LD2_HPKhPDv2_xS2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	vbld	$w0,0($4)
	st.d	$w0,0($5)
	vbld	$w0,8($4)
	jr	$31
	st.d	$w0,0($6)

	.set	macro
	.set	reorder
	.end	_Z5LD2_HPKhPDv2_xS2_
	.size	_Z5LD2_HPKhPDv2_xS2_, .-_Z5LD2_HPKhPDv2_xS2_
	.align	2
	.align	3
	.globl	_Z5LD4_HPKhPDv2_xS2_S2_S2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z5LD4_HPKhPDv2_xS2_S2_S2_
	.type	_Z5LD4_HPKhPDv2_xS2_S2_S2_, @function
_Z5LD4_HPKhPDv2_xS2_S2_S2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	vbld	$w0,0($4)
	st.d	$w0,0($5)
	vbld	$w0,8($4)
	st.d	$w0,0($6)
	vbld	$w0,16($4)
	st.d	$w0,0($7)
	vbld	$w0,24($4)
	jr	$31
	st.d	$w0,0($8)

	.set	macro
	.set	reorder
	.end	_Z5LD4_HPKhPDv2_xS2_S2_S2_
	.size	_Z5LD4_HPKhPDv2_xS2_S2_S2_, .-_Z5LD4_HPKhPDv2_xS2_S2_S2_
	.align	2
	.align	3
	.globl	_Z2LWPKh
	.set	nomips16
	.set	nomicromips
	.ent	_Z2LWPKh
	.type	_Z2LWPKh, @function
_Z2LWPKh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	vblw	$w0,0($4)
	copy_s.d	$2,$w0[0]
	jr	$31
	copy_s.d	$3,$w0[1]

	.set	macro
	.set	reorder
	.end	_Z2LWPKh
	.size	_Z2LWPKh, .-_Z2LWPKh
	.align	2
	.align	3
	.globl	_Z3LW4PKhlPDv4_iS2_S2_S2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z3LW4PKhlPDv4_iS2_S2_S2_
	.type	_Z3LW4PKhlPDv4_iS2_S2_S2_, @function
_Z3LW4PKhlPDv4_iS2_S2_S2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$3,$4,$5
	vblw	$w0,0($4)
	st.w	$w0,0($6)
	daddu	$2,$3,$5
	vblw	$w0,0($3)
	st.w	$w0,0($7)
	daddu	$5,$2,$5
	vblw	$w0,0($2)
	st.w	$w0,0($8)
	vblw	$w0,0($5)
	jr	$31
	st.w	$w0,0($9)

	.set	macro
	.set	reorder
	.end	_Z3LW4PKhlPDv4_iS2_S2_S2_
	.size	_Z3LW4PKhlPDv4_iS2_S2_S2_, .-_Z3LW4PKhlPDv4_iS2_S2_S2_
	.align	2
	.align	3
	.globl	_Z4LD_VPKh
	.set	nomips16
	.set	nomicromips
	.ent	_Z4LD_VPKh
	.type	_Z4LD_VPKh, @function
_Z4LD_VPKh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld.d	$w0,0($4)
	copy_s.d	$2,$w0[0]
	jr	$31
	copy_s.d	$3,$w0[1]

	.set	macro
	.set	reorder
	.end	_Z4LD_VPKh
	.size	_Z4LD_VPKh, .-_Z4LD_VPKh
	.align	2
	.align	3
	.globl	_Z5LD_V2PKhlPDv2_xS2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z5LD_V2PKhlPDv2_xS2_
	.type	_Z5LD_V2PKhlPDv2_xS2_, @function
_Z5LD_V2PKhlPDv2_xS2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$5,$4,$5
	ld.d	$w0,0($4)
	st.d	$w0,0($6)
	ld.d	$w0,0($5)
	jr	$31
	st.d	$w0,0($7)

	.set	macro
	.set	reorder
	.end	_Z5LD_V2PKhlPDv2_xS2_
	.size	_Z5LD_V2PKhlPDv2_xS2_, .-_Z5LD_V2PKhlPDv2_xS2_
	.align	2
	.align	3
	.globl	_Z7LD_V2_HPKhPDv2_xS2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z7LD_V2_HPKhPDv2_xS2_
	.type	_Z7LD_V2_HPKhPDv2_xS2_, @function
_Z7LD_V2_HPKhPDv2_xS2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld.d	$w0,0($4)
	st.d	$w0,0($5)
	ld.d	$w0,16($4)
	jr	$31
	st.d	$w0,0($6)

	.set	macro
	.set	reorder
	.end	_Z7LD_V2_HPKhPDv2_xS2_
	.size	_Z7LD_V2_HPKhPDv2_xS2_, .-_Z7LD_V2_HPKhPDv2_xS2_
	.align	2
	.align	3
	.globl	_Z5LD_V3PKhlPDv2_xS2_S2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z5LD_V3PKhlPDv2_xS2_S2_
	.type	_Z5LD_V3PKhlPDv2_xS2_S2_, @function
_Z5LD_V3PKhlPDv2_xS2_S2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$2,$4,$5
	ld.d	$w0,0($4)
	st.d	$w0,0($6)
	daddu	$5,$2,$5
	ld.d	$w0,0($2)
	st.d	$w0,0($7)
	ld.d	$w0,0($5)
	jr	$31
	st.d	$w0,0($8)

	.set	macro
	.set	reorder
	.end	_Z5LD_V3PKhlPDv2_xS2_S2_
	.size	_Z5LD_V3PKhlPDv2_xS2_S2_, .-_Z5LD_V3PKhlPDv2_xS2_S2_
	.align	2
	.align	3
	.globl	_Z5LD_V4PKhlPDv2_xS2_S2_S2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z5LD_V4PKhlPDv2_xS2_S2_S2_
	.type	_Z5LD_V4PKhlPDv2_xS2_S2_S2_, @function
_Z5LD_V4PKhlPDv2_xS2_S2_S2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$3,$4,$5
	ld.d	$w0,0($4)
	st.d	$w0,0($6)
	daddu	$2,$3,$5
	ld.d	$w0,0($3)
	st.d	$w0,0($7)
	daddu	$5,$2,$5
	ld.d	$w0,0($2)
	st.d	$w0,0($8)
	ld.d	$w0,0($5)
	jr	$31
	st.d	$w0,0($9)

	.set	macro
	.set	reorder
	.end	_Z5LD_V4PKhlPDv2_xS2_S2_S2_
	.size	_Z5LD_V4PKhlPDv2_xS2_S2_S2_, .-_Z5LD_V4PKhlPDv2_xS2_S2_S2_
	.align	2
	.align	3
	.globl	_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
	.type	_Z7LD_V4_HPKhPDv2_xS2_S2_S2_, @function
_Z7LD_V4_HPKhPDv2_xS2_S2_S2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld.d	$w0,0($4)
	st.d	$w0,0($5)
	ld.d	$w0,16($4)
	st.d	$w0,0($6)
	ld.d	$w0,32($4)
	st.d	$w0,0($7)
	ld.d	$w0,48($4)
	jr	$31
	st.d	$w0,0($8)

	.set	macro
	.set	reorder
	.end	_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
	.size	_Z7LD_V4_HPKhPDv2_xS2_S2_S2_, .-_Z7LD_V4_HPKhPDv2_xS2_S2_S2_
	.align	2
	.align	3
	.globl	_Z5LD_V8PKhlPDv2_xS2_S2_S2_S2_S2_S2_S2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z5LD_V8PKhlPDv2_xS2_S2_S2_S2_S2_S2_S2_
	.type	_Z5LD_V8PKhlPDv2_xS2_S2_S2_S2_S2_S2_S2_, @function
_Z5LD_V8PKhlPDv2_xS2_S2_S2_S2_S2_S2_S2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$3,$4,$5
	ld.d	$w0,0($4)
	st.d	$w0,0($6)
	daddu	$2,$3,$5
	ld.d	$w0,0($3)
	st.d	$w0,0($7)
	dlsa	$4,$5,$2,1
	ld.d	$w0,0($2)
	daddu	$6,$2,$5
	st.d	$w0,0($8)
	daddu	$3,$4,$5
	ld.d	$w0,0($6)
	st.d	$w0,0($9)
	ld.d	$w0,0($4)
	daddu	$2,$3,$5
	st.d	$w0,0($10)
	ld.d	$w0,0($3)
	ld	$3,0($sp)
	st.d	$w0,0($11)
	daddu	$5,$2,$5
	ld.d	$w0,0($2)
	ld	$2,8($sp)
	st.d	$w0,0($3)
	ld.d	$w0,0($5)
	jr	$31
	st.d	$w0,0($2)

	.set	macro
	.set	reorder
	.end	_Z5LD_V8PKhlPDv2_xS2_S2_S2_S2_S2_S2_S2_
	.size	_Z5LD_V8PKhlPDv2_xS2_S2_S2_S2_S2_S2_S2_, .-_Z5LD_V8PKhlPDv2_xS2_S2_S2_S2_S2_S2_S2_
	.align	2
	.align	3
	.globl	_Z7L_4x4_BPKhl
	.set	nomips16
	.set	nomicromips
	.ent	_Z7L_4x4_BPKhl
	.type	_Z7L_4x4_BPKhl, @function
_Z7L_4x4_BPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$3,$4,$5
	vblw	$w0,0($4)
	daddu	$2,$3,$5
	vblw	$w1,0($3)
	insve.w	$w0[1],$w1[0]
	daddu	$5,$2,$5
	vblw	$w1,0($2)
	insve.w	$w0[2],$w1[0]
	vblw	$w1,0($5)
	insve.w	$w0[3],$w1[0]
	copy_s.d	$2,$w0[0]
	jr	$31
	copy_s.d	$3,$w0[1]

	.set	macro
	.set	reorder
	.end	_Z7L_4x4_BPKhl
	.size	_Z7L_4x4_BPKhl, .-_Z7L_4x4_BPKhl
	.align	2
	.align	3
	.globl	_Z7L_8x8_BPKhlPDv2_xS2_S2_S2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z7L_8x8_BPKhlPDv2_xS2_S2_S2_
	.type	_Z7L_8x8_BPKhlPDv2_xS2_S2_S2_, @function
_Z7L_8x8_BPKhlPDv2_xS2_S2_S2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$3,$4,$5
	vbld	$w0,0($4)
	st.d	$w0,0($6)
	daddu	$2,$3,$5
	vbld	$w0,0($3)
	st.d	$w0,0($7)
	dlsa	$10,$5,$2,1
	vbld	$w0,0($2)
	daddu	$2,$2,$5
	st.d	$w0,0($8)
	daddu	$4,$10,$5
	vbld	$w0,0($2)
	st.d	$w0,0($9)
	vbld	$w3,0($10)
	daddu	$3,$4,$5
	vbld	$w2,0($4)
	ld.d	$w4,0($6)
	insve.d	$w4[1],$w3[0]
	daddu	$5,$3,$5
	vbld	$w1,0($3)
	vbld	$w0,0($5)
	st.d	$w4,0($6)
	ld.d	$w3,0($7)
	insve.d	$w3[1],$w2[0]
	st.d	$w3,0($7)
	ld.d	$w2,0($8)
	insve.d	$w2[1],$w1[0]
	st.d	$w2,0($8)
	ld.d	$w1,0($9)
	insve.d	$w1[1],$w0[0]
	jr	$31
	st.d	$w1,0($9)

	.set	macro
	.set	reorder
	.end	_Z7L_8x8_BPKhlPDv2_xS2_S2_S2_
	.size	_Z7L_8x8_BPKhlPDv2_xS2_S2_S2_, .-_Z7L_8x8_BPKhlPDv2_xS2_S2_S2_
	.align	2
	.align	3
	.globl	_Z9L_4x4_B_HPKhlPDv8_tS2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z9L_4x4_B_HPKhlPDv8_tS2_
	.type	_Z9L_4x4_B_HPKhlPDv8_tS2_, @function
_Z9L_4x4_B_HPKhlPDv8_tS2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$3,$4,$5
	vblw	$w1,0($4)
	daddu	$2,$3,$5
	vblw	$w0,0($3)
	insve.w	$w1[1],$w0[0]
	vextb_u.h	$w1,$w1
	daddu	$5,$2,$5
	vblw	$w0,0($2)
	vblw	$w2,0($5)
	st.h	$w1,0($6)
	insve.w	$w0[1],$w2[0]
	vextb_u.h	$w0,$w0
	jr	$31
	st.h	$w0,0($7)

	.set	macro
	.set	reorder
	.end	_Z9L_4x4_B_HPKhlPDv8_tS2_
	.size	_Z9L_4x4_B_HPKhlPDv8_tS2_, .-_Z9L_4x4_B_HPKhlPDv8_tS2_
	.align	2
	.align	3
	.globl	_Z7S_4x4_BDv16_hPhl
	.set	nomips16
	.set	nomicromips
	.ent	_Z7S_4x4_BDv16_hPhl
	.type	_Z7S_4x4_BDv16_hPhl, @function
_Z7S_4x4_BDv16_hPhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$3,$6,$7
	insert.d	$w0[0],$4
	insert.d	$w0[1],$5
	vsw	$w0,0,0($6)
	daddu	$2,$3,$7
	vsw	$w0,1,0($3)
	daddu	$7,$2,$7
	vsw	$w0,2,0($2)
	jr	$31
	vsw	$w0,3,0($7)

	.set	macro
	.set	reorder
	.end	_Z7S_4x4_BDv16_hPhl
	.size	_Z7S_4x4_BDv16_hPhl, .-_Z7S_4x4_BDv16_hPhl
	.align	2
	.align	3
	.globl	_Z7S_4x4_HDv8_sS_Psl
	.set	nomips16
	.set	nomicromips
	.ent	_Z7S_4x4_HDv8_sS_Psl
	.type	_Z7S_4x4_HDv8_sS_Psl, @function
_Z7S_4x4_HDv8_sS_Psl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$9,$9,1
	insert.d	$w1[0],$4
	insert.d	$w0[0],$6
	insert.d	$w1[1],$5
	daddu	$3,$8,$9
	vsd	$w1,0,0($8)
	insert.d	$w0[1],$7
	daddu	$2,$3,$9
	vsd	$w1,1,0($3)
	daddu	$9,$2,$9
	vsd	$w0,0,0($2)
	jr	$31
	vsd	$w0,1,0($9)

	.set	macro
	.set	reorder
	.end	_Z7S_4x4_HDv8_sS_Psl
	.size	_Z7S_4x4_HDv8_sS_Psl, .-_Z7S_4x4_HDv8_sS_Psl
	.align	2
	.align	3
	.globl	_Z2SDDv2_xPh
	.set	nomips16
	.set	nomicromips
	.ent	_Z2SDDv2_xPh
	.type	_Z2SDDv2_xPh, @function
_Z2SDDv2_xPh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	insert.d	$w0[0],$4
	insert.d	$w0[1],$5
	jr	$31
	vsd	$w0,0,0($6)

	.set	macro
	.set	reorder
	.end	_Z2SDDv2_xPh
	.size	_Z2SDDv2_xPh, .-_Z2SDDv2_xPh
	.align	2
	.align	3
	.globl	_Z3SD2Dv2_xS_Phl
	.set	nomips16
	.set	nomicromips
	.ent	_Z3SD2Dv2_xS_Phl
	.type	_Z3SD2Dv2_xS_Phl, @function
_Z3SD2Dv2_xS_Phl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$9,$8,$9
	insert.d	$w1[0],$4
	insert.d	$w0[0],$6
	insert.d	$w1[1],$5
	insert.d	$w0[1],$7
	vsd	$w1,0,0($8)
	jr	$31
	vsd	$w0,0,0($9)

	.set	macro
	.set	reorder
	.end	_Z3SD2Dv2_xS_Phl
	.size	_Z3SD2Dv2_xS_Phl, .-_Z3SD2Dv2_xS_Phl
	.align	2
	.align	3
	.globl	_Z3SD4Dv2_xS_S_S_Phl
	.set	nomips16
	.set	nomicromips
	.ent	_Z3SD4Dv2_xS_S_S_Phl
	.type	_Z3SD4Dv2_xS_S_S_Phl, @function
_Z3SD4Dv2_xS_S_S_Phl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,8($sp)
	insert.d	$w3[0],$4
	insert.d	$w3[1],$5
	insert.d	$w2[0],$6
	ld	$3,0($sp)
	insert.d	$w2[1],$7
	insert.d	$w1[0],$8
	insert.d	$w0[0],$10
	insert.d	$w1[1],$9
	insert.d	$w0[1],$11
	daddu	$4,$3,$2
	vsd	$w3,0,0($3)
	daddu	$3,$4,$2
	vsd	$w2,0,0($4)
	daddu	$2,$3,$2
	vsd	$w1,0,0($3)
	jr	$31
	vsd	$w0,0,0($2)

	.set	macro
	.set	reorder
	.end	_Z3SD4Dv2_xS_S_S_Phl
	.size	_Z3SD4Dv2_xS_S_S_Phl, .-_Z3SD4Dv2_xS_S_S_Phl
	.align	2
	.align	3
	.globl	_Z4SD_1Dv2_xPh
	.set	nomips16
	.set	nomicromips
	.ent	_Z4SD_1Dv2_xPh
	.type	_Z4SD_1Dv2_xPh, @function
_Z4SD_1Dv2_xPh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	insert.d	$w0[0],$4
	insert.d	$w0[1],$5
	jr	$31
	vsd	$w0,1,0($6)

	.set	macro
	.set	reorder
	.end	_Z4SD_1Dv2_xPh
	.size	_Z4SD_1Dv2_xPh, .-_Z4SD_1Dv2_xPh
	.align	2
	.align	3
	.globl	_Z5SD2_1Dv2_xS_Phl
	.set	nomips16
	.set	nomicromips
	.ent	_Z5SD2_1Dv2_xS_Phl
	.type	_Z5SD2_1Dv2_xS_Phl, @function
_Z5SD2_1Dv2_xS_Phl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$9,$8,$9
	insert.d	$w1[0],$4
	insert.d	$w0[0],$6
	insert.d	$w1[1],$5
	insert.d	$w0[1],$7
	vsd	$w1,1,0($8)
	jr	$31
	vsd	$w0,1,0($9)

	.set	macro
	.set	reorder
	.end	_Z5SD2_1Dv2_xS_Phl
	.size	_Z5SD2_1Dv2_xS_Phl, .-_Z5SD2_1Dv2_xS_Phl
	.align	2
	.align	3
	.globl	_Z5SD4_1Dv2_xS_S_S_Phl
	.set	nomips16
	.set	nomicromips
	.ent	_Z5SD4_1Dv2_xS_S_S_Phl
	.type	_Z5SD4_1Dv2_xS_S_S_Phl, @function
_Z5SD4_1Dv2_xS_S_S_Phl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,8($sp)
	insert.d	$w3[0],$4
	insert.d	$w3[1],$5
	insert.d	$w2[0],$6
	ld	$3,0($sp)
	insert.d	$w2[1],$7
	insert.d	$w1[0],$8
	insert.d	$w0[0],$10
	insert.d	$w1[1],$9
	insert.d	$w0[1],$11
	daddu	$4,$3,$2
	vsd	$w3,1,0($3)
	daddu	$3,$4,$2
	vsd	$w2,1,0($4)
	daddu	$2,$3,$2
	vsd	$w1,1,0($3)
	jr	$31
	vsd	$w0,1,0($2)

	.set	macro
	.set	reorder
	.end	_Z5SD4_1Dv2_xS_S_S_Phl
	.size	_Z5SD4_1Dv2_xS_S_S_Phl, .-_Z5SD4_1Dv2_xS_S_S_Phl
	.align	2
	.align	3
	.globl	_Z4ST_VDv2_xPh
	.set	nomips16
	.set	nomicromips
	.ent	_Z4ST_VDv2_xPh
	.type	_Z4ST_VDv2_xPh, @function
_Z4ST_VDv2_xPh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	insert.d	$w0[0],$4
	insert.d	$w0[1],$5
	jr	$31
	st.d	$w0,0($6)

	.set	macro
	.set	reorder
	.end	_Z4ST_VDv2_xPh
	.size	_Z4ST_VDv2_xPh, .-_Z4ST_VDv2_xPh
	.align	2
	.align	3
	.globl	_Z5ST_V2Dv2_xS_Phl
	.set	nomips16
	.set	nomicromips
	.ent	_Z5ST_V2Dv2_xS_Phl
	.type	_Z5ST_V2Dv2_xS_Phl, @function
_Z5ST_V2Dv2_xS_Phl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$9,$8,$9
	insert.d	$w1[0],$4
	insert.d	$w0[0],$6
	insert.d	$w1[1],$5
	insert.d	$w0[1],$7
	st.d	$w1,0($8)
	jr	$31
	st.d	$w0,0($9)

	.set	macro
	.set	reorder
	.end	_Z5ST_V2Dv2_xS_Phl
	.size	_Z5ST_V2Dv2_xS_Phl, .-_Z5ST_V2Dv2_xS_Phl
	.align	2
	.align	3
	.globl	_Z5ST_V4Dv2_xS_S_S_Phl
	.set	nomips16
	.set	nomicromips
	.ent	_Z5ST_V4Dv2_xS_S_S_Phl
	.type	_Z5ST_V4Dv2_xS_S_S_Phl, @function
_Z5ST_V4Dv2_xS_S_S_Phl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,8($sp)
	insert.d	$w3[0],$4
	insert.d	$w3[1],$5
	insert.d	$w2[0],$6
	ld	$3,0($sp)
	insert.d	$w2[1],$7
	insert.d	$w1[0],$8
	insert.d	$w0[0],$10
	insert.d	$w1[1],$9
	insert.d	$w0[1],$11
	daddu	$4,$3,$2
	st.d	$w3,0($3)
	daddu	$3,$4,$2
	st.d	$w2,0($4)
	daddu	$2,$3,$2
	st.d	$w1,0($3)
	jr	$31
	st.d	$w0,0($2)

	.set	macro
	.set	reorder
	.end	_Z5ST_V4Dv2_xS_S_S_Phl
	.size	_Z5ST_V4Dv2_xS_S_S_Phl, .-_Z5ST_V4Dv2_xS_S_S_Phl
	.align	2
	.align	3
	.globl	_Z7ST_V2_HDv2_xS_Ph
	.set	nomips16
	.set	nomicromips
	.ent	_Z7ST_V2_HDv2_xS_Ph
	.type	_Z7ST_V2_HDv2_xS_Ph, @function
_Z7ST_V2_HDv2_xS_Ph:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	insert.d	$w1[0],$4
	insert.d	$w0[0],$6
	insert.d	$w1[1],$5
	insert.d	$w0[1],$7
	st.d	$w1,0($8)
	jr	$31
	st.d	$w0,16($8)

	.set	macro
	.set	reorder
	.end	_Z7ST_V2_HDv2_xS_Ph
	.size	_Z7ST_V2_HDv2_xS_Ph, .-_Z7ST_V2_HDv2_xS_Ph
	.align	2
	.align	3
	.globl	_Z7ST_V4_HDv2_xS_S_S_Ph
	.set	nomips16
	.set	nomicromips
	.ent	_Z7ST_V4_HDv2_xS_S_S_Ph
	.type	_Z7ST_V4_HDv2_xS_S_S_Ph, @function
_Z7ST_V4_HDv2_xS_S_S_Ph:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,0($sp)
	insert.d	$w3[0],$4
	insert.d	$w2[0],$6
	insert.d	$w3[1],$5
	insert.d	$w2[1],$7
	insert.d	$w1[0],$8
	insert.d	$w0[0],$10
	insert.d	$w1[1],$9
	insert.d	$w0[1],$11
	st.d	$w3,0($2)
	st.d	$w2,16($2)
	st.d	$w1,32($2)
	jr	$31
	st.d	$w0,48($2)

	.set	macro
	.set	reorder
	.end	_Z7ST_V4_HDv2_xS_S_S_Ph
	.size	_Z7ST_V4_HDv2_xS_S_S_Ph, .-_Z7ST_V4_HDv2_xS_S_S_Ph
	.align	2
	.align	3
	.globl	_ZN4x26515extendPicBorderEPhliiii
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26515extendPicBorderEPhliiii
	.type	_ZN4x26515extendPicBorderEPhliiii, @function
_ZN4x26515extendPicBorderEPhliiii:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26515extendPicBorderEPhliiii)))
	daddu	$28,$28,$25
	sd	$19,24($sp)
	move	$19,$9
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26515extendPicBorderEPhliiii)))
	sd	$23,56($sp)
	move	$23,$7
	ld	$2,%got_disp(_ZN4x26510primitivesE)($28)
	sd	$22,48($sp)
	move	$22,$8
	sd	$21,40($sp)
	dsubu	$21,$4,$8
	ld	$25,5912($2)
	sd	$20,32($sp)
	move	$20,$4
	sd	$16,0($sp)
	move	$16,$5
	sd	$31,72($sp)
	sd	$18,16($sp)
	jalr	$25
	sd	$17,8($sp)

	blez	$19,.L2143
	dsubu	$18,$21,$16

	move	$17,$0
	ld	$25,%call16(memcpy)($28)
	.align	3
.L2150:
	move	$4,$18
	move	$6,$16
	move	$5,$21
	addiu	$17,$17,1
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsubu	$18,$18,$16

	bne	$17,$19,.L2150
	ld	$25,%call16(memcpy)($28)

	addiu	$23,$23,-1
	move	$19,$0
	gsdmultu	$23,$23,$16
	dsubu	$22,$23,$22
	daddu	$20,$20,$22
	daddu	$18,$20,$16
	.align	3
.L2151:
	move	$4,$18
	move	$6,$16
	move	$5,$20
	addiu	$19,$19,1
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$18,$18,$16

	bne	$17,$19,.L2151
	ld	$25,%call16(memcpy)($28)

.L2143:
	ld	$31,72($sp)
	ld	$28,64($sp)
	ld	$23,56($sp)
	ld	$22,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.set	macro
	.set	reorder
	.end	_ZN4x26515extendPicBorderEPhliiii
	.size	_ZN4x26515extendPicBorderEPhliiii, .-_ZN4x26515extendPicBorderEPhliiii
	.align	2
	.align	3
	.globl	_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE
	.type	_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE, @function
_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE:
	.frame	$sp,288,$31		# vars= 208, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-288
	sd	$28,272($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE)))
	daddu	$28,$28,$25
	sd	$fp,280($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE)))
	sd	$23,264($sp)
	ld	$5,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl)($28)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l)($28)
	sd	$22,256($sp)
	daddiu	$5,$5,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl)
	sd	$21,248($sp)
	sd	$5,0($sp)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l)
	ld	$5,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll)($28)
	sd	$20,240($sp)
	sd	$19,232($sp)
	daddiu	$6,$5,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll)
	ld	$5,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl)($28)
	sd	$6,8($sp)
	sd	$18,224($sp)
	daddiu	$7,$5,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl)
	ld	$5,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll)($28)
	sd	$7,16($sp)
	sd	$17,216($sp)
	daddiu	$8,$5,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll)
	ld	$5,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi12EEEvPhlPKhl)($28)
	sd	$8,24($sp)
	sd	$16,208($sp)
	daddiu	$9,$5,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi12EEEvPhlPKhl)
	ld	$5,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi12EEEvPKsS2_Phlll)($28)
	sd	$9,32($sp)
	ld	$22,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi4EEEvPhlPKhl)($28)
	daddiu	$10,$5,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi12EEEvPKsS2_Phlll)
	ld	$5,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi16EEEvPhlPKhl)($28)
	sd	$10,40($sp)
	ld	$23,%got_page(_ZN12_GLOBAL__N_16addAvgILi4ELi4EEEvPKsS2_Phlll)($28)
	daddiu	$22,$22,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi4EEEvPhlPKhl)
	daddiu	$11,$5,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi16EEEvPhlPKhl)
	ld	$5,%got_page(_ZN12_GLOBAL__N_16addAvgILi12ELi16EEEvPKsS2_Phlll)($28)
	sd	$11,48($sp)
	ld	$20,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi8EEEvPhlPKhl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi4ELi4EEEvPKsS2_Phlll)
	daddiu	$12,$5,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi12ELi16EEEvPKsS2_Phlll)
	ld	$5,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl)($28)
	sd	$12,56($sp)
	ld	$21,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi8EEEvPKsS2_Phlll)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi8EEEvPhlPKhl)
	daddiu	$13,$5,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl)
	ld	$5,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi4EEEvPKsS2_Phlll)($28)
	sd	$13,64($sp)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi16EEEvPhlPKhl)($28)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi8EEEvPKsS2_Phlll)
	daddiu	$5,$5,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi4EEEvPKsS2_Phlll)
	ld	$19,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi16EEEvPKsS2_Phlll)($28)
	sd	$5,72($sp)
	ld	$5,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi16EEEvPhlPKhl)
	ld	$16,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi32EEEvPhlPKhl)($28)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi16EEEvPKsS2_Phlll)
	ld	$17,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$6,$5,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl)
	ld	$5,%got_page(_ZN12_GLOBAL__N_16addAvgILi4ELi16EEEvPKsS2_Phlll)($28)
	sd	$6,80($sp)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi32EEEvPhlPKhl)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl)($28)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi32EEEvPKsS2_Phlll)
	daddiu	$7,$5,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi4ELi16EEEvPKsS2_Phlll)
	ld	$5,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl)($28)
	sd	$7,88($sp)
	ld	$15,%got_page(_ZN12_GLOBAL__N_16addAvgILi4ELi8EEEvPKsS2_Phlll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl)
	daddiu	$8,$5,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl)
	ld	$5,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi16EEEvPKsS2_Phlll)($28)
	sd	$8,96($sp)
	ld	$24,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl)($28)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi4ELi8EEEvPKsS2_Phlll)
	daddiu	$9,$5,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi16EEEvPKsS2_Phlll)
	ld	$5,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl)($28)
	sd	$9,104($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi4EEEvPKsS2_Phlll)($28)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl)
	daddiu	$10,$5,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl)
	ld	$5,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi32EEEvPKsS2_Phlll)($28)
	sd	$10,112($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi4EEEvPKsS2_Phlll)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	daddiu	$11,$5,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi32EEEvPKsS2_Phlll)
	ld	$5,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi24EEEvPhlPKhl)($28)
	sd	$11,120($sp)
	ld	$3,%got_page(_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	daddiu	$12,$5,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi24EEEvPhlPKhl)
	ld	$5,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi24EEEvPKsS2_Phlll)($28)
	sd	$12,128($sp)
	ld	$12,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi32EEEvPhlPKhl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l)
	daddiu	$13,$5,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi24EEEvPKsS2_Phlll)
	ld	$5,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi32EEEvPhlPKhl)($28)
	sd	$13,136($sp)
	ld	$13,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi32EEEvPhlPKhl)
	daddiu	$5,$5,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi32EEEvPhlPKhl)
	ld	$9,%got_page(_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l)($28)
	sd	$5,144($sp)
	ld	$5,%got_page(_ZN12_GLOBAL__N_16addAvgILi24ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi32EEEvPKsS2_Phlll)
	ld	$11,%got_page(_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l)($28)
	daddiu	$9,$9,%got_ofst(_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l)
	daddiu	$6,$5,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi24ELi32EEEvPKsS2_Phlll)
	ld	$5,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl)($28)
	sd	$6,152($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l)
	ld	$6,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l)($28)
	daddiu	$7,$5,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl)
	ld	$5,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi8EEEvPKsS2_Phlll)($28)
	sd	$7,160($sp)
	ld	$7,%got_page(_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l)($28)
	daddiu	$6,$6,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l)
	daddiu	$8,$5,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi8EEEvPKsS2_Phlll)
	ld	$5,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$8,168($sp)
	sd	$fp,192($sp)
	daddiu	$7,$7,%got_ofst(_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)($28)
	daddiu	$10,$5,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	sd	$10,176($sp)
	sd	$22,112($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)
	sd	$23,104($4)
	sd	$fp,184($sp)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li)($28)
	sd	$20,240($4)
	sd	$21,232($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li)
	sd	$18,368($4)
	sd	$fp,96($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi16EEEvPhlPKhlS3_li)($28)
	sd	$19,360($4)
	sd	$16,496($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi16EEEvPhlPKhlS3_li)
	sd	$17,488($4)
	sd	$fp,352($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi32EEEvPhlPKhlS3_li)($28)
	sd	$14,880($4)
	sd	$15,872($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi32EEEvPhlPKhlS3_li)
	sd	$24,752($4)
	sd	$fp,480($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi64EEEvPhlPKhl)($28)
	sd	$25,744($4)
	ld	$8,%got_page(_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi64EEEvPhlPKhl)
	ld	$5,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l)($28)
	sd	$fp,624($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$8,$8,%got_ofst(_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l)
	ld	$10,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l)($28)
	daddiu	$5,$5,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll)
	sd	$fp,616($4)
	daddiu	$10,$10,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi64EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi64EEEvPhlPKhlS3_li)
	sd	$fp,608($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi8EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi8EEEvPhlPKhlS3_li)
	sd	$fp,864($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li)
	sd	$fp,736($4)
	ld	$fp,0($sp)
	sd	$fp,1008($4)
	ld	$fp,8($sp)
	sd	$fp,1000($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi8EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi8EEEvPhlPKhlS3_li)
	sd	$fp,992($4)
	ld	$fp,16($sp)
	sd	$fp,1136($4)
	ld	$fp,24($sp)
	sd	$fp,1128($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi16EEEvPhlPKhlS3_li)
	sd	$fp,1120($4)
	ld	$fp,32($sp)
	sd	$fp,1776($4)
	ld	$fp,40($sp)
	sd	$fp,1768($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi12EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi12EEEvPhlPKhlS3_li)
	sd	$fp,1760($4)
	ld	$fp,48($sp)
	sd	$fp,1904($4)
	ld	$fp,56($sp)
	sd	$fp,1896($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi12ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi12ELi16EEEvPhlPKhlS3_li)
	sd	$fp,1888($4)
	ld	$fp,64($sp)
	sd	$fp,2032($4)
	ld	$fp,72($sp)
	sd	$fp,2024($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li)
	sd	$fp,2016($4)
	ld	$fp,80($sp)
	sd	$fp,2160($4)
	ld	$fp,88($sp)
	sd	$fp,2152($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi16EEEvPhlPKhlS3_li)
	sd	$fp,2144($4)
	ld	$fp,96($sp)
	sd	$fp,1264($4)
	ld	$fp,104($sp)
	sd	$fp,1256($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi16EEEvPhlPKhlS3_li)
	sd	$fp,1248($4)
	ld	$fp,112($sp)
	sd	$fp,1392($4)
	ld	$fp,120($sp)
	sd	$fp,1384($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi32EEEvPhlPKhlS3_li)
	sd	$fp,1376($4)
	ld	$fp,128($sp)
	sd	$fp,2288($4)
	ld	$fp,136($sp)
	sd	$12,2672($4)
	sd	$13,2664($4)
	sd	$fp,2280($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi24EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi24EEEvPhlPKhlS3_li)
	sd	$fp,2272($4)
	ld	$fp,144($sp)
	sd	$fp,2416($4)
	ld	$fp,152($sp)
	sd	$fp,2408($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi24ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi24ELi32EEEvPhlPKhlS3_li)
	sd	$fp,2400($4)
	ld	$fp,160($sp)
	sd	$fp,2544($4)
	ld	$fp,168($sp)
	sd	$fp,2536($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi8EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi8EEEvPhlPKhlS3_li)
	sd	$fp,2528($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi32EEEvPhlPKhlS3_li)
	sd	$fp,2656($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi32EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi32EEEvPhlPKhl)
	sd	$fp,1520($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16addAvgILi64ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi64ELi32EEEvPKsS2_Phlll)
	sd	$fp,1512($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi32EEEvPhlPKhlS3_li)
	sd	$fp,1504($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl)
	sd	$fp,1648($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll)
	sd	$fp,1640($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi64EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi64EEEvPhlPKhlS3_li)
	sd	$fp,1632($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi48EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi48EEEvPhlPKhl)
	sd	$fp,2800($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16addAvgILi64ELi48EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi64ELi48EEEvPKsS2_Phlll)
	sd	$fp,2792($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi48EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi48EEEvPhlPKhlS3_li)
	sd	$fp,2784($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi48ELi64EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi48ELi64EEEvPhlPKhl)
	sd	$fp,2928($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16addAvgILi48ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi48ELi64EEEvPKsS2_Phlll)
	sd	$fp,2920($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi48ELi64EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi48ELi64EEEvPhlPKhlS3_li)
	sd	$fp,2912($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi16EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi16EEEvPhlPKhl)
	sd	$fp,3056($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16addAvgILi64ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi64ELi16EEEvPKsS2_Phlll)
	sd	$fp,3048($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi16EEEvPhlPKhlS3_li)
	sd	$fp,3040($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl)
	sd	$fp,3184($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll)
	sd	$fp,3176($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi64EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi64EEEvPhlPKhlS3_li)
	sd	$fp,3168($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l)
	sd	$fp,0($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)
	sd	$fp,128($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l)
	sd	$fp,256($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l)
	sd	$fp,384($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l)
	sd	$fp,512($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi4ELi8EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi4ELi8EEEiPKhlS2_l)
	sd	$fp,768($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi8ELi4EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi8ELi4EEEiPKhlS2_l)
	sd	$fp,640($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi8EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi8EEEiPKhlS2_l)
	sd	$fp,896($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi8ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi8ELi16EEEiPKhlS2_l)
	sd	$fp,1024($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi12EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi12EEEiPKhlS2_l)
	sd	$fp,1664($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi12ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi12ELi16EEEiPKhlS2_l)
	sd	$fp,1792($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi4EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi4EEEiPKhlS2_l)
	sd	$fp,1920($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi4ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi4ELi16EEEiPKhlS2_l)
	sd	$fp,2048($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi32ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi32ELi16EEEiPKhlS2_l)
	sd	$fp,1152($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi32EEEiPKhlS2_l)
	sd	$fp,1280($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi32ELi24EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi32ELi24EEEiPKhlS2_l)
	sd	$fp,2176($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi24ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi24ELi32EEEiPKhlS2_l)
	sd	$fp,2304($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi32ELi8EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi32ELi8EEEiPKhlS2_l)
	sd	$fp,2432($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi8ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi8ELi32EEEiPKhlS2_l)
	sd	$fp,2560($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi64ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi64ELi32EEEiPKhlS2_l)
	sd	$fp,1408($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi32ELi64EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi32ELi64EEEiPKhlS2_l)
	sd	$fp,1536($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi64ELi48EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi64ELi48EEEiPKhlS2_l)
	sd	$fp,2688($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi48ELi64EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi48ELi64EEEiPKhlS2_l)
	sd	$fp,2816($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi64ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi64ELi16EEEiPKhlS2_l)
	sd	$fp,2944($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi64EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi64EEEiPKhlS2_l)
	sd	$fp,3072($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi)
	sd	$fp,8($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi)
	sd	$fp,136($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi)
	sd	$fp,264($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi)
	sd	$fp,392($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi)
	sd	$fp,520($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi)
	sd	$fp,776($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi)
	sd	$fp,648($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi)
	sd	$fp,904($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1032($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1672($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1800($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1928($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2056($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1160($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1288($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2184($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2312($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2440($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2568($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1416($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1544($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2696($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2824($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2952($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi)
	sd	$fp,3080($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,16($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi)
	sd	$fp,144($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi)
	sd	$fp,272($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi)
	sd	$fp,400($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi)
	sd	$fp,528($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,784($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,656($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,912($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1040($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1680($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1808($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1936($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2064($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1168($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1296($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2192($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2320($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2448($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2576($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1424($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1552($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2704($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2832($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2960($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,3088($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li)
	sd	$fp,224($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii)
	sd	$fp,24($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x1ILi8ELi8EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x1ILi8ELi8EEEiPiPjiPtPsii)
	sd	$fp,152($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi8ELi4EEEiPiPjiPtPsii)
	sd	$fp,664($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi4ELi8EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi4ELi8EEEiPiPjiPtPsii)
	sd	$fp,792($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi16ELi16EEEiPiPjiPtPsii)
	sd	$fp,280($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi16ELi8EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi16ELi8EEEiPiPjiPtPsii)
	sd	$fp,920($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi8ELi16EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi8ELi16EEEiPiPjiPtPsii)
	sd	$fp,1048($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x1ILi16ELi12EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x1ILi16ELi12EEEiPiPjiPtPsii)
	sd	$fp,1688($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x1ILi12ELi16EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x1ILi12ELi16EEEiPiPjiPtPsii)
	sd	$fp,1816($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x1ILi16ELi4EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x1ILi16ELi4EEEiPiPjiPtPsii)
	sd	$fp,1944($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x1ILi4ELi16EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x1ILi4ELi16EEEiPiPjiPtPsii)
	sd	$fp,2072($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi32ELi32EEEiPiPjiPtPsii)
	sd	$fp,408($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi32ELi16EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi32ELi16EEEiPiPjiPtPsii)
	sd	$fp,1176($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi16ELi32EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi16ELi32EEEiPiPjiPtPsii)
	sd	$fp,1304($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi32ELi24EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi32ELi24EEEiPiPjiPtPsii)
	sd	$fp,2200($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi24ELi32EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi24ELi32EEEiPiPjiPtPsii)
	sd	$fp,2328($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi32ELi8EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi32ELi8EEEiPiPjiPtPsii)
	sd	$fp,2456($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi8ELi32EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi8ELi32EEEiPiPjiPtPsii)
	sd	$fp,2584($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi64ELi64EEEiPiPjiPtPsii)
	sd	$fp,536($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi64ELi32EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi64ELi32EEEiPiPjiPtPsii)
	sd	$fp,1432($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x2ILi32ELi64EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x2ILi32ELi64EEEiPiPjiPtPsii)
	sd	$fp,1560($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi64ELi48EEEiPiPjiPtPsii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi64ELi48EEEiPiPjiPtPsii)
	sd	$fp,2712($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi48ELi64EEEiPiPjiPtPsii)($28)
	sd	$2,32($4)
	sd	$10,1312($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi48ELi64EEEiPiPjiPtPsii)
	sd	$9,160($4)
	sd	$fp,2840($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi64ELi16EEEiPiPjiPtPsii)($28)
	sd	$3,800($4)
	sd	$8,288($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi64ELi16EEEiPiPjiPtPsii)
	sd	$6,928($4)
	sd	$fp,2968($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi16ELi64EEEiPiPjiPtPsii)($28)
	sd	$11,1056($4)
	sd	$7,416($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi16ELi64EEEiPiPjiPtPsii)
	sd	$5,1184($4)
	sd	$fp,3096($4)
	ld	$fp,176($sp)
	sd	$fp,672($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi4EEEvPhlPKhPKsll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi4EEEvPhlPKhPKsll)
	sd	$fp,3248($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl)
	sd	$fp,3312($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl)
	sd	$fp,3320($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi4EEEvPslPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi4EEEvPslPKsl)
	sd	$fp,3328($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_l)
	sd	$fp,3368($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi8EEEvPhlPKhPKsll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi8EEEvPhlPKhPKsll)
	sd	$fp,3744($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl)
	sd	$fp,3808($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl)
	sd	$fp,3816($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi8EEEvPslPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi8EEEvPslPKsl)
	sd	$fp,3824($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l)
	sd	$fp,3864($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19transposeILi8EEEvPhPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19transposeILi8EEEvPhPKhl)
	sd	$fp,3888($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113pixel_ssd_s_cILi8EEEjPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113pixel_ssd_s_cILi8EEEjPKsl)
	sd	$fp,3872($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19pixel_varILi8EEEmPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19pixel_varILi8EEEmPKhl)
	sd	$fp,3840($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sseILi8ELi8EssEEjPKT1_lPKT2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sseILi8ELi8EssEEjPKT1_lPKT2_l)
	sd	$fp,3856($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi16EEEvPhlPKhPKsll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi16EEEvPhlPKhPKsll)
	sd	$fp,4240($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl)
	sd	$fp,4304($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl)
	sd	$fp,4312($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi16EEEvPslPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi16EEEvPslPKsl)
	sd	$fp,4320($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l)
	sd	$fp,4360($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19transposeILi16EEEvPhPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19transposeILi16EEEvPhPKhl)
	sd	$fp,4384($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113pixel_ssd_s_cILi16EEEjPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113pixel_ssd_s_cILi16EEEjPKsl)
	sd	$fp,4368($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19pixel_varILi16EEEmPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19pixel_varILi16EEEmPKhl)
	sd	$fp,4336($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sseILi16ELi16EssEEjPKT1_lPKT2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sseILi16ELi16EssEEjPKT1_lPKT2_l)
	sd	$fp,4352($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi32EEEvPhlPKhPKsll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi32EEEvPhlPKhPKsll)
	sd	$fp,4736($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl)
	sd	$fp,4800($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl)
	sd	$fp,4808($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi32EEEvPslPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi32EEEvPslPKsl)
	sd	$fp,4816($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l)
	sd	$fp,4856($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi64ELi64EEEvPhlPKhPKsll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi64ELi64EEEvPhlPKhPKsll)
	sd	$fp,5232($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi64ELi64EEEvPhlPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi64ELi64EEEvPhlPKsl)
	sd	$fp,5296($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi64ELi64EEEvPslPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi64ELi64EEEvPslPKhl)
	sd	$fp,5304($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi64ELi64EEEvPslPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi64ELi64EEEvPslPKsl)
	sd	$fp,5312($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l)
	sd	$fp,5352($4)
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
	sd	$16,8840($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_16addAvgILi4ELi2EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls)
	sd	$2,3384($4)
	sd	$fp,3256($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi4ELi2EEEvPKsS2_Phlll)
	sd	$23,8592($4)
	sd	$22,8600($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls)
	sd	$21,8672($4)
	sd	$fp,3752($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls)($28)
	sd	$20,8680($4)
	sd	$19,8752($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls)
	sd	$18,8760($4)
	sd	$fp,4248($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls)($28)
	sd	$17,8832($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	sd	$fp,3880($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)
	sd	$fp,4376($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l)
	sd	$fp,4872($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l)
	sd	$fp,5368($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16addAvgILi2ELi2EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi2ELi2EEEvPKsS2_Phlll)
	sd	$fp,8512($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi2EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi2EEEvPhlPKhl)
	sd	$fp,8520($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16addAvgILi2ELi4EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi2ELi4EEEvPKsS2_Phlll)
	sd	$fp,8992($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl)
	sd	$fp,9000($4)
	sd	$16,8912($4)
	sd	$14,9160($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi6EEEvPKsS2_Phlll)($28)
	ld	$fp,0($sp)
	ld	$16,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi2EEEvPhlPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi6EEEvPKsS2_Phlll)
	sd	$24,9080($4)
	sd	$14,9552($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi6EEEvPhlPKhl)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi2EEEvPhlPKhl)
	sd	$fp,9240($4)
	ld	$fp,16($sp)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi6EEEvPhlPKhl)
	sd	$16,8920($4)
	sd	$14,9560($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi6ELi8EEEvPKsS2_Phlll)($28)
	sd	$fp,9320($4)
	ld	$fp,32($sp)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi6ELi8EEEvPKsS2_Phlll)
	sd	$15,9152($4)
	sd	$14,9632($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi8EEEvPhlPKhl)($28)
	sd	$fp,9880($4)
	ld	$fp,48($sp)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi8EEEvPhlPKhl)
	sd	$25,9072($4)
	sd	$14,9640($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll)($28)
	sd	$fp,9960($4)
	ld	$fp,64($sp)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll)
	sd	$14,9712($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi2EEEvPhlPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi2EEEvPhlPKhl)
	sd	$14,9720($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi2ELi8EEEvPKsS2_Phlll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi2ELi8EEEvPKsS2_Phlll)
	sd	$14,9792($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl)
	sd	$14,9800($4)
	ld	$14,8($sp)
	sd	$14,9232($4)
	ld	$14,24($sp)
	sd	$14,9312($4)
	ld	$14,40($sp)
	sd	$14,9872($4)
	ld	$14,56($sp)
	sd	$14,9952($4)
	ld	$14,72($sp)
	sd	$14,10032($4)
	sd	$fp,10040($4)
	ld	$14,88($sp)
	ld	$fp,80($sp)
	sd	$12,10440($4)
	sd	$14,10112($4)
	ld	$14,104($sp)
	sd	$fp,10120($4)
	ld	$fp,96($sp)
	sd	$14,9392($4)
	ld	$14,120($sp)
	sd	$fp,9400($4)
	ld	$fp,112($sp)
	sd	$14,9472($4)
	ld	$14,136($sp)
	sd	$fp,9480($4)
	ld	$fp,128($sp)
	sd	$14,10192($4)
	ld	$14,152($sp)
	sd	$fp,10200($4)
	ld	$fp,144($sp)
	sd	$14,10272($4)
	ld	$14,168($sp)
	sd	$fp,10280($4)
	ld	$fp,160($sp)
	sd	$14,10352($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l)($28)
	sd	$fp,10360($4)
	sd	$2,8536($4)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l)
	sd	$13,10432($4)
	sd	$0,8456($4)
	sd	$9,8616($4)
	sd	$8,8696($4)
	sd	$7,8776($4)
	sd	$0,8856($4)
	sd	$0,8936($4)
	sd	$14,9816($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l)($28)
	ld	$fp,176($sp)
	ld	$24,184($sp)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l)
	ld	$15,192($sp)
	sd	$14,9896($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l)($28)
	sd	$fp,9016($4)
	sd	$10,9416($4)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l)
	sd	$3,9096($4)
	sd	$14,9976($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l)($28)
	sd	$6,9176($4)
	sd	$11,9256($4)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l)
	sd	$5,9336($4)
	sd	$14,10136($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l)($28)
	sd	$0,9496($4)
	sd	$0,9576($4)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l)
	sd	$0,9656($4)
	sd	$14,10216($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l)($28)
	sd	$0,9736($4)
	sd	$24,10056($4)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l)
	sd	$15,10376($4)
	sd	$14,10296($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi2EEEvPhlPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi2EEEvPhlPKsl)
	sd	$14,10496($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi2EEEvPslPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi2EEEvPslPKhl)
	sd	$14,10488($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi2EEEvPslPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi2EEEvPslPKsl)
	sd	$14,10504($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll)
	sd	$14,10480($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl)
	sd	$14,10560($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl)
	sd	$14,10552($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi4EEEvPslPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi4EEEvPslPKsl)
	sd	$14,10568($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi4EEEvPhlPKhPKsll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi4EEEvPhlPKhPKsll)
	sd	$14,10544($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl)
	sd	$14,10624($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl)
	sd	$14,10616($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi8EEEvPslPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi8EEEvPslPKsl)
	sd	$14,10632($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi8EEEvPhlPKhPKsll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi8EEEvPhlPKhPKsll)
	sd	$14,10608($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl)($28)
	sd	$2,10520($4)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl)
	sd	$14,10688($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl)
	sd	$14,10680($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi16EEEvPslPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi16EEEvPslPKsl)
	sd	$14,10696($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi16EEEvPhlPKhPKsll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi16EEEvPhlPKhPKsll)
	sd	$14,10672($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl)
	sd	$14,10752($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl)
	sd	$14,10744($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi32EEEvPslPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi32EEEvPslPKsl)
	sd	$14,10760($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi32EEEvPhlPKhPKsll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi32EEEvPhlPKhPKsll)
	sd	$14,10736($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_18sse_pp_aILi2ELi2EEEjPKhlS2_l)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_18sse_pp_aILi2ELi2EEEjPKhlS2_l)
	sd	$14,10464($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l)
	sd	$14,10528($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l)
	sd	$14,10592($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l)
	sd	$14,10656($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l)
	sd	$14,10720($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi2EEEvPslPKhS3_ll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi2EEEvPslPKhS3_ll)
	sd	$14,10472($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll)
	sd	$14,10536($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll)
	sd	$14,10600($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll)
	sd	$14,10664($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll)
	sd	$14,10728($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	sd	$14,10584($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)
	sd	$14,10648($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l)
	sd	$14,10712($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi2ELi4EEEvPKsS2_Phlll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi2ELi4EEEvPKsS2_Phlll)
	sd	$14,10832($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl)
	sd	$14,10840($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi4ELi8EEEvPKsS2_Phlll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi4ELi8EEEvPKsS2_Phlll)
	sd	$14,10912($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl)
	sd	$14,10920($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll)
	sd	$14,10992($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl)
	sd	$14,11000($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi32EEEvPKsS2_Phlll)
	sd	$14,11072($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl)
	sd	$14,11080($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll)
	sd	$14,11152($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl)
	sd	$14,11160($4)
	sd	$23,11232($4)
	sd	$12,11640($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi24EEEvPKsS2_Phlll)($28)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi2ELi8EEEvPKsS2_Phlll)($28)
	sd	$22,11240($4)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi24EEEvPKsS2_Phlll)
	sd	$21,11392($4)
	sd	$12,12192($4)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi2ELi8EEEvPKsS2_Phlll)
	ld	$12,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi24EEEvPhlPKhl)($28)
	sd	$14,11312($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi24EEEvPhlPKhl)
	sd	$20,11400($4)
	sd	$12,12200($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_16addAvgILi12ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl)
	sd	$14,11320($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi4ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi12ELi32EEEvPKsS2_Phlll)
	sd	$19,11552($4)
	sd	$12,12272($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi32EEEvPhlPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi4ELi16EEEvPKsS2_Phlll)
	sd	$14,11472($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi32EEEvPhlPKhl)
	sd	$18,11560($4)
	sd	$12,12280($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl)
	sd	$14,11480($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi12EEEvPKsS2_Phlll)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll)
	sd	$17,11712($4)
	sd	$12,12352($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi12EEEvPKsS2_Phlll)
	sd	$14,11872($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi12EEEvPhlPKhl)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl)
	sd	$25,12032($4)
	sd	$12,12360($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_16addAvgILi4ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi12EEEvPhlPKhl)
	sd	$14,11880($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi6ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi4ELi32EEEvPKsS2_Phlll)
	sd	$13,11632($4)
	sd	$12,12432($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi32EEEvPhlPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi6ELi16EEEvPKsS2_Phlll)
	sd	$14,11952($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi16EEEvPhlPKhl)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi32EEEvPhlPKhl)
	sd	$12,12440($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi32EEEvPhlPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi16EEEvPhlPKhl)
	sd	$14,11960($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi32EEEvPhlPKhl)
	sd	$12,11720($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl)
	sd	$14,12040($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi2ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll)
	sd	$12,11792($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi2ELi16EEEvPKsS2_Phlll)
	sd	$14,12112($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi16EEEvPhlPKhl)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl)
	sd	$12,11800($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi48EEEvPKsS2_Phlll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi16EEEvPhlPKhl)
	sd	$14,12120($4)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi48EEEvPKsS2_Phlll)
	sd	$12,12512($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi48EEEvPhlPKhl)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi48EEEvPhlPKhl)
	sd	$12,12520($4)
	sd	$2,11176($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l)($28)
	ld	$12,%got_page(_ZN12_GLOBAL__N_16addAvgILi24ELi64EEEvPKsS2_Phlll)($28)
	sd	$10,11016($4)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l)
	ld	$10,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l)($28)
	sd	$2,11736($4)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi24ELi64EEEvPKsS2_Phlll)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l)($28)
	sd	$12,12592($4)
	daddiu	$10,$10,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l)
	ld	$12,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi64EEEvPhlPKhl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l)
	sd	$0,10776($4)
	sd	$2,11816($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi64EEEvPhlPKhl)
	sd	$12,12600($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l)
	sd	$3,10856($4)
	sd	$2,11976($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi16EEEvPKsS2_Phlll)
	sd	$12,12672($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l)
	sd	$11,10936($4)
	sd	$2,12136($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl)
	sd	$12,12680($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l)
	sd	$10,11096($4)
	sd	$2,12216($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi64EEEvPKsS2_Phlll)
	sd	$12,12752($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi64EEEvPhlPKhl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l)
	sd	$0,11256($4)
	sd	$2,12376($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi64EEEvPhlPKhl)
	sd	$12,12760($4)
	sd	$9,11336($4)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l)
	sd	$24,11416($4)
	sd	$2,12456($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l)($28)
	sd	$8,11496($4)
	sd	$15,11576($4)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l)
	sd	$7,11656($4)
	sd	$2,12536($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l)($28)
	sd	$0,11896($4)
	sd	$0,12056($4)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l)
	sd	$6,12296($4)
	sd	$2,12696($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_18sse_pp_aILi2ELi4EEEjPKhlS2_l)($28)
	sd	$5,12616($4)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_18sse_pp_aILi2ELi4EEEjPKhlS2_l)
	sd	$2,12784($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi4EEEvPhlPKsl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi4EEEvPhlPKsl)
	sd	$2,12816($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi4EEEvPslPKhl)($28)
	sd	$3,12840($4)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi4EEEvPslPKhl)
	sd	$2,12808($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi4EEEvPslPKsl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi4EEEvPslPKsl)
	sd	$2,12824($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi4EEEvPslPKhS3_ll)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi4EEEvPslPKhS3_ll)
	sd	$2,12792($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi4EEEvPhlPKhPKsll)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi4EEEvPhlPKhPKsll)
	sd	$2,12800($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_18sse_pp_aILi4ELi8EEEjPKhlS2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_18sse_pp_aILi4ELi8EEEjPKhlS2_l)
	sd	$2,12848($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi8EEEvPhlPKsl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi8EEEvPhlPKsl)
	sd	$2,12880($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi8EEEvPslPKhl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi8EEEvPslPKhl)
	sd	$2,12872($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi8EEEvPslPKsl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi8EEEvPslPKsl)
	sd	$2,12888($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi8EEEvPslPKhS3_ll)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi8EEEvPslPKhS3_ll)
	sd	$2,12856($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi8EEEvPhlPKhPKsll)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi8EEEvPhlPKhPKsll)
	sd	$2,12864($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_18sse_pp_aILi8ELi16EEEjPKhlS2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_18sse_pp_aILi8ELi16EEEjPKhlS2_l)
	sd	$2,12912($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi16EEEvPhlPKsl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi16EEEvPhlPKsl)
	sd	$2,12944($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi16EEEvPslPKhl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi16EEEvPslPKhl)
	sd	$2,12936($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi16EEEvPslPKsl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi16EEEvPslPKsl)
	sd	$2,12952($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi16EEEvPslPKhS3_ll)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi16EEEvPslPKhS3_ll)
	sd	$2,12920($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi16EEEvPhlPKhPKsll)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi16EEEvPhlPKhPKsll)
	sd	$2,12928($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_18sse_pp_aILi16ELi32EEEjPKhlS2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_18sse_pp_aILi16ELi32EEEjPKhlS2_l)
	sd	$2,12976($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi32EEEvPhlPKsl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi32EEEvPhlPKsl)
	sd	$2,13008($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi32EEEvPslPKhl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi32EEEvPslPKhl)
	sd	$2,13000($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi32EEEvPslPKsl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi32EEEvPslPKsl)
	sd	$2,13016($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi32EEEvPslPKhS3_ll)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi32EEEvPslPKhS3_ll)
	sd	$2,12984($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi32EEEvPhlPKhPKsll)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi32EEEvPhlPKhPKsll)
	sd	$2,12992($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_18sse_pp_aILi32ELi64EEEjPKhlS2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_18sse_pp_aILi32ELi64EEEjPKhlS2_l)
	sd	$2,13040($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi64EEEvPhlPKsl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi64EEEvPhlPKsl)
	sd	$2,13072($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi64EEEvPslPKhl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi64EEEvPslPKhl)
	sd	$2,13064($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi64EEEvPslPKsl)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi64EEEvPslPKsl)
	sd	$2,13080($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi64EEEvPslPKhS3_ll)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi64EEEvPslPKhS3_ll)
	sd	$2,13048($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi64EEEvPhlPKhPKsll)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi64EEEvPhlPKhPKsll)
	sd	$2,13056($4)
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
	ld	$fp,280($sp)
	ld	$23,264($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L11weight_sp_cEPKsPhlliiiiii)
	ld	$22,256($sp)
	sd	$2,5952($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L15scale1D_128to64EPhPKh)($28)
	ld	$21,248($sp)
	ld	$20,240($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L15scale1D_128to64EPhPKh)
	ld	$19,232($sp)
	sd	$2,5736($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L14scale2D_64to32EPhPKhl)($28)
	ld	$18,224($sp)
	ld	$17,216($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L14scale2D_64to32EPhPKhl)
	ld	$16,208($sp)
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
	ld	$28,272($sp)
	daddiu	$sp,$sp,288
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L14cuTreeFix8PackEPtPdi)
	jr	$31
	sd	$2,5904($4)

	.set	macro
	.set	reorder
	.end	_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE
	.size	_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE, .-_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE
	.local	_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf
	.comm	_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf,8,8
	.local	_ZZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_lE7zeroBuf
	.comm	_ZZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_lE7zeroBuf,8,8
	.local	_ZZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_lE7zeroBuf
	.comm	_ZZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_lE7zeroBuf,8,8
	.local	_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf
	.comm	_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf,8,8
	.local	_ZZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_lE7zeroBuf
	.comm	_ZZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_lE7zeroBuf,8,8
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
