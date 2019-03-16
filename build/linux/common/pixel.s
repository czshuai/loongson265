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
	.ent	_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
	.type	_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l, @function
_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l:
	.frame	$sp,48,$31		# vars= 32, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$13,$sp
	daddiu	$14,$sp,32
	move	$10,$sp
.L2:
	lbu	$2,0($4)
	daddiu	$10,$10,8
	lbu	$15,1($6)
	lbu	$9,0($6)
	lbu	$12,1($4)
	lbu	$3,2($4)
	subu	$9,$2,$9
	lbu	$8,2($6)
	subu	$12,$12,$15
	lbu	$11,3($4)
	daddu	$4,$4,$5
	lbu	$15,3($6)
	subu	$2,$9,$12
	addu	$9,$9,$12
	sll	$2,$2,16
	subu	$8,$3,$8
	addu	$2,$2,$9
	daddu	$6,$6,$7
	subu	$9,$11,$15
	subu	$3,$8,$9
	addu	$8,$8,$9
	sll	$3,$3,16
	addu	$3,$3,$8
	addu	$8,$2,$3
	subu	$2,$2,$3
	sw	$8,-8($10)
	bne	$14,$10,.L2
	sw	$2,-4($10)

	li	$8,65536			# 0x10000
	daddiu	$10,$13,8
	move	$2,$0
	addiu	$8,$8,1
.L3:
	lw	$3,0($13)
	daddiu	$13,$13,4
	lw	$6,4($13)
	lw	$5,20($13)
	lw	$4,12($13)
	addu	$9,$3,$6
	subu	$3,$3,$6
	addu	$6,$4,$5
	subu	$4,$4,$5
	addu	$7,$9,$6
	addu	$5,$3,$4
	subu	$6,$9,$6
	srl	$12,$7,15
	srl	$14,$5,15
	subu	$4,$3,$4
	srl	$11,$6,15
	and	$24,$12,$8
	and	$15,$14,$8
	and	$3,$11,$8
	srl	$9,$4,15
	sll	$12,$24,16
	sll	$14,$15,16
	subu	$12,$12,$24
	subu	$14,$14,$15
	and	$9,$9,$8
	sll	$11,$3,16
	addu	$5,$5,$14
	subu	$11,$11,$3
	addu	$7,$7,$12
	sll	$3,$9,16
	xor	$5,$5,$14
	subu	$9,$3,$9
	xor	$7,$7,$12
	addu	$6,$6,$11
	addu	$3,$4,$9
	addu	$5,$5,$7
	xor	$6,$6,$11
	addu	$5,$5,$6
	xor	$3,$3,$9
	addu	$3,$3,$5
	srl	$4,$3,16
	andi	$3,$3,0xffff
	addu	$3,$4,$3
	bne	$10,$13,.L3
	addu	$2,$3,$2

	dext	$2,$2,1,31
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
	.size	_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l, .-_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
	.type	_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l, @function
_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l:
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
.L9:
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
	bne	$15,$12,.L9
	sw	$2,-4($12)

	li	$9,65536			# 0x10000
	daddiu	$11,$8,16
	move	$10,$0
	addiu	$9,$9,1
.L10:
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
	bne	$11,$8,.L10
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
	.end	_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
	.size	_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l, .-_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
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
	.ent	_ZN12_GLOBAL__N_1L11weight_pp_cEPKhPhliiiiii
	.type	_ZN12_GLOBAL__N_1L11weight_pp_cEPKhPhliiiiii, @function
_ZN12_GLOBAL__N_1L11weight_pp_cEPKhPhliiiiii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$16,0($sp)
	blez	$8,.L22
	lw	$15,16($sp)

	addiu	$16,$7,-1
	move	$25,$0
	dext	$16,$16,0,32
	li	$24,255			# 0xff
	daddiu	$16,$16,1
	.align	3
.L26:
	blez	$7,.L24
	nop

	move	$3,$4
	move	$12,$5
	daddu	$14,$16,$4
	.align	3
.L25:
	lbu	$2,0($3)
	daddiu	$12,$12,1
	daddiu	$3,$3,1
	sll	$2,$2,6
	mul	$13,$2,$9
	addu	$2,$13,$10
	sra	$2,$2,$11
	addu	$2,$2,$15
	slt	$13,$2,256
	movz	$2,$24,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$14,$3,.L25
	sb	$2,-1($12)

.L24:
	addiu	$25,$25,1
	daddu	$4,$4,$6
	bne	$8,$25,.L26
	daddu	$5,$5,$6

.L22:
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L11weight_pp_cEPKhPhliiiiii
	.size	_ZN12_GLOBAL__N_1L11weight_pp_cEPKhPhliiiiii, .-_ZN12_GLOBAL__N_1L11weight_pp_cEPKhPhliiiiii
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
.L31:
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
	bne	$7,$10,.L31
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
.L36:
	srl	$12,$14,1
	daddu	$15,$6,$5
	sll	$12,$12,5
	move	$8,$15
	move	$7,$0
	.align	3
.L35:
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
	bne	$7,$13,.L35
	sb	$2,0($3)

	addiu	$14,$14,2
	bne	$14,$13,.L36
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
	blez	$18,.L40
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
.L44:
	daddu	$4,$4,$21
	blez	$11,.L42
	move	$13,$4

	daddu	$12,$4,$20
	dsubu	$3,$4,$9
	move	$25,$5
	move	$24,$6
	move	$15,$7
	move	$14,$8
	daddu	$16,$19,$4
	.align	3
.L43:
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
	bne	$12,$16,.L43
	sb	$2,-1($14)

.L42:
	addiu	$17,$17,1
	daddu	$5,$5,$10
	daddu	$6,$6,$10
	daddu	$7,$7,$10
	bne	$18,$17,.L44
	daddu	$8,$8,$10

.L40:
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
.L51:
	move	$25,$4
	move	$17,$6
	li	$16,4			# 0x4
	mtlo	$0
	move	$12,$0
	move	$13,$0
	move	$14,$0
.L50:
	daddiu	$24,$25,4
	move	$10,$17
	move	$3,$25
.L49:
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
	bne	$24,$3,.L49
	addu	$12,$2,$12

	addiu	$16,$16,-1
	daddu	$25,$25,$5
	bne	$16,$0,.L50
	daddu	$17,$17,$7

	sw	$14,0($8)
	daddiu	$8,$8,16
	daddiu	$4,$4,4
	sw	$13,-12($8)
	daddiu	$6,$6,4
	sw	$12,-8($8)
	bne	$18,$8,.L51
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
	blez	$6,.L56
	mtc1	$0,$f0

	addiu	$8,$6,-1
	daddiu	$2,$4,16
	dext	$8,$8,0,32
	li	$7,196608			# 0x30000
	dlsa	$8,$8,$2,4
	ori	$7,$7,0x99bb
	.align	3
.L58:
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
	bne	$8,$4,.L58
	add.s	$f0,$f0,$f1

.L56:
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
	blez	$9,.L70
	addiu	$14,$8,-1

	move	$13,$0
	dext	$14,$14,0,32
	daddiu	$14,$14,1
	.align	3
.L66:
	blez	$8,.L64
	nop

	move	$2,$4
	move	$11,$6
	daddu	$12,$14,$4
	.align	3
.L65:
	lbu	$3,0($2)
	daddiu	$11,$11,1
	daddiu	$2,$2,1
	sll	$3,$3,$10
	bne	$2,$12,.L65
	sb	$3,-1($11)

.L64:
	addiu	$13,$13,1
	daddu	$6,$6,$7
	bne	$9,$13,.L66
	daddu	$4,$4,$5

.L70:
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
	blez	$9,.L79
	addiu	$15,$8,-1

	dsll	$5,$5,1
	dext	$15,$15,0,32
	move	$14,$0
	dsll	$15,$15,1
	seb	$11,$11
	daddiu	$15,$15,2
	.align	3
.L75:
	blez	$8,.L73
	nop

	move	$3,$4
	move	$12,$6
	daddu	$13,$15,$4
	.align	3
.L74:
	lhu	$2,0($3)
	daddiu	$12,$12,1
	daddiu	$3,$3,2
	sra	$2,$2,$10
	and	$2,$2,$11
	bne	$13,$3,.L74
	sb	$2,-1($12)

.L73:
	addiu	$14,$14,1
	daddu	$6,$6,$7
	bne	$9,$14,.L75
	daddu	$4,$4,$5

.L79:
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
	blez	$9,.L88
	addiu	$15,$8,-1

	dsll	$5,$5,1
	dext	$15,$15,0,32
	move	$14,$0
	dsll	$15,$15,1
	seb	$11,$11
	daddiu	$15,$15,2
	.align	3
.L84:
	blez	$8,.L82
	nop

	move	$3,$4
	move	$12,$6
	daddu	$13,$15,$4
	.align	3
.L83:
	lhu	$2,0($3)
	daddiu	$12,$12,1
	daddiu	$3,$3,2
	sll	$2,$2,$10
	and	$2,$2,$11
	bne	$13,$3,.L83
	sb	$2,-1($12)

.L82:
	addiu	$14,$14,1
	daddu	$6,$6,$7
	bne	$9,$14,.L84
	daddu	$4,$4,$5

.L88:
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
	blez	$10,.L94
	mul.d	$f4,$f4,$f0

	ld	$3,%got_page(.LC1)($13)
	addiu	$12,$10,-1
	daddiu	$2,$6,4
	dext	$12,$12,0,32
	dlsa	$12,$12,$2,2
	ldc1	$f5,%got_ofst(.LC1)($3)
	.align	3
.L91:
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
	bne	$12,$6,.L91
	swc1	$f0,-4($4)

.L94:
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
	blez	$6,.L102
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
.L99:
	ldc1	$f0,0($5)
	mul.d	$f0,$f0,$f3
	sub.d	$f2,$f0,$f1
	c.le.d	$fcc0,$f1,$f0
	trunc.w.d $f0,$f0
	bc1f	$fcc0,.L98
	mfc1	$2,$f0

	trunc.w.d $f0,$f2
	mfc1	$2,$f0
	or	$2,$2,$6
.L98:
	daddiu	$5,$5,8
	sh	$2,0($4)
	bne	$5,$3,.L99
	daddiu	$4,$4,2

.L102:
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
	blez	$6,.L108
	daddiu	$7,$7,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_1L16cuTreeFix8UnpackEPdPti)))

	addiu	$3,$6,-1
	daddiu	$2,$5,2
	dext	$3,$3,0,32
	dlsa	$3,$3,$2,1
	ld	$2,%got_page(.LC0)($7)
	ldc1	$f1,%got_ofst(.LC0)($2)
	.align	3
.L105:
	lh	$2,0($5)
	daddiu	$4,$4,8
	daddiu	$5,$5,2
	mtc1	$2,$f0
	cvt.d.w	$f0,$f0
	mul.d	$f0,$f0,$f1
	bne	$5,$3,.L105
	sdc1	$f0,-8($4)

.L108:
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
.L111:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
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
.L116:
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
	bne	$10,$0,.L116
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
.L121:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,4
.L120:
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
	bne	$24,$3,.L120
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L121
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
.L127:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,4
.L126:
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
	bne	$3,$17,.L126
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L127
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
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,4			# 0x4
.L133:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,4
.L132:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L132
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L133
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
.L139:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L138:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L138
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L139
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
.L145:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L144:
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
	bne	$14,$3,.L144
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L145
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
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi8ELi8EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi8ELi8EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi8ELi8EEEvPKhS2_S2_S2_S2_lPi:
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
.L151:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,8
	.align	3
.L150:
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
	bne	$3,$17,.L150
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L151
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi8ELi8EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi8ELi8EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi8ELi8EEEvPKhS2_S2_S2_S2_lPi
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
.L157:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L156:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L156
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L157
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
.L163:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L162:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L162
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L163
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
.L169:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L168:
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
	bne	$14,$3,.L168
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L169
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
	.ent	_ZN12_GLOBAL__N_13sadILi16ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi16ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi16ELi16EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,16			# 0x10
	move	$10,$0
	.align	3
.L175:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L174:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L174
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L175
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi16ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi16ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi16ELi16EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi16ELi16EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi16ELi16EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi16ELi16EEEvPKhS2_S2_S2_S2_lPi:
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
.L181:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,16
	.align	3
.L180:
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
	bne	$3,$17,.L180
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L181
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi16ELi16EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi16ELi16EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi16ELi16EEEvPKhS2_S2_S2_S2_lPi
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
.L187:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L186:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L186
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L187
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
.L193:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L192:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L192
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L193
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
.L199:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L198:
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
	bne	$14,$3,.L198
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L199
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
	.ent	_ZN12_GLOBAL__N_13sadILi32ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi32ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi32ELi32EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,32			# 0x20
	move	$10,$0
	.align	3
.L205:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L204:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L204
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L205
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi32ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi32ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi32ELi32EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi32ELi32EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi32ELi32EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi32ELi32EEEvPKhS2_S2_S2_S2_lPi:
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
.L211:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,32
	.align	3
.L210:
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
	bne	$3,$5,.L210
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L211
	daddu	$8,$8,$9

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi32ELi32EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi32ELi32EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi32ELi32EEEvPKhS2_S2_S2_S2_lPi
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
.L217:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
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
.L223:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
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
.L229:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
	.align	3
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
	.end	_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sadILi64ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi64ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi64ELi64EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,64			# 0x40
	move	$10,$0
	.align	3
.L235:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L234:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L234
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L235
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi64ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi64ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi64ELi64EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi64ELi64EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi64ELi64EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi64ELi64EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$24,$4,4096
	sw	$0,0($9)
	move	$14,$0
	move	$13,$0
	sw	$0,4($9)
	move	$12,$0
	sw	$0,8($9)
	.align	3
.L241:
	move	$11,$5
	move	$10,$6
	move	$3,$7
	daddiu	$15,$4,64
	.align	3
.L240:
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
	bne	$15,$4,.L240
	sw	$14,8($9)

	move	$4,$15
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$24,$15,.L241
	daddu	$7,$7,$8

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi64ELi64EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi64ELi64EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi64ELi64EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x4ILi64ELi64EEEvPKhS2_S2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x4ILi64ELi64EEEvPKhS2_S2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x4ILi64ELi64EEEvPKhS2_S2_S2_S2_lPi:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$24,$0
	sw	$0,0($10)
	sd	$17,8($sp)
	daddiu	$17,$4,4096
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
.L247:
	move	$13,$16
	move	$12,$6
	move	$11,$7
	move	$3,$8
	daddiu	$5,$4,64
	.align	3
.L246:
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
	bne	$5,$4,.L246
	sw	$25,12($10)

	move	$4,$5
	daddu	$16,$16,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$5,$17,.L247
	daddu	$8,$8,$9

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x4ILi64ELi64EEEvPKhS2_S2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x4ILi64ELi64EEEvPKhS2_S2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x4ILi64ELi64EEEvPKhS2_S2_S2_S2_lPi
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
.L253:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
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
.L259:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
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
.L264:
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
	bne	$10,$0,.L264
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
.L269:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,4
.L268:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L268
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L269
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
.L275:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,4
.L274:
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
	bne	$24,$3,.L274
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L275
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
.L281:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,4
.L280:
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
	bne	$3,$17,.L280
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L281
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
.L287:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,4
.L286:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L286
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L287
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
.L293:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L292:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L292
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L293
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
.L299:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L298:
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
	bne	$14,$3,.L298
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L299
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
.L305:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L304:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L304
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L305
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
.L311:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,8
	.align	3
.L310:
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
	bne	$24,$3,.L310
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L311
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
.L317:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,8
	.align	3
.L316:
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
	bne	$3,$17,.L316
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L317
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
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,4			# 0x4
.L323:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
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
	.end	_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi16ELi8EEEvPKsS2_Phlll
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
.L341:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L340:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L340
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L341
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
.L347:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L346:
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
	bne	$24,$3,.L346
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L347
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
.L353:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,16
	.align	3
.L352:
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
	bne	$3,$17,.L352
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L353
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
.L359:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
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
.L365:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
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
.L371:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
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
	.end	_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi8ELi16EEEvPKsS2_Phlll
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
.L377:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L376:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L376
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L377
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
.L383:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,8
	.align	3
.L382:
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
	bne	$24,$3,.L382
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L383
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
.L389:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,8
	.align	3
.L388:
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
	bne	$3,$17,.L388
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L389
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
.L395:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
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
.L401:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
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
.L407:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
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
	.end	_ZN12_GLOBAL__N_16addAvgILi16ELi12EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi16ELi12EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi16ELi12EEEvPKsS2_Phlll
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
.L413:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L412:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L412
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L413
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
.L419:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L418:
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
	bne	$24,$3,.L418
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L419
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
.L425:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,16
	.align	3
.L424:
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
	bne	$3,$17,.L424
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L425
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
.L431:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
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
.L437:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,12
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
.L443:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,24
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
	.end	_ZN12_GLOBAL__N_16addAvgILi12ELi16EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi12ELi16EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi12ELi16EEEvPKsS2_Phlll
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
.L449:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,12
	.align	3
.L448:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L448
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L449
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
.L455:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,12
	.align	3
.L454:
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
	bne	$24,$3,.L454
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L455
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
.L461:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,12
	.align	3
.L460:
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
	bne	$3,$17,.L460
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L461
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
.L467:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,12
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
.L473:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
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
.L479:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
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
	.end	_ZN12_GLOBAL__N_16addAvgILi16ELi4EEEvPKsS2_Phlll
	.size	_ZN12_GLOBAL__N_16addAvgILi16ELi4EEEvPKsS2_Phlll, .-_ZN12_GLOBAL__N_16addAvgILi16ELi4EEEvPKsS2_Phlll
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
.L485:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L484:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L484
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L485
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
.L491:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L490:
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
	bne	$24,$3,.L490
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L491
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
.L497:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,16
	.align	3
.L496:
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
	bne	$3,$17,.L496
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L497
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
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,4			# 0x4
.L503:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
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
.L509:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
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
.L514:
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
	bne	$10,$0,.L514
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
.L519:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,4
.L518:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L518
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L519
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
.L525:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,4
.L524:
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
	bne	$24,$3,.L524
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L525
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
.L531:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,4
.L530:
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
	bne	$3,$17,.L530
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L531
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
.L537:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,4
.L536:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L536
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L537
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
.L543:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L542:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L542
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L543
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
.L549:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L548:
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
	bne	$14,$3,.L548
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L549
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
.L555:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L554:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L554
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L555
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
.L561:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L560:
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
	bne	$24,$3,.L560
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L561
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
.L567:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,32
	.align	3
.L566:
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
	bne	$3,$5,.L566
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L567
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
.L573:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L572:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L572
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L573
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
.L579:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L578:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L578
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L579
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
.L585:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L584:
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
	bne	$14,$3,.L584
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L585
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
.L591:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L590:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L590
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L591
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
.L597:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L596:
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
	bne	$24,$3,.L596
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L597
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
.L603:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,16
	.align	3
.L602:
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
	bne	$3,$5,.L602
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L603
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
.L609:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L608:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L608
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L609
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
.L615:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L614:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L614
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L615
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
.L621:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L620:
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
	bne	$14,$3,.L620
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L621
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
.L627:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L626:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L626
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L627
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
.L633:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L632:
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
	bne	$24,$3,.L632
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L633
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
.L639:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,32
	.align	3
.L638:
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
	bne	$3,$5,.L638
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L639
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
.L645:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L644:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L644
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L645
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
.L651:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,24
	.align	3
.L650:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L650
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L651
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
.L657:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,48
	.align	3
.L656:
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
	bne	$14,$3,.L656
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L657
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
.L663:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,24
	.align	3
.L662:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L662
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L663
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
.L669:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,24
	.align	3
.L668:
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
	bne	$24,$3,.L668
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L669
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
.L675:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,24
	.align	3
.L674:
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
	bne	$3,$5,.L674
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L675
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
.L681:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,24
	.align	3
.L680:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L680
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L681
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
.L687:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L686:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L686
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L687
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
.L693:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L692:
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
	bne	$14,$3,.L692
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L693
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
.L699:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L698:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L698
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L699
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
.L705:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L704:
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
	bne	$24,$3,.L704
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L705
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
.L711:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,32
	.align	3
.L710:
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
	bne	$3,$17,.L710
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L711
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
.L717:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L716:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L716
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L717
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
.L723:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L722:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L722
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L723
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
.L729:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L728:
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
	bne	$14,$3,.L728
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L729
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
.L735:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L734:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L734
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L735
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
.L741:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,8
	.align	3
.L740:
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
	bne	$24,$3,.L740
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L741
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
.L747:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,8
	.align	3
.L746:
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
	bne	$3,$17,.L746
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L747
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
.L753:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L752:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L752
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L753
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
.L759:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L758:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L758
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L759
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
.L765:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
	.align	3
.L764:
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
	bne	$14,$3,.L764
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L765
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
.L771:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L770:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L770
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L771
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
.L777:
	move	$11,$5
	move	$10,$6
	move	$3,$7
	daddiu	$15,$4,64
	.align	3
.L776:
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
	bne	$15,$4,.L776
	sw	$14,8($9)

	move	$4,$15
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$24,$15,.L777
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
.L783:
	move	$13,$16
	move	$12,$6
	move	$11,$7
	move	$3,$8
	daddiu	$5,$4,64
	.align	3
.L782:
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
	bne	$5,$4,.L782
	sw	$25,12($10)

	move	$4,$5
	daddu	$16,$16,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$5,$17,.L783
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
.L789:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L788:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L788
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L789
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
.L795:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L794:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L794
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L795
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
.L801:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L800:
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
	bne	$14,$3,.L800
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L801
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
.L807:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L806:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L806
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L807
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
.L813:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L812:
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
	bne	$24,$3,.L812
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L813
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
.L819:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,32
	.align	3
.L818:
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
	bne	$3,$5,.L818
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L819
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
.L825:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L824:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L824
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L825
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
.L831:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L830:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L830
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L831
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
.L837:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
	.align	3
.L836:
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
	bne	$14,$3,.L836
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L837
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
.L843:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L842:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L842
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L843
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
.L849:
	move	$11,$5
	move	$10,$6
	move	$3,$7
	daddiu	$15,$4,64
	.align	3
.L848:
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
	bne	$15,$4,.L848
	sw	$14,8($9)

	move	$4,$15
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$24,$15,.L849
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
.L855:
	move	$13,$16
	move	$12,$6
	move	$11,$7
	move	$3,$8
	daddiu	$5,$4,64
	.align	3
.L854:
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
	bne	$5,$4,.L854
	sw	$25,12($10)

	move	$4,$5
	daddu	$16,$16,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$5,$17,.L855
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
.L861:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L860:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L860
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L861
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
.L867:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,48
	.align	3
.L866:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L866
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L867
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
.L873:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,96
	.align	3
.L872:
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
	bne	$14,$3,.L872
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L873
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
.L879:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,48
	.align	3
.L878:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L878
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L879
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
.L885:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,48
	.align	3
.L884:
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
	bne	$24,$3,.L884
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L885
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
.L891:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,48
	.align	3
.L890:
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
	bne	$3,$5,.L890
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L891
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
.L897:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,48
	.align	3
.L896:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L896
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L897
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
.L903:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L902:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L902
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L903
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
.L909:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,128
	.align	3
.L908:
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
	bne	$14,$3,.L908
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L909
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
.L915:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L914:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L914
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L915
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
.L921:
	move	$11,$5
	move	$10,$6
	move	$3,$7
	daddiu	$15,$4,64
	.align	3
.L920:
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
	bne	$15,$4,.L920
	sw	$14,8($9)

	move	$4,$15
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$24,$15,.L921
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
.L927:
	move	$13,$16
	move	$12,$6
	move	$11,$7
	move	$3,$8
	daddiu	$5,$4,64
	.align	3
.L926:
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
	bne	$5,$4,.L926
	sw	$25,12($10)

	move	$4,$5
	daddu	$16,$16,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$5,$17,.L927
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
.L933:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L932:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L932
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L933
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
.L939:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L938:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L938
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L939
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
.L945:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L944:
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
	bne	$14,$3,.L944
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L945
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
.L951:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L950:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L950
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L951
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
.L957:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L956:
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
	bne	$24,$3,.L956
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L957
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
.L963:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,16
	.align	3
.L962:
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
	bne	$3,$5,.L962
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L963
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
.L969:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L968:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L968
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L969
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
	.ent	_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii
	.type	_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii, @function
_ZN12_GLOBAL__N_16ads_x1ILi4ELi4EEEiPiPjiPtPsii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$9,.L977
	move	$6,$0

	lw	$14,0($4)
	move	$2,$0
	move	$4,$0
	.align	3
.L976:
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
	beq	$3,$0,.L975
	dlsa	$13,$2,$8,1

	addiu	$2,$2,1
	sh	$6,0($13)
.L975:
	seh	$6,$11
	slt	$3,$6,$9
	bne	$3,$0,.L976
	move	$4,$6

	jr	$31
	nop

	.align	3
.L977:
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
	blez	$9,.L986
	dlsa	$6,$6,$5,2

	daddiu	$sp,$sp,-16
	lw	$14,0($4)
	lw	$13,4($4)
	move	$12,$0
	move	$2,$0
	move	$4,$0
	sd	$16,0($sp)
	.align	3
.L985:
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
	beq	$3,$0,.L984
	dlsa	$24,$2,$8,1

	addiu	$2,$2,1
	sh	$12,0($24)
.L984:
	seh	$12,$15
	slt	$3,$12,$9
	bne	$3,$0,.L985
	move	$4,$12

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L986:
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
	blez	$9,.L998
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
.L997:
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
	blez	$9,.L1020
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
.L1019:
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
	beq	$3,$0,.L1018
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L1018:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L1019
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
.L1020:
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
	blez	$9,.L1036
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
.L1035:
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
	beq	$3,$0,.L1034
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L1034:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L1035
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
.L1036:
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
	blez	$9,.L1048
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
.L1047:
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
	beq	$3,$0,.L1046
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L1046:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L1047
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
.L1048:
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
	blez	$9,.L1058
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
.L1057:
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
	beq	$3,$0,.L1056
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L1056:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L1057
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
.L1058:
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
	blez	$9,.L1074
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
.L1073:
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
	beq	$3,$0,.L1072
	daddiu	$11,$11,4

	addiu	$2,$2,1
	sh	$12,0($15)
.L1072:
	seh	$12,$14
	slt	$3,$12,$9
	bne	$3,$0,.L1073
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
.L1074:
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
	.ent	_ZN12_GLOBAL__N_15satd8ILi8ELi8EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi8ELi8EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi8ELi8EEEiPKhlS2_l:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi8ELi8EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi8ELi8EEEiPKhlS2_l)))
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

	dlsa	$6,$20,$19,2
	dlsa	$4,$18,$17,2
	move	$7,$20
	move	$5,$18
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
	.end	_ZN12_GLOBAL__N_15satd8ILi8ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi8ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi8ELi8EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$19,24($sp)
	move	$19,$7
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l)))
	sd	$18,16($sp)
	move	$18,$6
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$17,8($sp)
	move	$17,$5
	sd	$16,0($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	sd	$31,40($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$16,$4

	dlsa	$6,$19,$18,2
	dlsa	$4,$17,$16,2
	move	$7,$19
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$16,$2

	ld	$31,40($sp)
	addu	$2,$2,$16
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi16EEEiPKhlS2_l:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi16EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$19,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi16EEEiPKhlS2_l)))
	sd	$fp,80($sp)
	li	$fp,4			# 0x4
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
.L1089:
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
	bne	$fp,$0,.L1089
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
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi16EEEiPKhlS2_l
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
.L1093:
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
	bne	$20,$3,.L1094
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
.L1094:
	b	.L1093
	li	$20,1			# 0x1

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
.L1097:
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
	bne	$16,$0,.L1097
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
.L1101:
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
	bne	$fp,$0,.L1101
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
	.ent	_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l:
	.frame	$sp,112,$31		# vars= 16, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	dsll	$2,$5,2
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$23,80($sp)
	move	$23,$0
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l)))
	sd	$22,72($sp)
	move	$22,$6
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$21,64($sp)
	li	$21,4			# 0x4
	sd	$20,56($sp)
	move	$20,$5
	sd	$19,48($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	move	$19,$7
	sd	$17,32($sp)
	move	$17,$4
	sd	$2,8($sp)
	dsll	$2,$7,2
	sd	$31,104($sp)
	sd	$fp,96($sp)
	sd	$18,40($sp)
	sd	$16,24($sp)
	sd	$2,0($sp)
.L1106:
	daddiu	$18,$17,12
	move	$fp,$22
	move	$16,$17
.L1105:
	move	$6,$fp
	move	$4,$16
	move	$7,$19
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$20

	daddiu	$16,$16,4
	addu	$2,$2,$23
	daddiu	$fp,$fp,4
	bne	$16,$18,.L1105
	move	$23,$2

	ld	$3,8($sp)
	addiu	$21,$21,-1
	daddu	$17,$17,$3
	ld	$3,0($sp)
	bne	$21,$0,.L1106
	daddu	$22,$22,$3

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
	.end	_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l
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
	.ent	_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$23,56($sp)
	dsll	$23,$5,2
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)))
	sd	$22,48($sp)
	dsll	$22,$7,2
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$21,40($sp)
	move	$21,$5
	sd	$20,32($sp)
	move	$20,$7
	sd	$19,24($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	move	$19,$0
	sd	$18,16($sp)
	move	$18,$4
	sd	$17,8($sp)
	move	$17,$6
	sd	$16,0($sp)
	li	$16,4			# 0x4
	sd	$31,72($sp)
.L1113:
	move	$6,$17
	move	$4,$18
	move	$7,$20
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$21

	addiu	$16,$16,-1
	addu	$2,$2,$19
	daddu	$18,$18,$23
	move	$19,$2
	bne	$16,$0,.L1113
	daddu	$17,$17,$22

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
	.end	_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi32ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi32ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi32ELi32EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$17,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi32EEEiPKhlS2_l)))
	sd	$2,16($sp)
	dsll	$2,$7,2
	ld	$17,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$23,96($sp)
	move	$23,$0
	sd	$22,88($sp)
	move	$22,$6
	sd	$21,80($sp)
	li	$21,8			# 0x8
	sd	$20,72($sp)
	move	$20,$4
	sd	$19,64($sp)
	move	$19,$5
	sd	$18,56($sp)
	move	$18,$7
	sd	$2,8($sp)
	daddiu	$2,$17,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$16,40($sp)
	sd	$2,0($sp)
	.align	3
.L1118:
	daddiu	$16,$20,32
	move	$17,$22
	move	$fp,$20
.L1117:
	ld	$25,0($sp)
	move	$6,$17
	move	$4,$fp
	move	$7,$18
	move	$5,$19
	daddiu	$fp,$fp,8
	jalr	$25
	daddiu	$17,$17,8

	addu	$2,$2,$23
	bne	$fp,$16,.L1117
	move	$23,$2

	ld	$3,16($sp)
	addiu	$21,$21,-1
	daddu	$20,$20,$3
	ld	$3,8($sp)
	bne	$21,$0,.L1118
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
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi32EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$17,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l)))
	sd	$2,16($sp)
	dsll	$2,$7,2
	ld	$17,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$23,96($sp)
	move	$23,$0
	sd	$22,88($sp)
	move	$22,$6
	sd	$21,80($sp)
	li	$21,4			# 0x4
	sd	$20,72($sp)
	move	$20,$4
	sd	$19,64($sp)
	move	$19,$5
	sd	$18,56($sp)
	move	$18,$7
	sd	$2,8($sp)
	daddiu	$2,$17,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$16,40($sp)
	sd	$2,0($sp)
.L1124:
	daddiu	$16,$20,32
	move	$17,$22
	move	$fp,$20
.L1123:
	ld	$25,0($sp)
	move	$6,$17
	move	$4,$fp
	move	$7,$18
	move	$5,$19
	daddiu	$fp,$fp,8
	jalr	$25
	daddiu	$17,$17,8

	addu	$2,$2,$23
	bne	$fp,$16,.L1123
	move	$23,$2

	ld	$3,16($sp)
	addiu	$21,$21,-1
	daddu	$20,$20,$3
	ld	$3,8($sp)
	bne	$21,$0,.L1124
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
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$19,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l)))
	sd	$fp,80($sp)
	li	$fp,8			# 0x8
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
.L1129:
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
	bne	$fp,$0,.L1129
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
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$17,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l)))
	sd	$2,16($sp)
	dsll	$2,$7,2
	ld	$17,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$23,96($sp)
	move	$23,$0
	sd	$22,88($sp)
	move	$22,$6
	sd	$21,80($sp)
	li	$21,6			# 0x6
	sd	$20,72($sp)
	move	$20,$4
	sd	$19,64($sp)
	move	$19,$5
	sd	$18,56($sp)
	move	$18,$7
	sd	$2,8($sp)
	daddiu	$2,$17,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$16,40($sp)
	sd	$2,0($sp)
	.align	3
.L1134:
	daddiu	$16,$20,32
	move	$17,$22
	move	$fp,$20
.L1133:
	ld	$25,0($sp)
	move	$6,$17
	move	$4,$fp
	move	$7,$18
	move	$5,$19
	daddiu	$fp,$fp,8
	jalr	$25
	daddiu	$17,$17,8

	addu	$2,$2,$23
	bne	$fp,$16,.L1133
	move	$23,$2

	ld	$3,16($sp)
	addiu	$21,$21,-1
	daddu	$20,$20,$3
	ld	$3,8($sp)
	bne	$21,$0,.L1134
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
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$18,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l)))
	sd	$2,16($sp)
	dsll	$2,$7,2
	ld	$18,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
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
	sd	$2,8($sp)
	daddiu	$2,$18,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$17,48($sp)
	sd	$2,0($sp)
	.align	3
.L1140:
	daddiu	$17,$16,24
	move	$18,$22
	move	$fp,$16
.L1139:
	ld	$25,0($sp)
	move	$6,$18
	move	$4,$fp
	move	$7,$19
	move	$5,$20
	daddiu	$fp,$fp,8
	jalr	$25
	daddiu	$18,$18,8

	addu	$2,$2,$23
	bne	$fp,$17,.L1139
	move	$23,$2

	ld	$3,16($sp)
	addiu	$21,$21,-1
	daddu	$16,$16,$3
	ld	$3,8($sp)
	bne	$21,$0,.L1140
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
	.end	_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l
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
	sd	$2,16($sp)
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
	sd	$2,8($sp)
	li	$2,2			# 0x2
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$22,88($sp)
	sd	$19,64($sp)
	sd	$2,0($sp)
.L1146:
	daddiu	$19,$20,32
	move	$22,$21
	move	$fp,$20
.L1145:
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
	bne	$fp,$19,.L1145
	move	$23,$2

	ld	$3,16($sp)
	li	$4,1			# 0x1
	daddu	$20,$20,$3
	ld	$3,8($sp)
	daddu	$21,$21,$3
	ld	$3,0($sp)
	bne	$3,$4,.L1147
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
.L1147:
	li	$2,1			# 0x1
	b	.L1146
	sd	$2,0($sp)

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
.L1151:
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
	bne	$16,$0,.L1151
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
	.ent	_ZN12_GLOBAL__N_15satd8ILi64ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi64ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi64ELi64EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi64EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$17,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi64EEEiPKhlS2_l)))
	sd	$2,16($sp)
	dsll	$2,$7,2
	ld	$17,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$23,96($sp)
	move	$23,$0
	sd	$22,88($sp)
	move	$22,$6
	sd	$20,72($sp)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	move	$20,$4
	sd	$19,64($sp)
	move	$19,$5
	sd	$18,56($sp)
	move	$18,$7
	sd	$2,8($sp)
	li	$2,16			# 0x10
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$21,80($sp)
	sd	$16,40($sp)
	sd	$2,0($sp)
	.align	3
.L1156:
	daddiu	$16,$20,64
	move	$21,$22
	move	$fp,$20
	.align	3
.L1155:
	move	$6,$21
	move	$4,$fp
	move	$7,$18
	move	$5,$19
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
1:	jalr	$25
	daddiu	$fp,$fp,8

	daddiu	$21,$21,8
	addu	$2,$2,$23
	bne	$fp,$16,.L1155
	move	$23,$2

	ld	$4,16($sp)
	ld	$3,0($sp)
	daddu	$20,$20,$4
	ld	$4,8($sp)
	addiu	$3,$3,-1
	sd	$3,0($sp)
	bne	$3,$0,.L1156
	daddu	$22,$22,$4

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
	.end	_ZN12_GLOBAL__N_15satd8ILi64ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi64ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi64ELi64EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$17,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l)))
	sd	$2,16($sp)
	dsll	$2,$7,2
	ld	$17,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$23,96($sp)
	move	$23,$0
	sd	$22,88($sp)
	move	$22,$6
	sd	$20,72($sp)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	move	$20,$4
	sd	$19,64($sp)
	move	$19,$5
	sd	$18,56($sp)
	move	$18,$7
	sd	$2,8($sp)
	li	$2,8			# 0x8
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$21,80($sp)
	sd	$16,40($sp)
	sd	$2,0($sp)
	.align	3
.L1162:
	daddiu	$16,$20,64
	move	$21,$22
	move	$fp,$20
	.align	3
.L1161:
	move	$6,$21
	move	$4,$fp
	move	$7,$18
	move	$5,$19
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
1:	jalr	$25
	daddiu	$fp,$fp,8

	daddiu	$21,$21,8
	addu	$2,$2,$23
	bne	$fp,$16,.L1161
	move	$23,$2

	ld	$4,16($sp)
	ld	$3,0($sp)
	daddu	$20,$20,$4
	ld	$4,8($sp)
	addiu	$3,$3,-1
	sd	$3,0($sp)
	bne	$3,$0,.L1162
	daddu	$22,$22,$4

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
	.end	_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$17,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l)))
	sd	$2,16($sp)
	dsll	$2,$7,2
	ld	$17,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$23,96($sp)
	move	$23,$0
	sd	$22,88($sp)
	move	$22,$6
	sd	$21,80($sp)
	li	$21,16			# 0x10
	sd	$20,72($sp)
	move	$20,$4
	sd	$19,64($sp)
	move	$19,$5
	sd	$18,56($sp)
	move	$18,$7
	sd	$2,8($sp)
	daddiu	$2,$17,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$16,40($sp)
	sd	$2,0($sp)
	.align	3
.L1168:
	daddiu	$16,$20,32
	move	$17,$22
	move	$fp,$20
.L1167:
	ld	$25,0($sp)
	move	$6,$17
	move	$4,$fp
	move	$7,$18
	move	$5,$19
	daddiu	$fp,$fp,8
	jalr	$25
	daddiu	$17,$17,8

	addu	$2,$2,$23
	bne	$fp,$16,.L1167
	move	$23,$2

	ld	$3,16($sp)
	addiu	$21,$21,-1
	daddu	$20,$20,$3
	ld	$3,8($sp)
	bne	$21,$0,.L1168
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
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$17,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l)))
	sd	$2,16($sp)
	dsll	$2,$7,2
	ld	$17,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$23,96($sp)
	move	$23,$0
	sd	$22,88($sp)
	move	$22,$6
	sd	$20,72($sp)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	move	$20,$4
	sd	$19,64($sp)
	move	$19,$5
	sd	$18,56($sp)
	move	$18,$7
	sd	$2,8($sp)
	li	$2,12			# 0xc
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$21,80($sp)
	sd	$16,40($sp)
	sd	$2,0($sp)
	.align	3
.L1174:
	daddiu	$16,$20,64
	move	$21,$22
	move	$fp,$20
	.align	3
.L1173:
	move	$6,$21
	move	$4,$fp
	move	$7,$18
	move	$5,$19
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
1:	jalr	$25
	daddiu	$fp,$fp,8

	daddiu	$21,$21,8
	addu	$2,$2,$23
	bne	$fp,$16,.L1173
	move	$23,$2

	ld	$4,16($sp)
	ld	$3,0($sp)
	daddu	$20,$20,$4
	ld	$4,8($sp)
	addiu	$3,$3,-1
	sd	$3,0($sp)
	bne	$3,$0,.L1174
	daddu	$22,$22,$4

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
	.end	_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi64ELi48EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$17,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l)))
	sd	$2,16($sp)
	dsll	$2,$7,2
	ld	$17,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$23,96($sp)
	move	$23,$0
	sd	$22,88($sp)
	move	$22,$6
	sd	$20,72($sp)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	move	$20,$4
	sd	$19,64($sp)
	move	$19,$5
	sd	$18,56($sp)
	move	$18,$7
	sd	$2,8($sp)
	li	$2,16			# 0x10
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$21,80($sp)
	sd	$16,40($sp)
	sd	$2,0($sp)
	.align	3
.L1180:
	daddiu	$16,$20,48
	move	$21,$22
	move	$fp,$20
	.align	3
.L1179:
	move	$6,$21
	move	$4,$fp
	move	$7,$18
	move	$5,$19
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
1:	jalr	$25
	daddiu	$fp,$fp,8

	daddiu	$21,$21,8
	addu	$2,$2,$23
	bne	$fp,$16,.L1179
	move	$23,$2

	ld	$4,16($sp)
	ld	$3,0($sp)
	daddu	$20,$20,$4
	ld	$4,8($sp)
	addiu	$3,$3,-1
	sd	$3,0($sp)
	bne	$3,$0,.L1180
	daddu	$22,$22,$4

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
	.end	_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi48ELi64EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$17,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l)))
	sd	$2,16($sp)
	dsll	$2,$7,2
	ld	$17,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$23,96($sp)
	move	$23,$0
	sd	$22,88($sp)
	move	$22,$6
	sd	$20,72($sp)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	move	$20,$4
	sd	$19,64($sp)
	move	$19,$5
	sd	$18,56($sp)
	move	$18,$7
	sd	$2,8($sp)
	li	$2,4			# 0x4
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$21,80($sp)
	sd	$16,40($sp)
	sd	$2,0($sp)
.L1186:
	daddiu	$16,$20,64
	move	$21,$22
	move	$fp,$20
	.align	3
.L1185:
	move	$6,$21
	move	$4,$fp
	move	$7,$18
	move	$5,$19
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l
1:	jalr	$25
	daddiu	$fp,$fp,8

	daddiu	$21,$21,8
	addu	$2,$2,$23
	bne	$fp,$16,.L1185
	move	$23,$2

	ld	$4,16($sp)
	ld	$3,0($sp)
	daddu	$20,$20,$4
	ld	$4,8($sp)
	addiu	$3,$3,-1
	sd	$3,0($sp)
	bne	$3,$0,.L1186
	daddu	$22,$22,$4

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
	.end	_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi64ELi16EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$19,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l)))
	sd	$fp,80($sp)
	li	$fp,16			# 0x10
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
.L1191:
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
	bne	$fp,$0,.L1191
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
	.end	_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l
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
.L1196:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,4
.L1195:
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
	bne	$13,$3,.L1195
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1196
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
.L1202:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1201:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1201
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1202
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
.L1208:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,8
.L1207:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1207
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1208
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
.L1214:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1213:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1213
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1214
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
	.ent	_ZN12_GLOBAL__N_113blockfill_s_cILi4EEEvPsls
	.type	_ZN12_GLOBAL__N_113blockfill_s_cILi4EEEvPsls, @function
_ZN12_GLOBAL__N_113blockfill_s_cILi4EEEvPsls:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$7,4			# 0x4
.L1220:
	daddiu	$3,$4,8
	move	$2,$4
.L1219:
	sh	$6,0($2)
	daddiu	$2,$2,2
	bne	$2,$3,.L1219
	nop

	addiu	$7,$7,-1
	bne	$7,$0,.L1220
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113blockfill_s_cILi4EEEvPsls
	.size	_ZN12_GLOBAL__N_113blockfill_s_cILi4EEEvPsls, .-_ZN12_GLOBAL__N_113blockfill_s_cILi4EEEvPsls
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
.L1226:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,8
.L1225:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1225
	sh	$3,-2($8)

	daddiu	$4,$4,8
	bne	$10,$4,.L1226
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
.L1232:
	move	$3,$5
	move	$8,$4
	daddiu	$10,$5,8
.L1231:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$10,$3,.L1231
	sh	$2,-2($8)

	daddiu	$4,$4,8
	bne	$11,$4,.L1232
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
.L1238:
	move	$3,$4
	daddiu	$8,$5,8
.L1237:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1237
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1238
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
.L1244:
	move	$3,$4
	daddiu	$8,$5,8
.L1243:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1243
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1244
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
.L1250:
	daddiu	$7,$4,4
	move	$2,$5
.L1249:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1249
	sb	$3,-1($4)

	bne	$4,$8,.L1250
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
.L1256:
	move	$3,$4
	daddiu	$7,$4,8
.L1255:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1255
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1256
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
.L1262:
	move	$2,$4
	daddiu	$7,$4,4
.L1261:
	lbu	$3,0($2)
	daddiu	$2,$2,1
	madd	$3,$3
	bne	$7,$2,.L1261
	addu	$6,$3,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1262
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
	.ent	_ZN12_GLOBAL__N_111getResidualILi4EEEvPKhS2_Psl
	.type	_ZN12_GLOBAL__N_111getResidualILi4EEEvPKhS2_Psl, @function
_ZN12_GLOBAL__N_111getResidualILi4EEEvPKhS2_Psl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$13,$7,1
	li	$12,4			# 0x4
.L1268:
	move	$2,$4
	move	$9,$5
	move	$8,$6
	daddiu	$11,$4,4
.L1267:
	daddiu	$9,$9,1
	lbu	$3,0($2)
	daddiu	$8,$8,2
	lbu	$10,-1($9)
	daddiu	$2,$2,1
	subu	$3,$3,$10
	bne	$11,$2,.L1267
	sh	$3,-2($8)

	addiu	$12,$12,-1
	daddu	$4,$4,$7
	daddu	$6,$6,$13
	bne	$12,$0,.L1268
	daddu	$5,$5,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111getResidualILi4EEEvPKhS2_Psl
	.size	_ZN12_GLOBAL__N_111getResidualILi4EEEvPKhS2_Psl, .-_ZN12_GLOBAL__N_111getResidualILi4EEEvPKhS2_Psl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sseILi4ELi4EhhEEjPKT1_lPKT2_l
	.type	_ZN12_GLOBAL__N_13sseILi4ELi4EhhEEjPKT1_lPKT2_l, @function
_ZN12_GLOBAL__N_13sseILi4ELi4EhhEEjPKT1_lPKT2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,4			# 0x4
	move	$9,$0
.L1274:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,4
.L1273:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1273
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1274
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi4ELi4EhhEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi4ELi4EhhEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi4ELi4EhhEEjPKT1_lPKT2_l
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
.L1280:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
.L1279:
	daddiu	$8,$8,2
	lh	$2,0($3)
	mtlo	$9
	lh	$10,-2($8)
	daddiu	$3,$3,2
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1279
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1280
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
.L1286:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L1285:
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
	bne	$13,$3,.L1285
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1286
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
.L1292:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L1291:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1291
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1292
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
.L1298:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,16
	.align	3
.L1297:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1297
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1298
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
.L1304:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L1303:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1303
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1304
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
	.ent	_ZN12_GLOBAL__N_113blockfill_s_cILi8EEEvPsls
	.type	_ZN12_GLOBAL__N_113blockfill_s_cILi8EEEvPsls, @function
_ZN12_GLOBAL__N_113blockfill_s_cILi8EEEvPsls:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$7,8			# 0x8
	.align	3
.L1310:
	daddiu	$3,$4,16
	move	$2,$4
	.align	3
.L1309:
	sh	$6,0($2)
	daddiu	$2,$2,2
	bne	$2,$3,.L1309
	nop

	addiu	$7,$7,-1
	bne	$7,$0,.L1310
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113blockfill_s_cILi8EEEvPsls
	.size	_ZN12_GLOBAL__N_113blockfill_s_cILi8EEEvPsls, .-_ZN12_GLOBAL__N_113blockfill_s_cILi8EEEvPsls
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
.L1316:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,16
	.align	3
.L1315:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1315
	sh	$3,-2($8)

	daddiu	$4,$4,16
	bne	$10,$4,.L1316
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
.L1322:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,16
	.align	3
.L1321:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$10
	sra	$2,$2,$7
	bne	$9,$3,.L1321
	sh	$2,-2($8)

	daddiu	$4,$4,16
	bne	$11,$4,.L1322
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
.L1328:
	move	$3,$4
	daddiu	$8,$5,16
	.align	3
.L1327:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1327
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1328
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
.L1334:
	move	$3,$4
	daddiu	$8,$5,16
	.align	3
.L1333:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1333
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1334
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
.L1340:
	daddiu	$7,$4,8
	move	$2,$5
	.align	3
.L1339:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1339
	sb	$3,-1($4)

	bne	$4,$8,.L1340
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
.L1346:
	move	$3,$4
	daddiu	$7,$4,16
	.align	3
.L1345:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1345
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1346
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
.L1352:
	move	$3,$4
	daddiu	$7,$4,8
	.align	3
.L1351:
	lbu	$2,0($3)
	daddiu	$3,$3,1
	madd	$2,$2
	bne	$7,$3,.L1351
	addu	$6,$2,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1352
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
	.ent	_ZN12_GLOBAL__N_111getResidualILi8EEEvPKhS2_Psl
	.type	_ZN12_GLOBAL__N_111getResidualILi8EEEvPKhS2_Psl, @function
_ZN12_GLOBAL__N_111getResidualILi8EEEvPKhS2_Psl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$13,$7,1
	li	$12,8			# 0x8
	.align	3
.L1358:
	move	$2,$4
	move	$9,$5
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L1357:
	daddiu	$9,$9,1
	lbu	$3,0($2)
	daddiu	$8,$8,2
	lbu	$10,-1($9)
	daddiu	$2,$2,1
	subu	$3,$3,$10
	bne	$11,$2,.L1357
	sh	$3,-2($8)

	addiu	$12,$12,-1
	daddu	$4,$4,$7
	daddu	$6,$6,$13
	bne	$12,$0,.L1358
	daddu	$5,$5,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111getResidualILi8EEEvPKhS2_Psl
	.size	_ZN12_GLOBAL__N_111getResidualILi8EEEvPKhS2_Psl, .-_ZN12_GLOBAL__N_111getResidualILi8EEEvPKhS2_Psl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sseILi8ELi8EhhEEjPKT1_lPKT2_l
	.type	_ZN12_GLOBAL__N_13sseILi8ELi8EhhEEjPKT1_lPKT2_l, @function
_ZN12_GLOBAL__N_13sseILi8ELi8EhhEEjPKT1_lPKT2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,8			# 0x8
	move	$9,$0
	.align	3
.L1364:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L1363:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
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
	.end	_ZN12_GLOBAL__N_13sseILi8ELi8EhhEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi8ELi8EhhEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi8ELi8EhhEEjPKT1_lPKT2_l
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
.L1370:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L1369:
	daddiu	$8,$8,2
	lh	$2,0($3)
	mtlo	$9
	lh	$10,-2($8)
	daddiu	$3,$3,2
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1369
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1370
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
.L1376:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L1375:
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
	bne	$13,$3,.L1375
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1376
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
.L1382:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L1381:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1381
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1382
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
.L1388:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,32
	.align	3
.L1387:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1387
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1388
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
.L1394:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L1393:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1393
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1394
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
	.ent	_ZN12_GLOBAL__N_113blockfill_s_cILi16EEEvPsls
	.type	_ZN12_GLOBAL__N_113blockfill_s_cILi16EEEvPsls, @function
_ZN12_GLOBAL__N_113blockfill_s_cILi16EEEvPsls:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$7,16			# 0x10
	.align	3
.L1400:
	daddiu	$3,$4,32
	move	$2,$4
	.align	3
.L1399:
	sh	$6,0($2)
	daddiu	$2,$2,2
	bne	$2,$3,.L1399
	nop

	addiu	$7,$7,-1
	bne	$7,$0,.L1400
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113blockfill_s_cILi16EEEvPsls
	.size	_ZN12_GLOBAL__N_113blockfill_s_cILi16EEEvPsls, .-_ZN12_GLOBAL__N_113blockfill_s_cILi16EEEvPsls
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
.L1406:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,32
	.align	3
.L1405:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1405
	sh	$3,-2($8)

	daddiu	$4,$4,32
	bne	$10,$4,.L1406
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
.L1412:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,32
	.align	3
.L1411:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$10
	sra	$2,$2,$7
	bne	$9,$3,.L1411
	sh	$2,-2($8)

	daddiu	$4,$4,32
	bne	$11,$4,.L1412
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
.L1418:
	move	$3,$4
	daddiu	$8,$5,32
	.align	3
.L1417:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1417
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1418
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
.L1424:
	move	$3,$4
	daddiu	$8,$5,32
	.align	3
.L1423:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1423
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1424
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
.L1430:
	daddiu	$7,$4,16
	move	$2,$5
	.align	3
.L1429:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1429
	sb	$3,-1($4)

	bne	$4,$8,.L1430
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
.L1436:
	move	$3,$4
	daddiu	$7,$4,32
	.align	3
.L1435:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1435
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1436
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
.L1442:
	move	$3,$4
	daddiu	$7,$4,16
	.align	3
.L1441:
	lbu	$2,0($3)
	daddiu	$3,$3,1
	madd	$2,$2
	bne	$7,$3,.L1441
	addu	$6,$2,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1442
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
	.ent	_ZN12_GLOBAL__N_111getResidualILi16EEEvPKhS2_Psl
	.type	_ZN12_GLOBAL__N_111getResidualILi16EEEvPKhS2_Psl, @function
_ZN12_GLOBAL__N_111getResidualILi16EEEvPKhS2_Psl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$13,$7,1
	li	$12,16			# 0x10
	.align	3
.L1448:
	move	$2,$4
	move	$9,$5
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L1447:
	daddiu	$9,$9,1
	lbu	$3,0($2)
	daddiu	$8,$8,2
	lbu	$10,-1($9)
	daddiu	$2,$2,1
	subu	$3,$3,$10
	bne	$11,$2,.L1447
	sh	$3,-2($8)

	addiu	$12,$12,-1
	daddu	$4,$4,$7
	daddu	$6,$6,$13
	bne	$12,$0,.L1448
	daddu	$5,$5,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111getResidualILi16EEEvPKhS2_Psl
	.size	_ZN12_GLOBAL__N_111getResidualILi16EEEvPKhS2_Psl, .-_ZN12_GLOBAL__N_111getResidualILi16EEEvPKhS2_Psl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sseILi16ELi16EhhEEjPKT1_lPKT2_l
	.type	_ZN12_GLOBAL__N_13sseILi16ELi16EhhEEjPKT1_lPKT2_l, @function
_ZN12_GLOBAL__N_13sseILi16ELi16EhhEEjPKT1_lPKT2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,16			# 0x10
	move	$9,$0
	.align	3
.L1454:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L1453:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1453
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1454
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi16ELi16EhhEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi16ELi16EhhEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi16ELi16EhhEEjPKT1_lPKT2_l
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
.L1460:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L1459:
	daddiu	$8,$8,2
	lh	$2,0($3)
	mtlo	$9
	lh	$10,-2($8)
	daddiu	$3,$3,2
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1459
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1460
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
.L1466:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L1465:
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
	bne	$13,$3,.L1465
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1466
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
.L1472:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L1471:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1471
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1472
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
.L1478:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,64
	.align	3
.L1477:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1477
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1478
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
.L1484:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L1483:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1483
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1484
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
	.ent	_ZN12_GLOBAL__N_113blockfill_s_cILi32EEEvPsls
	.type	_ZN12_GLOBAL__N_113blockfill_s_cILi32EEEvPsls, @function
_ZN12_GLOBAL__N_113blockfill_s_cILi32EEEvPsls:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$7,32			# 0x20
	.align	3
.L1490:
	daddiu	$3,$4,64
	move	$2,$4
	.align	3
.L1489:
	sh	$6,0($2)
	daddiu	$2,$2,2
	bne	$2,$3,.L1489
	nop

	addiu	$7,$7,-1
	bne	$7,$0,.L1490
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113blockfill_s_cILi32EEEvPsls
	.size	_ZN12_GLOBAL__N_113blockfill_s_cILi32EEEvPsls, .-_ZN12_GLOBAL__N_113blockfill_s_cILi32EEEvPsls
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
.L1496:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,64
	.align	3
.L1495:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1495
	sh	$3,-2($8)

	daddiu	$4,$4,64
	bne	$10,$4,.L1496
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
.L1502:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,64
	.align	3
.L1501:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$10
	sra	$2,$2,$7
	bne	$9,$3,.L1501
	sh	$2,-2($8)

	daddiu	$4,$4,64
	bne	$11,$4,.L1502
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
.L1508:
	move	$3,$4
	daddiu	$8,$5,64
	.align	3
.L1507:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1507
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1508
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
.L1514:
	move	$3,$4
	daddiu	$8,$5,64
	.align	3
.L1513:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1513
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1514
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
.L1520:
	daddiu	$7,$4,32
	move	$2,$5
	.align	3
.L1519:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1519
	sb	$3,-1($4)

	bne	$4,$8,.L1520
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
.L1526:
	move	$3,$4
	daddiu	$7,$4,64
	.align	3
.L1525:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1525
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1526
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
.L1532:
	move	$3,$4
	daddiu	$7,$4,32
	.align	3
.L1531:
	lbu	$2,0($3)
	daddiu	$3,$3,1
	madd	$2,$2
	bne	$7,$3,.L1531
	addu	$6,$2,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1532
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
	.ent	_ZN12_GLOBAL__N_111getResidualILi32EEEvPKhS2_Psl
	.type	_ZN12_GLOBAL__N_111getResidualILi32EEEvPKhS2_Psl, @function
_ZN12_GLOBAL__N_111getResidualILi32EEEvPKhS2_Psl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$13,$7,1
	li	$12,32			# 0x20
	.align	3
.L1538:
	move	$2,$4
	move	$9,$5
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L1537:
	daddiu	$9,$9,1
	lbu	$3,0($2)
	daddiu	$8,$8,2
	lbu	$10,-1($9)
	daddiu	$2,$2,1
	subu	$3,$3,$10
	bne	$11,$2,.L1537
	sh	$3,-2($8)

	addiu	$12,$12,-1
	daddu	$4,$4,$7
	daddu	$6,$6,$13
	bne	$12,$0,.L1538
	daddu	$5,$5,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111getResidualILi32EEEvPKhS2_Psl
	.size	_ZN12_GLOBAL__N_111getResidualILi32EEEvPKhS2_Psl, .-_ZN12_GLOBAL__N_111getResidualILi32EEEvPKhS2_Psl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sseILi32ELi32EhhEEjPKT1_lPKT2_l
	.type	_ZN12_GLOBAL__N_13sseILi32ELi32EhhEEjPKT1_lPKT2_l, @function
_ZN12_GLOBAL__N_13sseILi32ELi32EhhEEjPKT1_lPKT2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,32			# 0x20
	move	$9,$0
	.align	3
.L1544:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L1543:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1543
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1544
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi32ELi32EhhEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi32ELi32EhhEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi32ELi32EhhEEjPKT1_lPKT2_l
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
.L1550:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L1549:
	daddiu	$8,$8,2
	lh	$2,0($3)
	mtlo	$9
	lh	$10,-2($8)
	daddiu	$3,$3,2
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1549
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1550
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
.L1556:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L1555:
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
	bne	$13,$3,.L1555
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1556
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
.L1562:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,128
	.align	3
.L1561:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
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
.L1568:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,128
	.align	3
.L1567:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1567
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1568
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
.L1574:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,128
	.align	3
.L1573:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1573
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1574
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
.L1580:
	daddiu	$3,$4,128
	move	$2,$4
	.align	3
.L1579:
	sh	$6,0($2)
	daddiu	$2,$2,2
	bne	$2,$3,.L1579
	nop

	addiu	$7,$7,-1
	bne	$7,$0,.L1580
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
.L1586:
	move	$2,$5
	move	$8,$4
	daddiu	$9,$5,128
	.align	3
.L1585:
	lh	$3,0($2)
	daddiu	$8,$8,2
	daddiu	$2,$2,2
	sll	$3,$3,$7
	bne	$2,$9,.L1585
	sh	$3,-2($8)

	daddiu	$4,$4,128
	bne	$10,$4,.L1586
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
.L1592:
	move	$3,$5
	move	$8,$4
	daddiu	$9,$5,128
	.align	3
.L1591:
	lh	$2,0($3)
	daddiu	$8,$8,2
	daddiu	$3,$3,2
	addu	$2,$2,$10
	sra	$2,$2,$7
	bne	$9,$3,.L1591
	sh	$2,-2($8)

	daddiu	$4,$4,128
	bne	$11,$4,.L1592
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
.L1598:
	move	$3,$4
	daddiu	$8,$5,128
	.align	3
.L1597:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	sll	$2,$2,$7
	bne	$8,$5,.L1597
	sh	$2,-2($3)

	move	$5,$8
	bne	$9,$8,.L1598
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
.L1604:
	move	$3,$4
	daddiu	$8,$5,128
	.align	3
.L1603:
	lh	$2,0($5)
	daddiu	$3,$3,2
	daddiu	$5,$5,2
	addu	$2,$2,$9
	sra	$2,$2,$7
	bne	$8,$5,.L1603
	sh	$2,-2($3)

	move	$5,$8
	bne	$10,$8,.L1604
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
.L1610:
	daddiu	$7,$4,64
	move	$2,$5
	.align	3
.L1609:
	lbu	$3,0($2)
	daddiu	$4,$4,1
	daddu	$2,$2,$6
	bne	$4,$7,.L1609
	sb	$3,-1($4)

	bne	$4,$8,.L1610
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
.L1616:
	move	$3,$4
	daddiu	$7,$4,128
	.align	3
.L1615:
	lh	$2,0($3)
	mtlo	$6
	daddiu	$3,$3,2
	madd	$2,$2
	mflo	$2
	bne	$7,$3,.L1615
	mflo	$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1616
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
.L1622:
	move	$3,$4
	daddiu	$7,$4,64
	.align	3
.L1621:
	lbu	$2,0($3)
	daddiu	$3,$3,1
	madd	$2,$2
	bne	$7,$3,.L1621
	addu	$6,$2,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L1622
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
.L1628:
	move	$2,$4
	move	$9,$5
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L1627:
	daddiu	$9,$9,1
	lbu	$3,0($2)
	daddiu	$8,$8,2
	lbu	$10,-1($9)
	daddiu	$2,$2,1
	subu	$3,$3,$10
	bne	$11,$2,.L1627
	sh	$3,-2($8)

	addiu	$12,$12,-1
	daddu	$4,$4,$7
	daddu	$6,$6,$13
	bne	$12,$0,.L1628
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
	.ent	_ZN12_GLOBAL__N_13sseILi64ELi64EhhEEjPKT1_lPKT2_l
	.type	_ZN12_GLOBAL__N_13sseILi64ELi64EhhEEjPKT1_lPKT2_l, @function
_ZN12_GLOBAL__N_13sseILi64ELi64EhhEEjPKT1_lPKT2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,64			# 0x40
	move	$9,$0
	.align	3
.L1634:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L1633:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1633
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1634
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi64ELi64EhhEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi64ELi64EhhEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi64ELi64EhhEEjPKT1_lPKT2_l
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
.L1640:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,128
	.align	3
.L1639:
	daddiu	$8,$8,2
	lh	$2,0($3)
	mtlo	$9
	lh	$10,-2($8)
	daddiu	$3,$3,2
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1639
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1640
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
.L1645:
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
	bne	$10,$12,.L1646
	daddu	$6,$6,$9

	jr	$31
	nop

	.align	3
.L1646:
	b	.L1645
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
.L1653:
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
	bne	$3,$0,.L1653
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
.L1657:
	lbu	$3,0($6)
	addiu	$2,$2,-1
	sb	$3,0($4)
	lbu	$3,1($6)
	daddu	$6,$6,$7
	sb	$3,1($4)
	bne	$2,$0,.L1657
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
.L1661:
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
	bne	$10,$11,.L1662
	daddu	$6,$6,$9

	jr	$31
	nop

	.align	3
.L1662:
	b	.L1661
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
.L1667:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$9,$2,.L1667
	sb	$8,-1($3)

	daddiu	$2,$7,4
	daddu	$5,$4,$5
	daddu	$7,$6,$7
	daddu	$6,$6,$2
.L1668:
	lbu	$2,0($7)
	daddiu	$5,$5,1
	daddiu	$7,$7,1
	bne	$6,$7,.L1668
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
.L1674:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L1673:
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
	bne	$14,$3,.L1673
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1674
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
.L1680:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L1679:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1679
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1680
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
.L1686:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,12
.L1685:
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
	bne	$14,$3,.L1685
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1686
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
.L1692:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,6
	.align	3
.L1691:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1691
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1692
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
.L1698:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L1697:
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
	bne	$14,$3,.L1697
	sb	$2,-1($10)

	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$24,.L1699
	daddu	$6,$6,$9

	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1699:
	b	.L1698
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
.L1703:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$9,$2,.L1703
	sb	$8,-1($3)

	daddiu	$2,$7,8
	daddu	$5,$4,$5
	daddu	$7,$6,$7
	daddu	$6,$6,$2
	.align	3
.L1704:
	lbu	$2,0($7)
	daddiu	$5,$5,1
	daddiu	$7,$7,1
	bne	$6,$7,.L1704
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
.L1709:
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
	bne	$3,$0,.L1709
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
.L1713:
	lbu	$3,0($6)
	addiu	$2,$2,-1
	sb	$3,0($4)
	lbu	$3,1($6)
	daddu	$6,$6,$7
	sb	$3,1($4)
	bne	$2,$0,.L1713
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
	.ent	_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l:
	.frame	$sp,112,$31		# vars= 16, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	dsll	$2,$5,2
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$23,80($sp)
	move	$23,$0
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l)))
	sd	$22,72($sp)
	move	$22,$6
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$21,64($sp)
	li	$21,3			# 0x3
	sd	$20,56($sp)
	move	$20,$4
	sd	$19,48($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	move	$19,$5
	sd	$18,40($sp)
	move	$18,$7
	sd	$2,8($sp)
	dsll	$2,$7,2
	sd	$31,104($sp)
	sd	$fp,96($sp)
	sd	$17,32($sp)
	sd	$16,24($sp)
	sd	$2,0($sp)
.L1718:
	daddiu	$17,$20,16
	move	$fp,$22
	move	$16,$20
.L1717:
	move	$6,$fp
	move	$4,$16
	move	$7,$18
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$19

	daddiu	$16,$16,4
	addu	$2,$2,$23
	daddiu	$fp,$fp,4
	bne	$16,$17,.L1717
	move	$23,$2

	ld	$3,8($sp)
	addiu	$21,$21,-1
	daddu	$20,$20,$3
	ld	$3,0($sp)
	bne	$21,$0,.L1718
	daddu	$22,$22,$3

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
	.end	_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$21,40($sp)
	move	$21,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l)))
	sd	$20,32($sp)
	move	$20,$7
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$19,24($sp)
	daddiu	$19,$4,16
	sd	$18,16($sp)
	move	$18,$0
	sd	$17,8($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	move	$17,$6
	sd	$16,0($sp)
	move	$16,$4
	sd	$31,56($sp)
.L1723:
	move	$6,$17
	move	$4,$16
	move	$7,$20
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$21

	daddiu	$16,$16,4
	addu	$2,$2,$18
	daddiu	$17,$17,4
	bne	$16,$19,.L1723
	move	$18,$2

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
	.end	_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sseILi2ELi2EhhEEjPKT1_lPKT2_l
	.type	_ZN12_GLOBAL__N_13sseILi2ELi2EhhEEjPKT1_lPKT2_l, @function
_ZN12_GLOBAL__N_13sseILi2ELi2EhhEEjPKT1_lPKT2_l:
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
	.end	_ZN12_GLOBAL__N_13sseILi2ELi2EhhEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi2ELi2EhhEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi2ELi2EhhEEjPKT1_lPKT2_l
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
.L1737:
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
	bne	$11,$12,.L1738
	daddu	$4,$4,$5

	jr	$31
	nop

	.align	3
.L1738:
	b	.L1737
	li	$11,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll
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
.L1744:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L1743:
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
	bne	$14,$3,.L1743
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1744
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
.L1750:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L1749:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1749
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1750
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
.L1756:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,12
.L1755:
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
	bne	$14,$3,.L1755
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1756
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
.L1762:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,6
	.align	3
.L1761:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1761
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1762
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
.L1767:
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
	bne	$3,$0,.L1767
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
.L1771:
	lbu	$3,0($6)
	addiu	$2,$2,-1
	sb	$3,0($4)
	lbu	$3,1($6)
	daddu	$6,$6,$7
	sb	$3,1($4)
	bne	$2,$0,.L1771
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
.L1776:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,32
	.align	3
.L1775:
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
	bne	$14,$3,.L1775
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1776
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
.L1782:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L1781:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1781
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1782
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
.L1788:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,24
	.align	3
.L1787:
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
	bne	$14,$3,.L1787
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1788
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
.L1794:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,12
	.align	3
.L1793:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1793
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1794
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
.L1799:
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
	bne	$10,$0,.L1799
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
.L1804:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L1803:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1803
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1804
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
.L1810:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,64
	.align	3
.L1809:
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
	bne	$14,$3,.L1809
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1810
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
.L1816:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L1815:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1815
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1816
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
.L1822:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,48
	.align	3
.L1821:
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
	bne	$14,$3,.L1821
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1822
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
.L1828:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,24
	.align	3
.L1827:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1827
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1828
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
.L1834:
	move	$3,$4
	move	$11,$5
	move	$10,$6
	daddiu	$14,$4,16
.L1833:
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
	bne	$14,$3,.L1833
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$4,$4,$7
	daddu	$5,$5,$8
	bne	$15,$0,.L1834
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
.L1840:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L1839:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L1839
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1840
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
	.ent	_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$23,56($sp)
	dsll	$23,$5,2
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l)))
	sd	$22,48($sp)
	dsll	$22,$7,2
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$21,40($sp)
	move	$21,$5
	sd	$20,32($sp)
	move	$20,$7
	sd	$19,24($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	li	$19,3			# 0x3
	sd	$18,16($sp)
	move	$18,$4
	sd	$17,8($sp)
	move	$17,$6
	sd	$16,0($sp)
	move	$16,$0
	sd	$31,72($sp)
.L1845:
	move	$6,$17
	move	$4,$18
	move	$7,$20
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$21

	daddiu	$6,$17,4
	daddiu	$4,$18,4
	move	$7,$20
	move	$5,$21
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	addu	$16,$2,$16

	addiu	$19,$19,-1
	addu	$2,$2,$16
	daddu	$18,$18,$23
	move	$16,$2
	bne	$19,$0,.L1845
	daddu	$17,$17,$22

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
	.end	_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$19,24($sp)
	move	$19,$7
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l)))
	sd	$18,16($sp)
	move	$18,$6
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$17,8($sp)
	move	$17,$5
	sd	$16,0($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	sd	$31,40($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$16,$4

	move	$7,$19
	daddiu	$6,$18,4
	move	$5,$17
	daddiu	$4,$16,4
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$16,$2

	ld	$31,40($sp)
	addu	$2,$2,$16
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l
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
.L1851:
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
	bne	$fp,$0,.L1851
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
	.ent	_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l:
	.frame	$sp,112,$31		# vars= 16, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	dsll	$2,$5,2
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$23,80($sp)
	move	$23,$0
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l)))
	sd	$22,72($sp)
	move	$22,$6
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$21,64($sp)
	li	$21,8			# 0x8
	sd	$20,56($sp)
	move	$20,$5
	sd	$19,48($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	move	$19,$7
	sd	$17,32($sp)
	move	$17,$4
	sd	$2,8($sp)
	dsll	$2,$7,2
	sd	$31,104($sp)
	sd	$fp,96($sp)
	sd	$18,40($sp)
	sd	$16,24($sp)
	sd	$2,0($sp)
	.align	3
.L1856:
	daddiu	$18,$17,12
	move	$fp,$22
	move	$16,$17
.L1855:
	move	$6,$fp
	move	$4,$16
	move	$7,$19
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$20

	daddiu	$16,$16,4
	addu	$2,$2,$23
	daddiu	$fp,$fp,4
	bne	$16,$18,.L1855
	move	$23,$2

	ld	$3,8($sp)
	addiu	$21,$21,-1
	daddu	$17,$17,$3
	ld	$3,0($sp)
	bne	$21,$0,.L1856
	daddu	$22,$22,$3

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
	.end	_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$23,56($sp)
	dsll	$23,$5,2
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l)))
	sd	$22,48($sp)
	dsll	$22,$7,2
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$21,40($sp)
	move	$21,$5
	sd	$20,32($sp)
	move	$20,$7
	sd	$19,24($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	move	$19,$0
	sd	$18,16($sp)
	move	$18,$4
	sd	$17,8($sp)
	move	$17,$6
	sd	$16,0($sp)
	li	$16,8			# 0x8
	sd	$31,72($sp)
	.align	3
.L1861:
	move	$6,$17
	move	$4,$18
	move	$7,$20
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$21

	addiu	$16,$16,-1
	addu	$2,$2,$19
	daddu	$18,$18,$23
	move	$19,$2
	bne	$16,$0,.L1861
	daddu	$17,$17,$22

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
	.end	_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$17,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l)))
	sd	$2,16($sp)
	dsll	$2,$7,2
	ld	$17,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$23,96($sp)
	move	$23,$0
	sd	$22,88($sp)
	move	$22,$6
	sd	$21,80($sp)
	li	$21,12			# 0xc
	sd	$20,72($sp)
	move	$20,$4
	sd	$19,64($sp)
	move	$19,$5
	sd	$18,56($sp)
	move	$18,$7
	sd	$2,8($sp)
	daddiu	$2,$17,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$16,40($sp)
	sd	$2,0($sp)
	.align	3
.L1866:
	daddiu	$16,$20,32
	move	$17,$22
	move	$fp,$20
.L1865:
	ld	$25,0($sp)
	move	$6,$17
	move	$4,$fp
	move	$7,$18
	move	$5,$19
	daddiu	$fp,$fp,8
	jalr	$25
	daddiu	$17,$17,8

	addu	$2,$2,$23
	bne	$fp,$16,.L1865
	move	$23,$2

	ld	$3,16($sp)
	addiu	$21,$21,-1
	daddu	$20,$20,$3
	ld	$3,8($sp)
	bne	$21,$0,.L1866
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
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,2
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$18,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l)))
	sd	$2,16($sp)
	dsll	$2,$7,2
	ld	$18,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$23,96($sp)
	move	$23,$0
	sd	$22,88($sp)
	move	$22,$6
	sd	$21,80($sp)
	li	$21,16			# 0x10
	sd	$20,72($sp)
	move	$20,$5
	sd	$19,64($sp)
	move	$19,$7
	sd	$16,40($sp)
	move	$16,$4
	sd	$2,8($sp)
	daddiu	$2,$18,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$17,48($sp)
	sd	$2,0($sp)
	.align	3
.L1872:
	daddiu	$17,$16,24
	move	$18,$22
	move	$fp,$16
.L1871:
	ld	$25,0($sp)
	move	$6,$18
	move	$4,$fp
	move	$7,$19
	move	$5,$20
	daddiu	$fp,$fp,8
	jalr	$25
	daddiu	$18,$18,8

	addu	$2,$2,$23
	bne	$fp,$17,.L1871
	move	$23,$2

	ld	$3,16($sp)
	addiu	$21,$21,-1
	daddu	$16,$16,$3
	ld	$3,8($sp)
	bne	$21,$0,.L1872
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
	.end	_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$19,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l)))
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
	li	$16,16			# 0x10
	sd	$31,88($sp)
	.align	3
.L1877:
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
	bne	$16,$0,.L1877
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
	.end	_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_13sseILi2ELi4EhhEEjPKT1_lPKT2_l
	.type	_ZN12_GLOBAL__N_13sseILi2ELi4EhhEEjPKT1_lPKT2_l, @function
_ZN12_GLOBAL__N_13sseILi2ELi4EhhEEjPKT1_lPKT2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$9,4			# 0x4
	move	$10,$0
.L1881:
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
	bne	$9,$0,.L1881
	move	$10,$2

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi2ELi4EhhEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi2ELi4EhhEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi2ELi4EhhEEjPKT1_lPKT2_l
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
.L1885:
	lhu	$3,0($6)
	addiu	$2,$2,-1
	sb	$3,0($4)
	lhu	$3,2($6)
	daddu	$6,$6,$7
	sb	$3,1($4)
	bne	$2,$0,.L1885
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
.L1889:
	lbu	$3,0($6)
	addiu	$2,$2,-1
	sh	$3,0($4)
	lbu	$3,1($6)
	daddu	$6,$6,$7
	sh	$3,2($4)
	bne	$2,$0,.L1889
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
.L1893:
	lh	$3,0($6)
	addiu	$2,$2,-1
	sh	$3,0($4)
	lh	$3,2($6)
	daddu	$6,$6,$7
	sh	$3,2($4)
	bne	$2,$0,.L1893
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
.L1897:
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
	bne	$3,$0,.L1897
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
.L1901:
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
	bne	$3,$0,.L1901
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
	.ent	_ZN12_GLOBAL__N_13sseILi4ELi8EhhEEjPKT1_lPKT2_l
	.type	_ZN12_GLOBAL__N_13sseILi4ELi8EhhEEjPKT1_lPKT2_l, @function
_ZN12_GLOBAL__N_13sseILi4ELi8EhhEEjPKT1_lPKT2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,8			# 0x8
	move	$9,$0
	.align	3
.L1906:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,4
.L1905:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1905
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1906
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi4ELi8EhhEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi4ELi8EhhEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi4ELi8EhhEEjPKT1_lPKT2_l
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
.L1912:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1911:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1911
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1912
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
.L1918:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,8
.L1917:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1917
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1918
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
.L1924:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L1923:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1923
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1924
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
.L1930:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,4
.L1929:
	daddiu	$11,$11,1
	lbu	$3,0($2)
	daddiu	$10,$10,2
	lbu	$12,-1($11)
	daddiu	$2,$2,1
	subu	$3,$3,$12
	bne	$13,$2,.L1929
	sh	$3,-2($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$14,$0,.L1930
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
.L1936:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,4
.L1935:
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
	bne	$13,$3,.L1935
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1936
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
	.ent	_ZN12_GLOBAL__N_13sseILi8ELi16EhhEEjPKT1_lPKT2_l
	.type	_ZN12_GLOBAL__N_13sseILi8ELi16EhhEEjPKT1_lPKT2_l, @function
_ZN12_GLOBAL__N_13sseILi8ELi16EhhEEjPKT1_lPKT2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,16			# 0x10
	move	$9,$0
	.align	3
.L1942:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L1941:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1941
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1942
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi8ELi16EhhEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi8ELi16EhhEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi8ELi16EhhEEjPKT1_lPKT2_l
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
.L1948:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L1947:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1947
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1948
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
.L1954:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,16
	.align	3
.L1953:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1953
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1954
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
.L1960:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L1959:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1959
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1960
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
.L1966:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L1965:
	daddiu	$11,$11,1
	lbu	$3,0($2)
	daddiu	$10,$10,2
	lbu	$12,-1($11)
	daddiu	$2,$2,1
	subu	$3,$3,$12
	bne	$13,$2,.L1965
	sh	$3,-2($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$14,$0,.L1966
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
.L1972:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L1971:
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
	bne	$13,$3,.L1971
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L1972
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
	.ent	_ZN12_GLOBAL__N_13sseILi16ELi32EhhEEjPKT1_lPKT2_l
	.type	_ZN12_GLOBAL__N_13sseILi16ELi32EhhEEjPKT1_lPKT2_l, @function
_ZN12_GLOBAL__N_13sseILi16ELi32EhhEEjPKT1_lPKT2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,32			# 0x20
	move	$9,$0
	.align	3
.L1978:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L1977:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L1977
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L1978
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi16ELi32EhhEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi16ELi32EhhEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi16ELi32EhhEEjPKT1_lPKT2_l
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
.L1984:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L1983:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L1983
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1984
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
.L1990:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,32
	.align	3
.L1989:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L1989
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1990
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
.L1996:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L1995:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L1995
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1996
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
.L2002:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L2001:
	daddiu	$11,$11,1
	lbu	$3,0($2)
	daddiu	$10,$10,2
	lbu	$12,-1($11)
	daddiu	$2,$2,1
	subu	$3,$3,$12
	bne	$13,$2,.L2001
	sh	$3,-2($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$14,$0,.L2002
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
.L2008:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L2007:
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
	bne	$13,$3,.L2007
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L2008
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
	.ent	_ZN12_GLOBAL__N_13sseILi32ELi64EhhEEjPKT1_lPKT2_l
	.type	_ZN12_GLOBAL__N_13sseILi32ELi64EhhEEjPKT1_lPKT2_l, @function
_ZN12_GLOBAL__N_13sseILi32ELi64EhhEEjPKT1_lPKT2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$12,64			# 0x40
	move	$9,$0
	.align	3
.L2014:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L2013:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L2013
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L2014
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sseILi32ELi64EhhEEjPKT1_lPKT2_l
	.size	_ZN12_GLOBAL__N_13sseILi32ELi64EhhEEjPKT1_lPKT2_l, .-_ZN12_GLOBAL__N_13sseILi32ELi64EhhEEjPKT1_lPKT2_l
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
.L2020:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L2019:
	lhu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,2
	bne	$2,$9,.L2019
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L2020
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
.L2026:
	move	$3,$6
	move	$2,$4
	daddiu	$9,$4,64
	.align	3
.L2025:
	lbu	$8,0($3)
	daddiu	$2,$2,2
	daddiu	$3,$3,1
	bne	$2,$9,.L2025
	sh	$8,-2($2)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L2026
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
.L2032:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L2031:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L2031
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L2032
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
.L2038:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L2037:
	daddiu	$11,$11,1
	lbu	$3,0($2)
	daddiu	$10,$10,2
	lbu	$12,-1($11)
	daddiu	$2,$2,1
	subu	$3,$3,$12
	bne	$13,$2,.L2037
	sh	$3,-2($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$14,$0,.L2038
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
.L2044:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L2043:
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
	bne	$13,$3,.L2043
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L2044
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
	.ent	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi8EEEvPslPKhS3_ll
	.type	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi8EEEvPslPKhS3_ll, @function
_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi8EEEvPslPKhS3_ll:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$24,$5,1
	daddiu	$sp,$sp,-64
	daddu	$12,$24,$5
	dsll	$15,$8,1
	sd	$20,40($sp)
	dsll	$14,$9,1
	sd	$19,32($sp)
	dsll	$12,$12,1
	sd	$18,24($sp)
	daddu	$19,$15,$8
	daddu	$18,$14,$9
	sd	$17,16($sp)
	dsll	$25,$9,2
	dsll	$17,$5,2
	sd	$16,8($sp)
	dsll	$5,$5,3
	dsll	$16,$8,2
	li	$13,2			# 0x2
	li	$20,1			# 0x1
	sd	$21,48($sp)
.L2049:
	daddu	$10,$6,$8
	daddu	$3,$15,$6
	vbld	$w5,0($6)
	vbld	$w7,0($7)
	daddu	$2,$19,$6
	daddu	$11,$7,$9
	vbld	$w2,0($10)
	vbld	$w1,0($3)
	vbld	$w0,0($2)
	vbld	$w6,0($11)
	daddu	$10,$14,$7
	daddu	$3,$18,$7
	daddu	$21,$24,$4
	daddu	$11,$17,$4
	vbld	$w4,0($10)
	vbld	$w3,0($3)
	daddu	$2,$4,$12
	vextb_u.h	$w5,$w5
	vextb_u.h	$w2,$w2
	vextb_u.h	$w1,$w1
	vextb_u.h	$w0,$w0
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	vextb_u.h	$w4,$w4
	vextb_u.h	$w3,$w3
	subv.h	$w5,$w5,$w7
	subv.h	$w2,$w2,$w6
	st.d	$w5,0($4)
	subv.h	$w1,$w1,$w4
	st.d	$w2,0($21)
	subv.h	$w0,$w0,$w3
	st.d	$w1,0($11)
	daddu	$6,$6,$16
	st.d	$w0,0($2)
	daddu	$7,$7,$25
	bne	$13,$20,.L2050
	daddu	$4,$4,$5

	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L2050:
	b	.L2049
	li	$13,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi8EEEvPslPKhS3_ll
	.size	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi8EEEvPslPKhS3_ll, .-_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi8EEEvPslPKhS3_ll
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi4EEEvPslPKhS3_ll
	.type	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi4EEEvPslPKhS3_ll, @function
_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi4EEEvPslPKhS3_ll:
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
	.end	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi4EEEvPslPKhS3_ll
	.size	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi4EEEvPslPKhS3_ll, .-_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi4EEEvPslPKhS3_ll
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi16EEEvPslPKhS3_ll
	.type	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi16EEEvPslPKhS3_ll, @function
_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi16EEEvPslPKhS3_ll:
	.frame	$sp,176,$31		# vars= 96, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-176
	dsll	$2,$8,2
	sd	$2,0($sp)
	dsll	$2,$9,2
	dsll	$24,$8,1
	sd	$2,8($sp)
	dsll	$2,$5,3
	dsll	$15,$9,1
	sd	$2,16($sp)
	daddu	$2,$24,$8
	dsll	$14,$5,2
	sd	$18,112($sp)
	dsll	$18,$5,1
	li	$13,4			# 0x4
	sd	$2,72($sp)
	daddu	$2,$15,$9
	sd	$2,80($sp)
	daddu	$2,$18,$14
	sd	$2,56($sp)
	daddiu	$2,$24,8
	sd	$2,48($sp)
	daddiu	$2,$15,8
	sd	$21,136($sp)
	daddiu	$21,$8,8
	sd	$2,64($sp)
	daddiu	$2,$14,16
	sd	$20,128($sp)
	daddiu	$20,$9,8
	sd	$2,88($sp)
	daddu	$2,$24,$21
	sd	$19,120($sp)
	daddiu	$19,$18,16
	sd	$2,24($sp)
	daddu	$2,$15,$20
	sd	$2,32($sp)
	daddu	$2,$14,$19
	sd	$fp,168($sp)
	sd	$23,152($sp)
	sd	$22,144($sp)
	sd	$17,104($sp)
	sd	$16,96($sp)
	sd	$2,40($sp)
.L2055:
	daddu	$2,$24,$6
	ld	$5,72($sp)
	daddu	$3,$6,$8
	vbld	$w7,0($6)
	vbld	$w3,0($2)
	ld	$2,80($sp)
	vbld	$w5,0($3)
	daddu	$3,$7,$15
	vbld	$w2,0($3)
	ld	$25,88($sp)
	daddu	$fp,$18,$4
	daddu	$23,$14,$4
	daddu	$10,$6,$5
	daddu	$5,$7,$9
	vbld	$w6,0($7)
	vextb_u.h	$w7,$w7
	daddu	$2,$7,$2
	vbld	$w1,0($10)
	vbld	$w4,0($5)
	daddu	$12,$6,$21
	vbld	$w0,0($2)
	ld	$2,56($sp)
	daddu	$16,$4,$25
	daddu	$5,$7,$20
	ld	$25,40($sp)
	daddu	$17,$4,$19
	vextb_u.h	$w5,$w5
	vextb_u.h	$w3,$w3
	vextb_u.h	$w1,$w1
	vextb_u.h	$w6,$w6
	vextb_u.h	$w4,$w4
	subv.h	$w6,$w7,$w6
	daddu	$22,$4,$2
	ld	$2,48($sp)
	st.d	$w6,0($4)
	subv.h	$w4,$w5,$w4
	vextb_u.h	$w2,$w2
	vextb_u.h	$w0,$w0
	subv.h	$w2,$w3,$w2
	subv.h	$w0,$w1,$w0
	daddu	$25,$25,$4
	addiu	$13,$13,-1
	daddu	$11,$6,$2
	ld	$2,24($sp)
	daddu	$10,$2,$6
	ld	$2,64($sp)
	daddu	$3,$7,$2
	ld	$2,32($sp)
	st.d	$w4,0($fp)
	st.d	$w2,0($23)
	st.d	$w0,0($22)
	vbld	$w7,8($6)
	vbld	$w6,8($7)
	vbld	$w5,0($12)
	vbld	$w3,0($11)
	vbld	$w1,0($10)
	vbld	$w4,0($5)
	vbld	$w2,0($3)
	daddu	$2,$2,$7
	vextb_u.h	$w7,$w7
	vextb_u.h	$w5,$w5
	vextb_u.h	$w3,$w3
	vbld	$w0,0($2)
	vextb_u.h	$w6,$w6
	vextb_u.h	$w4,$w4
	vextb_u.h	$w2,$w2
	subv.h	$w6,$w7,$w6
	subv.h	$w4,$w5,$w4
	st.d	$w6,16($4)
	subv.h	$w2,$w3,$w2
	st.d	$w4,0($17)
	st.d	$w2,0($16)
	ld	$2,0($sp)
	vextb_u.h	$w1,$w1
	vextb_u.h	$w0,$w0
	subv.h	$w0,$w1,$w0
	st.d	$w0,0($25)
	daddu	$6,$6,$2
	ld	$2,8($sp)
	daddu	$7,$7,$2
	ld	$2,16($sp)
	bne	$13,$0,.L2055
	daddu	$4,$4,$2

	ld	$fp,168($sp)
	ld	$23,152($sp)
	ld	$22,144($sp)
	ld	$21,136($sp)
	ld	$20,128($sp)
	ld	$19,120($sp)
	ld	$18,112($sp)
	ld	$17,104($sp)
	ld	$16,96($sp)
	jr	$31
	daddiu	$sp,$sp,176

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi16EEEvPslPKhS3_ll
	.size	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi16EEEvPslPKhS3_ll, .-_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi16EEEvPslPKhS3_ll
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi64ELi64EEEvPslPKhS3_ll
	.type	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi64ELi64EEEvPslPKhS3_ll, @function
_ZN12_GLOBAL__N_114pixel_sub_ps_cILi64ELi64EEEvPslPKhS3_ll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$5,$5,1
	li	$2,64			# 0x40
	.align	3
.L2059:
	addiu	$2,$2,-1
	vbld	$w3,0($6)
	vbld	$w2,8($6)
	vbld	$w1,16($6)
	vbld	$w0,24($6)
	vbld	$w7,0($7)
	vbld	$w6,8($7)
	vbld	$w5,16($7)
	vbld	$w4,24($7)
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	vextb_u.h	$w5,$w5
	vextb_u.h	$w4,$w4
	vextb_u.h	$w3,$w3
	vextb_u.h	$w2,$w2
	subv.h	$w3,$w3,$w7
	subv.h	$w2,$w2,$w6
	st.d	$w3,0($4)
	st.d	$w2,16($4)
	vextb_u.h	$w1,$w1
	vextb_u.h	$w0,$w0
	subv.h	$w1,$w1,$w5
	subv.h	$w0,$w0,$w4
	st.d	$w1,32($4)
	st.d	$w0,48($4)
	vbld	$w3,32($6)
	vbld	$w2,40($6)
	vbld	$w1,48($6)
	vbld	$w0,56($6)
	vbld	$w7,32($7)
	vbld	$w6,40($7)
	vbld	$w5,48($7)
	vbld	$w4,56($7)
	vextb_u.h	$w3,$w3
	vextb_u.h	$w2,$w2
	vextb_u.h	$w1,$w1
	vextb_u.h	$w0,$w0
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	vextb_u.h	$w5,$w5
	vextb_u.h	$w4,$w4
	subv.h	$w3,$w3,$w7
	subv.h	$w2,$w2,$w6
	subv.h	$w1,$w1,$w5
	subv.h	$w0,$w0,$w4
	st.d	$w3,64($4)
	st.d	$w2,80($4)
	st.d	$w1,96($4)
	st.d	$w0,112($4)
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$2,$0,.L2059
	daddu	$4,$4,$5

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi64ELi64EEEvPslPKhS3_ll
	.size	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi64ELi64EEEvPslPKhS3_ll, .-_ZN12_GLOBAL__N_114pixel_sub_ps_cILi64ELi64EEEvPslPKhS3_ll
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi32EEEvPslPKhS3_ll
	.type	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi32EEEvPslPKhS3_ll, @function
_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi32EEEvPslPKhS3_ll:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	dsll	$13,$5,2
	dsll	$9,$9,1
	dlsa	$5,$5,$4,1
	li	$12,16			# 0x10
	dsll	$25,$8,1
	daddiu	$24,$8,8
	daddiu	$15,$8,16
	daddiu	$14,$8,24
	.align	3
.L2063:
	daddu	$11,$6,$8
	daddu	$10,$6,$24
	vbld	$w3,0($6)
	vbld	$w2,8($6)
	daddu	$3,$6,$15
	daddu	$2,$6,$14
	vbld	$w1,16($6)
	vbld	$w0,24($6)
	addiu	$12,$12,-1
	vbld	$w7,0($7)
	vbld	$w6,8($7)
	vbld	$w5,16($7)
	vbld	$w4,24($7)
	vextb_u.h	$w3,$w3
	vextb_u.h	$w2,$w2
	vextb_u.h	$w1,$w1
	vextb_u.h	$w0,$w0
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	subv.h	$w3,$w3,$w7
	subv.h	$w2,$w2,$w6
	st.d	$w3,0($4)
	st.d	$w2,16($4)
	vextb_u.h	$w5,$w5
	vextb_u.h	$w4,$w4
	subv.h	$w1,$w1,$w5
	subv.h	$w0,$w0,$w4
	st.d	$w1,32($4)
	st.d	$w0,48($4)
	daddu	$6,$6,$25
	vbld	$w3,0($11)
	vbld	$w2,0($10)
	vbld	$w1,0($3)
	vbld	$w0,0($2)
	daddu	$7,$7,$9
	st.d	$w3,0($5)
	st.d	$w2,16($5)
	st.d	$w1,32($5)
	st.d	$w0,48($5)
	daddu	$4,$4,$13
	bne	$12,$0,.L2063
	daddu	$5,$5,$13

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi32EEEvPslPKhS3_ll
	.size	_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi32EEEvPslPKhS3_ll, .-_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi32EEEvPslPKhS3_ll
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
	.ent	_ZN12_GLOBAL__N_13sadILi4ELi4EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi4ELi4EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi4ELi4EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_13sadILi4ELi4EEEiPKhlS2_l)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_13sadILi4ELi4EEEiPKhlS2_l)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_4x4EPKhlS1_l
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi4ELi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi4ELi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi4ELi4EEEiPKhlS2_l
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
	move	$10,$2

	ld	$31,56($sp)
	sra	$3,$2,2
	ld	$28,48($sp)
	subu	$3,$10,$3
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
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi8ELi8EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi8ELi8EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi8ELi8EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$13,$8,2
	sw	$0,0($9)
	sd	$19,24($sp)
	daddu	$19,$5,$13
	daddu	$11,$5,$8
	sd	$18,16($sp)
	daddu	$18,$19,$8
	daddu	$2,$11,$8
	sd	$16,0($sp)
	daddu	$16,$6,$13
	daddu	$10,$6,$8
	sd	$17,8($sp)
	daddu	$25,$16,$8
	daddu	$17,$18,$8
	daddu	$13,$7,$13
	sd	$20,32($sp)
	daddu	$3,$10,$8
	daddu	$12,$2,$8
	daddu	$20,$17,$8
	sw	$0,4($9)
	daddu	$24,$25,$8
	daddu	$14,$7,$8
	sw	$0,8($9)
	vbld	$w7,448($4)
	daddu	$15,$13,$8
	vbld	$w8,0($12)
	vbld	$w11,0($19)
	vbld	$w10,0($18)
	vbld	$w1,0($4)
	vbld	$w6,64($4)
	vbld	$w3,128($4)
	vbld	$w5,192($4)
	vbld	$w15,256($4)
	vbld	$w14,320($4)
	vbld	$w13,384($4)
	vbld	$w0,0($5)
	vbld	$w4,0($11)
	vbld	$w2,0($2)
	vbld	$w9,0($17)
	vbld	$w12,0($20)
	insve.d	$w5[1],$w7[0]
	insve.d	$w1[1],$w15[0]
	insve.d	$w6[1],$w14[0]
	insve.d	$w3[1],$w13[0]
	daddu	$5,$14,$8
	daddu	$4,$3,$8
	insve.d	$w0[1],$w11[0]
	insve.d	$w4[1],$w10[0]
	daddu	$17,$24,$8
	daddu	$12,$15,$8
	insve.d	$w2[1],$w9[0]
	move.v	$w7,$w8
	asub_u.b	$w0,$w1,$w0
	asub_u.b	$w4,$w6,$w4
	asub_u.b	$w2,$w3,$w2
	vacc8b_u.d	$w4,$w4
	insve.d	$w7[1],$w12[0]
	vacc8b_u.d	$w0,$w0
	asub_u.b	$w7,$w5,$w7
	addv.d	$w0,$w0,$w4
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w2,$w2
	addv.d	$w2,$w2,$w7
	addv.d	$w0,$w0,$w2
	copy_s.w	$11,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$11,$2
	daddu	$11,$5,$8
	sw	$2,0($9)
	daddu	$8,$12,$8
	vbld	$w10,0($16)
	vbld	$w2,0($3)
	vbld	$w0,0($6)
	vbld	$w4,0($10)
	vbld	$w7,0($4)
	insve.d	$w0[1],$w10[0]
	vbld	$w9,0($25)
	asub_u.b	$w0,$w1,$w0
	vbld	$w11,0($17)
	vbld	$w8,0($24)
	insve.d	$w4[1],$w9[0]
	insve.d	$w2[1],$w8[0]
	insve.d	$w7[1],$w11[0]
	asub_u.b	$w4,$w6,$w4
	asub_u.b	$w2,$w3,$w2
	asub_u.b	$w7,$w5,$w7
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w7,$w7
	vacc8b_u.d	$w0,$w0
	vacc8b_u.d	$w2,$w2
	addv.d	$w0,$w0,$w4
	addv.d	$w2,$w2,$w7
	addv.d	$w0,$w0,$w2
	copy_s.w	$3,$w0[0]
	copy_s.w	$2,$w0[2]
	addu	$2,$3,$2
	sw	$2,4($9)
	vbld	$w7,0($14)
	vbld	$w4,0($5)
	vbld	$w8,0($11)
	vbld	$w11,0($13)
	vbld	$w10,0($15)
	vbld	$w9,0($12)
	vbld	$w0,0($8)
	vbld	$w2,0($7)
	insve.d	$w7[1],$w10[0]
	insve.d	$w2[1],$w11[0]
	insve.d	$w4[1],$w9[0]
	insve.d	$w8[1],$w0[0]
	asub_u.b	$w1,$w1,$w2
	asub_u.b	$w6,$w6,$w7
	asub_u.b	$w3,$w3,$w4
	asub_u.b	$w5,$w5,$w8
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w6,$w6
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w5,$w5
	addv.d	$w1,$w1,$w6
	addv.d	$w3,$w3,$w5
	addv.d	$w1,$w1,$w3
	copy_s.w	$3,$w1[0]
	copy_s.w	$2,$w1[2]
	addu	$2,$3,$2
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	daddiu	$sp,$sp,48
	jr	$31
	sw	$2,8($9)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi8ELi8EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi8ELi8EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi8ELi8EEEvPKhS2_S2_S2_lPi
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
	.ent	_ZN12_GLOBAL__N_13sadILi8ELi8EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_13sadILi8ELi8EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_13sadILi8ELi8EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_13sadILi8ELi8EEEiPKhlS2_l)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_13sadILi8ELi8EEEiPKhlS2_l)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_13sadILi8ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_13sadILi8ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_13sadILi8ELi8EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi16ELi16EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi16ELi16EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi16ELi16EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$2,$8,1
	daddiu	$12,$4,1024
	ldi.d	$w6,0
	move.v	$w8,$w6
	move.v	$w7,$w6
	sw	$0,0($9)
	sw	$0,4($9)
	sw	$0,8($9)
	.align	3
.L2079:
	ld.b	$w1,0($4)
	ld.b	$w0,64($4)
	daddu	$11,$5,$8
	daddu	$10,$6,$8
	daddu	$3,$7,$8
	daddiu	$4,$4,128
	ld.d	$w5,0($5)
	ld.d	$w4,0($6)
	ld.d	$w10,0($7)
	asub_u.b	$w5,$w1,$w5
	asub_u.b	$w4,$w1,$w4
	ld.d	$w3,0($11)
	ld.d	$w2,0($10)
	asub_u.b	$w3,$w0,$w3
	asub_u.b	$w2,$w0,$w2
	ld.d	$w9,0($3)
	asub_u.b	$w1,$w1,$w10
	asub_u.b	$w0,$w0,$w9
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w0,$w0
	addv.d	$w6,$w6,$w5
	addv.d	$w8,$w8,$w4
	addv.d	$w7,$w7,$w1
	addv.d	$w6,$w6,$w3
	addv.d	$w8,$w8,$w2
	addv.d	$w7,$w7,$w0
	daddu	$5,$5,$2
	daddu	$6,$6,$2
	bne	$4,$12,.L2079
	daddu	$7,$7,$2

	copy_s.w	$4,$w6[0]
	copy_s.w	$3,$w8[0]
	copy_s.w	$2,$w6[2]
	copy_s.w	$5,$w7[0]
	addu	$2,$4,$2
	copy_s.w	$4,$w8[2]
	addu	$4,$3,$4
	copy_s.w	$3,$w7[2]
	addu	$3,$5,$3
	sw	$2,0($9)
	sw	$4,4($9)
	jr	$31
	sw	$3,8($9)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi16ELi16EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi16ELi16EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi16ELi16EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sad_x3ILi32ELi32EEEvPKhS2_S2_S2_lPi
	.type	_ZN12_GLOBAL__N_16sad_x3ILi32ELi32EEEvPKhS2_S2_S2_lPi, @function
_ZN12_GLOBAL__N_16sad_x3ILi32ELi32EEEvPKhS2_S2_S2_lPi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$2,$4,2048
	ldi.d	$w6,0
	move.v	$w8,$w6
	sw	$0,0($9)
	move.v	$w7,$w6
	sw	$0,4($9)
	sw	$0,8($9)
	.align	3
.L2083:
	ld.b	$w1,0($4)
	ld.b	$w0,16($4)
	daddiu	$4,$4,64
	ld.d	$w5,0($5)
	ld.d	$w3,16($5)
	ld.d	$w4,0($6)
	ld.d	$w2,16($6)
	ld.d	$w10,0($7)
	ld.d	$w9,16($7)
	asub_u.b	$w5,$w1,$w5
	asub_u.b	$w3,$w0,$w3
	asub_u.b	$w4,$w1,$w4
	asub_u.b	$w2,$w0,$w2
	asub_u.b	$w1,$w1,$w10
	asub_u.b	$w0,$w0,$w9
	vacc8b_u.d	$w5,$w5
	vacc8b_u.d	$w3,$w3
	vacc8b_u.d	$w4,$w4
	vacc8b_u.d	$w2,$w2
	vacc8b_u.d	$w1,$w1
	vacc8b_u.d	$w0,$w0
	addv.d	$w6,$w6,$w5
	addv.d	$w8,$w8,$w4
	addv.d	$w7,$w7,$w1
	addv.d	$w6,$w6,$w3
	addv.d	$w8,$w8,$w2
	addv.d	$w7,$w7,$w0
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$4,$2,.L2083
	daddu	$7,$7,$8

	copy_s.w	$4,$w6[0]
	copy_s.w	$3,$w8[0]
	copy_s.w	$2,$w6[2]
	copy_s.w	$5,$w7[0]
	addu	$2,$4,$2
	copy_s.w	$4,$w8[2]
	addu	$4,$3,$4
	copy_s.w	$3,$w7[2]
	addu	$3,$5,$3
	sw	$2,0($9)
	sw	$4,4($9)
	jr	$31
	sw	$3,8($9)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sad_x3ILi32ELi32EEEvPKhS2_S2_S2_lPi
	.size	_ZN12_GLOBAL__N_16sad_x3ILi32ELi32EEEvPKhS2_S2_S2_lPi, .-_ZN12_GLOBAL__N_16sad_x3ILi32ELi32EEEvPKhS2_S2_S2_lPi
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l:
	.frame	$sp,336,$31		# vars= 240, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-336
	dsll	$3,$7,3
	sd	$28,312($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$16,248($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l)))
	sd	$3,224($sp)
	daddiu	$3,$6,64
	ld	$2,%got_page(_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf)($28)
	sd	$3,192($sp)
	dsll	$3,$5,3
	sd	$17,256($sp)
	daddiu	$17,$sp,128
	sd	$2,144($sp)
	daddiu	$16,$2,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf)
	ld	$2,%got_page(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)($28)
	sd	$3,216($sp)
	li	$3,8			# 0x8
	sd	$31,328($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)
	sd	$fp,320($sp)
	sd	$2,176($sp)
	li	$2,65536			# 0x10000
	addiu	$24,$2,1
	sd	$23,304($sp)
	sd	$22,296($sp)
	sd	$21,288($sp)
	sd	$20,280($sp)
	sd	$19,272($sp)
	sd	$18,264($sp)
	sd	$5,168($sp)
	sd	$7,232($sp)
	sd	$4,200($sp)
	sd	$3,208($sp)
	sd	$0,160($sp)
	.align	3
.L2092:
	ld	$2,192($sp)
	ld	$13,232($sp)
	daddiu	$2,$2,-64
	sd	$2,136($sp)
	ld	$2,200($sp)
	sd	$2,128($sp)
	ld	$2,144($sp)
	daddiu	$2,$2,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf)
	sd	$2,152($sp)
	ld	$2,144($sp)
	.align	3
.L2100:
	move	$25,$sp
	move	$15,$sp
	sd	$25,184($sp)
	lbu	$23,1($16)
	lbu	$fp,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf)($2)
	ld	$14,128($sp)
	lbu	$22,2($16)
	lbu	$21,3($16)
	lbu	$20,4($16)
	lbu	$19,5($16)
	lbu	$18,6($16)
	lbu	$31,7($16)
	ld	$25,168($sp)
	.align	3
.L2087:
	lbu	$2,0($14)
	daddiu	$15,$15,16
	lbu	$4,1($14)
	lbu	$11,2($14)
	lbu	$8,3($14)
	subu	$3,$2,$fp
	lbu	$10,4($14)
	subu	$4,$4,$23
	lbu	$7,5($14)
	subu	$11,$11,$22
	subu	$12,$3,$4
	lbu	$9,6($14)
	subu	$8,$8,$21
	addu	$2,$3,$4
	lbu	$6,7($14)
	subu	$10,$10,$20
	subu	$5,$11,$8
	subu	$7,$7,$19
	sll	$5,$5,16
	subu	$9,$9,$18
	subu	$3,$10,$7
	subu	$6,$6,$31
	addu	$7,$10,$7
	subu	$4,$9,$6
	sll	$12,$12,16
	addu	$6,$9,$6
	addu	$8,$11,$8
	sll	$3,$3,16
	sll	$4,$4,16
	addu	$4,$4,$6
	addu	$8,$5,$8
	addu	$3,$3,$7
	addu	$2,$12,$2
	addu	$5,$3,$4
	addu	$7,$2,$8
	subu	$3,$3,$4
	subu	$2,$2,$8
	addu	$6,$7,$5
	addu	$4,$2,$3
	subu	$7,$7,$5
	subu	$2,$2,$3
	sw	$6,-16($15)
	sw	$7,-8($15)
	daddu	$14,$14,$25
	sw	$4,-12($15)
	bne	$17,$15,.L2087
	sw	$2,-4($15)

	ld	$25,184($sp)
	move	$12,$0
	daddiu	$20,$25,16
.L2088:
	lw	$9,0($25)
	daddiu	$25,$25,4
	lw	$4,12($25)
	lw	$2,44($25)
	lw	$8,28($25)
	addu	$15,$9,$4
	lw	$6,76($25)
	subu	$9,$9,$4
	lw	$3,108($25)
	lw	$18,60($25)
	addu	$5,$8,$2
	subu	$8,$8,$2
	lw	$4,92($25)
	addu	$10,$15,$5
	subu	$15,$15,$5
	addu	$2,$9,$8
	subu	$31,$9,$8
	addu	$19,$18,$6
	subu	$18,$18,$6
	addu	$5,$4,$3
	subu	$4,$4,$3
	addu	$7,$19,$5
	addu	$6,$18,$4
	addu	$3,$10,$7
	subu	$7,$10,$7
	addu	$9,$2,$6
	srl	$14,$3,15
	srl	$11,$7,15
	subu	$6,$2,$6
	subu	$5,$19,$5
	and	$14,$14,$24
	srl	$22,$9,15
	and	$11,$11,$24
	addu	$10,$15,$5
	and	$8,$22,$24
	srl	$19,$6,15
	sll	$23,$14,16
	sll	$2,$11,16
	subu	$4,$18,$4
	subu	$23,$23,$14
	subu	$11,$2,$11
	and	$18,$19,$24
	subu	$5,$15,$5
	sll	$22,$8,16
	srl	$15,$10,15
	subu	$22,$22,$8
	srl	$14,$5,15
	addu	$8,$31,$4
	and	$15,$15,$24
	sll	$19,$18,16
	addu	$7,$7,$11
	addu	$3,$3,$23
	subu	$19,$19,$18
	xor	$11,$7,$11
	and	$21,$14,$24
	subu	$4,$31,$4
	sll	$2,$15,16
	srl	$18,$8,15
	xor	$3,$3,$23
	addu	$9,$9,$22
	subu	$15,$2,$15
	and	$18,$18,$24
	srl	$31,$4,15
	addu	$3,$3,$11
	xor	$9,$9,$22
	addu	$7,$6,$19
	sll	$14,$21,16
	addu	$3,$3,$9
	subu	$14,$14,$21
	and	$31,$31,$24
	xor	$7,$7,$19
	addu	$6,$10,$15
	sll	$11,$18,16
	addu	$2,$3,$7
	subu	$10,$11,$18
	sll	$9,$31,16
	xor	$6,$6,$15
	addu	$5,$5,$14
	subu	$7,$9,$31
	addu	$2,$2,$6
	xor	$5,$5,$14
	addu	$3,$8,$10
	addu	$2,$2,$5
	xor	$3,$3,$10
	addu	$4,$4,$7
	addu	$2,$2,$3
	xor	$4,$4,$7
	addu	$2,$2,$4
	andi	$3,$2,0xffff
	srl	$2,$2,16
	addu	$2,$3,$2
	bne	$20,$25,.L2088
	addu	$12,$2,$12

	ld	$25,176($sp)
	move	$7,$0
	ld	$6,152($sp)
	ld	$5,168($sp)
	jalr	$25
	ld	$4,128($sp)

	ld	$3,144($sp)
	move	$25,$sp
	addiu	$12,$12,2
	lbu	$23,1($16)
	sra	$2,$2,2
	lbu	$22,2($16)
	sra	$12,$12,2
	move	$15,$sp
	lbu	$fp,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf)($3)
	subu	$2,$12,$2
	lbu	$21,3($16)
	lbu	$20,4($16)
	ld	$14,136($sp)
	lbu	$19,5($16)
	lbu	$18,6($16)
	lbu	$31,7($16)
	sd	$2,184($sp)
	.align	3
.L2089:
	lbu	$9,0($14)
	daddiu	$15,$15,16
	lbu	$5,1($14)
	lbu	$12,2($14)
	lbu	$8,3($14)
	subu	$9,$9,$fp
	lbu	$11,4($14)
	subu	$5,$5,$23
	lbu	$7,5($14)
	subu	$12,$12,$22
	subu	$2,$9,$5
	lbu	$4,6($14)
	subu	$8,$8,$21
	addu	$9,$9,$5
	lbu	$10,7($14)
	subu	$11,$11,$20
	subu	$6,$12,$8
	subu	$7,$7,$19
	sll	$2,$2,16
	subu	$4,$4,$18
	subu	$3,$11,$7
	subu	$10,$10,$31
	addu	$7,$11,$7
	subu	$5,$4,$10
	sll	$6,$6,16
	sll	$5,$5,16
	addu	$8,$12,$8
	sll	$3,$3,16
	addu	$4,$4,$10
	addu	$4,$5,$4
	addu	$6,$6,$8
	addu	$3,$3,$7
	addu	$2,$2,$9
	addu	$5,$2,$6
	subu	$2,$2,$6
	addu	$6,$3,$4
	subu	$3,$3,$4
	addu	$7,$5,$6
	addu	$4,$2,$3
	subu	$5,$5,$6
	subu	$2,$2,$3
	sw	$7,-16($15)
	sw	$5,-8($15)
	daddu	$14,$14,$13
	sw	$4,-12($15)
	bne	$17,$15,.L2089
	sw	$2,-4($15)

	daddiu	$20,$25,16
	move	$12,$0
.L2090:
	lw	$9,0($25)
	daddiu	$25,$25,4
	lw	$4,12($25)
	lw	$2,44($25)
	lw	$8,28($25)
	addu	$15,$9,$4
	lw	$6,76($25)
	subu	$9,$9,$4
	lw	$3,108($25)
	lw	$18,60($25)
	addu	$5,$8,$2
	subu	$8,$8,$2
	lw	$4,92($25)
	addu	$10,$15,$5
	subu	$15,$15,$5
	addu	$2,$9,$8
	subu	$31,$9,$8
	addu	$19,$18,$6
	subu	$18,$18,$6
	addu	$5,$4,$3
	subu	$4,$4,$3
	addu	$7,$19,$5
	addu	$6,$18,$4
	addu	$3,$10,$7
	subu	$7,$10,$7
	addu	$9,$2,$6
	srl	$14,$3,15
	srl	$11,$7,15
	subu	$6,$2,$6
	subu	$5,$19,$5
	and	$14,$14,$24
	srl	$22,$9,15
	and	$11,$11,$24
	addu	$10,$15,$5
	and	$8,$22,$24
	srl	$19,$6,15
	sll	$23,$14,16
	sll	$2,$11,16
	subu	$4,$18,$4
	subu	$23,$23,$14
	subu	$11,$2,$11
	and	$18,$19,$24
	subu	$5,$15,$5
	sll	$22,$8,16
	srl	$15,$10,15
	subu	$22,$22,$8
	srl	$14,$5,15
	addu	$8,$31,$4
	and	$15,$15,$24
	sll	$19,$18,16
	addu	$7,$7,$11
	addu	$3,$3,$23
	subu	$19,$19,$18
	xor	$11,$7,$11
	and	$21,$14,$24
	subu	$4,$31,$4
	sll	$2,$15,16
	srl	$18,$8,15
	xor	$3,$3,$23
	addu	$9,$9,$22
	subu	$15,$2,$15
	and	$18,$18,$24
	srl	$31,$4,15
	addu	$3,$3,$11
	xor	$9,$9,$22
	addu	$7,$6,$19
	sll	$14,$21,16
	addu	$3,$3,$9
	subu	$14,$14,$21
	and	$31,$31,$24
	xor	$7,$7,$19
	addu	$6,$10,$15
	sll	$11,$18,16
	addu	$2,$3,$7
	subu	$10,$11,$18
	sll	$9,$31,16
	xor	$6,$6,$15
	addu	$5,$5,$14
	subu	$7,$9,$31
	addu	$2,$2,$6
	xor	$5,$5,$14
	addu	$3,$8,$10
	addu	$2,$2,$5
	xor	$3,$3,$10
	addu	$4,$4,$7
	addu	$2,$2,$3
	xor	$4,$4,$7
	addu	$2,$2,$4
	andi	$3,$2,0xffff
	srl	$2,$2,16
	addu	$2,$3,$2
	bne	$20,$25,.L2090
	addu	$12,$2,$12

	ld	$11,136($sp)
	move	$7,$0
	move	$5,$13
	ld	$6,152($sp)
	ld	$25,176($sp)
	jalr	$25
	move	$4,$11

	addiu	$12,$12,2
	sra	$2,$2,2
	sra	$12,$12,2
	daddiu	$3,$11,8
	subu	$12,$12,$2
	ld	$2,184($sp)
	sd	$3,136($sp)
	subu	$12,$2,$12
	ld	$2,128($sp)
	daddiu	$2,$2,8
	sd	$2,128($sp)
	sra	$2,$12,31
	xor	$12,$2,$12
	subu	$12,$12,$2
	ld	$2,160($sp)
	addu	$2,$12,$2
	sd	$2,160($sp)
	ld	$2,192($sp)
	bne	$2,$3,.L2100
	ld	$2,144($sp)

	ld	$3,192($sp)
	ld	$4,224($sp)
	ld	$2,208($sp)
	daddu	$3,$3,$4
	ld	$4,216($sp)
	sd	$3,192($sp)
	addiu	$2,$2,-1
	ld	$3,200($sp)
	sd	$2,208($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2092
	sd	$3,200($sp)

	ld	$31,328($sp)
	ld	$2,160($sp)
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
	.end	_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l:
	.frame	$sp,336,$31		# vars= 240, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-336
	dsll	$3,$7,3
	sd	$28,312($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$16,248($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l)))
	sd	$3,224($sp)
	daddiu	$3,$6,32
	ld	$2,%got_page(_ZZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_lE7zeroBuf)($28)
	sd	$3,192($sp)
	dsll	$3,$5,3
	sd	$17,256($sp)
	daddiu	$17,$sp,128
	sd	$2,144($sp)
	daddiu	$16,$2,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_lE7zeroBuf)
	ld	$2,%got_page(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)($28)
	sd	$3,216($sp)
	li	$3,4			# 0x4
	sd	$31,328($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)
	sd	$fp,320($sp)
	sd	$2,176($sp)
	li	$2,65536			# 0x10000
	addiu	$24,$2,1
	sd	$23,304($sp)
	sd	$22,296($sp)
	sd	$21,288($sp)
	sd	$20,280($sp)
	sd	$19,272($sp)
	sd	$18,264($sp)
	sd	$5,168($sp)
	sd	$7,232($sp)
	sd	$4,200($sp)
	sd	$3,208($sp)
	sd	$0,160($sp)
.L2107:
	ld	$2,192($sp)
	ld	$13,232($sp)
	daddiu	$2,$2,-32
	sd	$2,136($sp)
	ld	$2,200($sp)
	sd	$2,128($sp)
	ld	$2,144($sp)
	daddiu	$2,$2,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_lE7zeroBuf)
	sd	$2,152($sp)
	ld	$2,144($sp)
.L2115:
	move	$25,$sp
	move	$15,$sp
	sd	$25,184($sp)
	lbu	$23,1($16)
	lbu	$fp,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_lE7zeroBuf)($2)
	ld	$14,128($sp)
	lbu	$22,2($16)
	lbu	$21,3($16)
	lbu	$20,4($16)
	lbu	$19,5($16)
	lbu	$18,6($16)
	lbu	$31,7($16)
	ld	$25,168($sp)
	.align	3
.L2102:
	lbu	$2,0($14)
	daddiu	$15,$15,16
	lbu	$4,1($14)
	lbu	$11,2($14)
	lbu	$8,3($14)
	subu	$3,$2,$fp
	lbu	$10,4($14)
	subu	$4,$4,$23
	lbu	$7,5($14)
	subu	$11,$11,$22
	subu	$12,$3,$4
	lbu	$9,6($14)
	subu	$8,$8,$21
	addu	$2,$3,$4
	lbu	$6,7($14)
	subu	$10,$10,$20
	subu	$5,$11,$8
	subu	$7,$7,$19
	sll	$5,$5,16
	subu	$9,$9,$18
	subu	$3,$10,$7
	subu	$6,$6,$31
	addu	$7,$10,$7
	subu	$4,$9,$6
	sll	$12,$12,16
	addu	$6,$9,$6
	addu	$8,$11,$8
	sll	$3,$3,16
	sll	$4,$4,16
	addu	$4,$4,$6
	addu	$8,$5,$8
	addu	$3,$3,$7
	addu	$2,$12,$2
	addu	$5,$3,$4
	addu	$7,$2,$8
	subu	$3,$3,$4
	subu	$2,$2,$8
	addu	$6,$7,$5
	addu	$4,$2,$3
	subu	$7,$7,$5
	subu	$2,$2,$3
	sw	$6,-16($15)
	sw	$7,-8($15)
	daddu	$14,$14,$25
	sw	$4,-12($15)
	bne	$17,$15,.L2102
	sw	$2,-4($15)

	ld	$25,184($sp)
	move	$12,$0
	daddiu	$20,$25,16
.L2103:
	lw	$9,0($25)
	daddiu	$25,$25,4
	lw	$4,12($25)
	lw	$2,44($25)
	lw	$8,28($25)
	addu	$15,$9,$4
	lw	$6,76($25)
	subu	$9,$9,$4
	lw	$3,108($25)
	lw	$18,60($25)
	addu	$5,$8,$2
	subu	$8,$8,$2
	lw	$4,92($25)
	addu	$10,$15,$5
	subu	$15,$15,$5
	addu	$2,$9,$8
	subu	$31,$9,$8
	addu	$19,$18,$6
	subu	$18,$18,$6
	addu	$5,$4,$3
	subu	$4,$4,$3
	addu	$7,$19,$5
	addu	$6,$18,$4
	addu	$3,$10,$7
	subu	$7,$10,$7
	addu	$9,$2,$6
	srl	$14,$3,15
	srl	$11,$7,15
	subu	$6,$2,$6
	subu	$5,$19,$5
	and	$14,$14,$24
	srl	$22,$9,15
	and	$11,$11,$24
	addu	$10,$15,$5
	and	$8,$22,$24
	srl	$19,$6,15
	sll	$23,$14,16
	sll	$2,$11,16
	subu	$4,$18,$4
	subu	$23,$23,$14
	subu	$11,$2,$11
	and	$18,$19,$24
	subu	$5,$15,$5
	sll	$22,$8,16
	srl	$15,$10,15
	subu	$22,$22,$8
	srl	$14,$5,15
	addu	$8,$31,$4
	and	$15,$15,$24
	sll	$19,$18,16
	addu	$7,$7,$11
	addu	$3,$3,$23
	subu	$19,$19,$18
	xor	$11,$7,$11
	and	$21,$14,$24
	subu	$4,$31,$4
	sll	$2,$15,16
	srl	$18,$8,15
	xor	$3,$3,$23
	addu	$9,$9,$22
	subu	$15,$2,$15
	and	$18,$18,$24
	srl	$31,$4,15
	addu	$3,$3,$11
	xor	$9,$9,$22
	addu	$7,$6,$19
	sll	$14,$21,16
	addu	$3,$3,$9
	subu	$14,$14,$21
	and	$31,$31,$24
	xor	$7,$7,$19
	addu	$6,$10,$15
	sll	$11,$18,16
	addu	$2,$3,$7
	subu	$10,$11,$18
	sll	$9,$31,16
	xor	$6,$6,$15
	addu	$5,$5,$14
	subu	$7,$9,$31
	addu	$2,$2,$6
	xor	$5,$5,$14
	addu	$3,$8,$10
	addu	$2,$2,$5
	xor	$3,$3,$10
	addu	$4,$4,$7
	addu	$2,$2,$3
	xor	$4,$4,$7
	addu	$2,$2,$4
	andi	$3,$2,0xffff
	srl	$2,$2,16
	addu	$2,$3,$2
	bne	$20,$25,.L2103
	addu	$12,$2,$12

	ld	$25,176($sp)
	move	$7,$0
	ld	$6,152($sp)
	ld	$5,168($sp)
	jalr	$25
	ld	$4,128($sp)

	ld	$3,144($sp)
	move	$25,$sp
	addiu	$12,$12,2
	lbu	$23,1($16)
	sra	$2,$2,2
	lbu	$22,2($16)
	sra	$12,$12,2
	move	$15,$sp
	lbu	$fp,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_lE7zeroBuf)($3)
	subu	$2,$12,$2
	lbu	$21,3($16)
	lbu	$20,4($16)
	ld	$14,136($sp)
	lbu	$19,5($16)
	lbu	$18,6($16)
	lbu	$31,7($16)
	sd	$2,184($sp)
	.align	3
.L2104:
	lbu	$9,0($14)
	daddiu	$15,$15,16
	lbu	$5,1($14)
	lbu	$12,2($14)
	lbu	$8,3($14)
	subu	$9,$9,$fp
	lbu	$11,4($14)
	subu	$5,$5,$23
	lbu	$7,5($14)
	subu	$12,$12,$22
	subu	$2,$9,$5
	lbu	$4,6($14)
	subu	$8,$8,$21
	addu	$9,$9,$5
	lbu	$10,7($14)
	subu	$11,$11,$20
	subu	$6,$12,$8
	subu	$7,$7,$19
	sll	$2,$2,16
	subu	$4,$4,$18
	subu	$3,$11,$7
	subu	$10,$10,$31
	addu	$7,$11,$7
	subu	$5,$4,$10
	sll	$6,$6,16
	sll	$5,$5,16
	addu	$8,$12,$8
	sll	$3,$3,16
	addu	$4,$4,$10
	addu	$4,$5,$4
	addu	$6,$6,$8
	addu	$3,$3,$7
	addu	$2,$2,$9
	addu	$5,$2,$6
	subu	$2,$2,$6
	addu	$6,$3,$4
	subu	$3,$3,$4
	addu	$7,$5,$6
	addu	$4,$2,$3
	subu	$5,$5,$6
	subu	$2,$2,$3
	sw	$7,-16($15)
	sw	$5,-8($15)
	daddu	$14,$14,$13
	sw	$4,-12($15)
	bne	$17,$15,.L2104
	sw	$2,-4($15)

	daddiu	$20,$25,16
	move	$12,$0
.L2105:
	lw	$9,0($25)
	daddiu	$25,$25,4
	lw	$4,12($25)
	lw	$2,44($25)
	lw	$8,28($25)
	addu	$15,$9,$4
	lw	$6,76($25)
	subu	$9,$9,$4
	lw	$3,108($25)
	lw	$18,60($25)
	addu	$5,$8,$2
	subu	$8,$8,$2
	lw	$4,92($25)
	addu	$10,$15,$5
	subu	$15,$15,$5
	addu	$2,$9,$8
	subu	$31,$9,$8
	addu	$19,$18,$6
	subu	$18,$18,$6
	addu	$5,$4,$3
	subu	$4,$4,$3
	addu	$7,$19,$5
	addu	$6,$18,$4
	addu	$3,$10,$7
	subu	$7,$10,$7
	addu	$9,$2,$6
	srl	$14,$3,15
	srl	$11,$7,15
	subu	$6,$2,$6
	subu	$5,$19,$5
	and	$14,$14,$24
	srl	$22,$9,15
	and	$11,$11,$24
	addu	$10,$15,$5
	and	$8,$22,$24
	srl	$19,$6,15
	sll	$23,$14,16
	sll	$2,$11,16
	subu	$4,$18,$4
	subu	$23,$23,$14
	subu	$11,$2,$11
	and	$18,$19,$24
	subu	$5,$15,$5
	sll	$22,$8,16
	srl	$15,$10,15
	subu	$22,$22,$8
	srl	$14,$5,15
	addu	$8,$31,$4
	and	$15,$15,$24
	sll	$19,$18,16
	addu	$7,$7,$11
	addu	$3,$3,$23
	subu	$19,$19,$18
	xor	$11,$7,$11
	and	$21,$14,$24
	subu	$4,$31,$4
	sll	$2,$15,16
	srl	$18,$8,15
	xor	$3,$3,$23
	addu	$9,$9,$22
	subu	$15,$2,$15
	and	$18,$18,$24
	srl	$31,$4,15
	addu	$3,$3,$11
	xor	$9,$9,$22
	addu	$7,$6,$19
	sll	$14,$21,16
	addu	$3,$3,$9
	subu	$14,$14,$21
	and	$31,$31,$24
	xor	$7,$7,$19
	addu	$6,$10,$15
	sll	$11,$18,16
	addu	$2,$3,$7
	subu	$10,$11,$18
	sll	$9,$31,16
	xor	$6,$6,$15
	addu	$5,$5,$14
	subu	$7,$9,$31
	addu	$2,$2,$6
	xor	$5,$5,$14
	addu	$3,$8,$10
	addu	$2,$2,$5
	xor	$3,$3,$10
	addu	$4,$4,$7
	addu	$2,$2,$3
	xor	$4,$4,$7
	addu	$2,$2,$4
	andi	$3,$2,0xffff
	srl	$2,$2,16
	addu	$2,$3,$2
	bne	$20,$25,.L2105
	addu	$12,$2,$12

	ld	$11,136($sp)
	move	$7,$0
	move	$5,$13
	ld	$6,152($sp)
	ld	$25,176($sp)
	jalr	$25
	move	$4,$11

	addiu	$12,$12,2
	sra	$2,$2,2
	sra	$12,$12,2
	daddiu	$3,$11,8
	subu	$12,$12,$2
	ld	$2,184($sp)
	sd	$3,136($sp)
	subu	$12,$2,$12
	ld	$2,128($sp)
	daddiu	$2,$2,8
	sd	$2,128($sp)
	sra	$2,$12,31
	xor	$12,$2,$12
	subu	$12,$12,$2
	ld	$2,160($sp)
	addu	$2,$12,$2
	sd	$2,160($sp)
	ld	$2,192($sp)
	bne	$2,$3,.L2115
	ld	$2,144($sp)

	ld	$3,192($sp)
	ld	$4,224($sp)
	ld	$2,208($sp)
	daddu	$3,$3,$4
	ld	$4,216($sp)
	sd	$3,192($sp)
	addiu	$2,$2,-1
	ld	$3,200($sp)
	sd	$2,208($sp)
	daddu	$3,$3,$4
	bne	$2,$0,.L2107
	sd	$3,200($sp)

	ld	$31,328($sp)
	ld	$2,160($sp)
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
	.end	_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_110psyCost_ppILi3EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l:
	.frame	$sp,336,$31		# vars= 240, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-336
	dsll	$3,$7,3
	sd	$28,312($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$16,248($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_l)))
	sd	$3,224($sp)
	daddiu	$3,$6,16
	ld	$2,%got_page(_ZZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_lE7zeroBuf)($28)
	sd	$3,184($sp)
	dsll	$3,$5,3
	sd	$17,256($sp)
	daddiu	$17,$sp,128
	sd	$2,144($sp)
	daddiu	$16,$2,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_lE7zeroBuf)
	ld	$2,%got_page(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)($28)
	sd	$3,216($sp)
	li	$3,2			# 0x2
	sd	$31,328($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)
	sd	$fp,320($sp)
	sd	$2,176($sp)
	li	$2,65536			# 0x10000
	addiu	$24,$2,1
	sd	$23,304($sp)
	sd	$22,296($sp)
	sd	$21,288($sp)
	sd	$20,280($sp)
	sd	$19,272($sp)
	sd	$18,264($sp)
	sd	$5,168($sp)
	sd	$7,232($sp)
	sd	$4,200($sp)
	sd	$3,208($sp)
	sd	$0,160($sp)
.L2122:
	ld	$2,184($sp)
	ld	$13,232($sp)
	daddiu	$2,$2,-16
	sd	$2,136($sp)
	ld	$2,200($sp)
	sd	$2,128($sp)
	ld	$2,144($sp)
	daddiu	$2,$2,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_lE7zeroBuf)
	sd	$2,152($sp)
.L2121:
	ld	$2,144($sp)
	move	$25,$sp
	move	$15,$sp
	sd	$25,192($sp)
	lbu	$23,1($16)
	lbu	$fp,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_lE7zeroBuf)($2)
	ld	$14,128($sp)
	lbu	$22,2($16)
	lbu	$21,3($16)
	lbu	$20,4($16)
	lbu	$19,5($16)
	lbu	$18,6($16)
	lbu	$31,7($16)
	ld	$25,168($sp)
	.align	3
.L2117:
	lbu	$2,0($14)
	daddiu	$15,$15,16
	lbu	$4,1($14)
	lbu	$11,2($14)
	lbu	$8,3($14)
	subu	$3,$2,$fp
	lbu	$10,4($14)
	subu	$4,$4,$23
	lbu	$7,5($14)
	subu	$11,$11,$22
	subu	$12,$3,$4
	lbu	$9,6($14)
	subu	$8,$8,$21
	addu	$2,$3,$4
	lbu	$6,7($14)
	subu	$10,$10,$20
	subu	$5,$11,$8
	subu	$7,$7,$19
	sll	$5,$5,16
	subu	$9,$9,$18
	subu	$3,$10,$7
	subu	$6,$6,$31
	addu	$7,$10,$7
	subu	$4,$9,$6
	sll	$12,$12,16
	addu	$6,$9,$6
	addu	$8,$11,$8
	sll	$3,$3,16
	sll	$4,$4,16
	addu	$4,$4,$6
	addu	$8,$5,$8
	addu	$3,$3,$7
	addu	$2,$12,$2
	addu	$5,$3,$4
	addu	$7,$2,$8
	subu	$3,$3,$4
	subu	$2,$2,$8
	addu	$6,$7,$5
	addu	$4,$2,$3
	subu	$7,$7,$5
	subu	$2,$2,$3
	sw	$6,-16($15)
	sw	$7,-8($15)
	daddu	$14,$14,$25
	sw	$4,-12($15)
	bne	$17,$15,.L2117
	sw	$2,-4($15)

	ld	$25,192($sp)
	move	$12,$0
	daddiu	$20,$25,16
.L2118:
	lw	$9,0($25)
	daddiu	$25,$25,4
	lw	$4,12($25)
	lw	$2,44($25)
	lw	$8,28($25)
	addu	$15,$9,$4
	lw	$6,76($25)
	subu	$9,$9,$4
	lw	$3,108($25)
	lw	$18,60($25)
	addu	$5,$8,$2
	subu	$8,$8,$2
	lw	$4,92($25)
	addu	$10,$15,$5
	subu	$15,$15,$5
	addu	$2,$9,$8
	subu	$31,$9,$8
	addu	$19,$18,$6
	subu	$18,$18,$6
	addu	$5,$4,$3
	subu	$4,$4,$3
	addu	$7,$19,$5
	addu	$6,$18,$4
	addu	$3,$10,$7
	subu	$7,$10,$7
	addu	$9,$2,$6
	srl	$14,$3,15
	srl	$11,$7,15
	subu	$6,$2,$6
	subu	$5,$19,$5
	and	$14,$14,$24
	srl	$22,$9,15
	and	$11,$11,$24
	addu	$10,$15,$5
	and	$8,$22,$24
	srl	$19,$6,15
	sll	$23,$14,16
	sll	$2,$11,16
	subu	$4,$18,$4
	subu	$23,$23,$14
	subu	$11,$2,$11
	and	$18,$19,$24
	subu	$5,$15,$5
	sll	$22,$8,16
	srl	$15,$10,15
	subu	$22,$22,$8
	srl	$14,$5,15
	addu	$8,$31,$4
	and	$15,$15,$24
	sll	$19,$18,16
	addu	$7,$7,$11
	addu	$3,$3,$23
	subu	$19,$19,$18
	xor	$11,$7,$11
	and	$21,$14,$24
	subu	$4,$31,$4
	sll	$2,$15,16
	srl	$18,$8,15
	xor	$3,$3,$23
	addu	$9,$9,$22
	subu	$15,$2,$15
	and	$18,$18,$24
	srl	$31,$4,15
	addu	$3,$3,$11
	xor	$9,$9,$22
	addu	$7,$6,$19
	sll	$14,$21,16
	addu	$3,$3,$9
	subu	$14,$14,$21
	and	$31,$31,$24
	xor	$7,$7,$19
	addu	$6,$10,$15
	sll	$11,$18,16
	addu	$2,$3,$7
	subu	$10,$11,$18
	sll	$9,$31,16
	xor	$6,$6,$15
	addu	$5,$5,$14
	subu	$7,$9,$31
	addu	$2,$2,$6
	xor	$5,$5,$14
	addu	$3,$8,$10
	addu	$2,$2,$5
	xor	$3,$3,$10
	addu	$4,$4,$7
	addu	$2,$2,$3
	xor	$4,$4,$7
	addu	$2,$2,$4
	andi	$3,$2,0xffff
	srl	$2,$2,16
	addu	$2,$3,$2
	bne	$20,$25,.L2118
	addu	$12,$2,$12

	ld	$25,176($sp)
	move	$7,$0
	ld	$6,152($sp)
	ld	$5,168($sp)
	jalr	$25
	ld	$4,128($sp)

	ld	$3,144($sp)
	move	$25,$sp
	addiu	$12,$12,2
	lbu	$23,1($16)
	sra	$2,$2,2
	lbu	$22,2($16)
	sra	$12,$12,2
	move	$15,$sp
	lbu	$fp,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi2EEEiPKhlS2_lE7zeroBuf)($3)
	subu	$2,$12,$2
	lbu	$21,3($16)
	lbu	$20,4($16)
	ld	$14,136($sp)
	lbu	$19,5($16)
	lbu	$18,6($16)
	lbu	$31,7($16)
	sd	$2,192($sp)
	.align	3
.L2119:
	lbu	$9,0($14)
	daddiu	$15,$15,16
	lbu	$5,1($14)
	lbu	$12,2($14)
	lbu	$8,3($14)
	subu	$9,$9,$fp
	lbu	$11,4($14)
	subu	$5,$5,$23
	lbu	$7,5($14)
	subu	$12,$12,$22
	subu	$2,$9,$5
	lbu	$4,6($14)
	subu	$8,$8,$21
	addu	$9,$9,$5
	lbu	$10,7($14)
	subu	$11,$11,$20
	subu	$6,$12,$8
	subu	$7,$7,$19
	sll	$2,$2,16
	subu	$4,$4,$18
	subu	$3,$11,$7
	subu	$10,$10,$31
	addu	$7,$11,$7
	subu	$5,$4,$10
	sll	$6,$6,16
	sll	$5,$5,16
	addu	$8,$12,$8
	sll	$3,$3,16
	addu	$4,$4,$10
	addu	$4,$5,$4
	addu	$6,$6,$8
	addu	$3,$3,$7
	addu	$2,$2,$9
	addu	$5,$2,$6
	subu	$2,$2,$6
	addu	$6,$3,$4
	subu	$3,$3,$4
	addu	$7,$5,$6
	addu	$4,$2,$3
	subu	$5,$5,$6
	subu	$2,$2,$3
	sw	$7,-16($15)
	sw	$5,-8($15)
	daddu	$14,$14,$13
	sw	$4,-12($15)
	bne	$17,$15,.L2119
	sw	$2,-4($15)

	daddiu	$20,$25,16
	move	$12,$0
.L2120:
	lw	$9,0($25)
	daddiu	$25,$25,4
	lw	$4,12($25)
	lw	$2,44($25)
	lw	$8,28($25)
	addu	$15,$9,$4
	lw	$6,76($25)
	subu	$9,$9,$4
	lw	$3,108($25)
	lw	$18,60($25)
	addu	$5,$8,$2
	subu	$8,$8,$2
	lw	$4,92($25)
	addu	$10,$15,$5
	subu	$15,$15,$5
	addu	$2,$9,$8
	subu	$31,$9,$8
	addu	$19,$18,$6
	subu	$18,$18,$6
	addu	$5,$4,$3
	subu	$4,$4,$3
	addu	$7,$19,$5
	addu	$6,$18,$4
	addu	$3,$10,$7
	subu	$7,$10,$7
	addu	$9,$2,$6
	srl	$14,$3,15
	srl	$11,$7,15
	subu	$6,$2,$6
	subu	$5,$19,$5
	and	$14,$14,$24
	srl	$22,$9,15
	and	$11,$11,$24
	addu	$10,$15,$5
	and	$8,$22,$24
	srl	$19,$6,15
	sll	$23,$14,16
	sll	$2,$11,16
	subu	$4,$18,$4
	subu	$23,$23,$14
	subu	$11,$2,$11
	and	$18,$19,$24
	subu	$5,$15,$5
	sll	$22,$8,16
	srl	$15,$10,15
	subu	$22,$22,$8
	srl	$14,$5,15
	addu	$8,$31,$4
	and	$15,$15,$24
	sll	$19,$18,16
	addu	$7,$7,$11
	addu	$3,$3,$23
	subu	$19,$19,$18
	xor	$11,$7,$11
	and	$21,$14,$24
	subu	$4,$31,$4
	sll	$2,$15,16
	srl	$18,$8,15
	xor	$3,$3,$23
	addu	$9,$9,$22
	subu	$15,$2,$15
	and	$18,$18,$24
	srl	$31,$4,15
	addu	$3,$3,$11
	xor	$9,$9,$22
	addu	$7,$6,$19
	sll	$14,$21,16
	addu	$3,$3,$9
	subu	$14,$14,$21
	and	$31,$31,$24
	xor	$7,$7,$19
	addu	$6,$10,$15
	sll	$11,$18,16
	addu	$2,$3,$7
	subu	$10,$11,$18
	sll	$9,$31,16
	xor	$6,$6,$15
	addu	$5,$5,$14
	subu	$7,$9,$31
	addu	$2,$2,$6
	xor	$5,$5,$14
	addu	$3,$8,$10
	addu	$2,$2,$5
	xor	$3,$3,$10
	addu	$4,$4,$7
	addu	$2,$2,$3
	xor	$4,$4,$7
	addu	$2,$2,$4
	andi	$3,$2,0xffff
	srl	$2,$2,16
	addu	$2,$3,$2
	bne	$20,$25,.L2120
	addu	$12,$2,$12

	ld	$11,136($sp)
	move	$5,$13
	move	$7,$0
	ld	$6,152($sp)
	ld	$25,176($sp)
	jalr	$25
	move	$4,$11

	ld	$4,184($sp)
	addiu	$12,$12,2
	sra	$2,$2,2
	sra	$12,$12,2
	daddiu	$3,$11,8
	subu	$12,$12,$2
	ld	$2,192($sp)
	sd	$3,136($sp)
	subu	$12,$2,$12
	ld	$2,128($sp)
	daddiu	$2,$2,8
	sd	$2,128($sp)
	sra	$2,$12,31
	xor	$12,$2,$12
	subu	$12,$12,$2
	ld	$2,160($sp)
	addu	$5,$12,$2
	bne	$4,$3,.L2121
	sd	$5,160($sp)

	ld	$3,224($sp)
	li	$2,1			# 0x1
	daddu	$3,$4,$3
	ld	$4,216($sp)
	sd	$3,184($sp)
	ld	$3,200($sp)
	daddu	$3,$3,$4
	sd	$3,200($sp)
	ld	$3,208($sp)
	bne	$3,$2,.L2123
	ld	$31,328($sp)

	move	$2,$5
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

	.align	3
.L2123:
	li	$2,1			# 0x1
	b	.L2122
	sd	$2,208($sp)

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
	.frame	$sp,256,$31		# vars= 160, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-256
	move	$14,$4
	sd	$28,232($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l)))
	move	$24,$sp
	daddu	$28,$28,$25
	sd	$16,168($sp)
	move	$15,$sp
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l)))
	sd	$fp,240($sp)
	daddiu	$fp,$sp,128
	ld	$2,%got_page(_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf)($28)
	sd	$23,224($sp)
	sd	$18,184($sp)
	move	$18,$7
	daddiu	$16,$2,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf)
	sd	$31,248($sp)
	sd	$22,216($sp)
	sd	$21,208($sp)
	sd	$20,200($sp)
	sd	$19,192($sp)
	sd	$17,176($sp)
	lbu	$23,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf)($2)
	lbu	$22,1($16)
	lbu	$21,2($16)
	lbu	$20,3($16)
	lbu	$19,4($16)
	lbu	$17,5($16)
	lbu	$31,6($16)
	lbu	$25,7($16)
	sd	$2,136($sp)
	sd	$4,144($sp)
	sd	$6,128($sp)
	.align	3
.L2131:
	lbu	$10,0($14)
	daddiu	$15,$15,16
	lbu	$6,1($14)
	lbu	$13,2($14)
	lbu	$9,3($14)
	subu	$10,$10,$23
	lbu	$12,4($14)
	subu	$6,$6,$22
	lbu	$8,5($14)
	subu	$13,$13,$21
	subu	$2,$10,$6
	lbu	$4,6($14)
	subu	$9,$9,$20
	addu	$10,$10,$6
	lbu	$11,7($14)
	subu	$12,$12,$19
	subu	$7,$13,$9
	subu	$8,$8,$17
	sll	$2,$2,16
	subu	$4,$4,$31
	subu	$3,$12,$8
	subu	$11,$11,$25
	addu	$8,$12,$8
	subu	$6,$4,$11
	sll	$7,$7,16
	sll	$6,$6,16
	addu	$9,$13,$9
	sll	$3,$3,16
	addu	$4,$4,$11
	addu	$4,$6,$4
	addu	$7,$7,$9
	addu	$3,$3,$8
	addu	$2,$2,$10
	addu	$6,$2,$7
	subu	$2,$2,$7
	addu	$7,$3,$4
	subu	$3,$3,$4
	addu	$8,$6,$7
	addu	$4,$2,$3
	subu	$6,$6,$7
	subu	$2,$2,$3
	sw	$8,-16($15)
	sw	$6,-8($15)
	daddu	$14,$14,$5
	sw	$4,-12($15)
	bne	$fp,$15,.L2131
	sw	$2,-4($15)

	li	$15,65536			# 0x10000
	daddiu	$25,$24,16
	move	$fp,$0
	addiu	$15,$15,1
.L2132:
	lw	$10,0($24)
	daddiu	$24,$24,4
	lw	$4,12($24)
	lw	$2,44($24)
	lw	$9,28($24)
	addu	$14,$10,$4
	lw	$7,76($24)
	subu	$10,$10,$4
	lw	$3,108($24)
	lw	$17,60($24)
	addu	$6,$9,$2
	subu	$9,$9,$2
	lw	$4,92($24)
	addu	$11,$14,$6
	subu	$14,$14,$6
	addu	$2,$10,$9
	subu	$31,$10,$9
	addu	$19,$17,$7
	subu	$17,$17,$7
	addu	$6,$4,$3
	subu	$4,$4,$3
	addu	$8,$19,$6
	addu	$7,$17,$4
	addu	$3,$11,$8
	subu	$8,$11,$8
	addu	$10,$2,$7
	srl	$13,$3,15
	srl	$12,$8,15
	subu	$7,$2,$7
	subu	$6,$19,$6
	and	$13,$13,$15
	srl	$21,$10,15
	and	$12,$12,$15
	addu	$11,$14,$6
	and	$9,$21,$15
	srl	$19,$7,15
	sll	$22,$13,16
	sll	$2,$12,16
	subu	$4,$17,$4
	subu	$22,$22,$13
	subu	$12,$2,$12
	and	$17,$19,$15
	subu	$6,$14,$6
	sll	$21,$9,16
	srl	$14,$11,15
	subu	$21,$21,$9
	srl	$13,$6,15
	addu	$9,$31,$4
	and	$14,$14,$15
	sll	$19,$17,16
	addu	$8,$8,$12
	addu	$3,$3,$22
	subu	$19,$19,$17
	xor	$12,$8,$12
	and	$20,$13,$15
	subu	$4,$31,$4
	sll	$2,$14,16
	srl	$17,$9,15
	xor	$3,$3,$22
	addu	$10,$10,$21
	subu	$14,$2,$14
	and	$17,$17,$15
	srl	$31,$4,15
	addu	$3,$3,$12
	xor	$10,$10,$21
	addu	$8,$7,$19
	sll	$13,$20,16
	addu	$3,$3,$10
	subu	$13,$13,$20
	and	$31,$31,$15
	xor	$8,$8,$19
	addu	$7,$11,$14
	sll	$12,$17,16
	addu	$2,$3,$8
	subu	$11,$12,$17
	sll	$10,$31,16
	xor	$7,$7,$14
	addu	$6,$6,$13
	subu	$8,$10,$31
	addu	$2,$2,$7
	xor	$6,$6,$13
	addu	$3,$9,$11
	addu	$2,$2,$6
	xor	$3,$3,$11
	addu	$4,$4,$8
	addu	$2,$2,$3
	xor	$4,$4,$8
	addu	$2,$2,$4
	andi	$3,$2,0xffff
	srl	$2,$2,16
	addu	$2,$3,$2
	bne	$25,$24,.L2132
	addu	$fp,$2,$fp

	ld	$11,136($sp)
	move	$7,$0
	addiu	$fp,$fp,2
	ld	$25,%got_page(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)($28)
	sra	$fp,$fp,2
	daddiu	$22,$sp,128
	ld	$4,144($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
1:	jalr	$25
	daddiu	$6,$11,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf)

	ld	$13,128($sp)
	move	$15,$sp
	sra	$2,$2,2
	lbu	$21,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf)($11)
	move	$14,$sp
	subu	$fp,$fp,$2
	lbu	$2,5($16)
	lbu	$20,1($16)
	lbu	$19,2($16)
	lbu	$17,3($16)
	lbu	$23,4($16)
	lbu	$31,6($16)
	lbu	$24,7($16)
	move	$16,$2
	.align	3
.L2133:
	lbu	$9,0($13)
	daddiu	$14,$14,16
	lbu	$5,1($13)
	lbu	$12,2($13)
	lbu	$8,3($13)
	subu	$9,$9,$21
	lbu	$11,4($13)
	subu	$5,$5,$20
	lbu	$7,5($13)
	subu	$12,$12,$19
	subu	$2,$9,$5
	lbu	$4,6($13)
	subu	$8,$8,$17
	addu	$9,$9,$5
	lbu	$10,7($13)
	subu	$11,$11,$23
	subu	$6,$12,$8
	subu	$7,$7,$16
	sll	$2,$2,16
	subu	$4,$4,$31
	subu	$3,$11,$7
	subu	$10,$10,$24
	addu	$7,$11,$7
	subu	$5,$4,$10
	sll	$6,$6,16
	sll	$5,$5,16
	addu	$8,$12,$8
	sll	$3,$3,16
	addu	$4,$4,$10
	addu	$4,$5,$4
	addu	$6,$6,$8
	addu	$3,$3,$7
	addu	$2,$2,$9
	addu	$5,$2,$6
	subu	$2,$2,$6
	addu	$6,$3,$4
	subu	$3,$3,$4
	addu	$7,$5,$6
	addu	$4,$2,$3
	subu	$5,$5,$6
	subu	$2,$2,$3
	sw	$7,-16($14)
	sw	$5,-8($14)
	daddu	$13,$13,$18
	sw	$4,-12($14)
	bne	$22,$14,.L2133
	sw	$2,-4($14)

	li	$13,65536			# 0x10000
	daddiu	$14,$15,16
	move	$12,$0
	addiu	$13,$13,1
.L2134:
	lw	$9,0($15)
	daddiu	$15,$15,4
	lw	$4,12($15)
	lw	$2,44($15)
	lw	$8,28($15)
	addu	$31,$9,$4
	lw	$6,76($15)
	subu	$9,$9,$4
	lw	$3,108($15)
	lw	$17,60($15)
	addu	$5,$8,$2
	subu	$8,$8,$2
	lw	$4,92($15)
	addu	$10,$31,$5
	subu	$31,$31,$5
	addu	$2,$9,$8
	subu	$16,$9,$8
	addu	$19,$17,$6
	subu	$17,$17,$6
	addu	$5,$4,$3
	subu	$4,$4,$3
	addu	$7,$19,$5
	addu	$6,$17,$4
	addu	$3,$10,$7
	subu	$7,$10,$7
	addu	$9,$2,$6
	srl	$24,$3,15
	srl	$11,$7,15
	subu	$6,$2,$6
	subu	$5,$19,$5
	and	$24,$24,$13
	srl	$21,$9,15
	and	$11,$11,$13
	addu	$10,$31,$5
	and	$8,$21,$13
	srl	$19,$6,15
	sll	$22,$24,16
	sll	$2,$11,16
	subu	$4,$17,$4
	subu	$22,$22,$24
	subu	$11,$2,$11
	and	$17,$19,$13
	subu	$5,$31,$5
	sll	$21,$8,16
	srl	$31,$10,15
	subu	$21,$21,$8
	srl	$24,$5,15
	addu	$8,$16,$4
	and	$31,$31,$13
	sll	$19,$17,16
	addu	$7,$7,$11
	addu	$3,$3,$22
	subu	$19,$19,$17
	xor	$11,$7,$11
	and	$20,$24,$13
	subu	$4,$16,$4
	sll	$2,$31,16
	srl	$17,$8,15
	xor	$3,$3,$22
	addu	$9,$9,$21
	subu	$31,$2,$31
	and	$17,$17,$13
	srl	$16,$4,15
	addu	$3,$3,$11
	xor	$9,$9,$21
	addu	$7,$6,$19
	sll	$24,$20,16
	addu	$3,$3,$9
	subu	$24,$24,$20
	and	$16,$16,$13
	xor	$7,$7,$19
	addu	$6,$10,$31
	sll	$11,$17,16
	addu	$2,$3,$7
	subu	$10,$11,$17
	sll	$9,$16,16
	xor	$6,$6,$31
	addu	$5,$5,$24
	subu	$7,$9,$16
	addu	$2,$2,$6
	xor	$5,$5,$24
	addu	$3,$8,$10
	addu	$2,$2,$5
	xor	$3,$3,$10
	addu	$4,$4,$7
	addu	$2,$2,$3
	xor	$4,$4,$7
	addu	$2,$2,$4
	andi	$3,$2,0xffff
	srl	$2,$2,16
	addu	$2,$3,$2
	bne	$14,$15,.L2134
	addu	$12,$2,$12

	ld	$2,136($sp)
	move	$5,$18
	move	$7,$0
	ld	$4,128($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_17sad_8x8EPKhlS1_l
1:	jalr	$25
	daddiu	$6,$2,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_lE7zeroBuf)

	ld	$31,248($sp)
	addiu	$12,$12,2
	sra	$2,$2,2
	ld	$28,232($sp)
	sra	$12,$12,2
	ld	$23,224($sp)
	subu	$12,$12,$2
	ld	$22,216($sp)
	subu	$12,$fp,$12
	ld	$21,208($sp)
	sra	$2,$12,31
	ld	$fp,240($sp)
	xor	$12,$2,$12
	ld	$20,200($sp)
	ld	$19,192($sp)
	subu	$2,$12,$2
	ld	$18,184($sp)
	ld	$17,176($sp)
	ld	$16,168($sp)
	jr	$31
	daddiu	$sp,$sp,256

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_110psyCost_ppILi1EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l:
	.frame	$sp,240,$31		# vars= 160, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-240
	dsll	$2,$5,3
	sd	$20,192($sp)
	li	$20,65536			# 0x10000
	sd	$2,152($sp)
	dsll	$2,$7,3
	addiu	$20,$20,1
	sd	$22,208($sp)
	daddiu	$22,$sp,128
	sd	$2,144($sp)
	li	$2,2			# 0x2
	sd	$fp,232($sp)
	sd	$23,216($sp)
	sd	$21,200($sp)
	sd	$19,184($sp)
	sd	$18,176($sp)
	sd	$17,168($sp)
	sd	$16,160($sp)
	sd	$2,136($sp)
	sd	$0,128($sp)
.L2143:
	move	$13,$4
	move	$12,$6
	move	$19,$sp
	move	$14,$sp
	.align	3
.L2141:
	lbu	$10,0($12)
	daddiu	$14,$14,16
	lbu	$3,0($13)
	lbu	$2,1($12)
	lbu	$9,1($13)
	subu	$3,$3,$10
	lbu	$8,2($13)
	lbu	$10,2($12)
	lbu	$11,3($13)
	subu	$9,$9,$2
	lbu	$2,3($12)
	subu	$15,$3,$9
	addu	$9,$3,$9
	subu	$8,$8,$10
	lbu	$3,4($13)
	sll	$15,$15,16
	lbu	$16,5($12)
	addu	$15,$15,$9
	lbu	$10,4($12)
	subu	$2,$11,$2
	lbu	$24,5($13)
	subu	$9,$8,$2
	addu	$11,$8,$2
	lbu	$25,7($13)
	sll	$2,$9,16
	lbu	$8,6($13)
	subu	$10,$3,$10
	addu	$2,$2,$11
	subu	$24,$24,$16
	lbu	$9,6($12)
	addu	$11,$15,$2
	lbu	$16,7($12)
	subu	$3,$10,$24
	addu	$10,$10,$24
	sll	$3,$3,16
	subu	$2,$15,$2
	addu	$3,$3,$10
	subu	$9,$8,$9
	subu	$10,$25,$16
	daddu	$13,$13,$5
	subu	$8,$9,$10
	addu	$9,$9,$10
	sll	$8,$8,16
	daddu	$12,$12,$7
	addu	$8,$8,$9
	addu	$9,$3,$8
	subu	$3,$3,$8
	addu	$10,$11,$9
	addu	$8,$2,$3
	subu	$11,$11,$9
	subu	$2,$2,$3
	sw	$10,-16($14)
	sw	$11,-8($14)
	sw	$8,-12($14)
	bne	$22,$14,.L2141
	sw	$2,-4($14)

	daddiu	$23,$19,16
	move	$21,$0
.L2142:
	lw	$24,0($19)
	daddiu	$19,$19,4
	lw	$8,12($19)
	lw	$3,44($19)
	lw	$12,28($19)
	addu	$9,$24,$8
	lw	$11,76($19)
	subu	$24,$24,$8
	lw	$10,108($19)
	lw	$17,60($19)
	addu	$2,$12,$3
	subu	$12,$12,$3
	lw	$8,92($19)
	addu	$3,$9,$2
	addu	$25,$24,$12
	subu	$24,$24,$12
	addu	$16,$17,$11
	subu	$17,$17,$11
	subu	$11,$9,$2
	addu	$9,$8,$10
	addu	$2,$16,$9
	subu	$8,$8,$10
	addu	$10,$17,$8
	addu	$14,$3,$2
	subu	$3,$3,$2
	addu	$13,$25,$10
	srl	$2,$14,15
	srl	$fp,$3,15
	subu	$9,$16,$9
	and	$18,$2,$20
	and	$15,$fp,$20
	subu	$10,$25,$10
	srl	$16,$13,15
	addu	$12,$11,$9
	and	$16,$16,$20
	sll	$2,$18,16
	sll	$fp,$15,16
	srl	$25,$10,15
	subu	$2,$2,$18
	subu	$fp,$fp,$15
	subu	$8,$17,$8
	subu	$9,$11,$9
	and	$25,$25,$20
	sll	$17,$16,16
	srl	$18,$12,15
	subu	$17,$17,$16
	and	$18,$18,$20
	addu	$11,$24,$8
	sll	$15,$25,16
	srl	$16,$9,15
	addu	$14,$14,$2
	addu	$3,$3,$fp
	subu	$25,$15,$25
	subu	$8,$24,$8
	xor	$14,$14,$2
	and	$16,$16,$20
	sll	$15,$18,16
	srl	$24,$11,15
	xor	$3,$3,$fp
	addu	$13,$13,$17
	subu	$15,$15,$18
	and	$24,$24,$20
	srl	$18,$8,15
	addu	$3,$14,$3
	xor	$13,$13,$17
	addu	$2,$10,$25
	sll	$fp,$16,16
	addu	$3,$3,$13
	subu	$16,$fp,$16
	and	$14,$18,$20
	sll	$10,$24,16
	xor	$2,$2,$25
	addu	$12,$12,$15
	subu	$24,$10,$24
	addu	$2,$3,$2
	sll	$13,$14,16
	xor	$15,$12,$15
	addu	$9,$9,$16
	subu	$3,$13,$14
	addu	$2,$2,$15
	xor	$9,$9,$16
	addu	$11,$11,$24
	addu	$8,$8,$3
	addu	$2,$2,$9
	xor	$11,$11,$24
	xor	$8,$8,$3
	addu	$2,$2,$11
	addu	$2,$2,$8
	andi	$3,$2,0xffff
	srl	$2,$2,16
	addu	$2,$3,$2
	bne	$23,$19,.L2142
	addu	$21,$2,$21

	ld	$3,152($sp)
	addiu	$2,$21,2
	li	$8,1			# 0x1
	sra	$2,$2,2
	daddu	$4,$4,$3
	ld	$3,144($sp)
	daddu	$6,$6,$3
	ld	$3,128($sp)
	addu	$2,$2,$3
	move	$3,$2
	sd	$3,128($sp)
	ld	$3,136($sp)
	bne	$3,$8,.L2144
	ld	$fp,232($sp)

	ld	$23,216($sp)
	ld	$22,208($sp)
	ld	$21,200($sp)
	ld	$20,192($sp)
	ld	$19,184($sp)
	ld	$18,176($sp)
	ld	$17,168($sp)
	ld	$16,160($sp)
	jr	$31
	daddiu	$sp,$sp,240

	.align	3
.L2144:
	li	$2,1			# 0x1
	b	.L2143
	sd	$2,136($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
	.type	_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l, @function
_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l:
	.frame	$sp,176,$31		# vars= 128, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-176
	move	$10,$sp
	daddiu	$13,$sp,128
	sd	$20,160($sp)
	move	$9,$sp
	sd	$19,152($sp)
	sd	$18,144($sp)
	sd	$17,136($sp)
	sd	$16,128($sp)
	.align	3
.L2149:
	lbu	$8,0($4)
	daddiu	$9,$9,16
	lbu	$3,1($4)
	lbu	$12,1($6)
	lbu	$2,0($6)
	lbu	$24,2($6)
	lbu	$11,2($4)
	subu	$2,$8,$2
	subu	$8,$3,$12
	lbu	$14,3($4)
	lbu	$12,3($6)
	subu	$15,$2,$8
	addu	$2,$2,$8
	lbu	$3,4($4)
	sll	$8,$15,16
	subu	$11,$11,$24
	lbu	$15,4($6)
	addu	$8,$8,$2
	lbu	$24,5($4)
	subu	$14,$14,$12
	lbu	$2,5($6)
	subu	$12,$11,$14
	addu	$14,$11,$14
	subu	$3,$3,$15
	lbu	$11,6($4)
	sll	$12,$12,16
	lbu	$16,6($6)
	addu	$12,$12,$14
	lbu	$15,7($4)
	subu	$24,$24,$2
	addu	$14,$8,$12
	lbu	$25,7($6)
	subu	$2,$3,$24
	subu	$8,$8,$12
	subu	$11,$11,$16
	sll	$2,$2,16
	addu	$3,$3,$24
	daddu	$4,$4,$5
	subu	$12,$15,$25
	addu	$3,$2,$3
	subu	$2,$11,$12
	addu	$11,$11,$12
	sll	$2,$2,16
	daddu	$6,$6,$7
	addu	$2,$2,$11
	addu	$11,$3,$2
	subu	$2,$3,$2
	addu	$12,$14,$11
	addu	$3,$8,$2
	subu	$14,$14,$11
	subu	$2,$8,$2
	sw	$12,-16($9)
	sw	$14,-8($9)
	sw	$3,-12($9)
	bne	$13,$9,.L2149
	sw	$2,-4($9)

	li	$9,65536			# 0x10000
	daddiu	$11,$10,16
	move	$2,$0
	addiu	$9,$9,1
.L2150:
	lw	$13,0($10)
	daddiu	$10,$10,4
	lw	$5,12($10)
	lw	$3,44($10)
	lw	$12,28($10)
	addu	$16,$13,$5
	lw	$7,76($10)
	subu	$13,$13,$5
	lw	$4,108($10)
	lw	$17,60($10)
	addu	$6,$12,$3
	subu	$12,$12,$3
	lw	$5,92($10)
	addu	$14,$16,$6
	subu	$16,$16,$6
	addu	$3,$13,$12
	subu	$13,$13,$12
	addu	$15,$17,$7
	subu	$17,$17,$7
	addu	$6,$5,$4
	subu	$5,$5,$4
	addu	$8,$15,$6
	addu	$7,$17,$5
	addu	$4,$14,$8
	subu	$8,$14,$8
	addu	$12,$3,$7
	srl	$25,$4,15
	srl	$24,$8,15
	subu	$7,$3,$7
	and	$24,$24,$9
	subu	$6,$15,$6
	and	$25,$25,$9
	srl	$14,$12,15
	and	$14,$14,$9
	addu	$15,$16,$6
	srl	$3,$7,15
	sll	$18,$25,16
	sll	$20,$24,16
	subu	$25,$18,$25
	subu	$5,$17,$5
	subu	$20,$20,$24
	and	$17,$3,$9
	subu	$6,$16,$6
	sll	$19,$14,16
	srl	$16,$15,15
	subu	$19,$19,$14
	srl	$24,$6,15
	addu	$14,$13,$5
	and	$16,$16,$9
	sll	$3,$17,16
	addu	$4,$4,$25
	addu	$8,$8,$20
	subu	$3,$3,$17
	and	$18,$24,$9
	subu	$5,$13,$5
	sll	$24,$16,16
	srl	$13,$14,15
	xor	$4,$4,$25
	xor	$8,$8,$20
	addu	$12,$12,$19
	subu	$16,$24,$16
	and	$17,$13,$9
	srl	$25,$5,15
	addu	$4,$4,$8
	xor	$12,$12,$19
	addu	$8,$7,$3
	sll	$24,$18,16
	addu	$4,$4,$12
	subu	$24,$24,$18
	and	$25,$25,$9
	xor	$8,$8,$3
	sll	$13,$17,16
	addu	$7,$15,$16
	addu	$3,$4,$8
	subu	$13,$13,$17
	sll	$12,$25,16
	xor	$7,$7,$16
	addu	$6,$6,$24
	subu	$8,$12,$25
	addu	$3,$3,$7
	xor	$6,$6,$24
	addu	$4,$14,$13
	addu	$3,$3,$6
	xor	$4,$4,$13
	addu	$5,$5,$8
	addu	$3,$3,$4
	xor	$5,$5,$8
	addu	$3,$3,$5
	andi	$4,$3,0xffff
	srl	$3,$3,16
	addu	$3,$4,$3
	bne	$11,$10,.L2150
	addu	$2,$3,$2

	addiu	$2,$2,2
	ld	$20,160($sp)
	ld	$19,152($sp)
	sra	$2,$2,2
	ld	$18,144($sp)
	ld	$17,136($sp)
	ld	$16,128($sp)
	jr	$31
	daddiu	$sp,$sp,176

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
	.size	_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l, .-_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_15sa8d8ILi8ELi8EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_15sa8d8ILi8ELi8EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_15sa8d8ILi8ELi8EEEiPKhlS2_l:
	.frame	$sp,176,$31		# vars= 128, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-176
	move	$10,$sp
	daddiu	$13,$sp,128
	sd	$20,160($sp)
	move	$9,$sp
	sd	$19,152($sp)
	sd	$18,144($sp)
	sd	$17,136($sp)
	sd	$16,128($sp)
	.align	3
.L2155:
	lbu	$8,0($4)
	daddiu	$9,$9,16
	lbu	$3,1($4)
	lbu	$12,1($6)
	lbu	$2,0($6)
	lbu	$24,2($6)
	lbu	$11,2($4)
	subu	$2,$8,$2
	subu	$8,$3,$12
	lbu	$14,3($4)
	lbu	$12,3($6)
	subu	$15,$2,$8
	addu	$2,$2,$8
	lbu	$3,4($4)
	sll	$8,$15,16
	subu	$11,$11,$24
	lbu	$15,4($6)
	addu	$8,$8,$2
	lbu	$24,5($4)
	subu	$14,$14,$12
	lbu	$2,5($6)
	subu	$12,$11,$14
	addu	$14,$11,$14
	subu	$3,$3,$15
	lbu	$11,6($4)
	sll	$12,$12,16
	lbu	$16,6($6)
	addu	$12,$12,$14
	lbu	$15,7($4)
	subu	$24,$24,$2
	addu	$14,$8,$12
	lbu	$25,7($6)
	subu	$2,$3,$24
	subu	$8,$8,$12
	subu	$11,$11,$16
	sll	$2,$2,16
	addu	$3,$3,$24
	daddu	$4,$4,$5
	subu	$12,$15,$25
	addu	$3,$2,$3
	subu	$2,$11,$12
	addu	$11,$11,$12
	sll	$2,$2,16
	daddu	$6,$6,$7
	addu	$2,$2,$11
	addu	$11,$3,$2
	subu	$2,$3,$2
	addu	$12,$14,$11
	addu	$3,$8,$2
	subu	$14,$14,$11
	subu	$2,$8,$2
	sw	$12,-16($9)
	sw	$14,-8($9)
	sw	$3,-12($9)
	bne	$13,$9,.L2155
	sw	$2,-4($9)

	li	$9,65536			# 0x10000
	daddiu	$11,$10,16
	move	$2,$0
	addiu	$9,$9,1
.L2156:
	lw	$13,0($10)
	daddiu	$10,$10,4
	lw	$5,12($10)
	lw	$3,44($10)
	lw	$12,28($10)
	addu	$16,$13,$5
	lw	$7,76($10)
	subu	$13,$13,$5
	lw	$4,108($10)
	lw	$17,60($10)
	addu	$6,$12,$3
	subu	$12,$12,$3
	lw	$5,92($10)
	addu	$14,$16,$6
	subu	$16,$16,$6
	addu	$3,$13,$12
	subu	$13,$13,$12
	addu	$15,$17,$7
	subu	$17,$17,$7
	addu	$6,$5,$4
	subu	$5,$5,$4
	addu	$8,$15,$6
	addu	$7,$17,$5
	addu	$4,$14,$8
	subu	$8,$14,$8
	addu	$12,$3,$7
	srl	$25,$4,15
	srl	$24,$8,15
	subu	$7,$3,$7
	and	$24,$24,$9
	subu	$6,$15,$6
	and	$25,$25,$9
	srl	$14,$12,15
	and	$14,$14,$9
	addu	$15,$16,$6
	srl	$3,$7,15
	sll	$18,$25,16
	sll	$20,$24,16
	subu	$25,$18,$25
	subu	$5,$17,$5
	subu	$20,$20,$24
	and	$17,$3,$9
	subu	$6,$16,$6
	sll	$19,$14,16
	srl	$16,$15,15
	subu	$19,$19,$14
	srl	$24,$6,15
	addu	$14,$13,$5
	and	$16,$16,$9
	sll	$3,$17,16
	addu	$4,$4,$25
	addu	$8,$8,$20
	subu	$3,$3,$17
	and	$18,$24,$9
	subu	$5,$13,$5
	sll	$24,$16,16
	srl	$13,$14,15
	xor	$4,$4,$25
	xor	$8,$8,$20
	addu	$12,$12,$19
	subu	$16,$24,$16
	and	$17,$13,$9
	srl	$25,$5,15
	addu	$4,$4,$8
	xor	$12,$12,$19
	addu	$8,$7,$3
	sll	$24,$18,16
	addu	$4,$4,$12
	subu	$24,$24,$18
	and	$25,$25,$9
	xor	$8,$8,$3
	sll	$13,$17,16
	addu	$7,$15,$16
	addu	$3,$4,$8
	subu	$13,$13,$17
	sll	$12,$25,16
	xor	$7,$7,$16
	addu	$6,$6,$24
	subu	$8,$12,$25
	addu	$3,$3,$7
	xor	$6,$6,$24
	addu	$4,$14,$13
	addu	$3,$3,$6
	xor	$4,$4,$13
	addu	$5,$5,$8
	addu	$3,$3,$4
	xor	$5,$5,$8
	addu	$3,$3,$5
	andi	$4,$3,0xffff
	srl	$3,$3,16
	addu	$3,$4,$3
	bne	$11,$10,.L2156
	addu	$2,$3,$2

	addiu	$2,$2,2
	ld	$20,160($sp)
	ld	$19,152($sp)
	sra	$2,$2,2
	ld	$18,144($sp)
	ld	$17,136($sp)
	ld	$16,128($sp)
	jr	$31
	daddiu	$sp,$sp,176

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15sa8d8ILi8ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15sa8d8ILi8ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15sa8d8ILi8ELi8EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l
	.type	_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l, @function
_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l:
	.frame	$sp,224,$31		# vars= 144, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-224
	move	$10,$6
	move	$12,$sp
	daddiu	$14,$sp,128
	sd	$fp,216($sp)
	move	$11,$sp
	move	$9,$4
	sd	$23,200($sp)
	sd	$22,192($sp)
	sd	$21,184($sp)
	sd	$20,176($sp)
	sd	$19,168($sp)
	sd	$18,160($sp)
	sd	$17,152($sp)
	sd	$16,144($sp)
	.align	3
.L2161:
	lbu	$15,0($10)
	daddiu	$11,$11,16
	lbu	$3,1($10)
	lbu	$2,0($9)
	lbu	$8,1($9)
	lbu	$25,2($10)
	subu	$2,$2,$15
	lbu	$13,2($9)
	subu	$8,$8,$3
	lbu	$17,3($10)
	subu	$24,$2,$8
	lbu	$15,3($9)
	addu	$2,$2,$8
	lbu	$16,4($10)
	sll	$8,$24,16
	subu	$13,$13,$25
	lbu	$3,4($9)
	addu	$24,$8,$2
	lbu	$25,5($9)
	subu	$15,$15,$17
	lbu	$2,5($10)
	subu	$8,$13,$15
	addu	$15,$13,$15
	subu	$3,$3,$16
	lbu	$13,6($9)
	sll	$8,$8,16
	lbu	$18,6($10)
	addu	$8,$8,$15
	lbu	$16,7($9)
	subu	$25,$25,$2
	addu	$15,$24,$8
	lbu	$17,7($10)
	subu	$2,$3,$25
	subu	$8,$24,$8
	subu	$13,$13,$18
	sll	$2,$2,16
	addu	$3,$3,$25
	daddu	$9,$9,$5
	subu	$24,$16,$17
	addu	$3,$2,$3
	subu	$2,$13,$24
	addu	$13,$13,$24
	sll	$2,$2,16
	daddu	$10,$10,$7
	addu	$2,$2,$13
	addu	$13,$3,$2
	subu	$2,$3,$2
	addu	$24,$15,$13
	addu	$3,$8,$2
	subu	$15,$15,$13
	subu	$2,$8,$2
	sw	$24,-16($11)
	sw	$15,-8($11)
	sw	$3,-12($11)
	bne	$14,$11,.L2161
	sw	$2,-4($11)

	li	$10,65536			# 0x10000
	daddiu	$13,$12,16
	move	$22,$0
	addiu	$10,$10,1
.L2162:
	lw	$24,0($12)
	daddiu	$12,$12,4
	lw	$15,12($12)
	lw	$3,44($12)
	lw	$8,28($12)
	addu	$21,$24,$15
	lw	$16,76($12)
	subu	$24,$24,$15
	lw	$11,108($12)
	lw	$fp,60($12)
	addu	$2,$8,$3
	subu	$8,$8,$3
	lw	$15,92($12)
	addu	$25,$21,$2
	subu	$21,$21,$2
	addu	$14,$24,$8
	subu	$24,$24,$8
	addu	$9,$fp,$16
	subu	$fp,$fp,$16
	addu	$2,$15,$11
	subu	$15,$15,$11
	addu	$3,$9,$2
	addu	$11,$fp,$15
	addu	$17,$25,$3
	subu	$25,$25,$3
	addu	$16,$14,$11
	srl	$23,$17,15
	srl	$3,$25,15
	subu	$9,$9,$2
	and	$19,$23,$10
	and	$8,$3,$10
	subu	$14,$14,$11
	srl	$20,$16,15
	addu	$11,$21,$9
	and	$20,$20,$10
	sll	$23,$19,16
	sll	$3,$8,16
	srl	$18,$14,15
	subu	$15,$fp,$15
	subu	$23,$23,$19
	subu	$3,$3,$8
	subu	$9,$21,$9
	and	$18,$18,$10
	sll	$2,$20,16
	srl	$21,$11,15
	addu	$8,$24,$15
	subu	$20,$2,$20
	and	$21,$21,$10
	sll	$2,$18,16
	srl	$19,$9,15
	addu	$25,$25,$3
	addu	$17,$17,$23
	subu	$18,$2,$18
	subu	$15,$24,$15
	and	$19,$19,$10
	srl	$fp,$8,15
	xor	$3,$25,$3
	sll	$24,$21,16
	xor	$17,$17,$23
	addu	$16,$16,$20
	subu	$24,$24,$21
	and	$fp,$fp,$10
	sll	$2,$19,16
	xor	$16,$16,$20
	srl	$25,$15,15
	addu	$3,$17,$3
	addu	$14,$14,$18
	subu	$19,$2,$19
	addu	$3,$3,$16
	and	$25,$25,$10
	sll	$2,$fp,16
	xor	$14,$14,$18
	addu	$11,$11,$24
	subu	$fp,$2,$fp
	sll	$16,$25,16
	addu	$2,$3,$14
	xor	$11,$11,$24
	addu	$9,$9,$19
	subu	$25,$16,$25
	addu	$2,$2,$11
	xor	$9,$9,$19
	addu	$8,$8,$fp
	addu	$2,$2,$9
	xor	$8,$8,$fp
	addu	$3,$15,$25
	xor	$3,$3,$25
	addu	$2,$2,$8
	addu	$2,$2,$3
	andi	$3,$2,0xffff
	srl	$2,$2,16
	addu	$2,$3,$2
	bne	$13,$12,.L2162
	addu	$22,$2,$22

	daddiu	$12,$4,8
	daddiu	$11,$6,8
	move	$10,$sp
	daddiu	$14,$sp,128
	move	$13,$sp
	.align	3
.L2163:
	lbu	$15,0($11)
	daddiu	$13,$13,16
	lbu	$8,1($11)
	lbu	$2,0($12)
	lbu	$3,1($12)
	lbu	$24,2($11)
	lbu	$9,2($12)
	subu	$2,$2,$15
	subu	$3,$3,$8
	lbu	$15,3($12)
	lbu	$8,3($11)
	subu	$16,$2,$3
	addu	$2,$2,$3
	subu	$9,$9,$24
	lbu	$3,4($12)
	sll	$16,$16,16
	lbu	$24,4($11)
	addu	$16,$16,$2
	lbu	$25,5($12)
	subu	$15,$15,$8
	lbu	$2,5($11)
	subu	$8,$9,$15
	addu	$15,$9,$15
	subu	$3,$3,$24
	lbu	$9,6($12)
	sll	$8,$8,16
	lbu	$18,6($11)
	addu	$8,$8,$15
	lbu	$24,7($12)
	subu	$25,$25,$2
	addu	$15,$16,$8
	lbu	$17,7($11)
	subu	$2,$3,$25
	addu	$3,$3,$25
	subu	$9,$9,$18
	sll	$2,$2,16
	addu	$3,$2,$3
	subu	$8,$16,$8
	subu	$24,$24,$17
	daddu	$12,$12,$5
	subu	$2,$9,$24
	addu	$9,$9,$24
	sll	$2,$2,16
	daddu	$11,$11,$7
	addu	$2,$2,$9
	addu	$9,$3,$2
	subu	$2,$3,$2
	addu	$24,$15,$9
	addu	$3,$8,$2
	subu	$15,$15,$9
	subu	$2,$8,$2
	sw	$24,-16($13)
	sw	$15,-8($13)
	sw	$3,-12($13)
	bne	$14,$13,.L2163
	sw	$2,-4($13)

	li	$12,65536			# 0x10000
	daddiu	$13,$10,16
	move	$11,$0
	addiu	$12,$12,1
.L2164:
	lw	$15,0($10)
	daddiu	$10,$10,4
	lw	$9,12($10)
	lw	$3,44($10)
	lw	$14,28($10)
	addu	$8,$15,$9
	lw	$24,76($10)
	subu	$15,$15,$9
	lw	$23,60($10)
	addu	$2,$14,$3
	lw	$9,92($10)
	subu	$14,$14,$3
	lw	$3,108($10)
	subu	$25,$8,$2
	addu	$16,$8,$2
	addu	$18,$23,$24
	subu	$23,$23,$24
	addu	$17,$15,$14
	subu	$14,$15,$14
	addu	$8,$9,$3
	subu	$9,$9,$3
	addu	$2,$18,$8
	addu	$24,$23,$9
	addu	$3,$16,$2
	subu	$16,$16,$2
	addu	$21,$17,$24
	srl	$2,$3,15
	srl	$15,$16,15
	subu	$8,$18,$8
	and	$19,$2,$12
	subu	$24,$17,$24
	srl	$18,$21,15
	and	$15,$15,$12
	and	$17,$18,$12
	addu	$20,$25,$8
	srl	$fp,$24,15
	sll	$2,$19,16
	sll	$18,$15,16
	subu	$23,$23,$9
	subu	$2,$2,$19
	subu	$15,$18,$15
	and	$9,$fp,$12
	subu	$8,$25,$8
	sll	$18,$17,16
	srl	$19,$20,15
	subu	$18,$18,$17
	addu	$25,$14,$23
	and	$19,$19,$12
	sll	$fp,$9,16
	srl	$17,$8,15
	addu	$3,$3,$2
	addu	$16,$16,$15
	subu	$fp,$fp,$9
	xor	$16,$16,$15
	subu	$9,$14,$23
	and	$17,$17,$12
	sll	$14,$19,16
	xor	$3,$3,$2
	addu	$21,$21,$18
	srl	$23,$25,15
	subu	$19,$14,$19
	srl	$15,$9,15
	xor	$2,$21,$18
	and	$23,$23,$12
	sll	$14,$17,16
	addu	$3,$3,$16
	addu	$24,$24,$fp
	subu	$17,$14,$17
	and	$18,$15,$12
	addu	$3,$3,$2
	sll	$16,$23,16
	xor	$24,$24,$fp
	addu	$14,$20,$19
	subu	$16,$16,$23
	addu	$2,$3,$24
	sll	$15,$18,16
	xor	$14,$14,$19
	addu	$8,$8,$17
	subu	$15,$15,$18
	addu	$2,$2,$14
	xor	$8,$8,$17
	addu	$3,$25,$16
	addu	$2,$2,$8
	xor	$3,$3,$16
	addu	$9,$9,$15
	addu	$2,$2,$3
	xor	$9,$9,$15
	addu	$2,$2,$9
	andi	$3,$2,0xffff
	srl	$2,$2,16
	addu	$2,$3,$2
	bne	$13,$10,.L2164
	addu	$11,$2,$11

	dsll	$2,$7,3
	dsll	$3,$5,3
	addu	$8,$11,$22
	daddu	$12,$4,$3
	sd	$2,136($sp)
	daddu	$10,$6,$2
	move	$11,$sp
	sd	$8,128($sp)
	daddiu	$14,$sp,128
	move	$13,$sp
	.align	3
.L2165:
	lbu	$15,0($10)
	daddiu	$13,$13,16
	lbu	$9,0($12)
	lbu	$24,1($10)
	lbu	$17,2($10)
	subu	$9,$9,$15
	lbu	$16,3($10)
	lbu	$2,1($12)
	lbu	$8,2($12)
	lbu	$15,3($12)
	subu	$2,$2,$24
	lbu	$21,4($10)
	subu	$8,$8,$17
	subu	$25,$9,$2
	lbu	$24,4($12)
	subu	$15,$15,$16
	addu	$9,$9,$2
	lbu	$17,5($10)
	subu	$16,$8,$15
	sll	$2,$25,16
	lbu	$18,6($12)
	addu	$8,$8,$15
	sll	$15,$16,16
	lbu	$25,5($12)
	addu	$19,$15,$8
	addu	$2,$2,$9
	lbu	$15,7($12)
	lbu	$9,6($10)
	subu	$21,$24,$21
	daddu	$12,$12,$5
	lbu	$20,7($10)
	subu	$25,$25,$17
	addu	$17,$2,$19
	subu	$16,$21,$25
	addu	$24,$21,$25
	subu	$9,$18,$9
	sll	$25,$16,16
	subu	$15,$15,$20
	addu	$24,$25,$24
	subu	$8,$9,$15
	addu	$9,$9,$15
	sll	$8,$8,16
	subu	$2,$2,$19
	addu	$8,$8,$9
	daddu	$10,$10,$7
	addu	$9,$24,$8
	subu	$8,$24,$8
	addu	$15,$2,$8
	addu	$24,$17,$9
	subu	$8,$2,$8
	subu	$9,$17,$9
	sw	$24,-16($13)
	sw	$9,-8($13)
	sw	$15,-12($13)
	bne	$14,$13,.L2165
	sw	$8,-4($13)

	li	$14,65536			# 0x10000
	daddiu	$23,$11,16
	move	$22,$0
	addiu	$14,$14,1
.L2166:
	lw	$9,0($11)
	daddiu	$11,$11,4
	lw	$10,44($11)
	lw	$8,12($11)
	lw	$2,28($11)
	lw	$25,76($11)
	lw	$12,108($11)
	addu	$15,$9,$8
	subu	$8,$9,$8
	lw	$18,60($11)
	addu	$9,$2,$10
	subu	$2,$2,$10
	lw	$13,92($11)
	addu	$10,$15,$9
	subu	$15,$15,$9
	addu	$24,$8,$2
	subu	$8,$8,$2
	addu	$16,$18,$25
	subu	$18,$18,$25
	addu	$9,$13,$12
	subu	$13,$13,$12
	addu	$2,$16,$9
	addu	$12,$18,$13
	addu	$25,$10,$2
	subu	$10,$10,$2
	srl	$20,$10,15
	addu	$2,$24,$12
	srl	$21,$25,15
	subu	$9,$16,$9
	and	$19,$20,$14
	subu	$12,$24,$12
	and	$21,$21,$14
	srl	$17,$2,15
	addu	$24,$15,$9
	and	$17,$17,$14
	sll	$16,$21,16
	sll	$20,$19,16
	srl	$fp,$12,15
	subu	$13,$18,$13
	subu	$21,$16,$21
	subu	$20,$20,$19
	and	$fp,$fp,$14
	subu	$9,$15,$9
	sll	$18,$17,16
	srl	$19,$24,15
	addu	$15,$8,$13
	subu	$18,$18,$17
	and	$19,$19,$14
	sll	$16,$fp,16
	srl	$17,$9,15
	addu	$25,$25,$21
	addu	$10,$10,$20
	subu	$16,$16,$fp
	subu	$8,$8,$13
	and	$17,$17,$14
	sll	$13,$19,16
	xor	$25,$25,$21
	xor	$10,$10,$20
	srl	$fp,$15,15
	addu	$2,$2,$18
	subu	$13,$13,$19
	and	$fp,$fp,$14
	srl	$19,$8,15
	xor	$2,$2,$18
	sll	$21,$17,16
	addu	$25,$25,$10
	addu	$12,$12,$16
	subu	$17,$21,$17
	and	$19,$19,$14
	sll	$20,$fp,16
	addu	$25,$25,$2
	xor	$16,$12,$16
	addu	$24,$24,$13
	subu	$20,$20,$fp
	sll	$2,$19,16
	addu	$16,$25,$16
	xor	$13,$24,$13
	addu	$9,$9,$17
	subu	$2,$2,$19
	addu	$13,$16,$13
	xor	$17,$9,$17
	addu	$fp,$15,$20
	addu	$8,$8,$2
	addu	$17,$13,$17
	xor	$fp,$fp,$20
	xor	$8,$8,$2
	addu	$fp,$17,$fp
	addu	$8,$fp,$8
	andi	$2,$8,0xffff
	srl	$8,$8,16
	addu	$8,$2,$8
	bne	$23,$11,.L2166
	addu	$22,$8,$22

	ld	$2,136($sp)
	daddiu	$3,$3,8
	move	$10,$sp
	ld	$8,128($sp)
	daddu	$4,$4,$3
	daddiu	$13,$sp,128
	move	$3,$sp
	daddiu	$2,$2,8
	addu	$22,$22,$8
	daddu	$6,$6,$2
	.align	3
.L2167:
	lbu	$9,0($4)
	daddiu	$3,$3,16
	lbu	$8,1($4)
	lbu	$12,1($6)
	lbu	$2,0($6)
	lbu	$24,2($6)
	lbu	$11,2($4)
	subu	$2,$9,$2
	subu	$9,$8,$12
	lbu	$14,3($4)
	lbu	$12,3($6)
	subu	$15,$2,$9
	addu	$2,$2,$9
	lbu	$8,4($4)
	sll	$9,$15,16
	subu	$11,$11,$24
	lbu	$15,4($6)
	addu	$9,$9,$2
	lbu	$24,5($4)
	subu	$14,$14,$12
	lbu	$2,5($6)
	subu	$12,$11,$14
	addu	$14,$11,$14
	subu	$8,$8,$15
	lbu	$11,6($4)
	sll	$12,$12,16
	lbu	$16,6($6)
	addu	$12,$12,$14
	lbu	$15,7($4)
	subu	$24,$24,$2
	addu	$14,$9,$12
	lbu	$25,7($6)
	subu	$2,$8,$24
	subu	$9,$9,$12
	subu	$11,$11,$16
	sll	$2,$2,16
	addu	$8,$8,$24
	daddu	$4,$4,$5
	subu	$12,$15,$25
	addu	$8,$2,$8
	subu	$2,$11,$12
	addu	$11,$11,$12
	sll	$2,$2,16
	daddu	$6,$6,$7
	addu	$2,$2,$11
	addu	$11,$8,$2
	subu	$2,$8,$2
	addu	$12,$14,$11
	addu	$8,$9,$2
	subu	$14,$14,$11
	subu	$2,$9,$2
	sw	$12,-16($3)
	sw	$14,-8($3)
	sw	$8,-12($3)
	bne	$13,$3,.L2167
	sw	$2,-4($3)

	li	$7,65536			# 0x10000
	daddiu	$9,$10,16
	move	$8,$0
	addiu	$7,$7,1
.L2168:
	lw	$12,0($10)
	daddiu	$10,$10,4
	lw	$3,12($10)
	lw	$2,44($10)
	lw	$15,76($10)
	addu	$13,$12,$3
	lw	$11,28($10)
	subu	$12,$12,$3
	lw	$6,60($10)
	lw	$3,108($10)
	lw	$16,92($10)
	addu	$5,$11,$2
	subu	$11,$11,$2
	addu	$2,$6,$15
	addu	$14,$13,$5
	subu	$17,$13,$5
	subu	$6,$6,$15
	addu	$25,$16,$3
	subu	$16,$16,$3
	addu	$5,$2,$25
	addu	$24,$6,$16
	addu	$3,$14,$5
	addu	$4,$12,$11
	subu	$5,$14,$5
	subu	$11,$12,$11
	srl	$15,$3,15
	addu	$12,$4,$24
	srl	$14,$5,15
	subu	$4,$4,$24
	subu	$13,$2,$25
	and	$15,$15,$7
	and	$14,$14,$7
	srl	$21,$12,15
	addu	$25,$17,$13
	and	$19,$21,$7
	sll	$24,$14,16
	srl	$18,$4,15
	sll	$fp,$15,16
	subu	$23,$24,$14
	subu	$6,$6,$16
	subu	$fp,$fp,$15
	subu	$13,$17,$13
	and	$15,$18,$7
	sll	$21,$19,16
	srl	$16,$25,15
	addu	$14,$11,$6
	subu	$21,$21,$19
	and	$16,$16,$7
	sll	$18,$15,16
	srl	$24,$13,15
	addu	$5,$5,$23
	addu	$3,$3,$fp
	subu	$18,$18,$15
	and	$20,$24,$7
	subu	$6,$11,$6
	xor	$24,$5,$23
	sll	$2,$16,16
	srl	$15,$14,15
	xor	$3,$3,$fp
	addu	$12,$12,$21
	subu	$16,$2,$16
	and	$19,$15,$7
	sll	$2,$20,16
	srl	$17,$6,15
	addu	$3,$3,$24
	xor	$12,$12,$21
	addu	$11,$4,$18
	subu	$24,$2,$20
	addu	$3,$3,$12
	and	$17,$17,$7
	xor	$11,$11,$18
	sll	$15,$19,16
	addu	$5,$25,$16
	addu	$2,$3,$11
	subu	$15,$15,$19
	sll	$12,$17,16
	xor	$5,$5,$16
	addu	$4,$13,$24
	subu	$11,$12,$17
	addu	$2,$2,$5
	xor	$4,$4,$24
	addu	$3,$14,$15
	addu	$2,$2,$4
	xor	$3,$3,$15
	addu	$6,$6,$11
	addu	$2,$2,$3
	xor	$6,$6,$11
	addu	$2,$2,$6
	andi	$3,$2,0xffff
	srl	$2,$2,16
	addu	$2,$3,$2
	bne	$9,$10,.L2168
	addu	$8,$2,$8

	addu	$22,$8,$22
	ld	$fp,216($sp)
	addiu	$2,$22,2
	ld	$23,200($sp)
	ld	$22,192($sp)
	sra	$2,$2,2
	ld	$21,184($sp)
	ld	$20,176($sp)
	ld	$19,168($sp)
	ld	$18,160($sp)
	ld	$17,152($sp)
	ld	$16,144($sp)
	jr	$31
	daddiu	$sp,$sp,224

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l
	.size	_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l, .-_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sa8d16ILi32ELi32EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_16sa8d16ILi32ELi32EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_16sa8d16ILi32ELi32EEEiPKhlS2_l:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16sa8d16ILi32ELi32EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16sa8d16ILi32ELi32EEEiPKhlS2_l)))
	sd	$fp,80($sp)
	move	$fp,$6
	ld	$17,%got_page(_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l)($28)
	sd	$23,64($sp)
	dsll	$23,$5,4
	sd	$22,56($sp)
	dsll	$22,$7,4
	sd	$21,48($sp)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l)
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
.L2179:
	move	$6,$fp
	move	$4,$21
	move	$7,$18
	move	$25,$17
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l
1:	jalr	$25
	move	$5,$19

	daddiu	$6,$fp,16
	daddiu	$4,$21,16
	move	$7,$18
	move	$5,$19
	move	$25,$17
	addu	$16,$2,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l
1:	jalr	$25
	daddu	$21,$21,$23

	li	$3,1			# 0x1
	addu	$2,$2,$16
	daddu	$fp,$fp,$22
	bne	$20,$3,.L2180
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
.L2180:
	b	.L2179
	li	$20,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sa8d16ILi32ELi32EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_16sa8d16ILi32ELi32EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_16sa8d16ILi32ELi32EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sa8d16ILi64ELi64EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_16sa8d16ILi64ELi64EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_16sa8d16ILi64ELi64EEEiPKhlS2_l:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$2,$5,4
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16sa8d16ILi64ELi64EEEiPKhlS2_l)))
	daddu	$28,$28,$25
	sd	$17,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16sa8d16ILi64ELi64EEEiPKhlS2_l)))
	sd	$2,16($sp)
	dsll	$2,$7,4
	ld	$17,%got_page(_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l)($28)
	sd	$23,96($sp)
	move	$23,$0
	sd	$22,88($sp)
	move	$22,$6
	sd	$21,80($sp)
	li	$21,4			# 0x4
	sd	$20,72($sp)
	move	$20,$4
	sd	$19,64($sp)
	move	$19,$5
	sd	$18,56($sp)
	move	$18,$7
	sd	$2,8($sp)
	daddiu	$2,$17,%got_ofst(_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l)
	sd	$31,120($sp)
	sd	$fp,112($sp)
	sd	$16,40($sp)
	sd	$2,0($sp)
.L2184:
	daddiu	$16,$20,64
	move	$17,$22
	move	$fp,$20
.L2183:
	ld	$25,0($sp)
	move	$6,$17
	move	$4,$fp
	move	$7,$18
	move	$5,$19
	daddiu	$fp,$fp,16
	jalr	$25
	daddiu	$17,$17,16

	addu	$2,$2,$23
	bne	$fp,$16,.L2183
	move	$23,$2

	ld	$3,16($sp)
	addiu	$21,$21,-1
	daddu	$20,$20,$3
	ld	$3,8($sp)
	bne	$21,$0,.L2184
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
	.end	_ZN12_GLOBAL__N_16sa8d16ILi64ELi64EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_16sa8d16ILi64ELi64EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_16sa8d16ILi64ELi64EEEiPKhlS2_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_16sa8d16ILi16ELi16EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_16sa8d16ILi16ELi16EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_16sa8d16ILi16ELi16EEEiPKhlS2_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$3,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_16sa8d16ILi16ELi16EEEiPKhlS2_l)))
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_16sa8d16ILi16ELi16EEEiPKhlS2_l)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l)($3)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l
1:	jr	$25
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_16sa8d16ILi16ELi16EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_16sa8d16ILi16ELi16EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_16sa8d16ILi16ELi16EEEiPKhlS2_l
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
	ld	$16,%got_page(_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l)($28)
	sd	$19,32($sp)
	move	$19,$6
	sd	$18,24($sp)
	move	$18,$5
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l)
	sd	$17,16($sp)
	move	$25,$16
	sd	$31,56($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l
1:	jalr	$25
	move	$17,$4

	dlsa	$6,$20,$19,4
	dlsa	$4,$18,$17,4
	move	$7,$20
	move	$5,$18
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l
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
	ld	$19,%got_page(_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l)($28)
	sd	$23,64($sp)
	dsll	$23,$5,4
	sd	$22,56($sp)
	dsll	$22,$7,4
	sd	$21,48($sp)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l)
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
.L2193:
	move	$6,$17
	move	$4,$18
	move	$7,$20
	move	$5,$21
	move	$25,$19
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l
1:	jalr	$25
	addiu	$fp,$fp,-1

	daddiu	$6,$17,16
	daddiu	$4,$18,16
	move	$7,$20
	move	$5,$21
	move	$25,$19
	addu	$16,$2,$16
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l
1:	jalr	$25
	daddu	$18,$18,$23

	daddu	$17,$17,$22
	addu	$2,$2,$16
	bne	$fp,$0,.L2193
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

	blez	$19,.L2240
	dsubu	$18,$21,$16

	move	$17,$0
	ld	$25,%call16(memcpy)($28)
	.align	3
.L2247:
	move	$4,$18
	move	$6,$16
	move	$5,$21
	addiu	$17,$17,1
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsubu	$18,$18,$16

	bne	$17,$19,.L2247
	ld	$25,%call16(memcpy)($28)

	addiu	$23,$23,-1
	move	$19,$0
	gsdmultu	$23,$23,$16
	dsubu	$22,$23,$22
	daddu	$20,$20,$22
	daddu	$18,$20,$16
	.align	3
.L2248:
	move	$4,$18
	move	$6,$16
	move	$5,$20
	addiu	$19,$19,1
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$18,$18,$16

	bne	$17,$19,.L2248
	ld	$25,%call16(memcpy)($28)

.L2240:
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
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi32EEEvPKsS2_Phlll)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl)($28)
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
	ld	$9,%got_page(_ZN12_GLOBAL__N_15satd8ILi8ELi8EEEiPKhlS2_l)($28)
	sd	$5,144($sp)
	ld	$5,%got_page(_ZN12_GLOBAL__N_16addAvgILi24ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi32EEEvPKsS2_Phlll)
	ld	$11,%got_page(_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l)($28)
	daddiu	$9,$9,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi8ELi8EEEiPKhlS2_l)
	daddiu	$6,$5,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi24ELi32EEEvPKsS2_Phlll)
	ld	$5,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl)($28)
	sd	$6,152($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l)
	ld	$6,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l)($28)
	daddiu	$7,$5,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl)
	ld	$5,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi8EEEvPKsS2_Phlll)($28)
	sd	$7,160($sp)
	ld	$7,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi32EEEiPKhlS2_l)($28)
	daddiu	$6,$6,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l)
	daddiu	$8,$5,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi8EEEvPKsS2_Phlll)
	ld	$5,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$8,168($sp)
	sd	$fp,192($sp)
	daddiu	$7,$7,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi32EEEiPKhlS2_l)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)($28)
	daddiu	$10,$5,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	sd	$10,176($sp)
	sd	$22,112($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)
	sd	$23,104($4)
	sd	$fp,184($sp)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi4ELi4EEEiPKhlS2_l)($28)
	sd	$20,240($4)
	sd	$21,232($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi4ELi4EEEiPKhlS2_l)
	sd	$18,368($4)
	sd	$fp,0($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi)($28)
	sd	$19,360($4)
	sd	$16,496($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi)
	sd	$17,488($4)
	sd	$fp,8($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi)($28)
	ld	$8,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi16EEEiPKhlS2_l)($28)
	ld	$5,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi)
	ld	$10,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l)($28)
	sd	$fp,16($4)
	daddiu	$8,$8,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi16EEEiPKhlS2_l)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li)($28)
	daddiu	$5,$5,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l)
	daddiu	$10,$10,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li)
	sd	$fp,96($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi8ELi8EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi8ELi8EEEiPKhlS2_l)
	sd	$fp,128($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi8ELi8EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi8ELi8EEEvPKhS2_S2_S2_lPi)
	sd	$fp,136($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi8ELi8EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi8ELi8EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,144($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi8EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi8EEEvPhlPKhlS3_li)
	sd	$fp,224($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi16EEEiPKhlS2_l)
	sd	$fp,256($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$fp,264($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,272($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi16EEEvPhlPKhlS3_li)
	sd	$fp,352($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi32ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi32ELi32EEEiPKhlS2_l)
	sd	$fp,384($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi32ELi32EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi32ELi32EEEvPKhS2_S2_S2_lPi)
	sd	$fp,392($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi32ELi32EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi32ELi32EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,400($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi32EEEvPhlPKhlS3_li)
	sd	$fp,480($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi64EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi64EEEvPhlPKhl)
	sd	$fp,624($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi64ELi64EEEvPKsS2_Phlll)
	sd	$fp,616($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi64ELi64EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi64ELi64EEEiPKhlS2_l)
	sd	$fp,512($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi64ELi64EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi64ELi64EEEvPKhS2_S2_S2_lPi)
	sd	$fp,520($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi64ELi64EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi64ELi64EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,528($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi64EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi64EEEvPhlPKhlS3_li)
	sd	$fp,608($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi4ELi8EEEiPKhlS2_l)($28)
	sd	$14,880($4)
	sd	$15,872($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi4ELi8EEEiPKhlS2_l)
	sd	$24,752($4)
	sd	$fp,768($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi)($28)
	sd	$25,744($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi)
	sd	$fp,776($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,784($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi8EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi8EEEvPhlPKhlS3_li)
	sd	$fp,864($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi8ELi4EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi8ELi4EEEiPKhlS2_l)
	sd	$fp,640($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi)
	sd	$fp,648($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,656($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li)
	sd	$fp,736($4)
	ld	$fp,0($sp)
	sd	$fp,1008($4)
	ld	$fp,8($sp)
	sd	$fp,1000($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi8EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi8EEEiPKhlS2_l)
	sd	$fp,896($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi)
	sd	$fp,904($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,912($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi8EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi8EEEvPhlPKhlS3_li)
	sd	$fp,992($4)
	ld	$fp,16($sp)
	sd	$fp,1136($4)
	ld	$fp,24($sp)
	sd	$fp,1128($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi8ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi8ELi16EEEiPKhlS2_l)
	sd	$fp,1024($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1032($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1040($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi16EEEvPhlPKhlS3_li)
	sd	$fp,1120($4)
	ld	$fp,32($sp)
	sd	$fp,1776($4)
	ld	$fp,40($sp)
	sd	$fp,1768($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi12EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi12EEEiPKhlS2_l)
	sd	$fp,1664($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1672($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1680($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi12EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi12EEEvPhlPKhlS3_li)
	sd	$fp,1760($4)
	ld	$fp,48($sp)
	sd	$fp,1904($4)
	ld	$fp,56($sp)
	sd	$fp,1896($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi12ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi12ELi16EEEiPKhlS2_l)
	sd	$fp,1792($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1800($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1808($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi12ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi12ELi16EEEvPhlPKhlS3_li)
	sd	$fp,1888($4)
	ld	$fp,64($sp)
	sd	$fp,2032($4)
	ld	$fp,72($sp)
	sd	$fp,2024($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi4EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi4EEEiPKhlS2_l)
	sd	$fp,1920($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1928($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1936($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li)
	sd	$fp,2016($4)
	ld	$fp,80($sp)
	sd	$fp,2160($4)
	ld	$fp,88($sp)
	sd	$fp,2152($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi4ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi4ELi16EEEiPKhlS2_l)
	sd	$fp,2048($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2056($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2064($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi16EEEvPhlPKhlS3_li)
	sd	$fp,2144($4)
	ld	$fp,96($sp)
	sd	$fp,1264($4)
	ld	$fp,104($sp)
	sd	$fp,1256($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi32ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi32ELi16EEEiPKhlS2_l)
	sd	$fp,1152($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1160($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1168($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi16EEEvPhlPKhlS3_li)
	sd	$fp,1248($4)
	ld	$fp,112($sp)
	sd	$fp,1392($4)
	ld	$fp,120($sp)
	sd	$fp,1384($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi32EEEiPKhlS2_l)
	sd	$fp,1280($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1288($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1296($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi32EEEvPhlPKhlS3_li)
	sd	$fp,1376($4)
	ld	$fp,128($sp)
	sd	$fp,2288($4)
	ld	$fp,136($sp)
	sd	$fp,2280($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi32ELi24EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi32ELi24EEEiPKhlS2_l)
	sd	$fp,2176($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2184($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2192($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi24EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi24EEEvPhlPKhlS3_li)
	sd	$fp,2272($4)
	ld	$fp,144($sp)
	sd	$fp,2416($4)
	ld	$fp,152($sp)
	sd	$fp,2408($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi24ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi24ELi32EEEiPKhlS2_l)
	sd	$fp,2304($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2312($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2320($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi24ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi24ELi32EEEvPhlPKhlS3_li)
	sd	$fp,2400($4)
	ld	$fp,160($sp)
	sd	$fp,2544($4)
	ld	$fp,168($sp)
	sd	$fp,2536($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi32ELi8EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi32ELi8EEEiPKhlS2_l)
	sd	$fp,2432($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2440($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2448($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi8EEEvPhlPKhlS3_li)($28)
	sd	$12,2672($4)
	sd	$13,2664($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi8EEEvPhlPKhlS3_li)
	sd	$fp,2528($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi8ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi8ELi32EEEiPKhlS2_l)
	sd	$fp,2560($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2568($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2576($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi32EEEvPhlPKhlS3_li)
	sd	$fp,2656($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi32EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi32EEEvPhlPKhl)
	sd	$fp,1520($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16addAvgILi64ELi32EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi64ELi32EEEvPKsS2_Phlll)
	sd	$fp,1512($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi64ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi64ELi32EEEiPKhlS2_l)
	sd	$fp,1408($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1416($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1424($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi32EEEvPhlPKhlS3_li)
	sd	$fp,1504($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl)
	sd	$fp,1648($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi32ELi64EEEvPKsS2_Phlll)
	sd	$fp,1640($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi32ELi64EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi32ELi64EEEiPKhlS2_l)
	sd	$fp,1536($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1544($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1552($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi64EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi64EEEvPhlPKhlS3_li)
	sd	$fp,1632($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi48EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi48EEEvPhlPKhl)
	sd	$fp,2800($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16addAvgILi64ELi48EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi64ELi48EEEvPKsS2_Phlll)
	sd	$fp,2792($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi64ELi48EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi64ELi48EEEiPKhlS2_l)
	sd	$fp,2688($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2696($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2704($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi48EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi48EEEvPhlPKhlS3_li)
	sd	$fp,2784($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi48ELi64EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi48ELi64EEEvPhlPKhl)
	sd	$fp,2928($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16addAvgILi48ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi48ELi64EEEvPKsS2_Phlll)
	sd	$fp,2920($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi48ELi64EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi48ELi64EEEiPKhlS2_l)
	sd	$fp,2816($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2824($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2832($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi48ELi64EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi48ELi64EEEvPhlPKhlS3_li)
	sd	$fp,2912($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi16EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi16EEEvPhlPKhl)
	sd	$fp,3056($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16addAvgILi64ELi16EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi64ELi16EEEvPKsS2_Phlll)
	sd	$fp,3048($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi64ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi64ELi16EEEiPKhlS2_l)
	sd	$fp,2944($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2952($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2960($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi16EEEvPhlPKhlS3_li)
	sd	$fp,3040($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl)
	sd	$fp,3184($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi16ELi64EEEvPKsS2_Phlll)
	sd	$fp,3176($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi64EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi64EEEiPKhlS2_l)
	sd	$fp,3072($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi)
	sd	$fp,3080($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,3088($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi64EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi64EEEvPhlPKhlS3_li)
	sd	$fp,3168($4)
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
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi48ELi64EEEiPiPjiPtPsii)
	sd	$fp,2840($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi64ELi16EEEiPiPjiPtPsii)($28)
	sd	$2,32($4)
	sd	$10,1312($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi64ELi16EEEiPiPjiPtPsii)
	sd	$9,160($4)
	sd	$fp,2968($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16ads_x4ILi16ELi64EEEiPiPjiPtPsii)($28)
	sd	$3,800($4)
	sd	$8,288($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16ads_x4ILi16ELi64EEEiPiPjiPtPsii)
	sd	$6,928($4)
	sd	$fp,3096($4)
	ld	$fp,176($sp)
	sd	$11,1056($4)
	sd	$7,416($4)
	sd	$fp,672($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l)($28)
	sd	$5,1184($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi64ELi64EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi64ELi64EEEiPKhlS2_l)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi4EEEvPslPKhS3_ll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi4EEEvPslPKhS3_ll)
	sd	$fp,3240($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113blockfill_s_cILi4EEEvPsls)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113blockfill_s_cILi4EEEvPsls)
	sd	$fp,3256($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111getResidualILi4EEEvPKhS2_Psl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111getResidualILi4EEEvPKhS2_Psl)
	sd	$fp,3232($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sseILi4ELi4EhhEEjPKT1_lPKT2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sseILi4ELi4EhhEEjPKT1_lPKT2_l)
	sd	$fp,3352($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sseILi4ELi4EssEEjPKT1_lPKT2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sseILi4ELi4EssEEjPKT1_lPKT2_l)
	sd	$fp,3360($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi8EEEvPslPKhS3_ll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi8EEEvPslPKhS3_ll)
	sd	$fp,3736($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113blockfill_s_cILi8EEEvPsls)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113blockfill_s_cILi8EEEvPsls)
	sd	$fp,3752($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111getResidualILi8EEEvPKhS2_Psl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111getResidualILi8EEEvPKhS2_Psl)
	sd	$fp,3728($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sseILi8ELi8EhhEEjPKT1_lPKT2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sseILi8ELi8EhhEEjPKT1_lPKT2_l)
	sd	$fp,3848($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sseILi8ELi8EssEEjPKT1_lPKT2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sseILi8ELi8EssEEjPKT1_lPKT2_l)
	sd	$fp,3856($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi16EEEvPslPKhS3_ll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi16EEEvPslPKhS3_ll)
	sd	$fp,4232($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113blockfill_s_cILi16EEEvPsls)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113blockfill_s_cILi16EEEvPsls)
	sd	$fp,4248($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111getResidualILi16EEEvPKhS2_Psl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111getResidualILi16EEEvPKhS2_Psl)
	sd	$fp,4224($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sseILi16ELi16EhhEEjPKT1_lPKT2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sseILi16ELi16EhhEEjPKT1_lPKT2_l)
	sd	$fp,4344($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sseILi16ELi16EssEEjPKT1_lPKT2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sseILi16ELi16EssEEjPKT1_lPKT2_l)
	sd	$fp,4352($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi32EEEvPslPKhS3_ll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi32EEEvPslPKhS3_ll)
	sd	$fp,4728($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113blockfill_s_cILi32EEEvPsls)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113blockfill_s_cILi32EEEvPsls)
	sd	$fp,4744($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111getResidualILi32EEEvPKhS2_Psl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111getResidualILi32EEEvPKhS2_Psl)
	sd	$fp,4720($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sseILi32ELi32EhhEEjPKT1_lPKT2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sseILi32ELi32EhhEEjPKT1_lPKT2_l)
	sd	$fp,4840($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sseILi32ELi32EssEEjPKT1_lPKT2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sseILi32ELi32EssEEjPKT1_lPKT2_l)
	sd	$fp,4848($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi64ELi64EEEvPslPKhS3_ll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi64ELi64EEEvPslPKhS3_ll)
	sd	$fp,5224($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi64ELi64EEEvPhlPKhPKsll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi64ELi64EEEvPhlPKhPKsll)
	sd	$fp,5232($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi64ELi64EEEvPhlPKsl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi64ELi64EEEvPhlPKsl)
	sd	$fp,5296($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi64ELi64EEEvPslPKhl)($28)
	sd	$16,8840($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_16addAvgILi4ELi2EEEvPKsS2_Phlll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi64ELi64EEEvPslPKhl)
	sd	$2,3384($4)
	sd	$fp,5304($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi64ELi64EEEvPslPKsl)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi4ELi2EEEvPKsS2_Phlll)
	sd	$16,8912($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi2EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi64ELi64EEEvPslPKsl)
	sd	$23,8592($4)
	sd	$fp,5312($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113blockfill_s_cILi64EEEvPsls)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi2EEEvPhlPKhl)
	sd	$22,8600($4)
	sd	$21,8672($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113blockfill_s_cILi64EEEvPsls)
	sd	$20,8680($4)
	sd	$fp,5240($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi64EEEvPsPKsli)($28)
	sd	$19,8752($4)
	sd	$18,8760($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_113cpy2Dto1D_shlILi64EEEvPsPKsli)
	sd	$17,8832($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111getResidualILi64EEEvPKhS2_Psl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111getResidualILi64EEEvPKhS2_Psl)
	sd	$fp,5216($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sseILi64ELi64EhhEEjPKT1_lPKT2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sseILi64ELi64EhhEEjPKT1_lPKT2_l)
	sd	$fp,5336($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sseILi64ELi64EssEEjPKT1_lPKT2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sseILi64ELi64EssEEjPKT1_lPKT2_l)
	sd	$fp,5344($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	sd	$fp,3880($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_1L10sa8d_16x16EPKhlS1_l)
	sd	$fp,4376($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sa8d16ILi32ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sa8d16ILi32ELi32EEEiPKhlS2_l)
	sd	$fp,4872($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sa8d16ILi64ELi64EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sa8d16ILi64ELi64EEEiPKhlS2_l)
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
	sd	$16,8920($4)
	sd	$14,9160($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi6EEEvPKsS2_Phlll)($28)
	ld	$fp,0($sp)
	sd	$24,9080($4)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi6EEEvPKsS2_Phlll)
	sd	$15,9152($4)
	sd	$14,9552($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi6EEEvPhlPKhl)($28)
	sd	$fp,9240($4)
	ld	$fp,16($sp)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi6EEEvPhlPKhl)
	sd	$25,9072($4)
	sd	$14,9560($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi6ELi8EEEvPKsS2_Phlll)($28)
	sd	$fp,9320($4)
	ld	$fp,32($sp)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi6ELi8EEEvPKsS2_Phlll)
	sd	$14,9632($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi8EEEvPhlPKhl)($28)
	sd	$fp,9880($4)
	ld	$fp,48($sp)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi8EEEvPhlPKhl)
	sd	$14,9640($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll)($28)
	sd	$fp,9960($4)
	ld	$fp,64($sp)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16addAvgILi8ELi2EEEvPKsS2_Phlll)
	sd	$14,9712($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi2EEEvPhlPKhl)($28)
	sd	$fp,10040($4)
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
	ld	$14,%got_page(_ZN12_GLOBAL__N_13sseILi2ELi2EhhEEjPKT1_lPKT2_l)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_13sseILi2ELi2EhhEEjPKT1_lPKT2_l)
	sd	$14,10464($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi2EEEvPhlPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi2ELi2EEEvPhlPKsl)
	sd	$14,10496($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi2EEEvPslPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi2ELi2EEEvPslPKhl)
	sd	$14,10488($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi2EEEvPslPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi2EEEvPslPKsl)
	sd	$14,10504($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi2EEEvPslPKhS3_ll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi2EEEvPslPKhS3_ll)
	sd	$14,10472($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll)
	sd	$14,10480($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_13sseILi4ELi4EhhEEjPKT1_lPKT2_l)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_13sseILi4ELi4EhhEEjPKT1_lPKT2_l)
	sd	$14,10528($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi4ELi4EEEvPhlPKsl)
	sd	$14,10560($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi4ELi4EEEvPslPKhl)
	sd	$14,10552($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi4EEEvPslPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi4ELi4EEEvPslPKsl)
	sd	$14,10568($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi4EEEvPslPKhS3_ll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi4ELi4EEEvPslPKhS3_ll)
	sd	$14,10536($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi4EEEvPhlPKhPKsll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi4ELi4EEEvPhlPKhPKsll)
	sd	$14,10544($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_13sseILi8ELi8EhhEEjPKT1_lPKT2_l)($28)
	sd	$2,10520($4)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_13sseILi8ELi8EhhEEjPKT1_lPKT2_l)
	sd	$14,10592($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi8ELi8EEEvPhlPKsl)
	sd	$14,10624($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi8ELi8EEEvPslPKhl)
	sd	$14,10616($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi8EEEvPslPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi8ELi8EEEvPslPKsl)
	sd	$14,10632($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi8EEEvPslPKhS3_ll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi8ELi8EEEvPslPKhS3_ll)
	sd	$14,10600($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi8EEEvPhlPKhPKsll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi8ELi8EEEvPhlPKhPKsll)
	sd	$14,10608($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_13sseILi16ELi16EhhEEjPKT1_lPKT2_l)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_13sseILi16ELi16EhhEEjPKT1_lPKT2_l)
	sd	$14,10656($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi16ELi16EEEvPhlPKsl)
	sd	$14,10688($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi16ELi16EEEvPslPKhl)
	sd	$14,10680($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi16EEEvPslPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi16ELi16EEEvPslPKsl)
	sd	$14,10696($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi16EEEvPslPKhS3_ll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi16ELi16EEEvPslPKhS3_ll)
	sd	$14,10664($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi16EEEvPhlPKhPKsll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi16ELi16EEEvPhlPKhPKsll)
	sd	$14,10672($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_13sseILi32ELi32EhhEEjPKT1_lPKT2_l)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_13sseILi32ELi32EhhEEjPKT1_lPKT2_l)
	sd	$14,10720($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_sp_cILi32ELi32EEEvPhlPKsl)
	sd	$14,10752($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ps_cILi32ELi32EEEvPslPKhl)
	sd	$14,10744($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi32EEEvPslPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi32ELi32EEEvPslPKsl)
	sd	$14,10760($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi32EEEvPslPKhS3_ll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi32ELi32EEEvPslPKhS3_ll)
	sd	$14,10728($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi32EEEvPhlPKhPKsll)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi32ELi32EEEvPhlPKhPKsll)
	sd	$14,10736($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_15sa8d8ILi8ELi8EEEiPKhlS2_l)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_15sa8d8ILi8ELi8EEEiPKhlS2_l)
	sd	$14,10584($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16sa8d16ILi16ELi16EEEiPKhlS2_l)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16sa8d16ILi16ELi16EEEiPKhlS2_l)
	sd	$14,10648($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_16sa8d16ILi32ELi32EEEiPKhlS2_l)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_16sa8d16ILi32ELi32EEEiPKhlS2_l)
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
	ld	$2,%got_page(_ZN12_GLOBAL__N_13sseILi2ELi4EhhEEjPKT1_lPKT2_l)($28)
	sd	$5,12616($4)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_13sseILi2ELi4EhhEEjPKT1_lPKT2_l)
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
	ld	$2,%got_page(_ZN12_GLOBAL__N_13sseILi4ELi8EhhEEjPKT1_lPKT2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_13sseILi4ELi8EhhEEjPKT1_lPKT2_l)
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
	ld	$2,%got_page(_ZN12_GLOBAL__N_13sseILi8ELi16EhhEEjPKT1_lPKT2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_13sseILi8ELi16EhhEEjPKT1_lPKT2_l)
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
	ld	$2,%got_page(_ZN12_GLOBAL__N_13sseILi16ELi32EhhEEjPKT1_lPKT2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_13sseILi16ELi32EhhEEjPKT1_lPKT2_l)
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
	ld	$2,%got_page(_ZN12_GLOBAL__N_13sseILi32ELi64EhhEEjPKT1_lPKT2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_13sseILi32ELi64EhhEEjPKT1_lPKT2_l)
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
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L11weight_pp_cEPKhPhliiiiii)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L11weight_pp_cEPKhPhliiiiii)
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
