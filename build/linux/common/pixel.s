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
	.ent	_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii
	.type	_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii, @function
_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$18,16($sp)
	lw	$18,80($sp)
	sd	$fp,72($sp)
	sd	$23,56($sp)
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$17,8($sp)
	blez	$18,.L32
	sd	$16,0($sp)

	addiu	$19,$11,-1
	dsubu	$20,$0,$9
	dext	$19,$19,0,32
	dsll	$21,$9,1
	dsubu	$19,$19,$9
	dsll	$20,$20,1
	dsll	$19,$19,1
	move	$17,$0
	daddiu	$19,$19,2
	.align	3
.L36:
	daddu	$4,$4,$21
	blez	$11,.L34
	move	$13,$4

	daddu	$12,$4,$20
	dsubu	$3,$4,$9
	move	$25,$5
	move	$24,$6
	move	$15,$7
	move	$14,$8
	daddu	$16,$19,$4
	.align	3
.L35:
	lbu	$2,0($12)
	daddiu	$3,$3,2
	daddiu	$12,$12,2
	lbu	$fp,-2($3)
	daddiu	$25,$25,1
	daddiu	$13,$13,2
	lbu	$23,-1($3)
	daddiu	$24,$24,1
	daddiu	$15,$15,1
	lbu	$22,-1($12)
	daddiu	$14,$14,1
	addu	$2,$2,$fp
	addiu	$2,$2,1
	addu	$22,$22,$23
	sra	$2,$2,1
	addiu	$22,$22,1
	sra	$22,$22,1
	addu	$2,$2,$22
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,-1($25)
	lbu	$fp,-1($3)
	lbu	$23,0($3)
	lbu	$2,-1($12)
	lbu	$22,0($12)
	addu	$2,$2,$fp
	addu	$22,$22,$23
	addiu	$2,$2,1
	addiu	$22,$22,1
	sra	$2,$2,1
	sra	$22,$22,1
	addu	$2,$2,$22
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,-1($24)
	lbu	$fp,-2($13)
	lbu	$23,-1($13)
	lbu	$2,-2($3)
	lbu	$22,-1($3)
	addu	$2,$2,$fp
	addu	$22,$22,$23
	addiu	$2,$2,1
	addiu	$22,$22,1
	sra	$2,$2,1
	sra	$22,$22,1
	addu	$2,$2,$22
	addiu	$2,$2,1
	sra	$2,$2,1
	sb	$2,-1($15)
	lbu	$2,-1($3)
	lbu	$fp,-1($13)
	lbu	$22,0($3)
	lbu	$23,0($13)
	addu	$2,$2,$fp
	addiu	$2,$2,1
	addu	$22,$22,$23
	sra	$2,$2,1
	addiu	$22,$22,1
	sra	$22,$22,1
	addu	$2,$2,$22
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$12,$16,.L35
	sb	$2,-1($14)

.L34:
	addiu	$17,$17,1
	daddu	$5,$5,$10
	daddu	$6,$6,$10
	daddu	$7,$7,$10
	bne	$18,$17,.L36
	daddu	$8,$8,$10

.L32:
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
	.end	_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii
	.size	_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii, .-_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii
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
.L43:
	move	$25,$4
	move	$17,$6
	li	$16,4			# 0x4
	mtlo	$0
	move	$12,$0
	move	$13,$0
	move	$14,$0
.L42:
	daddiu	$24,$25,4
	move	$10,$17
	move	$3,$25
.L41:
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
	bne	$24,$3,.L41
	addu	$12,$2,$12

	addiu	$16,$16,-1
	daddu	$25,$25,$5
	bne	$16,$0,.L42
	daddu	$17,$17,$7

	sw	$14,0($8)
	daddiu	$8,$8,16
	daddiu	$4,$4,4
	sw	$13,-12($8)
	daddiu	$6,$6,4
	sw	$12,-8($8)
	bne	$18,$8,.L43
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
	blez	$6,.L48
	mtc1	$0,$f0

	addiu	$8,$6,-1
	daddiu	$2,$4,16
	dext	$8,$8,0,32
	li	$7,196608			# 0x30000
	dlsa	$8,$8,$2,4
	ori	$7,$7,0x99bb
	.align	3
.L50:
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
	bne	$8,$4,.L50
	add.s	$f0,$f0,$f1

.L48:
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
	blez	$9,.L62
	addiu	$14,$8,-1

	move	$13,$0
	dext	$14,$14,0,32
	daddiu	$14,$14,1
	.align	3
.L58:
	blez	$8,.L56
	nop

	move	$2,$4
	move	$11,$6
	daddu	$12,$14,$4
	.align	3
.L57:
	lbu	$3,0($2)
	daddiu	$11,$11,1
	daddiu	$2,$2,1
	sll	$3,$3,$10
	bne	$2,$12,.L57
	sb	$3,-1($11)

.L56:
	addiu	$13,$13,1
	daddu	$6,$6,$7
	bne	$9,$13,.L58
	daddu	$4,$4,$5

.L62:
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
	blez	$9,.L71
	addiu	$15,$8,-1

	dsll	$5,$5,1
	dext	$15,$15,0,32
	move	$14,$0
	dsll	$15,$15,1
	seb	$11,$11
	daddiu	$15,$15,2
	.align	3
.L67:
	blez	$8,.L65
	nop

	move	$3,$4
	move	$12,$6
	daddu	$13,$15,$4
	.align	3
.L66:
	lhu	$2,0($3)
	daddiu	$12,$12,1
	daddiu	$3,$3,2
	sra	$2,$2,$10
	and	$2,$2,$11
	bne	$13,$3,.L66
	sb	$2,-1($12)

.L65:
	addiu	$14,$14,1
	daddu	$6,$6,$7
	bne	$9,$14,.L67
	daddu	$4,$4,$5

.L71:
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
	blez	$9,.L80
	addiu	$15,$8,-1

	dsll	$5,$5,1
	dext	$15,$15,0,32
	move	$14,$0
	dsll	$15,$15,1
	seb	$11,$11
	daddiu	$15,$15,2
	.align	3
.L76:
	blez	$8,.L74
	nop

	move	$3,$4
	move	$12,$6
	daddu	$13,$15,$4
	.align	3
.L75:
	lhu	$2,0($3)
	daddiu	$12,$12,1
	daddiu	$3,$3,2
	sll	$2,$2,$10
	and	$2,$2,$11
	bne	$13,$3,.L75
	sb	$2,-1($12)

.L74:
	addiu	$14,$14,1
	daddu	$6,$6,$7
	bne	$9,$14,.L76
	daddu	$4,$4,$5

.L80:
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
	blez	$10,.L86
	mul.d	$f4,$f4,$f0

	ld	$3,%got_page(.LC1)($13)
	addiu	$12,$10,-1
	daddiu	$2,$6,4
	dext	$12,$12,0,32
	dlsa	$12,$12,$2,2
	ldc1	$f5,%got_ofst(.LC1)($3)
	.align	3
.L83:
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
	bne	$12,$6,.L83
	swc1	$f0,-4($4)

.L86:
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
	blez	$6,.L94
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
.L91:
	ldc1	$f0,0($5)
	mul.d	$f0,$f0,$f3
	sub.d	$f2,$f0,$f1
	c.le.d	$fcc0,$f1,$f0
	trunc.w.d $f0,$f0
	bc1f	$fcc0,.L90
	mfc1	$2,$f0

	trunc.w.d $f0,$f2
	mfc1	$2,$f0
	or	$2,$2,$6
.L90:
	daddiu	$5,$5,8
	sh	$2,0($4)
	bne	$5,$3,.L91
	daddiu	$4,$4,2

.L94:
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
	blez	$6,.L100
	daddiu	$7,$7,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_1L16cuTreeFix8UnpackEPdPti)))

	addiu	$3,$6,-1
	daddiu	$2,$5,2
	dext	$3,$3,0,32
	dlsa	$3,$3,$2,1
	ld	$2,%got_page(.LC0)($7)
	ldc1	$f1,%got_ofst(.LC0)($2)
	.align	3
.L97:
	lh	$2,0($5)
	daddiu	$4,$4,8
	daddiu	$5,$5,2
	mtc1	$2,$f0
	cvt.d.w	$f0,$f0
	mul.d	$f0,$f0,$f1
	bne	$5,$3,.L97
	sdc1	$f0,-8($4)

.L100:
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
.L103:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L102:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L102
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L103
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
.L108:
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
	bne	$10,$0,.L108
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
.L113:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,4
.L112:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L112
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L113
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
.L119:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L118:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L118
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L119
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
.L125:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L124:
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
	bne	$14,$3,.L124
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L125
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
.L131:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L130:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L130
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L131
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
.L137:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L136:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L136
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L137
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
.L143:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L142:
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
	bne	$14,$3,.L142
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L143
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
.L149:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L148:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L148
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L149
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
.L155:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L154:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L154
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L155
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
.L161:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L160:
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
	bne	$14,$3,.L160
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L161
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
.L167:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L166:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L166
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L167
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
.L173:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L172:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L172
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L173
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
.L179:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
	.align	3
.L178:
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
	bne	$14,$3,.L178
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L179
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
.L185:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L184:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L184
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L185
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
.L191:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L190:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L190
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L191
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
.L196:
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
	bne	$10,$0,.L196
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
.L201:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,4
.L200:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L200
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L201
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
.L207:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L206:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L206
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L207
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
.L213:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L212:
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
	bne	$14,$3,.L212
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L213
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
.L219:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L218:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L218
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L219
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
.L225:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L224:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L224
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L225
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
.L231:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L230:
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
	bne	$14,$3,.L230
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L231
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
.L237:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L236:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L236
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L237
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
.L243:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L242:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L242
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L243
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
.L249:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L248:
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
	bne	$14,$3,.L248
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L249
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
.L255:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L254:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L254
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L255
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
.L261:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L260:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L260
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L261
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
.L267:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L266:
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
	bne	$14,$3,.L266
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L267
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
.L273:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L272:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L272
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L273
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
.L279:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,12
	.align	3
.L278:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L278
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L279
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
.L285:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,24
	.align	3
.L284:
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
	bne	$14,$3,.L284
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L285
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
.L291:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,12
	.align	3
.L290:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L290
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L291
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
.L297:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L296:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L296
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L297
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
.L303:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L302:
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
	bne	$14,$3,.L302
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L303
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
.L309:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L308:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L308
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L309
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
.L315:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L314:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L314
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L315
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
.L320:
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
	bne	$10,$0,.L320
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
.L325:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,4
.L324:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L324
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L325
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
.L331:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L330:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L330
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L331
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
.L337:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L336:
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
	bne	$14,$3,.L336
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L337
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
.L343:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L342:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L342
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L343
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
.L349:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L348:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L348
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L349
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
.L355:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L354:
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
	bne	$14,$3,.L354
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L355
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
.L361:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L360:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L360
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L361
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
.L367:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L366:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L366
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L367
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
.L373:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L372:
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
	bne	$14,$3,.L372
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L373
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
.L379:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L378:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L378
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L379
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
.L385:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,24
	.align	3
.L384:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L384
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L385
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
.L391:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,48
	.align	3
.L390:
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
	bne	$14,$3,.L390
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L391
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
.L397:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,24
	.align	3
.L396:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L396
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L397
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
.L403:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L402:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L402
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L403
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
.L409:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L408:
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
	bne	$14,$3,.L408
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L409
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
.L415:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L414:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L414
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L415
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
.L421:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L420:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L420
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L421
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
.L427:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L426:
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
	bne	$14,$3,.L426
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L427
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
.L433:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L432:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L432
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L433
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
.L439:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L438:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L438
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L439
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
.L445:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
	.align	3
.L444:
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
	bne	$14,$3,.L444
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L445
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
.L451:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L450:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L450
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L451
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
.L457:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L456:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L456
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L457
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
.L463:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L462:
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
	bne	$14,$3,.L462
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L463
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
.L469:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L468:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L468
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L469
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
.L475:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L474:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L474
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L475
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
.L481:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
	.align	3
.L480:
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
	bne	$14,$3,.L480
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L481
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
.L487:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L486:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L486
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L487
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
.L493:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,48
	.align	3
.L492:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L492
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L493
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
.L499:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,96
	.align	3
.L498:
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
	bne	$14,$3,.L498
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L499
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
.L505:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,48
	.align	3
.L504:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L504
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L505
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
.L511:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L510:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L510
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L511
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
.L517:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
	.align	3
.L516:
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
	bne	$14,$3,.L516
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L517
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
.L523:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L522:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L522
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L523
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
.L529:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L528:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L528
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L529
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
.L535:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L534:
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
	bne	$14,$3,.L534
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L535
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
.L541:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L540:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L540
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L541
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
.L547:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,4
.L546:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L546
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L547
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
.L553:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L552:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L552
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L553
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
.L559:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L558:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L558
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L559
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
.L565:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L564:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L564
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L565
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
.L571:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L570:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L570
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L571
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
.L577:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,12
	.align	3
.L576:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L576
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L577
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
.L583:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L582:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L582
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L583
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
.L589:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,4
.L588:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L588
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L589
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
.L595:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L594:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L594
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L595
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
.L601:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L600:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L600
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L601
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
.L607:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L606:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L606
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L607
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
.L613:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,24
	.align	3
.L612:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L612
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L613
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
.L619:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L618:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L618
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L619
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
.L625:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L624:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L624
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L625
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
.L631:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L630:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L630
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L631
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
.L637:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L636:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L636
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L637
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
.L643:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L642:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L642
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L643
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
.L649:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,48
	.align	3
.L648:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L648
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L649
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
.L655:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L654:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L654
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L655
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
.L661:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L660:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L660
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L661
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
.L667:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,4
.L666:
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
	bne	$24,$3,.L666
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L667
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
.L673:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,4
.L672:
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
	bne	$24,$3,.L672
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L673
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
.L679:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,8
	.align	3
.L678:
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
	bne	$24,$3,.L678
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L679
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
.L685:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L684:
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
	bne	$24,$3,.L684
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L685
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
.L691:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,8
	.align	3
.L690:
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
	bne	$24,$3,.L690
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L691
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
.L697:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L696:
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
	bne	$24,$3,.L696
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L697
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
.L703:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,12
	.align	3
.L702:
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
	bne	$24,$3,.L702
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L703
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
.L709:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L708:
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
	bne	$24,$3,.L708
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L709
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
.L715:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,4
.L714:
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
	bne	$24,$3,.L714
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L715
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
.L721:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L720:
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
	bne	$24,$3,.L720
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L721
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
.L727:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L726:
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
	bne	$24,$3,.L726
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L727
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
.L733:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L732:
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
	bne	$24,$3,.L732
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L733
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
.L739:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,24
	.align	3
.L738:
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
	bne	$24,$3,.L738
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L739
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
.L745:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L744:
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
	bne	$24,$3,.L744
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L745
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
.L751:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,8
	.align	3
.L750:
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
	bne	$24,$3,.L750
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L751
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
.L757:
	move	$11,$5
	move	$10,$6
	move	$3,$7
	daddiu	$15,$4,64
	.align	3
.L756:
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
	bne	$15,$4,.L756
	sw	$14,8($9)

	move	$4,$15
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$24,$15,.L757
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
.L763:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L762:
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
	bne	$24,$3,.L762
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L763
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
.L769:
	move	$11,$5
	move	$10,$6
	move	$3,$7
	daddiu	$15,$4,64
	.align	3
.L768:
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
	bne	$15,$4,.L768
	sw	$14,8($9)

	move	$4,$15
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$24,$15,.L769
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
.L775:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,48
	.align	3
.L774:
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
	bne	$24,$3,.L774
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L775
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
.L781:
	move	$11,$5
	move	$10,$6
	move	$3,$7
	daddiu	$15,$4,64
	.align	3
.L780:
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
	bne	$15,$4,.L780
	sw	$14,8($9)

	move	$4,$15
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$24,$15,.L781
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
.L787:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L786:
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
	bne	$24,$3,.L786
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L787
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
.L793:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,4
.L792:
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
	bne	$3,$17,.L792
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L793
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
.L799:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,4
.L798:
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
	bne	$3,$17,.L798
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L799
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
.L805:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,8
	.align	3
.L804:
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
	bne	$3,$17,.L804
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L805
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
.L811:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,16
	.align	3
.L810:
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
	bne	$3,$17,.L810
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L811
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
.L817:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,8
	.align	3
.L816:
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
	bne	$3,$17,.L816
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L817
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
.L823:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,16
	.align	3
.L822:
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
	bne	$3,$17,.L822
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L823
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
.L829:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,12
	.align	3
.L828:
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
	bne	$3,$17,.L828
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L829
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
.L835:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,16
	.align	3
.L834:
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
	bne	$3,$17,.L834
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L835
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
.L841:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,4
.L840:
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
	bne	$3,$17,.L840
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L841
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
.L847:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,32
	.align	3
.L846:
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
	bne	$3,$5,.L846
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L847
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
.L853:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,16
	.align	3
.L852:
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
	bne	$3,$5,.L852
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L853
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
.L859:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,32
	.align	3
.L858:
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
	bne	$3,$5,.L858
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L859
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
.L865:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,24
	.align	3
.L864:
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
	bne	$3,$5,.L864
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L865
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
.L871:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,32
	.align	3
.L870:
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
	bne	$3,$17,.L870
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L871
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
.L877:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,8
	.align	3
.L876:
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
	bne	$3,$17,.L876
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L877
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
.L883:
	move	$13,$16
	move	$12,$6
	move	$11,$7
	move	$3,$8
	daddiu	$5,$4,64
	.align	3
.L882:
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
	bne	$5,$4,.L882
	sw	$25,12($10)

	move	$4,$5
	daddu	$16,$16,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$5,$17,.L883
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
.L889:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,32
	.align	3
.L888:
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
	bne	$3,$5,.L888
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L889
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
.L895:
	move	$13,$16
	move	$12,$6
	move	$11,$7
	move	$3,$8
	daddiu	$5,$4,64
	.align	3
.L894:
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
	bne	$5,$4,.L894
	sw	$25,12($10)

	move	$4,$5
	daddu	$16,$16,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$5,$17,.L895
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
.L901:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,48
	.align	3
.L900:
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
	bne	$3,$5,.L900
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L901
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
.L907:
	move	$13,$16
	move	$12,$6
	move	$11,$7
	move	$3,$8
	daddiu	$5,$4,64
	.align	3
.L906:
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
	bne	$5,$4,.L906
	sw	$25,12($10)

	move	$4,$5
	daddu	$16,$16,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$5,$17,.L907
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
.L913:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,16
	.align	3
.L912:
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
	bne	$3,$5,.L912
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L913
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
	blez	$9,.L921
	move	$6,$0

	lw	$14,0($4)
	move	$2,$0
	move	$4,$0
	.align	3
.L920:
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
	beq	$3,$0,.L919
	dlsa	$13,$2,$8,1

	addiu	$2,$2,1
	sh	$6,0($13)
.L919:
	seh	$6,$11
	slt	$3,$6,$9
	bne	$3,$0,.L920
	move	$4,$6

	jr	$31
	nop

	.align	3
.L921:
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
	blez	$9,.L930
	dlsa	$6,$6,$5,2

	daddiu	$sp,$sp,-16
	lw	$14,0($4)
	lw	$13,4($4)
	move	$12,$0
	move	$2,$0
	move	$4,$0
	sd	$16,0($sp)
	.align	3
.L929:
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
	beq	$3,$0,.L928
	dlsa	$24,$2,$8,1

	addiu	$2,$2,1
	sh	$12,0($24)
.L928:
	seh	$12,$15
	slt	$3,$12,$9
	bne	$3,$0,.L929
	move	$4,$12

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L930:
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
	blez	$9,.L942
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
.L941:
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
	beq	$3,$0,.L940
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L940:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L941
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
.L942:
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
	blez	$9,.L964
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
.L963:
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
	beq	$3,$0,.L962
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L962:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L963
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
.L964:
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
	blez	$9,.L980
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
.L979:
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
	beq	$3,$0,.L978
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L978:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L979
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
.L980:
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
	blez	$9,.L992
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
.L991:
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
	beq	$3,$0,.L990
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L990:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L991
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
.L992:
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
	blez	$9,.L1002
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
.L1001:
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
	beq	$3,$0,.L1000
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L1000:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L1001
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
.L1002:
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
	blez	$9,.L1018
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
.L1017:
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
	beq	$3,$0,.L1016
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L1016:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L1017
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
.L1018:
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
.L1030:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,4
.L1029:
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
	bne	$13,$3,.L1029
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1030
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
.L1036:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1035:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1035
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1036
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
.L1042:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,8
.L1041:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1041
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1042
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
.L1048:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1047:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1047
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1048
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
.L1054:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,8
.L1053:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1053
	sh	$3,-2($8)

	daddiu	$4,$4,8
	bne	$10,$4,.L1054
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
.L1060:
	move	$3,$5
	move	$8,$4
	daddiu	$10,$5,8
.L1059:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$10,$3,.L1059
	sh	$2,-2($8)

	daddiu	$4,$4,8
	bne	$11,$4,.L1060
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
.L1066:
	move	$3,$4
	daddiu	$8,$5,8
.L1065:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1065
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1066
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
.L1072:
	move	$3,$4
	daddiu	$8,$5,8
.L1071:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1071
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1072
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
.L1078:
	daddiu	$7,$4,4
	move	$2,$5
.L1077:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1077
	sb	$3,-1($4)

	bne	$4,$8,.L1078
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
.L1084:
	move	$3,$4
	daddiu	$7,$4,8
.L1083:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1083
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1084
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
.L1090:
	move	$2,$4
	daddiu	$7,$4,4
.L1089:
	lbu	$3,0($2)
	daddiu	$2,$2,1
	madd	$3,$3
	bne	$7,$2,.L1089
	addu	$6,$3,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1090
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
.L1096:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
.L1095:
	daddiu	$8,$8,2
	lh	$2,0($3)
	mtlo	$9
	lh	$10,-2($8)
	daddiu	$3,$3,2
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1095
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1096
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
.L1102:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L1101:
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
	bne	$13,$3,.L1101
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1102
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
.L1108:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L1107:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1107
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1108
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
.L1114:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,16
	.align	3
.L1113:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1113
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1114
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
.L1120:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L1119:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1119
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1120
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
.L1126:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,16
	.align	3
.L1125:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1125
	sh	$3,-2($8)

	daddiu	$4,$4,16
	bne	$10,$4,.L1126
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
.L1132:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,16
	.align	3
.L1131:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$10
	sra	$2,$2,$7
	bne	$9,$3,.L1131
	sh	$2,-2($8)

	daddiu	$4,$4,16
	bne	$11,$4,.L1132
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
.L1138:
	move	$3,$4
	daddiu	$8,$5,16
	.align	3
.L1137:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1137
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1138
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
.L1144:
	move	$3,$4
	daddiu	$8,$5,16
	.align	3
.L1143:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1143
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1144
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
.L1150:
	daddiu	$7,$4,8
	move	$2,$5
	.align	3
.L1149:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1149
	sb	$3,-1($4)

	bne	$4,$8,.L1150
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
.L1156:
	move	$3,$4
	daddiu	$7,$4,16
	.align	3
.L1155:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1155
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1156
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
.L1162:
	move	$3,$4
	daddiu	$7,$4,8
	.align	3
.L1161:
	lbu	$2,0($3)
	daddiu	$3,$3,1
	madd	$2,$2
	bne	$7,$3,.L1161
	addu	$6,$2,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1162
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
.L1168:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L1167:
	daddiu	$8,$8,2
	lh	$2,0($3)
	mtlo	$9
	lh	$10,-2($8)
	daddiu	$3,$3,2
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1167
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1168
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
.L1174:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L1173:
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
	bne	$13,$3,.L1173
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1174
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
.L1180:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L1179:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1179
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1180
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
.L1186:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,32
	.align	3
.L1185:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1185
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1186
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
.L1192:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L1191:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1191
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1192
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
.L1198:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,32
	.align	3
.L1197:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1197
	sh	$3,-2($8)

	daddiu	$4,$4,32
	bne	$10,$4,.L1198
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
.L1204:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,32
	.align	3
.L1203:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$10
	sra	$2,$2,$7
	bne	$9,$3,.L1203
	sh	$2,-2($8)

	daddiu	$4,$4,32
	bne	$11,$4,.L1204
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
.L1210:
	move	$3,$4
	daddiu	$8,$5,32
	.align	3
.L1209:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1209
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1210
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
.L1216:
	move	$3,$4
	daddiu	$8,$5,32
	.align	3
.L1215:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1215
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1216
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
.L1222:
	daddiu	$7,$4,16
	move	$2,$5
	.align	3
.L1221:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1221
	sb	$3,-1($4)

	bne	$4,$8,.L1222
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
.L1228:
	move	$3,$4
	daddiu	$7,$4,32
	.align	3
.L1227:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1227
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1228
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
.L1234:
	move	$3,$4
	daddiu	$7,$4,16
	.align	3
.L1233:
	lbu	$2,0($3)
	daddiu	$3,$3,1
	madd	$2,$2
	bne	$7,$3,.L1233
	addu	$6,$2,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1234
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
.L1240:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L1239:
	daddiu	$8,$8,2
	lh	$2,0($3)
	mtlo	$9
	lh	$10,-2($8)
	daddiu	$3,$3,2
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1239
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1240
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
.L1246:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L1245:
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
	bne	$13,$3,.L1245
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1246
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
.L1252:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L1251:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1251
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1252
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
.L1258:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,64
	.align	3
.L1257:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1257
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1258
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
.L1264:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L1263:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1263
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1264
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
.L1270:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,64
	.align	3
.L1269:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1269
	sh	$3,-2($8)

	daddiu	$4,$4,64
	bne	$10,$4,.L1270
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
.L1276:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,64
	.align	3
.L1275:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$10
	sra	$2,$2,$7
	bne	$9,$3,.L1275
	sh	$2,-2($8)

	daddiu	$4,$4,64
	bne	$11,$4,.L1276
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
.L1282:
	move	$3,$4
	daddiu	$8,$5,64
	.align	3
.L1281:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1281
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1282
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
.L1288:
	move	$3,$4
	daddiu	$8,$5,64
	.align	3
.L1287:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1287
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1288
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
.L1294:
	daddiu	$7,$4,32
	move	$2,$5
	.align	3
.L1293:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1293
	sb	$3,-1($4)

	bne	$4,$8,.L1294
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
.L1300:
	move	$3,$4
	daddiu	$7,$4,64
	.align	3
.L1299:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1299
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1300
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
.L1306:
	move	$3,$4
	daddiu	$7,$4,32
	.align	3
.L1305:
	lbu	$2,0($3)
	daddiu	$3,$3,1
	madd	$2,$2
	bne	$7,$3,.L1305
	addu	$6,$2,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1306
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
.L1312:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L1311:
	daddiu	$8,$8,2
	lh	$2,0($3)
	mtlo	$9
	lh	$10,-2($8)
	daddiu	$3,$3,2
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1311
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1312
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
.L1318:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L1317:
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
	bne	$13,$3,.L1317
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1318
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
.L1324:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,128
	.align	3
.L1323:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1323
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1324
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
.L1330:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,128
	.align	3
.L1329:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1329
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1330
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
.L1336:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,128
	.align	3
.L1335:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1335
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1336
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
.L1342:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,128
	.align	3
.L1341:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1341
	sh	$3,-2($8)

	daddiu	$4,$4,128
	bne	$10,$4,.L1342
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
.L1348:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,128
	.align	3
.L1347:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$10
	sra	$2,$2,$7
	bne	$9,$3,.L1347
	sh	$2,-2($8)

	daddiu	$4,$4,128
	bne	$11,$4,.L1348
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
.L1354:
	move	$3,$4
	daddiu	$8,$5,128
	.align	3
.L1353:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1353
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1354
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
.L1360:
	move	$3,$4
	daddiu	$8,$5,128
	.align	3
.L1359:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1359
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1360
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
.L1366:
	daddiu	$7,$4,64
	move	$2,$5
	.align	3
.L1365:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1365
	sb	$3,-1($4)

	bne	$4,$8,.L1366
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
.L1372:
	move	$3,$4
	daddiu	$7,$4,128
	.align	3
.L1371:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1371
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1372
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
.L1378:
	move	$3,$4
	daddiu	$7,$4,64
	.align	3
.L1377:
	lbu	$2,0($3)
	daddiu	$3,$3,1
	madd	$2,$2
	bne	$7,$3,.L1377
	addu	$6,$2,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1378
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
.L1384:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,128
	.align	3
.L1383:
	daddiu	$8,$8,2
	lh	$2,0($3)
	mtlo	$9
	lh	$10,-2($8)
	daddiu	$3,$3,2
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1383
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1384
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
.L1390:
	daddiu	$3,$4,128
	move	$2,$4
	.align	3
.L1389:
	sh	$6,0($2)
	daddiu	$2,$2,2
	bne	$2,$3,.L1389
	nop

	addiu	$7,$7,-1
	bne	$7,$0,.L1390
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
.L1396:
	move	$2,$4
	move	$9,$5
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L1395:
	daddiu	$9,$9,1
	lbu	$3,0($2)
	daddiu	$8,$8,2
	lbu	$10,-1($9)
	daddiu	$2,$2,1
	subu	$3,$3,$10
	bne	$11,$2,.L1395
	sh	$3,-2($8)

	addiu	$12,$12,-1
	daddu	$4,$4,$7
	daddu	$6,$6,$13
	bne	$12,$0,.L1396
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
.L1401:
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
	bne	$10,$12,.L1402
	daddu	$6,$6,$9

	jr	$31
	nop

	.align	3
.L1402:
	b	.L1401
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
.L1409:
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
	bne	$3,$0,.L1409
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
.L1413:
	lbu	$3,0($6)
	addiu	$2,$2,-1
	sb	$3,0($4)
	lbu	$3,1($6)
	daddu	$6,$6,$7
	sb	$3,1($4)
	bne	$2,$0,.L1413
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
.L1417:
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
	bne	$10,$11,.L1418
	daddu	$6,$6,$9

	jr	$31
	nop

	.align	3
.L1418:
	b	.L1417
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
.L1423:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$9,$2,.L1423
	sb	$8,-1($3)

	daddiu	$2,$7,4
	daddu	$5,$4,$5
	daddu	$7,$6,$7
	daddu	$6,$6,$2
.L1424:
	lbu	$2,0($7)
	daddiu	$5,$5,1
	daddiu	$7,$7,1
	bne	$6,$7,.L1424
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
.L1430:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L1429:
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
	bne	$14,$3,.L1429
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1430
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
.L1436:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L1435:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1435
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1436
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
.L1442:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,12
.L1441:
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
	bne	$14,$3,.L1441
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1442
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
.L1448:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,6
	.align	3
.L1447:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1447
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1448
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
.L1454:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L1453:
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
	bne	$14,$3,.L1453
	sb	$2,-1($10)

	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$24,.L1455
	daddu	$6,$6,$9

	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1455:
	b	.L1454
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
.L1459:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$9,$2,.L1459
	sb	$8,-1($3)

	daddiu	$2,$7,8
	daddu	$5,$4,$5
	daddu	$7,$6,$7
	daddu	$6,$6,$2
	.align	3
.L1460:
	lbu	$2,0($7)
	daddiu	$5,$5,1
	daddiu	$7,$7,1
	bne	$6,$7,.L1460
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
.L1465:
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
	bne	$3,$0,.L1465
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
.L1469:
	lbu	$3,0($6)
	addiu	$2,$2,-1
	sb	$3,0($4)
	lbu	$3,1($6)
	daddu	$6,$6,$7
	sb	$3,1($4)
	bne	$2,$0,.L1469
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
.L1479:
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
	bne	$11,$12,.L1480
	daddu	$4,$4,$5

	jr	$31
	nop

	.align	3
.L1480:
	b	.L1479
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
.L1490:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L1489:
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
	bne	$14,$3,.L1489
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1490
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
.L1496:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L1495:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1495
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1496
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
.L1502:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,12
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
.L1508:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,6
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
.L1513:
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
	bne	$3,$0,.L1513
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
.L1517:
	lbu	$3,0($6)
	addiu	$2,$2,-1
	sb	$3,0($4)
	lbu	$3,1($6)
	daddu	$6,$6,$7
	sb	$3,1($4)
	bne	$2,$0,.L1517
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
.L1522:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L1521:
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
	bne	$14,$3,.L1521
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1522
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
.L1528:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L1527:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1527
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1528
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
.L1534:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,24
	.align	3
.L1533:
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
	bne	$14,$3,.L1533
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1534
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
.L1540:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,12
	.align	3
.L1539:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1539
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1540
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
.L1545:
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
	bne	$10,$0,.L1545
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
.L1550:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L1549:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1549
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1550
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
.L1556:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L1555:
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
	bne	$14,$3,.L1555
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1556
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
.L1562:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L1561:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1561
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1562
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
.L1568:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,48
	.align	3
.L1567:
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
	bne	$14,$3,.L1567
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1568
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
.L1574:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,24
	.align	3
.L1573:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1573
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1574
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
.L1580:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L1579:
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
	bne	$14,$3,.L1579
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1580
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
.L1586:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L1585:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1585
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1586
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
.L1591:
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
	bne	$9,$0,.L1591
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
.L1595:
	lhu	$3,0($6)
	addiu	$2,$2,-1
	sb	$3,0($4)
	lhu	$3,2($6)
	daddu	$6,$6,$7
	sb	$3,1($4)
	bne	$2,$0,.L1595
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
.L1599:
	lbu	$3,0($6)
	addiu	$2,$2,-1
	sh	$3,0($4)
	lbu	$3,1($6)
	daddu	$6,$6,$7
	sh	$3,2($4)
	bne	$2,$0,.L1599
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
.L1603:
	lh	$3,0($6)
	addiu	$2,$2,-1
	sh	$3,0($4)
	lh	$3,2($6)
	daddu	$6,$6,$7
	sh	$3,2($4)
	bne	$2,$0,.L1603
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
.L1607:
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
	bne	$3,$0,.L1607
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
.L1611:
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
	bne	$3,$0,.L1611
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
.L1616:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,4
.L1615:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1615
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1616
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
.L1622:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1621:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1621
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1622
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
.L1628:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,8
.L1627:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1627
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1628
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
.L1634:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1633:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1633
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1634
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
.L1640:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,4
.L1639:
	daddiu	$11,$11,1
	lbu	$3,0($2)
	daddiu	$10,$10,2
	lbu	$12,-1($11)
	daddiu	$2,$2,1
	subu	$3,$3,$12
	bne	$13,$2,.L1639
	sh	$3,-2($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$14,$0,.L1640
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
.L1646:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,4
.L1645:
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
	bne	$13,$3,.L1645
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1646
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
.L1652:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L1651:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1651
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1652
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
.L1658:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L1657:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1657
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1658
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
.L1664:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,16
	.align	3
.L1663:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1663
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1664
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
.L1670:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L1669:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1669
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1670
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
.L1676:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L1675:
	daddiu	$11,$11,1
	lbu	$3,0($2)
	daddiu	$10,$10,2
	lbu	$12,-1($11)
	daddiu	$2,$2,1
	subu	$3,$3,$12
	bne	$13,$2,.L1675
	sh	$3,-2($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$14,$0,.L1676
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
.L1682:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L1681:
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
	bne	$13,$3,.L1681
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1682
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
.L1688:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L1687:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1687
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1688
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
.L1694:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L1693:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1693
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1694
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
.L1700:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,32
	.align	3
.L1699:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1699
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1700
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
.L1706:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L1705:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1705
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1706
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
.L1712:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L1711:
	daddiu	$11,$11,1
	lbu	$3,0($2)
	daddiu	$10,$10,2
	lbu	$12,-1($11)
	daddiu	$2,$2,1
	subu	$3,$3,$12
	bne	$13,$2,.L1711
	sh	$3,-2($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$14,$0,.L1712
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
.L1718:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L1717:
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
	bne	$13,$3,.L1717
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1718
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
.L1724:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L1723:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1723
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1724
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
.L1730:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L1729:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1729
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1730
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
.L1736:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,64
	.align	3
.L1735:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1735
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1736
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
.L1742:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L1741:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1741
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1742
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
.L1748:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L1747:
	daddiu	$11,$11,1
	lbu	$3,0($2)
	daddiu	$10,$10,2
	lbu	$12,-1($11)
	daddiu	$2,$2,1
	subu	$3,$3,$12
	bne	$13,$2,.L1747
	sh	$3,-2($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$14,$0,.L1748
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
.L1754:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L1753:
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
	bne	$13,$3,.L1753
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1754
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
	.ascii	"weight_pp test fail\000"
	.align	3
.LC5:
	.ascii	"fail at %d %d\012\000"
	.align	3
.LC6:
	.ascii	"source is %d w0 is %d round is %d shift is %d offset is "
	.ascii	"%d\012\000"
	.align	3
.LC7:
	.ascii	"right value %d\012\000"
	.align	3
.LC8:
	.ascii	"wrong value %d\012\000"
	.align	3
.LC9:
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
	blez	$8,.L1759
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
.L1762:
	blez	$14,.L1760
	nop

	move	$2,$10
	move	$3,$11
	daddu	$12,$13,$10
	.align	3
.L1761:
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
	bne	$2,$12,.L1761
	st.d	$w0,-16($3)

.L1760:
	addiu	$9,$9,1
	daddu	$10,$10,$6
	bne	$8,$9,.L1762
	daddu	$11,$11,$6

	move	$22,$0
	li	$10,255			# 0xff
.L1769:
	blez	$7,.L1763
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
	bne	$3,$2,.L1777
	daddiu	$3,$4,1

	daddiu	$8,$5,1
	b	.L1766
	move	$fp,$0

	.align	3
.L1768:
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
	bne	$11,$2,.L1764
	daddiu	$3,$3,1

.L1766:
	addiu	$fp,$fp,1
	bne	$7,$fp,.L1768
	move	$21,$8

.L1763:
	addiu	$22,$22,1
	daddu	$4,$4,$6
	bne	$9,$22,.L1769
	daddu	$5,$5,$6

.L1759:
	ld	$4,%got_page(.LC9)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC9)

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

.L1777:
	move	$21,$5
	move	$23,$4
	move	$fp,$0
.L1764:
	ld	$4,%got_page(.LC4)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC4)

	ld	$4,%got_page(.LC5)($28)
	move	$6,$fp
	ld	$25,%call16(printf)($28)
	move	$5,$22
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC5)

	ld	$4,%got_page(.LC6)($28)
	move	$9,$19
	ld	$25,%call16(printf)($28)
	move	$8,$20
	move	$7,$18
	lbu	$5,0($23)
	move	$6,$17
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC6)

	ld	$4,%got_page(.LC7)($28)
	move	$5,$16
	ld	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC7)

	ld	$4,%got_page(.LC8)($28)
	lbu	$5,0($21)
	ld	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC8)

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
.LC10:
	.ascii	"getResidual_4x4 test fail\000"
	.align	3
.LC11:
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
.L1782:
	move	$2,$6
	move	$9,$4
	move	$8,$5
	daddiu	$12,$6,8
.L1781:
	lbu	$3,0($9)
	daddiu	$2,$2,2
	daddiu	$9,$9,1
	lbu	$11,0($8)
	lh	$10,-2($2)
	subu	$3,$3,$11
	bne	$10,$3,.L1786
	daddiu	$8,$8,1

	bne	$12,$2,.L1781
	nop

	addiu	$13,$13,-1
	daddu	$4,$4,$7
	daddu	$6,$6,$14
	bne	$13,$0,.L1782
	daddu	$5,$5,$7

	ld	$4,%got_page(.LC11)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC11)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1786:
	ld	$4,%got_page(.LC10)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC10)

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
.LC12:
	.ascii	"sub_ps_4x4 test fail\000"
	.align	3
.LC13:
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
.L1791:
	move	$2,$4
	move	$11,$6
	move	$10,$7
	daddiu	$14,$4,8
.L1790:
	lbu	$3,0($11)
	daddiu	$2,$2,2
	daddiu	$11,$11,1
	lbu	$13,0($10)
	lh	$12,-2($2)
	subu	$3,$3,$13
	bne	$12,$3,.L1795
	daddiu	$10,$10,1

	bne	$14,$2,.L1790
	nop

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1791
	daddu	$4,$4,$5

	ld	$4,%got_page(.LC13)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC13)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1795:
	ld	$4,%got_page(.LC12)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC12)

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
.LC14:
	.ascii	"getResidual_8x8 test fail\000"
	.align	3
.LC15:
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
.L1800:
	move	$2,$6
	move	$9,$4
	move	$8,$5
	daddiu	$13,$6,16
.L1799:
	lbu	$3,0($9)
	daddiu	$2,$2,2
	daddiu	$9,$9,1
	lbu	$11,0($8)
	lh	$10,-2($2)
	subu	$3,$3,$11
	bne	$10,$3,.L1804
	daddiu	$8,$8,1

	bne	$13,$2,.L1799
	nop

	addiu	$14,$14,-1
	daddu	$4,$4,$7
	daddu	$6,$6,$12
	bne	$14,$0,.L1800
	daddu	$5,$5,$7

	ld	$4,%got_page(.LC15)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC15)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1804:
	ld	$4,%got_page(.LC14)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC14)

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
.LC16:
	.ascii	"sub_ps_8x8 test fail\000"
	.align	3
.LC17:
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
.L1809:
	move	$2,$4
	move	$10,$6
	move	$5,$7
	daddiu	$13,$4,16
.L1808:
	lbu	$3,0($10)
	daddiu	$2,$2,2
	daddiu	$10,$10,1
	lbu	$12,0($5)
	lh	$11,-2($2)
	subu	$3,$3,$12
	bne	$11,$3,.L1813
	daddiu	$5,$5,1

	bne	$13,$2,.L1808
	nop

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1809
	daddu	$4,$4,$14

	ld	$4,%got_page(.LC17)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC17)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1813:
	ld	$4,%got_page(.LC16)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC16)

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
.LC18:
	.ascii	"getResidual_16x16 test fail\000"
	.align	3
.LC19:
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
.L1815:
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
	bne	$31,$0,.L1815
	daddu	$8,$20,$8

	li	$13,16			# 0x10
.L1819:
	move	$2,$6
	move	$9,$4
	move	$8,$5
	b	.L1818
	daddiu	$12,$6,32

	.align	3
.L1816:
	beq	$12,$2,.L1824
	nop

.L1818:
	lbu	$3,0($9)
	daddiu	$2,$2,2
	daddiu	$9,$9,1
	lbu	$11,0($8)
	lh	$10,-2($2)
	subu	$3,$3,$11
	beq	$10,$3,.L1816
	daddiu	$8,$8,1

	ld	$4,%got_page(.LC18)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC18)

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
.L1824:
	addiu	$13,$13,-1
	daddu	$4,$4,$7
	daddu	$6,$6,$24
	bne	$13,$0,.L1819
	daddu	$5,$5,$7

	ld	$4,%got_page(.LC19)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC19)

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
.LC20:
	.ascii	"sub_ps_16x16 test fail\000"
	.align	3
.LC21:
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
.L1826:
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
	bne	$25,$0,.L1826
	daddu	$3,$3,$23

	li	$13,16			# 0x10
.L1830:
	move	$2,$4
	move	$9,$6
	move	$5,$7
	b	.L1829
	daddiu	$12,$4,32

	.align	3
.L1827:
	beq	$12,$2,.L1835
	nop

.L1829:
	lbu	$3,0($9)
	daddiu	$2,$2,2
	daddiu	$9,$9,1
	lbu	$11,0($5)
	lh	$10,-2($2)
	subu	$3,$3,$11
	beq	$10,$3,.L1827
	daddiu	$5,$5,1

	ld	$4,%got_page(.LC20)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC20)

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
.L1835:
	ld	$2,8($sp)
	addiu	$13,$13,-1
	daddu	$6,$6,$8
	daddu	$4,$4,$20
	bne	$13,$0,.L1830
	daddu	$7,$7,$2

	ld	$4,%got_page(.LC21)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC21)

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
.LC22:
	.ascii	"getResidual_32x32 test fail\000"
	.align	3
.LC23:
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
.L1837:
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
	bne	$31,$0,.L1837
	daddu	$13,$13,$20

	li	$13,32			# 0x20
.L1841:
	move	$2,$6
	move	$9,$4
	move	$8,$5
	b	.L1840
	daddiu	$12,$6,64

	.align	3
.L1838:
	beq	$12,$2,.L1846
	nop

.L1840:
	lbu	$3,0($9)
	daddiu	$2,$2,2
	daddiu	$9,$9,1
	lbu	$11,0($8)
	lh	$10,-2($2)
	subu	$3,$3,$11
	beq	$10,$3,.L1838
	daddiu	$8,$8,1

	ld	$4,%got_page(.LC22)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC22)

	ld	$31,56($sp)
.L1847:
	ld	$28,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L1846:
	addiu	$13,$13,-1
	daddu	$4,$4,$7
	daddu	$6,$6,$16
	bne	$13,$0,.L1841
	daddu	$5,$5,$7

	ld	$4,%got_page(.LC23)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC23)

	b	.L1847
	ld	$31,56($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl
	.size	_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl, .-_ZN12_GLOBAL__N_117getResidual_32x32EPKhS1_Psl
	.section	.rodata.str1.8
	.align	3
.LC24:
	.ascii	"sub_ps_64x64 test fail\000"
	.align	3
.LC25:
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
.L1849:
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
	bne	$11,$0,.L1849
	daddu	$2,$2,$5

	li	$15,64			# 0x40
.L1853:
	move	$2,$4
	move	$11,$6
	move	$10,$7
	b	.L1852
	daddiu	$14,$4,128

	.align	3
.L1850:
	beq	$14,$2,.L1858
	nop

.L1852:
	lbu	$3,0($11)
	daddiu	$2,$2,2
	daddiu	$11,$11,1
	lbu	$13,0($10)
	lh	$12,-2($2)
	subu	$3,$3,$13
	beq	$12,$3,.L1850
	daddiu	$10,$10,1

	ld	$4,%got_page(.LC24)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC24)

	ld	$31,8($sp)
.L1859:
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

.L1858:
	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1853
	daddu	$4,$4,$5

	ld	$4,%got_page(.LC25)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC25)

	b	.L1859
	ld	$31,8($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll
	.size	_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll, .-_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll
	.section	.rodata.str1.8
	.align	3
.LC26:
	.ascii	"sub_ps_32x32 test fail\000"
	.align	3
.LC27:
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
.L1861:
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
	bne	$31,$0,.L1861
	daddu	$14,$14,$16

	li	$13,32			# 0x20
.L1865:
	move	$2,$4
	ld	$6,0($sp)
	move	$5,$7
	b	.L1864
	daddiu	$12,$4,64

	.align	3
.L1862:
	beq	$12,$2,.L1870
	nop

.L1864:
	lbu	$3,0($6)
	daddiu	$2,$2,2
	daddiu	$6,$6,1
	lbu	$11,0($5)
	lh	$10,-2($2)
	subu	$3,$3,$11
	beq	$10,$3,.L1862
	daddiu	$5,$5,1

	ld	$4,%got_page(.LC26)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC26)

	ld	$31,104($sp)
.L1871:
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
.L1870:
	ld	$2,0($sp)
	addiu	$13,$13,-1
	daddu	$7,$7,$9
	daddu	$2,$2,$8
	sd	$2,0($sp)
	ld	$2,8($sp)
	bne	$13,$0,.L1865
	daddu	$4,$4,$2

	ld	$4,%got_page(.LC27)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC27)

	b	.L1871
	ld	$31,104($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll
	.size	_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll, .-_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll
	.section	.rodata.str1.8
	.align	3
.LC28:
	.ascii	"sa8d_8x8_internal test success\000"
	.align	3
.LC29:
	.ascii	"sa8d_8x8_internal test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117sa8d_8x8_internalEPKhlS1_l
	.type	_ZN12_GLOBAL__N_117sa8d_8x8_internalEPKhlS1_l, @function
_ZN12_GLOBAL__N_117sa8d_8x8_internalEPKhlS1_l:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$10,$4,$5
	daddu	$9,$6,$7
	vbld	$w5,0($6)
	hadd_u.h	$w15,$w5,$w5
	daddiu	$sp,$sp,-32
	daddu	$11,$10,$5
	hsub_u.h	$w5,$w5,$w5
	daddu	$8,$9,$7
	sd	$28,16($sp)
	daddu	$14,$11,$5
	daddu	$13,$8,$7
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117sa8d_8x8_internalEPKhlS1_l)))
	sd	$16,8($sp)
	sd	$31,24($sp)
	daddu	$15,$14,$5
	vbld	$w8,0($10)
	daddu	$28,$28,$25
	daddu	$10,$13,$7
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117sa8d_8x8_internalEPKhlS1_l)))
	vbld	$w4,0($9)
	vbld	$w7,0($11)
	daddu	$12,$15,$5
	daddu	$9,$10,$7
	vbld	$w2,0($8)
	ld	$25,%got_page(_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l)($28)
	daddu	$11,$12,$5
	daddu	$8,$9,$7
	vbld	$w9,0($4)
	vbld	$w6,0($14)
	daddu	$2,$8,$7
	daddu	$3,$11,$5
	vbld	$w1,0($13)
	hadd_u.h	$w10,$w7,$w7
	hadd_u.h	$w14,$w4,$w4
	hadd_u.h	$w13,$w2,$w2
	hadd_u.h	$w12,$w1,$w1
	hadd_u.h	$w11,$w9,$w9
	hadd_u.h	$w3,$w8,$w8
	hadd_u.h	$w0,$w6,$w6
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w8,$w8,$w8
	insve.d	$w11[1],$w9[0]
	hsub_u.h	$w7,$w7,$w7
	vbld	$w9,0($15)
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w2,$w2,$w2
	hsub_u.h	$w1,$w1,$w1
	insve.d	$w3[1],$w8[0]
	insve.d	$w0[1],$w6[0]
	move.v	$w8,$w3
	move.v	$w6,$w0
	move.v	$w3,$w10
	move.v	$w0,$w15
	insve.d	$w3[1],$w7[0]
	insve.d	$w0[1],$w5[0]
	move.v	$w7,$w3
	subv.h	$w5,$w11,$w0
	move.v	$w3,$w14
	move.v	$w0,$w13
	insve.d	$w3[1],$w4[0]
	insve.d	$w0[1],$w2[0]
	subv.h	$w3,$w8,$w3
	subv.h	$w4,$w7,$w0
	addv.h	$w8,$w3,$w5
	subv.h	$w2,$w3,$w5
	vbld	$w7,0($11)
	vbld	$w5,0($9)
	hadd_u.h	$w14,$w7,$w7
	hadd_u.h	$w18,$w5,$w5
	move.v	$w0,$w12
	hadd_u.h	$w15,$w9,$w9
	insve.d	$w0[1],$w1[0]
	hsub_u.h	$w9,$w9,$w9
	subv.h	$w0,$w6,$w0
	vbld	$w1,0($3)
	addv.h	$w10,$w0,$w4
	vbld	$w6,0($10)
	subv.h	$w0,$w0,$w4
	addv.h	$w12,$w10,$w8
	subv.h	$w3,$w0,$w2
	addv.h	$w11,$w0,$w2
	subv.h	$w10,$w10,$w8
	vbld	$w4,0($8)
	vbld	$w8,0($12)
	vbld	$w0,0($2)
	hadd_u.h	$w19,$w6,$w6
	hadd_u.h	$w17,$w4,$w4
	insve.d	$w15[1],$w9[0]
	hadd_u.h	$w13,$w8,$w8
	hadd_u.h	$w2,$w1,$w1
	hadd_u.h	$w16,$w0,$w0
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w1,$w1,$w1
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w0,$w0,$w0
	insve.d	$w13[1],$w8[0]
	insve.d	$w2[1],$w1[0]
	move.v	$w8,$w13
	move.v	$w1,$w2
	move.v	$w13,$w14
	move.v	$w2,$w19
	insve.d	$w13[1],$w7[0]
	insve.d	$w2[1],$w6[0]
	insve.d	$w16[1],$w0[0]
	move.v	$w6,$w2
	subv.h	$w0,$w1,$w16
	subv.h	$w6,$w15,$w6
	move.v	$w2,$w18
	insve.d	$w2[1],$w5[0]
	move.v	$w5,$w17
	subv.h	$w2,$w8,$w2
	insve.d	$w5[1],$w4[0]
	addv.h	$w8,$w2,$w6
	subv.h	$w5,$w13,$w5
	subv.h	$w2,$w2,$w6
	addv.h	$w4,$w0,$w5
	subv.h	$w0,$w0,$w5
	addv.h	$w7,$w4,$w8
	addv.h	$w6,$w0,$w2
	subv.h	$w4,$w4,$w8
	addv.h	$w1,$w7,$w12
	addv.h	$w5,$w6,$w11
	subv.h	$w0,$w0,$w2
	subv.h	$w12,$w7,$w12
	addv.h	$w2,$w4,$w10
	addv.h	$w8,$w0,$w3
	pckod.h	$w7,$w12,$w1
	subv.h	$w10,$w4,$w10
	subv.h	$w0,$w0,$w3
	pckev.h	$w12,$w12,$w1
	pckod.h	$w4,$w0,$w8
	asub_s.h	$w13,$w7,$w12
	pckev.h	$w0,$w0,$w8
	subv.h	$w11,$w6,$w11
	asub_s.h	$w8,$w4,$w0
	pckod.h	$w6,$w11,$w5
	addv.h	$w4,$w4,$w0
	pckev.h	$w11,$w11,$w5
	addv.h	$w12,$w7,$w12
	pckod.h	$w5,$w10,$w2
	vabs.h	$w12,$w12
	pckev.h	$w10,$w10,$w2
	ilvod.h	$w1,$w12,$w13
	asub_s.h	$w2,$w6,$w11
	asub_s.h	$w9,$w5,$w10
	addv.h	$w11,$w6,$w11
	addv.h	$w10,$w5,$w10
	vabs.h	$w11,$w11
	vabs.h	$w10,$w10
	ilvod.h	$w0,$w11,$w2
	vabs.h	$w3,$w4
	ilvev.h	$w11,$w11,$w2
	ilvod.h	$w4,$w3,$w8
	ilvod.h	$w2,$w10,$w9
	ilvev.h	$w12,$w12,$w13
	ilvev.h	$w10,$w10,$w9
	ilvev.h	$w3,$w3,$w8
	max_s.h	$w1,$w1,$w12
	max_s.h	$w0,$w0,$w11
	max_s.h	$w2,$w2,$w10
	max_s.h	$w3,$w4,$w3
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w0,$w0,$w0
	hadd_s.w	$w2,$w2,$w2
	addv.w	$w0,$w1,$w0
	addv.w	$w2,$w2,$w3
	addv.w	$w0,$w0,$w2
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
	addiu	$2,$2,2
	dsra	$16,$16,1
	sra	$2,$2,2
	beq	$2,$16,.L1876
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC29)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC29)

	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L1876:
	ld	$4,%got_page(.LC28)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC28)

	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117sa8d_8x8_internalEPKhlS1_l
	.size	_ZN12_GLOBAL__N_117sa8d_8x8_internalEPKhlS1_l, .-_ZN12_GLOBAL__N_117sa8d_8x8_internalEPKhlS1_l
	.section	.rodata.str1.8
	.align	3
.LC30:
	.ascii	"sa8d_16x16 test success\000"
	.align	3
.LC31:
	.ascii	"sa8d_16x16 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
	.type	_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l, @function
_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,3
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)))
	daddu	$28,$28,$25
	sd	$18,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)))
	sd	$fp,112($sp)
	move	$fp,$0
	ld	$18,%got_page(_ZN12_GLOBAL__N_117sa8d_8x8_internalEPKhlS1_l)($28)
	sd	$23,96($sp)
	move	$23,$4
	sd	$22,88($sp)
	move	$22,$6
	sd	$21,80($sp)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_117sa8d_8x8_internalEPKhlS1_l)
	move	$21,$4
	sd	$20,72($sp)
	dsll	$20,$7,3
	sd	$19,64($sp)
	move	$19,$6
	sd	$17,48($sp)
	move	$17,$7
	sd	$16,40($sp)
	move	$16,$5
	sd	$2,0($sp)
	li	$2,2			# 0x2
	sd	$31,120($sp)
	sd	$2,8($sp)
.L1878:
	move	$6,$19
	move	$4,$23
	move	$7,$17
	move	$25,$18
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117sa8d_8x8_internalEPKhlS1_l
1:	jalr	$25
	move	$5,$16

	daddiu	$4,$23,8
	daddiu	$6,$19,8
	move	$7,$17
	move	$5,$16
	move	$25,$18
	addu	$fp,$2,$fp
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117sa8d_8x8_internalEPKhlS1_l
1:	jalr	$25
	daddu	$19,$19,$20

	ld	$3,0($sp)
	li	$4,1			# 0x1
	daddu	$23,$23,$3
	addu	$3,$2,$fp
	ld	$2,8($sp)
	move	$fp,$3
	bne	$2,$4,.L1881
	sw	$3,16($sp)

	ld	$23,%got_page(_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l)($28)
	move	$5,$16
	move	$7,$17
	move	$6,$22
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l)
	move	$25,$23
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l
1:	jalr	$25
	move	$4,$21

	move	$5,$16
	move	$7,$17
	daddiu	$6,$22,8
	daddiu	$4,$21,8
	move	$25,$23
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l
1:	jalr	$25
	move	$18,$2

	ld	$19,0($sp)
	addiu	$18,$18,2
	addiu	$2,$2,2
	move	$5,$16
	move	$7,$17
	sra	$2,$2,2
	daddu	$6,$22,$20
	daddu	$4,$21,$19
	move	$25,$23
	sra	$18,$18,2
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l
1:	jalr	$25
	addu	$18,$18,$2

	daddiu	$6,$20,8
	addiu	$2,$2,2
	daddiu	$4,$19,8
	sra	$2,$2,2
	move	$5,$16
	move	$7,$17
	daddu	$6,$22,$6
	daddu	$4,$21,$4
	move	$25,$23
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_19_sa8d_8x8EPKhlS1_l
1:	jalr	$25
	addu	$16,$2,$18

	addiu	$18,$2,2
	sra	$18,$18,2
	addu	$18,$18,$16
	beq	$18,$fp,.L1883
	lw	$3,16($sp)

	ld	$4,%got_page(.LC31)($28)
	ld	$25,%call16(puts)($28)
	sw	$3,0($sp)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC31)

	ld	$4,%got_page(.LC7)($28)
	move	$5,$18
	ld	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC7)

	lw	$3,0($sp)
	ld	$4,%got_page(.LC8)($28)
	ld	$25,%call16(printf)($28)
	move	$5,$3
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC8)

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

	.align	3
.L1881:
	li	$2,1			# 0x1
	b	.L1878
	sd	$2,8($sp)

	.align	3
.L1883:
	ld	$4,%got_page(.LC30)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC30)

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
.L1885:
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
	bne	$fp,$0,.L1885
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
.LC32:
	.ascii	"sa8d_8x8 test success\000"
	.align	3
.LC33:
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
	beq	$17,$16,.L1894
	move	$18,$16

	ld	$4,%got_page(.LC33)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC33)

	ld	$4,%got_page(.LC7)($28)
	move	$5,$17
	ld	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC7)

	ld	$4,%got_page(.LC8)($28)
	move	$5,$16
	ld	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC8)

	ld	$31,40($sp)
.L1895:
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
.L1894:
	ld	$4,%got_page(.LC32)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC32)

	b	.L1895
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
.LC34:
	.ascii	"satd8_16x16 test success\000"
	.align	3
.LC35:
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
.L1899:
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
	bne	$10,$0,.L1899
	daddu	$2,$13,$11

	ld	$23,%got_page(_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l)($28)
	move	$18,$4
	move	$16,$6
	li	$22,4			# 0x4
	move	$19,$0
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l)
.L1900:
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
	bne	$22,$0,.L1900
	daddu	$16,$16,$8

	beq	$fp,$19,.L1906
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC35)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC35)

	ld	$31,104($sp)
.L1907:
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
.L1906:
	ld	$4,%got_page(.LC34)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC34)

	b	.L1907
	ld	$31,104($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l
	.size	_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l, .-_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l
	.section	.rodata.str1.8
	.align	3
.LC36:
	.ascii	"satd_8x4 test success\000"
	.align	3
.LC37:
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
.L1909:
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
	bne	$24,$12,.L1909
	sw	$2,-4($12)

	li	$9,65536			# 0x10000
	daddiu	$11,$8,16
	move	$10,$0
	addiu	$9,$9,1
.L1910:
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
	bne	$11,$8,.L1910
	addu	$10,$2,$10

	srl	$2,$10,16
	andi	$10,$10,0xffff
	addu	$10,$2,$10
	srl	$10,$10,1
	beq	$10,$16,.L1917
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC37)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC37)

	ld	$31,104($sp)
	move	$2,$16
	ld	$28,96($sp)
	ld	$18,88($sp)
	ld	$17,80($sp)
	ld	$16,72($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.align	3
.L1917:
	ld	$4,%got_page(.LC36)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC36)

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
.L1919:
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
	bne	$fp,$0,.L1919
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
.L1923:
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
	bne	$16,$0,.L1923
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
.L1928:
	daddiu	$19,$20,32
	move	$22,$21
	move	$fp,$20
.L1927:
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
	bne	$fp,$19,.L1927
	move	$23,$2

	ld	$3,8($sp)
	li	$4,1			# 0x1
	daddu	$20,$20,$3
	ld	$3,16($sp)
	daddu	$21,$21,$3
	ld	$3,0($sp)
	bne	$3,$4,.L1929
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
.L1929:
	li	$2,1			# 0x1
	b	.L1928
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
.L1935:
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
	bne	$fp,$0,.L1935
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
.L1939:
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
	bne	$16,$0,.L1939
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
.L1943:
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
	bne	$20,$3,.L1944
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
.L1944:
	b	.L1943
	li	$20,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l
	.section	.rodata.str1.8
	.align	3
.LC38:
	.ascii	"satd8_8x8 test success\000"
	.align	3
.LC39:
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
	beq	$17,$16,.L1950
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC39)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC39)

	ld	$4,%got_page(.LC7)($28)
	move	$5,$17
	ld	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC7)

	ld	$4,%got_page(.LC8)($28)
	move	$5,$16
	ld	$25,%call16(printf)($28)
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC8)

	ld	$31,72($sp)
.L1951:
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
.L1950:
	ld	$4,%got_page(.LC38)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC38)

	b	.L1951
	ld	$31,72($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l
	.size	_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l, .-_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l
	.section	.rodata.str1.8
	.align	3
.LC40:
	.ascii	"blockfill_s_4x4 test fail\000"
	.align	3
.LC41:
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
.L1956:
	daddiu	$2,$7,-8
.L1955:
	lh	$3,0($2)
	bne	$3,$6,.L1960
	daddiu	$2,$2,2

	bne	$2,$7,.L1955
	nop

	addiu	$8,$8,-1
	bne	$8,$0,.L1956
	daddu	$7,$2,$5

	ld	$4,%got_page(.LC41)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC41)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1960:
	ld	$4,%got_page(.LC40)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC40)

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
.LC42:
	.ascii	"blockfill_s_8x8 test fail\000"
	.align	3
.LC43:
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
.L1965:
	daddiu	$2,$7,-16
.L1964:
	lh	$3,0($2)
	bne	$3,$6,.L1969
	daddiu	$2,$2,2

	bne	$2,$7,.L1964
	nop

	addiu	$4,$4,-1
	bne	$4,$0,.L1965
	daddu	$7,$2,$8

	ld	$4,%got_page(.LC43)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC43)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1969:
	ld	$4,%got_page(.LC42)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC42)

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
.LC44:
	.ascii	"blockfill_s_16x16 test fail\000"
	.align	3
.LC45:
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
.L1974:
	b	.L1973
	daddiu	$2,$7,-32

	.align	3
.L1971:
	beq	$2,$7,.L1978
	nop

.L1973:
	lh	$3,0($2)
	beq	$3,$6,.L1971
	daddiu	$2,$2,2

	ld	$4,%got_page(.LC44)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC44)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1978:
	addiu	$11,$11,-1
	bne	$11,$0,.L1974
	daddu	$7,$2,$5

	ld	$4,%got_page(.LC45)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC45)

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
.LC46:
	.ascii	"blockfill_s_32x32 test fail\000"
	.align	3
.LC47:
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
.L1983:
	b	.L1982
	daddiu	$2,$7,-64

	.align	3
.L1980:
	beq	$2,$7,.L1987
	nop

.L1982:
	lh	$3,0($2)
	beq	$3,$6,.L1980
	daddiu	$2,$2,2

	ld	$4,%got_page(.LC46)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC46)

	ld	$31,8($sp)
.L1988:
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1987:
	addiu	$31,$31,-1
	bne	$31,$0,.L1983
	daddu	$7,$2,$5

	ld	$4,%got_page(.LC47)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC47)

	b	.L1988
	ld	$31,8($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls
	.size	_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls, .-_ZN12_GLOBAL__N_117blockfill_s_32x32EPsls
	.section	.rodata.str1.8
	.align	3
.LC48:
	.ascii	"sse_pp_a_8x8 test success\000"
	.align	3
.LC49:
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
.L1991:
	daddiu	$8,$4,8
	.align	3
.L1990:
	daddiu	$6,$6,1
	lbu	$3,0($4)
	daddiu	$4,$4,1
	lbu	$2,-1($6)
	subu	$2,$3,$2
	bne	$8,$4,.L1990
	madd	$2,$2

	addiu	$9,$9,-1
	move	$4,$11
	beq	$9,$0,.L1996
	move	$6,$10

	daddu	$11,$11,$5
	b	.L1991
	daddu	$10,$10,$7

	.align	3
.L1996:
	mflo	$2
	beq	$16,$2,.L1998
	ld	$25,%call16(puts)($28)

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

.L1998:
	ld	$4,%got_page(.LC48)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC48)

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
.LC50:
	.ascii	"sse_pp_a_16x16 test success\000"
	.align	3
.LC51:
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
.L2000:
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
	bne	$25,$0,.L2000
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
.L2002:
	move	$8,$4
	move	$9,$6
	daddiu	$10,$4,16
	.align	3
.L2001:
	daddiu	$9,$9,1
	lbu	$3,0($8)
	daddiu	$8,$8,1
	lbu	$2,-1($9)
	subu	$2,$3,$2
	bne	$10,$8,.L2001
	madd	$2,$2

	addiu	$11,$11,-1
	daddu	$4,$4,$5
	bne	$11,$0,.L2002
	daddu	$6,$6,$7

	mflo	$2
	beq	$16,$2,.L2009
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC51)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC51)

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

.L2009:
	ld	$4,%got_page(.LC50)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC50)

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
.LC52:
	.ascii	"sse_pp_a_64x64 test success\000"
	.align	3
.LC53:
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
.L2011:
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
	bne	$8,$0,.L2011
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
.L2013:
	move	$8,$4
	move	$9,$6
	daddiu	$10,$4,64
	.align	3
.L2012:
	daddiu	$9,$9,1
	lbu	$3,0($8)
	daddiu	$8,$8,1
	lbu	$2,-1($9)
	subu	$2,$3,$2
	bne	$10,$8,.L2012
	madd	$2,$2

	addiu	$11,$11,-1
	daddu	$4,$4,$5
	bne	$11,$0,.L2013
	daddu	$6,$6,$7

	mflo	$2
	beq	$16,$2,.L2020
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC53)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC53)

	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

.L2020:
	ld	$4,%got_page(.LC52)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC52)

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
.LC54:
	.ascii	"sse_pp_a_32x32 test success\000"
	.align	3
.LC55:
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
.L2022:
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
	bne	$24,$0,.L2022
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
.L2024:
	move	$8,$4
	move	$9,$6
	daddiu	$10,$4,32
	.align	3
.L2023:
	daddiu	$9,$9,1
	lbu	$3,0($8)
	daddiu	$8,$8,1
	lbu	$2,-1($9)
	subu	$2,$3,$2
	bne	$10,$8,.L2023
	madd	$2,$2

	addiu	$11,$11,-1
	daddu	$4,$4,$5
	bne	$11,$0,.L2024
	daddu	$6,$6,$7

	mflo	$2
	beq	$16,$2,.L2031
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC55)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC55)

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

.L2031:
	ld	$4,%got_page(.LC54)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC54)

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
.LC56:
	.ascii	"sse_pp_a_4x4 test success\000"
	.align	3
.LC57:
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
.L2034:
	daddiu	$8,$4,4
.L2033:
	daddiu	$6,$6,1
	lbu	$3,0($4)
	daddiu	$4,$4,1
	lbu	$2,-1($6)
	subu	$2,$3,$2
	bne	$8,$4,.L2033
	madd	$2,$2

	addiu	$9,$9,-1
	move	$4,$11
	beq	$9,$0,.L2039
	move	$6,$10

	daddu	$11,$11,$5
	b	.L2034
	daddu	$10,$10,$7

	.align	3
.L2039:
	mflo	$2
	beq	$16,$2,.L2041
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC57)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC57)

	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L2041:
	ld	$4,%got_page(.LC56)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC56)

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
.LC58:
	.ascii	"satd_4x4 test success\000"
	.align	3
.LC59:
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
.L2043:
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
	bne	$24,$12,.L2043
	sw	$2,-4($12)

	li	$7,65536			# 0x10000
	daddiu	$10,$13,8
	move	$9,$0
	addiu	$7,$7,1
.L2044:
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
	bne	$10,$13,.L2044
	addu	$9,$2,$9

	srl	$9,$9,1
	beq	$9,$16,.L2051
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC59)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC59)

	ld	$31,56($sp)
	move	$2,$16
	ld	$28,48($sp)
	ld	$16,40($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L2051:
	ld	$4,%got_page(.LC58)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC58)

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
.L2053:
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
	bne	$16,$0,.L2053
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
.L2058:
	daddiu	$17,$16,12
	move	$18,$22
	move	$fp,$16
.L2057:
	ld	$25,0($sp)
	move	$6,$18
	move	$4,$fp
	move	$7,$19
	move	$5,$20
	daddiu	$fp,$fp,4
	jalr	$25
	daddiu	$18,$18,4

	addu	$2,$2,$23
	bne	$fp,$17,.L2057
	move	$23,$2

	ld	$3,8($sp)
	addiu	$21,$21,-1
	daddu	$16,$16,$3
	ld	$3,16($sp)
	bne	$21,$0,.L2058
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
.L2065:
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
	bne	$fp,$0,.L2065
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
.L2069:
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
	bne	$16,$20,.L2069
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
.L2074:
	daddiu	$16,$20,16
	move	$17,$22
	move	$fp,$20
.L2073:
	ld	$25,0($sp)
	move	$6,$17
	move	$4,$fp
	move	$7,$18
	move	$5,$19
	daddiu	$fp,$fp,4
	jalr	$25
	daddiu	$17,$17,4

	addu	$2,$2,$23
	bne	$fp,$16,.L2073
	move	$23,$2

	ld	$3,8($sp)
	addiu	$21,$21,-1
	daddu	$20,$20,$3
	ld	$3,16($sp)
	bne	$21,$0,.L2074
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
.L2079:
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
	bne	$16,$0,.L2079
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
.L2084:
	daddiu	$17,$16,12
	move	$18,$22
	move	$fp,$16
.L2083:
	ld	$25,0($sp)
	move	$6,$18
	move	$4,$fp
	move	$7,$19
	move	$5,$20
	daddiu	$fp,$fp,4
	jalr	$25
	daddiu	$18,$18,4

	addu	$2,$2,$23
	bne	$fp,$17,.L2083
	move	$23,$2

	ld	$3,8($sp)
	addiu	$21,$21,-1
	daddu	$16,$16,$3
	ld	$3,16($sp)
	bne	$21,$0,.L2084
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
.LC60:
	.ascii	"pixelavg_pp_8x8 test fail\000"
	.align	3
.LC61:
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
.L2094:
	move	$3,$4
	move	$11,$6
	move	$10,$8
	daddiu	$14,$4,8
.L2093:
	lbu	$2,0($11)
	daddiu	$3,$3,1
	daddiu	$11,$11,1
	lbu	$13,0($10)
	lbu	$12,-1($3)
	addu	$2,$2,$13
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$12,$2,.L2098
	daddiu	$10,$10,1

	bne	$14,$3,.L2093
	nop

	addiu	$15,$15,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$15,$0,.L2094
	daddu	$4,$4,$5

	ld	$4,%got_page(.LC61)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC61)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L2098:
	ld	$4,%got_page(.LC60)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC60)

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
.LC62:
	.ascii	"sad_4x4 test success\000"
	.align	3
.LC63:
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
.L2101:
	daddiu	$9,$4,4
.L2100:
	daddiu	$6,$6,1
	lbu	$2,0($4)
	daddiu	$4,$4,1
	lbu	$3,-1($6)
	subu	$2,$2,$3
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	bne	$9,$4,.L2100
	addu	$8,$2,$8

	addiu	$10,$10,-1
	move	$4,$12
	beq	$10,$0,.L2106
	move	$6,$11

	daddu	$12,$12,$5
	b	.L2101
	daddu	$11,$11,$7

	.align	3
.L2106:
	beq	$16,$8,.L2108
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC63)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC63)

	ld	$31,24($sp)
	move	$2,$16
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L2108:
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
.LC64:
	.ascii	"sad_x4_8x8 test success\000"
	.align	3
.LC65:
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
.L2113:
	daddiu	$18,$4,8
	.align	3
.L2112:
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
	bne	$18,$4,.L2112
	addu	$17,$2,$17

	move	$4,$19
	move	$5,$22
	move	$6,$23
	move	$7,$21
	beq	$19,$fp,.L2118
	move	$8,$20

	daddiu	$19,$19,64
	daddu	$22,$22,$9
	daddu	$23,$23,$9
	daddu	$21,$21,$9
	b	.L2113
	daddu	$20,$20,$9

	.align	3
.L2118:
	lw	$2,0($10)
	bne	$2,$25,.L2122
	ld	$4,%got_page(.LC65)($28)

	lw	$2,4($10)
	beq	$2,$31,.L2120
	nop

.L2122:
	ld	$25,%call16(puts)($28)
.L2123:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC65)

	ld	$31,104($sp)
.L2121:
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

.L2120:
	lw	$2,8($10)
	bne	$2,$16,.L2122
	ld	$4,%got_page(.LC65)($28)

	ld	$2,0($sp)
	bne	$2,$17,.L2123
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC64)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC64)

	b	.L2121
	ld	$31,104($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi, .-_ZN12_GLOBAL__N_110sad_x4_8x8EPKhS1_S1_S1_S1_lPi
	.section	.rodata.str1.8
	.align	3
.LC66:
	.ascii	"sad_x3_8x8 test success\000"
	.align	3
.LC67:
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
.L2126:
	daddiu	$14,$4,8
	.align	3
.L2125:
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
	bne	$14,$4,.L2125
	addu	$13,$2,$13

	move	$4,$15
	move	$5,$31
	move	$6,$25
	beq	$15,$16,.L2131
	move	$7,$24

	daddiu	$15,$15,64
	daddu	$31,$31,$8
	daddu	$25,$25,$8
	b	.L2126
	daddu	$24,$24,$8

	.align	3
.L2131:
	lw	$2,0($9)
	bne	$2,$11,.L2135
	ld	$4,%got_page(.LC67)($28)

	lw	$2,4($9)
	beq	$2,$12,.L2133
	nop

.L2127:
	ld	$4,%got_page(.LC67)($28)
.L2135:
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC67)

	ld	$31,56($sp)
.L2134:
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

.L2133:
	bne	$17,$13,.L2127
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC66)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC66)

	b	.L2134
	ld	$31,56($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi, .-_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi
	.section	.rodata.str1.8
	.align	3
.LC68:
	.ascii	"sad_8x8 test success\000"
	.align	3
.LC69:
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
.L2138:
	daddiu	$9,$4,8
	.align	3
.L2137:
	daddiu	$6,$6,1
	lbu	$2,0($4)
	daddiu	$4,$4,1
	lbu	$3,-1($6)
	subu	$2,$2,$3
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	bne	$9,$4,.L2137
	addu	$8,$2,$8

	addiu	$10,$10,-1
	move	$4,$12
	beq	$10,$0,.L2143
	move	$6,$11

	daddu	$12,$12,$5
	b	.L2138
	daddu	$11,$11,$7

	.align	3
.L2143:
	beq	$16,$8,.L2145
	ld	$25,%call16(puts)($28)

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

.L2145:
	ld	$4,%got_page(.LC68)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC68)

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
.L2148:
	ld	$16,16($sp)
	ld	$17,24($sp)
	daddiu	$23,$16,64
	.align	3
.L2147:
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
	bne	$16,$23,.L2147
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
	bne	$2,$0,.L2148
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
.L2154:
	ld	$16,16($sp)
	ld	$17,24($sp)
	daddiu	$23,$16,32
.L2153:
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
	bne	$16,$23,.L2153
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
	bne	$2,$0,.L2154
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
.L2160:
	ld	$18,16($sp)
	daddiu	$2,$23,16
	move	$16,$23
	sd	$2,24($sp)
.L2159:
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
	bne	$16,$2,.L2159
	daddiu	$18,$18,8

	ld	$2,40($sp)
	ld	$3,48($sp)
	daddu	$23,$23,$2
	ld	$2,16($sp)
	daddu	$2,$2,$3
	li	$3,1			# 0x1
	sd	$2,16($sp)
	ld	$2,32($sp)
	bne	$2,$3,.L2161
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
.L2161:
	b	.L2160
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
.LC70:
	.ascii	"sad_x4_16x16 test success\000"
	.align	3
.LC71:
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
.L2167:
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
	bne	$23,$19,.L2167
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
.L2169:
	move	$15,$4
	move	$16,$5
	move	$31,$6
	move	$25,$7
	move	$24,$8
	daddiu	$17,$4,16
	.align	3
.L2168:
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
	bne	$17,$15,.L2168
	addu	$19,$2,$19

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$23,$4,.L2169
	daddu	$8,$8,$9

	bne	$fp,$18,.L2170
	ld	$2,0($sp)

	beq	$2,$21,.L2176
	ld	$2,8($sp)

.L2170:
	ld	$4,%got_page(.LC71)($28)
.L2178:
	ld	$25,%call16(puts)($28)
.L2179:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC71)

	ld	$31,120($sp)
.L2177:
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

.L2176:
	bne	$2,$20,.L2178
	ld	$4,%got_page(.LC71)($28)

	ld	$2,16($sp)
	bne	$2,$19,.L2179
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC70)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC70)

	b	.L2177
	ld	$31,120($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x4_16x16EPKhS1_S1_S1_S1_lPi
	.section	.rodata.str1.8
	.align	3
.LC72:
	.ascii	"sad_x3_16x16 test success\000"
	.align	3
.LC73:
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
.L2181:
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
	bne	$25,$17,.L2181
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
.L2183:
	move	$9,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L2182:
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
	bne	$24,$9,.L2182
	addu	$14,$2,$14

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L2183
	daddu	$7,$7,$8

	bne	$31,$13,.L2184
	nop

	beq	$17,$15,.L2190
	nop

.L2184:
	ld	$4,%got_page(.LC73)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC73)

	ld	$31,56($sp)
.L2191:
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

.L2190:
	bne	$16,$14,.L2184
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC72)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC72)

	b	.L2191
	ld	$31,56($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi
	.section	.rodata.str1.8
	.align	3
.LC74:
	.ascii	"sad_x4_64x64 test success\000"
	.align	3
.LC75:
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
.L2193:
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
	bne	$17,$7,.L2193
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
.L2195:
	move	$15,$19
	move	$14,$20
	move	$13,$21
	move	$12,$22
	daddiu	$16,$4,64
	.align	3
.L2194:
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
	bne	$16,$4,.L2194
	addu	$7,$2,$7

	move	$4,$16
	daddu	$19,$19,$18
	daddu	$20,$20,$18
	daddu	$21,$21,$18
	bne	$17,$16,.L2195
	daddu	$22,$22,$18

	bne	$fp,$31,.L2196
	nop

	beq	$23,$9,.L2202
	ld	$2,0($sp)

.L2196:
	ld	$4,%got_page(.LC75)($28)
.L2204:
	ld	$25,%call16(puts)($28)
.L2205:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC75)

	ld	$31,104($sp)
.L2203:
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

.L2202:
	bne	$2,$8,.L2204
	ld	$4,%got_page(.LC75)($28)

	ld	$2,8($sp)
	bne	$2,$7,.L2205
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC74)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC74)

	b	.L2203
	ld	$31,104($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x4_64x64EPKhS1_S1_S1_S1_lPi
	.section	.rodata.str1.8
	.align	3
.LC76:
	.ascii	"sad_x4_32x32 test success\000"
	.align	3
.LC77:
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
.L2207:
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
	bne	$19,$25,.L2207
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
.L2209:
	move	$12,$18
	move	$24,$20
	move	$15,$21
	move	$14,$22
	move	$13,$23
	daddiu	$25,$18,32
	.align	3
.L2208:
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
	bne	$25,$12,.L2208
	addu	$7,$2,$7

	daddiu	$18,$18,64
	daddu	$20,$20,$17
	daddu	$21,$21,$17
	daddu	$22,$22,$17
	bne	$19,$18,.L2209
	daddu	$23,$23,$17

	bne	$fp,$31,.L2210
	ld	$2,0($sp)

	beq	$2,$9,.L2216
	ld	$2,8($sp)

.L2210:
	ld	$4,%got_page(.LC77)($28)
.L2218:
	ld	$25,%call16(puts)($28)
.L2219:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC77)

	ld	$31,120($sp)
.L2217:
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

.L2216:
	bne	$2,$8,.L2218
	ld	$4,%got_page(.LC77)($28)

	ld	$2,16($sp)
	bne	$2,$7,.L2219
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC76)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC76)

	b	.L2217
	ld	$31,120($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x4_32x32EPKhS1_S1_S1_S1_lPi
	.section	.rodata.str1.8
	.align	3
.LC78:
	.ascii	"sad_x3_64x64 test success\000"
	.align	3
.LC79:
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
.L2221:
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
	bne	$25,$11,.L2221
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
.L2223:
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,64
	.align	3
.L2222:
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
	bne	$24,$4,.L2222
	addu	$13,$2,$13

	move	$4,$24
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$24,.L2223
	daddu	$7,$7,$8

	bne	$17,$15,.L2224
	nop

	beq	$16,$14,.L2230
	nop

.L2224:
	ld	$4,%got_page(.LC79)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC79)

	ld	$31,56($sp)
.L2231:
	ld	$28,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

.L2230:
	bne	$31,$13,.L2224
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC78)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC78)

	b	.L2231
	ld	$31,56($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi
	.section	.rodata.str1.8
	.align	3
.LC80:
	.ascii	"sad_x3_32x32 test success\000"
	.align	3
.LC81:
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
.L2233:
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
	bne	$25,$17,.L2233
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
.L2235:
	move	$9,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L2234:
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
	bne	$24,$9,.L2234
	addu	$13,$2,$13

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L2235
	daddu	$7,$7,$8

	bne	$17,$15,.L2236
	nop

	beq	$16,$14,.L2242
	nop

.L2236:
	ld	$4,%got_page(.LC81)($28)
	ld	$25,%call16(puts)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC81)

	ld	$31,56($sp)
.L2243:
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

.L2242:
	bne	$31,$13,.L2236
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC80)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC80)

	b	.L2243
	ld	$31,56($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi
	.size	_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi, .-_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi
	.section	.rodata.str1.8
	.align	3
.LC82:
	.ascii	"sad_32x32 test success\000"
	.align	3
.LC83:
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
.L2245:
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
	bne	$8,$0,.L2245
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
.L2247:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L2246:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	bne	$11,$3,.L2246
	addu	$10,$2,$10

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L2247
	daddu	$6,$6,$7

	beq	$16,$10,.L2254
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC83)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC83)

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

.L2254:
	ld	$4,%got_page(.LC82)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC82)

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
.LC84:
	.ascii	"sad_16x16 test success\000"
	.align	3
.LC85:
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
.L2257:
	daddiu	$9,$4,16
	.align	3
.L2256:
	daddiu	$6,$6,1
	lbu	$2,0($4)
	daddiu	$4,$4,1
	lbu	$3,-1($6)
	subu	$2,$2,$3
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	bne	$9,$4,.L2256
	addu	$8,$2,$8

	addiu	$10,$10,-1
	move	$4,$12
	beq	$10,$0,.L2262
	move	$6,$11

	daddu	$12,$12,$5
	b	.L2257
	daddu	$11,$11,$7

.L2262:
	beq	$16,$8,.L2264
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC85)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC85)

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

.L2264:
	ld	$4,%got_page(.LC84)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC84)

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
.LC86:
	.ascii	"sad_64x64 test success\000"
	.align	3
.LC87:
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
.L2266:
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
	bne	$8,$0,.L2266
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
.L2268:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L2267:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	bne	$11,$3,.L2267
	addu	$10,$2,$10

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L2268
	daddu	$6,$6,$7

	beq	$16,$10,.L2275
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC87)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC87)

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

.L2275:
	ld	$4,%got_page(.LC86)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC86)

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
.LC88:
	.ascii	"satd8_64x64 test success\000"
	.align	3
.LC89:
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
.L2278:
	move	$13,$21
	daddiu	$24,$21,8
	move	$15,$fp
	daddiu	$14,$fp,8
	daddiu	$23,$21,64
.L2277:
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
	bne	$13,$23,.L2277
	daddiu	$14,$14,16

	ld	$2,16($sp)
	addiu	$22,$22,-1
	daddu	$21,$21,$2
	ld	$2,24($sp)
	bne	$22,$0,.L2278
	daddu	$fp,$fp,$2

	ld	$21,%got_page(_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l)($28)
	li	$2,16			# 0x10
	move	$22,$4
	sd	$17,0($sp)
	move	$17,$0
	sd	$2,8($sp)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l)
	.align	3
.L2280:
	ld	$fp,0($sp)
	daddiu	$20,$22,64
	move	$23,$22
	.align	3
.L2279:
	move	$6,$fp
	move	$4,$23
	move	$7,$18
	move	$5,$19
	move	$25,$21
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L10satd_c_8x4EPKhlS1_l
1:	jalr	$25
	daddiu	$23,$23,8

	daddiu	$fp,$fp,8
	bne	$20,$23,.L2279
	addu	$17,$2,$17

	ld	$3,16($sp)
	ld	$2,8($sp)
	ld	$4,24($sp)
	daddu	$22,$22,$3
	ld	$3,0($sp)
	addiu	$2,$2,-1
	sd	$2,8($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2280
	sd	$3,0($sp)

	beq	$16,$17,.L2288
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC89)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC89)

	ld	$31,120($sp)
.L2289:
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

.L2288:
	ld	$4,%got_page(.LC88)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC88)

	b	.L2289
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
	ld	$2,%got_page(.LC37)($28)
	sd	$22,184($sp)
	li	$22,65536			# 0x10000
	sd	$fp,208($sp)
	addiu	$22,$22,1
	move	$fp,$5
	daddiu	$2,$2,%got_ofst(.LC37)
	sd	$23,192($sp)
	move	$23,$7
	sd	$2,72($sp)
	ld	$2,%got_page(.LC36)($28)
	sd	$18,152($sp)
	dlsa	$18,$5,$5,1
	sd	$17,144($sp)
	move	$17,$0
	sd	$16,136($sp)
	daddiu	$2,$2,%got_ofst(.LC36)
	daddiu	$16,$4,48
	sd	$31,216($sp)
	sd	$21,176($sp)
	sd	$20,168($sp)
	sd	$19,160($sp)
	sd	$6,80($sp)
	sd	$2,96($sp)
	.align	3
.L2296:
	ld	$20,80($sp)
	daddiu	$19,$16,-48
	move	$2,$17
	move	$17,$20
	move	$20,$19
	move	$19,$2
	.align	3
.L2295:
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
.L2291:
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
	bne	$13,$12,.L2291
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2292:
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
	bne	$13,$11,.L2292
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$21,.L2302
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,72($sp)

	addu	$21,$21,$19
.L2303:
	daddiu	$20,$20,8
	move	$19,$21
	bne	$16,$20,.L2295
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
	bne	$2,$0,.L2296
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
.L2302:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,96($sp)

	b	.L2303
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
	ld	$2,%got_page(.LC37)($28)
	sd	$22,184($sp)
	li	$22,65536			# 0x10000
	sd	$fp,208($sp)
	addiu	$22,$22,1
	move	$fp,$5
	daddiu	$2,$2,%got_ofst(.LC37)
	sd	$23,192($sp)
	move	$23,$7
	sd	$2,72($sp)
	ld	$2,%got_page(.LC36)($28)
	sd	$18,152($sp)
	dlsa	$18,$5,$5,1
	sd	$17,144($sp)
	move	$17,$0
	sd	$16,136($sp)
	daddiu	$2,$2,%got_ofst(.LC36)
	daddiu	$16,$4,64
	sd	$31,216($sp)
	sd	$21,176($sp)
	sd	$20,168($sp)
	sd	$19,160($sp)
	sd	$6,80($sp)
	sd	$2,88($sp)
	.align	3
.L2310:
	ld	$20,80($sp)
	daddiu	$19,$16,-64
	move	$2,$17
	move	$17,$20
	move	$20,$19
	move	$19,$2
	.align	3
.L2309:
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
.L2305:
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
	bne	$13,$12,.L2305
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2306:
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
	bne	$13,$11,.L2306
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$21,.L2316
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,72($sp)

	addu	$21,$21,$19
.L2317:
	daddiu	$20,$20,8
	move	$19,$21
	bne	$16,$20,.L2309
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
	bne	$2,$0,.L2310
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
.L2316:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,88($sp)

	b	.L2317
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
	ld	$2,%got_page(.LC37)($28)
	sd	$22,184($sp)
	li	$22,65536			# 0x10000
	sd	$fp,208($sp)
	addiu	$22,$22,1
	move	$fp,$5
	daddiu	$2,$2,%got_ofst(.LC37)
	sd	$23,192($sp)
	move	$23,$7
	sd	$2,80($sp)
	ld	$2,%got_page(.LC36)($28)
	sd	$18,152($sp)
	dlsa	$18,$5,$5,1
	sd	$17,144($sp)
	move	$17,$0
	sd	$16,136($sp)
	daddiu	$2,$2,%got_ofst(.LC36)
	daddiu	$16,$4,32
	sd	$31,216($sp)
	sd	$21,176($sp)
	sd	$20,168($sp)
	sd	$19,160($sp)
	sd	$6,72($sp)
	sd	$2,96($sp)
	.align	3
.L2324:
	ld	$20,72($sp)
	daddiu	$19,$16,-32
	move	$2,$17
	move	$17,$20
	move	$20,$19
	move	$19,$2
.L2323:
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
.L2319:
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
	bne	$13,$12,.L2319
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2320:
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
	bne	$13,$11,.L2320
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$21,.L2330
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,80($sp)

	addu	$21,$21,$19
.L2331:
	daddiu	$20,$20,8
	move	$19,$21
	bne	$16,$20,.L2323
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
	bne	$2,$0,.L2324
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
.L2330:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,96($sp)

	b	.L2331
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
	ld	$2,%got_page(.LC37)($28)
	sd	$22,184($sp)
	li	$22,65536			# 0x10000
	sd	$fp,208($sp)
	addiu	$22,$22,1
	move	$fp,$5
	daddiu	$2,$2,%got_ofst(.LC37)
	sd	$23,192($sp)
	move	$23,$7
	sd	$2,72($sp)
	ld	$2,%got_page(.LC36)($28)
	sd	$18,152($sp)
	dlsa	$18,$5,$5,1
	sd	$17,144($sp)
	move	$17,$0
	sd	$16,136($sp)
	daddiu	$2,$2,%got_ofst(.LC36)
	daddiu	$16,$4,64
	sd	$31,216($sp)
	sd	$21,176($sp)
	sd	$20,168($sp)
	sd	$19,160($sp)
	sd	$6,80($sp)
	sd	$2,88($sp)
	.align	3
.L2338:
	ld	$20,80($sp)
	daddiu	$19,$16,-64
	move	$2,$17
	move	$17,$20
	move	$20,$19
	move	$19,$2
	.align	3
.L2337:
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
.L2333:
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
	bne	$13,$12,.L2333
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2334:
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
	bne	$13,$11,.L2334
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$21,.L2344
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,72($sp)

	addu	$21,$21,$19
.L2345:
	daddiu	$20,$20,8
	move	$19,$21
	bne	$16,$20,.L2337
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
	bne	$2,$0,.L2338
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
.L2344:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,88($sp)

	b	.L2345
	addu	$21,$21,$19

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l
	.section	.rodata.str1.8
	.align	3
.LC90:
	.ascii	"sa8d_64x64 test success\000"
	.align	3
.LC91:
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
	ld	$2,%got_page(.LC29)($28)
	sd	$20,264($sp)
	li	$20,65536			# 0x10000
	sd	$22,280($sp)
	addiu	$20,$20,1
	move	$22,$0
	daddiu	$2,$2,%got_ofst(.LC29)
	sd	$17,240($sp)
	move	$17,$7
	sd	$2,152($sp)
	ld	$2,%got_page(.LC28)($28)
	sd	$16,232($sp)
	move	$16,$5
	sd	$31,312($sp)
	daddiu	$2,$2,%got_ofst(.LC28)
	sd	$fp,304($sp)
	sd	$23,288($sp)
	sd	$21,272($sp)
	sd	$19,256($sp)
	sd	$18,248($sp)
	sd	$4,208($sp)
	sd	$6,216($sp)
	sd	$2,176($sp)
	.align	3
.L2352:
	ld	$19,168($sp)
	ld	$21,160($sp)
	daddiu	$2,$19,64
	sd	$2,128($sp)
	.align	3
.L2351:
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
.L2347:
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
	bne	$11,$10,.L2347
	sw	$2,-4($10)

	daddiu	$23,$25,16
	move	$31,$0
.L2348:
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
	bne	$23,$25,.L2348
	addu	$31,$2,$31

	addiu	$31,$31,2
	sra	$31,$31,2
	beq	$31,$18,.L2368
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,152($sp)

	ld	$2,128($sp)
.L2370:
	daddiu	$19,$19,8
	addu	$22,$18,$22
	bne	$2,$19,.L2351
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
	bne	$2,$0,.L2352
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
.L2356:
	ld	$2,128($sp)
	ld	$22,136($sp)
	daddiu	$21,$2,-64
	.align	3
.L2355:
	move	$11,$21
	move	$10,$22
	move	$25,$sp
	move	$12,$sp
	.align	3
.L2353:
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
	bne	$19,$12,.L2353
	sw	$2,-4($12)

	daddiu	$20,$25,16
	move	$18,$0
.L2354:
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
	bne	$20,$25,.L2354
	addu	$18,$2,$18

	ld	$2,128($sp)
	addiu	$18,$18,2
	daddiu	$21,$21,8
	sra	$18,$18,2
	daddiu	$22,$22,8
	bne	$2,$21,.L2355
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
	bne	$2,$0,.L2356
	sd	$3,136($sp)

	ld	$2,152($sp)
	beq	$2,$23,.L2369
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC91)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC91)

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
.L2368:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,176($sp)

	b	.L2370
	ld	$2,128($sp)

.L2369:
	ld	$4,%got_page(.LC90)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC90)

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
	ld	$2,%got_page(.LC37)($28)
	sd	$21,176($sp)
	li	$21,65536			# 0x10000
	sd	$19,160($sp)
	move	$19,$0
	addiu	$21,$21,1
	daddiu	$2,$2,%got_ofst(.LC37)
	sd	$fp,208($sp)
	move	$fp,$5
	sd	$2,80($sp)
	ld	$2,%got_page(.LC36)($28)
	sd	$23,192($sp)
	move	$23,$19
	sd	$22,184($sp)
	move	$22,$7
	sd	$17,144($sp)
	daddiu	$2,$2,%got_ofst(.LC36)
	dlsa	$17,$5,$5,1
	sd	$16,136($sp)
	daddiu	$16,$4,24
	sd	$31,216($sp)
	sd	$20,168($sp)
	sd	$18,152($sp)
	sd	$6,72($sp)
	sd	$2,112($sp)
	.align	3
.L2377:
	ld	$19,72($sp)
	daddiu	$18,$16,-24
	move	$2,$22
	move	$22,$19
	move	$19,$18
	move	$18,$23
	move	$23,$2
.L2376:
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
.L2372:
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
	bne	$13,$12,.L2372
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2373:
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
	bne	$13,$11,.L2373
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$20,.L2383
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,80($sp)

	addu	$20,$20,$18
.L2384:
	daddiu	$19,$19,8
	move	$18,$20
	bne	$16,$19,.L2376
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
	bne	$2,$0,.L2377
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
.L2383:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,112($sp)

	b	.L2384
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
	ld	$2,%got_page(.LC37)($28)
	sd	$22,184($sp)
	li	$22,65536			# 0x10000
	sd	$fp,208($sp)
	addiu	$22,$22,1
	move	$fp,$5
	daddiu	$2,$2,%got_ofst(.LC37)
	sd	$23,192($sp)
	move	$23,$7
	sd	$2,80($sp)
	ld	$2,%got_page(.LC36)($28)
	sd	$18,152($sp)
	dlsa	$18,$5,$5,1
	sd	$17,144($sp)
	move	$17,$0
	sd	$16,136($sp)
	daddiu	$2,$2,%got_ofst(.LC36)
	daddiu	$16,$4,32
	sd	$31,216($sp)
	sd	$21,176($sp)
	sd	$20,168($sp)
	sd	$19,160($sp)
	sd	$6,72($sp)
	sd	$2,96($sp)
	.align	3
.L2391:
	ld	$20,72($sp)
	daddiu	$19,$16,-32
	move	$2,$17
	move	$17,$20
	move	$20,$19
	move	$19,$2
.L2390:
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
.L2386:
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
	bne	$13,$12,.L2386
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2387:
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
	bne	$13,$11,.L2387
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$21,.L2397
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,80($sp)

	addu	$21,$21,$19
.L2398:
	daddiu	$20,$20,8
	move	$19,$21
	bne	$16,$20,.L2390
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
	bne	$2,$0,.L2391
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
.L2397:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,96($sp)

	b	.L2398
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
	ld	$2,%got_page(.LC37)($28)
	sd	$21,176($sp)
	li	$21,65536			# 0x10000
	sd	$19,160($sp)
	move	$19,$0
	addiu	$21,$21,1
	daddiu	$2,$2,%got_ofst(.LC37)
	sd	$fp,208($sp)
	move	$fp,$5
	sd	$2,88($sp)
	ld	$2,%got_page(.LC36)($28)
	sd	$23,192($sp)
	move	$23,$19
	sd	$22,184($sp)
	move	$22,$7
	sd	$17,144($sp)
	daddiu	$2,$2,%got_ofst(.LC36)
	move	$17,$6
	sd	$16,136($sp)
	daddiu	$16,$4,16
	sd	$31,216($sp)
	sd	$20,168($sp)
	sd	$18,152($sp)
	sd	$2,112($sp)
	.align	3
.L2405:
	daddiu	$18,$16,-16
	move	$19,$17
.L2404:
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
.L2400:
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
	bne	$12,$11,.L2400
	sw	$2,-4($11)

	daddiu	$11,$9,16
	move	$10,$0
.L2401:
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
	bne	$11,$9,.L2401
	addu	$10,$2,$10

	andi	$2,$10,0xffff
	srl	$10,$10,16
	addu	$10,$2,$10
	srl	$10,$10,1
	beq	$10,$20,.L2411
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,88($sp)

	addu	$20,$20,$23
.L2412:
	daddiu	$18,$18,8
	move	$23,$20
	bne	$16,$18,.L2404
	daddiu	$19,$19,8

	ld	$3,104($sp)
	ld	$2,64($sp)
	daddu	$16,$16,$3
	ld	$3,96($sp)
	addiu	$2,$2,-1
	sd	$2,64($sp)
	bne	$2,$0,.L2405
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
.L2411:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,112($sp)

	b	.L2412
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
	ld	$2,%got_page(.LC37)($28)
	sd	$22,184($sp)
	li	$22,65536			# 0x10000
	sd	$fp,208($sp)
	addiu	$22,$22,1
	move	$fp,$5
	daddiu	$2,$2,%got_ofst(.LC37)
	sd	$23,192($sp)
	move	$23,$7
	sd	$2,72($sp)
	ld	$2,%got_page(.LC36)($28)
	sd	$18,152($sp)
	dlsa	$18,$5,$5,1
	sd	$17,144($sp)
	move	$17,$0
	sd	$16,136($sp)
	daddiu	$2,$2,%got_ofst(.LC36)
	daddiu	$16,$4,64
	sd	$31,216($sp)
	sd	$21,176($sp)
	sd	$20,168($sp)
	sd	$19,160($sp)
	sd	$6,80($sp)
	sd	$2,88($sp)
.L2419:
	ld	$20,80($sp)
	daddiu	$19,$16,-64
	move	$2,$17
	move	$17,$20
	move	$20,$19
	move	$19,$2
	.align	3
.L2418:
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
.L2414:
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
	bne	$13,$12,.L2414
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2415:
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
	bne	$13,$11,.L2415
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$21,.L2425
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,72($sp)

	addu	$21,$21,$19
.L2426:
	daddiu	$20,$20,8
	move	$19,$21
	bne	$16,$20,.L2418
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
	bne	$2,$0,.L2419
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
.L2425:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,88($sp)

	b	.L2426
	addu	$21,$21,$19

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l
	.section	.rodata.str1.8
	.align	3
.LC92:
	.ascii	"satd8_32x32 test success\000"
	.align	3
.LC93:
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
.L2429:
	move	$13,$25
	daddiu	$24,$25,8
	move	$15,$23
	daddiu	$14,$23,8
	daddiu	$21,$25,32
.L2428:
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
	bne	$13,$21,.L2428
	daddiu	$14,$14,16

	ld	$2,16($sp)
	addiu	$fp,$fp,-1
	daddu	$25,$25,$2
	ld	$2,24($sp)
	bne	$fp,$0,.L2429
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
.L2431:
	daddiu	$20,$21,32
	move	$23,$fp
	move	$22,$21
.L2430:
	ld	$25,0($sp)
	move	$6,$23
	move	$4,$22
	move	$7,$18
	move	$5,$19
	daddiu	$22,$22,8
	jalr	$25
	daddiu	$23,$23,8

	bne	$20,$22,.L2430
	addu	$17,$2,$17

	ld	$3,16($sp)
	ld	$2,8($sp)
	daddu	$21,$21,$3
	ld	$3,24($sp)
	addiu	$2,$2,-1
	sd	$2,8($sp)
	bne	$2,$0,.L2431
	daddu	$fp,$fp,$3

	beq	$16,$17,.L2439
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC93)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC93)

	ld	$31,120($sp)
.L2440:
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

.L2439:
	ld	$4,%got_page(.LC92)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC92)

	b	.L2440
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
	ld	$2,%got_page(.LC37)($28)
	sd	$21,176($sp)
	li	$21,65536			# 0x10000
	sd	$19,160($sp)
	move	$19,$0
	addiu	$21,$21,1
	daddiu	$2,$2,%got_ofst(.LC37)
	sd	$fp,208($sp)
	move	$fp,$5
	sd	$2,80($sp)
	ld	$2,%got_page(.LC36)($28)
	sd	$23,192($sp)
	move	$23,$19
	sd	$22,184($sp)
	move	$22,$7
	sd	$17,144($sp)
	daddiu	$2,$2,%got_ofst(.LC36)
	dlsa	$17,$5,$5,1
	sd	$16,136($sp)
	daddiu	$16,$4,24
	sd	$31,216($sp)
	sd	$20,168($sp)
	sd	$18,152($sp)
	sd	$6,72($sp)
	sd	$2,112($sp)
	.align	3
.L2447:
	ld	$19,72($sp)
	daddiu	$18,$16,-24
	move	$2,$22
	move	$22,$19
	move	$19,$18
	move	$18,$23
	move	$23,$2
.L2446:
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
.L2442:
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
	bne	$13,$12,.L2442
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2443:
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
	bne	$13,$11,.L2443
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$20,.L2453
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,80($sp)

	addu	$20,$20,$18
.L2454:
	daddiu	$19,$19,8
	move	$18,$20
	bne	$16,$19,.L2446
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
	bne	$2,$0,.L2447
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
.L2453:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,112($sp)

	b	.L2454
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
	ld	$2,%got_page(.LC37)($28)
	sd	$22,184($sp)
	li	$22,65536			# 0x10000
	sd	$fp,208($sp)
	addiu	$22,$22,1
	move	$fp,$5
	daddiu	$2,$2,%got_ofst(.LC37)
	sd	$23,192($sp)
	move	$23,$7
	sd	$2,80($sp)
	ld	$2,%got_page(.LC36)($28)
	sd	$18,152($sp)
	dlsa	$18,$5,$5,1
	sd	$17,144($sp)
	move	$17,$0
	sd	$16,136($sp)
	daddiu	$2,$2,%got_ofst(.LC36)
	daddiu	$16,$4,32
	sd	$31,216($sp)
	sd	$21,176($sp)
	sd	$20,168($sp)
	sd	$19,160($sp)
	sd	$6,72($sp)
	sd	$2,96($sp)
	.align	3
.L2461:
	ld	$20,72($sp)
	daddiu	$19,$16,-32
	move	$2,$17
	move	$17,$20
	move	$20,$19
	move	$19,$2
.L2460:
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
.L2456:
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
	bne	$13,$12,.L2456
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2457:
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
	bne	$13,$11,.L2457
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$21,.L2467
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,80($sp)

	addu	$21,$21,$19
.L2468:
	daddiu	$20,$20,8
	move	$19,$21
	bne	$16,$20,.L2460
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
	bne	$2,$0,.L2461
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
.L2467:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,96($sp)

	b	.L2468
	addu	$21,$21,$19

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l
	.section	.rodata.str1.8
	.align	3
.LC94:
	.ascii	"sa8d_32x32 test success\000"
	.align	3
.LC95:
	.ascii	"sa8d_32x32 test fail\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l
	.type	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l, @function
_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l:
	.frame	$sp,272,$31		# vars= 176, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-272
	dsll	$2,$5,3
	sd	$28,248($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l)))
	daddu	$28,$28,$25
	sd	$19,208($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l)))
	sd	$22,232($sp)
	move	$22,$6
	ld	$19,%got_page(_ZN12_GLOBAL__N_117sa8d_8x8_internalEPKhlS1_l)($28)
	sd	$21,224($sp)
	li	$21,4			# 0x4
	sd	$20,216($sp)
	move	$20,$4
	sd	$18,200($sp)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_117sa8d_8x8_internalEPKhlS1_l)
	move	$18,$0
	sd	$17,192($sp)
	move	$17,$7
	sd	$16,184($sp)
	move	$16,$5
	sd	$2,152($sp)
	dsll	$2,$7,3
	sd	$31,264($sp)
	sd	$fp,256($sp)
	sd	$23,240($sp)
	sd	$4,136($sp)
	sd	$6,144($sp)
	sd	$2,160($sp)
	sd	$21,128($sp)
.L2471:
	move	$21,$20
	move	$fp,$22
	daddiu	$23,$20,32
.L2470:
	move	$6,$fp
	move	$4,$21
	move	$7,$17
	move	$5,$16
	move	$25,$19
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117sa8d_8x8_internalEPKhlS1_l
1:	jalr	$25
	daddiu	$21,$21,8

	daddiu	$fp,$fp,8
	bne	$23,$21,.L2470
	addu	$18,$2,$18

	ld	$3,152($sp)
	ld	$2,128($sp)
	daddu	$20,$20,$3
	ld	$3,160($sp)
	addiu	$2,$2,-1
	sd	$2,128($sp)
	bne	$2,$0,.L2471
	daddu	$22,$22,$3

	ld	$2,136($sp)
	li	$19,65536			# 0x10000
	move	$11,$0
	daddiu	$21,$sp,128
	addiu	$19,$19,1
	sd	$18,168($sp)
	daddiu	$2,$2,32
	sd	$2,128($sp)
	ld	$2,144($sp)
	sd	$2,136($sp)
	li	$2,4			# 0x4
	sd	$2,144($sp)
.L2475:
	ld	$2,128($sp)
	ld	$23,136($sp)
	daddiu	$22,$2,-32
.L2474:
	move	$12,$22
	move	$10,$23
	move	$31,$sp
	move	$13,$sp
	.align	3
.L2472:
	lbu	$6,0($10)
	daddiu	$13,$13,16
	lbu	$3,0($12)
	lbu	$2,1($10)
	lbu	$5,1($12)
	subu	$3,$3,$6
	lbu	$4,2($12)
	lbu	$6,2($10)
	lbu	$7,3($12)
	subu	$5,$5,$2
	lbu	$2,3($10)
	subu	$8,$3,$5
	addu	$5,$3,$5
	subu	$4,$4,$6
	lbu	$3,4($12)
	sll	$8,$8,16
	lbu	$15,5($10)
	addu	$8,$8,$5
	lbu	$6,4($10)
	subu	$2,$7,$2
	lbu	$9,5($12)
	subu	$5,$4,$2
	addu	$7,$4,$2
	lbu	$14,7($12)
	sll	$2,$5,16
	lbu	$4,6($12)
	subu	$6,$3,$6
	addu	$2,$2,$7
	subu	$9,$9,$15
	lbu	$5,6($10)
	addu	$7,$8,$2
	lbu	$15,7($10)
	subu	$3,$6,$9
	addu	$6,$6,$9
	sll	$3,$3,16
	subu	$2,$8,$2
	addu	$3,$3,$6
	subu	$5,$4,$5
	subu	$6,$14,$15
	daddu	$12,$12,$16
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
	sw	$6,-16($13)
	sw	$7,-8($13)
	sw	$4,-12($13)
	bne	$21,$13,.L2472
	sw	$2,-4($13)

	daddiu	$20,$31,16
	move	$18,$0
.L2473:
	lw	$13,0($31)
	daddiu	$31,$31,4
	lw	$4,12($31)
	lw	$3,44($31)
	lw	$8,28($31)
	addu	$5,$13,$4
	lw	$7,76($31)
	subu	$13,$13,$4
	lw	$6,108($31)
	lw	$24,60($31)
	addu	$2,$8,$3
	subu	$8,$8,$3
	lw	$4,92($31)
	addu	$3,$5,$2
	addu	$14,$13,$8
	subu	$13,$13,$8
	addu	$15,$24,$7
	subu	$24,$24,$7
	subu	$7,$5,$2
	addu	$5,$4,$6
	addu	$2,$15,$5
	subu	$4,$4,$6
	addu	$6,$24,$4
	addu	$10,$3,$2
	subu	$3,$3,$2
	addu	$9,$14,$6
	srl	$2,$10,15
	srl	$fp,$3,15
	subu	$5,$15,$5
	and	$25,$2,$19
	and	$12,$fp,$19
	subu	$6,$14,$6
	srl	$15,$9,15
	addu	$8,$7,$5
	and	$15,$15,$19
	sll	$2,$25,16
	sll	$fp,$12,16
	srl	$14,$6,15
	subu	$2,$2,$25
	subu	$fp,$fp,$12
	subu	$4,$24,$4
	subu	$5,$7,$5
	and	$14,$14,$19
	sll	$24,$15,16
	srl	$25,$8,15
	subu	$24,$24,$15
	and	$25,$25,$19
	addu	$7,$13,$4
	sll	$12,$14,16
	srl	$15,$5,15
	addu	$10,$10,$2
	addu	$3,$3,$fp
	subu	$14,$12,$14
	subu	$4,$13,$4
	xor	$10,$10,$2
	and	$15,$15,$19
	sll	$12,$25,16
	srl	$13,$7,15
	xor	$3,$3,$fp
	addu	$9,$9,$24
	subu	$12,$12,$25
	and	$13,$13,$19
	srl	$25,$4,15
	addu	$3,$10,$3
	xor	$9,$9,$24
	addu	$2,$6,$14
	sll	$fp,$15,16
	addu	$3,$3,$9
	subu	$15,$fp,$15
	and	$10,$25,$19
	sll	$6,$13,16
	xor	$2,$2,$14
	addu	$8,$8,$12
	subu	$13,$6,$13
	addu	$2,$3,$2
	sll	$9,$10,16
	xor	$12,$8,$12
	addu	$5,$5,$15
	subu	$3,$9,$10
	addu	$2,$2,$12
	xor	$5,$5,$15
	addu	$7,$7,$13
	addu	$4,$4,$3
	addu	$2,$2,$5
	xor	$7,$7,$13
	xor	$4,$4,$3
	addu	$2,$2,$7
	addu	$2,$2,$4
	andi	$3,$2,0xffff
	srl	$2,$2,16
	addu	$2,$3,$2
	bne	$20,$31,.L2473
	addu	$18,$2,$18

	ld	$2,128($sp)
	addiu	$18,$18,2
	daddiu	$22,$22,8
	sra	$18,$18,2
	daddiu	$23,$23,8
	bne	$2,$22,.L2474
	addu	$11,$18,$11

	ld	$3,128($sp)
	ld	$4,152($sp)
	ld	$2,144($sp)
	daddu	$3,$3,$4
	ld	$4,160($sp)
	sd	$3,128($sp)
	addiu	$2,$2,-1
	ld	$3,136($sp)
	sd	$2,144($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2475
	sd	$3,136($sp)

	ld	$2,168($sp)
	beq	$2,$11,.L2485
	ld	$25,%call16(puts)($28)

	ld	$4,%got_page(.LC95)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC95)

	ld	$31,264($sp)
	ld	$2,168($sp)
	ld	$fp,256($sp)
	ld	$28,248($sp)
	ld	$23,240($sp)
	ld	$22,232($sp)
	ld	$21,224($sp)
	ld	$20,216($sp)
	ld	$19,208($sp)
	ld	$18,200($sp)
	ld	$17,192($sp)
	ld	$16,184($sp)
	jr	$31
	daddiu	$sp,$sp,272

.L2485:
	ld	$4,%got_page(.LC94)($28)
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	daddiu	$4,$4,%got_ofst(.LC94)

	ld	$31,264($sp)
	ld	$2,168($sp)
	ld	$fp,256($sp)
	ld	$28,248($sp)
	ld	$23,240($sp)
	ld	$22,232($sp)
	ld	$21,224($sp)
	ld	$20,216($sp)
	ld	$19,208($sp)
	ld	$18,200($sp)
	ld	$17,192($sp)
	ld	$16,184($sp)
	jr	$31
	daddiu	$sp,$sp,272

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l
	.size	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l, .-_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l
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
	ld	$2,%got_page(.LC37)($28)
	daddu	$3,$4,$7
	sd	$23,176($sp)
	li	$23,16			# 0x10
	sd	$19,144($sp)
	daddu	$19,$4,$5
	daddiu	$2,$2,%got_ofst(.LC37)
	sd	$17,128($sp)
	dsll	$17,$5,1
	sd	$2,88($sp)
	ld	$2,%got_page(.LC36)($28)
	sd	$16,120($sp)
	move	$16,$0
	sd	$31,200($sp)
	daddiu	$2,$2,%got_ofst(.LC36)
	sd	$fp,192($sp)
	sd	$22,168($sp)
	sd	$18,136($sp)
	sd	$2,96($sp)
	.align	3
.L2491:
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
.L2487:
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
	bne	$25,$12,.L2487
	sw	$2,-4($12)

	li	$15,65536			# 0x10000
	daddiu	$25,$11,16
	move	$24,$0
	addiu	$15,$15,1
.L2488:
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
	bne	$25,$11,.L2488
	addu	$24,$6,$24

	andi	$2,$24,0xffff
	srl	$24,$24,16
	sd	$7,64($sp)
	addu	$24,$2,$24
	srl	$24,$24,1
	beq	$24,$18,.L2496
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,88($sp)

	ld	$7,64($sp)
.L2490:
	ld	$2,80($sp)
	addu	$18,$18,$16
	addiu	$23,$23,-1
	move	$16,$18
	daddu	$3,$17,$22
	daddu	$19,$17,$19
	bne	$23,$0,.L2491
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
.L2496:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,96($sp)

	b	.L2490
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
	ld	$2,%got_page(.LC37)($28)
	sd	$22,184($sp)
	li	$22,65536			# 0x10000
	sd	$fp,208($sp)
	addiu	$22,$22,1
	move	$fp,$5
	daddiu	$2,$2,%got_ofst(.LC37)
	sd	$23,192($sp)
	move	$23,$7
	sd	$2,80($sp)
	ld	$2,%got_page(.LC36)($28)
	sd	$18,152($sp)
	dlsa	$18,$5,$5,1
	sd	$17,144($sp)
	move	$17,$0
	sd	$16,136($sp)
	daddiu	$2,$2,%got_ofst(.LC36)
	daddiu	$16,$4,32
	sd	$31,216($sp)
	sd	$21,176($sp)
	sd	$20,168($sp)
	sd	$19,160($sp)
	sd	$6,72($sp)
	sd	$2,96($sp)
.L2503:
	ld	$20,72($sp)
	daddiu	$19,$16,-32
	move	$2,$17
	move	$17,$20
	move	$20,$19
	move	$19,$2
.L2502:
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
.L2498:
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
	bne	$13,$12,.L2498
	sw	$2,-4($12)

	daddiu	$13,$11,16
	move	$12,$0
.L2499:
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
	bne	$13,$11,.L2499
	addu	$12,$2,$12

	andi	$2,$12,0xffff
	srl	$12,$12,16
	addu	$12,$2,$12
	srl	$12,$12,1
	beq	$12,$21,.L2509
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,80($sp)

	addu	$21,$21,$19
.L2510:
	daddiu	$20,$20,8
	move	$19,$21
	bne	$16,$20,.L2502
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
	bne	$2,$0,.L2503
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
.L2509:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,96($sp)

	b	.L2510
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
	ld	$2,%got_page(.LC37)($28)
	sd	$21,176($sp)
	li	$21,65536			# 0x10000
	sd	$19,160($sp)
	move	$19,$0
	addiu	$21,$21,1
	daddiu	$2,$2,%got_ofst(.LC37)
	sd	$fp,208($sp)
	move	$fp,$5
	sd	$2,88($sp)
	ld	$2,%got_page(.LC36)($28)
	sd	$23,192($sp)
	move	$23,$19
	sd	$22,184($sp)
	move	$22,$7
	sd	$17,144($sp)
	daddiu	$2,$2,%got_ofst(.LC36)
	move	$17,$6
	sd	$16,136($sp)
	daddiu	$16,$4,16
	sd	$31,216($sp)
	sd	$20,168($sp)
	sd	$18,152($sp)
	sd	$2,112($sp)
	.align	3
.L2517:
	daddiu	$18,$16,-16
	move	$19,$17
.L2516:
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
.L2512:
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
	bne	$12,$11,.L2512
	sw	$2,-4($11)

	daddiu	$11,$9,16
	move	$10,$0
.L2513:
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
	bne	$11,$9,.L2513
	addu	$10,$2,$10

	andi	$2,$10,0xffff
	srl	$10,$10,16
	addu	$10,$2,$10
	srl	$10,$10,1
	beq	$10,$20,.L2523
	ld	$25,%call16(puts)($28)

	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,88($sp)

	addu	$20,$20,$23
.L2524:
	daddiu	$18,$18,8
	move	$23,$20
	bne	$16,$18,.L2516
	daddiu	$19,$19,8

	ld	$3,104($sp)
	ld	$2,64($sp)
	daddu	$16,$16,$3
	ld	$3,96($sp)
	addiu	$2,$2,-1
	sd	$2,64($sp)
	bne	$2,$0,.L2517
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
.L2523:
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	ld	$4,112($sp)

	b	.L2524
	addu	$20,$20,$23

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l
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

	blez	$19,.L2593
	dsubu	$18,$21,$16

	move	$17,$0
	ld	$25,%call16(memcpy)($28)
	.align	3
.L2600:
	move	$4,$18
	move	$6,$16
	move	$5,$21
	addiu	$17,$17,1
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsubu	$18,$18,$16

	bne	$17,$19,.L2600
	ld	$25,%call16(memcpy)($28)

	addiu	$23,$23,-1
	move	$19,$0
	gsdmultu	$23,$23,$16
	dsubu	$22,$23,$22
	daddu	$20,$20,$22
	daddu	$18,$20,$16
	.align	3
.L2601:
	move	$4,$18
	move	$6,$16
	move	$5,$20
	addiu	$19,$19,1
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$18,$18,$16

	bne	$17,$19,.L2601
	ld	$25,%call16(memcpy)($28)

.L2593:
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
