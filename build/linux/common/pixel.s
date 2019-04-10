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
	.ent	_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l
	.type	_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l, @function
_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l:
	.frame	$sp,80,$31		# vars= 64, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	move	$8,$sp
	daddiu	$15,$sp,64
	sd	$16,64($sp)
	move	$12,$sp
.L2:
	lbu	$13,5($6)
	daddiu	$12,$12,16
	lbu	$11,5($4)
	lbu	$9,4($6)
	lbu	$2,4($4)
	lbu	$25,0($6)
	subu	$11,$11,$13
	lbu	$10,7($4)
	sll	$11,$11,16
	lbu	$13,7($6)
	subu	$2,$2,$9
	lbu	$14,0($4)
	sll	$2,$2,16
	lbu	$9,6($6)
	lbu	$3,6($4)
	subu	$10,$10,$13
	subu	$14,$14,$25
	lbu	$16,1($6)
	sll	$24,$10,16
	addu	$2,$2,$14
	lbu	$13,2($4)
	subu	$3,$3,$9
	lbu	$25,2($6)
	lbu	$9,1($4)
	sll	$3,$3,16
	lbu	$10,3($4)
	daddu	$4,$4,$5
	lbu	$14,3($6)
	subu	$13,$13,$25
	daddu	$6,$6,$7
	subu	$9,$9,$16
	addu	$3,$3,$13
	addu	$11,$11,$9
	subu	$10,$10,$14
	addu	$9,$2,$11
	addu	$10,$24,$10
	subu	$2,$2,$11
	addu	$11,$3,$10
	subu	$3,$3,$10
	addu	$13,$9,$11
	addu	$10,$2,$3
	subu	$9,$9,$11
	subu	$2,$2,$3
	sw	$13,-16($12)
	sw	$9,-8($12)
	sw	$10,-12($12)
	bne	$15,$12,.L2
	sw	$2,-4($12)

	li	$9,65536			# 0x10000
	daddiu	$11,$8,16
	move	$10,$0
	addiu	$9,$9,1
.L3:
	lw	$6,0($8)
	daddiu	$8,$8,4
	lw	$4,12($8)
	lw	$2,44($8)
	lw	$3,28($8)
	addu	$7,$6,$4
	subu	$6,$6,$4
	addu	$4,$3,$2
	subu	$3,$3,$2
	addu	$5,$7,$4
	addu	$2,$6,$3
	srl	$12,$5,15
	srl	$13,$2,15
	subu	$4,$7,$4
	and	$14,$13,$9
	srl	$7,$4,15
	subu	$3,$6,$3
	and	$24,$12,$9
	srl	$6,$3,15
	and	$15,$7,$9
	sll	$13,$14,16
	sll	$12,$24,16
	subu	$13,$13,$14
	subu	$12,$12,$24
	and	$14,$6,$9
	sll	$7,$15,16
	sll	$6,$14,16
	subu	$7,$7,$15
	addu	$2,$2,$13
	addu	$5,$5,$12
	subu	$6,$6,$14
	xor	$2,$2,$13
	xor	$5,$5,$12
	addu	$4,$4,$7
	addu	$2,$2,$5
	xor	$4,$4,$7
	addu	$3,$3,$6
	addu	$2,$2,$4
	xor	$3,$3,$6
	addu	$2,$2,$3
	bne	$11,$8,.L3
	addu	$10,$2,$10

	srl	$2,$10,16
	andi	$10,$10,0xffff
	ld	$16,64($sp)
	addu	$2,$2,$10
	daddiu	$sp,$sp,80
	jr	$31
	dext	$2,$2,1,31

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l
	.size	_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l, .-_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l
	.type	_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l, @function
_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l:
	.frame	$sp,192,$31		# vars= 128, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-192
	move	$12,$sp
	daddiu	$13,$sp,128
	sd	$21,176($sp)
	move	$9,$sp
	sd	$20,168($sp)
	sd	$19,160($sp)
	sd	$18,152($sp)
	sd	$17,144($sp)
	sd	$16,136($sp)
	.align	3
.L9:
	lbu	$8,0($4)
	daddiu	$9,$9,16
	lbu	$3,1($4)
	lbu	$11,1($6)
	lbu	$2,0($6)
	lbu	$24,2($6)
	lbu	$10,2($4)
	subu	$2,$8,$2
	subu	$8,$3,$11
	lbu	$14,3($4)
	lbu	$11,3($6)
	subu	$15,$2,$8
	addu	$2,$2,$8
	lbu	$3,4($4)
	sll	$8,$15,16
	subu	$10,$10,$24
	lbu	$15,4($6)
	addu	$8,$8,$2
	lbu	$24,5($4)
	subu	$14,$14,$11
	lbu	$2,5($6)
	subu	$11,$10,$14
	addu	$14,$10,$14
	subu	$3,$3,$15
	lbu	$10,6($4)
	sll	$11,$11,16
	lbu	$16,6($6)
	addu	$11,$11,$14
	lbu	$15,7($4)
	subu	$24,$24,$2
	addu	$14,$8,$11
	lbu	$25,7($6)
	subu	$2,$3,$24
	subu	$8,$8,$11
	subu	$10,$10,$16
	sll	$2,$2,16
	addu	$3,$3,$24
	daddu	$4,$4,$5
	subu	$11,$15,$25
	addu	$3,$2,$3
	subu	$2,$10,$11
	addu	$10,$10,$11
	sll	$2,$2,16
	daddu	$6,$6,$7
	addu	$2,$2,$10
	addu	$10,$3,$2
	subu	$2,$3,$2
	addu	$11,$14,$10
	addu	$3,$8,$2
	subu	$14,$14,$10
	subu	$2,$8,$2
	sw	$11,-16($9)
	sw	$14,-8($9)
	sw	$3,-12($9)
	bne	$13,$9,.L9
	sw	$2,-4($9)

	li	$8,65536			# 0x10000
	daddiu	$9,$12,16
	move	$2,$0
	addiu	$8,$8,1
.L10:
	lw	$11,0($12)
	daddiu	$12,$12,4
	lw	$6,12($12)
	lw	$5,44($12)
	lw	$10,76($12)
	addu	$4,$11,$6
	lw	$13,108($12)
	subu	$11,$11,$6
	lw	$7,28($12)
	lw	$18,60($12)
	lw	$6,92($12)
	addu	$3,$7,$5
	subu	$7,$7,$5
	addu	$16,$18,$10
	subu	$18,$18,$10
	addu	$10,$6,$13
	addu	$15,$11,$7
	addu	$5,$4,$3
	subu	$17,$11,$7
	subu	$6,$6,$13
	addu	$11,$16,$10
	addu	$14,$5,$11
	subu	$3,$4,$3
	subu	$5,$5,$11
	addu	$4,$18,$6
	addu	$13,$15,$4
	srl	$25,$14,15
	srl	$24,$5,15
	subu	$10,$16,$10
	subu	$4,$15,$4
	and	$24,$24,$8
	and	$25,$25,$8
	srl	$15,$13,15
	addu	$11,$3,$10
	and	$15,$15,$8
	sll	$7,$24,16
	sll	$19,$25,16
	srl	$16,$4,15
	subu	$25,$19,$25
	subu	$3,$3,$10
	subu	$6,$18,$6
	subu	$21,$7,$24
	and	$16,$16,$8
	srl	$24,$11,15
	sll	$19,$15,16
	subu	$19,$19,$15
	and	$20,$24,$8
	addu	$10,$17,$6
	srl	$15,$3,15
	sll	$24,$16,16
	addu	$7,$5,$21
	addu	$14,$14,$25
	subu	$16,$24,$16
	xor	$14,$14,$25
	and	$18,$15,$8
	subu	$6,$17,$6
	srl	$25,$10,15
	xor	$7,$7,$21
	addu	$13,$13,$19
	sll	$24,$20,16
	and	$25,$25,$8
	subu	$24,$24,$20
	addu	$7,$7,$14
	xor	$13,$13,$19
	addu	$5,$4,$16
	srl	$14,$6,15
	sll	$15,$18,16
	addu	$7,$7,$13
	subu	$15,$15,$18
	and	$14,$14,$8
	addu	$11,$11,$24
	xor	$5,$5,$16
	sll	$13,$25,16
	subu	$13,$13,$25
	addu	$5,$5,$7
	addu	$4,$3,$15
	xor	$7,$11,$24
	sll	$11,$14,16
	addu	$5,$5,$7
	subu	$11,$11,$14
	xor	$4,$4,$15
	addu	$10,$10,$13
	addu	$4,$4,$5
	xor	$3,$10,$13
	addu	$6,$6,$11
	addu	$4,$4,$3
	xor	$3,$6,$11
	addu	$3,$3,$4
	srl	$4,$3,16
	andi	$3,$3,0xffff
	addu	$3,$4,$3
	bne	$9,$12,.L10
	addu	$2,$3,$2

	ld	$21,176($sp)
	ld	$20,168($sp)
	ld	$19,160($sp)
	ld	$18,152($sp)
	ld	$17,144($sp)
	ld	$16,136($sp)
	jr	$31
	daddiu	$sp,$sp,192

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l
	.size	_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l, .-_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l
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
	blez	$9,.L14
	lw	$24,40($sp)

	addiu	$16,$8,-1
	dsll	$17,$6,1
	dext	$16,$16,0,32
	move	$6,$0
	dsll	$16,$16,1
	li	$25,255			# 0xff
	daddiu	$16,$16,2
	.align	3
.L18:
	blez	$8,.L16
	nop

	move	$3,$4
	move	$12,$5
	daddu	$14,$16,$4
	.align	3
.L17:
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
	bne	$14,$3,.L17
	sb	$2,-1($12)

.L16:
	addiu	$6,$6,1
	daddu	$4,$4,$17
	bne	$9,$6,.L18
	daddu	$5,$5,$7

.L14:
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
.L23:
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
	bne	$7,$10,.L23
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
.L28:
	srl	$12,$14,1
	daddu	$15,$6,$5
	sll	$12,$12,5
	move	$8,$15
	move	$7,$0
	.align	3
.L27:
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
	bne	$7,$13,.L27
	sb	$2,0($3)

	addiu	$14,$14,2
	bne	$14,$13,.L28
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
.L35:
	move	$25,$4
	move	$17,$6
	li	$16,4			# 0x4
	mtlo	$0
	move	$12,$0
	move	$13,$0
	move	$14,$0
.L34:
	daddiu	$24,$25,4
	move	$10,$17
	move	$3,$25
.L33:
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
	bne	$24,$3,.L33
	addu	$12,$2,$12

	addiu	$16,$16,-1
	daddu	$25,$25,$5
	bne	$16,$0,.L34
	daddu	$17,$17,$7

	sw	$14,0($8)
	daddiu	$8,$8,16
	daddiu	$4,$4,4
	sw	$13,-12($8)
	daddiu	$6,$6,4
	sw	$12,-8($8)
	bne	$18,$8,.L35
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
	blez	$6,.L40
	mtc1	$0,$f0

	addiu	$8,$6,-1
	daddiu	$2,$4,16
	dext	$8,$8,0,32
	li	$7,196608			# 0x30000
	dlsa	$8,$8,$2,4
	ori	$7,$7,0x99bb
	.align	3
.L42:
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
	bne	$8,$4,.L42
	add.s	$f0,$f0,$f1

.L40:
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
	blez	$9,.L54
	addiu	$14,$8,-1

	move	$13,$0
	dext	$14,$14,0,32
	daddiu	$14,$14,1
	.align	3
.L50:
	blez	$8,.L48
	nop

	move	$2,$4
	move	$11,$6
	daddu	$12,$14,$4
	.align	3
.L49:
	lbu	$3,0($2)
	daddiu	$11,$11,1
	daddiu	$2,$2,1
	sll	$3,$3,$10
	bne	$2,$12,.L49
	sb	$3,-1($11)

.L48:
	addiu	$13,$13,1
	daddu	$6,$6,$7
	bne	$9,$13,.L50
	daddu	$4,$4,$5

.L54:
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
	blez	$9,.L63
	addiu	$15,$8,-1

	dsll	$5,$5,1
	dext	$15,$15,0,32
	move	$14,$0
	dsll	$15,$15,1
	seb	$11,$11
	daddiu	$15,$15,2
	.align	3
.L59:
	blez	$8,.L57
	nop

	move	$3,$4
	move	$12,$6
	daddu	$13,$15,$4
	.align	3
.L58:
	lhu	$2,0($3)
	daddiu	$12,$12,1
	daddiu	$3,$3,2
	sra	$2,$2,$10
	and	$2,$2,$11
	bne	$13,$3,.L58
	sb	$2,-1($12)

.L57:
	addiu	$14,$14,1
	daddu	$6,$6,$7
	bne	$9,$14,.L59
	daddu	$4,$4,$5

.L63:
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
	blez	$9,.L72
	addiu	$15,$8,-1

	dsll	$5,$5,1
	dext	$15,$15,0,32
	move	$14,$0
	dsll	$15,$15,1
	seb	$11,$11
	daddiu	$15,$15,2
	.align	3
.L68:
	blez	$8,.L66
	nop

	move	$3,$4
	move	$12,$6
	daddu	$13,$15,$4
	.align	3
.L67:
	lhu	$2,0($3)
	daddiu	$12,$12,1
	daddiu	$3,$3,2
	sll	$2,$2,$10
	and	$2,$2,$11
	bne	$13,$3,.L67
	sb	$2,-1($12)

.L66:
	addiu	$14,$14,1
	daddu	$6,$6,$7
	bne	$9,$14,.L68
	daddu	$4,$4,$5

.L72:
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
	blez	$10,.L78
	mul.d	$f4,$f4,$f0

	ld	$3,%got_page(.LC1)($13)
	addiu	$12,$10,-1
	daddiu	$2,$6,4
	dext	$12,$12,0,32
	dlsa	$12,$12,$2,2
	ldc1	$f5,%got_ofst(.LC1)($3)
	.align	3
.L75:
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
	bne	$12,$6,.L75
	swc1	$f0,-4($4)

.L78:
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
	blez	$6,.L86
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
.L83:
	ldc1	$f0,0($5)
	mul.d	$f0,$f0,$f3
	sub.d	$f2,$f0,$f1
	c.le.d	$fcc0,$f1,$f0
	trunc.w.d $f0,$f0
	bc1f	$fcc0,.L82
	mfc1	$2,$f0

	trunc.w.d $f0,$f2
	mfc1	$2,$f0
	or	$2,$2,$6
.L82:
	daddiu	$5,$5,8
	sh	$2,0($4)
	bne	$5,$3,.L83
	daddiu	$4,$4,2

.L86:
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
	blez	$6,.L92
	daddiu	$7,$7,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_1L16cuTreeFix8UnpackEPdPti)))

	addiu	$3,$6,-1
	daddiu	$2,$5,2
	dext	$3,$3,0,32
	dlsa	$3,$3,$2,1
	ld	$2,%got_page(.LC0)($7)
	ldc1	$f1,%got_ofst(.LC0)($2)
	.align	3
.L89:
	lh	$2,0($5)
	daddiu	$4,$4,8
	daddiu	$5,$5,2
	mtc1	$2,$f0
	cvt.d.w	$f0,$f0
	mul.d	$f0,$f0,$f1
	bne	$5,$3,.L89
	sdc1	$f0,-8($4)

.L92:
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
.L95:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L94:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L94
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L95
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
.L100:
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
	bne	$10,$0,.L100
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
.L105:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,4
.L104:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L104
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L105
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
.L111:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L110:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L110
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L111
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
.L117:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L116:
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
	bne	$14,$3,.L116
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L117
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
.L123:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L122:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L122
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L123
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
.L129:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L128:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L128
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L129
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
.L135:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L134:
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
	bne	$14,$3,.L134
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L135
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
.L141:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L140:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L140
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L141
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
.L147:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L146:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L146
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L147
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
.L153:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L152:
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
	bne	$14,$3,.L152
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L153
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
.L159:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L158:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L158
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L159
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
.L165:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L164:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L164
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L165
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
.L171:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
	.align	3
.L170:
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
	bne	$14,$3,.L170
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L171
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
.L177:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L176:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L176
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L177
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
.L183:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L182:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L182
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L183
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
.L188:
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
	bne	$10,$0,.L188
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
.L193:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,4
.L192:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L192
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L193
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
.L199:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L198:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L198
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L199
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
.L205:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L204:
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
	bne	$14,$3,.L204
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L205
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
.L211:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L210:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L210
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L211
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
.L217:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L216:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L216
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L217
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
.L223:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L222:
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
	bne	$14,$3,.L222
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L223
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
.L229:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L228:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L228
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L229
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
.L235:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L234:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L234
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L235
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
.L241:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L240:
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
	bne	$14,$3,.L240
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L241
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
.L247:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L246:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L246
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L247
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
.L253:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L252:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L252
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L253
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
.L259:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L258:
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
	bne	$14,$3,.L258
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L259
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
.L265:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L264:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L264
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L265
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
.L271:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,12
	.align	3
.L270:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L270
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L271
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
.L277:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,24
	.align	3
.L276:
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
	bne	$14,$3,.L276
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L277
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
.L283:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,12
	.align	3
.L282:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L282
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L283
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
.L289:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L288:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L288
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L289
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
.L295:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L294:
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
	bne	$14,$3,.L294
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L295
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
.L301:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L300:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L300
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L301
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
.L307:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L306:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L306
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L307
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
.L312:
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
	bne	$10,$0,.L312
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
.L317:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,4
.L316:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L316
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L317
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
.L323:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L322:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L322
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L323
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
.L329:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L328:
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
	bne	$14,$3,.L328
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L329
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
.L335:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L334:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L334
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L335
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
.L341:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L340:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L340
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L341
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
.L347:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L346:
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
	bne	$14,$3,.L346
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L347
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
.L353:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L352:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L352
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L353
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
.L359:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L358:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L358
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L359
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
.L365:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L364:
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
	bne	$14,$3,.L364
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L365
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
.L371:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L370:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L370
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L371
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
.L377:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,24
	.align	3
.L376:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L376
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L377
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
.L383:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,48
	.align	3
.L382:
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
	bne	$14,$3,.L382
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L383
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
.L389:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,24
	.align	3
.L388:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L388
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L389
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
.L395:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L394:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L394
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L395
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
.L401:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L400:
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
	bne	$14,$3,.L400
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L401
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
.L407:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L406:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L406
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L407
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
.L413:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L412:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L412
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L413
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
.L419:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L418:
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
	bne	$14,$3,.L418
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L419
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
.L425:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L424:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L424
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L425
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
.L431:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L430:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L430
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L431
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
.L437:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
	.align	3
.L436:
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
	bne	$14,$3,.L436
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L437
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
.L443:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L442:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L442
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L443
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
.L449:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L448:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L448
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L449
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
.L455:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L454:
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
	bne	$14,$3,.L454
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L455
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
.L461:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L460:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L460
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L461
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
.L467:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L466:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L466
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L467
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
.L473:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
	.align	3
.L472:
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
	bne	$14,$3,.L472
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L473
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
.L479:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L478:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L478
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L479
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
.L485:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,48
	.align	3
.L484:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L484
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L485
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
.L491:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,96
	.align	3
.L490:
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
	bne	$14,$3,.L490
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L491
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
.L497:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,48
	.align	3
.L496:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L496
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L497
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
.L503:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L502:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L502
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L503
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
.L509:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
	.align	3
.L508:
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
	bne	$14,$3,.L508
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L509
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
.L515:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L514:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L514
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L515
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
.L521:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L520:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L520
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L521
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
.L527:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L526:
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
	bne	$14,$3,.L526
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L527
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
.L533:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L532:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L532
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L533
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
.L539:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,4
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
.L557:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
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
.L569:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,12
	.align	3
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
.L575:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
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
.L581:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,4
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
.L593:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
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
.L605:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,24
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
.L611:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
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
.L617:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
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
.L629:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
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
.L641:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,48
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
.L647:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L646:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L646
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L647
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
.L653:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L652:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L652
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L653
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
.L659:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,4
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
.L665:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,4
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
.L683:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,8
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
.L695:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,12
	.align	3
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
.L701:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
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
.L707:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,4
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
.L719:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
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
.L731:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,24
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
.L737:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L736:
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
	bne	$24,$3,.L736
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L737
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
.L743:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,8
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
.L755:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
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
.L767:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,48
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
.L773:
	move	$11,$5
	move	$10,$6
	move	$3,$7
	daddiu	$15,$4,64
	.align	3
.L772:
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
	bne	$15,$4,.L772
	sw	$14,8($9)

	move	$4,$15
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$24,$15,.L773
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
.L779:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L778:
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
	bne	$24,$3,.L778
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L779
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
.L785:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,4
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
.L791:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,4
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
.L809:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,8
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
.L821:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,12
	.align	3
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
.L827:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,16
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
	addu	$16,$2,$16
	bne	$3,$17,.L826
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L827
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
.L833:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,4
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
	addu	$16,$2,$16
	bne	$3,$17,.L832
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L833
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
.L845:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,16
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
.L851:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,32
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
	addu	$4,$2,$4
	bne	$3,$5,.L850
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L851
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
.L857:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,24
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
	addu	$4,$2,$4
	bne	$3,$5,.L856
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L857
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
.L863:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,32
	.align	3
.L862:
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
	bne	$3,$17,.L862
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L863
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
.L869:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,8
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
	addu	$16,$2,$16
	bne	$3,$17,.L868
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L869
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
.L881:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,32
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
.L893:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,48
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
.L899:
	move	$13,$16
	move	$12,$6
	move	$11,$7
	move	$3,$8
	daddiu	$5,$4,64
	.align	3
.L898:
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
	bne	$5,$4,.L898
	sw	$25,12($10)

	move	$4,$5
	daddu	$16,$16,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$5,$17,.L899
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
.L905:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,16
	.align	3
.L904:
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
	bne	$3,$5,.L904
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L905
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
	blez	$9,.L913
	move	$6,$0

	lw	$14,0($4)
	move	$2,$0
	move	$4,$0
	.align	3
.L912:
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
	beq	$3,$0,.L911
	dlsa	$13,$2,$8,1

	addiu	$2,$2,1
	sh	$6,0($13)
.L911:
	seh	$6,$11
	slt	$3,$6,$9
	bne	$3,$0,.L912
	move	$4,$6

	jr	$31
	nop

	.align	3
.L913:
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
	blez	$9,.L922
	dlsa	$6,$6,$5,2

	daddiu	$sp,$sp,-16
	lw	$14,0($4)
	lw	$13,4($4)
	move	$12,$0
	move	$2,$0
	move	$4,$0
	sd	$16,0($sp)
	.align	3
.L921:
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
	beq	$3,$0,.L920
	dlsa	$24,$2,$8,1

	addiu	$2,$2,1
	sh	$12,0($24)
.L920:
	seh	$12,$15
	slt	$3,$12,$9
	bne	$3,$0,.L921
	move	$4,$12

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L922:
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
	blez	$9,.L934
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
.L933:
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
	beq	$3,$0,.L932
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L932:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L933
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
.L934:
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
	blez	$9,.L956
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
.L955:
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
	beq	$3,$0,.L954
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L954:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L955
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
.L956:
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
	blez	$9,.L972
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
.L971:
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
	blez	$9,.L984
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
.L983:
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
	beq	$3,$0,.L982
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L982:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L983
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
.L984:
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
	blez	$9,.L994
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
.L993:
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
	beq	$3,$0,.L992
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L992:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L993
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
.L994:
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
	blez	$9,.L1010
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
.L1009:
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
	beq	$3,$0,.L1008
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L1008:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L1009
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
.L1010:
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
.L1022:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,4
.L1021:
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
	bne	$13,$3,.L1021
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1022
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
.L1028:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1027:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1027
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1028
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
.L1034:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,8
.L1033:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1033
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1034
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
.L1040:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1039:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1039
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1040
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
.L1046:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,8
.L1045:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1045
	sh	$3,-2($8)

	daddiu	$4,$4,8
	bne	$10,$4,.L1046
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
.L1052:
	move	$3,$5
	move	$8,$4
	daddiu	$10,$5,8
.L1051:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$10,$3,.L1051
	sh	$2,-2($8)

	daddiu	$4,$4,8
	bne	$11,$4,.L1052
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
.L1058:
	move	$3,$4
	daddiu	$8,$5,8
.L1057:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1057
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1058
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
.L1064:
	move	$3,$4
	daddiu	$8,$5,8
.L1063:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1063
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1064
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
.L1070:
	daddiu	$7,$4,4
	move	$2,$5
.L1069:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1069
	sb	$3,-1($4)

	bne	$4,$8,.L1070
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
.L1076:
	move	$3,$4
	daddiu	$7,$4,8
.L1075:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1075
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1076
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
.L1082:
	move	$2,$4
	daddiu	$7,$4,4
.L1081:
	lbu	$3,0($2)
	daddiu	$2,$2,1
	madd	$3,$3
	bne	$7,$2,.L1081
	addu	$6,$3,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1082
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
.L1088:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
.L1087:
	daddiu	$8,$8,2
	lh	$2,0($3)
	mtlo	$9
	lh	$10,-2($8)
	daddiu	$3,$3,2
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1087
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1088
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
.L1094:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L1093:
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
	bne	$13,$3,.L1093
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1094
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
.L1100:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L1099:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1099
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1100
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
.L1106:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,16
	.align	3
.L1105:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1105
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1106
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
.L1112:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L1111:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1111
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1112
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
.L1118:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,16
	.align	3
.L1117:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1117
	sh	$3,-2($8)

	daddiu	$4,$4,16
	bne	$10,$4,.L1118
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
.L1124:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,16
	.align	3
.L1123:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$10
	sra	$2,$2,$7
	bne	$9,$3,.L1123
	sh	$2,-2($8)

	daddiu	$4,$4,16
	bne	$11,$4,.L1124
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
.L1130:
	move	$3,$4
	daddiu	$8,$5,16
	.align	3
.L1129:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1129
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1130
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
.L1136:
	move	$3,$4
	daddiu	$8,$5,16
	.align	3
.L1135:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1135
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1136
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
.L1142:
	daddiu	$7,$4,8
	move	$2,$5
	.align	3
.L1141:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1141
	sb	$3,-1($4)

	bne	$4,$8,.L1142
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
.L1148:
	move	$3,$4
	daddiu	$7,$4,16
	.align	3
.L1147:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1147
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1148
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
.L1154:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L1153:
	daddiu	$8,$8,2
	lh	$2,0($3)
	mtlo	$9
	lh	$10,-2($8)
	daddiu	$3,$3,2
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1153
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1154
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
.L1160:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L1159:
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
	bne	$13,$3,.L1159
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1160
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
.L1166:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L1165:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1165
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1166
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
.L1172:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,32
	.align	3
.L1171:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1171
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1172
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
.L1178:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L1177:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1177
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1178
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
.L1184:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,32
	.align	3
.L1183:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1183
	sh	$3,-2($8)

	daddiu	$4,$4,32
	bne	$10,$4,.L1184
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
.L1190:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,32
	.align	3
.L1189:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$10
	sra	$2,$2,$7
	bne	$9,$3,.L1189
	sh	$2,-2($8)

	daddiu	$4,$4,32
	bne	$11,$4,.L1190
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
.L1196:
	move	$3,$4
	daddiu	$8,$5,32
	.align	3
.L1195:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1195
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1196
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
.L1202:
	move	$3,$4
	daddiu	$8,$5,32
	.align	3
.L1201:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1201
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1202
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
.L1208:
	daddiu	$7,$4,16
	move	$2,$5
	.align	3
.L1207:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1207
	sb	$3,-1($4)

	bne	$4,$8,.L1208
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
.L1214:
	move	$3,$4
	daddiu	$7,$4,32
	.align	3
.L1213:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1213
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1214
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
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC4:
	.ascii	"pixelavg_pp_8x8 test fail\000"
	.align	3
.LC5:
	.ascii	"pixelavg_pp_8x8 test success\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li
	.type	_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li, @function
_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddu	$10,$6,$7
	vbld	$w7,0($6)
	vbld	$w10,0($8)
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li)))
	daddu	$3,$8,$9
	daddu	$28,$28,$25
	daddu	$25,$4,$5
	sd	$31,8($sp)
	vbld	$w2,0($3)
	daddu	$2,$10,$7
	daddu	$3,$3,$9
	vbld	$w3,0($10)
	daddu	$13,$25,$5
	dlsa	$12,$7,$2,1
	vbld	$w6,0($2)
	vbld	$w9,0($3)
	dlsa	$11,$9,$3,1
	dlsa	$24,$5,$13,1
	vbld	$w0,0($12)
	insve.d	$w7[1],$w0[0]
	vbld	$w12,0($11)
	daddu	$10,$12,$7
	daddu	$11,$11,$9
	daddu	$14,$24,$5
	vbld	$w1,0($10)
	vbld	$w5,0($11)
	daddu	$12,$11,$9
	daddu	$10,$10,$7
	daddu	$11,$14,$5
	vbld	$w11,0($12)
	insve.d	$w3[1],$w1[0]
	daddu	$2,$2,$7
	vbld	$w0,0($10)
	daddu	$3,$3,$9
	insve.d	$w6[1],$w0[0]
	vbld	$w1,0($2)
	daddu	$10,$10,$7
	daddu	$12,$12,$9
	vbld	$w0,0($3)
	daddu	$31,$13,$5
	daddu	$2,$11,$5
	vbld	$w4,0($10)
	vbld	$w8,0($12)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li)))
	li	$15,8			# 0x8
	insve.d	$w1[1],$w4[0]
	insve.d	$w2[1],$w5[0]
	move.v	$w4,$w10
	aver_u.b	$w2,$w3,$w2
	insve.d	$w4[1],$w12[0]
	move.v	$w3,$w9
	aver_u.b	$w4,$w7,$w4
	insve.d	$w3[1],$w11[0]
	vsd	$w4,0,0($4)
	aver_u.b	$w3,$w6,$w3
	vsd	$w2,0,0($25)
	insve.d	$w0[1],$w8[0]
	vsd	$w3,0,0($13)
	aver_u.b	$w0,$w1,$w0
	vsd	$w0,0,0($31)
	vsd	$w4,1,0($24)
	vsd	$w2,1,0($14)
	vsd	$w3,1,0($11)
	vsd	$w0,1,0($2)
.L1742:
	move	$3,$4
	move	$11,$6
	move	$10,$8
	daddiu	$14,$4,8
.L1741:
	lbu	$2,0($11)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	lbu	$13,0($10)
	lbu	$12,-1($3)
	addu	$2,$2,$13
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$12,$2,.L1746
	daddiu	$10,$10,1

	bne	$14,$3,.L1741
	nop

	addiu	$15,$15,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$15,$0,.L1742
	daddu	$4,$4,$5

	ld	$4,%got_page(.LC5)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC5)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1746:
	ld	$4,%got_page(.LC4)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC4)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li
	.size	_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li, .-_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li
	.section	.rodata.str1.8
	.align	3
.LC6:
	.ascii	"frame_init_lowres_core test fail\000"
	.align	3
.LC7:
	.ascii	"fail at dst0\012right value %d\012wrong value %d\012\000"
	.align	3
.LC8:
	.ascii	"width is %d\012height is %d\012\000"
	.align	3
.LC9:
	.ascii	"fail at dsth\012right value %d\012wrong value %d\012\000"
	.align	3
.LC10:
	.ascii	"fail at dstv\012right value %d\012wrong value %d\012\000"
	.align	3
.LC11:
	.ascii	"fail at dstc\012right value %d\012wrong value %d\012\000"
	.align	3
.LC12:
	.ascii	"frame_init_lowres_core test success\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii
	.type	_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii, @function
_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii:
	.frame	$sp,144,$31		# vars= 48, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-144
	li	$2,-16			# 0xfffffffffffffff0
	sd	$19,80($sp)
	lw	$19,144($sp)
	sd	$31,136($sp)
	sll	$31,$10,0
	sd	$23,112($sp)
	addiu	$23,$11,15
	addiu	$3,$19,-1
	and	$2,$23,$2
	sd	$28,120($sp)
	mul	$12,$3,$31
	gsdmultu	$3,$3,$9
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii)))
	sd	$18,72($sp)
	daddu	$28,$28,$25
	subu	$31,$31,$2
	sd	$17,64($sp)
	sd	$16,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii)))
	sd	$fp,128($sp)
	sd	$22,104($sp)
	sd	$21,96($sp)
	sd	$20,88($sp)
	sd	$10,32($sp)
	sd	$5,0($sp)
	sd	$6,8($sp)
	sd	$7,24($sp)
	addu	$25,$12,$2
	dsubu	$12,$9,$2
	daddu	$2,$3,$2
	daddu	$17,$5,$25
	daddu	$16,$6,$25
	daddu	$18,$7,$25
	dlsa	$2,$2,$4,1
	blez	$19,.L1748
	daddu	$25,$8,$25

	dsra	$23,$23,4
	sll	$12,$12,0
	addiu	$20,$23,-1
	sll	$22,$12,1
	dext	$20,$20,0,32
	dsll	$12,$9,1
	nor	$20,$0,$20
	dsubu	$22,$0,$22
	dsll	$fp,$20,5
	dsubu	$31,$0,$31
	move	$21,$0
	dsll	$20,$20,4
	.align	3
.L1751:
	daddu	$3,$2,$9
	ld.d	$w4,0($2)
	daddu	$5,$3,$9
	ld.b	$w0,0($3)
	aver_u.b	$w4,$w4,$w0
	ld.d	$w1,0($5)
	blez	$23,.L1749
	aver_u.b	$w1,$w0,$w1

	daddu	$15,$2,$fp
	move	$10,$25
	move	$7,$18
	move	$6,$16
	move	$5,$17
	.align	3
.L1750:
	daddiu	$2,$2,-32
	daddiu	$5,$5,-16
	ld.d	$w3,16($2)
	ld.d	$w7,0($2)
	daddiu	$3,$2,16
	daddiu	$6,$6,-16
	daddu	$14,$3,$9
	daddiu	$7,$7,-16
	daddiu	$10,$10,-16
	daddu	$3,$12,$3
	ld.b	$w2,0($14)
	aver_u.b	$w3,$w3,$w2
	daddu	$24,$2,$9
	daddu	$13,$12,$2
	ld.d	$w0,0($3)
	aver_u.b	$w0,$w2,$w0
	ld.b	$w5,0($24)
	ld.d	$w6,0($13)
	aver_u.b	$w7,$w7,$w5
	vextr.v	$w2,$w4,$w3,1
	aver_u.b	$w5,$w5,$w6
	aver_u.b	$w2,$w2,$w3
	vextr.v	$w1,$w1,$w0,1
	vextr.v	$w3,$w3,$w7,1
	aver_u.b	$w1,$w1,$w0
	aver_u.b	$w3,$w3,$w7
	vextr.v	$w0,$w0,$w5,1
	pckev.b	$w4,$w2,$w3
	aver_u.b	$w0,$w0,$w5
	st.d	$w4,0($5)
	pckod.b	$w3,$w2,$w3
	move.v	$w4,$w7
	pckev.b	$w2,$w1,$w0
	st.d	$w3,0($6)
	pckod.b	$w0,$w1,$w0
	st.d	$w2,0($7)
	move.v	$w1,$w5
	bne	$2,$15,.L1750
	st.d	$w0,0($10)

	daddu	$17,$17,$20
	daddu	$16,$16,$20
	daddu	$18,$18,$20
	daddu	$25,$25,$20
.L1749:
	addiu	$21,$21,1
	daddu	$2,$2,$22
	daddu	$17,$17,$31
	daddu	$16,$16,$31
	daddu	$18,$18,$31
	bne	$19,$21,.L1751
	daddu	$25,$25,$31

	ld	$31,24($sp)
	daddiu	$25,$4,1
	sd	$0,16($sp)
.L1759:
	blez	$11,.L1752
	daddu	$16,$9,$25

	ld	$19,0($sp)
	move	$15,$8
	ld	$20,8($sp)
	daddu	$18,$9,$16
	move	$14,$31
	move	$17,$25
	b	.L1758
	move	$22,$0

	.align	3
.L1753:
	lbu	$3,1($16)
	lbu	$2,1($17)
	lbu	$13,0($20)
	addu	$2,$2,$3
	addiu	$2,$2,1
	sra	$2,$2,1
	addu	$2,$2,$24
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$2,.L1766
	daddiu	$19,$19,1

	lbu	$13,0($18)
	daddiu	$14,$14,1
	lbu	$2,-1($18)
	lbu	$10,-1($14)
	addu	$5,$13,$5
	addu	$2,$2,$4
	addiu	$5,$5,1
	addiu	$2,$2,1
	dsrl	$5,$5,1
	sra	$2,$2,1
	addu	$2,$2,$5
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$10,$2,.L1767
	daddiu	$17,$17,2

	lbu	$4,1($18)
	daddiu	$15,$15,1
	lbu	$2,-1($15)
	addu	$3,$4,$3
	addiu	$3,$3,1
	sra	$3,$3,1
	addu	$5,$3,$5
	addiu	$5,$5,1
	sra	$5,$5,1
	bne	$2,$5,.L1768
	ld	$4,%got_page(.LC6)($28)

	addiu	$22,$22,1
	daddiu	$16,$16,2
	daddiu	$20,$20,1
	beq	$11,$22,.L1752
	daddiu	$18,$18,2

.L1758:
	lbu	$4,-1($16)
	daddiu	$3,$17,-1
	daddiu	$fp,$16,-1
	lbu	$5,0($16)
	daddiu	$10,$17,1
	daddiu	$23,$16,1
	lbu	$24,0($17)
	daddiu	$7,$18,-1
	lbu	$2,-1($17)
	lbu	$13,0($19)
	addu	$24,$24,$5
	addu	$2,$2,$4
	addiu	$24,$24,1
	addiu	$2,$2,1
	dsrl	$24,$24,1
	sra	$2,$2,1
	addu	$2,$2,$24
	addiu	$2,$2,1
	sra	$2,$2,1
	beq	$13,$2,.L1753
	daddiu	$6,$18,1

	ld	$4,%got_page(.LC6)($28)
	ld	$25,%call16(puts)($28)
	sd	$3,0($sp)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC6)

	ld	$3,0($sp)
	lbu	$4,0($fp)
	lbu	$2,0($17)
	lbu	$5,0($3)
	lbu	$3,0($16)
	lbu	$6,0($19)
	addu	$5,$5,$4
	ld	$4,%got_page(.LC7)($28)
	addu	$2,$2,$3
	ld	$25,%call16(printf)($28)
	addiu	$5,$5,1
	addiu	$2,$2,1
	sra	$5,$5,1
	sra	$2,$2,1
	daddiu	$4,$4,%got_ofst(.LC7)
.L1765:
	addu	$5,$5,$2
	addiu	$5,$5,1
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	dsrl	$5,$5,1

	ld	$4,%got_page(.LC8)($28)
	move	$5,$22
	ld	$25,%call16(printf)($28)
	ld	$6,16($sp)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC8)

	ld	$31,136($sp)
	ld	$fp,128($sp)
	ld	$28,120($sp)
	ld	$23,112($sp)
	ld	$22,104($sp)
	ld	$21,96($sp)
	ld	$20,88($sp)
	ld	$19,80($sp)
	ld	$18,72($sp)
	ld	$17,64($sp)
	ld	$16,56($sp)
	jr	$31
	daddiu	$sp,$sp,144

.L1752:
	ld	$2,16($sp)
	daddu	$25,$25,$12
	ld	$4,0($sp)
	addiu	$3,$2,1
	ld	$2,32($sp)
	sd	$3,16($sp)
	daddu	$4,$4,$2
	daddu	$31,$31,$2
	sd	$4,0($sp)
	daddu	$8,$8,$2
	ld	$4,8($sp)
	daddu	$4,$4,$2
	bne	$21,$3,.L1759
	sd	$4,8($sp)

.L1748:
	ld	$4,%got_page(.LC12)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC12)

	ld	$31,136($sp)
	ld	$fp,128($sp)
	ld	$28,120($sp)
	ld	$23,112($sp)
	ld	$22,104($sp)
	ld	$21,96($sp)
	ld	$20,88($sp)
	ld	$19,80($sp)
	ld	$18,72($sp)
	ld	$17,64($sp)
	ld	$16,56($sp)
	jr	$31
	daddiu	$sp,$sp,144

.L1766:
	ld	$4,%got_page(.LC6)($28)
	ld	$25,%call16(puts)($28)
	sd	$10,0($sp)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC6)

	ld	$10,0($sp)
	lbu	$4,0($16)
	lbu	$5,0($17)
	lbu	$2,0($10)
	lbu	$3,0($23)
	addu	$5,$5,$4
	ld	$4,%got_page(.LC9)($28)
	addiu	$5,$5,1
	lbu	$6,0($20)
	addu	$2,$2,$3
	sra	$5,$5,1
	ld	$25,%call16(printf)($28)
	addiu	$2,$2,1
	daddiu	$4,$4,%got_ofst(.LC9)
	b	.L1765
	sra	$2,$2,1

.L1767:
	ld	$4,%got_page(.LC6)($28)
	ld	$25,%call16(puts)($28)
	sd	$7,0($sp)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC6)

	ld	$7,0($sp)
	lbu	$5,0($fp)
	lbu	$2,0($16)
	lbu	$4,0($7)
	lbu	$3,0($18)
	lbu	$6,0($20)
	addu	$5,$5,$4
	ld	$4,%got_page(.LC10)($28)
	addu	$2,$2,$3
	addiu	$5,$5,1
	ld	$25,%call16(printf)($28)
	addiu	$2,$2,1
	sra	$5,$5,1
	sra	$2,$2,1
	b	.L1765
	daddiu	$4,$4,%got_ofst(.LC10)

.L1768:
	ld	$25,%call16(puts)($28)
	sd	$6,0($sp)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC6)

	ld	$6,0($sp)
	lbu	$4,0($18)
	lbu	$5,0($16)
	lbu	$3,0($6)
	lbu	$2,0($23)
	addu	$5,$5,$4
	ld	$4,%got_page(.LC11)($28)
	addiu	$5,$5,1
	lbu	$6,0($20)
	addu	$2,$2,$3
	sra	$5,$5,1
	ld	$25,%call16(printf)($28)
	addiu	$2,$2,1
	daddiu	$4,$4,%got_ofst(.LC11)
	b	.L1765
	sra	$2,$2,1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii
	.size	_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii, .-_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii
	.section	.rodata.str1.8
	.align	3
.LC13:
	.ascii	"weight_pp test fail\000"
	.align	3
.LC14:
	.ascii	"fail at %d %d\012\000"
	.align	3
.LC15:
	.ascii	"source is %d w0 is %d round is %d shift is %d offset is "
	.ascii	"%d\012\000"
	.align	3
.LC16:
	.ascii	"right value %d\012\000"
	.align	3
.LC17:
	.ascii	"wrong value %d\012\000"
	.align	3
.LC18:
	.ascii	"weight_pp test success\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii
	.type	_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii, @function
_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sll	$2,$9,6
	fill.w	$w6,$11
	shf.w	$w6,$w6,0
	sd	$19,32($sp)
	sll	$3,$10,16
	lw	$19,96($sp)
	or	$2,$2,$3
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii)))
	fill.w	$w4,$2
	shf.w	$w4,$w4,0
	daddu	$28,$28,$25
	sd	$31,88($sp)
	fill.w	$w5,$19
	sd	$fp,80($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii)))
	shf.w	$w5,$w5,0
	sd	$23,64($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	blez	$8,.L1770
	sd	$16,8($sp)

	dsra	$14,$7,4
	move	$17,$9
	ldi.h	$w7,1
	addiu	$13,$14,-1
	move	$18,$10
	dext	$13,$13,0,32
	move	$20,$11
	dsll	$13,$13,4
	move	$11,$5
	move	$10,$4
	move	$9,$0
	daddiu	$13,$13,16
	.align	3
.L1773:
	blez	$14,.L1771
	nop

	move	$2,$10
	move	$3,$11
	daddu	$12,$13,$10
	.align	3
.L1772:
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
	bne	$2,$12,.L1772
	st.d	$w0,-16($3)

.L1771:
	addiu	$9,$9,1
	daddu	$10,$10,$6
	bne	$8,$9,.L1773
	daddu	$11,$11,$6

	move	$22,$0
	li	$10,255			# 0xff
.L1780:
	blez	$7,.L1774
	nop

	lbu	$2,0($4)
	lbu	$3,0($5)
	sll	$2,$2,6
	mul	$8,$2,$17
	addu	$2,$8,$18
	sra	$2,$2,$20
	addu	$2,$2,$19
	slt	$8,$2,256
	movz	$2,$10,$8
	slt	$8,$2,0
	movn	$2,$0,$8
	move	$16,$2
	andi	$2,$2,0x00ff
	bne	$3,$2,.L1788
	daddiu	$3,$4,1

	daddiu	$8,$5,1
	b	.L1777
	move	$fp,$0

	.align	3
.L1779:
	lbu	$2,0($3)
	move	$23,$3
	daddiu	$8,$8,1
	lbu	$11,0($21)
	sll	$2,$2,6
	mul	$12,$2,$17
	addu	$2,$12,$18
	sra	$2,$2,$20
	addu	$2,$2,$19
	slt	$12,$2,256
	movz	$2,$10,$12
	slt	$12,$2,0
	movn	$2,$0,$12
	move	$16,$2
	andi	$2,$2,0x00ff
	bne	$11,$2,.L1775
	daddiu	$3,$3,1

.L1777:
	addiu	$fp,$fp,1
	bne	$7,$fp,.L1779
	move	$21,$8

.L1774:
	addiu	$22,$22,1
	daddu	$4,$4,$6
	bne	$9,$22,.L1780
	daddu	$5,$5,$6

.L1770:
	ld	$4,%got_page(.LC18)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC18)

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

.L1788:
	move	$21,$5
	move	$23,$4
	move	$fp,$0
.L1775:
	ld	$4,%got_page(.LC13)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC13)

	ld	$4,%got_page(.LC14)($28)
	move	$6,$fp
	ld	$25,%call16(printf)($28)
	move	$5,$22
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC14)

	ld	$4,%got_page(.LC15)($28)
	move	$9,$19
	ld	$25,%call16(printf)($28)
	move	$8,$20
	move	$7,$18
	lbu	$5,0($23)
	move	$6,$17
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC15)

	ld	$4,%got_page(.LC16)($28)
	move	$5,$16
	ld	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC16)

	ld	$4,%got_page(.LC17)($28)
	lbu	$5,0($21)
	ld	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC17)

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
	.end	_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii
	.size	_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii, .-_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii
	.section	.rodata.str1.8
	.align	3
.LC19:
	.ascii	"getResidual_4x4 test fail\000"
	.align	3
.LC20:
	.ascii	"getResidual_4x4 test success\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl
	.type	_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl, @function
_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	dsll	$14,$7,1
	vblw	$w2,0($5)
	sd	$28,0($sp)
	daddu	$8,$5,$7
	daddu	$2,$4,$7
	daddu	$10,$6,$14
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl)))
	sd	$31,8($sp)
	vblw	$w0,0($2)
	daddu	$3,$8,$7
	daddu	$2,$2,$7
	vblw	$w4,0($8)
	vblw	$w3,0($4)
	daddu	$9,$10,$14
	daddu	$28,$28,$25
	vblw	$w1,0($2)
	insve.w	$w3[1],$w0[0]
	daddu	$8,$2,$7
	vblw	$w0,0($3)
	daddu	$2,$9,$14
	insve.w	$w2[1],$w4[0]
	daddu	$3,$3,$7
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl)))
	vblw	$w5,0($8)
	vextb_u.h	$w3,$w3
	li	$13,4			# 0x4
	vblw	$w4,0($3)
	insve.w	$w1[1],$w5[0]
	vextb_u.h	$w2,$w2
	vextb_u.h	$w1,$w1
	subv.h	$w2,$w3,$w2
	insve.w	$w0[1],$w4[0]
	vsd	$w2,0,0($6)
	vextb_u.h	$w0,$w0
	vsd	$w2,1,0($10)
	subv.h	$w0,$w1,$w0
	vsd	$w0,0,0($9)
	vsd	$w0,1,0($2)
.L1793:
	move	$2,$6
	move	$9,$4
	move	$8,$5
	daddiu	$12,$6,8
.L1792:
	lbu	$3,0($9)
	daddiu	$2,$2,2
	daddiu	$9,$9,1
	lbu	$11,0($8)
	lh	$10,-2($2)
	subu	$3,$3,$11
	bne	$10,$3,.L1797
	daddiu	$8,$8,1

	bne	$12,$2,.L1792
	nop

	addiu	$13,$13,-1
	daddu	$4,$4,$7
	daddu	$6,$6,$14
	bne	$13,$0,.L1793
	daddu	$5,$5,$7

	ld	$4,%got_page(.LC20)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC20)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1797:
	ld	$4,%got_page(.LC19)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC19)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl
	.size	_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl, .-_ZN12_GLOBAL__N_115getResidual_4x4EPKhS1_Psl
	.section	.rodata.str1.8
	.align	3
.LC21:
	.ascii	"sub_ps_4x4 test fail\000"
	.align	3
.LC22:
	.ascii	"sub_ps_4x4 test success\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll
	.type	_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll, @function
_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	dsll	$5,$5,1
	vblw	$w3,0($6)
	vblw	$w2,0($7)
	sd	$28,0($sp)
	daddu	$10,$6,$8
	daddu	$2,$7,$9
	daddu	$12,$4,$5
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll)))
	sd	$31,8($sp)
	vblw	$w6,0($2)
	daddu	$3,$10,$8
	daddu	$2,$2,$9
	vblw	$w0,0($10)
	insve.w	$w3[1],$w0[0]
	daddu	$11,$12,$5
	daddu	$28,$28,$25
	vblw	$w1,0($3)
	vblw	$w0,0($2)
	daddu	$10,$2,$9
	daddu	$3,$3,$8
	vextb_u.h	$w3,$w3
	insve.w	$w2[1],$w6[0]
	daddu	$2,$11,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll)))
	vblw	$w4,0($3)
	vblw	$w5,0($10)
	li	$15,4			# 0x4
	insve.w	$w1[1],$w4[0]
	vextb_u.h	$w2,$w2
	vextb_u.h	$w1,$w1
	subv.h	$w2,$w3,$w2
	insve.w	$w0[1],$w5[0]
	vsd	$w2,0,0($4)
	vextb_u.h	$w0,$w0
	vsd	$w2,1,0($12)
	subv.h	$w0,$w1,$w0
	vsd	$w0,0,0($11)
	vsd	$w0,1,0($2)
.L1802:
	move	$2,$4
	move	$11,$6
	move	$10,$7
	daddiu	$14,$4,8
.L1801:
	lbu	$3,0($11)
	daddiu	$2,$2,2
	daddiu	$11,$11,1
	lbu	$13,0($10)
	lh	$12,-2($2)
	subu	$3,$3,$13
	bne	$12,$3,.L1806
	daddiu	$10,$10,1

	bne	$14,$2,.L1801
	nop

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1802
	daddu	$4,$4,$5

	ld	$4,%got_page(.LC22)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC22)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1806:
	ld	$4,%got_page(.LC21)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC21)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll
	.size	_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll, .-_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll
	.section	.rodata.str1.8
	.align	3
.LC23:
	.ascii	"getResidual_8x8 test fail\000"
	.align	3
.LC24:
	.ascii	"getResidual_8x8 test success\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl
	.type	_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl, @function
_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$12,$7,1
	dsll	$8,$7,2
	vbld	$w0,0($5)
	vextb_u.h	$w0,$w0
	daddu	$15,$6,$12
	daddiu	$sp,$sp,-16
	daddu	$11,$15,$12
	daddu	$2,$4,$8
	sd	$28,0($sp)
	sd	$31,8($sp)
	daddu	$3,$5,$8
	vbld	$w6,0($2)
	daddu	$10,$11,$8
	daddu	$2,$2,$7
	daddu	$8,$4,$7
	vbld	$w12,0($3)
	vbld	$w9,0($4)
	vbld	$w8,0($8)
	vbld	$w5,0($2)
	daddu	$9,$5,$7
	daddu	$3,$3,$7
	daddu	$24,$10,$12
	daddu	$8,$8,$7
	vbld	$w14,0($9)
	vbld	$w11,0($3)
	daddu	$2,$2,$7
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl)))
	vbld	$w7,0($8)
	vextb_u.h	$w9,$w9
	vbld	$w4,0($2)
	daddu	$9,$9,$7
	daddu	$3,$3,$7
	subv.h	$w9,$w9,$w0
	daddu	$13,$24,$12
	daddu	$8,$8,$7
	vbld	$w13,0($9)
	vbld	$w10,0($3)
	daddu	$2,$2,$7
	daddu	$28,$28,$25
	vbld	$w2,0($8)
	vextb_u.h	$w6,$w6
	vbld	$w0,0($2)
	daddu	$9,$9,$7
	daddu	$3,$3,$7
	vextb_u.h	$w8,$w8
	daddu	$8,$11,$12
	daddu	$2,$13,$12
	vbld	$w3,0($9)
	vbld	$w1,0($3)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl)))
	li	$14,8			# 0x8
	st.d	$w9,0($6)
	vextb_u.h	$w3,$w3
	vextb_u.h	$w7,$w7
	vextb_u.h	$w2,$w2
	vextb_u.h	$w5,$w5
	subv.h	$w2,$w2,$w3
	vextb_u.h	$w4,$w4
	vextb_u.h	$w0,$w0
	vextb_u.h	$w14,$w14
	vextb_u.h	$w13,$w13
	vextb_u.h	$w12,$w12
	vextb_u.h	$w11,$w11
	vextb_u.h	$w9,$w10
	vextb_u.h	$w1,$w1
	subv.h	$w8,$w8,$w14
	subv.h	$w7,$w7,$w13
	st.d	$w8,0($15)
	subv.h	$w6,$w6,$w12
	st.d	$w7,0($11)
	subv.h	$w3,$w5,$w11
	st.d	$w2,0($8)
	subv.h	$w0,$w0,$w1
	st.d	$w6,0($10)
	subv.h	$w2,$w4,$w9
	st.d	$w3,0($24)
	st.d	$w2,0($13)
	st.d	$w0,0($2)
.L1811:
	move	$2,$6
	move	$9,$4
	move	$8,$5
	daddiu	$13,$6,16
.L1810:
	lbu	$3,0($9)
	daddiu	$2,$2,2
	daddiu	$9,$9,1
	lbu	$11,0($8)
	lh	$10,-2($2)
	subu	$3,$3,$11
	bne	$10,$3,.L1815
	daddiu	$8,$8,1

	bne	$13,$2,.L1810
	nop

	addiu	$14,$14,-1
	daddu	$4,$4,$7
	daddu	$6,$6,$12
	bne	$14,$0,.L1811
	daddu	$5,$5,$7

	ld	$4,%got_page(.LC24)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC24)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1815:
	ld	$4,%got_page(.LC23)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC23)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl
	.size	_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl, .-_ZN12_GLOBAL__N_115getResidual_8x8EPKhS1_Psl
	.section	.rodata.str1.8
	.align	3
.LC25:
	.ascii	"sub_ps_8x8 test fail\000"
	.align	3
.LC26:
	.ascii	"sub_ps_8x8 test success\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll
	.type	_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll, @function
_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$14,$5,1
	daddiu	$sp,$sp,-16
	vbld	$w11,0($6)
	vbld	$w15,0($7)
	daddu	$3,$7,$9
	daddu	$2,$6,$8
	sd	$28,0($sp)
	vextb_u.h	$w11,$w11
	daddu	$24,$4,$14
	sd	$31,8($sp)
	daddu	$12,$3,$9
	vbld	$w10,0($2)
	daddu	$13,$24,$14
	daddu	$2,$2,$8
	vbld	$w6,0($3)
	vbld	$w14,0($12)
	dlsa	$11,$9,$12,1
	dlsa	$10,$8,$2,1
	vbld	$w9,0($2)
	vextb_u.h	$w10,$w10
	dlsa	$5,$5,$13,2
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll)))
	vbld	$w8,0($10)
	vbld	$w5,0($11)
	daddu	$10,$10,$8
	daddu	$3,$11,$9
	vextb_u.h	$w9,$w9
	vextb_u.h	$w15,$w15
	daddu	$28,$28,$25
	daddu	$25,$5,$14
	vbld	$w2,0($10)
	vbld	$w13,0($3)
	daddu	$11,$10,$8
	daddu	$3,$3,$9
	vextb_u.h	$w2,$w2
	vextb_u.h	$w6,$w6
	daddu	$10,$25,$14
	daddu	$2,$2,$8
	vbld	$w7,0($11)
	vbld	$w12,0($3)
	daddu	$12,$12,$9
	vbld	$w0,0($2)
	daddu	$11,$11,$8
	vextb_u.h	$w14,$w14
	vbld	$w4,0($12)
	daddu	$3,$3,$9
	daddu	$12,$13,$14
	vbld	$w3,0($11)
	daddu	$2,$10,$14
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll)))
	vbld	$w1,0($3)
	vextb_u.h	$w0,$w0
	li	$15,8			# 0x8
	vextb_u.h	$w4,$w4
	vextb_u.h	$w8,$w8
	subv.h	$w0,$w0,$w4
	vextb_u.h	$w7,$w7
	vextb_u.h	$w3,$w3
	vextb_u.h	$w5,$w5
	vextb_u.h	$w13,$w13
	vextb_u.h	$w12,$w12
	vextb_u.h	$w1,$w1
	subv.h	$w11,$w11,$w15
	subv.h	$w6,$w10,$w6
	st.d	$w11,0($4)
	subv.h	$w9,$w9,$w14
	st.d	$w6,0($24)
	subv.h	$w5,$w8,$w5
	st.d	$w9,0($13)
	subv.h	$w1,$w3,$w1
	st.d	$w0,0($12)
	st.d	$w5,0($5)
	subv.h	$w0,$w2,$w13
	subv.h	$w2,$w7,$w12
	st.d	$w0,0($25)
	st.d	$w2,0($10)
	st.d	$w1,0($2)
.L1820:
	move	$2,$4
	move	$10,$6
	move	$5,$7
	daddiu	$13,$4,16
.L1819:
	lbu	$3,0($10)
	daddiu	$2,$2,2
	daddiu	$10,$10,1
	lbu	$12,0($5)
	lh	$11,-2($2)
	subu	$3,$3,$12
	bne	$11,$3,.L1824
	daddiu	$5,$5,1

	bne	$13,$2,.L1819
	nop

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1820
	daddu	$4,$4,$14

	ld	$4,%got_page(.LC26)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC26)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1824:
	ld	$4,%got_page(.LC25)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC25)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll
	.size	_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll, .-_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll
	.section	.rodata.str1.8
	.align	3
.LC27:
	.ascii	"getResidual_16x16 test fail\000"
	.align	3
.LC28:
	.ascii	"getResidual_16x16 test success\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl
	.type	_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl, @function
_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl:
	.frame	$sp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	dsll	$24,$7,1
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl)))
	move	$8,$6
	daddu	$28,$28,$25
	dsll	$25,$7,2
	sd	$16,8($sp)
	daddu	$15,$24,$25
	daddiu	$16,$7,8
	sd	$31,72($sp)
	sd	$22,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl)))
	daddu	$15,$6,$15
	sd	$21,48($sp)
	move	$3,$5
	move	$2,$4
	sd	$20,40($sp)
	li	$31,4			# 0x4
	dsll	$20,$7,3
	sd	$19,32($sp)
	daddiu	$22,$24,16
	daddiu	$19,$24,8
	sd	$18,24($sp)
	daddiu	$21,$25,16
	daddu	$18,$7,$24
	sd	$17,16($sp)
	daddu	$17,$24,$16
.L1826:
	daddu	$14,$7,$2
	daddu	$13,$2,$16
	vbld	$w13,0($2)
	vbld	$w12,8($2)
	daddu	$12,$24,$2
	daddu	$11,$2,$19
	vbld	$w5,0($14)
	vbld	$w4,0($13)
	vbld	$w3,0($12)
	vbld	$w2,0($11)
	daddu	$10,$2,$18
	daddu	$9,$17,$2
	daddu	$14,$7,$3
	daddu	$13,$3,$16
	vbld	$w1,0($10)
	vbld	$w0,0($9)
	daddu	$12,$24,$3
	daddu	$11,$3,$19
	vbld	$w11,0($14)
	vbld	$w10,0($13)
	vbld	$w9,0($12)
	vbld	$w8,0($11)
	daddu	$10,$3,$18
	daddu	$9,$17,$3
	daddu	$14,$24,$8
	daddu	$13,$8,$22
	vbld	$w15,0($3)
	vbld	$w14,8($3)
	daddu	$12,$25,$8
	daddu	$11,$8,$21
	vbld	$w7,0($10)
	vbld	$w6,0($9)
	addiu	$31,$31,-1
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
	st.d	$w13,0($8)
	st.d	$w12,16($8)
	subv.h	$w5,$w5,$w11
	subv.h	$w4,$w4,$w10
	st.d	$w5,0($14)
	subv.h	$w3,$w3,$w9
	st.d	$w4,0($13)
	subv.h	$w2,$w2,$w8
	st.d	$w3,0($12)
	subv.h	$w1,$w1,$w7
	st.d	$w2,0($11)
	subv.h	$w0,$w0,$w6
	st.d	$w1,0($15)
	st.d	$w0,16($15)
	daddu	$2,$25,$2
	daddu	$15,$15,$20
	daddu	$3,$25,$3
	bne	$31,$0,.L1826
	daddu	$8,$20,$8

	li	$13,16			# 0x10
.L1830:
	move	$2,$6
	move	$9,$4
	move	$8,$5
	b	.L1829
	daddiu	$12,$6,32

	.align	3
.L1827:
	beq	$12,$2,.L1835
	nop

.L1829:
	lbu	$3,0($9)
	daddiu	$2,$2,2
	daddiu	$9,$9,1
	lbu	$11,0($8)
	lh	$10,-2($2)
	subu	$3,$3,$11
	beq	$10,$3,.L1827
	daddiu	$8,$8,1

	ld	$4,%got_page(.LC27)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC27)

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

	.align	3
.L1835:
	addiu	$13,$13,-1
	daddu	$4,$4,$7
	daddu	$6,$6,$24
	bne	$13,$0,.L1830
	daddu	$5,$5,$7

	ld	$4,%got_page(.LC28)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC28)

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
	.end	_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl
	.size	_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl, .-_ZN12_GLOBAL__N_117getResidual_16x16EPKhS1_Psl
	.section	.rodata.str1.8
	.align	3
.LC29:
	.ascii	"sub_ps_16x16 test fail\000"
	.align	3
.LC30:
	.ascii	"sub_ps_16x16 test success\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll
	.type	_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll, @function
_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll:
	.frame	$sp,112,$31		# vars= 16, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	move	$3,$7
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll)))
	move	$2,$6
	sd	$21,64($sp)
	dsll	$21,$5,2
	daddu	$28,$28,$25
	sd	$20,56($sp)
	dsll	$20,$5,1
	daddiu	$10,$21,16
	sd	$16,24($sp)
	dsll	$16,$8,1
	daddu	$24,$20,$21
	sd	$31,104($sp)
	daddu	$31,$16,$8
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll)))
	sd	$fp,96($sp)
	dsll	$5,$5,3
	daddu	$24,$4,$24
	sd	$23,80($sp)
	dsll	$fp,$8,2
	daddu	$23,$9,$31
	sd	$22,72($sp)
	li	$25,4			# 0x4
	daddiu	$22,$20,16
	sd	$19,48($sp)
	daddiu	$19,$8,8
	sd	$18,40($sp)
	daddiu	$18,$16,8
	sd	$17,32($sp)
	daddiu	$17,$31,8
	sd	$9,8($sp)
	move	$9,$4
	sd	$10,0($sp)
.L1837:
	daddu	$12,$2,$18
	daddu	$15,$2,$8
	vbld	$w13,0($2)
	vbld	$w12,8($2)
	vbld	$w2,0($12)
	daddu	$12,$3,$18
	daddu	$14,$2,$19
	vbld	$w5,0($15)
	vbld	$w8,0($12)
	ld	$12,0($sp)
	daddu	$13,$16,$2
	vbld	$w4,0($14)
	vbld	$w3,0($13)
	daddu	$11,$2,$31
	daddu	$10,$2,$17
	vbld	$w15,0($3)
	daddu	$15,$3,$8
	daddu	$14,$3,$19
	vbld	$w1,0($11)
	vbld	$w0,0($10)
	daddu	$13,$16,$3
	vbld	$w11,0($15)
	vbld	$w10,0($14)
	daddu	$11,$31,$3
	vbld	$w9,0($13)
	daddu	$10,$3,$17
	daddu	$15,$20,$9
	vbld	$w14,8($3)
	daddu	$14,$9,$22
	daddu	$13,$21,$9
	vbld	$w7,0($11)
	vbld	$w6,0($10)
	daddu	$12,$9,$12
	addiu	$25,$25,-1
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
	st.d	$w13,0($9)
	st.d	$w12,16($9)
	subv.h	$w5,$w5,$w11
	subv.h	$w4,$w4,$w10
	st.d	$w5,0($15)
	subv.h	$w3,$w3,$w9
	st.d	$w4,0($14)
	subv.h	$w2,$w2,$w8
	st.d	$w3,0($13)
	subv.h	$w1,$w1,$w7
	st.d	$w2,0($12)
	subv.h	$w0,$w0,$w6
	st.d	$w1,0($24)
	st.d	$w0,16($24)
	daddu	$9,$5,$9
	daddu	$24,$24,$5
	daddu	$2,$2,$fp
	bne	$25,$0,.L1837
	daddu	$3,$3,$23

	li	$13,16			# 0x10
.L1841:
	move	$2,$4
	move	$9,$6
	move	$5,$7
	b	.L1840
	daddiu	$12,$4,32

	.align	3
.L1838:
	beq	$12,$2,.L1846
	nop

.L1840:
	lbu	$3,0($9)
	daddiu	$2,$2,2
	daddiu	$9,$9,1
	lbu	$11,0($5)
	lh	$10,-2($2)
	subu	$3,$3,$11
	beq	$10,$3,.L1838
	daddiu	$5,$5,1

	ld	$4,%got_page(.LC29)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC29)

	ld	$31,104($sp)
	ld	$fp,96($sp)
	ld	$28,88($sp)
	ld	$23,80($sp)
	ld	$22,72($sp)
	ld	$21,64($sp)
	ld	$20,56($sp)
	ld	$19,48($sp)
	ld	$18,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.align	3
.L1846:
	ld	$2,8($sp)
	addiu	$13,$13,-1
	daddu	$6,$6,$8
	daddu	$4,$4,$20
	bne	$13,$0,.L1841
	daddu	$7,$7,$2

	ld	$4,%got_page(.LC30)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC30)

	ld	$31,104($sp)
	ld	$fp,96($sp)
	ld	$28,88($sp)
	ld	$23,80($sp)
	ld	$22,72($sp)
	ld	$21,64($sp)
	ld	$20,56($sp)
	ld	$19,48($sp)
	ld	$18,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll
	.size	_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll, .-_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll
	.section	.rodata.str1.8
	.align	3
.LC31:
	.ascii	"getResidual_32x32 test fail\000"
	.align	3
.LC32:
	.ascii	"getResidual_32x32 test success\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl
	.type	_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl, @function
_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	move	$12,$6
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl)))
	move	$3,$5
	sd	$16,8($sp)
	daddu	$28,$28,$25
	dsll	$16,$7,1
	sd	$31,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl)))
	daddu	$13,$6,$16
	sd	$20,40($sp)
	move	$2,$4
	dsll	$20,$7,2
	sd	$19,32($sp)
	li	$31,16			# 0x10
	daddiu	$19,$7,8
	sd	$18,24($sp)
	daddiu	$18,$7,16
	sd	$17,16($sp)
	daddiu	$17,$7,24
	.align	3
.L1848:
	daddu	$11,$7,$2
	daddu	$10,$2,$19
	vbld	$w11,0($2)
	vbld	$w10,8($2)
	daddu	$9,$2,$18
	daddu	$8,$2,$17
	vbld	$w9,16($2)
	vbld	$w8,24($2)
	daddu	$25,$7,$3
	daddu	$24,$3,$19
	vbld	$w15,0($3)
	vbld	$w14,8($3)
	daddu	$15,$3,$18
	daddu	$14,$3,$17
	vbld	$w13,16($3)
	vbld	$w12,24($3)
	addiu	$31,$31,-1
	vbld	$w3,0($11)
	vbld	$w2,0($10)
	vbld	$w1,0($9)
	vbld	$w0,0($8)
	vbld	$w7,0($25)
	vbld	$w6,0($24)
	vbld	$w5,0($15)
	vbld	$w4,0($14)
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
	st.d	$w11,0($12)
	st.d	$w10,16($12)
	subv.h	$w9,$w9,$w13
	subv.h	$w8,$w8,$w12
	st.d	$w9,32($12)
	st.d	$w8,48($12)
	subv.h	$w3,$w3,$w7
	subv.h	$w2,$w2,$w6
	subv.h	$w1,$w1,$w5
	subv.h	$w0,$w0,$w4
	st.d	$w3,0($13)
	st.d	$w2,16($13)
	st.d	$w1,32($13)
	st.d	$w0,48($13)
	daddu	$2,$2,$16
	daddu	$3,$3,$16
	daddu	$12,$12,$20
	bne	$31,$0,.L1848
	daddu	$13,$13,$20

	li	$13,32			# 0x20
.L1852:
	move	$2,$6
	move	$9,$4
	move	$8,$5
	b	.L1851
	daddiu	$12,$6,64

	.align	3
.L1849:
	beq	$12,$2,.L1857
	nop

.L1851:
	lbu	$3,0($9)
	daddiu	$2,$2,2
	daddiu	$9,$9,1
	lbu	$11,0($8)
	lh	$10,-2($2)
	subu	$3,$3,$11
	beq	$10,$3,.L1849
	daddiu	$8,$8,1

	ld	$4,%got_page(.LC31)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC31)

	ld	$31,56($sp)
.L1858:
	ld	$28,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L1857:
	addiu	$13,$13,-1
	daddu	$4,$4,$7
	daddu	$6,$6,$16
	bne	$13,$0,.L1852
	daddu	$5,$5,$7

	ld	$4,%got_page(.LC32)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC32)

	b	.L1858
	ld	$31,56($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl
	.size	_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl, .-_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl
	.section	.rodata.str1.8
	.align	3
.LC33:
	.ascii	"sub_ps_64x64 test fail\000"
	.align	3
.LC34:
	.ascii	"sub_ps_64x64 test success\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll
	.type	_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll, @function
_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	dsll	$5,$5,1
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll)))
	move	$10,$7
	daddu	$28,$28,$25
	move	$3,$6
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll)))
	move	$2,$4
	li	$11,64			# 0x40
	.align	3
.L1860:
	addiu	$11,$11,-1
	vbld	$w7,0($3)
	vbld	$w6,8($3)
	vbld	$w5,16($3)
	vbld	$w4,24($3)
	vbld	$w15,0($10)
	vbld	$w14,8($10)
	vbld	$w13,16($10)
	vbld	$w12,24($10)
	vbld	$w3,32($3)
	vbld	$w2,40($3)
	vbld	$w1,48($3)
	vbld	$w0,56($3)
	vbld	$w11,32($10)
	vbld	$w10,40($10)
	vbld	$w9,48($10)
	vbld	$w8,56($10)
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
	st.d	$w7,0($2)
	st.d	$w6,16($2)
	st.d	$w5,32($2)
	st.d	$w4,48($2)
	st.d	$w3,64($2)
	st.d	$w2,80($2)
	st.d	$w1,96($2)
	st.d	$w0,112($2)
	daddu	$3,$3,$8
	daddu	$10,$10,$9
	bne	$11,$0,.L1860
	daddu	$2,$2,$5

	li	$15,64			# 0x40
.L1864:
	move	$2,$4
	move	$11,$6
	move	$10,$7
	b	.L1863
	daddiu	$14,$4,128

	.align	3
.L1861:
	beq	$14,$2,.L1869
	nop

.L1863:
	lbu	$3,0($11)
	daddiu	$2,$2,2
	daddiu	$11,$11,1
	lbu	$13,0($10)
	lh	$12,-2($2)
	subu	$3,$3,$13
	beq	$12,$3,.L1861
	daddiu	$10,$10,1

	ld	$4,%got_page(.LC33)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC33)

	ld	$31,8($sp)
.L1870:
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

.L1869:
	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1864
	daddu	$4,$4,$5

	ld	$4,%got_page(.LC34)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC34)

	b	.L1870
	ld	$31,8($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll
	.size	_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll, .-_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll
	.section	.rodata.str1.8
	.align	3
.LC35:
	.ascii	"sub_ps_32x32 test fail\000"
	.align	3
.LC36:
	.ascii	"sub_ps_32x32 test success\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll
	.type	_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll, @function
_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll:
	.frame	$sp,112,$31		# vars= 16, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	dsll	$3,$5,1
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll)))
	daddu	$14,$4,$3
	daddu	$28,$28,$25
	sd	$31,104($sp)
	move	$2,$6
	sd	$fp,96($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll)))
	dsll	$fp,$8,1
	sd	$23,80($sp)
	move	$13,$4
	dsll	$23,$9,1
	sd	$22,72($sp)
	li	$31,16			# 0x10
	daddiu	$22,$8,8
	sd	$21,64($sp)
	daddiu	$21,$8,16
	sd	$20,56($sp)
	daddiu	$20,$8,24
	sd	$19,48($sp)
	daddiu	$19,$9,8
	sd	$18,40($sp)
	daddiu	$18,$9,16
	sd	$17,32($sp)
	daddiu	$17,$9,24
	sd	$16,24($sp)
	dsll	$16,$5,2
	sd	$3,8($sp)
	move	$3,$7
	sd	$6,0($sp)
	.align	3
.L1872:
	daddu	$12,$2,$8
	daddu	$11,$2,$22
	vbld	$w11,0($2)
	vbld	$w10,8($2)
	daddu	$10,$2,$21
	daddu	$6,$2,$20
	vbld	$w9,16($2)
	vbld	$w8,24($2)
	daddu	$5,$3,$9
	daddu	$25,$3,$19
	vbld	$w15,0($3)
	vbld	$w14,8($3)
	daddu	$24,$3,$18
	daddu	$15,$3,$17
	vbld	$w13,16($3)
	vbld	$w12,24($3)
	addiu	$31,$31,-1
	vbld	$w3,0($12)
	vbld	$w2,0($11)
	vbld	$w1,0($10)
	vbld	$w0,0($6)
	vbld	$w7,0($5)
	vbld	$w6,0($25)
	vbld	$w5,0($24)
	vbld	$w4,0($15)
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
	st.d	$w11,0($13)
	st.d	$w10,16($13)
	subv.h	$w9,$w9,$w13
	subv.h	$w8,$w8,$w12
	st.d	$w9,32($13)
	st.d	$w8,48($13)
	subv.h	$w3,$w3,$w7
	subv.h	$w2,$w2,$w6
	subv.h	$w1,$w1,$w5
	subv.h	$w0,$w0,$w4
	st.d	$w3,0($14)
	st.d	$w2,16($14)
	st.d	$w1,32($14)
	st.d	$w0,48($14)
	daddu	$2,$2,$fp
	daddu	$3,$3,$23
	daddu	$13,$13,$16
	bne	$31,$0,.L1872
	daddu	$14,$14,$16

	li	$13,32			# 0x20
.L1876:
	move	$2,$4
	ld	$6,0($sp)
	move	$5,$7
	b	.L1875
	daddiu	$12,$4,64

	.align	3
.L1873:
	beq	$12,$2,.L1881
	nop

.L1875:
	lbu	$3,0($6)
	daddiu	$2,$2,2
	daddiu	$6,$6,1
	lbu	$11,0($5)
	lh	$10,-2($2)
	subu	$3,$3,$11
	beq	$10,$3,.L1873
	daddiu	$5,$5,1

	ld	$4,%got_page(.LC35)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC35)

	ld	$31,104($sp)
.L1882:
	ld	$fp,96($sp)
	ld	$28,88($sp)
	ld	$23,80($sp)
	ld	$22,72($sp)
	ld	$21,64($sp)
	ld	$20,56($sp)
	ld	$19,48($sp)
	ld	$18,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.align	3
.L1881:
	ld	$2,0($sp)
	addiu	$13,$13,-1
	daddu	$7,$7,$9
	daddu	$2,$2,$8
	sd	$2,0($sp)
	ld	$2,8($sp)
	bne	$13,$0,.L1876
	daddu	$4,$4,$2

	ld	$4,%got_page(.LC36)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC36)

	b	.L1882
	ld	$31,104($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll
	.size	_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll, .-_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll
	.section	.rodata.str1.8
	.align	3
.LC37:
	.ascii	"sa8d_8x8_internal test success\000"
	.align	3
.LC38:
	.ascii	"sa8d_8x8_internal test fail\000"
	.align	3
.LC39:
	.ascii	"sa8d_16x16 test success\000"
	.align	3
.LC40:
	.ascii	"sa8d_16x16 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
	.type	_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l, @function
_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l:
	.frame	$sp,176,$31		# vars= 80, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-176
	dsll	$2,$5,3
	sd	$2,48($sp)
	dsll	$2,$7,3
	sd	$28,152($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)))
	sd	$2,56($sp)
	dsll	$2,$5,1
	daddu	$28,$28,$25
	sd	$2,16($sp)
	dsll	$2,$7,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)))
	sd	$2,8($sp)
	li	$2,2			# 0x2
	sd	$2,24($sp)
	ld	$2,%got_page(_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l)($28)
	sd	$fp,160($sp)
	move	$fp,$5
	sd	$23,144($sp)
	move	$23,$7
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l)
	sd	$19,112($sp)
	daddu	$19,$6,$7
	sd	$2,0($sp)
	ld	$2,%got_page(.LC38)($28)
	sd	$18,104($sp)
	daddu	$18,$4,$5
	sd	$17,96($sp)
	move	$17,$0
	daddiu	$2,$2,%got_ofst(.LC38)
	sd	$31,168($sp)
	sd	$2,40($sp)
	ld	$2,%got_page(.LC37)($28)
	sd	$22,136($sp)
	sd	$21,128($sp)
	daddiu	$2,$2,%got_ofst(.LC37)
	sd	$20,120($sp)
	sd	$16,88($sp)
	sd	$4,32($sp)
	sd	$6,72($sp)
	sd	$2,64($sp)
.L1887:
	daddiu	$20,$18,16
	move	$22,$19
	move	$21,$18
.L1886:
	ld	$2,16($sp)
	dsubu	$4,$21,$fp
	dsubu	$6,$22,$23
	vbld	$w12,0($21)
	ld	$25,0($sp)
	vbld	$w15,0($4)
	vbld	$w14,0($6)
	hadd_u.h	$w4,$w12,$w12
	hsub_u.h	$w16,$w15,$w15
	vbld	$w13,0($22)
	hadd_u.h	$w5,$w15,$w15
	hadd_u.h	$w0,$w14,$w14
	daddu	$3,$2,$4
	ld	$2,8($sp)
	hsub_u.h	$w15,$w12,$w12
	insve.d	$w5[1],$w16[0]
	daddu	$11,$fp,$3
	vbld	$w9,0($3)
	hadd_u.h	$w2,$w13,$w13
	hsub_u.h	$w12,$w9,$w9
	daddu	$9,$fp,$11
	vbld	$w8,0($11)
	hadd_u.h	$w11,$w9,$w9
	hadd_u.h	$w1,$w8,$w8
	daddu	$2,$2,$6
	daddu	$7,$fp,$9
	vbld	$w17,0($9)
	hsub_u.h	$w9,$w8,$w8
	daddu	$10,$23,$2
	vbld	$w6,0($2)
	daddu	$3,$fp,$7
	vbld	$w16,0($7)
	daddu	$8,$23,$10
	daddu	$13,$fp,$3
	vbld	$w3,0($10)
	hadd_u.h	$w7,$w6,$w6
	daddu	$5,$23,$8
	hadd_u.h	$w10,$w3,$w3
	hsub_u.h	$w8,$w6,$w6
	insve.d	$w11[1],$w12[0]
	daddu	$2,$23,$5
	vbld	$w12,0($8)
	hsub_u.h	$w6,$w3,$w3
	vbld	$w20,0($13)
	daddu	$12,$23,$2
	hsub_u.h	$w21,$w17,$w17
	hsub_u.h	$w18,$w16,$w16
	hsub_u.h	$w14,$w14,$w14
	vbld	$w19,0($12)
	hsub_u.h	$w13,$w13,$w13
	move.v	$w3,$w4
	insve.d	$w2[1],$w13[0]
	insve.d	$w3[1],$w15[0]
	insve.d	$w1[1],$w9[0]
	vbld	$w15,0($3)
	move.v	$w9,$w1
	subv.h	$w4,$w3,$w2
	insve.d	$w0[1],$w14[0]
	move.v	$w1,$w7
	subv.h	$w0,$w5,$w0
	insve.d	$w1[1],$w8[0]
	addv.h	$w2,$w4,$w0
	subv.h	$w3,$w11,$w1
	subv.h	$w4,$w4,$w0
	vbld	$w11,0($5)
	move.v	$w0,$w10
	hadd_u.h	$w14,$w11,$w11
	insve.d	$w0[1],$w6[0]
	hadd_u.h	$w10,$w19,$w19
	subv.h	$w1,$w9,$w0
	hadd_u.h	$w13,$w17,$w17
	addv.h	$w8,$w1,$w3
	hadd_u.h	$w9,$w16,$w16
	addv.h	$w0,$w8,$w2
	subv.h	$w1,$w1,$w3
	subv.h	$w8,$w8,$w2
	subv.h	$w6,$w1,$w4
	addv.h	$w3,$w1,$w4
	hsub_u.h	$w17,$w15,$w15
	vbld	$w1,0($2)
	hadd_u.h	$w4,$w15,$w15
	hsub_u.h	$w16,$w12,$w12
	hsub_u.h	$w15,$w11,$w11
	insve.d	$w13[1],$w21[0]
	hadd_u.h	$w7,$w20,$w20
	hadd_u.h	$w5,$w12,$w12
	hadd_u.h	$w2,$w1,$w1
	hsub_u.h	$w20,$w20,$w20
	hsub_u.h	$w1,$w1,$w1
	insve.d	$w7[1],$w20[0]
	hsub_u.h	$w19,$w19,$w19
	move.v	$w12,$w9
	move.v	$w11,$w4
	insve.d	$w12[1],$w18[0]
	insve.d	$w11[1],$w17[0]
	insve.d	$w5[1],$w16[0]
	move.v	$w4,$w14
	subv.h	$w5,$w13,$w5
	insve.d	$w4[1],$w15[0]
	insve.d	$w2[1],$w1[0]
	subv.h	$w9,$w12,$w4
	move.v	$w1,$w2
	addv.h	$w2,$w9,$w5
	subv.h	$w4,$w11,$w1
	subv.h	$w9,$w9,$w5
	move.v	$w1,$w10
	insve.d	$w1[1],$w19[0]
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
	asub_s.h	$w12,$w4,$w0
	pckev.h	$w3,$w3,$w9
	pckev.h	$w2,$w2,$w7
	asub_s.h	$w10,$w15,$w3
	asub_s.h	$w8,$w14,$w2
	pckev.h	$w1,$w1,$w5
	addv.h	$w11,$w4,$w0
	asub_s.h	$w6,$w13,$w1
	addv.h	$w3,$w15,$w3
	addv.h	$w2,$w14,$w2
	addv.h	$w1,$w13,$w1
	vabs.h	$w11,$w11
	vabs.h	$w9,$w3
	ilvod.h	$w4,$w11,$w12
	ilvod.h	$w3,$w9,$w10
	vabs.h	$w7,$w2
	vabs.h	$w5,$w1
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
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w3,$w4,$w3
	addv.w	$w1,$w2,$w1
	addv.w	$w0,$w3,$w1
	copy_s.w	$2,$w0[1]
	copy_s.w	$16,$w0[0]
	addu	$16,$16,$2
	move	$7,$23
	copy_s.w	$2,$w0[2]
	move	$5,$fp
	addu	$16,$16,$2
	copy_s.w	$2,$w0[3]
	jalr	$25
	addu	$16,$16,$2

	addiu	$16,$16,1
	addiu	$2,$2,2
	dsra	$16,$16,1
	sra	$2,$2,2
	beq	$2,$16,.L1893
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,40($sp)

	addu	$16,$16,$17
.L1895:
	daddiu	$21,$21,8
	move	$17,$16
	bne	$20,$21,.L1886
	daddiu	$22,$22,8

	ld	$20,48($sp)
	li	$2,1			# 0x1
	ld	$21,56($sp)
	ld	$3,24($sp)
	daddu	$18,$18,$20
	bne	$3,$2,.L1890
	daddu	$19,$19,$21

	ld	$19,32($sp)
	move	$2,$23
	move	$23,$fp
	ld	$22,72($sp)
	move	$7,$2
	move	$5,$23
	ld	$25,0($sp)
	move	$fp,$2
	move	$4,$19
	jalr	$25
	move	$6,$22

	ld	$25,0($sp)
	daddiu	$4,$19,8
	move	$7,$fp
	move	$5,$23
	daddiu	$6,$22,8
	jalr	$25
	move	$18,$2

	ld	$25,0($sp)
	addiu	$18,$18,2
	addiu	$2,$2,2
	daddu	$4,$19,$20
	sd	$19,32($sp)
	move	$7,$fp
	move	$5,$23
	sra	$2,$2,2
	daddu	$6,$22,$21
	sra	$18,$18,2
	jalr	$25
	addu	$18,$18,$2

	ld	$25,0($sp)
	daddiu	$6,$21,8
	addiu	$19,$2,2
	ld	$2,32($sp)
	daddiu	$4,$20,8
	move	$7,$fp
	daddu	$6,$22,$6
	move	$5,$23
	sra	$19,$19,2
	daddu	$4,$2,$4
	jalr	$25
	addu	$19,$19,$18

	addiu	$18,$2,2
	sra	$18,$18,2
	addu	$18,$18,$19
	beq	$18,$16,.L1894
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC40)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC40)

	ld	$4,%got_page(.LC16)($28)
	move	$5,$18
	ld	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC16)

	ld	$4,%got_page(.LC17)($28)
	move	$5,$16
	ld	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC17)

	ld	$31,168($sp)
	move	$2,$17
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

	.align	3
.L1893:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,64($sp)

	b	.L1895
	addu	$16,$16,$17

	.align	3
.L1890:
	li	$2,1			# 0x1
	b	.L1887
	sd	$2,24($sp)

	.align	3
.L1894:
	ld	$4,%got_page(.LC39)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC39)

	ld	$31,168($sp)
	move	$2,$17
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
.L1897:
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
	move	$7,$20
	move	$5,$21
	move	$25,$19
	addu	$16,$2,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
1:	jalr	$25
	daddu	$18,$18,$23

	daddu	$17,$17,$22
	addu	$2,$2,$16
	bne	$fp,$0,.L1897
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
	sd	$20,40($sp)
	move	$20,$7
	ld	$16,%got_page(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)($28)
	sd	$19,32($sp)
	move	$19,$6
	sd	$18,24($sp)
	move	$18,$5
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)
	sd	$17,16($sp)
	move	$25,$16
	sd	$31,56($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
1:	jalr	$25
	move	$17,$4

	dlsa	$6,$20,$19,4
	dlsa	$4,$18,$17,4
	move	$7,$20
	move	$5,$18
	move	$25,$16
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
	.section	.rodata.str1.8
	.align	3
.LC41:
	.ascii	"sa8d_8x8 test success\000"
	.align	3
.LC42:
	.ascii	"sa8d_8x8 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
	.type	_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l, @function
_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l:
	.frame	$sp,112,$31		# vars= 0, regs= 5/8, args= 0, gp= 0
	.mask	0x90070000,-72
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	daddu	$10,$4,$5
	vbld	$w13,0($6)
	daddu	$24,$6,$7
	sd	$28,32($sp)
	daddu	$9,$10,$5
	daddu	$8,$24,$7
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)))
	sd	$18,24($sp)
	dlsa	$15,$5,$9,1
	dlsa	$12,$7,$8,1
	sd	$17,16($sp)
	daddu	$28,$28,$25
	daddu	$14,$15,$5
	sd	$16,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)))
	daddu	$11,$12,$7
	sdc1	$f31,104($sp)
	hadd_u.h	$w31,$w13,$w13
	sdc1	$f30,96($sp)
	daddu	$13,$14,$5
	hsub_u.h	$w13,$w13,$w13
	insve.d	$w31[1],$w13[0]
	sdc1	$f29,88($sp)
	daddu	$3,$13,$5
	sdc1	$f28,80($sp)
	sdc1	$f27,72($sp)
	sdc1	$f26,64($sp)
	sdc1	$f25,56($sp)
	sdc1	$f24,48($sp)
	sd	$31,40($sp)
	vbld	$w14,0($10)
	daddu	$10,$11,$7
	vbld	$w19,0($9)
	ld	$25,%got_page(_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l)($28)
	vbld	$w18,0($8)
	daddu	$2,$10,$7
	daddu	$9,$9,$5
	daddu	$8,$8,$7
	vbld	$w15,0($4)
	vbld	$w12,0($24)
	vbld	$w4,0($9)
	vbld	$w3,0($8)
	vbld	$w11,0($15)
	vbld	$w10,0($14)
	vbld	$w9,0($13)
	vbld	$w1,0($3)
	vbld	$w8,0($12)
	vbld	$w7,0($11)
	vbld	$w6,0($10)
	vbld	$w0,0($2)
	hadd_u.h	$w23,$w15,$w15
	hadd_u.h	$w17,$w14,$w14
	hadd_u.h	$w22,$w19,$w19
	hadd_u.h	$w5,$w4,$w4
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
	hsub_u.h	$w15,$w15,$w15
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w19,$w19,$w19
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w12,$w12,$w12
	hsub_u.h	$w18,$w18,$w18
	insve.d	$w30[1],$w12[0]
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w11,$w11,$w11
	insve.d	$w28[1],$w3[0]
	insve.d	$w21[1],$w11[0]
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w1,$w1,$w1
	insve.d	$w20[1],$w9[0]
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w6,$w6,$w6
	insve.d	$w26[1],$w7[0]
	hsub_u.h	$w0,$w0,$w0
	insve.d	$w23[1],$w15[0]
	insve.d	$w24[1],$w0[0]
	subv.h	$w23,$w23,$w31
	insve.d	$w17[1],$w14[0]
	insve.d	$w22[1],$w19[0]
	subv.h	$w17,$w17,$w30
	insve.d	$w5[1],$w4[0]
	insve.d	$w29[1],$w18[0]
	addv.h	$w4,$w17,$w23
	subv.h	$w29,$w22,$w29
	subv.h	$w17,$w17,$w23
	subv.h	$w5,$w5,$w28
	insve.d	$w16[1],$w10[0]
	addv.h	$w3,$w5,$w29
	subv.h	$w16,$w16,$w26
	addv.h	$w10,$w3,$w4
	subv.h	$w5,$w5,$w29
	subv.h	$w3,$w3,$w4
	insve.d	$w2[1],$w1[0]
	addv.h	$w4,$w5,$w17
	subv.h	$w2,$w2,$w24
	subv.h	$w5,$w5,$w17
	insve.d	$w27[1],$w8[0]
	insve.d	$w25[1],$w6[0]
	subv.h	$w27,$w21,$w27
	subv.h	$w25,$w20,$w25
	addv.h	$w6,$w16,$w27
	addv.h	$w0,$w2,$w25
	subv.h	$w16,$w16,$w27
	addv.h	$w1,$w0,$w6
	subv.h	$w2,$w2,$w25
	addv.h	$w8,$w1,$w10
	addv.h	$w11,$w2,$w16
	subv.h	$w1,$w1,$w10
	subv.h	$w0,$w0,$w6
	pckod.h	$w9,$w1,$w8
	addv.h	$w6,$w11,$w4
	pckev.h	$w8,$w1,$w8
	subv.h	$w11,$w11,$w4
	asub_s.h	$w12,$w9,$w8
	addv.h	$w4,$w0,$w3
	pckod.h	$w7,$w11,$w6
	subv.h	$w2,$w2,$w16
	pckev.h	$w6,$w11,$w6
	addv.h	$w10,$w2,$w5
	subv.h	$w0,$w0,$w3
	subv.h	$w2,$w2,$w5
	asub_s.h	$w3,$w7,$w6
	pckod.h	$w5,$w0,$w4
	addv.h	$w9,$w9,$w8
	pckev.h	$w0,$w0,$w4
	vabs.h	$w8,$w9
	asub_s.h	$w11,$w5,$w0
	pckod.h	$w4,$w2,$w10
	addv.h	$w5,$w5,$w0
	ilvod.h	$w1,$w8,$w12
	pckev.h	$w2,$w2,$w10
	addv.h	$w7,$w7,$w6
	asub_s.h	$w10,$w4,$w2
	vabs.h	$w6,$w7
	addv.h	$w2,$w4,$w2
	ilvod.h	$w0,$w6,$w3
	vabs.h	$w4,$w5
	ilvev.h	$w6,$w6,$w3
	vabs.h	$w2,$w2
	ilvod.h	$w3,$w4,$w11
	ilvod.h	$w5,$w2,$w10
	ilvev.h	$w8,$w8,$w12
	ilvev.h	$w4,$w4,$w11
	ilvev.h	$w2,$w2,$w10
	max_s.h	$w1,$w1,$w8
	max_s.h	$w0,$w0,$w6
	max_s.h	$w3,$w3,$w4
	max_s.h	$w2,$w5,$w2
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w0,$w0,$w0
	hadd_s.w	$w3,$w3,$w3
	addv.w	$w0,$w1,$w0
	addv.w	$w3,$w3,$w2
	addv.w	$w0,$w0,$w3
	copy_s.w	$2,$w0[1]
	copy_s.w	$16,$w0[0]
	addu	$16,$16,$2
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l)
	copy_s.w	$2,$w0[2]
	addu	$16,$16,$2
	copy_s.w	$2,$w0[3]
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l
1:	jalr	$25
	addu	$16,$16,$2

	addiu	$16,$16,1
	ld	$25,%call16(puts)($28)
	addiu	$2,$2,2
	sra	$16,$16,1
	sra	$17,$2,2
	beq	$17,$16,.L1906
	move	$18,$16

	ld	$4,%got_page(.LC42)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC42)

	ld	$4,%got_page(.LC16)($28)
	move	$5,$17
	ld	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC16)

	ld	$4,%got_page(.LC17)($28)
	move	$5,$16
	ld	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC17)

	ld	$31,40($sp)
.L1907:
	move	$2,$18
	ldc1	$f31,104($sp)
	ld	$28,32($sp)
	ldc1	$f30,96($sp)
	ld	$18,24($sp)
	ldc1	$f29,88($sp)
	ld	$17,16($sp)
	ldc1	$f28,80($sp)
	ld	$16,8($sp)
	ldc1	$f27,72($sp)
	ldc1	$f26,64($sp)
	ldc1	$f25,56($sp)
	ldc1	$f24,48($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.align	3
.L1906:
	ld	$4,%got_page(.LC41)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC41)

	b	.L1907
	ld	$31,40($sp)

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
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l)))
	sd	$20,40($sp)
	move	$20,$7
	ld	$16,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	sd	$19,32($sp)
	move	$19,$6
	sd	$18,24($sp)
	move	$18,$5
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	sd	$17,16($sp)
	move	$25,$16
	sd	$31,56($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	move	$17,$4

	dlsa	$6,$20,$19,3
	dlsa	$4,$18,$17,3
	move	$7,$20
	move	$5,$18
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
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
	.end	_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l
	.section	.rodata.str1.8
	.align	3
.LC43:
	.ascii	"satd8_16x16 test success\000"
	.align	3
.LC44:
	.ascii	"satd8_16x16 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l
	.type	_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l, @function
_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l:
	.frame	$sp,176,$31		# vars= 16, regs= 11/8, args= 0, gp= 0
	.mask	0xd0ff0000,-72
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-176
	dsll	$14,$5,1
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l)))
	dsll	$13,$7,1
	sd	$21,64($sp)
	daddu	$28,$28,$25
	move	$21,$7
	sd	$20,56($sp)
	move	$20,$5
	dsll	$8,$7,2
	sd	$fp,96($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l)))
	daddiu	$3,$4,8
	sd	$17,32($sp)
	daddiu	$2,$6,8
	dsll	$17,$5,2
	move	$7,$6
	move	$5,$4
	sd	$31,104($sp)
	li	$10,4			# 0x4
	move	$fp,$0
	sd	$23,80($sp)
	daddu	$24,$14,$20
	daddu	$15,$13,$21
	sd	$22,72($sp)
	sd	$19,48($sp)
	sd	$18,40($sp)
	sd	$16,24($sp)
	sdc1	$f31,168($sp)
	sdc1	$f30,160($sp)
	sdc1	$f29,152($sp)
	sdc1	$f28,144($sp)
	sdc1	$f27,136($sp)
	sdc1	$f26,128($sp)
	sdc1	$f25,120($sp)
	sdc1	$f24,112($sp)
.L1911:
	daddu	$9,$2,$21
	daddu	$25,$3,$20
	vbld	$w17,0($3)
	vbld	$w15,0($2)
	daddu	$11,$5,$14
	daddu	$23,$5,$20
	vbld	$w19,0($5)
	vbld	$w18,0($7)
	vbld	$w10,0($11)
	daddu	$22,$5,$24
	daddu	$11,$21,$9
	vbld	$w5,0($9)
	daddu	$12,$20,$25
	daddu	$3,$3,$24
	vbld	$w11,0($23)
	vbld	$w9,0($22)
	daddu	$19,$7,$21
	daddu	$18,$7,$13
	vbld	$w3,0($3)
	vbld	$w1,0($25)
	daddu	$16,$7,$15
	daddu	$2,$2,$15
	vbld	$w16,0($12)
	vbld	$w8,0($19)
	vbld	$w2,0($2)
	vbld	$w7,0($18)
	vbld	$w6,0($16)
	vbld	$w14,0($11)
	hadd_u.h	$w23,$w19,$w19
	hadd_u.h	$w13,$w11,$w11
	hadd_u.h	$w22,$w10,$w10
	hadd_u.h	$w0,$w9,$w9
	hadd_u.h	$w31,$w18,$w18
	hadd_u.h	$w30,$w8,$w8
	hadd_u.h	$w29,$w7,$w7
	hadd_u.h	$w28,$w6,$w6
	hadd_u.h	$w21,$w17,$w17
	hadd_u.h	$w12,$w1,$w1
	hadd_u.h	$w20,$w16,$w16
	hadd_u.h	$w4,$w3,$w3
	hadd_u.h	$w27,$w15,$w15
	hadd_u.h	$w26,$w5,$w5
	hadd_u.h	$w25,$w14,$w14
	hadd_u.h	$w24,$w2,$w2
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	insve.d	$w0[1],$w9[0]
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w1,$w1,$w1
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w2,$w2,$w2
	insve.d	$w22[1],$w10[0]
	insve.d	$w30[1],$w8[0]
	insve.d	$w29[1],$w7[0]
	insve.d	$w12[1],$w1[0]
	subv.h	$w22,$w22,$w29
	insve.d	$w4[1],$w3[0]
	insve.d	$w26[1],$w5[0]
	insve.d	$w24[1],$w2[0]
	subv.h	$w12,$w12,$w26
	subv.h	$w3,$w4,$w24
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
	insve.d	$w28[1],$w6[0]
	addv.h	$w9,$w13,$w23
	subv.h	$w6,$w0,$w28
	subv.h	$w13,$w13,$w23
	addv.h	$w1,$w6,$w22
	insve.d	$w21[1],$w17[0]
	asub_s.h	$w7,$w1,$w9
	subv.h	$w6,$w6,$w22
	addv.h	$w1,$w1,$w9
	asub_s.h	$w8,$w6,$w13
	vabs.h	$w5,$w1
	insve.d	$w20[1],$w16[0]
	insve.d	$w27[1],$w15[0]
	insve.d	$w25[1],$w14[0]
	subv.h	$w21,$w21,$w27
	subv.h	$w20,$w20,$w25
	addv.h	$w0,$w12,$w21
	addv.h	$w4,$w3,$w20
	subv.h	$w12,$w12,$w21
	asub_s.h	$w9,$w4,$w0
	subv.h	$w3,$w3,$w20
	addv.h	$w4,$w4,$w0
	asub_s.h	$w10,$w3,$w12
	vabs.h	$w4,$w4
	addv.h	$w2,$w3,$w12
	ilvod.h	$w0,$w8,$w7
	vabs.h	$w2,$w2
	addv.h	$w6,$w6,$w13
	ilvod.h	$w3,$w2,$w4
	vabs.h	$w6,$w6
	ilvev.h	$w2,$w2,$w4
	ilvod.h	$w1,$w6,$w5
	ilvev.h	$w7,$w8,$w7
	ilvev.h	$w5,$w6,$w5
	ilvev.h	$w4,$w10,$w9
	ilvod.h	$w6,$w10,$w9
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
	copy_s.w	$9,$w0[2]
	copy_s.w	$2,$w0[3]
	addu	$3,$3,$9
	addiu	$10,$10,-1
	addu	$2,$3,$2
	daddu	$5,$5,$17
	addu	$fp,$2,$fp
	daddu	$7,$7,$8
	daddu	$3,$14,$12
	bne	$10,$0,.L1911
	daddu	$2,$13,$11

	ld	$23,%got_page(_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l)($28)
	move	$18,$4
	move	$16,$6
	li	$22,4			# 0x4
	move	$19,$0
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l)
.L1912:
	move	$6,$16
	move	$4,$18
	sd	$8,0($sp)
	move	$7,$21
	move	$5,$20
	move	$25,$23
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l
1:	jalr	$25
	addiu	$22,$22,-1

	daddiu	$6,$16,8
	daddiu	$4,$18,8
	move	$7,$21
	move	$5,$20
	move	$25,$23
	addu	$19,$2,$19
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l
1:	jalr	$25
	daddu	$18,$18,$17

	ld	$8,0($sp)
	addu	$19,$2,$19
	bne	$22,$0,.L1912
	daddu	$16,$16,$8

	beq	$fp,$19,.L1918
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC44)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC44)

	ld	$31,104($sp)
.L1919:
	move	$2,$fp
	ldc1	$f31,168($sp)
	ld	$fp,96($sp)
	ldc1	$f30,160($sp)
	ld	$28,88($sp)
	ldc1	$f29,152($sp)
	ld	$23,80($sp)
	ldc1	$f28,144($sp)
	ld	$22,72($sp)
	ldc1	$f27,136($sp)
	ld	$21,64($sp)
	ldc1	$f26,128($sp)
	ld	$20,56($sp)
	ldc1	$f25,120($sp)
	ld	$19,48($sp)
	ldc1	$f24,112($sp)
	ld	$18,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	jr	$31
	daddiu	$sp,$sp,176

	.align	3
.L1918:
	ld	$4,%got_page(.LC43)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC43)

	b	.L1919
	ld	$31,104($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l
	.size	_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l, .-_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l
	.section	.rodata.str1.8
	.align	3
.LC45:
	.ascii	"satd_8x4 test success\000"
	.align	3
.LC46:
	.ascii	"satd_8x4 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
	.type	_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l, @function
_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l:
	.frame	$sp,112,$31		# vars= 64, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$15,$4,$5
	daddu	$14,$6,$7
	daddu	$2,$14,$7
	daddu	$3,$15,$5
	daddiu	$sp,$sp,-112
	daddu	$8,$2,$7
	daddu	$9,$3,$5
	sd	$28,96($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)))
	sd	$16,72($sp)
	daddu	$28,$28,$25
	daddiu	$24,$sp,64
	sd	$31,104($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)))
	move	$12,$sp
	sd	$18,88($sp)
	sd	$17,80($sp)
	vbld	$w3,0($2)
	vbld	$w5,0($8)
	vbld	$w11,0($4)
	vbld	$w9,0($6)
	vbld	$w10,0($15)
	vbld	$w4,0($3)
	vbld	$w6,0($9)
	vbld	$w8,0($14)
	hadd_u.h	$w13,$w11,$w11
	hadd_u.h	$w7,$w10,$w10
	hadd_u.h	$w12,$w4,$w4
	hadd_u.h	$w2,$w6,$w6
	hadd_u.h	$w15,$w9,$w9
	hadd_u.h	$w0,$w8,$w8
	hadd_u.h	$w14,$w3,$w3
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w4,$w4,$w4
	insve.d	$w7[1],$w10[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w2[1],$w6[0]
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w11,$w11,$w11
	insve.d	$w1[1],$w5[0]
	hsub_u.h	$w9,$w9,$w9
	subv.h	$w1,$w2,$w1
	hsub_u.h	$w8,$w8,$w8
	insve.d	$w13[1],$w11[0]
	move.v	$w10,$w12
	move.v	$w6,$w15
	insve.d	$w10[1],$w4[0]
	insve.d	$w6[1],$w9[0]
	insve.d	$w0[1],$w8[0]
	subv.h	$w6,$w13,$w6
	subv.h	$w0,$w7,$w0
	move.v	$w7,$w14
	insve.d	$w7[1],$w3[0]
	move.v	$w3,$w7
	addv.h	$w7,$w0,$w6
	subv.h	$w3,$w10,$w3
	subv.h	$w0,$w0,$w6
	addv.h	$w2,$w1,$w3
	subv.h	$w1,$w1,$w3
	asub_s.h	$w4,$w2,$w7
	addv.h	$w5,$w1,$w0
	addv.h	$w2,$w2,$w7
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
	copy_s.w	$2,$w0[1]
	copy_s.w	$16,$w0[0]
	addu	$16,$16,$2
	copy_s.w	$2,$w0[2]
	addu	$16,$16,$2
	move	$8,$sp
	copy_s.w	$2,$w0[3]
	addu	$16,$16,$2
.L1921:
	lbu	$13,5($6)
	daddiu	$12,$12,16
	lbu	$11,5($4)
	lbu	$9,4($6)
	lbu	$2,4($4)
	lbu	$17,0($6)
	subu	$11,$11,$13
	lbu	$10,7($4)
	sll	$11,$11,16
	lbu	$13,7($6)
	subu	$2,$2,$9
	lbu	$25,0($4)
	sll	$2,$2,16
	lbu	$9,6($6)
	lbu	$3,6($4)
	subu	$10,$10,$13
	subu	$25,$25,$17
	lbu	$18,1($6)
	sll	$31,$10,16
	addu	$2,$2,$25
	lbu	$13,2($4)
	subu	$3,$3,$9
	lbu	$17,2($6)
	lbu	$9,1($4)
	sll	$3,$3,16
	lbu	$10,3($4)
	move	$4,$15
	daddu	$15,$15,$5
	lbu	$25,3($6)
	subu	$13,$13,$17
	move	$6,$14
	subu	$9,$9,$18
	addu	$3,$3,$13
	addu	$11,$11,$9
	daddu	$14,$14,$7
	subu	$10,$10,$25
	addu	$9,$2,$11
	addu	$10,$31,$10
	subu	$2,$2,$11
	addu	$11,$3,$10
	subu	$3,$3,$10
	addu	$13,$9,$11
	addu	$10,$2,$3
	subu	$9,$9,$11
	subu	$2,$2,$3
	sw	$13,-16($12)
	sw	$9,-8($12)
	sw	$10,-12($12)
	bne	$24,$12,.L1921
	sw	$2,-4($12)

	li	$9,65536			# 0x10000
	daddiu	$11,$8,16
	move	$10,$0
	addiu	$9,$9,1
.L1922:
	lw	$6,0($8)
	daddiu	$8,$8,4
	lw	$4,12($8)
	lw	$2,44($8)
	lw	$3,28($8)
	addu	$7,$6,$4
	subu	$6,$6,$4
	addu	$4,$3,$2
	subu	$3,$3,$2
	addu	$5,$7,$4
	addu	$2,$6,$3
	srl	$12,$5,15
	srl	$13,$2,15
	subu	$4,$7,$4
	and	$14,$13,$9
	srl	$7,$4,15
	subu	$3,$6,$3
	and	$24,$12,$9
	srl	$6,$3,15
	and	$15,$7,$9
	sll	$13,$14,16
	sll	$12,$24,16
	subu	$13,$13,$14
	subu	$12,$12,$24
	and	$14,$6,$9
	sll	$7,$15,16
	sll	$6,$14,16
	subu	$7,$7,$15
	addu	$2,$2,$13
	addu	$5,$5,$12
	subu	$6,$6,$14
	xor	$2,$2,$13
	xor	$5,$5,$12
	addu	$4,$4,$7
	addu	$2,$2,$5
	xor	$4,$4,$7
	addu	$3,$3,$6
	addu	$2,$2,$4
	xor	$3,$3,$6
	addu	$2,$2,$3
	bne	$11,$8,.L1922
	addu	$10,$2,$10

	srl	$2,$10,16
	andi	$10,$10,0xffff
	addu	$10,$2,$10
	srl	$10,$10,1
	beq	$10,$16,.L1929
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC46)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC46)

	ld	$31,104($sp)
	move	$2,$16
	ld	$28,96($sp)
	ld	$18,88($sp)
	ld	$17,80($sp)
	ld	$16,72($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.align	3
.L1929:
	ld	$4,%got_page(.LC45)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC45)

	ld	$31,104($sp)
	move	$2,$16
	ld	$28,96($sp)
	ld	$18,88($sp)
	ld	$17,80($sp)
	ld	$16,72($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
	.size	_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l, .-_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$19,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l)))
	sd	$fp,80($sp)
	li	$fp,6			# 0x6
	ld	$19,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$23,64($sp)
	dsll	$23,$5,2
	sd	$22,56($sp)
	dsll	$22,$7,2
	sd	$21,48($sp)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
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
	.align	3
.L1931:
	move	$6,$17
	move	$4,$18
	move	$7,$20
	move	$5,$21
	move	$25,$19
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
1:	jalr	$25
	addiu	$fp,$fp,-1

	daddiu	$6,$17,8
	daddiu	$4,$18,8
	move	$7,$20
	move	$5,$21
	move	$25,$19
	addu	$16,$2,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
1:	jalr	$25
	daddu	$18,$18,$23

	daddu	$17,$17,$22
	addu	$2,$2,$16
	bne	$fp,$0,.L1931
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
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$19,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l)))
	sd	$fp,80($sp)
	move	$fp,$0
	ld	$19,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$23,64($sp)
	dsll	$23,$5,2
	sd	$22,56($sp)
	dsll	$22,$7,2
	sd	$21,48($sp)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	move	$21,$5
	sd	$20,40($sp)
	move	$20,$7
	sd	$18,24($sp)
	move	$18,$4
	sd	$17,16($sp)
	move	$17,$6
	sd	$16,8($sp)
	li	$16,8			# 0x8
	sd	$31,88($sp)
	.align	3
.L1935:
	move	$6,$17
	move	$4,$18
	move	$7,$20
	move	$5,$21
	move	$25,$19
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
1:	jalr	$25
	addiu	$16,$16,-1

	daddu	$18,$18,$23
	addu	$2,$2,$fp
	daddu	$17,$17,$22
	bne	$16,$0,.L1935
	move	$fp,$2

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
	.end	_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$16,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l)))
	sd	$2,8($sp)
	dsll	$2,$7,2
	ld	$16,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$23,96($sp)
	move	$23,$0
	sd	$21,80($sp)
	move	$21,$6
	sd	$20,72($sp)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	move	$20,$4
	sd	$18,56($sp)
	move	$18,$5
	sd	$17,48($sp)
	move	$17,$7
	sd	$2,16($sp)
	li	$2,2			# 0x2
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$22,88($sp)
	sd	$19,64($sp)
	sd	$2,0($sp)
.L1940:
	daddiu	$19,$20,32
	move	$22,$21
	move	$fp,$20
.L1939:
	move	$6,$22
	move	$4,$fp
	move	$7,$17
	move	$5,$18
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
1:	jalr	$25
	daddiu	$fp,$fp,8

	daddiu	$22,$22,8
	addu	$2,$2,$23
	bne	$fp,$19,.L1939
	move	$23,$2

	ld	$3,8($sp)
	li	$4,1			# 0x1
	daddu	$20,$20,$3
	ld	$3,16($sp)
	daddu	$21,$21,$3
	ld	$3,0($sp)
	bne	$3,$4,.L1941
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

	.align	3
.L1941:
	li	$2,1			# 0x1
	b	.L1940
	sd	$2,0($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l)))
	sd	$20,40($sp)
	move	$20,$7
	ld	$16,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$19,32($sp)
	move	$19,$6
	sd	$18,24($sp)
	move	$18,$5
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	sd	$17,16($sp)
	move	$25,$16
	sd	$31,56($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
1:	jalr	$25
	move	$17,$4

	move	$7,$20
	daddiu	$6,$19,8
	move	$5,$18
	daddiu	$4,$17,8
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
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
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$19,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l)))
	sd	$fp,80($sp)
	li	$fp,3			# 0x3
	ld	$19,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$23,64($sp)
	dsll	$23,$5,2
	sd	$22,56($sp)
	dsll	$22,$7,2
	sd	$21,48($sp)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
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
.L1947:
	move	$6,$17
	move	$4,$18
	move	$7,$20
	move	$5,$21
	move	$25,$19
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
1:	jalr	$25
	addiu	$fp,$fp,-1

	daddiu	$6,$17,8
	daddiu	$4,$18,8
	move	$7,$20
	move	$5,$21
	move	$25,$19
	addu	$16,$2,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
1:	jalr	$25
	daddu	$18,$18,$23

	daddu	$17,$17,$22
	addu	$2,$2,$16
	bne	$fp,$0,.L1947
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
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$19,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l)))
	sd	$fp,80($sp)
	move	$fp,$0
	ld	$19,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$23,64($sp)
	dsll	$23,$5,2
	sd	$22,56($sp)
	dsll	$22,$7,2
	sd	$21,48($sp)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	move	$21,$5
	sd	$20,40($sp)
	move	$20,$7
	sd	$18,24($sp)
	move	$18,$4
	sd	$17,16($sp)
	move	$17,$6
	sd	$16,8($sp)
	li	$16,4			# 0x4
	sd	$31,88($sp)
.L1951:
	move	$6,$17
	move	$4,$18
	move	$7,$20
	move	$5,$21
	move	$25,$19
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
1:	jalr	$25
	addiu	$16,$16,-1

	daddu	$18,$18,$23
	addu	$2,$2,$fp
	daddu	$17,$17,$22
	bne	$16,$0,.L1951
	move	$fp,$2

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
	.end	_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l)))
	sd	$fp,80($sp)
	move	$fp,$6
	ld	$17,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$23,64($sp)
	dsll	$23,$5,2
	sd	$22,56($sp)
	dsll	$22,$7,2
	sd	$21,48($sp)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	move	$21,$4
	sd	$20,40($sp)
	li	$20,2			# 0x2
	sd	$19,32($sp)
	move	$19,$5
	sd	$18,24($sp)
	move	$18,$7
	sd	$16,8($sp)
	move	$16,$0
	sd	$31,88($sp)
.L1955:
	move	$6,$fp
	move	$4,$21
	move	$7,$18
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
1:	jalr	$25
	move	$5,$19

	daddiu	$6,$fp,8
	daddiu	$4,$21,8
	move	$7,$18
	move	$5,$19
	move	$25,$17
	addu	$16,$2,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
1:	jalr	$25
	daddu	$21,$21,$23

	li	$3,1			# 0x1
	addu	$2,$2,$16
	daddu	$fp,$fp,$22
	bne	$20,$3,.L1956
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

	.align	3
.L1956:
	b	.L1955
	li	$20,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l
	.section	.rodata.str1.8
	.align	3
.LC47:
	.ascii	"satd8_8x8 test success\000"
	.align	3
.LC48:
	.ascii	"satd8_8x8 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l
	.type	_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l, @function
_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l:
	.frame	$sp,128,$31		# vars= 0, regs= 9/5, args= 0, gp= 0
	.mask	0x907f0000,-56
	.fmask	0x1f000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	daddu	$8,$4,$5
	daddu	$12,$6,$7
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l)))
	daddu	$2,$8,$5
	daddu	$3,$12,$7
	sd	$21,48($sp)
	daddu	$28,$28,$25
	sd	$20,40($sp)
	dlsa	$21,$7,$3,1
	dlsa	$20,$5,$2,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l)))
	sd	$19,32($sp)
	daddu	$11,$20,$5
	daddu	$9,$21,$7
	ld	$19,%got_page(_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l)($28)
	sd	$31,72($sp)
	daddu	$10,$11,$5
	sd	$22,56($sp)
	daddu	$13,$10,$5
	sd	$18,24($sp)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l)
	move	$18,$7
	sd	$17,16($sp)
	move	$25,$19
	move	$17,$5
	sd	$16,8($sp)
	sdc1	$f27,112($sp)
	sdc1	$f26,104($sp)
	sdc1	$f25,96($sp)
	sdc1	$f24,88($sp)
	sdc1	$f28,120($sp)
	vbld	$w10,0($8)
	daddu	$8,$9,$7
	vbld	$w28,0($2)
	vbld	$w16,0($11)
	daddu	$2,$2,$5
	daddu	$11,$8,$7
	vbld	$w1,0($12)
	daddu	$12,$3,$7
	vbld	$w11,0($4)
	vbld	$w9,0($6)
	vbld	$w15,0($10)
	vbld	$w18,0($13)
	vbld	$w12,0($3)
	vbld	$w19,0($12)
	vbld	$w14,0($9)
	vbld	$w13,0($8)
	vbld	$w17,0($11)
	vbld	$w0,0($2)
	hadd_u.h	$w5,$w15,$w15
	hadd_u.h	$w20,$w11,$w11
	hsub_u.h	$w15,$w15,$w15
	hadd_u.h	$w24,$w10,$w10
	hadd_u.h	$w2,$w28,$w28
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w28,$w28,$w28
	insve.d	$w24[1],$w10[0]
	insve.d	$w2[1],$w28[0]
	hadd_u.h	$w8,$w0,$w0
	hadd_u.h	$w27,$w9,$w9
	hadd_u.h	$w26,$w1,$w1
	hadd_u.h	$w25,$w12,$w12
	hadd_u.h	$w6,$w19,$w19
	hadd_u.h	$w4,$w16,$w16
	hsub_u.h	$w19,$w19,$w19
	hsub_u.h	$w16,$w16,$w16
	insve.d	$w6[1],$w19[0]
	insve.d	$w4[1],$w16[0]
	hadd_u.h	$w7,$w18,$w18
	hadd_u.h	$w23,$w14,$w14
	hsub_u.h	$w18,$w18,$w18
	hsub_u.h	$w14,$w14,$w14
	insve.d	$w7[1],$w18[0]
	insve.d	$w23[1],$w14[0]
	hadd_u.h	$w22,$w13,$w13
	hadd_u.h	$w21,$w17,$w17
	hsub_u.h	$w13,$w13,$w13
	hsub_u.h	$w17,$w17,$w17
	insve.d	$w22[1],$w13[0]
	insve.d	$w21[1],$w17[0]
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w0,$w0,$w0
	insve.d	$w20[1],$w11[0]
	insve.d	$w8[1],$w0[0]
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w1,$w1,$w1
	insve.d	$w27[1],$w9[0]
	insve.d	$w26[1],$w1[0]
	subv.h	$w11,$w20,$w27
	subv.h	$w3,$w24,$w26
	hsub_u.h	$w12,$w12,$w12
	move.v	$w0,$w5
	insve.d	$w25[1],$w12[0]
	insve.d	$w0[1],$w15[0]
	subv.h	$w9,$w2,$w25
	addv.h	$w12,$w3,$w11
	subv.h	$w2,$w8,$w6
	subv.h	$w3,$w3,$w11
	subv.h	$w8,$w4,$w23
	move.v	$w6,$w0
	subv.h	$w4,$w7,$w21
	subv.h	$w5,$w6,$w22
	addv.h	$w1,$w2,$w9
	addv.h	$w6,$w4,$w5
	subv.h	$w2,$w2,$w9
	subv.h	$w4,$w4,$w5
	asub_s.h	$w9,$w1,$w12
	asub_s.h	$w0,$w2,$w3
	addv.h	$w1,$w1,$w12
	ilvod.h	$w5,$w0,$w9
	vabs.h	$w1,$w1
	ilvev.h	$w9,$w0,$w9
	addv.h	$w2,$w2,$w3
	vabs.h	$w3,$w2
	ilvod.h	$w2,$w3,$w1
	ilvev.h	$w1,$w3,$w1
	max_s.h	$w3,$w5,$w9
	max_s.h	$w1,$w2,$w1
	hadd_s.w	$w0,$w3,$w3
	hadd_s.w	$w1,$w1,$w1
	vbld	$w3,0($20)
	addv.w	$w1,$w1,$w0
	hadd_u.h	$w5,$w3,$w3
	vbld	$w0,0($21)
	hsub_u.h	$w3,$w3,$w3
	hadd_u.h	$w2,$w0,$w0
	insve.d	$w5[1],$w3[0]
	hsub_u.h	$w0,$w0,$w0
	insve.d	$w2[1],$w0[0]
	subv.h	$w0,$w5,$w2
	addv.h	$w2,$w8,$w0
	subv.h	$w8,$w8,$w0
	asub_s.h	$w5,$w6,$w2
	asub_s.h	$w7,$w4,$w8
	addv.h	$w2,$w6,$w2
	ilvod.h	$w0,$w7,$w5
	addv.h	$w4,$w4,$w8
	ilvev.h	$w5,$w7,$w5
	vabs.h	$w4,$w4
	max_s.h	$w0,$w0,$w5
	vabs.h	$w2,$w2
	hadd_s.w	$w0,$w0,$w0
	ilvod.h	$w3,$w4,$w2
	ilvev.h	$w2,$w4,$w2
	max_s.h	$w2,$w3,$w2
	hadd_s.w	$w2,$w2,$w2
	addv.w	$w0,$w2,$w0
	addv.w	$w0,$w1,$w0
	copy_s.w	$2,$w0[1]
	copy_s.w	$16,$w0[0]
	addu	$16,$16,$2
	copy_s.w	$2,$w0[2]
	addu	$16,$16,$2
	copy_s.w	$2,$w0[3]
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l
1:	jalr	$25
	addu	$16,$16,$2

	move	$5,$17
	move	$25,$19
	move	$7,$18
	move	$6,$21
	move	$4,$20
	move	$17,$2
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l
1:	jalr	$25
	move	$22,$16

	addu	$17,$2,$17
	beq	$17,$16,.L1962
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC48)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC48)

	ld	$4,%got_page(.LC16)($28)
	move	$5,$17
	ld	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC16)

	ld	$4,%got_page(.LC17)($28)
	move	$5,$16
	ld	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC17)

	ld	$31,72($sp)
.L1963:
	move	$2,$22
	ldc1	$f28,120($sp)
	ld	$28,64($sp)
	ldc1	$f27,112($sp)
	ld	$22,56($sp)
	ldc1	$f26,104($sp)
	ld	$21,48($sp)
	ldc1	$f25,96($sp)
	ld	$20,40($sp)
	ldc1	$f24,88($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,128

	.align	3
.L1962:
	ld	$4,%got_page(.LC47)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC47)

	b	.L1963
	ld	$31,72($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l
	.size	_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l, .-_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l
	.section	.rodata.str1.8
	.align	3
.LC49:
	.ascii	"pixel_var_8x8 test success\000"
	.align	3
.LC50:
	.ascii	"pixel_var_8x8 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl
	.type	_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl, @function
_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$8,$4,$5
	daddiu	$sp,$sp,-32
	daddu	$2,$8,$5
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl)))
	dlsa	$6,$5,$2,1
	sd	$16,8($sp)
	daddu	$3,$2,$5
	sd	$31,24($sp)
	vbld	$w6,0($2)
	daddu	$2,$6,$5
	vbld	$w0,0($4)
	vbld	$w5,0($8)
	vextb_u.h	$w0,$w0
	vextb_u.h	$w5,$w5
	dotp_u.w	$w3,$w5,$w5
	dpadd_u.w	$w3,$w0,$w0
	move.v	$w4,$w3
	vbld	$w3,0($3)
	daddu	$3,$2,$5
	vbld	$w1,0($2)
	daddu	$2,$3,$5
	vextb_u.h	$w6,$w6
	vbld	$w8,0($6)
	vextb_u.h	$w3,$w3
	vextb_u.h	$w8,$w8
	vextb_u.h	$w1,$w1
	vbld	$w7,0($3)
	vbld	$w2,0($2)
	vextb_u.h	$w7,$w7
	addv.h	$w5,$w5,$w1
	vextb_u.h	$w2,$w2
	addv.h	$w0,$w0,$w8
	addv.h	$w10,$w3,$w2
	addv.h	$w9,$w6,$w7
	dotp_u.w	$w3,$w3,$w3
	dotp_u.w	$w1,$w1,$w1
	dotp_u.w	$w2,$w2,$w2
	hadd_u.w	$w0,$w0,$w0
	hadd_u.w	$w5,$w5,$w5
	hadd_u.w	$w9,$w9,$w9
	hadd_u.w	$w10,$w10,$w10
	dpadd_u.w	$w3,$w6,$w6
	dpadd_u.w	$w1,$w8,$w8
	dpadd_u.w	$w2,$w7,$w7
	addv.w	$w0,$w0,$w5
	addv.w	$w9,$w9,$w10
	addv.w	$w3,$w4,$w3
	addv.w	$w0,$w0,$w9
	addv.w	$w1,$w1,$w2
	copy_s.w	$6,$w0[1]
	addv.w	$w1,$w3,$w1
	copy_s.w	$2,$w0[0]
	copy_s.w	$3,$w1[1]
	addu	$2,$2,$6
	copy_s.w	$16,$w1[0]
	addu	$16,$16,$3
	copy_s.w	$6,$w0[2]
	copy_s.w	$3,$w1[2]
	addu	$6,$2,$6
	addu	$16,$16,$3
	copy_s.w	$2,$w0[3]
	copy_s.w	$3,$w1[3]
	addu	$2,$6,$2
	addu	$16,$16,$3
	daddu	$28,$28,$25
	dsll	$16,$16,32
	dext	$2,$2,0,32
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl)))
	li	$7,8			# 0x8
	daddu	$16,$16,$2
	mtlo	$0
	move	$3,$0
	.align	3
.L1966:
	daddiu	$6,$4,8
	.align	3
.L1965:
	lbu	$2,0($4)
	daddiu	$4,$4,1
	madd	$2,$2
	bne	$6,$4,.L1965
	addu	$3,$2,$3

	addiu	$7,$7,-1
	beq	$7,$0,.L1971
	move	$4,$8

	b	.L1966
	daddu	$8,$8,$5

	.align	3
.L1971:
	mflo	$2
	dext	$3,$3,0,32
	dsll	$2,$2,32
	daddu	$2,$2,$3
	beq	$2,$16,.L1973
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC50)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC50)

	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

.L1973:
	ld	$4,%got_page(.LC49)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC49)

	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl
	.size	_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl, .-_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl
	.section	.rodata.str1.8
	.align	3
.LC51:
	.ascii	"pixel_var_16x16 test success\000"
	.align	3
.LC52:
	.ascii	"pixel_var_16x16 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl
	.type	_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl, @function
_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl:
	.frame	$sp,80,$31		# vars= 0, regs= 3/6, args= 0, gp= 0
	.mask	0x90010000,-56
	.fmask	0x3f000000,-8
	.set	noreorder
	.set	nomacro
	daddu	$7,$4,$5
	daddiu	$sp,$sp,-80
	daddu	$6,$7,$5
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl)))
	daddu	$3,$6,$5
	sd	$16,8($sp)
	daddu	$28,$28,$25
	daddu	$2,$3,$5
	sdc1	$f29,72($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl)))
	sdc1	$f28,64($sp)
	mtlo	$0
	sdc1	$f27,56($sp)
	sdc1	$f26,48($sp)
	sdc1	$f25,40($sp)
	sdc1	$f24,32($sp)
	sd	$31,24($sp)
	vbld	$w19,0($6)
	vbld	$w6,8($6)
	daddu	$6,$2,$5
	vbld	$w18,0($3)
	vbld	$w5,8($3)
	daddu	$3,$6,$5
	vbld	$w17,0($2)
	vbld	$w1,8($2)
	daddu	$2,$3,$5
	vbld	$w16,0($6)
	vbld	$w4,8($6)
	daddu	$11,$2,$5
	vbld	$w15,0($3)
	vbld	$w3,8($3)
	vbld	$w14,0($2)
	daddu	$10,$11,$5
	vbld	$w2,8($2)
	vextb_u.h	$w19,$w19
	vextb_u.h	$w18,$w18
	daddu	$9,$10,$5
	vextb_u.h	$w17,$w17
	vextb_u.h	$w16,$w16
	vextb_u.h	$w15,$w15
	daddu	$8,$9,$5
	vextb_u.h	$w14,$w14
	vextb_u.h	$w2,$w2
	addv.h	$w9,$w17,$w15
	daddu	$6,$8,$5
	addv.h	$w8,$w16,$w14
	vbld	$w21,0($4)
	vbld	$w0,8($4)
	daddu	$3,$6,$5
	vextb_u.h	$w21,$w21
	vextb_u.h	$w0,$w0
	addv.h	$w11,$w21,$w19
	daddu	$2,$3,$5
	vbld	$w20,0($7)
	vbld	$w7,8($7)
	vextb_u.h	$w20,$w20
	daddu	$12,$2,$5
	addv.h	$w10,$w20,$w18
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	vextb_u.h	$w5,$w5
	addv.h	$w23,$w0,$w6
	addv.h	$w24,$w7,$w5
	vextb_u.h	$w1,$w1
	vextb_u.h	$w4,$w4
	vextb_u.h	$w3,$w3
	addv.h	$w13,$w4,$w2
	addv.h	$w22,$w1,$w3
	dotp_u.w	$w12,$w2,$w2
	hadd_u.w	$w23,$w23,$w23
	hadd_u.w	$w2,$w24,$w24
	dpadd_u.w	$w12,$w14,$w14
	hadd_u.w	$w22,$w22,$w22
	hadd_u.w	$w13,$w13,$w13
	dotp_u.w	$w0,$w0,$w0
	dotp_u.w	$w7,$w7,$w7
	dpadd_u.w	$w0,$w21,$w21
	dpadd_u.w	$w7,$w20,$w20
	vbld	$w21,0($9)
	addv.w	$w0,$w0,$w7
	vextb_u.h	$w21,$w21
	vbld	$w7,8($9)
	dotp_u.w	$w6,$w6,$w6
	vextb_u.h	$w7,$w7
	dpadd_u.w	$w6,$w19,$w19
	dotp_u.w	$w5,$w5,$w5
	dotp_u.w	$w1,$w1,$w1
	dpadd_u.w	$w5,$w18,$w18
	dpadd_u.w	$w1,$w17,$w17
	addv.w	$w6,$w6,$w5
	dotp_u.w	$w4,$w4,$w4
	dotp_u.w	$w3,$w3,$w3
	dpadd_u.w	$w4,$w16,$w16
	dpadd_u.w	$w3,$w15,$w15
	addv.w	$w1,$w1,$w4
	addv.w	$w5,$w3,$w12
	hadd_u.w	$w11,$w11,$w11
	hadd_u.w	$w10,$w10,$w10
	addv.w	$w11,$w11,$w23
	addv.w	$w10,$w10,$w2
	vbld	$w23,0($11)
	addv.w	$w2,$w11,$w10
	vextb_u.h	$w23,$w23
	hadd_u.w	$w9,$w9,$w9
	hadd_u.w	$w8,$w8,$w8
	addv.w	$w9,$w9,$w22
	addv.w	$w8,$w8,$w13
	vbld	$w22,0($10)
	addv.w	$w13,$w9,$w8
	vextb_u.h	$w22,$w22
	vbld	$w9,8($11)
	vbld	$w8,8($10)
	vextb_u.h	$w9,$w9
	vbld	$w20,0($8)
	addv.h	$w29,$w9,$w7
	vextb_u.h	$w8,$w8
	vbld	$w11,8($8)
	vextb_u.h	$w20,$w20
	vextb_u.h	$w11,$w11
	vbld	$w19,0($6)
	addv.h	$w28,$w8,$w11
	vbld	$w4,8($6)
	vextb_u.h	$w19,$w19
	vextb_u.h	$w4,$w4
	vbld	$w18,0($3)
	vbld	$w10,8($3)
	vextb_u.h	$w18,$w18
	vextb_u.h	$w10,$w10
	vbld	$w17,0($2)
	vbld	$w3,8($2)
	vextb_u.h	$w17,$w17
	vextb_u.h	$w3,$w3
	vbld	$w16,0($12)
	addv.h	$w27,$w4,$w3
	vextb_u.h	$w16,$w16
	vbld	$w12,8($12)
	addv.h	$w24,$w18,$w16
	vextb_u.h	$w12,$w12
	addv.h	$w15,$w23,$w21
	addv.h	$w26,$w10,$w12
	addv.h	$w25,$w22,$w20
	addv.h	$w14,$w19,$w17
	dotp_u.w	$w9,$w9,$w9
	dotp_u.w	$w8,$w8,$w8
	dotp_u.w	$w7,$w7,$w7
	dotp_u.w	$w11,$w11,$w11
	dotp_u.w	$w4,$w4,$w4
	dotp_u.w	$w10,$w10,$w10
	dpadd_u.w	$w4,$w19,$w19
	dpadd_u.w	$w10,$w18,$w18
	dotp_u.w	$w3,$w3,$w3
	dotp_u.w	$w12,$w12,$w12
	dpadd_u.w	$w3,$w17,$w17
	dpadd_u.w	$w12,$w16,$w16
	hadd_u.w	$w15,$w15,$w15
	addv.w	$w16,$w4,$w10
	hadd_u.w	$w29,$w29,$w29
	addv.w	$w10,$w3,$w12
	hadd_u.w	$w25,$w25,$w25
	hadd_u.w	$w28,$w28,$w28
	hadd_u.w	$w14,$w14,$w14
	hadd_u.w	$w27,$w27,$w27
	hadd_u.w	$w24,$w24,$w24
	hadd_u.w	$w26,$w26,$w26
	dpadd_u.w	$w9,$w23,$w23
	dpadd_u.w	$w8,$w22,$w22
	dpadd_u.w	$w7,$w21,$w21
	dpadd_u.w	$w11,$w20,$w20
	addv.w	$w15,$w15,$w29
	addv.w	$w25,$w25,$w28
	addv.w	$w14,$w14,$w27
	addv.w	$w24,$w24,$w26
	addv.w	$w9,$w9,$w8
	addv.w	$w7,$w7,$w11
	addv.w	$w4,$w15,$w25
	addv.w	$w3,$w14,$w24
	addv.w	$w0,$w0,$w9
	addv.w	$w6,$w6,$w7
	addv.w	$w1,$w1,$w16
	addv.w	$w5,$w5,$w10
	addv.w	$w2,$w2,$w4
	addv.w	$w13,$w13,$w3
	addv.w	$w0,$w0,$w6
	addv.w	$w2,$w2,$w13
	addv.w	$w1,$w1,$w5
	copy_s.w	$6,$w2[1]
	addv.w	$w0,$w0,$w1
	copy_s.w	$2,$w2[0]
	copy_s.w	$3,$w0[1]
	addu	$2,$2,$6
	copy_s.w	$16,$w0[0]
	addu	$16,$16,$3
	copy_s.w	$6,$w2[2]
	copy_s.w	$3,$w0[2]
	addu	$6,$2,$6
	addu	$16,$16,$3
	copy_s.w	$2,$w0[3]
	copy_s.w	$3,$w2[3]
	addu	$16,$16,$2
	addu	$2,$6,$3
	dsll	$16,$16,32
	dext	$2,$2,0,32
	daddu	$16,$16,$2
	li	$8,16			# 0x10
	move	$3,$0
	.align	3
.L1976:
	daddiu	$6,$4,16
	.align	3
.L1975:
	lbu	$2,0($4)
	daddiu	$4,$4,1
	madd	$2,$2
	bne	$6,$4,.L1975
	addu	$3,$2,$3

	addiu	$8,$8,-1
	beq	$8,$0,.L1981
	move	$4,$7

	b	.L1976
	daddu	$7,$7,$5

.L1981:
	mflo	$2
	dext	$3,$3,0,32
	dsll	$2,$2,32
	daddu	$2,$2,$3
	beq	$2,$16,.L1983
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC52)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC52)

	ld	$31,24($sp)
	move	$2,$16
	ldc1	$f29,72($sp)
	ld	$28,16($sp)
	ldc1	$f28,64($sp)
	ld	$16,8($sp)
	ldc1	$f27,56($sp)
	ldc1	$f26,48($sp)
	ldc1	$f25,40($sp)
	ldc1	$f24,32($sp)
	jr	$31
	daddiu	$sp,$sp,80

.L1983:
	ld	$4,%got_page(.LC51)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC51)

	ld	$31,24($sp)
	move	$2,$16
	ldc1	$f29,72($sp)
	ld	$28,16($sp)
	ldc1	$f28,64($sp)
	ld	$16,8($sp)
	ldc1	$f27,56($sp)
	ldc1	$f26,48($sp)
	ldc1	$f25,40($sp)
	ldc1	$f24,32($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl
	.size	_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl, .-_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl
	.section	.rodata.str1.8
	.align	3
.LC53:
	.ascii	"blockfill_s_4x4 test fail\000"
	.align	3
.LC54:
	.ascii	"blockfill_s_4x4 test success\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls
	.type	_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls, @function
_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	dsll	$5,$5,1
	ldi.d	$w0,0
	insert.h	$w0[0],$6
	sd	$28,0($sp)
	daddu	$3,$4,$5
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls)))
	insert.h	$w0[4],$6
	daddu	$2,$3,$5
	daddu	$28,$28,$25
	sd	$31,8($sp)
	shf.h	$w0,$w0,0
	daddu	$9,$2,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls)))
	vsd	$w0,0,0($4)
	vsd	$w0,0,0($3)
	daddiu	$7,$4,8
	li	$8,4			# 0x4
	vsd	$w0,0,0($2)
	vsd	$w0,0,0($9)
.L1988:
	daddiu	$2,$7,-8
.L1987:
	lh	$3,0($2)
	bne	$3,$6,.L1992
	daddiu	$2,$2,2

	bne	$2,$7,.L1987
	nop

	addiu	$8,$8,-1
	bne	$8,$0,.L1988
	daddu	$7,$2,$5

	ld	$4,%got_page(.LC54)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC54)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1992:
	ld	$4,%got_page(.LC53)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC53)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls
	.size	_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls, .-_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls
	.section	.rodata.str1.8
	.align	3
.LC55:
	.ascii	"blockfill_s_8x8 test fail\000"
	.align	3
.LC56:
	.ascii	"blockfill_s_8x8 test success\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls
	.type	_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls, @function
_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$8,$5,1
	daddiu	$sp,$sp,-16
	ldi.d	$w0,0
	insert.h	$w0[0],$6
	daddu	$9,$4,$8
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls)))
	insert.h	$w0[4],$6
	daddu	$2,$9,$8
	sd	$31,8($sp)
	shf.h	$w0,$w0,0
	daddu	$28,$28,$25
	dlsa	$5,$5,$2,2
	st.d	$w0,0($4)
	daddu	$10,$2,$8
	st.d	$w0,0($9)
	daddu	$3,$5,$8
	st.d	$w0,0($2)
	daddiu	$7,$4,16
	st.d	$w0,0($10)
	daddu	$2,$3,$8
	st.d	$w0,0($5)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls)))
	st.d	$w0,0($3)
	daddu	$5,$2,$8
	li	$4,8			# 0x8
	st.d	$w0,0($2)
	st.d	$w0,0($5)
.L1997:
	daddiu	$2,$7,-16
.L1996:
	lh	$3,0($2)
	bne	$3,$6,.L2001
	daddiu	$2,$2,2

	bne	$2,$7,.L1996
	nop

	addiu	$4,$4,-1
	bne	$4,$0,.L1997
	daddu	$7,$2,$8

	ld	$4,%got_page(.LC56)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC56)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L2001:
	ld	$4,%got_page(.LC55)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC55)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls
	.size	_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls, .-_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls
	.section	.rodata.str1.8
	.align	3
.LC57:
	.ascii	"blockfill_s_16x16 test fail\000"
	.align	3
.LC58:
	.ascii	"blockfill_s_16x16 test success\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls
	.type	_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls, @function
_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	daddiu	$sp,$sp,-16
	ldi.d	$w0,0
	insert.h	$w0[0],$6
	daddu	$10,$4,$5
	sd	$28,0($sp)
	daddiu	$7,$4,32
	insert.h	$w0[4],$6
	daddu	$8,$10,$5
	shf.h	$w0,$w0,0
	sd	$31,8($sp)
	st.d	$w0,0($4)
	daddu	$3,$8,$5
	st.d	$w0,16($4)
	st.d	$w0,0($10)
	st.d	$w0,16($10)
	daddu	$9,$3,$5
	st.d	$w0,0($8)
	st.d	$w0,16($8)
	st.d	$w0,0($3)
	daddu	$2,$9,$5
	st.d	$w0,16($3)
	st.d	$w0,0($9)
	st.d	$w0,16($9)
	daddu	$4,$2,$5
	st.d	$w0,0($2)
	st.d	$w0,16($2)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls)))
	daddu	$8,$4,$5
	st.d	$w0,0($4)
	st.d	$w0,16($4)
	daddu	$28,$28,$25
	daddu	$3,$8,$5
	st.d	$w0,0($8)
	st.d	$w0,16($8)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls)))
	daddu	$2,$3,$5
	st.d	$w0,0($3)
	st.d	$w0,16($3)
	li	$11,16			# 0x10
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
	st.d	$w0,0($3)
	st.d	$w0,16($3)
.L2006:
	b	.L2005
	daddiu	$2,$7,-32

	.align	3
.L2003:
	beq	$2,$7,.L2010
	nop

.L2005:
	lh	$3,0($2)
	beq	$3,$6,.L2003
	daddiu	$2,$2,2

	ld	$4,%got_page(.LC57)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC57)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L2010:
	addiu	$11,$11,-1
	bne	$11,$0,.L2006
	daddu	$7,$2,$5

	ld	$4,%got_page(.LC58)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC58)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls
	.size	_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls, .-_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls
	.section	.rodata.str1.8
	.align	3
.LC59:
	.ascii	"blockfill_s_32x32 test fail\000"
	.align	3
.LC60:
	.ascii	"blockfill_s_32x32 test success\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls
	.type	_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls, @function
_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	daddiu	$sp,$sp,-16
	ldi.d	$w0,0
	insert.h	$w0[0],$6
	daddu	$2,$4,$5
	sd	$31,8($sp)
	insert.h	$w0[4],$6
	shf.h	$w0,$w0,0
	daddu	$11,$2,$5
	sd	$28,0($sp)
	st.d	$w0,0($4)
	st.d	$w0,16($4)
	daddu	$10,$11,$5
	st.d	$w0,32($4)
	st.d	$w0,48($4)
	st.d	$w0,0($2)
	daddu	$9,$10,$5
	st.d	$w0,16($2)
	st.d	$w0,32($2)
	st.d	$w0,48($2)
	daddu	$8,$9,$5
	st.d	$w0,0($11)
	st.d	$w0,16($11)
	st.d	$w0,32($11)
	daddu	$14,$8,$5
	st.d	$w0,48($11)
	st.d	$w0,0($10)
	st.d	$w0,16($10)
	daddu	$3,$14,$5
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
	daddiu	$7,$4,64
	st.d	$w0,0($14)
	daddu	$11,$12,$5
	st.d	$w0,16($14)
	st.d	$w0,32($14)
	st.d	$w0,48($14)
	daddu	$10,$11,$5
	st.d	$w0,0($3)
	st.d	$w0,16($3)
	st.d	$w0,32($3)
	daddu	$9,$10,$5
	st.d	$w0,48($3)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls)))
	st.d	$w0,0($2)
	daddu	$8,$9,$5
	st.d	$w0,16($2)
	st.d	$w0,32($2)
	st.d	$w0,48($2)
	daddu	$4,$8,$5
	daddu	$28,$28,$25
	st.d	$w0,0($13)
	st.d	$w0,16($13)
	daddu	$3,$4,$5
	st.d	$w0,32($13)
	st.d	$w0,48($13)
	st.d	$w0,0($12)
	daddu	$2,$3,$5
	st.d	$w0,16($12)
	st.d	$w0,32($12)
	st.d	$w0,48($12)
	daddu	$25,$2,$5
	st.d	$w0,0($11)
	st.d	$w0,16($11)
	st.d	$w0,32($11)
	daddu	$24,$25,$5
	st.d	$w0,48($11)
	st.d	$w0,0($10)
	st.d	$w0,16($10)
	daddu	$15,$24,$5
	st.d	$w0,32($10)
	st.d	$w0,48($10)
	st.d	$w0,0($9)
	daddu	$14,$15,$5
	st.d	$w0,16($9)
	st.d	$w0,32($9)
	st.d	$w0,48($9)
	daddu	$13,$14,$5
	st.d	$w0,0($8)
	st.d	$w0,16($8)
	st.d	$w0,32($8)
	daddu	$12,$13,$5
	st.d	$w0,48($8)
	st.d	$w0,0($4)
	st.d	$w0,16($4)
	daddu	$11,$12,$5
	st.d	$w0,32($4)
	st.d	$w0,48($4)
	st.d	$w0,0($3)
	daddu	$10,$11,$5
	st.d	$w0,16($3)
	st.d	$w0,32($3)
	st.d	$w0,48($3)
	daddu	$9,$10,$5
	st.d	$w0,0($2)
	st.d	$w0,16($2)
	st.d	$w0,32($2)
	daddu	$8,$9,$5
	st.d	$w0,48($2)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls)))
	st.d	$w0,0($25)
	daddu	$4,$8,$5
	st.d	$w0,16($25)
	st.d	$w0,32($25)
	st.d	$w0,48($25)
	daddu	$3,$4,$5
	li	$31,32			# 0x20
	st.d	$w0,0($24)
	st.d	$w0,16($24)
	daddu	$2,$3,$5
	st.d	$w0,32($24)
	st.d	$w0,48($24)
	st.d	$w0,0($15)
	daddu	$25,$2,$5
	st.d	$w0,16($15)
	st.d	$w0,32($15)
	st.d	$w0,48($15)
	st.d	$w0,0($14)
	st.d	$w0,16($14)
	st.d	$w0,32($14)
	st.d	$w0,48($14)
	st.d	$w0,0($13)
	st.d	$w0,16($13)
	st.d	$w0,32($13)
	st.d	$w0,48($13)
	st.d	$w0,0($12)
	st.d	$w0,16($12)
	st.d	$w0,32($12)
	st.d	$w0,48($12)
	st.d	$w0,0($11)
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
	st.d	$w0,0($25)
	st.d	$w0,16($25)
	st.d	$w0,32($25)
	st.d	$w0,48($25)
.L2015:
	b	.L2014
	daddiu	$2,$7,-64

	.align	3
.L2012:
	beq	$2,$7,.L2019
	nop

.L2014:
	lh	$3,0($2)
	beq	$3,$6,.L2012
	daddiu	$2,$2,2

	ld	$4,%got_page(.LC59)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC59)

	ld	$31,8($sp)
.L2020:
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L2019:
	addiu	$31,$31,-1
	bne	$31,$0,.L2015
	daddu	$7,$2,$5

	ld	$4,%got_page(.LC60)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC60)

	b	.L2020
	ld	$31,8($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls
	.size	_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls, .-_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls
	.section	.rodata.str1.8
	.align	3
.LC61:
	.ascii	"sse_pp_a_8x8 test success\000"
	.align	3
.LC62:
	.ascii	"sse_pp_a_8x8 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l
	.type	_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l, @function
_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$11,$4,$5
	daddu	$10,$6,$7
	daddu	$12,$10,$7
	daddu	$2,$11,$5
	dlsa	$9,$5,$2,1
	dlsa	$15,$7,$12,1
	daddu	$8,$9,$5
	daddu	$14,$15,$7
	daddiu	$sp,$sp,-32
	daddu	$3,$8,$5
	daddu	$13,$14,$7
	sd	$28,16($sp)
	daddu	$24,$12,$7
	sd	$16,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l)))
	mtlo	$0
	sd	$31,24($sp)
	vbld	$w2,0($2)
	vbld	$w4,0($12)
	daddu	$2,$2,$5
	vbld	$w7,0($9)
	daddu	$12,$13,$7
	daddu	$9,$3,$5
	vbld	$w1,0($2)
	vextb_u.h	$w4,$w4
	vbld	$w8,0($9)
	vbld	$w0,0($4)
	vbld	$w15,0($6)
	vbld	$w3,0($11)
	vextb_u.h	$w0,$w0
	vextb_u.h	$w3,$w3
	vextb_u.h	$w2,$w2
	vbld	$w14,0($10)
	subv.h	$w2,$w2,$w4
	vextb_u.h	$w15,$w15
	vextb_u.h	$w14,$w14
	vbld	$w13,0($24)
	subv.h	$w3,$w3,$w14
	vextb_u.h	$w1,$w1
	dotp_s.w	$w4,$w3,$w3
	vextb_u.h	$w13,$w13
	dotp_s.w	$w3,$w2,$w2
	subv.h	$w1,$w1,$w13
	vbld	$w6,0($8)
	dotp_s.w	$w2,$w1,$w1
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	vbld	$w5,0($3)
	vextb_u.h	$w8,$w8
	vextb_u.h	$w5,$w5
	vbld	$w11,0($15)
	vbld	$w10,0($14)
	vextb_u.h	$w11,$w11
	vextb_u.h	$w10,$w10
	vbld	$w9,0($13)
	vbld	$w12,0($12)
	vextb_u.h	$w9,$w9
	vextb_u.h	$w12,$w12
	subv.h	$w0,$w0,$w15
	subv.h	$w7,$w7,$w11
	subv.h	$w6,$w6,$w10
	subv.h	$w5,$w5,$w9
	subv.h	$w8,$w8,$w12
	dotp_s.w	$w0,$w0,$w0
	dpadd_s.w	$w3,$w5,$w5
	dpadd_s.w	$w0,$w7,$w7
	dpadd_s.w	$w2,$w8,$w8
	move.v	$w1,$w0
	addv.w	$w2,$w3,$w2
	move.v	$w0,$w4
	dpadd_s.w	$w0,$w6,$w6
	addv.w	$w0,$w1,$w0
	addv.w	$w0,$w0,$w2
	copy_s.w	$2,$w0[1]
	copy_s.w	$16,$w0[0]
	addu	$16,$16,$2
	daddu	$28,$28,$25
	copy_s.w	$2,$w0[2]
	addu	$16,$16,$2
	copy_s.w	$2,$w0[3]
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l)))
	li	$9,8			# 0x8
	addu	$16,$16,$2
	.align	3
.L2023:
	daddiu	$8,$4,8
	.align	3
.L2022:
	daddiu	$6,$6,1
	lbu	$3,0($4)
	daddiu	$4,$4,1
	lbu	$2,-1($6)
	subu	$2,$3,$2
	bne	$8,$4,.L2022
	madd	$2,$2

	addiu	$9,$9,-1
	move	$4,$11
	beq	$9,$0,.L2028
	move	$6,$10

	daddu	$11,$11,$5
	b	.L2023
	daddu	$10,$10,$7

	.align	3
.L2028:
	mflo	$2
	beq	$16,$2,.L2030
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC62)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC62)

	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

.L2030:
	ld	$4,%got_page(.LC61)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC61)

	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l
	.size	_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l, .-_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l
	.section	.rodata.str1.8
	.align	3
.LC63:
	.ascii	"sse_pp_a_16x16 test success\000"
	.align	3
.LC64:
	.ascii	"sse_pp_a_16x16 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l
	.type	_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l, @function
_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$2,$4,8
	ldi.w	$w12,0
	move.v	$w15,$w12
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l)))
	daddiu	$3,$6,8
	move.v	$w13,$w12
	daddu	$28,$28,$25
	sd	$31,56($sp)
	dsll	$31,$7,1
	move.v	$w14,$w12
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l)))
	sd	$20,32($sp)
	move	$11,$6
	daddu	$20,$16,$5
	sd	$19,24($sp)
	move	$10,$4
	daddu	$19,$31,$7
	sd	$18,16($sp)
	li	$25,4			# 0x4
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,2
	sd	$21,40($sp)
.L2032:
	daddu	$12,$2,$5
	daddu	$9,$3,$7
	vbld	$w1,0($3)
	vbld	$w0,0($2)
	daddu	$14,$12,$5
	daddu	$3,$10,$5
	vbld	$w6,0($12)
	vbld	$w8,0($10)
	daddu	$8,$7,$9
	vbld	$w7,0($3)
	daddu	$24,$16,$10
	vbld	$w19,0($11)
	daddu	$3,$19,$11
	daddu	$15,$20,$10
	vextb_u.h	$w0,$w0
	vextb_u.h	$w17,$w7
	daddu	$2,$5,$14
	daddu	$13,$11,$7
	vextb_u.h	$w10,$w6
	vbld	$w5,0($24)
	daddu	$12,$31,$11
	daddu	$21,$7,$8
	vbld	$w4,0($14)
	vextb_u.h	$w16,$w5
	addiu	$25,$25,-1
	vextb_u.h	$w9,$w4
	vbld	$w3,0($15)
	vbld	$w2,0($2)
	vextb_u.h	$w11,$w3
	vextb_u.h	$w8,$w8
	vbld	$w3,0($3)
	vextb_u.h	$w2,$w2
	vextb_u.h	$w19,$w19
	vextb_u.h	$w1,$w1
	vbld	$w7,0($13)
	subv.h	$w1,$w0,$w1
	vbld	$w6,0($9)
	move.v	$w0,$w12
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	vbld	$w5,0($12)
	vbld	$w4,0($8)
	vextb_u.h	$w5,$w5
	vextb_u.h	$w4,$w4
	vbld	$w18,0($21)
	vextb_u.h	$w3,$w3
	vextb_u.h	$w18,$w18
	subv.h	$w8,$w8,$w19
	subv.h	$w7,$w17,$w7
	subv.h	$w6,$w10,$w6
	subv.h	$w5,$w16,$w5
	subv.h	$w4,$w9,$w4
	subv.h	$w3,$w11,$w3
	subv.h	$w2,$w2,$w18
	dpadd_s.w	$w0,$w8,$w8
	dpadd_s.w	$w15,$w1,$w1
	dpadd_s.w	$w13,$w7,$w7
	dpadd_s.w	$w14,$w6,$w6
	dpadd_s.w	$w0,$w5,$w5
	dpadd_s.w	$w15,$w4,$w4
	move.v	$w12,$w0
	dpadd_s.w	$w13,$w3,$w3
	dpadd_s.w	$w14,$w2,$w2
	daddu	$10,$10,$18
	daddu	$11,$11,$17
	daddu	$2,$5,$2
	bne	$25,$0,.L2032
	daddu	$3,$7,$21

	addv.w	$w0,$w0,$w15
	addv.w	$w13,$w13,$w14
	addv.w	$w0,$w0,$w13
	copy_s.w	$2,$w0[1]
	copy_s.w	$16,$w0[0]
	addu	$16,$16,$2
	copy_s.w	$3,$w0[2]
	copy_s.w	$2,$w0[3]
	addu	$16,$16,$3
	li	$11,16			# 0x10
	addu	$16,$16,$2
	mtlo	$0
	.align	3
.L2034:
	move	$8,$4
	move	$9,$6
	daddiu	$10,$4,16
	.align	3
.L2033:
	daddiu	$9,$9,1
	lbu	$3,0($8)
	daddiu	$8,$8,1
	lbu	$2,-1($9)
	subu	$2,$3,$2
	bne	$10,$8,.L2033
	madd	$2,$2

	addiu	$11,$11,-1
	daddu	$4,$4,$5
	bne	$11,$0,.L2034
	daddu	$6,$6,$7

	mflo	$2
	beq	$16,$2,.L2041
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC64)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC64)

	ld	$31,56($sp)
	move	$2,$16
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

.L2041:
	ld	$4,%got_page(.LC63)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC63)

	ld	$31,56($sp)
	move	$2,$16
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
	.end	_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l
	.size	_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l, .-_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l
	.section	.rodata.str1.8
	.align	3
.LC65:
	.ascii	"sse_pp_a_64x64 test success\000"
	.align	3
.LC66:
	.ascii	"sse_pp_a_64x64 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l
	.type	_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l, @function
_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$3,$6
	ldi.w	$w8,0
	move.v	$w11,$w8
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l)))
	move	$2,$4
	move.v	$w9,$w8
	daddu	$28,$28,$25
	li	$8,64			# 0x40
	sd	$31,24($sp)
	move.v	$w10,$w8
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l)))
	sd	$16,8($sp)
	.align	3
.L2043:
	addiu	$8,$8,-1
	vbld	$w7,0($2)
	vbld	$w6,8($2)
	vbld	$w5,16($2)
	vbld	$w4,24($2)
	vbld	$w3,32($2)
	vbld	$w2,40($2)
	vbld	$w1,48($2)
	vbld	$w0,56($2)
	vbld	$w19,0($3)
	vbld	$w18,8($3)
	vbld	$w17,16($3)
	vbld	$w16,24($3)
	vbld	$w15,32($3)
	vbld	$w14,40($3)
	vbld	$w13,48($3)
	vbld	$w12,56($3)
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
	daddu	$2,$2,$5
	bne	$8,$0,.L2043
	daddu	$3,$3,$7

	addv.w	$w8,$w8,$w11
	addv.w	$w9,$w9,$w10
	addv.w	$w8,$w8,$w9
	copy_s.w	$2,$w8[1]
	copy_s.w	$16,$w8[0]
	addu	$16,$16,$2
	copy_s.w	$3,$w8[2]
	copy_s.w	$2,$w8[3]
	addu	$16,$16,$3
	li	$11,64			# 0x40
	addu	$16,$16,$2
	mtlo	$0
	.align	3
.L2045:
	move	$8,$4
	move	$9,$6
	daddiu	$10,$4,64
	.align	3
.L2044:
	daddiu	$9,$9,1
	lbu	$3,0($8)
	daddiu	$8,$8,1
	lbu	$2,-1($9)
	subu	$2,$3,$2
	bne	$10,$8,.L2044
	madd	$2,$2

	addiu	$11,$11,-1
	daddu	$4,$4,$5
	bne	$11,$0,.L2045
	daddu	$6,$6,$7

	mflo	$2
	beq	$16,$2,.L2052
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC66)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC66)

	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

.L2052:
	ld	$4,%got_page(.LC65)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC65)

	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l
	.size	_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l, .-_ZN12_GLOBAL__N_114sse_pp_a_64x64EPKhlS1_l
	.section	.rodata.str1.8
	.align	3
.LC67:
	.ascii	"sse_pp_a_32x32 test success\000"
	.align	3
.LC68:
	.ascii	"sse_pp_a_32x32 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l
	.type	_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l, @function
_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	move	$3,$6
	ldi.w	$w12,0
	move.v	$w15,$w12
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l)))
	move	$2,$4
	move.v	$w13,$w12
	daddu	$28,$28,$25
	sd	$31,56($sp)
	li	$24,16			# 0x10
	move.v	$w14,$w12
	sd	$21,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l)))
	dsll	$21,$5,1
	sd	$20,32($sp)
	daddiu	$31,$7,8
	dsll	$20,$7,1
	sd	$19,24($sp)
	daddiu	$25,$7,24
	daddiu	$19,$5,8
	sd	$18,16($sp)
	daddiu	$18,$5,16
	sd	$17,8($sp)
	daddiu	$17,$5,24
	sd	$16,0($sp)
	daddiu	$16,$7,16
	.align	3
.L2054:
	daddu	$15,$2,$5
	daddu	$14,$2,$19
	vbld	$w7,0($2)
	vbld	$w6,8($2)
	daddu	$13,$2,$18
	daddu	$12,$2,$17
	vbld	$w5,16($2)
	vbld	$w4,24($2)
	daddu	$11,$3,$7
	daddu	$10,$3,$31
	vbld	$w19,0($3)
	vbld	$w18,8($3)
	daddu	$9,$3,$16
	daddu	$8,$3,$25
	vbld	$w17,16($3)
	vbld	$w16,24($3)
	addiu	$24,$24,-1
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	vextb_u.h	$w5,$w5
	vextb_u.h	$w4,$w4
	vbld	$w3,0($15)
	vbld	$w2,0($14)
	vextb_u.h	$w3,$w3
	vextb_u.h	$w2,$w2
	vbld	$w1,0($13)
	vbld	$w0,0($12)
	vextb_u.h	$w1,$w1
	vextb_u.h	$w0,$w0
	vextb_u.h	$w19,$w19
	vextb_u.h	$w18,$w18
	vextb_u.h	$w17,$w17
	vextb_u.h	$w16,$w16
	vbld	$w11,0($11)
	vbld	$w10,0($10)
	vextb_u.h	$w11,$w11
	vextb_u.h	$w10,$w10
	vbld	$w9,0($9)
	vbld	$w8,0($8)
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
	daddu	$2,$2,$21
	bne	$24,$0,.L2054
	daddu	$3,$3,$20

	addv.w	$w12,$w12,$w15
	addv.w	$w13,$w13,$w14
	addv.w	$w12,$w12,$w13
	copy_s.w	$2,$w12[1]
	copy_s.w	$16,$w12[0]
	addu	$16,$16,$2
	copy_s.w	$3,$w12[2]
	copy_s.w	$2,$w12[3]
	addu	$16,$16,$3
	li	$11,32			# 0x20
	addu	$16,$16,$2
	mtlo	$0
	.align	3
.L2056:
	move	$8,$4
	move	$9,$6
	daddiu	$10,$4,32
	.align	3
.L2055:
	daddiu	$9,$9,1
	lbu	$3,0($8)
	daddiu	$8,$8,1
	lbu	$2,-1($9)
	subu	$2,$3,$2
	bne	$10,$8,.L2055
	madd	$2,$2

	addiu	$11,$11,-1
	daddu	$4,$4,$5
	bne	$11,$0,.L2056
	daddu	$6,$6,$7

	mflo	$2
	beq	$16,$2,.L2063
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC68)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC68)

	ld	$31,56($sp)
	move	$2,$16
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

.L2063:
	ld	$4,%got_page(.LC67)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC67)

	ld	$31,56($sp)
	move	$2,$16
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
	.end	_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l
	.size	_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l, .-_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l
	.section	.rodata.str1.8
	.align	3
.LC69:
	.ascii	"sse_pp_a_4x4 test success\000"
	.align	3
.LC70:
	.ascii	"sse_pp_a_4x4 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l
	.type	_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l, @function
_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$11,$4,$5
	daddu	$10,$6,$7
	daddu	$2,$11,$5
	daddu	$3,$10,$7
	daddiu	$sp,$sp,-32
	daddu	$9,$2,$5
	daddu	$8,$3,$7
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l)))
	sd	$16,8($sp)
	daddu	$28,$28,$25
	mtlo	$0
	sd	$31,24($sp)
	vblw	$w1,0($11)
	vblw	$w2,0($2)
	vblw	$w0,0($4)
	vblw	$w3,0($6)
	insve.w	$w0[1],$w1[0]
	vblw	$w5,0($10)
	vblw	$w1,0($9)
	vextb_u.h	$w0,$w0
	insve.w	$w2[1],$w1[0]
	vblw	$w4,0($8)
	vblw	$w1,0($3)
	vextb_u.h	$w2,$w2
	insve.w	$w3[1],$w5[0]
	insve.w	$w1[1],$w4[0]
	vextb_u.h	$w3,$w3
	vextb_u.h	$w1,$w1
	subv.h	$w0,$w0,$w3
	subv.h	$w1,$w2,$w1
	dotp_s.w	$w0,$w0,$w0
	dpadd_s.w	$w0,$w1,$w1
	copy_s.w	$2,$w0[1]
	copy_s.w	$16,$w0[0]
	addu	$16,$16,$2
	copy_s.w	$3,$w0[2]
	addu	$16,$16,$3
	copy_s.w	$2,$w0[3]
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l)))
	li	$9,4			# 0x4
	addu	$16,$16,$2
.L2066:
	daddiu	$8,$4,4
.L2065:
	daddiu	$6,$6,1
	lbu	$3,0($4)
	daddiu	$4,$4,1
	lbu	$2,-1($6)
	subu	$2,$3,$2
	bne	$8,$4,.L2065
	madd	$2,$2

	addiu	$9,$9,-1
	move	$4,$11
	beq	$9,$0,.L2071
	move	$6,$10

	daddu	$11,$11,$5
	b	.L2066
	daddu	$10,$10,$7

	.align	3
.L2071:
	mflo	$2
	beq	$16,$2,.L2073
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC70)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC70)

	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L2073:
	ld	$4,%got_page(.LC69)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC69)

	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l
	.size	_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l, .-_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l
	.section	.rodata.str1.8
	.align	3
.LC71:
	.ascii	"satd_4x4 test success\000"
	.align	3
.LC72:
	.ascii	"satd_4x4 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
	.type	_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l, @function
_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l:
	.frame	$sp,64,$31		# vars= 32, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$15,$4,$5
	daddu	$14,$6,$7
	daddu	$2,$14,$7
	daddu	$3,$15,$5
	daddiu	$sp,$sp,-64
	daddu	$8,$2,$7
	daddu	$9,$3,$5
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)))
	sd	$16,40($sp)
	daddu	$28,$28,$25
	move	$13,$sp
	sd	$31,56($sp)
	vblw	$w1,0($15)
	vblw	$w0,0($14)
	vblw	$w2,0($9)
	vblw	$w4,0($4)
	vblw	$w3,0($6)
	insve.w	$w4[1],$w1[0]
	insve.w	$w3[1],$w0[0]
	hadd_u.h	$w5,$w4,$w4
	vblw	$w0,0($2)
	hadd_u.h	$w7,$w3,$w3
	vblw	$w1,0($3)
	hsub_u.h	$w4,$w4,$w4
	insve.w	$w1[1],$w2[0]
	hsub_u.h	$w3,$w3,$w3
	vblw	$w2,0($8)
	ilvr.w	$w4,$w4,$w5
	insve.w	$w0[1],$w2[0]
	ilvr.w	$w3,$w3,$w7
	hadd_u.h	$w2,$w1,$w1
	subv.h	$w3,$w4,$w3
	hadd_u.h	$w6,$w0,$w0
	hsub_u.h	$w1,$w1,$w1
	hsub_u.h	$w0,$w0,$w0
	ilvr.w	$w1,$w1,$w2
	ilvr.w	$w0,$w0,$w6
	subv.h	$w0,$w1,$w0
	addv.h	$w1,$w3,$w0
	subv.h	$w0,$w0,$w3
	move.v	$w2,$w1
	insve.d	$w2[1],$w0[0]
	ilvl.d	$w0,$w0,$w1
	move.v	$w3,$w2
	addv.h	$w2,$w2,$w0
	subv.h	$w1,$w0,$w3
	ilvod.h	$w0,$w1,$w2
	ilvev.h	$w1,$w1,$w2
	vabs.h	$w0,$w0
	vabs.h	$w1,$w1
	max_s.h	$w0,$w0,$w1
	hadd_s.w	$w0,$w0,$w0
	copy_s.w	$2,$w0[1]
	copy_s.w	$16,$w0[0]
	addu	$16,$16,$2
	copy_s.w	$2,$w0[2]
	addu	$16,$16,$2
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)))
	copy_s.w	$2,$w0[3]
	daddiu	$24,$sp,32
	addu	$16,$16,$2
	move	$12,$sp
.L2075:
	lbu	$2,0($4)
	daddiu	$12,$12,8
	lbu	$25,1($6)
	lbu	$9,0($6)
	lbu	$11,1($4)
	lbu	$3,2($4)
	subu	$9,$2,$9
	lbu	$8,2($6)
	subu	$11,$11,$25
	lbu	$10,3($4)
	move	$4,$15
	lbu	$25,3($6)
	subu	$2,$9,$11
	addu	$9,$9,$11
	sll	$2,$2,16
	subu	$8,$3,$8
	addu	$2,$2,$9
	move	$6,$14
	subu	$9,$10,$25
	daddu	$15,$15,$5
	subu	$3,$8,$9
	addu	$8,$8,$9
	sll	$3,$3,16
	daddu	$14,$14,$7
	addu	$3,$3,$8
	addu	$8,$2,$3
	subu	$2,$2,$3
	sw	$8,-8($12)
	bne	$24,$12,.L2075
	sw	$2,-4($12)

	li	$7,65536			# 0x10000
	daddiu	$10,$13,8
	move	$9,$0
	addiu	$7,$7,1
.L2076:
	lw	$2,0($13)
	daddiu	$13,$13,4
	lw	$5,4($13)
	lw	$4,20($13)
	lw	$3,12($13)
	addu	$8,$2,$5
	subu	$2,$2,$5
	addu	$5,$3,$4
	subu	$3,$3,$4
	addu	$6,$8,$5
	addu	$4,$2,$3
	subu	$5,$8,$5
	srl	$12,$6,15
	srl	$14,$4,15
	subu	$3,$2,$3
	srl	$11,$5,15
	and	$24,$12,$7
	and	$15,$14,$7
	and	$2,$11,$7
	srl	$8,$3,15
	sll	$12,$24,16
	sll	$14,$15,16
	subu	$12,$12,$24
	subu	$14,$14,$15
	and	$8,$8,$7
	sll	$11,$2,16
	addu	$4,$4,$14
	subu	$11,$11,$2
	addu	$6,$6,$12
	sll	$2,$8,16
	xor	$4,$4,$14
	subu	$8,$2,$8
	xor	$6,$6,$12
	addu	$5,$5,$11
	addu	$2,$3,$8
	addu	$4,$4,$6
	xor	$5,$5,$11
	addu	$4,$4,$5
	xor	$2,$2,$8
	addu	$2,$2,$4
	srl	$3,$2,16
	andi	$2,$2,0xffff
	addu	$2,$3,$2
	bne	$10,$13,.L2076
	addu	$9,$2,$9

	srl	$9,$9,1
	beq	$9,$16,.L2083
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC72)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC72)

	ld	$31,56($sp)
	move	$2,$16
	ld	$28,48($sp)
	ld	$16,40($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L2083:
	ld	$4,%got_page(.LC71)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC71)

	ld	$31,56($sp)
	move	$2,$16
	ld	$28,48($sp)
	ld	$16,40($sp)
	jr	$31
	daddiu	$sp,$sp,64

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
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$19,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l)))
	sd	$fp,80($sp)
	move	$fp,$0
	ld	$19,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$23,64($sp)
	dsll	$23,$5,2
	sd	$22,56($sp)
	dsll	$22,$7,2
	sd	$21,48($sp)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	move	$21,$5
	sd	$20,40($sp)
	move	$20,$7
	sd	$18,24($sp)
	move	$18,$4
	sd	$17,16($sp)
	move	$17,$6
	sd	$16,8($sp)
	li	$16,8			# 0x8
	sd	$31,88($sp)
	.align	3
.L2085:
	move	$6,$17
	move	$4,$18
	move	$7,$20
	move	$5,$21
	move	$25,$19
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	addiu	$16,$16,-1

	daddu	$18,$18,$23
	addu	$2,$2,$fp
	daddu	$17,$17,$22
	bne	$16,$0,.L2085
	move	$fp,$2

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
	.align	3
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
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$18,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l)))
	sd	$2,8($sp)
	dsll	$2,$7,2
	ld	$18,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$23,96($sp)
	move	$23,$0
	sd	$22,88($sp)
	move	$22,$6
	sd	$21,80($sp)
	li	$21,8			# 0x8
	sd	$20,72($sp)
	move	$20,$5
	sd	$19,64($sp)
	move	$19,$7
	sd	$16,40($sp)
	move	$16,$4
	sd	$2,16($sp)
	daddiu	$2,$18,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$17,48($sp)
	sd	$2,0($sp)
	.align	3
.L2090:
	daddiu	$17,$16,12
	move	$18,$22
	move	$fp,$16
.L2089:
	ld	$25,0($sp)
	move	$6,$18
	move	$4,$fp
	move	$7,$19
	move	$5,$20
	daddiu	$fp,$fp,4
	jalr	$25
	daddiu	$18,$18,4

	addu	$2,$2,$23
	bne	$fp,$17,.L2089
	move	$23,$2

	ld	$3,8($sp)
	addiu	$21,$21,-1
	daddu	$16,$16,$3
	ld	$3,16($sp)
	bne	$21,$0,.L2090
	daddu	$22,$22,$3

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
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l)))
	sd	$20,40($sp)
	move	$20,$7
	ld	$16,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$19,32($sp)
	move	$19,$6
	sd	$18,24($sp)
	move	$18,$5
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	sd	$17,16($sp)
	move	$25,$16
	sd	$31,56($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$17,$4

	move	$7,$20
	daddiu	$6,$19,4
	move	$5,$18
	daddiu	$4,$17,4
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
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
	.end	_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l
	.align	2
	.align	3
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
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$19,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l)))
	sd	$fp,80($sp)
	li	$fp,3			# 0x3
	ld	$19,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$23,64($sp)
	dsll	$23,$5,2
	sd	$22,56($sp)
	dsll	$22,$7,2
	sd	$21,48($sp)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
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
.L2097:
	move	$6,$17
	move	$4,$18
	move	$7,$20
	move	$5,$21
	move	$25,$19
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	addiu	$fp,$fp,-1

	daddiu	$6,$17,4
	daddiu	$4,$18,4
	move	$7,$20
	move	$5,$21
	move	$25,$19
	addu	$16,$2,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	daddu	$18,$18,$23

	daddu	$17,$17,$22
	addu	$2,$2,$16
	bne	$fp,$0,.L2097
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
	.end	_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l
	.align	2
	.align	3
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
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$19,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l)))
	sd	$22,56($sp)
	move	$22,$5
	ld	$19,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$21,48($sp)
	move	$21,$7
	sd	$20,40($sp)
	daddiu	$20,$4,16
	sd	$18,24($sp)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	move	$18,$0
	sd	$17,16($sp)
	move	$17,$6
	sd	$16,8($sp)
	move	$16,$4
	sd	$31,72($sp)
.L2101:
	move	$6,$17
	move	$4,$16
	move	$7,$21
	move	$5,$22
	move	$25,$19
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	daddiu	$16,$16,4

	daddiu	$17,$17,4
	addu	$2,$2,$18
	bne	$16,$20,.L2101
	move	$18,$2

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
	.align	3
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
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$17,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l)))
	sd	$2,8($sp)
	dsll	$2,$7,2
	ld	$17,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$23,96($sp)
	move	$23,$0
	sd	$22,88($sp)
	move	$22,$6
	sd	$21,80($sp)
	li	$21,3			# 0x3
	sd	$20,72($sp)
	move	$20,$4
	sd	$19,64($sp)
	move	$19,$5
	sd	$18,56($sp)
	move	$18,$7
	sd	$2,16($sp)
	daddiu	$2,$17,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$16,40($sp)
	sd	$2,0($sp)
.L2106:
	daddiu	$16,$20,16
	move	$17,$22
	move	$fp,$20
.L2105:
	ld	$25,0($sp)
	move	$6,$17
	move	$4,$fp
	move	$7,$18
	move	$5,$19
	daddiu	$fp,$fp,4
	jalr	$25
	daddiu	$17,$17,4

	addu	$2,$2,$23
	bne	$fp,$16,.L2105
	move	$23,$2

	ld	$3,8($sp)
	addiu	$21,$21,-1
	daddu	$20,$20,$3
	ld	$3,16($sp)
	bne	$21,$0,.L2106
	daddu	$22,$22,$3

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
	.align	3
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
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$19,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)))
	sd	$fp,80($sp)
	move	$fp,$0
	ld	$19,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$23,64($sp)
	dsll	$23,$5,2
	sd	$22,56($sp)
	dsll	$22,$7,2
	sd	$21,48($sp)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	move	$21,$5
	sd	$20,40($sp)
	move	$20,$7
	sd	$18,24($sp)
	move	$18,$4
	sd	$17,16($sp)
	move	$17,$6
	sd	$16,8($sp)
	li	$16,4			# 0x4
	sd	$31,88($sp)
.L2111:
	move	$6,$17
	move	$4,$18
	move	$7,$20
	move	$5,$21
	move	$25,$19
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	addiu	$16,$16,-1

	daddu	$18,$18,$23
	addu	$2,$2,$fp
	daddu	$17,$17,$22
	bne	$16,$0,.L2111
	move	$fp,$2

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
	.align	3
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
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$18,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l)))
	sd	$2,8($sp)
	dsll	$2,$7,2
	ld	$18,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$23,96($sp)
	move	$23,$0
	sd	$22,88($sp)
	move	$22,$6
	sd	$21,80($sp)
	li	$21,4			# 0x4
	sd	$20,72($sp)
	move	$20,$5
	sd	$19,64($sp)
	move	$19,$7
	sd	$16,40($sp)
	move	$16,$4
	sd	$2,16($sp)
	daddiu	$2,$18,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$17,48($sp)
	sd	$2,0($sp)
.L2116:
	daddiu	$17,$16,12
	move	$18,$22
	move	$fp,$16
.L2115:
	ld	$25,0($sp)
	move	$6,$18
	move	$4,$fp
	move	$7,$19
	move	$5,$20
	daddiu	$fp,$fp,4
	jalr	$25
	daddiu	$18,$18,4

	addu	$2,$2,$23
	bne	$fp,$17,.L2115
	move	$23,$2

	ld	$3,8($sp)
	addiu	$21,$21,-1
	daddu	$16,$16,$3
	ld	$3,16($sp)
	bne	$21,$0,.L2116
	daddu	$22,$22,$3

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
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l)))
	sd	$20,40($sp)
	move	$20,$7
	ld	$16,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$19,32($sp)
	move	$19,$6
	sd	$18,24($sp)
	move	$18,$5
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	sd	$17,16($sp)
	move	$25,$16
	sd	$31,56($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$17,$4

	dlsa	$6,$20,$19,2
	dlsa	$4,$18,$17,2
	move	$7,$20
	move	$5,$18
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
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
	.end	_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l
	.section	.rodata.str1.8
	.align	3
.LC73:
	.ascii	"sad_4x4 test success\000"
	.align	3
.LC74:
	.ascii	"sad_4x4 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l
	.type	_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l, @function
_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	daddu	$12,$4,$5
	daddu	$11,$6,$7
	sd	$28,16($sp)
	daddu	$3,$12,$5
	daddu	$2,$11,$7
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l)))
	sd	$16,8($sp)
	daddu	$8,$2,$7
	daddu	$28,$28,$25
	sd	$31,24($sp)
	vblw	$w3,0($12)
	daddu	$9,$3,$5
	vblw	$w1,0($3)
	vblw	$w0,0($4)
	vblw	$w2,0($6)
	insve.w	$w0[1],$w3[0]
	vblw	$w4,0($9)
	insve.w	$w0[2],$w1[0]
	vblw	$w3,0($2)
	insve.w	$w0[3],$w4[0]
	vblw	$w5,0($11)
	move.v	$w1,$w0
	vblw	$w4,0($8)
	move.v	$w0,$w2
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l)))
	insve.w	$w0[1],$w5[0]
	li	$10,4			# 0x4
	insve.w	$w0[2],$w3[0]
	move	$8,$0
	insve.w	$w0[3],$w4[0]
	asub_u.b	$w0,$w1,$w0
	vacc8b_u.d	$w0,$w0
	copy_s.w	$16,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$16,$16,$2
.L2124:
	daddiu	$9,$4,4
.L2123:
	daddiu	$6,$6,1
	lbu	$2,0($4)
	daddiu	$4,$4,1
	lbu	$3,-1($6)
	subu	$2,$2,$3
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	bne	$9,$4,.L2123
	addu	$8,$2,$8

	addiu	$10,$10,-1
	move	$4,$12
	beq	$10,$0,.L2129
	move	$6,$11

	daddu	$12,$12,$5
	b	.L2124
	daddu	$11,$11,$7

	.align	3
.L2129:
	beq	$16,$8,.L2131
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC74)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC74)

	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L2131:
	ld	$4,%got_page(.LC73)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC73)

	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$19,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_l)))
	sd	$18,16($sp)
	ld	$19,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	ld	$18,%got_page(_ZZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_lE7zeroBuf)($28)
	sd	$21,40($sp)
	move	$21,$7
	move	$7,$0
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	sd	$20,32($sp)
	move	$20,$6
	sd	$17,8($sp)
	daddiu	$6,$18,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_lE7zeroBuf)
	move	$17,$5
	move	$25,$19
	sd	$31,56($sp)
	sd	$16,0($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$16,$4

	move	$5,$17
	ld	$17,%got_page(_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l)($28)
	move	$4,$16
	daddiu	$6,$18,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_lE7zeroBuf)
	move	$7,$0
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l)
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l
1:	jalr	$25
	move	$16,$2

	move	$5,$21
	move	$4,$20
	daddiu	$6,$18,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_lE7zeroBuf)
	move	$25,$19
	sra	$2,$2,2
	move	$7,$0
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	subu	$16,$16,$2

	daddiu	$6,$18,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_lE7zeroBuf)
	move	$5,$21
	move	$4,$20
	move	$25,$17
	move	$7,$0
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l
1:	jalr	$25
	move	$18,$2

	ld	$31,56($sp)
	sra	$3,$2,2
	ld	$28,48($sp)
	subu	$3,$18,$3
	ld	$21,40($sp)
	subu	$3,$16,$3
	ld	$20,32($sp)
	sra	$2,$3,31
	ld	$19,24($sp)
	xor	$3,$2,$3
	ld	$18,16($sp)
	ld	$17,8($sp)
	subu	$2,$3,$2
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_110psyCost_ppILi0EEEiPKhlS2_l
	.section	.rodata.str1.8
	.align	3
.LC75:
	.ascii	"sad_x4_8x8 test success\000"
	.align	3
.LC76:
	.ascii	"sad_x4_8x8 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi:
	.frame	$sp,112,$31		# vars= 16, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$11,$9,2
	daddiu	$sp,$sp,-112
	daddu	$3,$5,$11
	sd	$22,72($sp)
	daddu	$22,$5,$9
	sd	$16,24($sp)
	daddu	$2,$3,$9
	daddu	$16,$6,$11
	sd	$31,104($sp)
	daddu	$12,$2,$9
	daddu	$31,$7,$11
	sd	$fp,96($sp)
	daddu	$11,$8,$11
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi)))
	daddu	$15,$11,$9
	sd	$23,80($sp)
	daddu	$23,$6,$9
	daddu	$28,$28,$25
	sd	$21,64($sp)
	daddu	$25,$31,$9
	daddu	$21,$7,$9
	sd	$20,56($sp)
	daddu	$24,$25,$9
	daddu	$20,$8,$9
	sd	$19,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi)))
	daddiu	$19,$4,64
	sd	$18,40($sp)
	daddu	$18,$16,$9
	sd	$17,32($sp)
	vbld	$w0,0($3)
	daddu	$3,$22,$9
	vbld	$w10,0($2)
	vbld	$w9,0($12)
	daddu	$17,$18,$9
	vbld	$w6,0($3)
	daddu	$2,$23,$9
	daddu	$3,$3,$9
	daddu	$12,$12,$9
	vbld	$w11,320($4)
	vbld	$w7,384($4)
	vbld	$w3,448($4)
	vbld	$w1,0($5)
	vbld	$w8,0($22)
	vbld	$w5,64($4)
	vbld	$w2,128($4)
	insve.d	$w5[1],$w11[0]
	insve.d	$w2[1],$w7[0]
	vbld	$w4,192($4)
	vbld	$w7,0($12)
	insve.d	$w4[1],$w3[0]
	vbld	$w12,256($4)
	vbld	$w3,0($3)
	insve.d	$w8[1],$w10[0]
	daddu	$3,$21,$9
	daddu	$12,$2,$9
	insve.d	$w1[1],$w0[0]
	daddu	$fp,$17,$9
	vbld	$w0,0($4)
	insve.d	$w6[1],$w9[0]
	insve.d	$w0[1],$w12[0]
	insve.d	$w3[1],$w7[0]
	asub_u.b	$w1,$w0,$w1
	asub_u.b	$w7,$w5,$w8
	asub_u.b	$w3,$w4,$w3
	vacc8b_u.d	$w7,$w7
	asub_u.b	$w6,$w2,$w6
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w6,$w6
	addv.d	$w1,$w1,$w7
	vacc8b_u.d	$w3,$w3
	addv.d	$w3,$w6,$w3
	addv.d	$w1,$w1,$w3
	copy_s.w	$13,$w1[2]
	copy_s.w	$14,$w1[0]
	addu	$14,$14,$13
	daddu	$13,$20,$9
	sw	$14,0($10)
	daddu	$14,$15,$9
	vbld	$w3,0($2)
	vbld	$w1,0($6)
	vbld	$w7,0($23)
	vbld	$w6,0($12)
	vbld	$w10,0($16)
	vbld	$w9,0($18)
	vbld	$w8,0($17)
	vbld	$w11,0($fp)
	insve.d	$w1[1],$w10[0]
	insve.d	$w7[1],$w9[0]
	insve.d	$w3[1],$w8[0]
	insve.d	$w6[1],$w11[0]
	asub_u.b	$w1,$w0,$w1
	asub_u.b	$w7,$w5,$w7
	asub_u.b	$w6,$w4,$w6
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w6,$w6
	daddu	$12,$3,$9
	asub_u.b	$w3,$w2,$w3
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w3,$w3
	addv.d	$w1,$w1,$w7
	addv.d	$w3,$w3,$w6
	daddu	$18,$24,$9
	addv.d	$w1,$w1,$w3
	copy_s.w	$16,$w1[0]
	copy_s.w	$2,$w1[2]
	addu	$2,$16,$2
	daddu	$17,$14,$9
	sw	$2,4($10)
	daddu	$16,$13,$9
	vbld	$w8,0($31)
	vbld	$w9,0($25)
	vbld	$w3,0($3)
	vbld	$w1,0($7)
	vbld	$w7,0($21)
	vbld	$w6,0($12)
	insve.d	$w1[1],$w8[0]
	insve.d	$w7[1],$w9[0]
	vbld	$w8,0($24)
	vbld	$w9,0($18)
	insve.d	$w3[1],$w8[0]
	insve.d	$w6[1],$w9[0]
	asub_u.b	$w1,$w0,$w1
	asub_u.b	$w7,$w5,$w7
	asub_u.b	$w6,$w4,$w6
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w6,$w6
	asub_u.b	$w3,$w2,$w3
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w3,$w3
	addv.d	$w1,$w1,$w7
	addv.d	$w3,$w3,$w6
	addv.d	$w1,$w1,$w3
	copy_s.w	$3,$w1[0]
	copy_s.w	$2,$w1[2]
	addu	$2,$3,$2
	sw	$2,8($10)
	daddiu	$fp,$4,512
	vbld	$w3,0($16)
	vbld	$w11,0($17)
	vbld	$w10,0($8)
	vbld	$w9,0($20)
	vbld	$w1,0($13)
	vbld	$w8,0($11)
	vbld	$w7,0($15)
	vbld	$w6,0($14)
	insve.d	$w10[1],$w8[0]
	insve.d	$w9[1],$w7[0]
	insve.d	$w1[1],$w6[0]
	insve.d	$w3[1],$w11[0]
	asub_u.b	$w0,$w0,$w10
	asub_u.b	$w5,$w5,$w9
	asub_u.b	$w1,$w2,$w1
	asub_u.b	$w4,$w4,$w3
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w4,$w4
	addv.d	$w0,$w0,$w5
	addv.d	$w1,$w1,$w4
	move	$17,$0
	addv.d	$w0,$w0,$w1
	move	$25,$0
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	move	$31,$0
	addu	$2,$3,$2
	move	$16,$0
	sd	$2,0($sp)
	sw	$2,12($10)
	.align	3
.L2136:
	daddiu	$18,$4,8
	.align	3
.L2135:
	daddiu	$5,$5,1
	daddiu	$6,$6,1
	lbu	$2,0($4)
	daddiu	$7,$7,1
	daddiu	$8,$8,1
	lbu	$13,-1($8)
	lbu	$12,-1($5)
	daddiu	$4,$4,1
	lbu	$11,-1($6)
	lbu	$3,-1($7)
	subu	$12,$2,$12
	subu	$11,$2,$11
	sra	$24,$12,31
	subu	$3,$2,$3
	subu	$2,$2,$13
	sra	$15,$11,31
	sra	$14,$3,31
	sra	$13,$2,31
	xor	$12,$24,$12
	xor	$11,$15,$11
	xor	$3,$14,$3
	xor	$2,$13,$2
	subu	$12,$12,$24
	subu	$11,$11,$15
	subu	$3,$3,$14
	subu	$2,$2,$13
	addu	$25,$12,$25
	addu	$31,$11,$31
	addu	$16,$3,$16
	bne	$18,$4,.L2135
	addu	$17,$2,$17

	move	$4,$19
	move	$5,$22
	move	$6,$23
	move	$7,$21
	beq	$19,$fp,.L2141
	move	$8,$20

	daddiu	$19,$19,64
	daddu	$22,$22,$9
	daddu	$23,$23,$9
	daddu	$21,$21,$9
	b	.L2136
	daddu	$20,$20,$9

	.align	3
.L2141:
	lw	$2,0($10)
	bne	$2,$25,.L2145
	ld	$4,%got_page(.LC76)($28)

	lw	$2,4($10)
	beq	$2,$31,.L2143
	nop

.L2145:
	ld	$25,%call16(puts)($28)
.L2146:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC76)

	ld	$31,104($sp)
.L2144:
	ld	$fp,96($sp)
	ld	$28,88($sp)
	ld	$23,80($sp)
	ld	$22,72($sp)
	ld	$21,64($sp)
	ld	$20,56($sp)
	ld	$19,48($sp)
	ld	$18,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	jr	$31
	daddiu	$sp,$sp,112

.L2143:
	lw	$2,8($10)
	bne	$2,$16,.L2145
	ld	$4,%got_page(.LC76)($28)

	ld	$2,0($sp)
	bne	$2,$17,.L2146
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC75)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC75)

	b	.L2144
	ld	$31,104($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi, .-_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi
	.section	.rodata.str1.8
	.align	3
.LC77:
	.ascii	"sad_x3_8x8 test success\000"
	.align	3
.LC78:
	.ascii	"sad_x3_8x8 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$11,$8,2
	daddiu	$sp,$sp,-64
	daddu	$2,$5,$11
	sd	$31,56($sp)
	daddu	$31,$5,$8
	sd	$28,48($sp)
	daddu	$3,$2,$8
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi)))
	sd	$16,0($sp)
	daddu	$16,$6,$11
	daddu	$10,$3,$8
	sd	$21,40($sp)
	daddu	$11,$7,$11
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddu	$25,$6,$8
	daddu	$24,$7,$8
	sd	$19,24($sp)
	daddu	$19,$16,$8
	daddu	$12,$24,$8
	sd	$18,16($sp)
	daddu	$18,$19,$8
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi)))
	sd	$17,8($sp)
	vbld	$w0,0($2)
	daddu	$2,$31,$8
	vbld	$w10,0($3)
	vbld	$w9,0($10)
	daddu	$17,$11,$8
	vbld	$w6,0($2)
	daddu	$3,$25,$8
	daddu	$2,$2,$8
	daddu	$10,$10,$8
	vbld	$w7,256($4)
	vbld	$w2,320($4)
	vbld	$w11,448($4)
	vbld	$w1,0($5)
	vbld	$w8,0($31)
	vbld	$w5,64($4)
	vbld	$w3,128($4)
	insve.d	$w5[1],$w2[0]
	vbld	$w4,192($4)
	vbld	$w2,0($2)
	insve.d	$w4[1],$w11[0]
	vbld	$w12,384($4)
	daddu	$14,$17,$8
	insve.d	$w3[1],$w12[0]
	insve.d	$w8[1],$w10[0]
	insve.d	$w1[1],$w0[0]
	insve.d	$w6[1],$w9[0]
	vbld	$w0,0($4)
	asub_u.b	$w6,$w3,$w6
	insve.d	$w0[1],$w7[0]
	vacc8b_u.d	$w6,$w6
	vbld	$w7,0($10)
	asub_u.b	$w1,$w0,$w1
	insve.d	$w2[1],$w7[0]
	daddu	$10,$3,$8
	asub_u.b	$w7,$w5,$w8
	asub_u.b	$w2,$w4,$w2
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w2,$w2
	addv.d	$w1,$w1,$w7
	addv.d	$w2,$w6,$w2
	daddu	$21,$18,$8
	addv.d	$w1,$w1,$w2
	copy_s.w	$13,$w1[0]
	copy_s.w	$2,$w1[2]
	addu	$2,$13,$2
	daddu	$20,$14,$8
	sw	$2,0($9)
	daddu	$13,$12,$8
	vbld	$w2,0($3)
	vbld	$w10,0($16)
	vbld	$w9,0($19)
	vbld	$w1,0($6)
	vbld	$w7,0($25)
	vbld	$w6,0($10)
	insve.d	$w7[1],$w9[0]
	vbld	$w8,0($18)
	asub_u.b	$w7,$w5,$w7
	vbld	$w11,0($21)
	insve.d	$w2[1],$w8[0]
	vacc8b_u.d	$w7,$w7
	insve.d	$w1[1],$w10[0]
	insve.d	$w6[1],$w11[0]
	asub_u.b	$w1,$w0,$w1
	asub_u.b	$w6,$w4,$w6
	asub_u.b	$w2,$w3,$w2
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w2,$w2
	addv.d	$w1,$w1,$w7
	addv.d	$w2,$w2,$w6
	addv.d	$w1,$w1,$w2
	copy_s.w	$3,$w1[0]
	copy_s.w	$2,$w1[2]
	addu	$2,$3,$2
	sw	$2,4($9)
	daddiu	$15,$4,64
	vbld	$w6,0($11)
	vbld	$w7,0($17)
	vbld	$w1,0($12)
	vbld	$w2,0($13)
	vbld	$w9,0($7)
	vbld	$w8,0($24)
	insve.d	$w9[1],$w6[0]
	insve.d	$w8[1],$w7[0]
	vbld	$w6,0($14)
	move.v	$w7,$w8
	insve.d	$w1[1],$w6[0]
	vbld	$w8,0($20)
	asub_u.b	$w0,$w0,$w9
	insve.d	$w2[1],$w8[0]
	asub_u.b	$w5,$w5,$w7
	asub_u.b	$w1,$w3,$w1
	asub_u.b	$w4,$w4,$w2
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w4,$w4
	addv.d	$w0,$w0,$w5
	addv.d	$w1,$w1,$w4
	daddiu	$16,$4,512
	addv.d	$w0,$w0,$w1
	move	$13,$0
	copy_s.w	$17,$w0[0]
	copy_s.w	$2,$w0[2]
	move	$11,$0
	addu	$17,$17,$2
	move	$12,$0
	sw	$17,8($9)
	.align	3
.L2149:
	daddiu	$14,$4,8
	.align	3
.L2148:
	daddiu	$5,$5,1
	daddiu	$6,$6,1
	lbu	$2,0($4)
	daddiu	$7,$7,1
	lbu	$18,-1($7)
	daddiu	$4,$4,1
	lbu	$10,-1($5)
	lbu	$3,-1($6)
	subu	$10,$2,$10
	subu	$3,$2,$3
	subu	$2,$2,$18
	sra	$20,$10,31
	sra	$19,$3,31
	sra	$18,$2,31
	xor	$10,$20,$10
	xor	$3,$19,$3
	xor	$2,$18,$2
	subu	$10,$10,$20
	subu	$3,$3,$19
	subu	$2,$2,$18
	addu	$11,$10,$11
	addu	$12,$3,$12
	bne	$14,$4,.L2148
	addu	$13,$2,$13

	move	$4,$15
	move	$5,$31
	move	$6,$25
	beq	$15,$16,.L2154
	move	$7,$24

	daddiu	$15,$15,64
	daddu	$31,$31,$8
	daddu	$25,$25,$8
	b	.L2149
	daddu	$24,$24,$8

	.align	3
.L2154:
	lw	$2,0($9)
	bne	$2,$11,.L2158
	ld	$4,%got_page(.LC78)($28)

	lw	$2,4($9)
	beq	$2,$12,.L2156
	nop

.L2150:
	ld	$4,%got_page(.LC78)($28)
.L2158:
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC78)

	ld	$31,56($sp)
.L2157:
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

.L2156:
	bne	$17,$13,.L2150
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC77)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC77)

	b	.L2157
	ld	$31,56($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi, .-_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi
	.section	.rodata.str1.8
	.align	3
.LC79:
	.ascii	"sad_8x8 test success\000"
	.align	3
.LC80:
	.ascii	"sad_8x8 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
	.type	_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l, @function
_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$12,$4,$5
	daddu	$11,$6,$7
	daddu	$2,$12,$5
	daddu	$3,$11,$7
	dlsa	$10,$5,$2,1
	dlsa	$8,$7,$3,1
	daddiu	$sp,$sp,-32
	daddu	$13,$10,$5
	daddu	$9,$8,$7
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)))
	sd	$16,8($sp)
	daddu	$28,$28,$25
	sd	$31,24($sp)
	vbld	$w5,0($10)
	vbld	$w10,0($8)
	daddu	$10,$13,$5
	daddu	$8,$9,$7
	vbld	$w7,0($13)
	vbld	$w3,0($2)
	vbld	$w11,0($3)
	daddu	$2,$2,$5
	daddu	$13,$10,$5
	vbld	$w0,0($4)
	insve.d	$w0[1],$w5[0]
	daddu	$3,$3,$7
	vbld	$w5,0($10)
	daddu	$10,$8,$7
	move.v	$w1,$w0
	insve.d	$w3[1],$w5[0]
	vbld	$w2,0($2)
	move.v	$w4,$w3
	vbld	$w0,0($13)
	vbld	$w8,0($8)
	insve.d	$w2[1],$w0[0]
	vbld	$w14,0($10)
	vbld	$w13,0($6)
	vbld	$w6,0($12)
	vbld	$w12,0($11)
	insve.d	$w6[1],$w7[0]
	vbld	$w5,0($3)
	move.v	$w7,$w6
	vbld	$w9,0($9)
	move.v	$w0,$w13
	move.v	$w6,$w12
	insve.d	$w0[1],$w10[0]
	insve.d	$w6[1],$w9[0]
	asub_u.b	$w0,$w1,$w0
	move.v	$w3,$w11
	insve.d	$w5[1],$w14[0]
	insve.d	$w3[1],$w8[0]
	asub_u.b	$w1,$w2,$w5
	asub_u.b	$w3,$w4,$w3
	asub_u.b	$w6,$w7,$w6
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w4,$w6
	vacc8b_u.d	$w2,$w3
	vacc8b_u.d	$w1,$w1
	addv.d	$w0,$w0,$w4
	addv.d	$w1,$w2,$w1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)))
	addv.d	$w0,$w0,$w1
	li	$10,8			# 0x8
	copy_s.w	$16,$w0[0]
	copy_s.w	$2,$w0[2]
	move	$8,$0
	addu	$16,$16,$2
	.align	3
.L2161:
	daddiu	$9,$4,8
	.align	3
.L2160:
	daddiu	$6,$6,1
	lbu	$2,0($4)
	daddiu	$4,$4,1
	lbu	$3,-1($6)
	subu	$2,$2,$3
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	bne	$9,$4,.L2160
	addu	$8,$2,$8

	addiu	$10,$10,-1
	move	$4,$12
	beq	$10,$0,.L2166
	move	$6,$11

	daddu	$12,$12,$5
	b	.L2161
	daddu	$11,$11,$7

	.align	3
.L2166:
	beq	$16,$8,.L2168
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC80)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC80)

	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

.L2168:
	ld	$4,%got_page(.LC79)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC79)

	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

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
	.frame	$sp,160,$31		# vars= 64, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,3
	sd	$28,136($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$20,104($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l)))
	sd	$19,96($sp)
	ld	$20,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	sd	$18,88($sp)
	sd	$2,40($sp)
	dsll	$2,$7,3
	ld	$18,%got_page(_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf)($28)
	ld	$19,%got_page(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)($28)
	sd	$2,48($sp)
	li	$2,8			# 0x8
	sd	$2,32($sp)
	daddiu	$2,$20,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	daddiu	$18,$18,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf)
	sd	$fp,144($sp)
	move	$fp,$0
	sd	$22,120($sp)
	move	$22,$5
	sd	$21,112($sp)
	move	$21,$7
	sd	$2,8($sp)
	daddiu	$2,$19,%got_ofst(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)
	sd	$31,152($sp)
	sd	$23,128($sp)
	sd	$17,80($sp)
	sd	$16,72($sp)
	sd	$4,16($sp)
	sd	$6,24($sp)
	sd	$2,0($sp)
	.align	3
.L2171:
	ld	$16,16($sp)
	ld	$17,24($sp)
	daddiu	$23,$16,64
	.align	3
.L2170:
	ld	$25,8($sp)
	move	$4,$16
	move	$6,$18
	move	$5,$22
	jalr	$25
	move	$7,$0

	ld	$25,0($sp)
	move	$4,$16
	move	$6,$18
	move	$5,$22
	move	$7,$0
	jalr	$25
	move	$19,$2

	ld	$25,8($sp)
	move	$4,$17
	move	$6,$18
	move	$5,$21
	sra	$2,$2,2
	move	$7,$0
	subu	$19,$19,$2
	jalr	$25
	daddiu	$16,$16,8

	ld	$25,0($sp)
	move	$4,$17
	move	$7,$0
	move	$6,$18
	move	$5,$21
	jalr	$25
	move	$20,$2

	daddiu	$17,$17,8
	sra	$2,$2,2
	subu	$2,$20,$2
	subu	$2,$19,$2
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	bne	$16,$23,.L2170
	addu	$fp,$2,$fp

	ld	$3,16($sp)
	ld	$4,40($sp)
	ld	$2,32($sp)
	daddu	$3,$3,$4
	ld	$4,48($sp)
	sd	$3,16($sp)
	addiu	$2,$2,-1
	ld	$3,24($sp)
	sd	$2,32($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2171
	sd	$3,24($sp)

	ld	$31,152($sp)
	move	$2,$fp
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
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l:
	.frame	$sp,160,$31		# vars= 64, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,3
	sd	$28,136($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$20,104($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l)))
	sd	$19,96($sp)
	ld	$20,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	sd	$18,88($sp)
	sd	$2,40($sp)
	dsll	$2,$7,3
	ld	$18,%got_page(_ZZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_lE7zeroBuf)($28)
	ld	$19,%got_page(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)($28)
	sd	$2,48($sp)
	li	$2,4			# 0x4
	sd	$2,32($sp)
	daddiu	$2,$20,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	daddiu	$18,$18,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_lE7zeroBuf)
	sd	$fp,144($sp)
	move	$fp,$0
	sd	$22,120($sp)
	move	$22,$5
	sd	$21,112($sp)
	move	$21,$7
	sd	$2,8($sp)
	daddiu	$2,$19,%got_ofst(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)
	sd	$31,152($sp)
	sd	$23,128($sp)
	sd	$17,80($sp)
	sd	$16,72($sp)
	sd	$4,16($sp)
	sd	$6,24($sp)
	sd	$2,0($sp)
.L2177:
	ld	$16,16($sp)
	ld	$17,24($sp)
	daddiu	$23,$16,32
.L2176:
	ld	$25,8($sp)
	move	$4,$16
	move	$6,$18
	move	$5,$22
	jalr	$25
	move	$7,$0

	ld	$25,0($sp)
	move	$4,$16
	move	$6,$18
	move	$5,$22
	move	$7,$0
	jalr	$25
	move	$19,$2

	ld	$25,8($sp)
	move	$4,$17
	move	$6,$18
	move	$5,$21
	sra	$2,$2,2
	move	$7,$0
	subu	$19,$19,$2
	jalr	$25
	daddiu	$16,$16,8

	ld	$25,0($sp)
	move	$4,$17
	move	$7,$0
	move	$6,$18
	move	$5,$21
	jalr	$25
	move	$20,$2

	daddiu	$17,$17,8
	sra	$2,$2,2
	subu	$2,$20,$2
	subu	$2,$19,$2
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	bne	$16,$23,.L2176
	addu	$fp,$2,$fp

	ld	$3,16($sp)
	ld	$4,40($sp)
	ld	$2,32($sp)
	daddu	$3,$3,$4
	ld	$4,48($sp)
	sd	$3,16($sp)
	addiu	$2,$2,-1
	ld	$3,24($sp)
	sd	$2,32($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2177
	sd	$3,24($sp)

	ld	$31,152($sp)
	move	$2,$fp
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
	.end	_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l:
	.frame	$sp,160,$31		# vars= 64, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,3
	sd	$28,136($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$20,104($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l)))
	sd	$19,96($sp)
	ld	$20,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	sd	$17,80($sp)
	sd	$2,40($sp)
	dsll	$2,$7,3
	ld	$17,%got_page(_ZZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_lE7zeroBuf)($28)
	ld	$19,%got_page(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)($28)
	sd	$2,48($sp)
	li	$2,2			# 0x2
	sd	$2,32($sp)
	daddiu	$2,$20,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	daddiu	$17,$17,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_lE7zeroBuf)
	sd	$fp,144($sp)
	move	$fp,$0
	sd	$23,128($sp)
	move	$23,$4
	sd	$22,120($sp)
	move	$22,$5
	sd	$21,112($sp)
	move	$21,$7
	sd	$2,8($sp)
	daddiu	$2,$19,%got_ofst(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)
	sd	$31,152($sp)
	sd	$18,88($sp)
	sd	$16,72($sp)
	sd	$6,16($sp)
	sd	$2,0($sp)
.L2183:
	ld	$18,16($sp)
	daddiu	$2,$23,16
	move	$16,$23
	sd	$2,24($sp)
.L2182:
	ld	$25,8($sp)
	move	$4,$16
	move	$6,$17
	move	$5,$22
	jalr	$25
	move	$7,$0

	ld	$25,0($sp)
	move	$4,$16
	move	$6,$17
	move	$5,$22
	move	$7,$0
	jalr	$25
	move	$20,$2

	ld	$25,8($sp)
	move	$4,$18
	move	$6,$17
	move	$5,$21
	sra	$2,$2,2
	move	$7,$0
	subu	$20,$20,$2
	jalr	$25
	daddiu	$16,$16,8

	ld	$25,0($sp)
	move	$4,$18
	move	$7,$0
	move	$6,$17
	move	$5,$21
	jalr	$25
	move	$19,$2

	sra	$2,$2,2
	subu	$2,$19,$2
	subu	$2,$20,$2
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	addu	$fp,$2,$fp
	ld	$2,24($sp)
	bne	$16,$2,.L2182
	daddiu	$18,$18,8

	ld	$2,40($sp)
	ld	$3,48($sp)
	daddu	$23,$23,$2
	ld	$2,16($sp)
	daddu	$2,$2,$3
	li	$3,1			# 0x1
	sd	$2,16($sp)
	ld	$2,32($sp)
	bne	$2,$3,.L2184
	li	$2,1			# 0x1

	ld	$31,152($sp)
	move	$2,$fp
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

	.align	3
.L2184:
	b	.L2183
	sd	$2,32($sp)

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
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$19,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l)))
	sd	$18,16($sp)
	ld	$19,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	ld	$18,%got_page(_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf)($28)
	sd	$21,40($sp)
	move	$21,$7
	move	$7,$0
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	sd	$20,32($sp)
	move	$20,$6
	sd	$17,8($sp)
	daddiu	$6,$18,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf)
	move	$17,$5
	move	$25,$19
	sd	$31,56($sp)
	sd	$16,0($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	move	$16,$4

	move	$5,$17
	ld	$17,%got_page(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)($28)
	move	$4,$16
	daddiu	$6,$18,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf)
	move	$7,$0
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
1:	jalr	$25
	move	$16,$2

	move	$5,$21
	move	$4,$20
	daddiu	$6,$18,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf)
	move	$25,$19
	sra	$2,$2,2
	move	$7,$0
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	subu	$16,$16,$2

	daddiu	$6,$18,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf)
	move	$5,$21
	move	$4,$20
	move	$25,$17
	move	$7,$0
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
1:	jalr	$25
	move	$18,$2

	ld	$31,56($sp)
	sra	$3,$2,2
	ld	$28,48($sp)
	subu	$3,$18,$3
	ld	$21,40($sp)
	subu	$3,$16,$3
	ld	$20,32($sp)
	sra	$2,$3,31
	ld	$19,24($sp)
	xor	$3,$2,$3
	ld	$18,16($sp)
	ld	$17,8($sp)
	subu	$2,$3,$2
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l
	.section	.rodata.str1.8
	.align	3
.LC81:
	.ascii	"sad_x4_16x16 test success\000"
	.align	3
.LC82:
	.ascii	"sad_x4_16x16 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi:
	.frame	$sp,160,$31		# vars= 32, regs= 11/4, args= 0, gp= 0
	.mask	0xd0ff0000,-40
	.fmask	0x0f000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$13,$9,1
	ldi.d	$w8,0
	move.v	$w15,$w8
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi)))
	dsll	$15,$9,2
	move.v	$w13,$w8
	daddu	$28,$28,$25
	sd	$23,96($sp)
	move	$12,$8
	move.v	$w11,$w8
	sd	$19,64($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi)))
	daddiu	$19,$4,1024
	move.v	$w9,$w8
	move	$11,$7
	move	$3,$6
	sd	$31,120($sp)
	move.v	$w2,$w8
	move	$2,$5
	move	$23,$4
	sd	$fp,112($sp)
	move.v	$w7,$w8
	daddu	$14,$13,$9
	sd	$22,88($sp)
	move.v	$w0,$w8
	sd	$21,80($sp)
	sd	$20,72($sp)
	sd	$18,56($sp)
	sd	$17,48($sp)
	sd	$16,40($sp)
	sdc1	$f27,152($sp)
	sdc1	$f26,144($sp)
	sdc1	$f25,136($sp)
	sdc1	$f24,128($sp)
.L2190:
	daddu	$18,$2,$9
	daddu	$17,$3,$9
	ld.b	$w6,0($23)
	ld.b	$w5,64($23)
	daddu	$16,$11,$9
	daddu	$31,$12,$9
	ld.b	$w1,128($23)
	ld.b	$w4,192($23)
	daddu	$25,$13,$2
	daddu	$24,$2,$14
	ld.d	$w19,0($18)
	ld.d	$w18,0($17)
	daddu	$18,$13,$3
	daddu	$17,$3,$14
	ld.d	$w17,0($16)
	ld.d	$w26,0($31)
	daddu	$16,$13,$11
	daddu	$31,$11,$14
	ld.d	$w12,0($25)
	ld.d	$w21,0($24)
	daddu	$25,$13,$12
	daddu	$24,$12,$14
	ld.d	$w23,0($2)
	ld.d	$w16,0($3)
	daddiu	$23,$23,256
	ld.d	$w14,0($11)
	asub_u.b	$w23,$w6,$w23
	asub_u.b	$w19,$w5,$w19
	asub_u.b	$w16,$w6,$w16
	asub_u.b	$w18,$w5,$w18
	asub_u.b	$w14,$w6,$w14
	asub_u.b	$w17,$w5,$w17
	ld.b	$w27,0($12)
	asub_u.b	$w12,$w1,$w12
	asub_u.b	$w21,$w4,$w21
	ld.d	$w10,0($18)
	ld.d	$w20,0($17)
	asub_u.b	$w10,$w1,$w10
	asub_u.b	$w20,$w4,$w20
	ld.d	$w3,0($16)
	ld.d	$w22,0($31)
	asub_u.b	$w3,$w1,$w3
	asub_u.b	$w22,$w4,$w22
	ld.d	$w25,0($25)
	ld.d	$w24,0($24)
	asub_u.b	$w6,$w6,$w27
	asub_u.b	$w5,$w5,$w26
	asub_u.b	$w1,$w1,$w25
	asub_u.b	$w4,$w4,$w24
	vacc8b_u.d	$w23,$w23
	vacc8b_u.d	$w19,$w19
	vacc8b_u.d	$w16,$w16
	vacc8b_u.d	$w18,$w18
	vacc8b_u.d	$w14,$w14
	vacc8b_u.d	$w17,$w17
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w12,$w12
	vacc8b_u.d	$w21,$w21
	vacc8b_u.d	$w10,$w10
	vacc8b_u.d	$w20,$w20
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w22,$w22
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w4,$w4
	addv.d	$w8,$w8,$w23
	addv.d	$w15,$w15,$w16
	addv.d	$w13,$w13,$w14
	addv.d	$w11,$w11,$w12
	addv.d	$w9,$w9,$w10
	addv.d	$w2,$w2,$w3
	addv.d	$w7,$w7,$w6
	addv.d	$w0,$w0,$w1
	addv.d	$w8,$w8,$w19
	addv.d	$w15,$w15,$w18
	addv.d	$w13,$w13,$w17
	addv.d	$w11,$w11,$w21
	addv.d	$w9,$w9,$w20
	addv.d	$w2,$w2,$w22
	addv.d	$w7,$w7,$w5
	addv.d	$w0,$w0,$w4
	daddu	$2,$2,$15
	daddu	$3,$3,$15
	daddu	$11,$11,$15
	bne	$23,$19,.L2190
	daddu	$12,$12,$15

	copy_s.w	$2,$w8[2]
	copy_s.w	$11,$w7[0]
	copy_s.w	$fp,$w8[0]
	copy_s.w	$13,$w15[0]
	addu	$fp,$fp,$2
	copy_s.w	$12,$w13[0]
	copy_s.w	$2,$w15[2]
	addu	$13,$13,$2
	copy_s.w	$2,$w13[2]
	addu	$12,$12,$2
	copy_s.w	$2,$w7[2]
	addu	$2,$11,$2
	copy_s.w	$3,$w9[0]
	copy_s.w	$11,$w11[0]
	addu	$13,$13,$3
	addu	$fp,$fp,$11
	copy_s.w	$3,$w2[0]
	copy_s.w	$11,$w0[0]
	addu	$12,$12,$3
	addu	$11,$2,$11
	copy_s.w	$3,$w11[2]
	copy_s.w	$2,$w9[2]
	addu	$fp,$fp,$3
	addu	$13,$13,$2
	copy_s.w	$3,$w2[2]
	copy_s.w	$2,$w0[2]
	addu	$3,$12,$3
	addu	$2,$11,$2
	move	$18,$0
	move	$21,$0
	sd	$13,0($sp)
	move	$20,$0
	move	$19,$0
	sd	$3,8($sp)
	sd	$2,16($sp)
	sw	$fp,0($10)
	sw	$13,4($10)
	sw	$3,8($10)
	sw	$2,12($10)
	.align	3
.L2192:
	move	$15,$4
	move	$16,$5
	move	$31,$6
	move	$25,$7
	move	$24,$8
	daddiu	$17,$4,16
	.align	3
.L2191:
	daddiu	$16,$16,1
	daddiu	$31,$31,1
	lbu	$2,0($15)
	daddiu	$25,$25,1
	daddiu	$24,$24,1
	lbu	$12,-1($24)
	lbu	$11,-1($16)
	daddiu	$15,$15,1
	lbu	$10,-1($31)
	lbu	$3,-1($25)
	subu	$11,$2,$11
	subu	$10,$2,$10
	sra	$14,$11,31
	subu	$3,$2,$3
	subu	$2,$2,$12
	sra	$13,$10,31
	sra	$22,$3,31
	sra	$12,$2,31
	xor	$11,$14,$11
	xor	$10,$13,$10
	xor	$3,$22,$3
	xor	$2,$12,$2
	subu	$11,$11,$14
	subu	$10,$10,$13
	subu	$3,$3,$22
	subu	$2,$2,$12
	addu	$18,$11,$18
	addu	$21,$10,$21
	addu	$20,$3,$20
	bne	$17,$15,.L2191
	addu	$19,$2,$19

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$23,$4,.L2192
	daddu	$8,$8,$9

	bne	$fp,$18,.L2193
	ld	$2,0($sp)

	beq	$2,$21,.L2199
	ld	$2,8($sp)

.L2193:
	ld	$4,%got_page(.LC82)($28)
.L2201:
	ld	$25,%call16(puts)($28)
.L2202:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC82)

	ld	$31,120($sp)
.L2200:
	ldc1	$f27,152($sp)
	ld	$fp,112($sp)
	ldc1	$f26,144($sp)
	ld	$28,104($sp)
	ldc1	$f25,136($sp)
	ld	$23,96($sp)
	ldc1	$f24,128($sp)
	ld	$22,88($sp)
	ld	$21,80($sp)
	ld	$20,72($sp)
	ld	$19,64($sp)
	ld	$18,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	jr	$31
	daddiu	$sp,$sp,160

.L2199:
	bne	$2,$20,.L2201
	ld	$4,%got_page(.LC82)($28)

	ld	$2,16($sp)
	bne	$2,$19,.L2202
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC81)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC81)

	b	.L2200
	ld	$31,120($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi
	.section	.rodata.str1.8
	.align	3
.LC83:
	.ascii	"sad_x3_16x16 test success\000"
	.align	3
.LC84:
	.ascii	"sad_x3_16x16 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	dsll	$11,$8,1
	ldi.d	$w8,0
	move.v	$w12,$w8
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi)))
	dsll	$13,$8,2
	move.v	$w13,$w8
	daddu	$28,$28,$25
	sd	$17,8($sp)
	move	$10,$7
	move.v	$w11,$w8
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi)))
	daddiu	$17,$4,1024
	sd	$31,56($sp)
	move.v	$w10,$w8
	move	$3,$6
	move	$2,$5
	sd	$21,40($sp)
	move.v	$w9,$w8
	move	$25,$4
	daddu	$12,$11,$8
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$16,0($sp)
.L2204:
	daddu	$14,$2,$8
	daddu	$24,$3,$8
	ld.b	$w1,0($25)
	ld.b	$w5,64($25)
	daddu	$15,$10,$8
	ld.d	$w16,0($14)
	daddu	$14,$2,$12
	ld.b	$w0,128($25)
	ld.b	$w2,192($25)
	daddu	$16,$11,$2
	daddu	$31,$11,$3
	ld.d	$w17,0($24)
	ld.d	$w20,0($15)
	daddu	$24,$3,$12
	daddu	$15,$11,$10
	ld.d	$w7,0($14)
	daddiu	$25,$25,256
	daddu	$14,$10,$12
	ld.d	$w15,0($2)
	ld.d	$w14,0($3)
	ld.d	$w21,0($10)
	asub_u.b	$w15,$w1,$w15
	asub_u.b	$w16,$w5,$w16
	asub_u.b	$w14,$w1,$w14
	asub_u.b	$w17,$w5,$w17
	asub_u.b	$w7,$w2,$w7
	ld.d	$w4,0($16)
	ld.d	$w3,0($31)
	asub_u.b	$w4,$w0,$w4
	asub_u.b	$w3,$w0,$w3
	ld.d	$w6,0($24)
	ld.d	$w19,0($15)
	asub_u.b	$w6,$w2,$w6
	ld.d	$w18,0($14)
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
	daddu	$2,$2,$13
	daddu	$3,$3,$13
	bne	$25,$17,.L2204
	daddu	$10,$10,$13

	copy_s.w	$2,$w8[2]
	copy_s.w	$31,$w8[0]
	copy_s.w	$17,$w12[0]
	addu	$31,$31,$2
	copy_s.w	$16,$w13[0]
	copy_s.w	$2,$w12[2]
	addu	$17,$17,$2
	copy_s.w	$2,$w13[2]
	addu	$16,$16,$2
	copy_s.w	$3,$w11[0]
	copy_s.w	$2,$w10[0]
	addu	$31,$31,$3
	addu	$17,$17,$2
	copy_s.w	$2,$w9[0]
	addu	$16,$16,$2
	copy_s.w	$3,$w11[2]
	copy_s.w	$2,$w10[2]
	addu	$31,$31,$3
	addu	$17,$17,$2
	copy_s.w	$2,$w9[2]
	move	$13,$0
	addu	$16,$16,$2
	sw	$31,0($9)
	move	$15,$0
	move	$14,$0
	sw	$17,4($9)
	sw	$16,8($9)
	.align	3
.L2206:
	move	$9,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L2205:
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	lbu	$2,0($9)
	daddiu	$10,$10,1
	lbu	$19,-1($10)
	daddiu	$9,$9,1
	lbu	$18,-1($12)
	lbu	$3,-1($11)
	subu	$18,$2,$18
	subu	$3,$2,$3
	subu	$2,$2,$19
	sra	$21,$18,31
	sra	$20,$3,31
	sra	$19,$2,31
	xor	$18,$21,$18
	xor	$3,$20,$3
	xor	$2,$19,$2
	subu	$18,$18,$21
	subu	$3,$3,$20
	subu	$2,$2,$19
	addu	$13,$18,$13
	addu	$15,$3,$15
	bne	$24,$9,.L2205
	addu	$14,$2,$14

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L2206
	daddu	$7,$7,$8

	bne	$31,$13,.L2207
	nop

	beq	$17,$15,.L2213
	nop

.L2207:
	ld	$4,%got_page(.LC84)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC84)

	ld	$31,56($sp)
.L2214:
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

.L2213:
	bne	$16,$14,.L2207
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC83)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC83)

	b	.L2214
	ld	$31,56($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi
	.section	.rodata.str1.8
	.align	3
.LC85:
	.ascii	"sad_x4_64x64 test success\000"
	.align	3
.LC86:
	.ascii	"sad_x4_64x64 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi:
	.frame	$sp,112,$31		# vars= 16, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	ldi.d	$w20,0
	move.v	$w19,$w20
	move.v	$w18,$w20
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi)))
	move.v	$w17,$w20
	sd	$21,64($sp)
	daddu	$28,$28,$25
	move	$21,$7
	sd	$20,56($sp)
	move	$20,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi)))
	sd	$19,48($sp)
	move	$19,$5
	daddiu	$7,$4,4096
	sd	$22,72($sp)
	move	$6,$8
	move	$22,$8
	sd	$18,40($sp)
	move	$5,$21
	move	$18,$9
	sd	$17,32($sp)
	move	$3,$20
	move	$2,$19
	move	$17,$4
	sd	$31,104($sp)
	sd	$fp,96($sp)
	sd	$23,80($sp)
	sd	$16,24($sp)
	.align	3
.L2216:
	ld.b	$w11,0($17)
	ld.b	$w2,16($17)
	ld.b	$w1,32($17)
	ld.b	$w0,48($17)
	daddiu	$17,$17,64
	ld.d	$w4,0($2)
	ld.d	$w16,16($2)
	ld.d	$w3,0($3)
	ld.d	$w15,16($3)
	ld.d	$w12,0($5)
	ld.d	$w21,16($5)
	ld.d	$w23,0($6)
	ld.d	$w22,16($6)
	ld.d	$w10,32($2)
	ld.d	$w7,48($2)
	ld.d	$w9,32($3)
	ld.d	$w6,48($3)
	ld.d	$w8,32($5)
	ld.d	$w5,48($5)
	ld.d	$w14,32($6)
	ld.d	$w13,48($6)
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
	daddu	$2,$2,$18
	daddu	$3,$3,$18
	daddu	$5,$5,$18
	bne	$17,$7,.L2216
	daddu	$6,$6,$18

	copy_s.w	$2,$w20[2]
	copy_s.w	$fp,$w20[0]
	copy_s.w	$23,$w19[0]
	addu	$fp,$fp,$2
	copy_s.w	$5,$w18[0]
	copy_s.w	$2,$w19[2]
	copy_s.w	$3,$w17[0]
	addu	$23,$23,$2
	move	$7,$0
	copy_s.w	$2,$w18[2]
	move	$31,$0
	sw	$fp,0($10)
	addu	$5,$5,$2
	move	$9,$0
	copy_s.w	$2,$w17[2]
	sw	$23,4($10)
	addu	$2,$3,$2
	move	$8,$0
	sd	$5,0($sp)
	sd	$2,8($sp)
	sw	$5,8($10)
	sw	$2,12($10)
	.align	3
.L2218:
	move	$15,$19
	move	$14,$20
	move	$13,$21
	move	$12,$22
	daddiu	$16,$4,64
	.align	3
.L2217:
	daddiu	$15,$15,1
	daddiu	$14,$14,1
	lbu	$2,0($4)
	daddiu	$13,$13,1
	daddiu	$12,$12,1
	lbu	$24,-1($12)
	lbu	$11,-1($15)
	daddiu	$4,$4,1
	lbu	$10,-1($14)
	lbu	$3,-1($13)
	subu	$11,$2,$11
	subu	$10,$2,$10
	sra	$6,$11,31
	subu	$3,$2,$3
	subu	$2,$2,$24
	sra	$5,$10,31
	sra	$25,$3,31
	sra	$24,$2,31
	xor	$11,$6,$11
	xor	$10,$5,$10
	xor	$3,$25,$3
	xor	$2,$24,$2
	subu	$11,$11,$6
	subu	$10,$10,$5
	subu	$3,$3,$25
	subu	$2,$2,$24
	addu	$31,$11,$31
	addu	$9,$10,$9
	addu	$8,$3,$8
	bne	$16,$4,.L2217
	addu	$7,$2,$7

	move	$4,$16
	daddu	$19,$19,$18
	daddu	$20,$20,$18
	daddu	$21,$21,$18
	bne	$17,$16,.L2218
	daddu	$22,$22,$18

	bne	$fp,$31,.L2219
	nop

	beq	$23,$9,.L2225
	ld	$2,0($sp)

.L2219:
	ld	$4,%got_page(.LC86)($28)
.L2227:
	ld	$25,%call16(puts)($28)
.L2228:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC86)

	ld	$31,104($sp)
.L2226:
	ld	$fp,96($sp)
	ld	$28,88($sp)
	ld	$23,80($sp)
	ld	$22,72($sp)
	ld	$21,64($sp)
	ld	$20,56($sp)
	ld	$19,48($sp)
	ld	$18,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	jr	$31
	daddiu	$sp,$sp,112

.L2225:
	bne	$2,$8,.L2227
	ld	$4,%got_page(.LC86)($28)

	ld	$2,8($sp)
	bne	$2,$7,.L2228
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC85)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC85)

	b	.L2226
	ld	$31,104($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi
	.section	.rodata.str1.8
	.align	3
.LC87:
	.ascii	"sad_x4_32x32 test success\000"
	.align	3
.LC88:
	.ascii	"sad_x4_32x32 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi:
	.frame	$sp,160,$31		# vars= 32, regs= 11/3, args= 0, gp= 0
	.mask	0xd0ff0000,-40
	.fmask	0x07000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	move	$3,$6
	ldi.d	$w8,0
	move.v	$w15,$w8
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi)))
	move.v	$w13,$w8
	move.v	$w11,$w8
	daddu	$28,$28,$25
	sd	$22,88($sp)
	move	$22,$7
	move.v	$w9,$w8
	sd	$20,72($sp)
	move	$20,$5
	daddiu	$25,$4,2048
	move.v	$w2,$w8
	sd	$18,56($sp)
	move	$18,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi)))
	move.v	$w7,$w8
	sd	$23,96($sp)
	dsll	$7,$9,1
	move	$23,$8
	move.v	$w0,$w8
	sd	$21,80($sp)
	move	$5,$8
	move	$21,$6
	sd	$19,64($sp)
	move	$4,$22
	move	$2,$20
	sd	$17,48($sp)
	move	$19,$18
	move	$17,$9
	daddiu	$6,$9,16
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$16,40($sp)
	sdc1	$f26,152($sp)
	sdc1	$f25,144($sp)
	sdc1	$f24,136($sp)
	.align	3
.L2230:
	ld.b	$w6,0($19)
	ld.b	$w5,16($19)
	ld.b	$w1,64($19)
	ld.b	$w4,80($19)
	daddu	$24,$2,$17
	daddu	$15,$2,$6
	ld.b	$w26,0($5)
	ld.d	$w23,0($2)
	daddu	$14,$3,$17
	daddu	$13,$3,$6
	ld.d	$w19,16($2)
	ld.d	$w16,0($3)
	daddu	$12,$4,$17
	daddu	$11,$4,$6
	ld.d	$w18,16($3)
	ld.d	$w14,0($4)
	daddu	$9,$5,$17
	daddu	$8,$5,$6
	ld.d	$w17,16($4)
	asub_u.b	$w23,$w6,$w23
	daddiu	$19,$19,128
	asub_u.b	$w19,$w5,$w19
	asub_u.b	$w16,$w6,$w16
	asub_u.b	$w18,$w5,$w18
	asub_u.b	$w14,$w6,$w14
	asub_u.b	$w17,$w5,$w17
	asub_u.b	$w6,$w6,$w26
	ld.d	$w12,0($24)
	ld.b	$w26,16($5)
	asub_u.b	$w12,$w1,$w12
	ld.d	$w21,0($15)
	ld.d	$w10,0($14)
	asub_u.b	$w21,$w4,$w21
	asub_u.b	$w10,$w1,$w10
	ld.d	$w20,0($13)
	ld.d	$w3,0($12)
	asub_u.b	$w20,$w4,$w20
	asub_u.b	$w3,$w1,$w3
	ld.d	$w22,0($11)
	ld.d	$w25,0($9)
	asub_u.b	$w22,$w4,$w22
	ld.d	$w24,0($8)
	asub_u.b	$w5,$w5,$w26
	asub_u.b	$w1,$w1,$w25
	asub_u.b	$w4,$w4,$w24
	vacc8b_u.d	$w23,$w23
	vacc8b_u.d	$w19,$w19
	vacc8b_u.d	$w16,$w16
	vacc8b_u.d	$w18,$w18
	vacc8b_u.d	$w14,$w14
	vacc8b_u.d	$w17,$w17
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w12,$w12
	vacc8b_u.d	$w21,$w21
	vacc8b_u.d	$w10,$w10
	vacc8b_u.d	$w20,$w20
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w22,$w22
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w4,$w4
	addv.d	$w8,$w8,$w23
	addv.d	$w15,$w15,$w16
	addv.d	$w13,$w13,$w14
	addv.d	$w11,$w11,$w12
	addv.d	$w9,$w9,$w10
	addv.d	$w2,$w2,$w3
	addv.d	$w7,$w7,$w6
	addv.d	$w0,$w0,$w1
	addv.d	$w8,$w8,$w19
	addv.d	$w15,$w15,$w18
	addv.d	$w13,$w13,$w17
	addv.d	$w11,$w11,$w21
	addv.d	$w9,$w9,$w20
	addv.d	$w2,$w2,$w22
	addv.d	$w7,$w7,$w5
	addv.d	$w0,$w0,$w4
	daddu	$2,$2,$7
	daddu	$3,$3,$7
	daddu	$4,$4,$7
	bne	$19,$25,.L2230
	daddu	$5,$5,$7

	copy_s.w	$2,$w8[2]
	copy_s.w	$4,$w7[0]
	copy_s.w	$fp,$w8[0]
	copy_s.w	$6,$w15[0]
	addu	$fp,$fp,$2
	copy_s.w	$5,$w13[0]
	copy_s.w	$2,$w15[2]
	addu	$6,$6,$2
	copy_s.w	$2,$w13[2]
	addu	$5,$5,$2
	copy_s.w	$2,$w7[2]
	addu	$2,$4,$2
	copy_s.w	$3,$w9[0]
	copy_s.w	$4,$w11[0]
	addu	$6,$6,$3
	addu	$fp,$fp,$4
	copy_s.w	$3,$w2[0]
	copy_s.w	$4,$w0[0]
	addu	$5,$5,$3
	addu	$4,$2,$4
	copy_s.w	$3,$w11[2]
	copy_s.w	$2,$w9[2]
	addu	$fp,$fp,$3
	addu	$6,$6,$2
	copy_s.w	$3,$w2[2]
	copy_s.w	$2,$w0[2]
	addu	$3,$5,$3
	addu	$2,$4,$2
	move	$31,$0
	move	$9,$0
	sd	$6,0($sp)
	move	$8,$0
	move	$7,$0
	sd	$3,8($sp)
	sd	$2,16($sp)
	sw	$fp,0($10)
	sw	$6,4($10)
	sw	$3,8($10)
	sw	$2,12($10)
	.align	3
.L2232:
	move	$12,$18
	move	$24,$20
	move	$15,$21
	move	$14,$22
	move	$13,$23
	daddiu	$25,$18,32
	.align	3
.L2231:
	daddiu	$24,$24,1
	daddiu	$15,$15,1
	lbu	$2,0($12)
	daddiu	$14,$14,1
	daddiu	$13,$13,1
	lbu	$6,-1($13)
	lbu	$5,-1($24)
	daddiu	$12,$12,1
	lbu	$4,-1($15)
	lbu	$3,-1($14)
	subu	$5,$2,$5
	subu	$4,$2,$4
	sra	$11,$5,31
	subu	$3,$2,$3
	subu	$2,$2,$6
	sra	$10,$4,31
	sra	$16,$3,31
	sra	$6,$2,31
	xor	$5,$11,$5
	xor	$4,$10,$4
	xor	$3,$16,$3
	xor	$2,$6,$2
	subu	$5,$5,$11
	subu	$4,$4,$10
	subu	$3,$3,$16
	subu	$2,$2,$6
	addu	$31,$5,$31
	addu	$9,$4,$9
	addu	$8,$3,$8
	bne	$25,$12,.L2231
	addu	$7,$2,$7

	daddiu	$18,$18,64
	daddu	$20,$20,$17
	daddu	$21,$21,$17
	daddu	$22,$22,$17
	bne	$19,$18,.L2232
	daddu	$23,$23,$17

	bne	$fp,$31,.L2233
	ld	$2,0($sp)

	beq	$2,$9,.L2239
	ld	$2,8($sp)

.L2233:
	ld	$4,%got_page(.LC88)($28)
.L2241:
	ld	$25,%call16(puts)($28)
.L2242:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC88)

	ld	$31,120($sp)
.L2240:
	ldc1	$f26,152($sp)
	ld	$fp,112($sp)
	ldc1	$f25,144($sp)
	ld	$28,104($sp)
	ldc1	$f24,136($sp)
	ld	$23,96($sp)
	ld	$22,88($sp)
	ld	$21,80($sp)
	ld	$20,72($sp)
	ld	$19,64($sp)
	ld	$18,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	jr	$31
	daddiu	$sp,$sp,160

.L2239:
	bne	$2,$8,.L2241
	ld	$4,%got_page(.LC88)($28)

	ld	$2,16($sp)
	bne	$2,$7,.L2242
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC87)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC87)

	b	.L2240
	ld	$31,120($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi
	.section	.rodata.str1.8
	.align	3
.LC89:
	.ascii	"sad_x3_64x64 test success\000"
	.align	3
.LC90:
	.ascii	"sad_x3_64x64 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$11,$4,4096
	ldi.d	$w1,0
	move.v	$w2,$w1
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi)))
	move	$10,$7
	move.v	$w16,$w1
	daddu	$28,$28,$25
	move	$3,$6
	sd	$31,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi)))
	move	$2,$5
	sd	$20,40($sp)
	move	$25,$4
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	.align	3
.L2244:
	ld.b	$w0,0($25)
	ld.b	$w5,16($25)
	ld.b	$w4,32($25)
	ld.b	$w3,48($25)
	daddiu	$25,$25,64
	ld.d	$w6,48($3)
	ld.d	$w15,0($2)
	ld.d	$w11,16($2)
	ld.d	$w14,0($3)
	ld.d	$w10,16($3)
	ld.d	$w18,0($10)
	ld.d	$w17,16($10)
	ld.d	$w9,32($2)
	ld.d	$w7,48($2)
	ld.d	$w8,32($3)
	asub_u.b	$w7,$w3,$w7
	ld.d	$w13,32($10)
	ld.d	$w12,48($10)
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
	daddu	$2,$2,$8
	daddu	$3,$3,$8
	bne	$25,$11,.L2244
	daddu	$10,$10,$8

	copy_s.w	$2,$w1[2]
	copy_s.w	$17,$w1[0]
	copy_s.w	$16,$w2[0]
	addu	$17,$17,$2
	copy_s.w	$31,$w16[0]
	copy_s.w	$2,$w2[2]
	move	$13,$0
	addu	$16,$16,$2
	move	$15,$0
	copy_s.w	$2,$w16[2]
	move	$14,$0
	sw	$17,0($9)
	addu	$31,$31,$2
	sw	$16,4($9)
	sw	$31,8($9)
	.align	3
.L2246:
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,64
	.align	3
.L2245:
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	lbu	$2,0($4)
	daddiu	$10,$10,1
	lbu	$18,-1($10)
	daddiu	$4,$4,1
	lbu	$9,-1($12)
	lbu	$3,-1($11)
	subu	$9,$2,$9
	subu	$3,$2,$3
	subu	$2,$2,$18
	sra	$20,$9,31
	sra	$19,$3,31
	sra	$18,$2,31
	xor	$9,$20,$9
	xor	$3,$19,$3
	xor	$2,$18,$2
	subu	$9,$9,$20
	subu	$3,$3,$19
	subu	$2,$2,$18
	addu	$15,$9,$15
	addu	$14,$3,$14
	bne	$24,$4,.L2245
	addu	$13,$2,$13

	move	$4,$24
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$24,.L2246
	daddu	$7,$7,$8

	bne	$17,$15,.L2247
	nop

	beq	$16,$14,.L2253
	nop

.L2247:
	ld	$4,%got_page(.LC90)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC90)

	ld	$31,56($sp)
.L2254:
	ld	$28,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

.L2253:
	bne	$31,$13,.L2247
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC89)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC89)

	b	.L2254
	ld	$31,56($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi
	.section	.rodata.str1.8
	.align	3
.LC91:
	.ascii	"sad_x3_32x32 test success\000"
	.align	3
.LC92:
	.ascii	"sad_x3_32x32 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi
	.type	_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi, @function
_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	dsll	$12,$8,1
	ldi.d	$w8,0
	move.v	$w12,$w8
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi)))
	move	$10,$7
	move.v	$w13,$w8
	daddu	$28,$28,$25
	sd	$17,8($sp)
	move	$3,$6
	move.v	$w11,$w8
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi)))
	daddiu	$17,$4,2048
	sd	$31,56($sp)
	move.v	$w10,$w8
	move	$2,$5
	move	$25,$4
	sd	$21,40($sp)
	move.v	$w9,$w8
	daddiu	$11,$8,16
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$16,0($sp)
	.align	3
.L2256:
	ld.b	$w1,0($25)
	ld.b	$w5,16($25)
	ld.b	$w0,64($25)
	ld.b	$w2,80($25)
	daddu	$16,$2,$8
	daddu	$31,$2,$11
	ld.d	$w15,0($2)
	ld.d	$w16,16($2)
	daddu	$24,$3,$8
	daddu	$15,$3,$11
	ld.d	$w14,0($3)
	ld.d	$w17,16($3)
	daddu	$14,$10,$8
	daddu	$13,$10,$11
	ld.d	$w21,0($10)
	ld.d	$w20,16($10)
	daddiu	$25,$25,128
	asub_u.b	$w15,$w1,$w15
	asub_u.b	$w16,$w5,$w16
	asub_u.b	$w14,$w1,$w14
	asub_u.b	$w17,$w5,$w17
	ld.d	$w4,0($16)
	ld.d	$w7,0($31)
	asub_u.b	$w4,$w0,$w4
	asub_u.b	$w7,$w2,$w7
	ld.d	$w3,0($24)
	ld.d	$w6,0($15)
	asub_u.b	$w3,$w0,$w3
	asub_u.b	$w6,$w2,$w6
	ld.d	$w19,0($14)
	ld.d	$w18,0($13)
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
	daddu	$2,$2,$12
	daddu	$3,$3,$12
	bne	$25,$17,.L2256
	daddu	$10,$10,$12

	copy_s.w	$2,$w8[2]
	copy_s.w	$17,$w8[0]
	copy_s.w	$16,$w12[0]
	addu	$17,$17,$2
	copy_s.w	$31,$w13[0]
	copy_s.w	$2,$w12[2]
	addu	$16,$16,$2
	copy_s.w	$2,$w13[2]
	addu	$31,$31,$2
	copy_s.w	$3,$w11[0]
	copy_s.w	$2,$w10[0]
	addu	$17,$17,$3
	addu	$16,$16,$2
	copy_s.w	$2,$w9[0]
	addu	$31,$31,$2
	copy_s.w	$3,$w11[2]
	copy_s.w	$2,$w10[2]
	addu	$17,$17,$3
	addu	$16,$16,$2
	copy_s.w	$2,$w9[2]
	move	$15,$0
	addu	$31,$31,$2
	sw	$17,0($9)
	move	$14,$0
	move	$13,$0
	sw	$16,4($9)
	sw	$31,8($9)
	.align	3
.L2258:
	move	$9,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L2257:
	daddiu	$12,$12,1
	daddiu	$11,$11,1
	lbu	$2,0($9)
	daddiu	$10,$10,1
	lbu	$19,-1($10)
	daddiu	$9,$9,1
	lbu	$18,-1($12)
	lbu	$3,-1($11)
	subu	$18,$2,$18
	subu	$3,$2,$3
	subu	$2,$2,$19
	sra	$21,$18,31
	sra	$20,$3,31
	sra	$19,$2,31
	xor	$18,$21,$18
	xor	$3,$20,$3
	xor	$2,$19,$2
	subu	$18,$18,$21
	subu	$3,$3,$20
	subu	$2,$2,$19
	addu	$15,$18,$15
	addu	$14,$3,$14
	bne	$24,$9,.L2257
	addu	$13,$2,$13

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L2258
	daddu	$7,$7,$8

	bne	$17,$15,.L2259
	nop

	beq	$16,$14,.L2265
	nop

.L2259:
	ld	$4,%got_page(.LC92)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC92)

	ld	$31,56($sp)
.L2266:
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

.L2265:
	bne	$31,$13,.L2259
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC91)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC91)

	b	.L2266
	ld	$31,56($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi
	.section	.rodata.str1.8
	.align	3
.LC93:
	.ascii	"sad_32x32 test success\000"
	.align	3
.LC94:
	.ascii	"sad_32x32 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l
	.type	_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l, @function
_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	dsll	$24,$5,1
	ldi.d	$w8,0
	move.v	$w11,$w8
	dsll	$15,$7,1
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l)))
	move.v	$w10,$w8
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$15,$7
	move.v	$w9,$w8
	daddu	$16,$24,$5
	sd	$31,72($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l)))
	sd	$23,56($sp)
	move	$3,$6
	dsll	$23,$5,2
	sd	$22,48($sp)
	move	$2,$4
	dsll	$22,$7,2
	sd	$21,40($sp)
	li	$8,8			# 0x8
	daddiu	$21,$5,16
	sd	$20,32($sp)
	daddiu	$31,$25,16
	daddiu	$20,$7,16
	sd	$19,24($sp)
	daddiu	$19,$24,16
	sd	$18,16($sp)
	daddiu	$18,$16,16
	sd	$17,8($sp)
	daddiu	$17,$15,16
.L2268:
	daddu	$14,$2,$5
	daddu	$13,$2,$21
	ld.d	$w3,0($2)
	ld.d	$w2,16($2)
	daddu	$12,$3,$7
	daddu	$11,$3,$20
	ld.d	$w7,0($14)
	ld.d	$w6,0($13)
	daddu	$10,$24,$2
	daddu	$9,$2,$19
	ld.d	$w17,0($12)
	ld.d	$w16,0($11)
	daddu	$14,$16,$2
	daddu	$13,$2,$18
	ld.d	$w1,0($10)
	ld.d	$w0,0($9)
	daddu	$12,$3,$15
	daddu	$11,$3,$17
	ld.d	$w19,0($3)
	ld.d	$w18,16($3)
	daddu	$10,$3,$25
	daddu	$9,$3,$31
	ld.d	$w5,0($14)
	ld.d	$w4,0($13)
	addiu	$8,$8,-1
	ld.d	$w15,0($12)
	ld.d	$w14,0($11)
	ld.d	$w13,0($10)
	ld.d	$w12,0($9)
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
	daddu	$2,$2,$23
	bne	$8,$0,.L2268
	daddu	$3,$3,$22

	copy_s.w	$2,$w8[2]
	copy_s.w	$16,$w8[0]
	addu	$16,$16,$2
	copy_s.w	$2,$w11[0]
	addu	$16,$16,$2
	copy_s.w	$2,$w11[2]
	copy_s.w	$9,$w10[0]
	copy_s.w	$3,$w10[2]
	addu	$16,$16,$2
	copy_s.w	$8,$w9[0]
	copy_s.w	$2,$w9[2]
	li	$12,32			# 0x20
	addu	$16,$16,$9
	move	$10,$0
	addu	$16,$16,$3
	addu	$16,$16,$8
	addu	$16,$16,$2
	.align	3
.L2270:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L2269:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	bne	$11,$3,.L2269
	addu	$10,$2,$10

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L2270
	daddu	$6,$6,$7

	beq	$16,$10,.L2277
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC94)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC94)

	ld	$31,72($sp)
	move	$2,$16
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

.L2277:
	ld	$4,%got_page(.LC93)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC93)

	ld	$31,72($sp)
	move	$2,$16
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
	.end	_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l
	.size	_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l, .-_ZN12_GLOBAL__N_19sad_32x32EPKhlS1_l
	.section	.rodata.str1.8
	.align	3
.LC95:
	.ascii	"sad_16x16 test success\000"
	.align	3
.LC96:
	.ascii	"sad_16x16 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l
	.type	_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l, @function
_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$12,$4,$5
	daddu	$11,$6,$7
	daddiu	$sp,$sp,-64
	daddu	$9,$12,$5
	daddu	$2,$11,$7
	sd	$18,24($sp)
	dsll	$24,$5,2
	dlsa	$18,$5,$9,1
	dlsa	$14,$7,$2,1
	sd	$19,32($sp)
	dsll	$10,$7,2
	daddu	$8,$18,$24
	sd	$17,16($sp)
	daddu	$3,$14,$10
	daddu	$19,$8,$5
	sd	$31,56($sp)
	daddu	$17,$3,$7
	daddu	$15,$19,$5
	sd	$28,48($sp)
	daddu	$13,$17,$7
	sd	$20,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l)))
	sd	$16,8($sp)
	daddu	$20,$15,$5
	ld.d	$w2,0($2)
	ld.d	$w4,0($13)
	ld.d	$w0,0($6)
	ld.d	$w3,0($8)
	ld.d	$w1,0($4)
	daddu	$8,$8,$24
	asub_u.b	$w1,$w1,$w0
	daddu	$13,$13,$7
	ld.d	$w0,0($9)
	vacc8b_u.d	$w1,$w1
	asub_u.b	$w0,$w0,$w2
	ld.d	$w2,0($3)
	vacc8b_u.d	$w0,$w0
	daddu	$3,$3,$10
	addv.d	$w1,$w1,$w0
	daddu	$10,$9,$5
	asub_u.b	$w3,$w3,$w2
	daddu	$9,$2,$7
	ld.d	$w2,0($15)
	vacc8b_u.d	$w3,$w3
	asub_u.b	$w2,$w2,$w4
	addv.d	$w1,$w1,$w3
	vacc8b_u.d	$w2,$w2
	addv.d	$w1,$w1,$w2
	copy_s.w	$2,$w1[2]
	copy_s.w	$16,$w1[0]
	addu	$16,$16,$2
	ld.d	$w2,0($9)
	ld.d	$w4,0($17)
	daddu	$15,$8,$5
	ld.d	$w1,0($10)
	ld.d	$w3,0($11)
	daddu	$28,$28,$25
	ld.d	$w0,0($12)
	daddu	$31,$18,$5
	daddu	$24,$14,$7
	asub_u.b	$w0,$w0,$w3
	asub_u.b	$w1,$w1,$w2
	ld.d	$w3,0($13)
	daddu	$25,$3,$7
	vacc8b_u.d	$w1,$w1
	ld.d	$w2,0($19)
	vacc8b_u.d	$w0,$w0
	asub_u.b	$w2,$w2,$w4
	addv.d	$w0,$w0,$w1
	vacc8b_u.d	$w2,$w2
	ld.d	$w1,0($20)
	addv.d	$w0,$w0,$w2
	asub_u.b	$w1,$w1,$w3
	vacc8b_u.d	$w1,$w1
	addv.d	$w0,$w0,$w1
	copy_s.w	$2,$w0[0]
	addu	$16,$16,$2
	daddu	$17,$31,$5
	copy_s.w	$2,$w0[2]
	daddu	$13,$24,$7
	daddu	$10,$15,$5
	ld.d	$w1,0($17)
	daddu	$9,$25,$7
	addu	$16,$16,$2
	ld.d	$w2,0($13)
	ld.d	$w3,0($14)
	ld.d	$w4,0($3)
	ld.d	$w0,0($18)
	asub_u.b	$w1,$w1,$w2
	asub_u.b	$w0,$w0,$w3
	ld.d	$w2,0($8)
	ld.d	$w3,0($9)
	vacc8b_u.d	$w1,$w1
	asub_u.b	$w2,$w2,$w4
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w2,$w2
	addv.d	$w0,$w0,$w1
	ld.d	$w1,0($10)
	addv.d	$w0,$w0,$w2
	asub_u.b	$w1,$w1,$w3
	vacc8b_u.d	$w1,$w1
	addv.d	$w0,$w0,$w1
	copy_s.w	$2,$w0[0]
	addu	$16,$16,$2
	daddu	$10,$10,$5
	copy_s.w	$2,$w0[2]
	daddu	$17,$17,$5
	addu	$16,$16,$2
	ld.d	$w0,0($31)
	ld.d	$w3,0($24)
	daddu	$13,$13,$7
	daddu	$9,$9,$7
	asub_u.b	$w0,$w0,$w3
	ld.d	$w1,0($17)
	ld.d	$w2,0($13)
	vacc8b_u.d	$w0,$w0
	asub_u.b	$w1,$w1,$w2
	ld.d	$w4,0($25)
	vacc8b_u.d	$w1,$w1
	ld.d	$w2,0($15)
	addv.d	$w0,$w0,$w1
	ld.d	$w3,0($9)
	ld.d	$w1,0($10)
	asub_u.b	$w2,$w2,$w4
	asub_u.b	$w1,$w1,$w3
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w1,$w1
	addv.d	$w0,$w0,$w2
	addv.d	$w0,$w0,$w1
	copy_s.w	$2,$w0[0]
	addu	$16,$16,$2
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l)))
	copy_s.w	$2,$w0[2]
	li	$10,16			# 0x10
	addu	$16,$16,$2
	move	$8,$0
	.align	3
.L2280:
	daddiu	$9,$4,16
	.align	3
.L2279:
	daddiu	$6,$6,1
	lbu	$2,0($4)
	daddiu	$4,$4,1
	lbu	$3,-1($6)
	subu	$2,$2,$3
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	bne	$9,$4,.L2279
	addu	$8,$2,$8

	addiu	$10,$10,-1
	move	$4,$12
	beq	$10,$0,.L2285
	move	$6,$11

	daddu	$12,$12,$5
	b	.L2280
	daddu	$11,$11,$7

.L2285:
	beq	$16,$8,.L2287
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC96)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC96)

	ld	$31,56($sp)
	move	$2,$16
	ld	$28,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

.L2287:
	ld	$4,%got_page(.LC95)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC95)

	ld	$31,56($sp)
	move	$2,$16
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
	.end	_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l
	.size	_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l, .-_ZN12_GLOBAL__N_19sad_16x16EPKhlS1_l
	.section	.rodata.str1.8
	.align	3
.LC97:
	.ascii	"sad_64x64 test success\000"
	.align	3
.LC98:
	.ascii	"sad_64x64 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l
	.type	_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l, @function
_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	move	$3,$6
	ldi.d	$w8,0
	move.v	$w11,$w8
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l)))
	move	$2,$4
	move.v	$w10,$w8
	daddu	$28,$28,$25
	sd	$31,56($sp)
	li	$8,32			# 0x20
	move.v	$w9,$w8
	sd	$21,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l)))
	dsll	$21,$5,1
	sd	$20,32($sp)
	daddiu	$31,$7,16
	dsll	$20,$7,1
	sd	$19,24($sp)
	daddiu	$25,$7,48
	daddiu	$19,$5,16
	sd	$18,16($sp)
	daddiu	$18,$5,32
	sd	$17,8($sp)
	daddiu	$17,$5,48
	sd	$16,0($sp)
	daddiu	$16,$7,32
.L2289:
	daddu	$24,$2,$5
	daddu	$15,$2,$19
	ld.d	$w3,0($2)
	ld.d	$w2,16($2)
	daddu	$14,$2,$18
	daddu	$13,$2,$17
	ld.d	$w7,32($2)
	ld.d	$w6,48($2)
	daddu	$12,$3,$7
	daddu	$11,$3,$31
	ld.d	$w19,0($3)
	ld.d	$w18,16($3)
	daddu	$10,$3,$16
	daddu	$9,$3,$25
	ld.d	$w17,32($3)
	ld.d	$w16,48($3)
	addiu	$8,$8,-1
	ld.d	$w1,0($24)
	ld.d	$w0,0($15)
	ld.d	$w5,0($14)
	ld.d	$w4,0($13)
	ld.d	$w15,0($12)
	ld.d	$w14,0($11)
	ld.d	$w13,0($10)
	ld.d	$w12,0($9)
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
	daddu	$2,$2,$21
	bne	$8,$0,.L2289
	daddu	$3,$3,$20

	copy_s.w	$2,$w8[2]
	copy_s.w	$16,$w8[0]
	addu	$16,$16,$2
	copy_s.w	$2,$w11[0]
	addu	$16,$16,$2
	copy_s.w	$2,$w11[2]
	copy_s.w	$9,$w10[0]
	copy_s.w	$3,$w10[2]
	addu	$16,$16,$2
	copy_s.w	$8,$w9[0]
	copy_s.w	$2,$w9[2]
	li	$12,64			# 0x40
	addu	$16,$16,$9
	move	$10,$0
	addu	$16,$16,$3
	addu	$16,$16,$8
	addu	$16,$16,$2
	.align	3
.L2291:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L2290:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	bne	$11,$3,.L2290
	addu	$10,$2,$10

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L2291
	daddu	$6,$6,$7

	beq	$16,$10,.L2298
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC98)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC98)

	ld	$31,56($sp)
	move	$2,$16
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

.L2298:
	ld	$4,%got_page(.LC97)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC97)

	ld	$31,56($sp)
	move	$2,$16
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
	.end	_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l
	.size	_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l, .-_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l
	.section	.rodata.str1.8
	.align	3
.LC99:
	.ascii	"satd8_64x64 test success\000"
	.align	3
.LC100:
	.ascii	"satd8_64x64 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l
	.type	_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l, @function
_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l:
	.frame	$sp,192,$31		# vars= 32, regs= 11/8, args= 0, gp= 0
	.mask	0xd0ff0000,-72
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-192
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l)))
	daddu	$28,$28,$25
	sd	$fp,112($sp)
	dlsa	$25,$7,$7,1
	sd	$22,88($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l)))
	move	$fp,$6
	sd	$21,80($sp)
	li	$22,16			# 0x10
	move	$21,$4
	sd	$20,72($sp)
	dlsa	$20,$5,$5,1
	sd	$19,64($sp)
	move	$19,$5
	sd	$18,56($sp)
	move	$18,$7
	sd	$17,48($sp)
	move	$17,$6
	sd	$16,40($sp)
	move	$16,$0
	sd	$2,16($sp)
	dsll	$2,$7,2
	sd	$31,120($sp)
	sd	$23,96($sp)
	sdc1	$f31,184($sp)
	sdc1	$f30,176($sp)
	sdc1	$f29,168($sp)
	sdc1	$f28,160($sp)
	sdc1	$f27,152($sp)
	sdc1	$f26,144($sp)
	sdc1	$f25,136($sp)
	sdc1	$f24,128($sp)
	sd	$2,24($sp)
	.align	3
.L2301:
	move	$13,$21
	daddiu	$24,$21,8
	move	$15,$fp
	daddiu	$14,$fp,8
	daddiu	$23,$21,64
.L2300:
	daddu	$6,$13,$19
	daddu	$3,$24,$19
	vbld	$w30,0($13)
	vbld	$w9,0($24)
	daddu	$5,$18,$15
	daddu	$2,$14,$18
	vbld	$w15,0($6)
	vbld	$w29,0($15)
	daddu	$31,$13,$20
	daddu	$8,$24,$20
	vbld	$w25,0($14)
	vbld	$w14,0($3)
	vbld	$w22,0($31)
	daddu	$10,$15,$25
	daddu	$7,$14,$25
	vbld	$w1,0($5)
	daddu	$12,$19,$6
	daddu	$9,$19,$3
	vbld	$w13,0($2)
	hadd_u.h	$w10,$w9,$w9
	daddu	$31,$18,$5
	daddu	$6,$18,$2
	vbld	$w23,0($12)
	vbld	$w19,0($9)
	vbld	$w18,0($8)
	hadd_u.h	$w8,$w19,$w19
	vbld	$w21,0($31)
	vbld	$w20,0($10)
	vbld	$w17,0($6)
	vbld	$w16,0($7)
	hadd_u.h	$w2,$w30,$w30
	hadd_u.h	$w7,$w15,$w15
	hadd_u.h	$w0,$w23,$w23
	hadd_u.h	$w12,$w22,$w22
	hadd_u.h	$w5,$w29,$w29
	hadd_u.h	$w31,$w1,$w1
	hadd_u.h	$w11,$w21,$w21
	hadd_u.h	$w3,$w20,$w20
	hadd_u.h	$w6,$w14,$w14
	hadd_u.h	$w4,$w18,$w18
	hadd_u.h	$w28,$w25,$w25
	hadd_u.h	$w27,$w13,$w13
	hadd_u.h	$w26,$w17,$w17
	hadd_u.h	$w24,$w16,$w16
	hsub_u.h	$w15,$w15,$w15
	hsub_u.h	$w1,$w1,$w1
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w14,$w14,$w14
	insve.d	$w7[1],$w15[0]
	insve.d	$w6[1],$w14[0]
	insve.d	$w31[1],$w1[0]
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
	addv.h	$w2,$w3,$w2
	vabs.h	$w4,$w4
	vabs.h	$w2,$w2
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
	copy_s.w	$5,$w0[2]
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,16
	addu	$3,$3,$5
	daddiu	$24,$24,16
	addu	$2,$3,$2
	daddiu	$15,$15,16
	addu	$16,$2,$16
	bne	$13,$23,.L2300
	daddiu	$14,$14,16

	ld	$2,16($sp)
	addiu	$22,$22,-1
	daddu	$21,$21,$2
	ld	$2,24($sp)
	bne	$22,$0,.L2301
	daddu	$fp,$fp,$2

	ld	$21,%got_page(_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l)($28)
	li	$2,16			# 0x10
	move	$22,$4
	sd	$17,0($sp)
	move	$17,$0
	sd	$2,8($sp)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l)
	.align	3
.L2303:
	ld	$fp,0($sp)
	daddiu	$20,$22,64
	move	$23,$22
	.align	3
.L2302:
	move	$6,$fp
	move	$4,$23
	move	$7,$18
	move	$5,$19
	move	$25,$21
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l
1:	jalr	$25
	daddiu	$23,$23,8

	daddiu	$fp,$fp,8
	bne	$20,$23,.L2302
	addu	$17,$2,$17

	ld	$3,16($sp)
	ld	$2,8($sp)
	ld	$4,24($sp)
	daddu	$22,$22,$3
	ld	$3,0($sp)
	addiu	$2,$2,-1
	sd	$2,8($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2303
	sd	$3,0($sp)

	beq	$16,$17,.L2311
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC100)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC100)

	ld	$31,120($sp)
.L2312:
	move	$2,$16
	ldc1	$f31,184($sp)
	ld	$fp,112($sp)
	ldc1	$f30,176($sp)
	ld	$28,104($sp)
	ldc1	$f29,168($sp)
	ld	$23,96($sp)
	ldc1	$f28,160($sp)
	ld	$22,88($sp)
	ldc1	$f27,152($sp)
	ld	$21,80($sp)
	ldc1	$f26,144($sp)
	ld	$20,72($sp)
	ldc1	$f25,136($sp)
	ld	$19,64($sp)
	ldc1	$f24,128($sp)
	ld	$18,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	jr	$31
	daddiu	$sp,$sp,192

.L2311:
	ld	$4,%got_page(.LC99)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC99)

	b	.L2312
	ld	$31,120($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l
	.size	_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l, .-_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l:
	.frame	$sp,224,$31		# vars= 128, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-224
	dsll	$2,$5,2
	sd	$28,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l)))
	sd	$2,112($sp)
	dsll	$2,$7,2
	daddu	$28,$28,$25
	sd	$2,104($sp)
	li	$2,16			# 0x10
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l)))
	sd	$2,88($sp)
	dlsa	$2,$7,$7,1
	sd	$2,64($sp)
	ld	$2,%got_page(.LC46)($28)
	sd	$22,184($sp)
	li	$22,65536			# 0x10000
	sd	$fp,208($sp)
	addiu	$22,$22,1
	move	$fp,$5
	daddiu	$2,$2,%got_ofst(.LC46)
	sd	$23,192($sp)
	move	$23,$7
	sd	$2,72($sp)
	ld	$2,%got_page(.LC45)($28)
	sd	$18,152($sp)
	dlsa	$18,$5,$5,1
	sd	$17,144($sp)
	move	$17,$0
	sd	$16,136($sp)
	daddiu	$2,$2,%got_ofst(.LC45)
	daddiu	$16,$4,48
	sd	$31,216($sp)
	sd	$21,176($sp)
	sd	$20,168($sp)
	sd	$19,160($sp)
	sd	$6,80($sp)
	sd	$2,96($sp)
	.align	3
.L2319:
	ld	$20,80($sp)
	daddiu	$19,$16,-48
	move	$2,$17
	move	$17,$20
	move	$20,$19
	move	$19,$2
	.align	3
.L2318:
	ld	$4,64($sp)
	daddu	$2,$17,$23
	daddu	$3,$20,$fp
	vbld	$w15,0($20)
	daddu	$6,$2,$23
	daddu	$7,$3,$fp
	vbld	$w14,0($17)
	vbld	$w3,0($2)
	daddu	$5,$18,$20
	vbld	$w13,0($7)
	vbld	$w12,0($6)
	vbld	$w5,0($3)
	daddu	$4,$4,$17
	hadd_u.h	$w0,$w12,$w12
	vbld	$w9,0($5)
	hadd_u.h	$w10,$w15,$w15
	vbld	$w8,0($4)
	hadd_u.h	$w7,$w5,$w5
	hadd_u.h	$w6,$w8,$w8
	hadd_u.h	$w2,$w13,$w13
	hadd_u.h	$w4,$w14,$w14
	hadd_u.h	$w11,$w3,$w3
	hsub_u.h	$w17,$w15,$w15
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w15,$w13,$w13
	hsub_u.h	$w16,$w14,$w14
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w14,$w12,$w12
	insve.d	$w7[1],$w5[0]
	hsub_u.h	$w12,$w8,$w8
	insve.d	$w2[1],$w15[0]
	hadd_u.h	$w1,$w9,$w9
	move.v	$w8,$w2
	hsub_u.h	$w13,$w9,$w9
	insve.d	$w10[1],$w17[0]
	insve.d	$w1[1],$w13[0]
	insve.d	$w4[1],$w16[0]
	move.v	$w5,$w1
	subv.h	$w4,$w10,$w4
	move.v	$w1,$w0
	move.v	$w2,$w11
	insve.d	$w1[1],$w14[0]
	insve.d	$w2[1],$w3[0]
	subv.h	$w7,$w7,$w2
	subv.h	$w2,$w8,$w1
	addv.h	$w0,$w7,$w4
	move.v	$w1,$w6
	subv.h	$w7,$w7,$w4
	insve.d	$w1[1],$w12[0]
	subv.h	$w1,$w5,$w1
	addv.h	$w6,$w1,$w2
	subv.h	$w1,$w1,$w2
	asub_s.h	$w4,$w6,$w0
	addv.h	$w5,$w1,$w7
	addv.h	$w6,$w6,$w0
	asub_s.h	$w1,$w1,$w7
	vabs.h	$w6,$w6
	vabs.h	$w3,$w1
	ilvod.h	$w2,$w5,$w6
	ilvod.h	$w1,$w3,$w4
	ilvev.h	$w5,$w5,$w6
	ilvev.h	$w3,$w3,$w4
	max_s.h	$w2,$w2,$w5
	max_s.h	$w1,$w1,$w3
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w0,$w2,$w1
	copy_s.w	$2,$w0[1]
	copy_s.w	$21,$w0[0]
	addu	$21,$21,$2
	copy_s.w	$2,$w0[2]
	move	$9,$20
	addu	$21,$21,$2
	move	$8,$17
	copy_s.w	$2,$w0[3]
	move	$11,$sp
	addu	$21,$21,$2
	daddiu	$13,$sp,64
	move	$12,$sp
.L2314:
	lbu	$5,4($8)
	daddiu	$12,$12,16
	lbu	$7,4($9)
	lbu	$4,5($8)
	lbu	$14,7($8)
	lbu	$2,5($9)
	subu	$7,$7,$5
	lbu	$5,7($9)
	sll	$7,$7,16
	lbu	$6,6($8)
	lbu	$3,6($9)
	subu	$2,$2,$4
	lbu	$15,0($8)
	subu	$5,$5,$14
	sll	$2,$2,16
	lbu	$10,0($9)
	sll	$5,$5,16
	lbu	$14,1($8)
	subu	$3,$3,$6
	lbu	$4,1($9)
	sll	$6,$3,16
	subu	$10,$10,$15
	lbu	$3,2($9)
	lbu	$15,2($8)
	addu	$7,$7,$10
	subu	$4,$4,$14
	lbu	$10,3($9)
	daddu	$9,$9,$fp
	lbu	$14,3($8)
	addu	$2,$2,$4
	daddu	$8,$8,$23
	subu	$3,$3,$15
	addu	$4,$7,$2
	addu	$3,$6,$3
	subu	$2,$7,$2
	subu	$6,$10,$14
	addu	$5,$5,$6
	addu	$6,$3,$5
	subu	$3,$3,$5
	addu	$7,$4,$6
	addu	$5,$2,$3
	subu	$4,$4,$6
	subu	$2,$2,$3
	sw	$7,-16($12)
	sw	$4,-8($12)
	sw	$5,-12($12)
	bne	$13,$12,.L2314
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2315:
	lw	$6,0($11)
	daddiu	$11,$11,4
	lw	$4,12($11)
	lw	$2,44($11)
	lw	$3,28($11)
	addu	$7,$6,$4
	subu	$6,$6,$4
	addu	$4,$3,$2
	subu	$3,$3,$2
	addu	$5,$6,$3
	addu	$2,$7,$4
	srl	$9,$2,15
	subu	$4,$7,$4
	srl	$8,$5,15
	subu	$3,$6,$3
	and	$9,$9,$22
	and	$8,$8,$22
	srl	$7,$4,15
	sll	$14,$9,16
	and	$7,$7,$22
	sll	$10,$8,16
	srl	$6,$3,15
	subu	$9,$14,$9
	subu	$8,$10,$8
	and	$6,$6,$22
	sll	$14,$7,16
	sll	$10,$6,16
	subu	$7,$14,$7
	addu	$2,$2,$9
	addu	$5,$5,$8
	subu	$6,$10,$6
	xor	$2,$2,$9
	xor	$5,$5,$8
	addu	$4,$4,$7
	addu	$2,$2,$5
	xor	$4,$4,$7
	addu	$3,$3,$6
	addu	$2,$2,$4
	xor	$3,$3,$6
	addu	$2,$2,$3
	bne	$13,$11,.L2315
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$21,.L2325
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,72($sp)

	addu	$21,$21,$19
.L2326:
	daddiu	$20,$20,8
	move	$19,$21
	bne	$16,$20,.L2318
	daddiu	$17,$17,8

	ld	$3,112($sp)
	move	$17,$19
	ld	$2,88($sp)
	ld	$4,104($sp)
	daddu	$16,$16,$3
	ld	$3,80($sp)
	addiu	$2,$2,-1
	sd	$2,88($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2319
	sd	$3,80($sp)

	ld	$31,216($sp)
	move	$2,$21
	ld	$fp,208($sp)
	ld	$28,200($sp)
	ld	$23,192($sp)
	ld	$22,184($sp)
	ld	$21,176($sp)
	ld	$20,168($sp)
	ld	$19,160($sp)
	ld	$18,152($sp)
	ld	$17,144($sp)
	ld	$16,136($sp)
	jr	$31
	daddiu	$sp,$sp,224

	.align	3
.L2325:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,96($sp)

	b	.L2326
	addu	$21,$21,$19

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
	.frame	$sp,224,$31		# vars= 128, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-224
	dsll	$2,$5,2
	sd	$28,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l)))
	sd	$2,112($sp)
	dsll	$2,$7,2
	daddu	$28,$28,$25
	sd	$2,104($sp)
	li	$2,12			# 0xc
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l)))
	sd	$2,96($sp)
	dlsa	$2,$7,$7,1
	sd	$2,64($sp)
	ld	$2,%got_page(.LC46)($28)
	sd	$22,184($sp)
	li	$22,65536			# 0x10000
	sd	$fp,208($sp)
	addiu	$22,$22,1
	move	$fp,$5
	daddiu	$2,$2,%got_ofst(.LC46)
	sd	$23,192($sp)
	move	$23,$7
	sd	$2,72($sp)
	ld	$2,%got_page(.LC45)($28)
	sd	$18,152($sp)
	dlsa	$18,$5,$5,1
	sd	$17,144($sp)
	move	$17,$0
	sd	$16,136($sp)
	daddiu	$2,$2,%got_ofst(.LC45)
	daddiu	$16,$4,64
	sd	$31,216($sp)
	sd	$21,176($sp)
	sd	$20,168($sp)
	sd	$19,160($sp)
	sd	$6,80($sp)
	sd	$2,88($sp)
	.align	3
.L2333:
	ld	$20,80($sp)
	daddiu	$19,$16,-64
	move	$2,$17
	move	$17,$20
	move	$20,$19
	move	$19,$2
	.align	3
.L2332:
	ld	$4,64($sp)
	daddu	$2,$17,$23
	daddu	$3,$20,$fp
	vbld	$w15,0($20)
	daddu	$6,$2,$23
	daddu	$7,$3,$fp
	vbld	$w14,0($17)
	vbld	$w3,0($2)
	daddu	$5,$18,$20
	vbld	$w13,0($7)
	vbld	$w12,0($6)
	vbld	$w5,0($3)
	daddu	$4,$4,$17
	hadd_u.h	$w0,$w12,$w12
	vbld	$w9,0($5)
	hadd_u.h	$w10,$w15,$w15
	vbld	$w8,0($4)
	hadd_u.h	$w7,$w5,$w5
	hadd_u.h	$w6,$w8,$w8
	hadd_u.h	$w2,$w13,$w13
	hadd_u.h	$w4,$w14,$w14
	hadd_u.h	$w11,$w3,$w3
	hsub_u.h	$w17,$w15,$w15
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w15,$w13,$w13
	hsub_u.h	$w16,$w14,$w14
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w14,$w12,$w12
	insve.d	$w7[1],$w5[0]
	hsub_u.h	$w12,$w8,$w8
	insve.d	$w2[1],$w15[0]
	hadd_u.h	$w1,$w9,$w9
	move.v	$w8,$w2
	hsub_u.h	$w13,$w9,$w9
	insve.d	$w10[1],$w17[0]
	insve.d	$w1[1],$w13[0]
	insve.d	$w4[1],$w16[0]
	move.v	$w5,$w1
	subv.h	$w4,$w10,$w4
	move.v	$w1,$w0
	move.v	$w2,$w11
	insve.d	$w1[1],$w14[0]
	insve.d	$w2[1],$w3[0]
	subv.h	$w7,$w7,$w2
	subv.h	$w2,$w8,$w1
	addv.h	$w0,$w7,$w4
	move.v	$w1,$w6
	subv.h	$w7,$w7,$w4
	insve.d	$w1[1],$w12[0]
	subv.h	$w1,$w5,$w1
	addv.h	$w6,$w1,$w2
	subv.h	$w1,$w1,$w2
	asub_s.h	$w4,$w6,$w0
	addv.h	$w5,$w1,$w7
	addv.h	$w6,$w6,$w0
	asub_s.h	$w1,$w1,$w7
	vabs.h	$w6,$w6
	vabs.h	$w3,$w1
	ilvod.h	$w2,$w5,$w6
	ilvod.h	$w1,$w3,$w4
	ilvev.h	$w5,$w5,$w6
	ilvev.h	$w3,$w3,$w4
	max_s.h	$w2,$w2,$w5
	max_s.h	$w1,$w1,$w3
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w0,$w2,$w1
	copy_s.w	$2,$w0[1]
	copy_s.w	$21,$w0[0]
	addu	$21,$21,$2
	copy_s.w	$2,$w0[2]
	move	$9,$20
	addu	$21,$21,$2
	move	$8,$17
	copy_s.w	$2,$w0[3]
	move	$11,$sp
	addu	$21,$21,$2
	daddiu	$13,$sp,64
	move	$12,$sp
.L2328:
	lbu	$5,4($8)
	daddiu	$12,$12,16
	lbu	$7,4($9)
	lbu	$4,5($8)
	lbu	$14,7($8)
	lbu	$2,5($9)
	subu	$7,$7,$5
	lbu	$5,7($9)
	sll	$7,$7,16
	lbu	$6,6($8)
	lbu	$3,6($9)
	subu	$2,$2,$4
	lbu	$15,0($8)
	subu	$5,$5,$14
	sll	$2,$2,16
	lbu	$10,0($9)
	sll	$5,$5,16
	lbu	$14,1($8)
	subu	$3,$3,$6
	lbu	$4,1($9)
	sll	$6,$3,16
	subu	$10,$10,$15
	lbu	$3,2($9)
	lbu	$15,2($8)
	addu	$7,$7,$10
	subu	$4,$4,$14
	lbu	$10,3($9)
	daddu	$9,$9,$fp
	lbu	$14,3($8)
	addu	$2,$2,$4
	daddu	$8,$8,$23
	subu	$3,$3,$15
	addu	$4,$7,$2
	addu	$3,$6,$3
	subu	$2,$7,$2
	subu	$6,$10,$14
	addu	$5,$5,$6
	addu	$6,$3,$5
	subu	$3,$3,$5
	addu	$7,$4,$6
	addu	$5,$2,$3
	subu	$4,$4,$6
	subu	$2,$2,$3
	sw	$7,-16($12)
	sw	$4,-8($12)
	sw	$5,-12($12)
	bne	$13,$12,.L2328
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2329:
	lw	$6,0($11)
	daddiu	$11,$11,4
	lw	$4,12($11)
	lw	$2,44($11)
	lw	$3,28($11)
	addu	$7,$6,$4
	subu	$6,$6,$4
	addu	$4,$3,$2
	subu	$3,$3,$2
	addu	$5,$6,$3
	addu	$2,$7,$4
	srl	$9,$2,15
	subu	$4,$7,$4
	srl	$8,$5,15
	subu	$3,$6,$3
	and	$9,$9,$22
	and	$8,$8,$22
	srl	$7,$4,15
	sll	$14,$9,16
	and	$7,$7,$22
	sll	$10,$8,16
	srl	$6,$3,15
	subu	$9,$14,$9
	subu	$8,$10,$8
	and	$6,$6,$22
	sll	$14,$7,16
	sll	$10,$6,16
	subu	$7,$14,$7
	addu	$2,$2,$9
	addu	$5,$5,$8
	subu	$6,$10,$6
	xor	$2,$2,$9
	xor	$5,$5,$8
	addu	$4,$4,$7
	addu	$2,$2,$5
	xor	$4,$4,$7
	addu	$3,$3,$6
	addu	$2,$2,$4
	xor	$3,$3,$6
	addu	$2,$2,$3
	bne	$13,$11,.L2329
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$21,.L2339
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,72($sp)

	addu	$21,$21,$19
.L2340:
	daddiu	$20,$20,8
	move	$19,$21
	bne	$16,$20,.L2332
	daddiu	$17,$17,8

	ld	$3,112($sp)
	move	$17,$19
	ld	$2,96($sp)
	ld	$4,104($sp)
	daddu	$16,$16,$3
	ld	$3,80($sp)
	addiu	$2,$2,-1
	sd	$2,96($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2333
	sd	$3,80($sp)

	ld	$31,216($sp)
	move	$2,$21
	ld	$fp,208($sp)
	ld	$28,200($sp)
	ld	$23,192($sp)
	ld	$22,184($sp)
	ld	$21,176($sp)
	ld	$20,168($sp)
	ld	$19,160($sp)
	ld	$18,152($sp)
	ld	$17,144($sp)
	ld	$16,136($sp)
	jr	$31
	daddiu	$sp,$sp,224

	.align	3
.L2339:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,88($sp)

	b	.L2340
	addu	$21,$21,$19

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
	.frame	$sp,224,$31		# vars= 128, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-224
	dsll	$2,$5,2
	sd	$28,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l)))
	sd	$2,112($sp)
	dsll	$2,$7,2
	daddu	$28,$28,$25
	sd	$2,104($sp)
	li	$2,16			# 0x10
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l)))
	sd	$2,88($sp)
	dlsa	$2,$7,$7,1
	sd	$2,64($sp)
	ld	$2,%got_page(.LC46)($28)
	sd	$22,184($sp)
	li	$22,65536			# 0x10000
	sd	$fp,208($sp)
	addiu	$22,$22,1
	move	$fp,$5
	daddiu	$2,$2,%got_ofst(.LC46)
	sd	$23,192($sp)
	move	$23,$7
	sd	$2,80($sp)
	ld	$2,%got_page(.LC45)($28)
	sd	$18,152($sp)
	dlsa	$18,$5,$5,1
	sd	$17,144($sp)
	move	$17,$0
	sd	$16,136($sp)
	daddiu	$2,$2,%got_ofst(.LC45)
	daddiu	$16,$4,32
	sd	$31,216($sp)
	sd	$21,176($sp)
	sd	$20,168($sp)
	sd	$19,160($sp)
	sd	$6,72($sp)
	sd	$2,96($sp)
	.align	3
.L2347:
	ld	$20,72($sp)
	daddiu	$19,$16,-32
	move	$2,$17
	move	$17,$20
	move	$20,$19
	move	$19,$2
.L2346:
	ld	$4,64($sp)
	daddu	$2,$17,$23
	daddu	$3,$20,$fp
	vbld	$w15,0($20)
	daddu	$6,$2,$23
	daddu	$7,$3,$fp
	vbld	$w14,0($17)
	vbld	$w3,0($2)
	daddu	$5,$18,$20
	vbld	$w13,0($7)
	vbld	$w12,0($6)
	vbld	$w5,0($3)
	daddu	$4,$4,$17
	hadd_u.h	$w0,$w12,$w12
	vbld	$w9,0($5)
	hadd_u.h	$w10,$w15,$w15
	vbld	$w8,0($4)
	hadd_u.h	$w7,$w5,$w5
	hadd_u.h	$w6,$w8,$w8
	hadd_u.h	$w2,$w13,$w13
	hadd_u.h	$w4,$w14,$w14
	hadd_u.h	$w11,$w3,$w3
	hsub_u.h	$w17,$w15,$w15
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w15,$w13,$w13
	hsub_u.h	$w16,$w14,$w14
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w14,$w12,$w12
	insve.d	$w7[1],$w5[0]
	hsub_u.h	$w12,$w8,$w8
	insve.d	$w2[1],$w15[0]
	hadd_u.h	$w1,$w9,$w9
	move.v	$w8,$w2
	hsub_u.h	$w13,$w9,$w9
	insve.d	$w10[1],$w17[0]
	insve.d	$w1[1],$w13[0]
	insve.d	$w4[1],$w16[0]
	move.v	$w5,$w1
	subv.h	$w4,$w10,$w4
	move.v	$w1,$w0
	move.v	$w2,$w11
	insve.d	$w1[1],$w14[0]
	insve.d	$w2[1],$w3[0]
	subv.h	$w7,$w7,$w2
	subv.h	$w2,$w8,$w1
	addv.h	$w0,$w7,$w4
	move.v	$w1,$w6
	subv.h	$w7,$w7,$w4
	insve.d	$w1[1],$w12[0]
	subv.h	$w1,$w5,$w1
	addv.h	$w6,$w1,$w2
	subv.h	$w1,$w1,$w2
	asub_s.h	$w4,$w6,$w0
	addv.h	$w5,$w1,$w7
	addv.h	$w6,$w6,$w0
	asub_s.h	$w1,$w1,$w7
	vabs.h	$w6,$w6
	vabs.h	$w3,$w1
	ilvod.h	$w2,$w5,$w6
	ilvod.h	$w1,$w3,$w4
	ilvev.h	$w5,$w5,$w6
	ilvev.h	$w3,$w3,$w4
	max_s.h	$w2,$w2,$w5
	max_s.h	$w1,$w1,$w3
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w0,$w2,$w1
	copy_s.w	$2,$w0[1]
	copy_s.w	$21,$w0[0]
	addu	$21,$21,$2
	copy_s.w	$2,$w0[2]
	move	$9,$20
	addu	$21,$21,$2
	move	$8,$17
	copy_s.w	$2,$w0[3]
	move	$11,$sp
	addu	$21,$21,$2
	daddiu	$13,$sp,64
	move	$12,$sp
.L2342:
	lbu	$5,4($8)
	daddiu	$12,$12,16
	lbu	$7,4($9)
	lbu	$4,5($8)
	lbu	$14,7($8)
	lbu	$2,5($9)
	subu	$7,$7,$5
	lbu	$5,7($9)
	sll	$7,$7,16
	lbu	$6,6($8)
	lbu	$3,6($9)
	subu	$2,$2,$4
	lbu	$15,0($8)
	subu	$5,$5,$14
	sll	$2,$2,16
	lbu	$10,0($9)
	sll	$5,$5,16
	lbu	$14,1($8)
	subu	$3,$3,$6
	lbu	$4,1($9)
	sll	$6,$3,16
	subu	$10,$10,$15
	lbu	$3,2($9)
	lbu	$15,2($8)
	addu	$7,$7,$10
	subu	$4,$4,$14
	lbu	$10,3($9)
	daddu	$9,$9,$fp
	lbu	$14,3($8)
	addu	$2,$2,$4
	daddu	$8,$8,$23
	subu	$3,$3,$15
	addu	$4,$7,$2
	addu	$3,$6,$3
	subu	$2,$7,$2
	subu	$6,$10,$14
	addu	$5,$5,$6
	addu	$6,$3,$5
	subu	$3,$3,$5
	addu	$7,$4,$6
	addu	$5,$2,$3
	subu	$4,$4,$6
	subu	$2,$2,$3
	sw	$7,-16($12)
	sw	$4,-8($12)
	sw	$5,-12($12)
	bne	$13,$12,.L2342
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2343:
	lw	$6,0($11)
	daddiu	$11,$11,4
	lw	$4,12($11)
	lw	$2,44($11)
	lw	$3,28($11)
	addu	$7,$6,$4
	subu	$6,$6,$4
	addu	$4,$3,$2
	subu	$3,$3,$2
	addu	$5,$6,$3
	addu	$2,$7,$4
	srl	$9,$2,15
	subu	$4,$7,$4
	srl	$8,$5,15
	subu	$3,$6,$3
	and	$9,$9,$22
	and	$8,$8,$22
	srl	$7,$4,15
	sll	$14,$9,16
	and	$7,$7,$22
	sll	$10,$8,16
	srl	$6,$3,15
	subu	$9,$14,$9
	subu	$8,$10,$8
	and	$6,$6,$22
	sll	$14,$7,16
	sll	$10,$6,16
	subu	$7,$14,$7
	addu	$2,$2,$9
	addu	$5,$5,$8
	subu	$6,$10,$6
	xor	$2,$2,$9
	xor	$5,$5,$8
	addu	$4,$4,$7
	addu	$2,$2,$5
	xor	$4,$4,$7
	addu	$3,$3,$6
	addu	$2,$2,$4
	xor	$3,$3,$6
	addu	$2,$2,$3
	bne	$13,$11,.L2343
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$21,.L2353
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,80($sp)

	addu	$21,$21,$19
.L2354:
	daddiu	$20,$20,8
	move	$19,$21
	bne	$16,$20,.L2346
	daddiu	$17,$17,8

	ld	$3,112($sp)
	move	$17,$19
	ld	$2,88($sp)
	ld	$4,104($sp)
	daddu	$16,$16,$3
	ld	$3,72($sp)
	addiu	$2,$2,-1
	sd	$2,88($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2347
	sd	$3,72($sp)

	ld	$31,216($sp)
	move	$2,$21
	ld	$fp,208($sp)
	ld	$28,200($sp)
	ld	$23,192($sp)
	ld	$22,184($sp)
	ld	$21,176($sp)
	ld	$20,168($sp)
	ld	$19,160($sp)
	ld	$18,152($sp)
	ld	$17,144($sp)
	ld	$16,136($sp)
	jr	$31
	daddiu	$sp,$sp,224

	.align	3
.L2353:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,96($sp)

	b	.L2354
	addu	$21,$21,$19

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
	.frame	$sp,224,$31		# vars= 128, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-224
	dsll	$2,$5,2
	sd	$28,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l)))
	sd	$2,112($sp)
	dsll	$2,$7,2
	daddu	$28,$28,$25
	sd	$2,104($sp)
	li	$2,8			# 0x8
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l)))
	sd	$2,96($sp)
	dlsa	$2,$7,$7,1
	sd	$2,64($sp)
	ld	$2,%got_page(.LC46)($28)
	sd	$22,184($sp)
	li	$22,65536			# 0x10000
	sd	$fp,208($sp)
	addiu	$22,$22,1
	move	$fp,$5
	daddiu	$2,$2,%got_ofst(.LC46)
	sd	$23,192($sp)
	move	$23,$7
	sd	$2,72($sp)
	ld	$2,%got_page(.LC45)($28)
	sd	$18,152($sp)
	dlsa	$18,$5,$5,1
	sd	$17,144($sp)
	move	$17,$0
	sd	$16,136($sp)
	daddiu	$2,$2,%got_ofst(.LC45)
	daddiu	$16,$4,64
	sd	$31,216($sp)
	sd	$21,176($sp)
	sd	$20,168($sp)
	sd	$19,160($sp)
	sd	$6,80($sp)
	sd	$2,88($sp)
	.align	3
.L2361:
	ld	$20,80($sp)
	daddiu	$19,$16,-64
	move	$2,$17
	move	$17,$20
	move	$20,$19
	move	$19,$2
	.align	3
.L2360:
	ld	$4,64($sp)
	daddu	$2,$17,$23
	daddu	$3,$20,$fp
	vbld	$w15,0($20)
	daddu	$6,$2,$23
	daddu	$7,$3,$fp
	vbld	$w14,0($17)
	vbld	$w3,0($2)
	daddu	$5,$18,$20
	vbld	$w13,0($7)
	vbld	$w12,0($6)
	vbld	$w5,0($3)
	daddu	$4,$4,$17
	hadd_u.h	$w0,$w12,$w12
	vbld	$w9,0($5)
	hadd_u.h	$w10,$w15,$w15
	vbld	$w8,0($4)
	hadd_u.h	$w7,$w5,$w5
	hadd_u.h	$w6,$w8,$w8
	hadd_u.h	$w2,$w13,$w13
	hadd_u.h	$w4,$w14,$w14
	hadd_u.h	$w11,$w3,$w3
	hsub_u.h	$w17,$w15,$w15
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w15,$w13,$w13
	hsub_u.h	$w16,$w14,$w14
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w14,$w12,$w12
	insve.d	$w7[1],$w5[0]
	hsub_u.h	$w12,$w8,$w8
	insve.d	$w2[1],$w15[0]
	hadd_u.h	$w1,$w9,$w9
	move.v	$w8,$w2
	hsub_u.h	$w13,$w9,$w9
	insve.d	$w10[1],$w17[0]
	insve.d	$w1[1],$w13[0]
	insve.d	$w4[1],$w16[0]
	move.v	$w5,$w1
	subv.h	$w4,$w10,$w4
	move.v	$w1,$w0
	move.v	$w2,$w11
	insve.d	$w1[1],$w14[0]
	insve.d	$w2[1],$w3[0]
	subv.h	$w7,$w7,$w2
	subv.h	$w2,$w8,$w1
	addv.h	$w0,$w7,$w4
	move.v	$w1,$w6
	subv.h	$w7,$w7,$w4
	insve.d	$w1[1],$w12[0]
	subv.h	$w1,$w5,$w1
	addv.h	$w6,$w1,$w2
	subv.h	$w1,$w1,$w2
	asub_s.h	$w4,$w6,$w0
	addv.h	$w5,$w1,$w7
	addv.h	$w6,$w6,$w0
	asub_s.h	$w1,$w1,$w7
	vabs.h	$w6,$w6
	vabs.h	$w3,$w1
	ilvod.h	$w2,$w5,$w6
	ilvod.h	$w1,$w3,$w4
	ilvev.h	$w5,$w5,$w6
	ilvev.h	$w3,$w3,$w4
	max_s.h	$w2,$w2,$w5
	max_s.h	$w1,$w1,$w3
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w0,$w2,$w1
	copy_s.w	$2,$w0[1]
	copy_s.w	$21,$w0[0]
	addu	$21,$21,$2
	copy_s.w	$2,$w0[2]
	move	$9,$20
	addu	$21,$21,$2
	move	$8,$17
	copy_s.w	$2,$w0[3]
	move	$11,$sp
	addu	$21,$21,$2
	daddiu	$13,$sp,64
	move	$12,$sp
.L2356:
	lbu	$5,4($8)
	daddiu	$12,$12,16
	lbu	$7,4($9)
	lbu	$4,5($8)
	lbu	$14,7($8)
	lbu	$2,5($9)
	subu	$7,$7,$5
	lbu	$5,7($9)
	sll	$7,$7,16
	lbu	$6,6($8)
	lbu	$3,6($9)
	subu	$2,$2,$4
	lbu	$15,0($8)
	subu	$5,$5,$14
	sll	$2,$2,16
	lbu	$10,0($9)
	sll	$5,$5,16
	lbu	$14,1($8)
	subu	$3,$3,$6
	lbu	$4,1($9)
	sll	$6,$3,16
	subu	$10,$10,$15
	lbu	$3,2($9)
	lbu	$15,2($8)
	addu	$7,$7,$10
	subu	$4,$4,$14
	lbu	$10,3($9)
	daddu	$9,$9,$fp
	lbu	$14,3($8)
	addu	$2,$2,$4
	daddu	$8,$8,$23
	subu	$3,$3,$15
	addu	$4,$7,$2
	addu	$3,$6,$3
	subu	$2,$7,$2
	subu	$6,$10,$14
	addu	$5,$5,$6
	addu	$6,$3,$5
	subu	$3,$3,$5
	addu	$7,$4,$6
	addu	$5,$2,$3
	subu	$4,$4,$6
	subu	$2,$2,$3
	sw	$7,-16($12)
	sw	$4,-8($12)
	sw	$5,-12($12)
	bne	$13,$12,.L2356
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2357:
	lw	$6,0($11)
	daddiu	$11,$11,4
	lw	$4,12($11)
	lw	$2,44($11)
	lw	$3,28($11)
	addu	$7,$6,$4
	subu	$6,$6,$4
	addu	$4,$3,$2
	subu	$3,$3,$2
	addu	$5,$6,$3
	addu	$2,$7,$4
	srl	$9,$2,15
	subu	$4,$7,$4
	srl	$8,$5,15
	subu	$3,$6,$3
	and	$9,$9,$22
	and	$8,$8,$22
	srl	$7,$4,15
	sll	$14,$9,16
	and	$7,$7,$22
	sll	$10,$8,16
	srl	$6,$3,15
	subu	$9,$14,$9
	subu	$8,$10,$8
	and	$6,$6,$22
	sll	$14,$7,16
	sll	$10,$6,16
	subu	$7,$14,$7
	addu	$2,$2,$9
	addu	$5,$5,$8
	subu	$6,$10,$6
	xor	$2,$2,$9
	xor	$5,$5,$8
	addu	$4,$4,$7
	addu	$2,$2,$5
	xor	$4,$4,$7
	addu	$3,$3,$6
	addu	$2,$2,$4
	xor	$3,$3,$6
	addu	$2,$2,$3
	bne	$13,$11,.L2357
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$21,.L2367
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,72($sp)

	addu	$21,$21,$19
.L2368:
	daddiu	$20,$20,8
	move	$19,$21
	bne	$16,$20,.L2360
	daddiu	$17,$17,8

	ld	$3,112($sp)
	move	$17,$19
	ld	$2,96($sp)
	ld	$4,104($sp)
	daddu	$16,$16,$3
	ld	$3,80($sp)
	addiu	$2,$2,-1
	sd	$2,96($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2361
	sd	$3,80($sp)

	ld	$31,216($sp)
	move	$2,$21
	ld	$fp,208($sp)
	ld	$28,200($sp)
	ld	$23,192($sp)
	ld	$22,184($sp)
	ld	$21,176($sp)
	ld	$20,168($sp)
	ld	$19,160($sp)
	ld	$18,152($sp)
	ld	$17,144($sp)
	ld	$16,136($sp)
	jr	$31
	daddiu	$sp,$sp,224

	.align	3
.L2367:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,88($sp)

	b	.L2368
	addu	$21,$21,$19

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l
	.section	.rodata.str1.8
	.align	3
.LC101:
	.ascii	"sa8d_64x64 test success\000"
	.align	3
.LC102:
	.ascii	"sa8d_64x64 test fail\000"
	.text
	.align	2
	.align	3
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
	dsll	$2,$5,3
	sd	$2,192($sp)
	dsll	$2,$7,3
	sd	$2,200($sp)
	daddu	$2,$4,$5
	sd	$2,168($sp)
	daddu	$2,$6,$7
	sd	$28,296($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l)))
	sd	$2,160($sp)
	dsll	$2,$5,1
	daddu	$28,$28,$25
	sd	$2,144($sp)
	dsll	$2,$7,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l)))
	sd	$2,136($sp)
	li	$2,8			# 0x8
	sd	$2,184($sp)
	ld	$2,%got_page(.LC38)($28)
	sd	$20,264($sp)
	li	$20,65536			# 0x10000
	sd	$22,280($sp)
	addiu	$20,$20,1
	move	$22,$0
	daddiu	$2,$2,%got_ofst(.LC38)
	sd	$17,240($sp)
	move	$17,$7
	sd	$2,152($sp)
	ld	$2,%got_page(.LC37)($28)
	sd	$16,232($sp)
	move	$16,$5
	sd	$31,312($sp)
	daddiu	$2,$2,%got_ofst(.LC37)
	sd	$fp,304($sp)
	sd	$23,288($sp)
	sd	$21,272($sp)
	sd	$19,256($sp)
	sd	$18,248($sp)
	sd	$4,208($sp)
	sd	$6,216($sp)
	sd	$2,176($sp)
	.align	3
.L2375:
	ld	$19,168($sp)
	ld	$21,160($sp)
	daddiu	$2,$19,64
	sd	$2,128($sp)
	.align	3
.L2374:
	ld	$2,144($sp)
	dsubu	$9,$19,$16
	dsubu	$8,$21,$17
	vbld	$w12,0($19)
	vbld	$w15,0($9)
	hadd_u.h	$w7,$w12,$w12
	hsub_u.h	$w16,$w15,$w15
	vbld	$w13,0($21)
	vbld	$w14,0($8)
	hadd_u.h	$w4,$w15,$w15
	hadd_u.h	$w3,$w14,$w14
	hsub_u.h	$w15,$w12,$w12
	daddu	$3,$2,$9
	ld	$2,136($sp)
	insve.d	$w4[1],$w16[0]
	hadd_u.h	$w1,$w13,$w13
	daddu	$11,$16,$3
	vbld	$w11,0($3)
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w12,$w11,$w11
	daddu	$7,$16,$11
	vbld	$w8,0($11)
	hadd_u.h	$w10,$w11,$w11
	hadd_u.h	$w0,$w8,$w8
	daddu	$2,$2,$8
	daddu	$5,$16,$7
	insve.d	$w10[1],$w12[0]
	vbld	$w17,0($7)
	daddu	$10,$17,$2
	vbld	$w6,0($2)
	daddu	$3,$16,$5
	hadd_u.h	$w5,$w6,$w6
	daddu	$6,$17,$10
	daddu	$13,$16,$3
	vbld	$w2,0($10)
	hsub_u.h	$w11,$w6,$w6
	daddu	$4,$17,$6
	hadd_u.h	$w9,$w2,$w2
	hsub_u.h	$w6,$w2,$w2
	vbld	$w12,0($6)
	daddu	$2,$17,$4
	vbld	$w16,0($5)
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w13,$w13,$w13
	daddu	$12,$17,$2
	insve.d	$w1[1],$w13[0]
	move.v	$w2,$w7
	insve.d	$w0[1],$w8[0]
	insve.d	$w2[1],$w15[0]
	move.v	$w8,$w0
	subv.h	$w7,$w2,$w1
	vbld	$w15,0($3)
	insve.d	$w3[1],$w14[0]
	move.v	$w0,$w5
	subv.h	$w3,$w4,$w3
	insve.d	$w0[1],$w11[0]
	addv.h	$w1,$w7,$w3
	subv.h	$w4,$w10,$w0
	subv.h	$w7,$w7,$w3
	vbld	$w11,0($4)
	move.v	$w0,$w9
	hadd_u.h	$w14,$w11,$w11
	insve.d	$w0[1],$w6[0]
	vbld	$w20,0($13)
	subv.h	$w0,$w8,$w0
	vbld	$w19,0($12)
	addv.h	$w5,$w0,$w4
	hadd_u.h	$w8,$w16,$w16
	subv.h	$w0,$w0,$w4
	hadd_u.h	$w10,$w19,$w19
	subv.h	$w6,$w0,$w7
	addv.h	$w4,$w5,$w1
	addv.h	$w3,$w0,$w7
	subv.h	$w5,$w5,$w1
	vbld	$w0,0($2)
	hadd_u.h	$w7,$w15,$w15
	hadd_u.h	$w13,$w17,$w17
	hadd_u.h	$w9,$w20,$w20
	hadd_u.h	$w2,$w12,$w12
	hadd_u.h	$w1,$w0,$w0
	hsub_u.h	$w21,$w17,$w17
	hsub_u.h	$w18,$w16,$w16
	hsub_u.h	$w17,$w15,$w15
	hsub_u.h	$w16,$w12,$w12
	hsub_u.h	$w15,$w11,$w11
	hsub_u.h	$w0,$w0,$w0
	insve.d	$w13[1],$w21[0]
	move.v	$w12,$w8
	move.v	$w11,$w7
	insve.d	$w12[1],$w18[0]
	insve.d	$w11[1],$w17[0]
	move.v	$w7,$w14
	insve.d	$w1[1],$w0[0]
	insve.d	$w7[1],$w15[0]
	move.v	$w0,$w1
	subv.h	$w8,$w12,$w7
	hsub_u.h	$w20,$w20,$w20
	subv.h	$w7,$w11,$w0
	insve.d	$w9[1],$w20[0]
	move.v	$w0,$w10
	hsub_u.h	$w19,$w19,$w19
	insve.d	$w2[1],$w16[0]
	insve.d	$w0[1],$w19[0]
	subv.h	$w2,$w13,$w2
	subv.h	$w0,$w9,$w0
	addv.h	$w1,$w8,$w2
	subv.h	$w8,$w8,$w2
	addv.h	$w2,$w0,$w7
	subv.h	$w0,$w0,$w7
	addv.h	$w7,$w2,$w1
	subv.h	$w2,$w2,$w1
	addv.h	$w11,$w7,$w4
	addv.h	$w1,$w0,$w8
	subv.h	$w4,$w7,$w4
	addv.h	$w9,$w1,$w3
	addv.h	$w7,$w2,$w5
	pckod.h	$w15,$w4,$w11
	subv.h	$w0,$w0,$w8
	subv.h	$w3,$w1,$w3
	pckev.h	$w4,$w4,$w11
	subv.h	$w1,$w2,$w5
	pckod.h	$w14,$w3,$w9
	addv.h	$w5,$w0,$w6
	pckod.h	$w13,$w1,$w7
	pckev.h	$w2,$w1,$w7
	subv.h	$w0,$w0,$w6
	pckev.h	$w3,$w3,$w9
	pckod.h	$w1,$w0,$w5
	asub_s.h	$w12,$w15,$w4
	pckev.h	$w0,$w0,$w5
	asub_s.h	$w10,$w14,$w3
	asub_s.h	$w8,$w13,$w2
	asub_s.h	$w6,$w1,$w0
	addv.h	$w5,$w1,$w0
	addv.h	$w4,$w15,$w4
	addv.h	$w3,$w14,$w3
	vabs.h	$w11,$w4
	vabs.h	$w9,$w3
	addv.h	$w2,$w13,$w2
	vabs.h	$w5,$w5
	vabs.h	$w7,$w2
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
	copy_s.w	$2,$w0[1]
	copy_s.w	$18,$w0[0]
	addu	$18,$18,$2
	copy_s.w	$2,$w0[2]
	addu	$18,$18,$2
	copy_s.w	$2,$w0[3]
	move	$25,$sp
	addu	$18,$18,$2
	daddiu	$11,$sp,128
	addiu	$18,$18,1
	move	$10,$sp
	dsra	$18,$18,1
	.align	3
.L2370:
	lbu	$2,1($8)
	daddiu	$10,$10,16
	lbu	$5,1($9)
	lbu	$6,0($8)
	lbu	$13,2($8)
	lbu	$3,0($9)
	subu	$5,$5,$2
	lbu	$4,2($9)
	lbu	$7,3($9)
	lbu	$2,3($8)
	subu	$3,$3,$6
	subu	$4,$4,$13
	lbu	$14,4($8)
	subu	$12,$3,$5
	lbu	$15,5($8)
	addu	$3,$3,$5
	sll	$12,$12,16
	lbu	$6,4($9)
	subu	$2,$7,$2
	addu	$12,$12,$3
	lbu	$13,5($9)
	subu	$5,$4,$2
	addu	$7,$4,$2
	lbu	$4,6($9)
	sll	$2,$5,16
	subu	$6,$6,$14
	lbu	$5,6($8)
	addu	$2,$2,$7
	subu	$13,$13,$15
	lbu	$14,7($9)
	addu	$7,$12,$2
	lbu	$15,7($8)
	subu	$3,$6,$13
	addu	$13,$6,$13
	subu	$5,$4,$5
	sll	$3,$3,16
	addu	$3,$3,$13
	subu	$2,$12,$2
	subu	$6,$14,$15
	daddu	$9,$9,$16
	subu	$4,$5,$6
	addu	$5,$5,$6
	sll	$4,$4,16
	daddu	$8,$8,$17
	addu	$4,$4,$5
	addu	$5,$3,$4
	subu	$3,$3,$4
	addu	$6,$7,$5
	addu	$4,$2,$3
	subu	$7,$7,$5
	subu	$2,$2,$3
	sw	$6,-16($10)
	sw	$7,-8($10)
	sw	$4,-12($10)
	bne	$11,$10,.L2370
	sw	$2,-4($10)

	daddiu	$23,$25,16
	move	$31,$0
.L2371:
	lw	$12,0($25)
	daddiu	$25,$25,4
	lw	$4,12($25)
	lw	$3,44($25)
	lw	$8,28($25)
	addu	$5,$12,$4
	lw	$7,76($25)
	subu	$12,$12,$4
	lw	$6,108($25)
	lw	$15,60($25)
	addu	$2,$8,$3
	subu	$8,$8,$3
	lw	$4,92($25)
	addu	$3,$5,$2
	addu	$13,$12,$8
	subu	$12,$12,$8
	addu	$14,$15,$7
	subu	$15,$15,$7
	subu	$7,$5,$2
	addu	$5,$4,$6
	addu	$2,$14,$5
	subu	$4,$4,$6
	addu	$6,$15,$4
	addu	$10,$3,$2
	subu	$3,$3,$2
	addu	$9,$13,$6
	srl	$2,$10,15
	srl	$fp,$3,15
	subu	$5,$14,$5
	and	$24,$2,$20
	and	$11,$fp,$20
	subu	$6,$13,$6
	srl	$14,$9,15
	addu	$8,$7,$5
	and	$14,$14,$20
	sll	$2,$24,16
	sll	$fp,$11,16
	srl	$13,$6,15
	subu	$2,$2,$24
	subu	$fp,$fp,$11
	subu	$4,$15,$4
	subu	$5,$7,$5
	and	$13,$13,$20
	sll	$15,$14,16
	srl	$24,$8,15
	subu	$15,$15,$14
	and	$24,$24,$20
	addu	$7,$12,$4
	sll	$11,$13,16
	srl	$14,$5,15
	addu	$10,$10,$2
	addu	$3,$3,$fp
	subu	$13,$11,$13
	subu	$4,$12,$4
	xor	$10,$10,$2
	and	$14,$14,$20
	sll	$11,$24,16
	srl	$12,$7,15
	xor	$3,$3,$fp
	addu	$9,$9,$15
	subu	$11,$11,$24
	and	$12,$12,$20
	srl	$24,$4,15
	addu	$3,$10,$3
	xor	$9,$9,$15
	addu	$2,$6,$13
	sll	$fp,$14,16
	addu	$3,$3,$9
	subu	$14,$fp,$14
	and	$10,$24,$20
	sll	$6,$12,16
	xor	$2,$2,$13
	addu	$8,$8,$11
	subu	$12,$6,$12
	addu	$2,$3,$2
	sll	$9,$10,16
	xor	$11,$8,$11
	addu	$5,$5,$14
	subu	$3,$9,$10
	addu	$2,$2,$11
	xor	$5,$5,$14
	addu	$7,$7,$12
	addu	$4,$4,$3
	addu	$2,$2,$5
	xor	$7,$7,$12
	xor	$4,$4,$3
	addu	$2,$2,$7
	addu	$2,$2,$4
	andi	$3,$2,0xffff
	srl	$2,$2,16
	addu	$2,$3,$2
	bne	$23,$25,.L2371
	addu	$31,$2,$31

	addiu	$31,$31,2
	sra	$31,$31,2
	beq	$31,$18,.L2391
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,152($sp)

	ld	$2,128($sp)
.L2393:
	daddiu	$19,$19,8
	addu	$22,$18,$22
	bne	$2,$19,.L2374
	daddiu	$21,$21,8

	ld	$3,168($sp)
	ld	$4,192($sp)
	ld	$2,184($sp)
	daddu	$3,$3,$4
	ld	$4,200($sp)
	sd	$3,168($sp)
	addiu	$2,$2,-1
	ld	$3,160($sp)
	sd	$2,184($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2375
	sd	$3,160($sp)

	ld	$2,208($sp)
	li	$31,65536			# 0x10000
	move	$23,$0
	daddiu	$19,$sp,128
	addiu	$31,$31,1
	sd	$22,152($sp)
	daddiu	$2,$2,64
	sd	$2,128($sp)
	ld	$2,216($sp)
	sd	$2,136($sp)
	li	$2,8			# 0x8
	sd	$2,144($sp)
	.align	3
.L2379:
	ld	$2,128($sp)
	ld	$22,136($sp)
	daddiu	$21,$2,-64
	.align	3
.L2378:
	move	$11,$21
	move	$10,$22
	move	$25,$sp
	move	$12,$sp
	.align	3
.L2376:
	lbu	$6,0($10)
	daddiu	$12,$12,16
	lbu	$3,0($11)
	lbu	$2,1($10)
	lbu	$5,1($11)
	subu	$3,$3,$6
	lbu	$4,2($11)
	lbu	$6,2($10)
	lbu	$7,3($11)
	subu	$5,$5,$2
	lbu	$2,3($10)
	subu	$8,$3,$5
	addu	$5,$3,$5
	subu	$4,$4,$6
	lbu	$3,4($11)
	sll	$8,$8,16
	lbu	$14,5($10)
	addu	$8,$8,$5
	lbu	$6,4($10)
	subu	$2,$7,$2
	lbu	$9,5($11)
	subu	$5,$4,$2
	addu	$7,$4,$2
	lbu	$13,7($11)
	sll	$2,$5,16
	lbu	$4,6($11)
	subu	$6,$3,$6
	addu	$2,$2,$7
	subu	$9,$9,$14
	lbu	$5,6($10)
	addu	$7,$8,$2
	lbu	$14,7($10)
	subu	$3,$6,$9
	addu	$6,$6,$9
	sll	$3,$3,16
	subu	$2,$8,$2
	addu	$3,$3,$6
	subu	$5,$4,$5
	subu	$6,$13,$14
	daddu	$11,$11,$16
	subu	$4,$5,$6
	addu	$5,$5,$6
	sll	$4,$4,16
	daddu	$10,$10,$17
	addu	$4,$4,$5
	addu	$5,$3,$4
	subu	$3,$3,$4
	addu	$6,$7,$5
	addu	$4,$2,$3
	subu	$7,$7,$5
	subu	$2,$2,$3
	sw	$6,-16($12)
	sw	$7,-8($12)
	sw	$4,-12($12)
	bne	$19,$12,.L2376
	sw	$2,-4($12)

	daddiu	$20,$25,16
	move	$18,$0
.L2377:
	lw	$12,0($25)
	daddiu	$25,$25,4
	lw	$4,12($25)
	lw	$3,44($25)
	lw	$8,28($25)
	addu	$5,$12,$4
	lw	$7,76($25)
	subu	$12,$12,$4
	lw	$6,108($25)
	lw	$15,60($25)
	addu	$2,$8,$3
	subu	$8,$8,$3
	lw	$4,92($25)
	addu	$3,$5,$2
	addu	$13,$12,$8
	subu	$12,$12,$8
	addu	$14,$15,$7
	subu	$15,$15,$7
	subu	$7,$5,$2
	addu	$5,$4,$6
	addu	$2,$14,$5
	subu	$4,$4,$6
	addu	$6,$15,$4
	addu	$10,$3,$2
	subu	$3,$3,$2
	addu	$9,$13,$6
	srl	$2,$10,15
	srl	$fp,$3,15
	subu	$5,$14,$5
	and	$24,$2,$31
	and	$11,$fp,$31
	subu	$6,$13,$6
	srl	$14,$9,15
	addu	$8,$7,$5
	and	$14,$14,$31
	sll	$2,$24,16
	sll	$fp,$11,16
	srl	$13,$6,15
	subu	$2,$2,$24
	subu	$fp,$fp,$11
	subu	$4,$15,$4
	subu	$5,$7,$5
	and	$13,$13,$31
	sll	$15,$14,16
	srl	$24,$8,15
	subu	$15,$15,$14
	and	$24,$24,$31
	addu	$7,$12,$4
	sll	$11,$13,16
	srl	$14,$5,15
	addu	$10,$10,$2
	addu	$3,$3,$fp
	subu	$13,$11,$13
	subu	$4,$12,$4
	xor	$10,$10,$2
	and	$14,$14,$31
	sll	$11,$24,16
	srl	$12,$7,15
	xor	$3,$3,$fp
	addu	$9,$9,$15
	subu	$11,$11,$24
	and	$12,$12,$31
	srl	$24,$4,15
	addu	$3,$10,$3
	xor	$9,$9,$15
	addu	$2,$6,$13
	sll	$fp,$14,16
	addu	$3,$3,$9
	subu	$14,$fp,$14
	and	$10,$24,$31
	sll	$6,$12,16
	xor	$2,$2,$13
	addu	$8,$8,$11
	subu	$12,$6,$12
	addu	$2,$3,$2
	sll	$9,$10,16
	xor	$11,$8,$11
	addu	$5,$5,$14
	subu	$3,$9,$10
	addu	$2,$2,$11
	xor	$5,$5,$14
	addu	$7,$7,$12
	addu	$4,$4,$3
	addu	$2,$2,$5
	xor	$7,$7,$12
	xor	$4,$4,$3
	addu	$2,$2,$7
	addu	$2,$2,$4
	andi	$3,$2,0xffff
	srl	$2,$2,16
	addu	$2,$3,$2
	bne	$20,$25,.L2377
	addu	$18,$2,$18

	ld	$2,128($sp)
	addiu	$18,$18,2
	daddiu	$21,$21,8
	sra	$18,$18,2
	daddiu	$22,$22,8
	bne	$2,$21,.L2378
	addu	$23,$18,$23

	ld	$3,128($sp)
	ld	$4,192($sp)
	ld	$2,144($sp)
	daddu	$3,$3,$4
	ld	$4,200($sp)
	sd	$3,128($sp)
	addiu	$2,$2,-1
	ld	$3,136($sp)
	sd	$2,144($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2379
	sd	$3,136($sp)

	ld	$2,152($sp)
	beq	$2,$23,.L2392
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC102)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC102)

	ld	$31,312($sp)
	ld	$2,152($sp)
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

	.align	3
.L2391:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,176($sp)

	b	.L2393
	ld	$2,128($sp)

.L2392:
	ld	$4,%got_page(.LC101)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC101)

	ld	$31,312($sp)
	ld	$2,152($sp)
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
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l:
	.frame	$sp,224,$31		# vars= 128, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-224
	dsll	$2,$5,2
	sd	$28,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l)))
	sd	$2,104($sp)
	dsll	$2,$7,2
	daddu	$28,$28,$25
	sd	$2,96($sp)
	li	$2,16			# 0x10
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l)))
	sd	$2,88($sp)
	dlsa	$2,$7,$7,1
	sd	$2,64($sp)
	ld	$2,%got_page(.LC46)($28)
	sd	$21,176($sp)
	li	$21,65536			# 0x10000
	sd	$19,160($sp)
	move	$19,$0
	addiu	$21,$21,1
	daddiu	$2,$2,%got_ofst(.LC46)
	sd	$fp,208($sp)
	move	$fp,$5
	sd	$2,80($sp)
	ld	$2,%got_page(.LC45)($28)
	sd	$23,192($sp)
	move	$23,$19
	sd	$22,184($sp)
	move	$22,$7
	sd	$17,144($sp)
	daddiu	$2,$2,%got_ofst(.LC45)
	dlsa	$17,$5,$5,1
	sd	$16,136($sp)
	daddiu	$16,$4,24
	sd	$31,216($sp)
	sd	$20,168($sp)
	sd	$18,152($sp)
	sd	$6,72($sp)
	sd	$2,112($sp)
	.align	3
.L2400:
	ld	$19,72($sp)
	daddiu	$18,$16,-24
	move	$2,$22
	move	$22,$19
	move	$19,$18
	move	$18,$23
	move	$23,$2
.L2399:
	ld	$4,64($sp)
	daddu	$2,$22,$23
	daddu	$3,$19,$fp
	vbld	$w15,0($19)
	daddu	$6,$2,$23
	daddu	$7,$3,$fp
	vbld	$w14,0($22)
	vbld	$w3,0($2)
	daddu	$5,$17,$19
	vbld	$w13,0($7)
	vbld	$w12,0($6)
	vbld	$w5,0($3)
	daddu	$4,$4,$22
	hadd_u.h	$w0,$w12,$w12
	vbld	$w9,0($5)
	hadd_u.h	$w10,$w15,$w15
	vbld	$w8,0($4)
	hadd_u.h	$w7,$w5,$w5
	hadd_u.h	$w6,$w8,$w8
	hadd_u.h	$w2,$w13,$w13
	hadd_u.h	$w4,$w14,$w14
	hadd_u.h	$w11,$w3,$w3
	hsub_u.h	$w17,$w15,$w15
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w15,$w13,$w13
	hsub_u.h	$w16,$w14,$w14
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w14,$w12,$w12
	insve.d	$w7[1],$w5[0]
	hsub_u.h	$w12,$w8,$w8
	insve.d	$w2[1],$w15[0]
	hadd_u.h	$w1,$w9,$w9
	move.v	$w8,$w2
	hsub_u.h	$w13,$w9,$w9
	insve.d	$w10[1],$w17[0]
	insve.d	$w1[1],$w13[0]
	insve.d	$w4[1],$w16[0]
	move.v	$w5,$w1
	subv.h	$w4,$w10,$w4
	move.v	$w1,$w0
	move.v	$w2,$w11
	insve.d	$w1[1],$w14[0]
	insve.d	$w2[1],$w3[0]
	subv.h	$w7,$w7,$w2
	subv.h	$w2,$w8,$w1
	addv.h	$w0,$w7,$w4
	move.v	$w1,$w6
	subv.h	$w7,$w7,$w4
	insve.d	$w1[1],$w12[0]
	subv.h	$w1,$w5,$w1
	addv.h	$w6,$w1,$w2
	subv.h	$w1,$w1,$w2
	asub_s.h	$w4,$w6,$w0
	addv.h	$w5,$w1,$w7
	addv.h	$w6,$w6,$w0
	asub_s.h	$w1,$w1,$w7
	vabs.h	$w6,$w6
	vabs.h	$w3,$w1
	ilvod.h	$w2,$w5,$w6
	ilvod.h	$w1,$w3,$w4
	ilvev.h	$w5,$w5,$w6
	ilvev.h	$w3,$w3,$w4
	max_s.h	$w2,$w2,$w5
	max_s.h	$w1,$w1,$w3
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w0,$w2,$w1
	copy_s.w	$2,$w0[1]
	copy_s.w	$20,$w0[0]
	addu	$20,$20,$2
	copy_s.w	$2,$w0[2]
	move	$9,$19
	addu	$20,$20,$2
	move	$8,$22
	copy_s.w	$2,$w0[3]
	move	$11,$sp
	addu	$20,$20,$2
	daddiu	$13,$sp,64
	move	$12,$sp
.L2395:
	lbu	$5,4($8)
	daddiu	$12,$12,16
	lbu	$7,4($9)
	lbu	$4,5($8)
	lbu	$14,7($8)
	lbu	$2,5($9)
	subu	$7,$7,$5
	lbu	$5,7($9)
	sll	$7,$7,16
	lbu	$6,6($8)
	lbu	$3,6($9)
	subu	$2,$2,$4
	lbu	$15,0($8)
	subu	$5,$5,$14
	sll	$2,$2,16
	lbu	$10,0($9)
	sll	$5,$5,16
	lbu	$14,1($8)
	subu	$3,$3,$6
	lbu	$4,1($9)
	sll	$6,$3,16
	subu	$10,$10,$15
	lbu	$3,2($9)
	lbu	$15,2($8)
	addu	$7,$7,$10
	subu	$4,$4,$14
	lbu	$10,3($9)
	daddu	$9,$9,$fp
	lbu	$14,3($8)
	addu	$2,$2,$4
	daddu	$8,$8,$23
	subu	$3,$3,$15
	addu	$4,$7,$2
	addu	$3,$6,$3
	subu	$2,$7,$2
	subu	$6,$10,$14
	addu	$5,$5,$6
	addu	$6,$3,$5
	subu	$3,$3,$5
	addu	$7,$4,$6
	addu	$5,$2,$3
	subu	$4,$4,$6
	subu	$2,$2,$3
	sw	$7,-16($12)
	sw	$4,-8($12)
	sw	$5,-12($12)
	bne	$13,$12,.L2395
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2396:
	lw	$6,0($11)
	daddiu	$11,$11,4
	lw	$4,12($11)
	lw	$2,44($11)
	lw	$3,28($11)
	addu	$7,$6,$4
	subu	$6,$6,$4
	addu	$4,$3,$2
	subu	$3,$3,$2
	addu	$5,$6,$3
	addu	$2,$7,$4
	srl	$9,$2,15
	subu	$4,$7,$4
	srl	$8,$5,15
	subu	$3,$6,$3
	and	$9,$9,$21
	and	$8,$8,$21
	srl	$7,$4,15
	sll	$14,$9,16
	and	$7,$7,$21
	sll	$10,$8,16
	srl	$6,$3,15
	subu	$9,$14,$9
	subu	$8,$10,$8
	and	$6,$6,$21
	sll	$14,$7,16
	sll	$10,$6,16
	subu	$7,$14,$7
	addu	$2,$2,$9
	addu	$5,$5,$8
	subu	$6,$10,$6
	xor	$2,$2,$9
	xor	$5,$5,$8
	addu	$4,$4,$7
	addu	$2,$2,$5
	xor	$4,$4,$7
	addu	$3,$3,$6
	addu	$2,$2,$4
	xor	$3,$3,$6
	addu	$2,$2,$3
	bne	$13,$11,.L2396
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$20,.L2406
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,80($sp)

	addu	$20,$20,$18
.L2407:
	daddiu	$19,$19,8
	move	$18,$20
	bne	$16,$19,.L2399
	daddiu	$22,$22,8

	ld	$3,104($sp)
	move	$22,$23
	move	$23,$18
	ld	$2,88($sp)
	ld	$4,96($sp)
	daddu	$16,$16,$3
	ld	$3,72($sp)
	addiu	$2,$2,-1
	sd	$2,88($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2400
	sd	$3,72($sp)

	ld	$31,216($sp)
	move	$2,$20
	ld	$fp,208($sp)
	ld	$28,200($sp)
	ld	$23,192($sp)
	ld	$22,184($sp)
	ld	$21,176($sp)
	ld	$20,168($sp)
	ld	$19,160($sp)
	ld	$18,152($sp)
	ld	$17,144($sp)
	ld	$16,136($sp)
	jr	$31
	daddiu	$sp,$sp,224

	.align	3
.L2406:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,112($sp)

	b	.L2407
	addu	$20,$20,$18

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
	.frame	$sp,224,$31		# vars= 128, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-224
	dsll	$2,$5,2
	sd	$28,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l)))
	sd	$2,112($sp)
	dsll	$2,$7,2
	daddu	$28,$28,$25
	sd	$2,104($sp)
	li	$2,12			# 0xc
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l)))
	sd	$2,88($sp)
	dlsa	$2,$7,$7,1
	sd	$2,64($sp)
	ld	$2,%got_page(.LC46)($28)
	sd	$22,184($sp)
	li	$22,65536			# 0x10000
	sd	$fp,208($sp)
	addiu	$22,$22,1
	move	$fp,$5
	daddiu	$2,$2,%got_ofst(.LC46)
	sd	$23,192($sp)
	move	$23,$7
	sd	$2,80($sp)
	ld	$2,%got_page(.LC45)($28)
	sd	$18,152($sp)
	dlsa	$18,$5,$5,1
	sd	$17,144($sp)
	move	$17,$0
	sd	$16,136($sp)
	daddiu	$2,$2,%got_ofst(.LC45)
	daddiu	$16,$4,32
	sd	$31,216($sp)
	sd	$21,176($sp)
	sd	$20,168($sp)
	sd	$19,160($sp)
	sd	$6,72($sp)
	sd	$2,96($sp)
	.align	3
.L2414:
	ld	$20,72($sp)
	daddiu	$19,$16,-32
	move	$2,$17
	move	$17,$20
	move	$20,$19
	move	$19,$2
.L2413:
	ld	$4,64($sp)
	daddu	$2,$17,$23
	daddu	$3,$20,$fp
	vbld	$w15,0($20)
	daddu	$6,$2,$23
	daddu	$7,$3,$fp
	vbld	$w14,0($17)
	vbld	$w3,0($2)
	daddu	$5,$18,$20
	vbld	$w13,0($7)
	vbld	$w12,0($6)
	vbld	$w5,0($3)
	daddu	$4,$4,$17
	hadd_u.h	$w0,$w12,$w12
	vbld	$w9,0($5)
	hadd_u.h	$w10,$w15,$w15
	vbld	$w8,0($4)
	hadd_u.h	$w7,$w5,$w5
	hadd_u.h	$w6,$w8,$w8
	hadd_u.h	$w2,$w13,$w13
	hadd_u.h	$w4,$w14,$w14
	hadd_u.h	$w11,$w3,$w3
	hsub_u.h	$w17,$w15,$w15
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w15,$w13,$w13
	hsub_u.h	$w16,$w14,$w14
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w14,$w12,$w12
	insve.d	$w7[1],$w5[0]
	hsub_u.h	$w12,$w8,$w8
	insve.d	$w2[1],$w15[0]
	hadd_u.h	$w1,$w9,$w9
	move.v	$w8,$w2
	hsub_u.h	$w13,$w9,$w9
	insve.d	$w10[1],$w17[0]
	insve.d	$w1[1],$w13[0]
	insve.d	$w4[1],$w16[0]
	move.v	$w5,$w1
	subv.h	$w4,$w10,$w4
	move.v	$w1,$w0
	move.v	$w2,$w11
	insve.d	$w1[1],$w14[0]
	insve.d	$w2[1],$w3[0]
	subv.h	$w7,$w7,$w2
	subv.h	$w2,$w8,$w1
	addv.h	$w0,$w7,$w4
	move.v	$w1,$w6
	subv.h	$w7,$w7,$w4
	insve.d	$w1[1],$w12[0]
	subv.h	$w1,$w5,$w1
	addv.h	$w6,$w1,$w2
	subv.h	$w1,$w1,$w2
	asub_s.h	$w4,$w6,$w0
	addv.h	$w5,$w1,$w7
	addv.h	$w6,$w6,$w0
	asub_s.h	$w1,$w1,$w7
	vabs.h	$w6,$w6
	vabs.h	$w3,$w1
	ilvod.h	$w2,$w5,$w6
	ilvod.h	$w1,$w3,$w4
	ilvev.h	$w5,$w5,$w6
	ilvev.h	$w3,$w3,$w4
	max_s.h	$w2,$w2,$w5
	max_s.h	$w1,$w1,$w3
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w0,$w2,$w1
	copy_s.w	$2,$w0[1]
	copy_s.w	$21,$w0[0]
	addu	$21,$21,$2
	copy_s.w	$2,$w0[2]
	move	$9,$20
	addu	$21,$21,$2
	move	$8,$17
	copy_s.w	$2,$w0[3]
	move	$11,$sp
	addu	$21,$21,$2
	daddiu	$13,$sp,64
	move	$12,$sp
.L2409:
	lbu	$5,4($8)
	daddiu	$12,$12,16
	lbu	$7,4($9)
	lbu	$4,5($8)
	lbu	$14,7($8)
	lbu	$2,5($9)
	subu	$7,$7,$5
	lbu	$5,7($9)
	sll	$7,$7,16
	lbu	$6,6($8)
	lbu	$3,6($9)
	subu	$2,$2,$4
	lbu	$15,0($8)
	subu	$5,$5,$14
	sll	$2,$2,16
	lbu	$10,0($9)
	sll	$5,$5,16
	lbu	$14,1($8)
	subu	$3,$3,$6
	lbu	$4,1($9)
	sll	$6,$3,16
	subu	$10,$10,$15
	lbu	$3,2($9)
	lbu	$15,2($8)
	addu	$7,$7,$10
	subu	$4,$4,$14
	lbu	$10,3($9)
	daddu	$9,$9,$fp
	lbu	$14,3($8)
	addu	$2,$2,$4
	daddu	$8,$8,$23
	subu	$3,$3,$15
	addu	$4,$7,$2
	addu	$3,$6,$3
	subu	$2,$7,$2
	subu	$6,$10,$14
	addu	$5,$5,$6
	addu	$6,$3,$5
	subu	$3,$3,$5
	addu	$7,$4,$6
	addu	$5,$2,$3
	subu	$4,$4,$6
	subu	$2,$2,$3
	sw	$7,-16($12)
	sw	$4,-8($12)
	sw	$5,-12($12)
	bne	$13,$12,.L2409
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2410:
	lw	$6,0($11)
	daddiu	$11,$11,4
	lw	$4,12($11)
	lw	$2,44($11)
	lw	$3,28($11)
	addu	$7,$6,$4
	subu	$6,$6,$4
	addu	$4,$3,$2
	subu	$3,$3,$2
	addu	$5,$6,$3
	addu	$2,$7,$4
	srl	$9,$2,15
	subu	$4,$7,$4
	srl	$8,$5,15
	subu	$3,$6,$3
	and	$9,$9,$22
	and	$8,$8,$22
	srl	$7,$4,15
	sll	$14,$9,16
	and	$7,$7,$22
	sll	$10,$8,16
	srl	$6,$3,15
	subu	$9,$14,$9
	subu	$8,$10,$8
	and	$6,$6,$22
	sll	$14,$7,16
	sll	$10,$6,16
	subu	$7,$14,$7
	addu	$2,$2,$9
	addu	$5,$5,$8
	subu	$6,$10,$6
	xor	$2,$2,$9
	xor	$5,$5,$8
	addu	$4,$4,$7
	addu	$2,$2,$5
	xor	$4,$4,$7
	addu	$3,$3,$6
	addu	$2,$2,$4
	xor	$3,$3,$6
	addu	$2,$2,$3
	bne	$13,$11,.L2410
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$21,.L2420
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,80($sp)

	addu	$21,$21,$19
.L2421:
	daddiu	$20,$20,8
	move	$19,$21
	bne	$16,$20,.L2413
	daddiu	$17,$17,8

	ld	$3,112($sp)
	move	$17,$19
	ld	$2,88($sp)
	ld	$4,104($sp)
	daddu	$16,$16,$3
	ld	$3,72($sp)
	addiu	$2,$2,-1
	sd	$2,88($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2414
	sd	$3,72($sp)

	ld	$31,216($sp)
	move	$2,$21
	ld	$fp,208($sp)
	ld	$28,200($sp)
	ld	$23,192($sp)
	ld	$22,184($sp)
	ld	$21,176($sp)
	ld	$20,168($sp)
	ld	$19,160($sp)
	ld	$18,152($sp)
	ld	$17,144($sp)
	ld	$16,136($sp)
	jr	$31
	daddiu	$sp,$sp,224

	.align	3
.L2420:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,96($sp)

	b	.L2421
	addu	$21,$21,$19

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
	.frame	$sp,224,$31		# vars= 128, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-224
	dsll	$2,$5,2
	sd	$2,104($sp)
	dsll	$2,$7,2
	sd	$28,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l)))
	sd	$2,96($sp)
	li	$2,16			# 0x10
	daddu	$28,$28,$25
	sd	$2,64($sp)
	dlsa	$2,$5,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l)))
	sd	$2,72($sp)
	dlsa	$2,$7,$7,1
	sd	$2,80($sp)
	ld	$2,%got_page(.LC46)($28)
	sd	$21,176($sp)
	li	$21,65536			# 0x10000
	sd	$19,160($sp)
	move	$19,$0
	addiu	$21,$21,1
	daddiu	$2,$2,%got_ofst(.LC46)
	sd	$fp,208($sp)
	move	$fp,$5
	sd	$2,88($sp)
	ld	$2,%got_page(.LC45)($28)
	sd	$23,192($sp)
	move	$23,$19
	sd	$22,184($sp)
	move	$22,$7
	sd	$17,144($sp)
	daddiu	$2,$2,%got_ofst(.LC45)
	move	$17,$6
	sd	$16,136($sp)
	daddiu	$16,$4,16
	sd	$31,216($sp)
	sd	$20,168($sp)
	sd	$18,152($sp)
	sd	$2,112($sp)
	.align	3
.L2428:
	daddiu	$18,$16,-16
	move	$19,$17
.L2427:
	ld	$4,72($sp)
	daddu	$2,$19,$22
	daddu	$3,$18,$fp
	vbld	$w15,0($18)
	daddu	$6,$2,$22
	daddu	$7,$3,$fp
	vbld	$w14,0($19)
	vbld	$w3,0($2)
	vbld	$w13,0($7)
	vbld	$w12,0($6)
	vbld	$w5,0($3)
	hadd_u.h	$w0,$w12,$w12
	daddu	$5,$4,$18
	ld	$4,80($sp)
	hadd_u.h	$w10,$w15,$w15
	hadd_u.h	$w7,$w5,$w5
	vbld	$w9,0($5)
	hadd_u.h	$w2,$w13,$w13
	hadd_u.h	$w4,$w14,$w14
	hadd_u.h	$w11,$w3,$w3
	hsub_u.h	$w17,$w15,$w15
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w15,$w13,$w13
	hsub_u.h	$w16,$w14,$w14
	daddu	$4,$4,$19
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w14,$w12,$w12
	insve.d	$w7[1],$w5[0]
	vbld	$w8,0($4)
	insve.d	$w2[1],$w15[0]
	hadd_u.h	$w6,$w8,$w8
	hsub_u.h	$w12,$w8,$w8
	hadd_u.h	$w1,$w9,$w9
	move.v	$w8,$w2
	hsub_u.h	$w13,$w9,$w9
	insve.d	$w10[1],$w17[0]
	insve.d	$w1[1],$w13[0]
	insve.d	$w4[1],$w16[0]
	move.v	$w5,$w1
	subv.h	$w4,$w10,$w4
	move.v	$w1,$w0
	move.v	$w2,$w11
	insve.d	$w1[1],$w14[0]
	insve.d	$w2[1],$w3[0]
	subv.h	$w7,$w7,$w2
	subv.h	$w2,$w8,$w1
	addv.h	$w0,$w7,$w4
	move.v	$w1,$w6
	subv.h	$w7,$w7,$w4
	insve.d	$w1[1],$w12[0]
	subv.h	$w1,$w5,$w1
	addv.h	$w6,$w1,$w2
	subv.h	$w1,$w1,$w2
	asub_s.h	$w4,$w6,$w0
	addv.h	$w5,$w1,$w7
	addv.h	$w6,$w6,$w0
	asub_s.h	$w1,$w1,$w7
	vabs.h	$w6,$w6
	vabs.h	$w3,$w1
	ilvod.h	$w2,$w5,$w6
	ilvod.h	$w1,$w3,$w4
	ilvev.h	$w5,$w5,$w6
	ilvev.h	$w3,$w3,$w4
	max_s.h	$w2,$w2,$w5
	max_s.h	$w1,$w1,$w3
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w0,$w2,$w1
	copy_s.w	$2,$w0[1]
	copy_s.w	$20,$w0[0]
	addu	$20,$20,$2
	copy_s.w	$2,$w0[2]
	addu	$20,$20,$2
	move	$10,$18
	copy_s.w	$2,$w0[3]
	move	$8,$19
	addu	$20,$20,$2
	move	$9,$sp
	daddiu	$12,$sp,64
	move	$11,$sp
.L2423:
	lbu	$5,4($8)
	daddiu	$11,$11,16
	lbu	$7,4($10)
	lbu	$4,5($8)
	lbu	$14,7($8)
	lbu	$2,5($10)
	subu	$7,$7,$5
	lbu	$5,7($10)
	sll	$7,$7,16
	lbu	$6,6($8)
	lbu	$3,6($10)
	subu	$2,$2,$4
	lbu	$15,0($8)
	subu	$5,$5,$14
	sll	$2,$2,16
	lbu	$13,0($10)
	sll	$5,$5,16
	lbu	$14,1($8)
	subu	$3,$3,$6
	lbu	$4,1($10)
	sll	$6,$3,16
	subu	$13,$13,$15
	lbu	$3,2($10)
	lbu	$15,2($8)
	addu	$7,$7,$13
	subu	$4,$4,$14
	lbu	$13,3($10)
	daddu	$10,$10,$fp
	lbu	$14,3($8)
	addu	$2,$2,$4
	daddu	$8,$8,$22
	subu	$3,$3,$15
	addu	$4,$7,$2
	addu	$3,$6,$3
	subu	$2,$7,$2
	subu	$6,$13,$14
	addu	$5,$5,$6
	addu	$6,$3,$5
	subu	$3,$3,$5
	addu	$7,$4,$6
	addu	$5,$2,$3
	subu	$4,$4,$6
	subu	$2,$2,$3
	sw	$7,-16($11)
	sw	$4,-8($11)
	sw	$5,-12($11)
	bne	$12,$11,.L2423
	sw	$2,-4($11)

	daddiu	$11,$9,16
	move	$10,$0
.L2424:
	lw	$6,0($9)
	daddiu	$9,$9,4
	lw	$4,12($9)
	lw	$2,44($9)
	lw	$3,28($9)
	addu	$7,$6,$4
	subu	$6,$6,$4
	addu	$4,$3,$2
	subu	$3,$3,$2
	addu	$5,$6,$3
	addu	$2,$7,$4
	srl	$12,$2,15
	subu	$4,$7,$4
	srl	$8,$5,15
	subu	$3,$6,$3
	and	$12,$12,$21
	and	$8,$8,$21
	srl	$7,$4,15
	sll	$14,$12,16
	and	$7,$7,$21
	sll	$13,$8,16
	srl	$6,$3,15
	subu	$12,$14,$12
	subu	$8,$13,$8
	and	$6,$6,$21
	sll	$14,$7,16
	sll	$13,$6,16
	subu	$7,$14,$7
	addu	$2,$2,$12
	addu	$5,$5,$8
	subu	$6,$13,$6
	xor	$2,$2,$12
	xor	$5,$5,$8
	addu	$4,$4,$7
	addu	$2,$2,$5
	xor	$4,$4,$7
	addu	$3,$3,$6
	addu	$2,$2,$4
	xor	$3,$3,$6
	addu	$2,$2,$3
	bne	$11,$9,.L2424
	addu	$10,$2,$10

	andi	$2,$10,0xffff
	srl	$10,$10,16
	addu	$10,$2,$10
	srl	$10,$10,1
	beq	$10,$20,.L2434
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,88($sp)

	addu	$20,$20,$23
.L2435:
	daddiu	$18,$18,8
	move	$23,$20
	bne	$16,$18,.L2427
	daddiu	$19,$19,8

	ld	$3,104($sp)
	ld	$2,64($sp)
	daddu	$16,$16,$3
	ld	$3,96($sp)
	addiu	$2,$2,-1
	sd	$2,64($sp)
	bne	$2,$0,.L2428
	daddu	$17,$17,$3

	ld	$31,216($sp)
	move	$2,$20
	ld	$fp,208($sp)
	ld	$28,200($sp)
	ld	$23,192($sp)
	ld	$22,184($sp)
	ld	$21,176($sp)
	ld	$20,168($sp)
	ld	$19,160($sp)
	ld	$18,152($sp)
	ld	$17,144($sp)
	ld	$16,136($sp)
	jr	$31
	daddiu	$sp,$sp,224

	.align	3
.L2434:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,112($sp)

	b	.L2435
	addu	$20,$20,$23

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
	.frame	$sp,224,$31		# vars= 128, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-224
	dsll	$2,$5,2
	sd	$28,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l)))
	sd	$2,112($sp)
	dsll	$2,$7,2
	daddu	$28,$28,$25
	sd	$2,104($sp)
	li	$2,4			# 0x4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l)))
	sd	$2,96($sp)
	dlsa	$2,$7,$7,1
	sd	$2,64($sp)
	ld	$2,%got_page(.LC46)($28)
	sd	$22,184($sp)
	li	$22,65536			# 0x10000
	sd	$fp,208($sp)
	addiu	$22,$22,1
	move	$fp,$5
	daddiu	$2,$2,%got_ofst(.LC46)
	sd	$23,192($sp)
	move	$23,$7
	sd	$2,72($sp)
	ld	$2,%got_page(.LC45)($28)
	sd	$18,152($sp)
	dlsa	$18,$5,$5,1
	sd	$17,144($sp)
	move	$17,$0
	sd	$16,136($sp)
	daddiu	$2,$2,%got_ofst(.LC45)
	daddiu	$16,$4,64
	sd	$31,216($sp)
	sd	$21,176($sp)
	sd	$20,168($sp)
	sd	$19,160($sp)
	sd	$6,80($sp)
	sd	$2,88($sp)
.L2442:
	ld	$20,80($sp)
	daddiu	$19,$16,-64
	move	$2,$17
	move	$17,$20
	move	$20,$19
	move	$19,$2
	.align	3
.L2441:
	ld	$4,64($sp)
	daddu	$2,$17,$23
	daddu	$3,$20,$fp
	vbld	$w15,0($20)
	daddu	$6,$2,$23
	daddu	$7,$3,$fp
	vbld	$w14,0($17)
	vbld	$w3,0($2)
	daddu	$5,$18,$20
	vbld	$w13,0($7)
	vbld	$w12,0($6)
	vbld	$w5,0($3)
	daddu	$4,$4,$17
	hadd_u.h	$w0,$w12,$w12
	vbld	$w9,0($5)
	hadd_u.h	$w10,$w15,$w15
	vbld	$w8,0($4)
	hadd_u.h	$w7,$w5,$w5
	hadd_u.h	$w6,$w8,$w8
	hadd_u.h	$w2,$w13,$w13
	hadd_u.h	$w4,$w14,$w14
	hadd_u.h	$w11,$w3,$w3
	hsub_u.h	$w17,$w15,$w15
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w15,$w13,$w13
	hsub_u.h	$w16,$w14,$w14
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w14,$w12,$w12
	insve.d	$w7[1],$w5[0]
	hsub_u.h	$w12,$w8,$w8
	insve.d	$w2[1],$w15[0]
	hadd_u.h	$w1,$w9,$w9
	move.v	$w8,$w2
	hsub_u.h	$w13,$w9,$w9
	insve.d	$w10[1],$w17[0]
	insve.d	$w1[1],$w13[0]
	insve.d	$w4[1],$w16[0]
	move.v	$w5,$w1
	subv.h	$w4,$w10,$w4
	move.v	$w1,$w0
	move.v	$w2,$w11
	insve.d	$w1[1],$w14[0]
	insve.d	$w2[1],$w3[0]
	subv.h	$w7,$w7,$w2
	subv.h	$w2,$w8,$w1
	addv.h	$w0,$w7,$w4
	move.v	$w1,$w6
	subv.h	$w7,$w7,$w4
	insve.d	$w1[1],$w12[0]
	subv.h	$w1,$w5,$w1
	addv.h	$w6,$w1,$w2
	subv.h	$w1,$w1,$w2
	asub_s.h	$w4,$w6,$w0
	addv.h	$w5,$w1,$w7
	addv.h	$w6,$w6,$w0
	asub_s.h	$w1,$w1,$w7
	vabs.h	$w6,$w6
	vabs.h	$w3,$w1
	ilvod.h	$w2,$w5,$w6
	ilvod.h	$w1,$w3,$w4
	ilvev.h	$w5,$w5,$w6
	ilvev.h	$w3,$w3,$w4
	max_s.h	$w2,$w2,$w5
	max_s.h	$w1,$w1,$w3
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w0,$w2,$w1
	copy_s.w	$2,$w0[1]
	copy_s.w	$21,$w0[0]
	addu	$21,$21,$2
	copy_s.w	$2,$w0[2]
	move	$9,$20
	addu	$21,$21,$2
	move	$8,$17
	copy_s.w	$2,$w0[3]
	move	$11,$sp
	addu	$21,$21,$2
	daddiu	$13,$sp,64
	move	$12,$sp
.L2437:
	lbu	$5,4($8)
	daddiu	$12,$12,16
	lbu	$7,4($9)
	lbu	$4,5($8)
	lbu	$14,7($8)
	lbu	$2,5($9)
	subu	$7,$7,$5
	lbu	$5,7($9)
	sll	$7,$7,16
	lbu	$6,6($8)
	lbu	$3,6($9)
	subu	$2,$2,$4
	lbu	$15,0($8)
	subu	$5,$5,$14
	sll	$2,$2,16
	lbu	$10,0($9)
	sll	$5,$5,16
	lbu	$14,1($8)
	subu	$3,$3,$6
	lbu	$4,1($9)
	sll	$6,$3,16
	subu	$10,$10,$15
	lbu	$3,2($9)
	lbu	$15,2($8)
	addu	$7,$7,$10
	subu	$4,$4,$14
	lbu	$10,3($9)
	daddu	$9,$9,$fp
	lbu	$14,3($8)
	addu	$2,$2,$4
	daddu	$8,$8,$23
	subu	$3,$3,$15
	addu	$4,$7,$2
	addu	$3,$6,$3
	subu	$2,$7,$2
	subu	$6,$10,$14
	addu	$5,$5,$6
	addu	$6,$3,$5
	subu	$3,$3,$5
	addu	$7,$4,$6
	addu	$5,$2,$3
	subu	$4,$4,$6
	subu	$2,$2,$3
	sw	$7,-16($12)
	sw	$4,-8($12)
	sw	$5,-12($12)
	bne	$13,$12,.L2437
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2438:
	lw	$6,0($11)
	daddiu	$11,$11,4
	lw	$4,12($11)
	lw	$2,44($11)
	lw	$3,28($11)
	addu	$7,$6,$4
	subu	$6,$6,$4
	addu	$4,$3,$2
	subu	$3,$3,$2
	addu	$5,$6,$3
	addu	$2,$7,$4
	srl	$9,$2,15
	subu	$4,$7,$4
	srl	$8,$5,15
	subu	$3,$6,$3
	and	$9,$9,$22
	and	$8,$8,$22
	srl	$7,$4,15
	sll	$14,$9,16
	and	$7,$7,$22
	sll	$10,$8,16
	srl	$6,$3,15
	subu	$9,$14,$9
	subu	$8,$10,$8
	and	$6,$6,$22
	sll	$14,$7,16
	sll	$10,$6,16
	subu	$7,$14,$7
	addu	$2,$2,$9
	addu	$5,$5,$8
	subu	$6,$10,$6
	xor	$2,$2,$9
	xor	$5,$5,$8
	addu	$4,$4,$7
	addu	$2,$2,$5
	xor	$4,$4,$7
	addu	$3,$3,$6
	addu	$2,$2,$4
	xor	$3,$3,$6
	addu	$2,$2,$3
	bne	$13,$11,.L2438
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$21,.L2448
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,72($sp)

	addu	$21,$21,$19
.L2449:
	daddiu	$20,$20,8
	move	$19,$21
	bne	$16,$20,.L2441
	daddiu	$17,$17,8

	ld	$3,112($sp)
	move	$17,$19
	ld	$2,96($sp)
	ld	$4,104($sp)
	daddu	$16,$16,$3
	ld	$3,80($sp)
	addiu	$2,$2,-1
	sd	$2,96($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2442
	sd	$3,80($sp)

	ld	$31,216($sp)
	move	$2,$21
	ld	$fp,208($sp)
	ld	$28,200($sp)
	ld	$23,192($sp)
	ld	$22,184($sp)
	ld	$21,176($sp)
	ld	$20,168($sp)
	ld	$19,160($sp)
	ld	$18,152($sp)
	ld	$17,144($sp)
	ld	$16,136($sp)
	jr	$31
	daddiu	$sp,$sp,224

	.align	3
.L2448:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,88($sp)

	b	.L2449
	addu	$21,$21,$19

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l
	.section	.rodata.str1.8
	.align	3
.LC103:
	.ascii	"satd8_32x32 test success\000"
	.align	3
.LC104:
	.ascii	"satd8_32x32 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l
	.type	_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l, @function
_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l:
	.frame	$sp,192,$31		# vars= 32, regs= 11/8, args= 0, gp= 0
	.mask	0xd0ff0000,-72
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-192
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l)))
	daddu	$28,$28,$25
	sd	$fp,112($sp)
	move	$25,$4
	sd	$23,96($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l)))
	move	$23,$6
	sd	$22,88($sp)
	li	$fp,8			# 0x8
	dlsa	$22,$5,$5,1
	sd	$20,72($sp)
	dlsa	$20,$7,$7,1
	sd	$19,64($sp)
	move	$19,$5
	sd	$18,56($sp)
	move	$18,$7
	sd	$17,48($sp)
	move	$17,$6
	sd	$16,40($sp)
	move	$16,$0
	sd	$2,16($sp)
	dsll	$2,$7,2
	sd	$31,120($sp)
	sd	$21,80($sp)
	sdc1	$f31,184($sp)
	sdc1	$f30,176($sp)
	sdc1	$f29,168($sp)
	sdc1	$f28,160($sp)
	sdc1	$f27,152($sp)
	sdc1	$f26,144($sp)
	sdc1	$f25,136($sp)
	sdc1	$f24,128($sp)
	sd	$2,24($sp)
	.align	3
.L2452:
	move	$13,$25
	daddiu	$24,$25,8
	move	$15,$23
	daddiu	$14,$23,8
	daddiu	$21,$25,32
.L2451:
	daddu	$6,$13,$19
	daddu	$3,$24,$19
	vbld	$w30,0($13)
	vbld	$w9,0($24)
	daddu	$5,$18,$15
	daddu	$2,$14,$18
	vbld	$w15,0($6)
	vbld	$w29,0($15)
	daddu	$31,$13,$22
	daddu	$8,$24,$22
	vbld	$w25,0($14)
	vbld	$w14,0($3)
	vbld	$w22,0($31)
	daddu	$10,$15,$20
	daddu	$7,$14,$20
	vbld	$w1,0($5)
	daddu	$12,$19,$6
	daddu	$9,$19,$3
	vbld	$w13,0($2)
	hadd_u.h	$w10,$w9,$w9
	daddu	$31,$18,$5
	daddu	$6,$18,$2
	vbld	$w23,0($12)
	vbld	$w19,0($9)
	vbld	$w18,0($8)
	hadd_u.h	$w8,$w19,$w19
	vbld	$w21,0($31)
	vbld	$w20,0($10)
	vbld	$w17,0($6)
	vbld	$w16,0($7)
	hadd_u.h	$w2,$w30,$w30
	hadd_u.h	$w7,$w15,$w15
	hadd_u.h	$w0,$w23,$w23
	hadd_u.h	$w12,$w22,$w22
	hadd_u.h	$w5,$w29,$w29
	hadd_u.h	$w31,$w1,$w1
	hadd_u.h	$w11,$w21,$w21
	hadd_u.h	$w3,$w20,$w20
	hadd_u.h	$w6,$w14,$w14
	hadd_u.h	$w4,$w18,$w18
	hadd_u.h	$w28,$w25,$w25
	hadd_u.h	$w27,$w13,$w13
	hadd_u.h	$w26,$w17,$w17
	hadd_u.h	$w24,$w16,$w16
	hsub_u.h	$w15,$w15,$w15
	hsub_u.h	$w1,$w1,$w1
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w14,$w14,$w14
	insve.d	$w7[1],$w15[0]
	insve.d	$w6[1],$w14[0]
	insve.d	$w31[1],$w1[0]
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
	addv.h	$w2,$w3,$w2
	vabs.h	$w4,$w4
	vabs.h	$w2,$w2
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
	copy_s.w	$5,$w0[2]
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,16
	addu	$3,$3,$5
	daddiu	$24,$24,16
	addu	$2,$3,$2
	daddiu	$15,$15,16
	addu	$16,$2,$16
	bne	$13,$21,.L2451
	daddiu	$14,$14,16

	ld	$2,16($sp)
	addiu	$fp,$fp,-1
	daddu	$25,$25,$2
	ld	$2,24($sp)
	bne	$fp,$0,.L2452
	daddu	$23,$23,$2

	ld	$22,%got_page(_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l)($28)
	li	$2,8			# 0x8
	move	$fp,$17
	sd	$2,8($sp)
	move	$21,$4
	move	$17,$0
	daddiu	$2,$22,%got_ofst(_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l)
	sd	$2,0($sp)
	.align	3
.L2454:
	daddiu	$20,$21,32
	move	$23,$fp
	move	$22,$21
.L2453:
	ld	$25,0($sp)
	move	$6,$23
	move	$4,$22
	move	$7,$18
	move	$5,$19
	daddiu	$22,$22,8
	jalr	$25
	daddiu	$23,$23,8

	bne	$20,$22,.L2453
	addu	$17,$2,$17

	ld	$3,16($sp)
	ld	$2,8($sp)
	daddu	$21,$21,$3
	ld	$3,24($sp)
	addiu	$2,$2,-1
	sd	$2,8($sp)
	bne	$2,$0,.L2454
	daddu	$fp,$fp,$3

	beq	$16,$17,.L2462
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC104)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC104)

	ld	$31,120($sp)
.L2463:
	move	$2,$16
	ldc1	$f31,184($sp)
	ld	$fp,112($sp)
	ldc1	$f30,176($sp)
	ld	$28,104($sp)
	ldc1	$f29,168($sp)
	ld	$23,96($sp)
	ldc1	$f28,160($sp)
	ld	$22,88($sp)
	ldc1	$f27,152($sp)
	ld	$21,80($sp)
	ldc1	$f26,144($sp)
	ld	$20,72($sp)
	ldc1	$f25,136($sp)
	ld	$19,64($sp)
	ldc1	$f24,128($sp)
	ld	$18,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	jr	$31
	daddiu	$sp,$sp,192

.L2462:
	ld	$4,%got_page(.LC103)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC103)

	b	.L2463
	ld	$31,120($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l
	.size	_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l, .-_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l:
	.frame	$sp,224,$31		# vars= 128, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-224
	dsll	$2,$5,2
	sd	$28,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l)))
	sd	$2,104($sp)
	dsll	$2,$7,2
	daddu	$28,$28,$25
	sd	$2,96($sp)
	li	$2,8			# 0x8
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l)))
	sd	$2,88($sp)
	dlsa	$2,$7,$7,1
	sd	$2,64($sp)
	ld	$2,%got_page(.LC46)($28)
	sd	$21,176($sp)
	li	$21,65536			# 0x10000
	sd	$19,160($sp)
	move	$19,$0
	addiu	$21,$21,1
	daddiu	$2,$2,%got_ofst(.LC46)
	sd	$fp,208($sp)
	move	$fp,$5
	sd	$2,80($sp)
	ld	$2,%got_page(.LC45)($28)
	sd	$23,192($sp)
	move	$23,$19
	sd	$22,184($sp)
	move	$22,$7
	sd	$17,144($sp)
	daddiu	$2,$2,%got_ofst(.LC45)
	dlsa	$17,$5,$5,1
	sd	$16,136($sp)
	daddiu	$16,$4,24
	sd	$31,216($sp)
	sd	$20,168($sp)
	sd	$18,152($sp)
	sd	$6,72($sp)
	sd	$2,112($sp)
	.align	3
.L2470:
	ld	$19,72($sp)
	daddiu	$18,$16,-24
	move	$2,$22
	move	$22,$19
	move	$19,$18
	move	$18,$23
	move	$23,$2
.L2469:
	ld	$4,64($sp)
	daddu	$2,$22,$23
	daddu	$3,$19,$fp
	vbld	$w15,0($19)
	daddu	$6,$2,$23
	daddu	$7,$3,$fp
	vbld	$w14,0($22)
	vbld	$w3,0($2)
	daddu	$5,$17,$19
	vbld	$w13,0($7)
	vbld	$w12,0($6)
	vbld	$w5,0($3)
	daddu	$4,$4,$22
	hadd_u.h	$w0,$w12,$w12
	vbld	$w9,0($5)
	hadd_u.h	$w10,$w15,$w15
	vbld	$w8,0($4)
	hadd_u.h	$w7,$w5,$w5
	hadd_u.h	$w6,$w8,$w8
	hadd_u.h	$w2,$w13,$w13
	hadd_u.h	$w4,$w14,$w14
	hadd_u.h	$w11,$w3,$w3
	hsub_u.h	$w17,$w15,$w15
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w15,$w13,$w13
	hsub_u.h	$w16,$w14,$w14
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w14,$w12,$w12
	insve.d	$w7[1],$w5[0]
	hsub_u.h	$w12,$w8,$w8
	insve.d	$w2[1],$w15[0]
	hadd_u.h	$w1,$w9,$w9
	move.v	$w8,$w2
	hsub_u.h	$w13,$w9,$w9
	insve.d	$w10[1],$w17[0]
	insve.d	$w1[1],$w13[0]
	insve.d	$w4[1],$w16[0]
	move.v	$w5,$w1
	subv.h	$w4,$w10,$w4
	move.v	$w1,$w0
	move.v	$w2,$w11
	insve.d	$w1[1],$w14[0]
	insve.d	$w2[1],$w3[0]
	subv.h	$w7,$w7,$w2
	subv.h	$w2,$w8,$w1
	addv.h	$w0,$w7,$w4
	move.v	$w1,$w6
	subv.h	$w7,$w7,$w4
	insve.d	$w1[1],$w12[0]
	subv.h	$w1,$w5,$w1
	addv.h	$w6,$w1,$w2
	subv.h	$w1,$w1,$w2
	asub_s.h	$w4,$w6,$w0
	addv.h	$w5,$w1,$w7
	addv.h	$w6,$w6,$w0
	asub_s.h	$w1,$w1,$w7
	vabs.h	$w6,$w6
	vabs.h	$w3,$w1
	ilvod.h	$w2,$w5,$w6
	ilvod.h	$w1,$w3,$w4
	ilvev.h	$w5,$w5,$w6
	ilvev.h	$w3,$w3,$w4
	max_s.h	$w2,$w2,$w5
	max_s.h	$w1,$w1,$w3
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w0,$w2,$w1
	copy_s.w	$2,$w0[1]
	copy_s.w	$20,$w0[0]
	addu	$20,$20,$2
	copy_s.w	$2,$w0[2]
	move	$9,$19
	addu	$20,$20,$2
	move	$8,$22
	copy_s.w	$2,$w0[3]
	move	$11,$sp
	addu	$20,$20,$2
	daddiu	$13,$sp,64
	move	$12,$sp
.L2465:
	lbu	$5,4($8)
	daddiu	$12,$12,16
	lbu	$7,4($9)
	lbu	$4,5($8)
	lbu	$14,7($8)
	lbu	$2,5($9)
	subu	$7,$7,$5
	lbu	$5,7($9)
	sll	$7,$7,16
	lbu	$6,6($8)
	lbu	$3,6($9)
	subu	$2,$2,$4
	lbu	$15,0($8)
	subu	$5,$5,$14
	sll	$2,$2,16
	lbu	$10,0($9)
	sll	$5,$5,16
	lbu	$14,1($8)
	subu	$3,$3,$6
	lbu	$4,1($9)
	sll	$6,$3,16
	subu	$10,$10,$15
	lbu	$3,2($9)
	lbu	$15,2($8)
	addu	$7,$7,$10
	subu	$4,$4,$14
	lbu	$10,3($9)
	daddu	$9,$9,$fp
	lbu	$14,3($8)
	addu	$2,$2,$4
	daddu	$8,$8,$23
	subu	$3,$3,$15
	addu	$4,$7,$2
	addu	$3,$6,$3
	subu	$2,$7,$2
	subu	$6,$10,$14
	addu	$5,$5,$6
	addu	$6,$3,$5
	subu	$3,$3,$5
	addu	$7,$4,$6
	addu	$5,$2,$3
	subu	$4,$4,$6
	subu	$2,$2,$3
	sw	$7,-16($12)
	sw	$4,-8($12)
	sw	$5,-12($12)
	bne	$13,$12,.L2465
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2466:
	lw	$6,0($11)
	daddiu	$11,$11,4
	lw	$4,12($11)
	lw	$2,44($11)
	lw	$3,28($11)
	addu	$7,$6,$4
	subu	$6,$6,$4
	addu	$4,$3,$2
	subu	$3,$3,$2
	addu	$5,$6,$3
	addu	$2,$7,$4
	srl	$9,$2,15
	subu	$4,$7,$4
	srl	$8,$5,15
	subu	$3,$6,$3
	and	$9,$9,$21
	and	$8,$8,$21
	srl	$7,$4,15
	sll	$14,$9,16
	and	$7,$7,$21
	sll	$10,$8,16
	srl	$6,$3,15
	subu	$9,$14,$9
	subu	$8,$10,$8
	and	$6,$6,$21
	sll	$14,$7,16
	sll	$10,$6,16
	subu	$7,$14,$7
	addu	$2,$2,$9
	addu	$5,$5,$8
	subu	$6,$10,$6
	xor	$2,$2,$9
	xor	$5,$5,$8
	addu	$4,$4,$7
	addu	$2,$2,$5
	xor	$4,$4,$7
	addu	$3,$3,$6
	addu	$2,$2,$4
	xor	$3,$3,$6
	addu	$2,$2,$3
	bne	$13,$11,.L2466
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$20,.L2476
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,80($sp)

	addu	$20,$20,$18
.L2477:
	daddiu	$19,$19,8
	move	$18,$20
	bne	$16,$19,.L2469
	daddiu	$22,$22,8

	ld	$3,104($sp)
	move	$22,$23
	move	$23,$18
	ld	$2,88($sp)
	ld	$4,96($sp)
	daddu	$16,$16,$3
	ld	$3,72($sp)
	addiu	$2,$2,-1
	sd	$2,88($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2470
	sd	$3,72($sp)

	ld	$31,216($sp)
	move	$2,$20
	ld	$fp,208($sp)
	ld	$28,200($sp)
	ld	$23,192($sp)
	ld	$22,184($sp)
	ld	$21,176($sp)
	ld	$20,168($sp)
	ld	$19,160($sp)
	ld	$18,152($sp)
	ld	$17,144($sp)
	ld	$16,136($sp)
	jr	$31
	daddiu	$sp,$sp,224

	.align	3
.L2476:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,112($sp)

	b	.L2477
	addu	$20,$20,$18

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
	.frame	$sp,224,$31		# vars= 128, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-224
	dsll	$2,$5,2
	sd	$28,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l)))
	sd	$2,112($sp)
	dsll	$2,$7,2
	daddu	$28,$28,$25
	sd	$2,104($sp)
	li	$2,6			# 0x6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l)))
	sd	$2,88($sp)
	dlsa	$2,$7,$7,1
	sd	$2,64($sp)
	ld	$2,%got_page(.LC46)($28)
	sd	$22,184($sp)
	li	$22,65536			# 0x10000
	sd	$fp,208($sp)
	addiu	$22,$22,1
	move	$fp,$5
	daddiu	$2,$2,%got_ofst(.LC46)
	sd	$23,192($sp)
	move	$23,$7
	sd	$2,80($sp)
	ld	$2,%got_page(.LC45)($28)
	sd	$18,152($sp)
	dlsa	$18,$5,$5,1
	sd	$17,144($sp)
	move	$17,$0
	sd	$16,136($sp)
	daddiu	$2,$2,%got_ofst(.LC45)
	daddiu	$16,$4,32
	sd	$31,216($sp)
	sd	$21,176($sp)
	sd	$20,168($sp)
	sd	$19,160($sp)
	sd	$6,72($sp)
	sd	$2,96($sp)
	.align	3
.L2484:
	ld	$20,72($sp)
	daddiu	$19,$16,-32
	move	$2,$17
	move	$17,$20
	move	$20,$19
	move	$19,$2
.L2483:
	ld	$4,64($sp)
	daddu	$2,$17,$23
	daddu	$3,$20,$fp
	vbld	$w15,0($20)
	daddu	$6,$2,$23
	daddu	$7,$3,$fp
	vbld	$w14,0($17)
	vbld	$w3,0($2)
	daddu	$5,$18,$20
	vbld	$w13,0($7)
	vbld	$w12,0($6)
	vbld	$w5,0($3)
	daddu	$4,$4,$17
	hadd_u.h	$w0,$w12,$w12
	vbld	$w9,0($5)
	hadd_u.h	$w10,$w15,$w15
	vbld	$w8,0($4)
	hadd_u.h	$w7,$w5,$w5
	hadd_u.h	$w6,$w8,$w8
	hadd_u.h	$w2,$w13,$w13
	hadd_u.h	$w4,$w14,$w14
	hadd_u.h	$w11,$w3,$w3
	hsub_u.h	$w17,$w15,$w15
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w15,$w13,$w13
	hsub_u.h	$w16,$w14,$w14
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w14,$w12,$w12
	insve.d	$w7[1],$w5[0]
	hsub_u.h	$w12,$w8,$w8
	insve.d	$w2[1],$w15[0]
	hadd_u.h	$w1,$w9,$w9
	move.v	$w8,$w2
	hsub_u.h	$w13,$w9,$w9
	insve.d	$w10[1],$w17[0]
	insve.d	$w1[1],$w13[0]
	insve.d	$w4[1],$w16[0]
	move.v	$w5,$w1
	subv.h	$w4,$w10,$w4
	move.v	$w1,$w0
	move.v	$w2,$w11
	insve.d	$w1[1],$w14[0]
	insve.d	$w2[1],$w3[0]
	subv.h	$w7,$w7,$w2
	subv.h	$w2,$w8,$w1
	addv.h	$w0,$w7,$w4
	move.v	$w1,$w6
	subv.h	$w7,$w7,$w4
	insve.d	$w1[1],$w12[0]
	subv.h	$w1,$w5,$w1
	addv.h	$w6,$w1,$w2
	subv.h	$w1,$w1,$w2
	asub_s.h	$w4,$w6,$w0
	addv.h	$w5,$w1,$w7
	addv.h	$w6,$w6,$w0
	asub_s.h	$w1,$w1,$w7
	vabs.h	$w6,$w6
	vabs.h	$w3,$w1
	ilvod.h	$w2,$w5,$w6
	ilvod.h	$w1,$w3,$w4
	ilvev.h	$w5,$w5,$w6
	ilvev.h	$w3,$w3,$w4
	max_s.h	$w2,$w2,$w5
	max_s.h	$w1,$w1,$w3
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w0,$w2,$w1
	copy_s.w	$2,$w0[1]
	copy_s.w	$21,$w0[0]
	addu	$21,$21,$2
	copy_s.w	$2,$w0[2]
	move	$9,$20
	addu	$21,$21,$2
	move	$8,$17
	copy_s.w	$2,$w0[3]
	move	$11,$sp
	addu	$21,$21,$2
	daddiu	$13,$sp,64
	move	$12,$sp
.L2479:
	lbu	$5,4($8)
	daddiu	$12,$12,16
	lbu	$7,4($9)
	lbu	$4,5($8)
	lbu	$14,7($8)
	lbu	$2,5($9)
	subu	$7,$7,$5
	lbu	$5,7($9)
	sll	$7,$7,16
	lbu	$6,6($8)
	lbu	$3,6($9)
	subu	$2,$2,$4
	lbu	$15,0($8)
	subu	$5,$5,$14
	sll	$2,$2,16
	lbu	$10,0($9)
	sll	$5,$5,16
	lbu	$14,1($8)
	subu	$3,$3,$6
	lbu	$4,1($9)
	sll	$6,$3,16
	subu	$10,$10,$15
	lbu	$3,2($9)
	lbu	$15,2($8)
	addu	$7,$7,$10
	subu	$4,$4,$14
	lbu	$10,3($9)
	daddu	$9,$9,$fp
	lbu	$14,3($8)
	addu	$2,$2,$4
	daddu	$8,$8,$23
	subu	$3,$3,$15
	addu	$4,$7,$2
	addu	$3,$6,$3
	subu	$2,$7,$2
	subu	$6,$10,$14
	addu	$5,$5,$6
	addu	$6,$3,$5
	subu	$3,$3,$5
	addu	$7,$4,$6
	addu	$5,$2,$3
	subu	$4,$4,$6
	subu	$2,$2,$3
	sw	$7,-16($12)
	sw	$4,-8($12)
	sw	$5,-12($12)
	bne	$13,$12,.L2479
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2480:
	lw	$6,0($11)
	daddiu	$11,$11,4
	lw	$4,12($11)
	lw	$2,44($11)
	lw	$3,28($11)
	addu	$7,$6,$4
	subu	$6,$6,$4
	addu	$4,$3,$2
	subu	$3,$3,$2
	addu	$5,$6,$3
	addu	$2,$7,$4
	srl	$9,$2,15
	subu	$4,$7,$4
	srl	$8,$5,15
	subu	$3,$6,$3
	and	$9,$9,$22
	and	$8,$8,$22
	srl	$7,$4,15
	sll	$14,$9,16
	and	$7,$7,$22
	sll	$10,$8,16
	srl	$6,$3,15
	subu	$9,$14,$9
	subu	$8,$10,$8
	and	$6,$6,$22
	sll	$14,$7,16
	sll	$10,$6,16
	subu	$7,$14,$7
	addu	$2,$2,$9
	addu	$5,$5,$8
	subu	$6,$10,$6
	xor	$2,$2,$9
	xor	$5,$5,$8
	addu	$4,$4,$7
	addu	$2,$2,$5
	xor	$4,$4,$7
	addu	$3,$3,$6
	addu	$2,$2,$4
	xor	$3,$3,$6
	addu	$2,$2,$3
	bne	$13,$11,.L2480
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$21,.L2490
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,80($sp)

	addu	$21,$21,$19
.L2491:
	daddiu	$20,$20,8
	move	$19,$21
	bne	$16,$20,.L2483
	daddiu	$17,$17,8

	ld	$3,112($sp)
	move	$17,$19
	ld	$2,88($sp)
	ld	$4,104($sp)
	daddu	$16,$16,$3
	ld	$3,72($sp)
	addiu	$2,$2,-1
	sd	$2,88($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2484
	sd	$3,72($sp)

	ld	$31,216($sp)
	move	$2,$21
	ld	$fp,208($sp)
	ld	$28,200($sp)
	ld	$23,192($sp)
	ld	$22,184($sp)
	ld	$21,176($sp)
	ld	$20,168($sp)
	ld	$19,160($sp)
	ld	$18,152($sp)
	ld	$17,144($sp)
	ld	$16,136($sp)
	jr	$31
	daddiu	$sp,$sp,224

	.align	3
.L2490:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,96($sp)

	b	.L2491
	addu	$21,$21,$19

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l:
	.frame	$sp,208,$31		# vars= 112, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-208
	sd	$28,184($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l)))
	sd	$20,152($sp)
	move	$20,$7
	daddu	$28,$28,$25
	dsll	$2,$20,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l)))
	sd	$21,160($sp)
	sd	$2,80($sp)
	daddu	$2,$2,$20
	dsll	$7,$5,1
	sd	$2,72($sp)
	move	$21,$5
	daddu	$5,$7,$5
	ld	$2,%got_page(.LC46)($28)
	daddu	$3,$4,$7
	sd	$23,176($sp)
	li	$23,16			# 0x10
	sd	$19,144($sp)
	daddu	$19,$4,$5
	daddiu	$2,$2,%got_ofst(.LC46)
	sd	$17,128($sp)
	dsll	$17,$5,1
	sd	$2,88($sp)
	ld	$2,%got_page(.LC45)($28)
	sd	$16,120($sp)
	move	$16,$0
	sd	$31,200($sp)
	daddiu	$2,$2,%got_ofst(.LC45)
	sd	$fp,192($sp)
	sd	$22,168($sp)
	sd	$18,136($sp)
	sd	$2,96($sp)
	.align	3
.L2497:
	dsubu	$22,$3,$7
	vbld	$w3,0($3)
	ld	$3,72($sp)
	daddu	$2,$6,$20
	vbld	$w9,0($19)
	daddu	$fp,$2,$20
	dsubu	$19,$19,$7
	vbld	$w4,0($2)
	vbld	$w11,0($22)
	vbld	$w10,0($19)
	vbld	$w8,0($6)
	vbld	$w7,0($fp)
	daddu	$3,$3,$6
	hadd_u.h	$w13,$w11,$w11
	hadd_u.h	$w6,$w10,$w10
	hadd_u.h	$w12,$w3,$w3
	vbld	$w5,0($3)
	hadd_u.h	$w2,$w9,$w9
	hadd_u.h	$w15,$w8,$w8
	hadd_u.h	$w0,$w4,$w4
	hadd_u.h	$w14,$w7,$w7
	hadd_u.h	$w1,$w5,$w5
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w6[1],$w10[0]
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w0[1],$w4[0]
	insve.d	$w1[1],$w5[0]
	subv.h	$w0,$w6,$w0
	hsub_u.h	$w11,$w11,$w11
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	insve.d	$w2[1],$w9[0]
	hsub_u.h	$w7,$w7,$w7
	subv.h	$w1,$w2,$w1
	insve.d	$w13[1],$w11[0]
	move.v	$w10,$w12
	insve.d	$w10[1],$w3[0]
	move.v	$w3,$w15
	insve.d	$w3[1],$w8[0]
	subv.h	$w4,$w13,$w3
	move.v	$w3,$w14
	addv.h	$w6,$w0,$w4
	insve.d	$w3[1],$w7[0]
	subv.h	$w0,$w0,$w4
	subv.h	$w3,$w10,$w3
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
	copy_s.w	$2,$w0[1]
	copy_s.w	$18,$w0[0]
	addu	$18,$18,$2
	copy_s.w	$2,$w0[2]
	addu	$18,$18,$2
	move	$3,$22
	copy_s.w	$2,$w0[3]
	move	$11,$sp
	addu	$18,$18,$2
	daddiu	$25,$sp,64
	move	$12,$sp
.L2493:
	lbu	$4,4($6)
	daddiu	$12,$12,16
	lbu	$2,5($6)
	lbu	$31,7($3)
	lbu	$9,4($3)
	lbu	$14,5($3)
	lbu	$8,7($6)
	lbu	$24,0($3)
	subu	$9,$9,$4
	lbu	$15,0($6)
	subu	$14,$14,$2
	sll	$9,$9,16
	lbu	$4,6($6)
	subu	$8,$31,$8
	sll	$14,$14,16
	lbu	$31,1($6)
	sll	$8,$8,16
	lbu	$13,6($3)
	subu	$15,$24,$15
	lbu	$2,1($3)
	addu	$9,$9,$15
	lbu	$24,2($6)
	subu	$13,$13,$4
	lbu	$15,3($3)
	lbu	$4,2($3)
	subu	$2,$2,$31
	sll	$13,$13,16
	lbu	$31,3($6)
	addu	$2,$14,$2
	daddu	$3,$3,$21
	addu	$14,$9,$2
	subu	$2,$9,$2
	subu	$4,$4,$24
	daddu	$6,$6,$20
	subu	$15,$15,$31
	addu	$4,$13,$4
	addu	$8,$8,$15
	addu	$9,$4,$8
	subu	$4,$4,$8
	addu	$8,$14,$9
	subu	$14,$14,$9
	addu	$9,$2,$4
	subu	$2,$2,$4
	sw	$8,-16($12)
	sw	$14,-8($12)
	sw	$9,-12($12)
	bne	$25,$12,.L2493
	sw	$2,-4($12)

	li	$15,65536			# 0x10000
	daddiu	$25,$11,16
	move	$24,$0
	addiu	$15,$15,1
.L2494:
	lw	$6,0($11)
	daddiu	$11,$11,4
	lw	$4,12($11)
	lw	$2,44($11)
	lw	$3,28($11)
	addu	$9,$6,$4
	subu	$6,$6,$4
	addu	$4,$3,$2
	subu	$3,$3,$2
	addu	$8,$6,$3
	addu	$2,$9,$4
	srl	$12,$8,15
	subu	$4,$9,$4
	srl	$13,$2,15
	and	$31,$12,$15
	subu	$3,$6,$3
	and	$13,$13,$15
	srl	$14,$4,15
	sll	$9,$13,16
	and	$14,$14,$15
	sll	$12,$31,16
	srl	$6,$3,15
	subu	$13,$9,$13
	subu	$12,$12,$31
	and	$6,$6,$15
	sll	$9,$14,16
	sll	$31,$6,16
	subu	$9,$9,$14
	addu	$2,$2,$13
	addu	$8,$8,$12
	subu	$31,$31,$6
	xor	$2,$2,$13
	xor	$8,$8,$12
	addu	$4,$4,$9
	addu	$8,$2,$8
	xor	$9,$4,$9
	addu	$6,$3,$31
	addu	$9,$8,$9
	xor	$6,$6,$31
	addu	$6,$9,$6
	bne	$25,$11,.L2494
	addu	$24,$6,$24

	andi	$2,$24,0xffff
	srl	$24,$24,16
	sd	$7,64($sp)
	addu	$24,$2,$24
	srl	$24,$24,1
	beq	$24,$18,.L2502
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,88($sp)

	ld	$7,64($sp)
.L2496:
	ld	$2,80($sp)
	addu	$18,$18,$16
	addiu	$23,$23,-1
	move	$16,$18
	daddu	$3,$17,$22
	daddu	$19,$17,$19
	bne	$23,$0,.L2497
	daddu	$6,$2,$fp

	ld	$31,200($sp)
	move	$2,$18
	ld	$fp,192($sp)
	ld	$28,184($sp)
	ld	$23,176($sp)
	ld	$22,168($sp)
	ld	$21,160($sp)
	ld	$20,152($sp)
	ld	$19,144($sp)
	ld	$18,136($sp)
	ld	$17,128($sp)
	ld	$16,120($sp)
	jr	$31
	daddiu	$sp,$sp,208

	.align	3
.L2502:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,96($sp)

	b	.L2496
	ld	$7,64($sp)

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
	.frame	$sp,224,$31		# vars= 128, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-224
	dsll	$2,$5,2
	sd	$28,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l)))
	sd	$2,112($sp)
	dsll	$2,$7,2
	daddu	$28,$28,$25
	sd	$2,104($sp)
	li	$2,4			# 0x4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l)))
	sd	$2,88($sp)
	dlsa	$2,$7,$7,1
	sd	$2,64($sp)
	ld	$2,%got_page(.LC46)($28)
	sd	$22,184($sp)
	li	$22,65536			# 0x10000
	sd	$fp,208($sp)
	addiu	$22,$22,1
	move	$fp,$5
	daddiu	$2,$2,%got_ofst(.LC46)
	sd	$23,192($sp)
	move	$23,$7
	sd	$2,80($sp)
	ld	$2,%got_page(.LC45)($28)
	sd	$18,152($sp)
	dlsa	$18,$5,$5,1
	sd	$17,144($sp)
	move	$17,$0
	sd	$16,136($sp)
	daddiu	$2,$2,%got_ofst(.LC45)
	daddiu	$16,$4,32
	sd	$31,216($sp)
	sd	$21,176($sp)
	sd	$20,168($sp)
	sd	$19,160($sp)
	sd	$6,72($sp)
	sd	$2,96($sp)
.L2509:
	ld	$20,72($sp)
	daddiu	$19,$16,-32
	move	$2,$17
	move	$17,$20
	move	$20,$19
	move	$19,$2
.L2508:
	ld	$4,64($sp)
	daddu	$2,$17,$23
	daddu	$3,$20,$fp
	vbld	$w15,0($20)
	daddu	$6,$2,$23
	daddu	$7,$3,$fp
	vbld	$w14,0($17)
	vbld	$w3,0($2)
	daddu	$5,$18,$20
	vbld	$w13,0($7)
	vbld	$w12,0($6)
	vbld	$w5,0($3)
	daddu	$4,$4,$17
	hadd_u.h	$w0,$w12,$w12
	vbld	$w9,0($5)
	hadd_u.h	$w10,$w15,$w15
	vbld	$w8,0($4)
	hadd_u.h	$w7,$w5,$w5
	hadd_u.h	$w6,$w8,$w8
	hadd_u.h	$w2,$w13,$w13
	hadd_u.h	$w4,$w14,$w14
	hadd_u.h	$w11,$w3,$w3
	hsub_u.h	$w17,$w15,$w15
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w15,$w13,$w13
	hsub_u.h	$w16,$w14,$w14
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w14,$w12,$w12
	insve.d	$w7[1],$w5[0]
	hsub_u.h	$w12,$w8,$w8
	insve.d	$w2[1],$w15[0]
	hadd_u.h	$w1,$w9,$w9
	move.v	$w8,$w2
	hsub_u.h	$w13,$w9,$w9
	insve.d	$w10[1],$w17[0]
	insve.d	$w1[1],$w13[0]
	insve.d	$w4[1],$w16[0]
	move.v	$w5,$w1
	subv.h	$w4,$w10,$w4
	move.v	$w1,$w0
	move.v	$w2,$w11
	insve.d	$w1[1],$w14[0]
	insve.d	$w2[1],$w3[0]
	subv.h	$w7,$w7,$w2
	subv.h	$w2,$w8,$w1
	addv.h	$w0,$w7,$w4
	move.v	$w1,$w6
	subv.h	$w7,$w7,$w4
	insve.d	$w1[1],$w12[0]
	subv.h	$w1,$w5,$w1
	addv.h	$w6,$w1,$w2
	subv.h	$w1,$w1,$w2
	asub_s.h	$w4,$w6,$w0
	addv.h	$w5,$w1,$w7
	addv.h	$w6,$w6,$w0
	asub_s.h	$w1,$w1,$w7
	vabs.h	$w6,$w6
	vabs.h	$w3,$w1
	ilvod.h	$w2,$w5,$w6
	ilvod.h	$w1,$w3,$w4
	ilvev.h	$w5,$w5,$w6
	ilvev.h	$w3,$w3,$w4
	max_s.h	$w2,$w2,$w5
	max_s.h	$w1,$w1,$w3
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w0,$w2,$w1
	copy_s.w	$2,$w0[1]
	copy_s.w	$21,$w0[0]
	addu	$21,$21,$2
	copy_s.w	$2,$w0[2]
	move	$9,$20
	addu	$21,$21,$2
	move	$8,$17
	copy_s.w	$2,$w0[3]
	move	$11,$sp
	addu	$21,$21,$2
	daddiu	$13,$sp,64
	move	$12,$sp
.L2504:
	lbu	$5,4($8)
	daddiu	$12,$12,16
	lbu	$7,4($9)
	lbu	$4,5($8)
	lbu	$14,7($8)
	lbu	$2,5($9)
	subu	$7,$7,$5
	lbu	$5,7($9)
	sll	$7,$7,16
	lbu	$6,6($8)
	lbu	$3,6($9)
	subu	$2,$2,$4
	lbu	$15,0($8)
	subu	$5,$5,$14
	sll	$2,$2,16
	lbu	$10,0($9)
	sll	$5,$5,16
	lbu	$14,1($8)
	subu	$3,$3,$6
	lbu	$4,1($9)
	sll	$6,$3,16
	subu	$10,$10,$15
	lbu	$3,2($9)
	lbu	$15,2($8)
	addu	$7,$7,$10
	subu	$4,$4,$14
	lbu	$10,3($9)
	daddu	$9,$9,$fp
	lbu	$14,3($8)
	addu	$2,$2,$4
	daddu	$8,$8,$23
	subu	$3,$3,$15
	addu	$4,$7,$2
	addu	$3,$6,$3
	subu	$2,$7,$2
	subu	$6,$10,$14
	addu	$5,$5,$6
	addu	$6,$3,$5
	subu	$3,$3,$5
	addu	$7,$4,$6
	addu	$5,$2,$3
	subu	$4,$4,$6
	subu	$2,$2,$3
	sw	$7,-16($12)
	sw	$4,-8($12)
	sw	$5,-12($12)
	bne	$13,$12,.L2504
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2505:
	lw	$6,0($11)
	daddiu	$11,$11,4
	lw	$4,12($11)
	lw	$2,44($11)
	lw	$3,28($11)
	addu	$7,$6,$4
	subu	$6,$6,$4
	addu	$4,$3,$2
	subu	$3,$3,$2
	addu	$5,$6,$3
	addu	$2,$7,$4
	srl	$9,$2,15
	subu	$4,$7,$4
	srl	$8,$5,15
	subu	$3,$6,$3
	and	$9,$9,$22
	and	$8,$8,$22
	srl	$7,$4,15
	sll	$14,$9,16
	and	$7,$7,$22
	sll	$10,$8,16
	srl	$6,$3,15
	subu	$9,$14,$9
	subu	$8,$10,$8
	and	$6,$6,$22
	sll	$14,$7,16
	sll	$10,$6,16
	subu	$7,$14,$7
	addu	$2,$2,$9
	addu	$5,$5,$8
	subu	$6,$10,$6
	xor	$2,$2,$9
	xor	$5,$5,$8
	addu	$4,$4,$7
	addu	$2,$2,$5
	xor	$4,$4,$7
	addu	$3,$3,$6
	addu	$2,$2,$4
	xor	$3,$3,$6
	addu	$2,$2,$3
	bne	$13,$11,.L2505
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$21,.L2515
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,80($sp)

	addu	$21,$21,$19
.L2516:
	daddiu	$20,$20,8
	move	$19,$21
	bne	$16,$20,.L2508
	daddiu	$17,$17,8

	ld	$3,112($sp)
	move	$17,$19
	ld	$2,88($sp)
	ld	$4,104($sp)
	daddu	$16,$16,$3
	ld	$3,72($sp)
	addiu	$2,$2,-1
	sd	$2,88($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2509
	sd	$3,72($sp)

	ld	$31,216($sp)
	move	$2,$21
	ld	$fp,208($sp)
	ld	$28,200($sp)
	ld	$23,192($sp)
	ld	$22,184($sp)
	ld	$21,176($sp)
	ld	$20,168($sp)
	ld	$19,160($sp)
	ld	$18,152($sp)
	ld	$17,144($sp)
	ld	$16,136($sp)
	jr	$31
	daddiu	$sp,$sp,224

	.align	3
.L2515:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,96($sp)

	b	.L2516
	addu	$21,$21,$19

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
	.frame	$sp,224,$31		# vars= 128, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-224
	dsll	$2,$5,2
	sd	$2,104($sp)
	dsll	$2,$7,2
	sd	$28,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l)))
	sd	$2,96($sp)
	li	$2,8			# 0x8
	daddu	$28,$28,$25
	sd	$2,64($sp)
	dlsa	$2,$5,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l)))
	sd	$2,72($sp)
	dlsa	$2,$7,$7,1
	sd	$2,80($sp)
	ld	$2,%got_page(.LC46)($28)
	sd	$21,176($sp)
	li	$21,65536			# 0x10000
	sd	$19,160($sp)
	move	$19,$0
	addiu	$21,$21,1
	daddiu	$2,$2,%got_ofst(.LC46)
	sd	$fp,208($sp)
	move	$fp,$5
	sd	$2,88($sp)
	ld	$2,%got_page(.LC45)($28)
	sd	$23,192($sp)
	move	$23,$19
	sd	$22,184($sp)
	move	$22,$7
	sd	$17,144($sp)
	daddiu	$2,$2,%got_ofst(.LC45)
	move	$17,$6
	sd	$16,136($sp)
	daddiu	$16,$4,16
	sd	$31,216($sp)
	sd	$20,168($sp)
	sd	$18,152($sp)
	sd	$2,112($sp)
	.align	3
.L2523:
	daddiu	$18,$16,-16
	move	$19,$17
.L2522:
	ld	$4,72($sp)
	daddu	$2,$19,$22
	daddu	$3,$18,$fp
	vbld	$w15,0($18)
	daddu	$6,$2,$22
	daddu	$7,$3,$fp
	vbld	$w14,0($19)
	vbld	$w3,0($2)
	vbld	$w13,0($7)
	vbld	$w12,0($6)
	vbld	$w5,0($3)
	hadd_u.h	$w0,$w12,$w12
	daddu	$5,$4,$18
	ld	$4,80($sp)
	hadd_u.h	$w10,$w15,$w15
	hadd_u.h	$w7,$w5,$w5
	vbld	$w9,0($5)
	hadd_u.h	$w2,$w13,$w13
	hadd_u.h	$w4,$w14,$w14
	hadd_u.h	$w11,$w3,$w3
	hsub_u.h	$w17,$w15,$w15
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w15,$w13,$w13
	hsub_u.h	$w16,$w14,$w14
	daddu	$4,$4,$19
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w14,$w12,$w12
	insve.d	$w7[1],$w5[0]
	vbld	$w8,0($4)
	insve.d	$w2[1],$w15[0]
	hadd_u.h	$w6,$w8,$w8
	hsub_u.h	$w12,$w8,$w8
	hadd_u.h	$w1,$w9,$w9
	move.v	$w8,$w2
	hsub_u.h	$w13,$w9,$w9
	insve.d	$w10[1],$w17[0]
	insve.d	$w1[1],$w13[0]
	insve.d	$w4[1],$w16[0]
	move.v	$w5,$w1
	subv.h	$w4,$w10,$w4
	move.v	$w1,$w0
	move.v	$w2,$w11
	insve.d	$w1[1],$w14[0]
	insve.d	$w2[1],$w3[0]
	subv.h	$w7,$w7,$w2
	subv.h	$w2,$w8,$w1
	addv.h	$w0,$w7,$w4
	move.v	$w1,$w6
	subv.h	$w7,$w7,$w4
	insve.d	$w1[1],$w12[0]
	subv.h	$w1,$w5,$w1
	addv.h	$w6,$w1,$w2
	subv.h	$w1,$w1,$w2
	asub_s.h	$w4,$w6,$w0
	addv.h	$w5,$w1,$w7
	addv.h	$w6,$w6,$w0
	asub_s.h	$w1,$w1,$w7
	vabs.h	$w6,$w6
	vabs.h	$w3,$w1
	ilvod.h	$w2,$w5,$w6
	ilvod.h	$w1,$w3,$w4
	ilvev.h	$w5,$w5,$w6
	ilvev.h	$w3,$w3,$w4
	max_s.h	$w2,$w2,$w5
	max_s.h	$w1,$w1,$w3
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w0,$w2,$w1
	copy_s.w	$2,$w0[1]
	copy_s.w	$20,$w0[0]
	addu	$20,$20,$2
	copy_s.w	$2,$w0[2]
	addu	$20,$20,$2
	move	$10,$18
	copy_s.w	$2,$w0[3]
	move	$8,$19
	addu	$20,$20,$2
	move	$9,$sp
	daddiu	$12,$sp,64
	move	$11,$sp
.L2518:
	lbu	$5,4($8)
	daddiu	$11,$11,16
	lbu	$7,4($10)
	lbu	$4,5($8)
	lbu	$14,7($8)
	lbu	$2,5($10)
	subu	$7,$7,$5
	lbu	$5,7($10)
	sll	$7,$7,16
	lbu	$6,6($8)
	lbu	$3,6($10)
	subu	$2,$2,$4
	lbu	$15,0($8)
	subu	$5,$5,$14
	sll	$2,$2,16
	lbu	$13,0($10)
	sll	$5,$5,16
	lbu	$14,1($8)
	subu	$3,$3,$6
	lbu	$4,1($10)
	sll	$6,$3,16
	subu	$13,$13,$15
	lbu	$3,2($10)
	lbu	$15,2($8)
	addu	$7,$7,$13
	subu	$4,$4,$14
	lbu	$13,3($10)
	daddu	$10,$10,$fp
	lbu	$14,3($8)
	addu	$2,$2,$4
	daddu	$8,$8,$22
	subu	$3,$3,$15
	addu	$4,$7,$2
	addu	$3,$6,$3
	subu	$2,$7,$2
	subu	$6,$13,$14
	addu	$5,$5,$6
	addu	$6,$3,$5
	subu	$3,$3,$5
	addu	$7,$4,$6
	addu	$5,$2,$3
	subu	$4,$4,$6
	subu	$2,$2,$3
	sw	$7,-16($11)
	sw	$4,-8($11)
	sw	$5,-12($11)
	bne	$12,$11,.L2518
	sw	$2,-4($11)

	daddiu	$11,$9,16
	move	$10,$0
.L2519:
	lw	$6,0($9)
	daddiu	$9,$9,4
	lw	$4,12($9)
	lw	$2,44($9)
	lw	$3,28($9)
	addu	$7,$6,$4
	subu	$6,$6,$4
	addu	$4,$3,$2
	subu	$3,$3,$2
	addu	$5,$6,$3
	addu	$2,$7,$4
	srl	$12,$2,15
	subu	$4,$7,$4
	srl	$8,$5,15
	subu	$3,$6,$3
	and	$12,$12,$21
	and	$8,$8,$21
	srl	$7,$4,15
	sll	$14,$12,16
	and	$7,$7,$21
	sll	$13,$8,16
	srl	$6,$3,15
	subu	$12,$14,$12
	subu	$8,$13,$8
	and	$6,$6,$21
	sll	$14,$7,16
	sll	$13,$6,16
	subu	$7,$14,$7
	addu	$2,$2,$12
	addu	$5,$5,$8
	subu	$6,$13,$6
	xor	$2,$2,$12
	xor	$5,$5,$8
	addu	$4,$4,$7
	addu	$2,$2,$5
	xor	$4,$4,$7
	addu	$3,$3,$6
	addu	$2,$2,$4
	xor	$3,$3,$6
	addu	$2,$2,$3
	bne	$11,$9,.L2519
	addu	$10,$2,$10

	andi	$2,$10,0xffff
	srl	$10,$10,16
	addu	$10,$2,$10
	srl	$10,$10,1
	beq	$10,$20,.L2529
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,88($sp)

	addu	$20,$20,$23
.L2530:
	daddiu	$18,$18,8
	move	$23,$20
	bne	$16,$18,.L2522
	daddiu	$19,$19,8

	ld	$3,104($sp)
	ld	$2,64($sp)
	daddu	$16,$16,$3
	ld	$3,96($sp)
	addiu	$2,$2,-1
	sd	$2,64($sp)
	bne	$2,$0,.L2523
	daddu	$17,$17,$3

	ld	$31,216($sp)
	move	$2,$20
	ld	$fp,208($sp)
	ld	$28,200($sp)
	ld	$23,192($sp)
	ld	$22,184($sp)
	ld	$21,176($sp)
	ld	$20,168($sp)
	ld	$19,160($sp)
	ld	$18,152($sp)
	ld	$17,144($sp)
	ld	$16,136($sp)
	jr	$31
	daddiu	$sp,$sp,224

	.align	3
.L2529:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,112($sp)

	b	.L2530
	addu	$20,$20,$23

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l
	.section	.rodata.str1.8
	.align	3
.LC105:
	.ascii	"sa8d_32x32 test success\000"
	.align	3
.LC106:
	.ascii	"sa8d_32x32 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l
	.type	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l, @function
_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l:
	.frame	$sp,304,$31		# vars= 208, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-304
	dsll	$2,$5,3
	sd	$28,280($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l)))
	daddu	$28,$28,$25
	sd	$18,232($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l)))
	sd	$22,264($sp)
	ld	$18,%got_page(_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l)($28)
	ld	$22,%got_page(.LC38)($28)
	sd	$2,160($sp)
	dsll	$2,$7,3
	sd	$2,168($sp)
	daddiu	$2,$18,%got_ofst(_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l)
	sd	$2,128($sp)
	daddiu	$2,$22,%got_ofst(.LC38)
	move	$22,$5
	sd	$2,152($sp)
	ld	$2,%got_page(.LC37)($28)
	sd	$23,272($sp)
	li	$23,4			# 0x4
	sd	$fp,288($sp)
	daddu	$fp,$6,$7
	sd	$21,256($sp)
	daddiu	$2,$2,%got_ofst(.LC37)
	daddu	$21,$4,$5
	sd	$20,248($sp)
	dsll	$20,$5,1
	sd	$19,240($sp)
	dsll	$19,$7,1
	sd	$17,224($sp)
	move	$17,$0
	sd	$23,176($sp)
	move	$23,$7
	sd	$31,296($sp)
	sd	$16,216($sp)
	sd	$4,192($sp)
	sd	$6,200($sp)
	sd	$2,184($sp)
	sd	$fp,136($sp)
	sd	$21,144($sp)
.L2535:
	ld	$fp,144($sp)
	ld	$21,136($sp)
	daddiu	$18,$fp,32
.L2534:
	dsubu	$4,$fp,$22
	dsubu	$6,$21,$23
	ld	$25,128($sp)
	vbld	$w12,0($fp)
	daddu	$3,$20,$4
	daddu	$2,$19,$6
	vbld	$w15,0($4)
	vbld	$w14,0($6)
	daddu	$11,$22,$3
	daddu	$10,$23,$2
	vbld	$w11,0($3)
	vbld	$w6,0($2)
	daddu	$9,$22,$11
	daddu	$8,$23,$10
	vbld	$w2,0($10)
	vbld	$w8,0($11)
	daddu	$7,$22,$9
	daddu	$5,$23,$8
	vbld	$w17,0($9)
	hadd_u.h	$w7,$w12,$w12
	daddu	$3,$22,$7
	daddu	$2,$23,$5
	hadd_u.h	$w5,$w6,$w6
	hadd_u.h	$w9,$w2,$w2
	daddu	$12,$23,$2
	daddu	$13,$22,$3
	hsub_u.h	$w16,$w15,$w15
	hsub_u.h	$w21,$w17,$w17
	vbld	$w20,0($13)
	vbld	$w19,0($12)
	vbld	$w13,0($21)
	hadd_u.h	$w4,$w15,$w15
	hadd_u.h	$w10,$w11,$w11
	hsub_u.h	$w15,$w12,$w12
	insve.d	$w4[1],$w16[0]
	hsub_u.h	$w12,$w11,$w11
	vbld	$w16,0($7)
	hsub_u.h	$w11,$w6,$w6
	insve.d	$w10[1],$w12[0]
	hsub_u.h	$w6,$w2,$w2
	vbld	$w12,0($8)
	hsub_u.h	$w18,$w16,$w16
	hadd_u.h	$w0,$w8,$w8
	hadd_u.h	$w3,$w14,$w14
	hadd_u.h	$w1,$w13,$w13
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w14,$w14,$w14
	hsub_u.h	$w13,$w13,$w13
	move.v	$w2,$w7
	insve.d	$w1[1],$w13[0]
	insve.d	$w2[1],$w15[0]
	insve.d	$w0[1],$w8[0]
	vbld	$w15,0($3)
	move.v	$w8,$w0
	subv.h	$w7,$w2,$w1
	insve.d	$w3[1],$w14[0]
	move.v	$w0,$w5
	subv.h	$w3,$w4,$w3
	insve.d	$w0[1],$w11[0]
	addv.h	$w1,$w7,$w3
	subv.h	$w4,$w10,$w0
	vbld	$w11,0($5)
	subv.h	$w7,$w7,$w3
	hadd_u.h	$w14,$w11,$w11
	hadd_u.h	$w10,$w19,$w19
	move.v	$w0,$w9
	hadd_u.h	$w13,$w17,$w17
	insve.d	$w0[1],$w6[0]
	hsub_u.h	$w17,$w15,$w15
	subv.h	$w0,$w8,$w0
	insve.d	$w13[1],$w21[0]
	addv.h	$w5,$w0,$w4
	hadd_u.h	$w8,$w16,$w16
	subv.h	$w0,$w0,$w4
	hsub_u.h	$w16,$w12,$w12
	subv.h	$w6,$w0,$w7
	addv.h	$w4,$w5,$w1
	addv.h	$w3,$w0,$w7
	subv.h	$w5,$w5,$w1
	vbld	$w0,0($2)
	hadd_u.h	$w7,$w15,$w15
	hadd_u.h	$w9,$w20,$w20
	hsub_u.h	$w15,$w11,$w11
	hadd_u.h	$w2,$w12,$w12
	hadd_u.h	$w1,$w0,$w0
	hsub_u.h	$w20,$w20,$w20
	hsub_u.h	$w0,$w0,$w0
	insve.d	$w9[1],$w20[0]
	hsub_u.h	$w19,$w19,$w19
	move.v	$w12,$w8
	move.v	$w11,$w7
	insve.d	$w12[1],$w18[0]
	insve.d	$w11[1],$w17[0]
	insve.d	$w2[1],$w16[0]
	move.v	$w7,$w14
	subv.h	$w2,$w13,$w2
	insve.d	$w7[1],$w15[0]
	insve.d	$w1[1],$w0[0]
	subv.h	$w8,$w12,$w7
	move.v	$w0,$w1
	addv.h	$w1,$w8,$w2
	subv.h	$w7,$w11,$w0
	subv.h	$w8,$w8,$w2
	move.v	$w0,$w10
	insve.d	$w0[1],$w19[0]
	subv.h	$w0,$w9,$w0
	addv.h	$w2,$w0,$w7
	subv.h	$w0,$w0,$w7
	addv.h	$w7,$w2,$w1
	subv.h	$w2,$w2,$w1
	addv.h	$w11,$w7,$w4
	addv.h	$w1,$w0,$w8
	subv.h	$w4,$w7,$w4
	addv.h	$w9,$w1,$w3
	pckod.h	$w15,$w4,$w11
	addv.h	$w7,$w2,$w5
	subv.h	$w0,$w0,$w8
	subv.h	$w3,$w1,$w3
	pckev.h	$w4,$w4,$w11
	pckod.h	$w14,$w3,$w9
	subv.h	$w1,$w2,$w5
	asub_s.h	$w12,$w15,$w4
	addv.h	$w5,$w0,$w6
	pckod.h	$w13,$w1,$w7
	pckev.h	$w2,$w1,$w7
	subv.h	$w0,$w0,$w6
	asub_s.h	$w8,$w13,$w2
	pckod.h	$w1,$w0,$w5
	pckev.h	$w3,$w3,$w9
	pckev.h	$w0,$w0,$w5
	asub_s.h	$w10,$w14,$w3
	asub_s.h	$w6,$w1,$w0
	addv.h	$w4,$w15,$w4
	addv.h	$w3,$w14,$w3
	addv.h	$w2,$w13,$w2
	addv.h	$w5,$w1,$w0
	vabs.h	$w11,$w4
	vabs.h	$w9,$w3
	ilvod.h	$w4,$w11,$w12
	ilvod.h	$w3,$w9,$w10
	vabs.h	$w7,$w2
	vabs.h	$w5,$w5
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
	hadd_s.w	$w2,$w2,$w2
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w1,$w1,$w1
	addv.w	$w3,$w4,$w3
	addv.w	$w1,$w2,$w1
	addv.w	$w0,$w3,$w1
	copy_s.w	$2,$w0[1]
	copy_s.w	$16,$w0[0]
	addu	$16,$16,$2
	move	$7,$23
	copy_s.w	$2,$w0[2]
	move	$5,$22
	addu	$16,$16,$2
	copy_s.w	$2,$w0[3]
	jalr	$25
	addu	$16,$16,$2

	addiu	$16,$16,1
	addiu	$2,$2,2
	dsra	$16,$16,1
	sra	$2,$2,2
	beq	$2,$16,.L2549
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,152($sp)

	daddiu	$fp,$fp,8
.L2551:
	addu	$17,$16,$17
	bne	$18,$fp,.L2534
	daddiu	$21,$21,8

	ld	$3,144($sp)
	ld	$4,160($sp)
	ld	$2,176($sp)
	daddu	$3,$3,$4
	ld	$4,168($sp)
	sd	$3,144($sp)
	addiu	$2,$2,-1
	ld	$3,136($sp)
	sd	$2,176($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2535
	sd	$3,136($sp)

	ld	$2,192($sp)
	li	$18,65536			# 0x10000
	move	$10,$22
	move	$11,$23
	move	$31,$0
	sd	$17,152($sp)
	daddiu	$20,$sp,128
	addiu	$18,$18,1
	daddiu	$2,$2,32
	sd	$2,128($sp)
	ld	$2,200($sp)
	sd	$2,136($sp)
	li	$2,4			# 0x4
	sd	$2,144($sp)
.L2539:
	ld	$2,128($sp)
	ld	$23,136($sp)
	daddiu	$22,$2,-32
.L2538:
	move	$13,$22
	move	$12,$23
	move	$17,$sp
	move	$14,$sp
	.align	3
.L2536:
	lbu	$6,0($12)
	daddiu	$14,$14,16
	lbu	$3,0($13)
	lbu	$2,1($12)
	lbu	$5,1($13)
	subu	$3,$3,$6
	lbu	$4,2($13)
	lbu	$6,2($12)
	lbu	$7,3($13)
	subu	$5,$5,$2
	lbu	$2,3($12)
	subu	$8,$3,$5
	addu	$5,$3,$5
	subu	$4,$4,$6
	lbu	$3,4($13)
	sll	$8,$8,16
	lbu	$24,5($12)
	addu	$8,$8,$5
	lbu	$6,4($12)
	subu	$2,$7,$2
	lbu	$9,5($13)
	subu	$5,$4,$2
	addu	$7,$4,$2
	lbu	$15,7($13)
	sll	$2,$5,16
	lbu	$4,6($13)
	subu	$6,$3,$6
	addu	$2,$2,$7
	subu	$9,$9,$24
	lbu	$5,6($12)
	addu	$7,$8,$2
	lbu	$24,7($12)
	subu	$3,$6,$9
	addu	$6,$6,$9
	sll	$3,$3,16
	subu	$2,$8,$2
	addu	$3,$3,$6
	subu	$5,$4,$5
	subu	$6,$15,$24
	daddu	$13,$13,$10
	subu	$4,$5,$6
	addu	$5,$5,$6
	sll	$4,$4,16
	daddu	$12,$12,$11
	addu	$4,$4,$5
	addu	$5,$3,$4
	subu	$3,$3,$4
	addu	$6,$7,$5
	addu	$4,$2,$3
	subu	$7,$7,$5
	subu	$2,$2,$3
	sw	$6,-16($14)
	sw	$7,-8($14)
	sw	$4,-12($14)
	bne	$20,$14,.L2536
	sw	$2,-4($14)

	daddiu	$21,$17,16
	move	$19,$0
.L2537:
	lw	$14,0($17)
	daddiu	$17,$17,4
	lw	$4,12($17)
	lw	$3,44($17)
	lw	$8,28($17)
	addu	$5,$14,$4
	lw	$7,76($17)
	subu	$14,$14,$4
	lw	$6,108($17)
	lw	$25,60($17)
	addu	$2,$8,$3
	subu	$8,$8,$3
	lw	$4,92($17)
	addu	$3,$5,$2
	addu	$15,$14,$8
	subu	$14,$14,$8
	addu	$24,$25,$7
	subu	$25,$25,$7
	subu	$7,$5,$2
	addu	$5,$4,$6
	addu	$2,$24,$5
	subu	$4,$4,$6
	addu	$6,$25,$4
	addu	$12,$3,$2
	subu	$3,$3,$2
	addu	$9,$15,$6
	srl	$2,$12,15
	srl	$fp,$3,15
	subu	$5,$24,$5
	and	$16,$2,$18
	and	$13,$fp,$18
	subu	$6,$15,$6
	srl	$24,$9,15
	addu	$8,$7,$5
	and	$24,$24,$18
	sll	$2,$16,16
	sll	$fp,$13,16
	srl	$15,$6,15
	subu	$2,$2,$16
	subu	$fp,$fp,$13
	subu	$4,$25,$4
	subu	$5,$7,$5
	and	$15,$15,$18
	sll	$25,$24,16
	srl	$16,$8,15
	subu	$25,$25,$24
	and	$16,$16,$18
	addu	$7,$14,$4
	sll	$13,$15,16
	srl	$24,$5,15
	addu	$12,$12,$2
	addu	$3,$3,$fp
	subu	$15,$13,$15
	subu	$4,$14,$4
	xor	$12,$12,$2
	and	$24,$24,$18
	sll	$13,$16,16
	srl	$14,$7,15
	xor	$3,$3,$fp
	addu	$9,$9,$25
	subu	$13,$13,$16
	and	$14,$14,$18
	srl	$16,$4,15
	addu	$3,$12,$3
	xor	$9,$9,$25
	addu	$2,$6,$15
	sll	$fp,$24,16
	addu	$3,$3,$9
	subu	$24,$fp,$24
	and	$12,$16,$18
	sll	$6,$14,16
	xor	$2,$2,$15
	addu	$8,$8,$13
	subu	$14,$6,$14
	addu	$2,$3,$2
	sll	$9,$12,16
	xor	$13,$8,$13
	addu	$5,$5,$24
	subu	$3,$9,$12
	addu	$2,$2,$13
	xor	$5,$5,$24
	addu	$7,$7,$14
	addu	$4,$4,$3
	addu	$2,$2,$5
	xor	$7,$7,$14
	xor	$4,$4,$3
	addu	$2,$2,$7
	addu	$2,$2,$4
	andi	$3,$2,0xffff
	srl	$2,$2,16
	addu	$2,$3,$2
	bne	$21,$17,.L2537
	addu	$19,$2,$19

	ld	$2,128($sp)
	addiu	$19,$19,2
	daddiu	$22,$22,8
	sra	$19,$19,2
	daddiu	$23,$23,8
	bne	$2,$22,.L2538
	addu	$31,$19,$31

	ld	$3,128($sp)
	ld	$4,160($sp)
	ld	$2,144($sp)
	daddu	$3,$3,$4
	ld	$4,168($sp)
	sd	$3,128($sp)
	addiu	$2,$2,-1
	ld	$3,136($sp)
	sd	$2,144($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2539
	sd	$3,136($sp)

	ld	$2,152($sp)
	beq	$2,$31,.L2550
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC106)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC106)

	ld	$31,296($sp)
	ld	$2,152($sp)
	ld	$fp,288($sp)
	ld	$28,280($sp)
	ld	$23,272($sp)
	ld	$22,264($sp)
	ld	$21,256($sp)
	ld	$20,248($sp)
	ld	$19,240($sp)
	ld	$18,232($sp)
	ld	$17,224($sp)
	ld	$16,216($sp)
	jr	$31
	daddiu	$sp,$sp,304

	.align	3
.L2549:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,184($sp)

	b	.L2551
	daddiu	$fp,$fp,8

.L2550:
	ld	$4,%got_page(.LC105)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC105)

	ld	$31,296($sp)
	ld	$2,152($sp)
	ld	$fp,288($sp)
	ld	$28,280($sp)
	ld	$23,272($sp)
	ld	$22,264($sp)
	ld	$21,256($sp)
	ld	$20,248($sp)
	ld	$19,240($sp)
	ld	$18,232($sp)
	ld	$17,224($sp)
	ld	$16,216($sp)
	jr	$31
	daddiu	$sp,$sp,304

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l
	.size	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l, .-_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l
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

	blez	$19,.L2622
	dsubu	$18,$21,$16

	move	$17,$0
	ld	$25,%call16(memcpy)($28)
	.align	3
.L2629:
	move	$4,$18
	move	$6,$16
	move	$5,$21
	addiu	$17,$17,1
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsubu	$18,$18,$16

	bne	$17,$19,.L2629
	ld	$25,%call16(memcpy)($28)

	addiu	$23,$23,-1
	move	$19,$0
	gsdmultu	$23,$23,$16
	dsubu	$22,$23,$22
	daddu	$20,$20,$22
	daddu	$18,$20,$16
	.align	3
.L2630:
	move	$4,$18
	move	$6,$16
	move	$5,$20
	addiu	$19,$19,1
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$18,$18,$16

	bne	$17,$19,.L2630
	ld	$25,%call16(memcpy)($28)

.L2622:
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
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_115blockfill_s_4x4EPsls)
	sd	$fp,3256($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_115blockfill_s_8x8EPsls)
	sd	$fp,3752($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls)($28)
	sd	$16,8840($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_16addAvgILi4ELi2EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_117blockfill_s_16x16EPsls)
	sd	$2,3384($4)
	sd	$fp,4248($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi4ELi2EEEvPKsS2_Phlll)
	sd	$23,8592($4)
	sd	$22,8600($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls)
	sd	$21,8672($4)
	sd	$fp,4744($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113blockfill_s_cILi64EEEvPsls)($28)
	sd	$20,8680($4)
	sd	$19,8752($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113blockfill_s_cILi64EEEvPsls)
	sd	$18,8760($4)
	sd	$fp,5240($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll)($28)
	sd	$17,8832($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl)
	sd	$fp,3840($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl)
	sd	$fp,4336($4)
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
