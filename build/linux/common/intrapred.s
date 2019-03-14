	.file	1 "intrapred.cpp"
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
	.ent	_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli
	.type	_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli, @function
_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$9,0($4)
	addiu	$8,$8,-2
	daddiu	$10,$6,2
	lbu	$11,0($5)
	dext	$8,$8,0,32
	daddiu	$4,$4,1
	lbu	$2,0($6)
	daddiu	$3,$6,1
	daddu	$10,$10,$8
	addu	$9,$9,$11
	lsa	$2,$2,$9,1
	addiu	$2,$2,2
	sra	$2,$2,2
	sb	$2,0($6)
	.align	3
.L2:
	lbu	$2,0($3)
	daddiu	$4,$4,1
	daddiu	$3,$3,1
	lbu	$9,-1($4)
	lsa	$2,$2,$2,1
	addu	$2,$2,$9
	addiu	$2,$2,2
	sra	$2,$2,2
	bne	$10,$3,.L2
	sb	$2,-1($3)

	daddu	$8,$5,$8
	daddu	$6,$6,$7
	daddiu	$5,$5,1
	daddiu	$3,$8,2
	.align	3
.L3:
	lbu	$2,0($6)
	daddiu	$5,$5,1
	lbu	$4,-1($5)
	lsa	$2,$2,$2,1
	addu	$2,$2,$4
	addiu	$2,$2,2
	sra	$2,$2,2
	sb	$2,0($6)
	bne	$3,$5,.L3
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli
	.size	_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli, .-_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111intraFilterILi4EEEvPKhPh
	.type	_ZN12_GLOBAL__N_111intraFilterILi4EEEvPKhPh, @function
_ZN12_GLOBAL__N_111intraFilterILi4EEEvPKhPh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$11,0($4)
	daddiu	$3,$4,1
	daddiu	$6,$5,1
	lbu	$12,8($4)
	daddiu	$10,$4,7
	lbu	$9,16($4)
	b	.L10
	move	$7,$11

	.align	3
.L14:
	lbu	$7,0($3)
	daddiu	$3,$3,1
.L10:
	lbu	$2,0($3)
	daddiu	$6,$6,1
	lbu	$8,1($3)
	lsa	$2,$2,$7,1
	addu	$2,$2,$8
	addiu	$2,$2,2
	sra	$2,$2,2
	bne	$10,$3,.L14
	sb	$2,-1($6)

	sb	$12,8($5)
	daddiu	$3,$4,9
	daddiu	$8,$4,15
	lbu	$7,1($4)
	daddiu	$6,$5,10
	lbu	$2,9($4)
	lsa	$7,$11,$7,1
	addu	$7,$7,$2
	addiu	$7,$7,2
	sra	$7,$7,2
	sb	$7,0($5)
	lbu	$2,9($4)
	lbu	$4,10($4)
	lsa	$2,$2,$11,1
	addu	$2,$2,$4
	addiu	$2,$2,2
	sra	$2,$2,2
	sb	$2,9($5)
	.align	3
.L11:
	lbu	$2,1($3)
	daddiu	$3,$3,1
	daddiu	$6,$6,1
	lbu	$7,-1($3)
	lbu	$4,1($3)
	lsa	$2,$2,$7,1
	addu	$2,$2,$4
	addiu	$2,$2,2
	sra	$2,$2,2
	bne	$8,$3,.L11
	sb	$2,-1($6)

	jr	$31
	sb	$9,16($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111intraFilterILi4EEEvPKhPh
	.size	_ZN12_GLOBAL__N_111intraFilterILi4EEEvPKhPh, .-_ZN12_GLOBAL__N_111intraFilterILi4EEEvPKhPh
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111intraFilterILi8EEEvPKhPh
	.type	_ZN12_GLOBAL__N_111intraFilterILi8EEEvPKhPh, @function
_ZN12_GLOBAL__N_111intraFilterILi8EEEvPKhPh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$11,0($4)
	daddiu	$3,$4,1
	daddiu	$6,$5,1
	lbu	$12,16($4)
	daddiu	$9,$4,15
	lbu	$10,32($4)
	b	.L17
	move	$7,$11

	.align	3
.L21:
	lbu	$7,0($3)
	daddiu	$3,$3,1
.L17:
	lbu	$2,0($3)
	daddiu	$6,$6,1
	lbu	$8,1($3)
	lsa	$2,$2,$7,1
	addu	$2,$2,$8
	addiu	$2,$2,2
	sra	$2,$2,2
	bne	$9,$3,.L21
	sb	$2,-1($6)

	sb	$12,16($5)
	daddiu	$3,$4,17
	daddiu	$8,$4,31
	lbu	$7,1($4)
	daddiu	$6,$5,18
	lbu	$2,17($4)
	lsa	$7,$11,$7,1
	addu	$7,$7,$2
	addiu	$7,$7,2
	sra	$7,$7,2
	sb	$7,0($5)
	lbu	$2,17($4)
	lbu	$4,18($4)
	lsa	$2,$2,$11,1
	addu	$2,$2,$4
	addiu	$2,$2,2
	sra	$2,$2,2
	sb	$2,17($5)
	.align	3
.L18:
	lbu	$2,1($3)
	daddiu	$3,$3,1
	daddiu	$6,$6,1
	lbu	$7,-1($3)
	lbu	$4,1($3)
	lsa	$2,$2,$7,1
	addu	$2,$2,$4
	addiu	$2,$2,2
	sra	$2,$2,2
	bne	$8,$3,.L18
	sb	$2,-1($6)

	jr	$31
	sb	$10,32($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111intraFilterILi8EEEvPKhPh
	.size	_ZN12_GLOBAL__N_111intraFilterILi8EEEvPKhPh, .-_ZN12_GLOBAL__N_111intraFilterILi8EEEvPKhPh
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111intraFilterILi16EEEvPKhPh
	.type	_ZN12_GLOBAL__N_111intraFilterILi16EEEvPKhPh, @function
_ZN12_GLOBAL__N_111intraFilterILi16EEEvPKhPh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$11,0($4)
	daddiu	$3,$4,1
	daddiu	$6,$5,1
	lbu	$12,32($4)
	daddiu	$9,$4,31
	lbu	$10,64($4)
	b	.L24
	move	$7,$11

	.align	3
.L28:
	lbu	$7,0($3)
	daddiu	$3,$3,1
.L24:
	lbu	$2,0($3)
	daddiu	$6,$6,1
	lbu	$8,1($3)
	lsa	$2,$2,$7,1
	addu	$2,$2,$8
	addiu	$2,$2,2
	sra	$2,$2,2
	bne	$9,$3,.L28
	sb	$2,-1($6)

	sb	$12,32($5)
	daddiu	$3,$4,33
	daddiu	$8,$4,63
	lbu	$7,1($4)
	daddiu	$6,$5,34
	lbu	$2,33($4)
	lsa	$7,$11,$7,1
	addu	$7,$7,$2
	addiu	$7,$7,2
	sra	$7,$7,2
	sb	$7,0($5)
	lbu	$2,33($4)
	lbu	$4,34($4)
	lsa	$2,$2,$11,1
	addu	$2,$2,$4
	addiu	$2,$2,2
	sra	$2,$2,2
	sb	$2,33($5)
	.align	3
.L25:
	lbu	$2,1($3)
	daddiu	$3,$3,1
	daddiu	$6,$6,1
	lbu	$7,-1($3)
	lbu	$4,1($3)
	lsa	$2,$2,$7,1
	addu	$2,$2,$4
	addiu	$2,$2,2
	sra	$2,$2,2
	bne	$8,$3,.L25
	sb	$2,-1($6)

	jr	$31
	sb	$10,64($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111intraFilterILi16EEEvPKhPh
	.size	_ZN12_GLOBAL__N_111intraFilterILi16EEEvPKhPh, .-_ZN12_GLOBAL__N_111intraFilterILi16EEEvPKhPh
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_111intraFilterILi32EEEvPKhPh
	.type	_ZN12_GLOBAL__N_111intraFilterILi32EEEvPKhPh, @function
_ZN12_GLOBAL__N_111intraFilterILi32EEEvPKhPh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$11,0($4)
	daddiu	$3,$4,1
	daddiu	$6,$5,1
	lbu	$12,64($4)
	daddiu	$9,$4,63
	lbu	$10,128($4)
	b	.L31
	move	$8,$11

	.align	3
.L35:
	lbu	$8,0($3)
	daddiu	$3,$3,1
.L31:
	lbu	$2,0($3)
	daddiu	$6,$6,1
	lbu	$7,1($3)
	lsa	$2,$2,$8,1
	addu	$2,$2,$7
	addiu	$2,$2,2
	sra	$2,$2,2
	bne	$9,$3,.L35
	sb	$2,-1($6)

	sb	$12,64($5)
	daddiu	$3,$4,65
	daddiu	$8,$4,127
	lbu	$7,1($4)
	daddiu	$6,$5,66
	lbu	$2,65($4)
	lsa	$7,$11,$7,1
	addu	$7,$7,$2
	addiu	$7,$7,2
	sra	$7,$7,2
	sb	$7,0($5)
	lbu	$2,65($4)
	lbu	$4,66($4)
	lsa	$2,$2,$11,1
	addu	$2,$2,$4
	addiu	$2,$2,2
	sra	$2,$2,2
	sb	$2,65($5)
	.align	3
.L32:
	lbu	$2,1($3)
	daddiu	$3,$3,1
	daddiu	$6,$6,1
	lbu	$7,-1($3)
	lbu	$4,1($3)
	lsa	$2,$2,$7,1
	addu	$2,$2,$4
	addiu	$2,$2,2
	sra	$2,$2,2
	bne	$8,$3,.L32
	sb	$2,-1($6)

	jr	$31
	sb	$10,128($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_111intraFilterILi32EEEvPKhPh
	.size	_ZN12_GLOBAL__N_111intraFilterILi32EEEvPKhPh, .-_ZN12_GLOBAL__N_111intraFilterILi32EEEvPKhPh
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113planar_pred_cILi2EEEvPhlPKhii
	.type	_ZN12_GLOBAL__N_113planar_pred_cILi2EEEvPhlPKhii, @function
_ZN12_GLOBAL__N_113planar_pred_cILi2EEEvPhlPKhii:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	daddiu	$11,$6,9
	sd	$17,8($sp)
	li	$24,3			# 0x3
	daddiu	$6,$6,1
	sd	$18,16($sp)
	li	$12,-1			# 0xffffffffffffffff
	sd	$16,0($sp)
	lbu	$16,4($6)
	lbu	$25,12($6)
	move	$15,$16
	move	$17,$25
.L38:
	move	$14,$25
	move	$13,$24
	move	$10,$6
	move	$9,$4
	move	$8,$16
	li	$3,3			# 0x3
.L37:
	lbu	$2,0($11)
	daddiu	$9,$9,1
	daddiu	$10,$10,1
	lbu	$7,-1($10)
	mul	$18,$2,$3
	addiu	$3,$3,-1
	gsmultu	$7,$7,$13
	addu	$2,$18,$7
	addu	$2,$2,$8
	addu	$8,$15,$8
	addu	$2,$2,$14
	addiu	$2,$2,4
	sra	$2,$2,3
	bne	$3,$12,.L37
	sb	$2,-1($9)

	addiu	$24,$24,-1
	daddu	$4,$4,$5
	daddiu	$11,$11,1
	bne	$24,$12,.L38
	addu	$25,$17,$25

	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113planar_pred_cILi2EEEvPhlPKhii
	.size	_ZN12_GLOBAL__N_113planar_pred_cILi2EEEvPhlPKhii, .-_ZN12_GLOBAL__N_113planar_pred_cILi2EEEvPhlPKhii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113planar_pred_cILi3EEEvPhlPKhii
	.type	_ZN12_GLOBAL__N_113planar_pred_cILi3EEEvPhlPKhii, @function
_ZN12_GLOBAL__N_113planar_pred_cILi3EEEvPhlPKhii:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$10,$6,17
	sd	$18,24($sp)
	daddiu	$18,$6,25
	li	$24,7			# 0x7
	sd	$17,16($sp)
	daddiu	$25,$6,1
	li	$14,-1			# 0xffffffffffffffff
	sd	$19,32($sp)
	sd	$16,8($sp)
	lbu	$16,9($6)
	lbu	$15,25($6)
	move	$13,$16
	move	$17,$15
	.align	3
.L44:
	move	$12,$15
	move	$11,$24
	move	$9,$25
	move	$8,$4
	move	$7,$16
	li	$3,7			# 0x7
	.align	3
.L43:
	lbu	$2,0($10)
	daddiu	$8,$8,1
	daddiu	$9,$9,1
	lbu	$6,-1($9)
	mul	$19,$2,$3
	addiu	$3,$3,-1
	gsmultu	$6,$6,$11
	addu	$2,$19,$6
	addu	$2,$2,$7
	addu	$7,$13,$7
	addu	$2,$2,$12
	addiu	$2,$2,8
	sra	$2,$2,4
	bne	$3,$14,.L43
	sb	$2,-1($8)

	daddiu	$10,$10,1
	addiu	$24,$24,-1
	daddu	$4,$4,$5
	bne	$18,$10,.L44
	addu	$15,$17,$15

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113planar_pred_cILi3EEEvPhlPKhii
	.size	_ZN12_GLOBAL__N_113planar_pred_cILi3EEEvPhlPKhii, .-_ZN12_GLOBAL__N_113planar_pred_cILi3EEEvPhlPKhii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113planar_pred_cILi4EEEvPhlPKhii
	.type	_ZN12_GLOBAL__N_113planar_pred_cILi4EEEvPhlPKhii, @function
_ZN12_GLOBAL__N_113planar_pred_cILi4EEEvPhlPKhii:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$10,$6,33
	sd	$18,24($sp)
	daddiu	$18,$6,49
	li	$24,15			# 0xf
	sd	$17,16($sp)
	daddiu	$25,$6,1
	li	$14,-1			# 0xffffffffffffffff
	sd	$19,32($sp)
	sd	$16,8($sp)
	lbu	$16,17($6)
	lbu	$15,49($6)
	move	$13,$16
	move	$17,$15
	.align	3
.L50:
	move	$12,$15
	move	$11,$24
	move	$9,$25
	move	$8,$4
	move	$7,$16
	li	$3,15			# 0xf
	.align	3
.L49:
	lbu	$2,0($10)
	daddiu	$8,$8,1
	daddiu	$9,$9,1
	lbu	$6,-1($9)
	mul	$19,$2,$3
	addiu	$3,$3,-1
	gsmultu	$6,$6,$11
	addu	$2,$19,$6
	addu	$2,$2,$7
	addu	$7,$13,$7
	addu	$2,$2,$12
	addiu	$2,$2,16
	sra	$2,$2,5
	bne	$3,$14,.L49
	sb	$2,-1($8)

	daddiu	$10,$10,1
	addiu	$24,$24,-1
	daddu	$4,$4,$5
	bne	$18,$10,.L50
	addu	$15,$17,$15

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113planar_pred_cILi4EEEvPhlPKhii
	.size	_ZN12_GLOBAL__N_113planar_pred_cILi4EEEvPhlPKhii, .-_ZN12_GLOBAL__N_113planar_pred_cILi4EEEvPhlPKhii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_113planar_pred_cILi5EEEvPhlPKhii
	.type	_ZN12_GLOBAL__N_113planar_pred_cILi5EEEvPhlPKhii, @function
_ZN12_GLOBAL__N_113planar_pred_cILi5EEEvPhlPKhii:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x100f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$10,$6,65
	sd	$18,24($sp)
	daddiu	$18,$6,97
	li	$24,31			# 0x1f
	sd	$17,16($sp)
	move	$17,$5
	daddiu	$25,$6,1
	sd	$16,8($sp)
	li	$14,-1			# 0xffffffffffffffff
	sd	$19,32($sp)
	lbu	$5,33($6)
	lbu	$15,97($6)
	move	$13,$5
	move	$16,$15
	.align	3
.L56:
	move	$12,$15
	move	$11,$24
	move	$9,$25
	move	$8,$4
	move	$7,$5
	li	$3,31			# 0x1f
	.align	3
.L55:
	lbu	$2,0($10)
	daddiu	$8,$8,1
	daddiu	$9,$9,1
	lbu	$6,-1($9)
	mul	$19,$2,$3
	addiu	$3,$3,-1
	gsmultu	$6,$6,$11
	addu	$2,$19,$6
	addu	$2,$2,$7
	addu	$7,$13,$7
	addu	$2,$2,$12
	addiu	$2,$2,32
	sra	$2,$2,6
	bne	$3,$14,.L55
	sb	$2,-1($8)

	daddiu	$10,$10,1
	addiu	$24,$24,-1
	daddu	$4,$4,$17
	bne	$18,$10,.L56
	addu	$15,$16,$15

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113planar_pred_cILi5EEEvPhlPKhii
	.size	_ZN12_GLOBAL__N_113planar_pred_cILi5EEEvPhlPKhii, .-_ZN12_GLOBAL__N_113planar_pred_cILi5EEEvPhlPKhii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116intra_pred_ang_cILi4EEEvPhlPKhii
	.type	_ZN12_GLOBAL__N_116intra_pred_ang_cILi4EEEvPhlPKhii, @function
_ZN12_GLOBAL__N_116intra_pred_ang_cILi4EEEvPhlPKhii:
	.frame	$sp,256,$31		# vars= 240, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-256
	slt	$9,$7,18
	beq	$9,$0,.L61
	sd	$16,240($sp)

	lbu	$10,0($6)
	daddiu	$2,$6,1
	move	$3,$sp
	daddiu	$6,$6,9
	sb	$10,0($sp)
	.align	3
.L62:
	lbu	$11,8($2)
	daddiu	$2,$2,1
	daddiu	$3,$3,1
	lbu	$10,-1($2)
	sb	$11,0($3)
	bne	$2,$6,.L62
	sb	$10,8($3)

	move	$6,$sp
.L61:
	li	$3,437583872			# 0x1a150000
	li	$10,-8321			# 0xffffffffffffdf7f
	daddiu	$3,$3,4365
	li	$2,4194304			# 0x400000
	dsll	$3,$3,16
	dsll	$10,$10,22
	daddiu	$3,$3,2309
	li	$11,20643840			# 0x13b0000
	daddiu	$2,$2,79
	dsll	$3,$3,16
	daddiu	$3,$3,512
	daddiu	$10,$10,-24705
	daddiu	$11,$11,455
	dsll	$2,$2,17
	sd	$3,208($sp)
	dsll	$10,$10,16
	li	$3,32			# 0x20
	dsll	$11,$11,21
	daddiu	$2,$2,-32573
	sb	$3,216($sp)
	daddiu	$10,$10,24375
	daddiu	$3,$11,26209
	dsll	$2,$2,17
	dsll	$10,$10,5
	dsll	$3,$3,12
	daddiu	$2,$2,482
	sd	$10,200($sp)
	sd	$3,224($sp)
	addiu	$10,$7,-26
	beq	$9,$0,.L64
	sd	$2,232($sp)

	li	$10,10			# 0xa
	subu	$10,$10,$7
.L64:
	addiu	$2,$10,8
	daddu	$2,$sp,$2
	lb	$13,200($2)
	bne	$13,$0,.L65
	move	$12,$4

	move	$13,$4
	li	$11,4			# 0x4
	daddiu	$14,$6,1
	daddiu	$10,$6,5
.L67:
	move	$2,$14
	move	$3,$12
.L66:
	lbu	$7,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$10,$2,.L66
	sb	$7,-1($3)

	addiu	$11,$11,-1
	bne	$11,$0,.L67
	daddu	$12,$12,$5

	beq	$8,$0,.L69
	nop

	lbu	$7,0($6)
	daddiu	$3,$6,9
	daddiu	$10,$6,13
	lbu	$8,1($6)
.L73:
	lbu	$2,0($3)
	subu	$2,$2,$7
	sra	$2,$2,1
	addu	$2,$2,$8
	slt	$6,$2,256
	bne	$6,$0,.L70
	seh	$6,$2

	li	$2,255			# 0xff
.L71:
	daddiu	$3,$3,1
	sb	$2,0($13)
	bne	$10,$3,.L73
	daddu	$13,$13,$5

.L69:
	beq	$9,$0,.L60
	nop

	daddiu	$13,$5,1
	daddiu	$4,$4,1
	move	$10,$0
	daddiu	$12,$5,-1
	li	$9,4			# 0x4
	li	$11,3			# 0x3
.L85:
	addiu	$2,$10,1
	daddu	$6,$12,$4
	move	$10,$2
	move	$3,$4
.L87:
	lbu	$7,0($3)
	addiu	$2,$2,1
	daddiu	$3,$3,1
	lbu	$8,0($6)
	sb	$8,-1($3)
	sb	$7,0($6)
	bne	$2,$9,.L87
	daddu	$6,$6,$5

	bne	$10,$11,.L85
	daddu	$4,$4,$13

.L60:
	ld	$16,240($sp)
	jr	$31
	daddiu	$sp,$sp,256

	.align	3
.L65:
	bltz	$13,.L101
	daddiu	$14,$6,1

	move	$10,$0
.L103:
	move	$11,$4
	addu	$10,$13,$10
	li	$12,4			# 0x4
	andi	$8,$10,0x1f
	li	$24,32			# 0x20
	beq	$8,$0,.L79
	dsra	$2,$10,5

.L102:
	subu	$25,$24,$8
	daddu	$2,$14,$2
	daddiu	$15,$11,4
	move	$6,$11
.L81:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$6,$6,1
	lbu	$3,-1($2)
	gsmultu	$7,$7,$8
	mul	$16,$3,$25
	addu	$3,$16,$7
	addiu	$3,$3,16
	sra	$3,$3,5
	bne	$15,$6,.L81
	sb	$3,-1($6)

	addiu	$12,$12,-1
	beq	$12,$0,.L69
	daddu	$11,$11,$5

.L100:
	addu	$10,$13,$10
	andi	$8,$10,0x1f
	bne	$8,$0,.L102
	dsra	$2,$10,5

.L79:
	daddu	$2,$14,$2
	daddiu	$7,$11,4
	move	$3,$11
.L82:
	lbu	$6,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$7,$3,.L82
	sb	$6,-1($3)

	addiu	$12,$12,-1
	bne	$12,$0,.L100
	daddu	$11,$11,$5

	b	.L69
	nop

	.align	3
.L70:
	bgez	$6,.L71
	nop

	b	.L71
	move	$2,$0

	.align	3
.L101:
	sll	$2,$13,2
	nor	$10,$0,$10
	sra	$2,$2,5
	daddiu	$3,$sp,136
	nor	$2,$0,$2
	move	$11,$2
	dlsa	$2,$10,$sp,1
	daddiu	$14,$11,1
	lh	$12,224($2)
	beq	$11,$0,.L75
	daddu	$14,$3,$14

	addiu	$10,$11,-1
	daddiu	$7,$14,-2
	dext	$10,$10,0,32
	li	$8,128			# 0x80
	dsubu	$10,$14,$10
	daddiu	$10,$10,-3
	.align	3
.L76:
	addu	$8,$12,$8
	daddiu	$7,$7,-1
	sra	$2,$8,8
	addiu	$2,$2,8
	daddu	$2,$6,$2
	lbu	$2,0($2)
	bne	$10,$7,.L76
	sb	$2,1($7)

.L75:
	daddu	$2,$3,$11
	daddiu	$7,$14,4
.L78:
	lbu	$3,0($6)
	daddiu	$2,$2,1
	daddiu	$6,$6,1
	bne	$7,$2,.L78
	sb	$3,-1($2)

	b	.L103
	move	$10,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116intra_pred_ang_cILi4EEEvPhlPKhii
	.size	_ZN12_GLOBAL__N_116intra_pred_ang_cILi4EEEvPhlPKhii, .-_ZN12_GLOBAL__N_116intra_pred_ang_cILi4EEEvPhlPKhii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116intra_pred_ang_cILi8EEEvPhlPKhii
	.type	_ZN12_GLOBAL__N_116intra_pred_ang_cILi8EEEvPhlPKhii, @function
_ZN12_GLOBAL__N_116intra_pred_ang_cILi8EEEvPhlPKhii:
	.frame	$sp,256,$31		# vars= 240, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-256
	slt	$10,$7,18
	beq	$10,$0,.L105
	sd	$16,240($sp)

	lbu	$9,0($6)
	daddiu	$2,$sp,1
	daddiu	$3,$6,17
	daddiu	$11,$sp,17
	sb	$9,0($sp)
	.align	3
.L106:
	lbu	$9,0($3)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	lbu	$6,-17($3)
	sb	$9,-1($2)
	bne	$11,$2,.L106
	sb	$6,15($2)

	move	$6,$sp
.L105:
	li	$3,437583872			# 0x1a150000
	li	$9,-8321			# 0xffffffffffffdf7f
	daddiu	$3,$3,4365
	li	$2,4194304			# 0x400000
	dsll	$3,$3,16
	dsll	$9,$9,22
	daddiu	$3,$3,2309
	li	$11,20643840			# 0x13b0000
	daddiu	$2,$2,79
	dsll	$3,$3,16
	daddiu	$3,$3,512
	daddiu	$9,$9,-24705
	daddiu	$11,$11,455
	dsll	$2,$2,17
	sd	$3,208($sp)
	dsll	$9,$9,16
	li	$3,32			# 0x20
	dsll	$11,$11,21
	daddiu	$2,$2,-32573
	sb	$3,216($sp)
	daddiu	$9,$9,24375
	daddiu	$3,$11,26209
	dsll	$2,$2,17
	dsll	$9,$9,5
	dsll	$3,$3,12
	daddiu	$2,$2,482
	sd	$9,200($sp)
	sd	$3,224($sp)
	addiu	$9,$7,-26
	beq	$10,$0,.L108
	sd	$2,232($sp)

	li	$9,10			# 0xa
	subu	$9,$9,$7
.L108:
	addiu	$2,$9,8
	daddu	$2,$sp,$2
	lb	$14,200($2)
	bne	$14,$0,.L109
	move	$13,$4

	move	$12,$4
	li	$11,8			# 0x8
	daddiu	$14,$6,1
	daddiu	$9,$6,9
	.align	3
.L111:
	move	$2,$14
	move	$3,$12
	.align	3
.L110:
	lbu	$7,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$9,$2,.L110
	sb	$7,-1($3)

	addiu	$11,$11,-1
	bne	$11,$0,.L111
	daddu	$12,$12,$5

	beq	$8,$0,.L113
	nop

	lbu	$7,0($6)
	daddiu	$3,$6,17
	daddiu	$9,$6,25
	b	.L117
	lbu	$8,1($6)

	.align	3
.L148:
	li	$2,255			# 0xff
.L115:
	daddiu	$3,$3,1
	sb	$2,0($13)
	beq	$9,$3,.L113
	daddu	$13,$13,$5

.L117:
	lbu	$2,0($3)
	subu	$2,$2,$7
	sra	$2,$2,1
	addu	$2,$2,$8
	slt	$6,$2,256
	beq	$6,$0,.L148
	seh	$6,$2

	bgez	$6,.L115
	nop

	move	$2,$0
	daddiu	$3,$3,1
	sb	$2,0($13)
	bne	$9,$3,.L117
	daddu	$13,$13,$5

	.align	3
.L113:
	beq	$10,$0,.L104
	nop

	daddiu	$11,$5,1
	daddiu	$8,$4,1
	daddiu	$7,$4,8
	li	$9,7			# 0x7
	daddiu	$10,$5,-1
	.align	3
.L129:
	daddu	$3,$10,$8
	move	$2,$8
	.align	3
.L131:
	daddiu	$2,$2,1
	lbu	$6,0($3)
	lbu	$4,-1($2)
	sb	$6,-1($2)
	sb	$4,0($3)
	bne	$7,$2,.L131
	daddu	$3,$3,$5

	addiu	$9,$9,-1
	daddu	$8,$8,$11
	bne	$9,$0,.L129
	daddu	$7,$7,$5

.L104:
	ld	$16,240($sp)
	jr	$31
	daddiu	$sp,$sp,256

	.align	3
.L109:
	bltz	$14,.L149
	daddiu	$15,$6,1

	move	$11,$0
.L151:
	move	$12,$4
	addu	$11,$14,$11
	li	$13,8			# 0x8
	andi	$8,$11,0x1f
	li	$24,32			# 0x20
	beq	$8,$0,.L123
	dsra	$3,$11,5

	.align	3
.L150:
	subu	$25,$24,$8
	daddu	$3,$15,$3
	daddiu	$9,$12,8
	move	$6,$12
	.align	3
.L125:
	lbu	$7,1($3)
	daddiu	$3,$3,1
	daddiu	$6,$6,1
	lbu	$2,-1($3)
	gsmultu	$7,$7,$8
	mul	$16,$2,$25
	addu	$2,$16,$7
	addiu	$2,$2,16
	sra	$2,$2,5
	bne	$9,$6,.L125
	sb	$2,-1($6)

	addiu	$13,$13,-1
	beq	$13,$0,.L113
	daddu	$12,$12,$5

.L147:
	addu	$11,$14,$11
	andi	$8,$11,0x1f
	bne	$8,$0,.L150
	dsra	$3,$11,5

.L123:
	daddu	$3,$15,$3
	daddiu	$7,$12,8
	move	$2,$12
	.align	3
.L126:
	lbu	$6,0($3)
	daddiu	$2,$2,1
	daddiu	$3,$3,1
	bne	$7,$2,.L126
	sb	$6,-1($2)

	addiu	$13,$13,-1
	bne	$13,$0,.L147
	daddu	$12,$12,$5

	b	.L113
	nop

.L149:
	sll	$2,$14,3
	nor	$3,$0,$9
	sra	$9,$2,5
	dlsa	$3,$3,$sp,1
	nor	$9,$0,$9
	daddiu	$2,$sp,136
	lh	$12,224($3)
	daddiu	$15,$9,1
	beq	$9,$0,.L119
	daddu	$15,$2,$15

	addiu	$11,$9,-1
	daddiu	$7,$15,-2
	dext	$11,$11,0,32
	li	$8,128			# 0x80
	dsubu	$11,$15,$11
	daddiu	$11,$11,-3
	.align	3
.L120:
	addu	$8,$12,$8
	daddiu	$7,$7,-1
	sra	$3,$8,8
	addiu	$3,$3,16
	daddu	$3,$6,$3
	lbu	$3,0($3)
	bne	$11,$7,.L120
	sb	$3,1($7)

.L119:
	move	$3,$6
	daddu	$2,$2,$9
	daddiu	$7,$15,8
	.align	3
.L122:
	lbu	$6,0($3)
	daddiu	$2,$2,1
	daddiu	$3,$3,1
	bne	$7,$2,.L122
	sb	$6,-1($2)

	b	.L151
	move	$11,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116intra_pred_ang_cILi8EEEvPhlPKhii
	.size	_ZN12_GLOBAL__N_116intra_pred_ang_cILi8EEEvPhlPKhii, .-_ZN12_GLOBAL__N_116intra_pred_ang_cILi8EEEvPhlPKhii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116intra_pred_ang_cILi16EEEvPhlPKhii
	.type	_ZN12_GLOBAL__N_116intra_pred_ang_cILi16EEEvPhlPKhii, @function
_ZN12_GLOBAL__N_116intra_pred_ang_cILi16EEEvPhlPKhii:
	.frame	$sp,256,$31		# vars= 240, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-256
	slt	$10,$7,18
	beq	$10,$0,.L153
	sd	$16,240($sp)

	lbu	$9,0($6)
	daddiu	$2,$sp,1
	daddiu	$3,$6,33
	daddiu	$11,$sp,33
	sb	$9,0($sp)
	.align	3
.L154:
	lbu	$9,0($3)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	lbu	$6,-33($3)
	sb	$9,-1($2)
	bne	$11,$2,.L154
	sb	$6,31($2)

	move	$6,$sp
.L153:
	li	$3,437583872			# 0x1a150000
	li	$9,-8321			# 0xffffffffffffdf7f
	daddiu	$3,$3,4365
	li	$2,4194304			# 0x400000
	dsll	$3,$3,16
	dsll	$9,$9,22
	daddiu	$3,$3,2309
	li	$11,20643840			# 0x13b0000
	daddiu	$2,$2,79
	dsll	$3,$3,16
	daddiu	$3,$3,512
	daddiu	$9,$9,-24705
	daddiu	$11,$11,455
	dsll	$2,$2,17
	sd	$3,208($sp)
	dsll	$9,$9,16
	li	$3,32			# 0x20
	dsll	$11,$11,21
	daddiu	$2,$2,-32573
	sb	$3,216($sp)
	daddiu	$9,$9,24375
	daddiu	$3,$11,26209
	dsll	$2,$2,17
	dsll	$9,$9,5
	dsll	$3,$3,12
	daddiu	$2,$2,482
	sd	$9,200($sp)
	sd	$3,224($sp)
	addiu	$9,$7,-26
	beq	$10,$0,.L156
	sd	$2,232($sp)

	li	$9,10			# 0xa
	subu	$9,$9,$7
.L156:
	addiu	$2,$9,8
	daddu	$2,$sp,$2
	lb	$14,200($2)
	bne	$14,$0,.L157
	move	$13,$4

	move	$11,$4
	li	$12,16			# 0x10
	daddiu	$14,$6,1
	.align	3
.L159:
	move	$3,$14
	daddiu	$9,$11,16
	move	$2,$11
	.align	3
.L158:
	lbu	$7,0($3)
	daddiu	$2,$2,1
	daddiu	$3,$3,1
	bne	$9,$2,.L158
	sb	$7,-1($2)

	addiu	$12,$12,-1
	bne	$12,$0,.L159
	daddu	$11,$11,$5

	beq	$8,$0,.L161
	nop

	lbu	$2,0($6)
	daddiu	$7,$6,33
	daddiu	$9,$6,49
	lbu	$8,1($6)
	b	.L165
	move	$6,$2

	.align	3
.L196:
	li	$2,255			# 0xff
.L163:
	daddiu	$7,$7,1
	sb	$2,0($13)
	beq	$9,$7,.L161
	daddu	$13,$13,$5

.L165:
	lbu	$2,0($7)
	subu	$2,$2,$6
	sra	$2,$2,1
	addu	$2,$2,$8
	slt	$3,$2,256
	beq	$3,$0,.L196
	seh	$3,$2

	bgez	$3,.L163
	nop

	move	$2,$0
	daddiu	$7,$7,1
	sb	$2,0($13)
	bne	$9,$7,.L165
	daddu	$13,$13,$5

.L161:
	beq	$10,$0,.L152
	nop

	daddiu	$11,$5,1
	daddiu	$8,$4,1
	daddiu	$7,$4,16
	li	$9,15			# 0xf
	daddiu	$10,$5,-1
	.align	3
.L177:
	daddu	$3,$10,$8
	move	$2,$8
	.align	3
.L179:
	daddiu	$2,$2,1
	lbu	$6,0($3)
	lbu	$4,-1($2)
	sb	$6,-1($2)
	sb	$4,0($3)
	bne	$7,$2,.L179
	daddu	$3,$3,$5

	addiu	$9,$9,-1
	daddu	$8,$8,$11
	bne	$9,$0,.L177
	daddu	$7,$7,$5

.L152:
	ld	$16,240($sp)
	jr	$31
	daddiu	$sp,$sp,256

.L157:
	bltz	$14,.L197
	daddiu	$15,$6,1

	move	$11,$0
.L199:
	move	$12,$4
	addu	$11,$14,$11
	li	$13,16			# 0x10
	andi	$8,$11,0x1f
	li	$24,32			# 0x20
	beq	$8,$0,.L171
	dsra	$3,$11,5

	.align	3
.L198:
	subu	$25,$24,$8
	daddu	$3,$15,$3
	daddiu	$9,$12,16
	move	$6,$12
	.align	3
.L173:
	lbu	$7,1($3)
	daddiu	$3,$3,1
	daddiu	$6,$6,1
	lbu	$2,-1($3)
	gsmultu	$7,$7,$8
	mul	$16,$2,$25
	addu	$2,$16,$7
	addiu	$2,$2,16
	sra	$2,$2,5
	bne	$9,$6,.L173
	sb	$2,-1($6)

	addiu	$13,$13,-1
	beq	$13,$0,.L161
	daddu	$12,$12,$5

.L195:
	addu	$11,$14,$11
	andi	$8,$11,0x1f
	bne	$8,$0,.L198
	dsra	$3,$11,5

.L171:
	daddu	$3,$15,$3
	daddiu	$7,$12,16
	move	$2,$12
	.align	3
.L174:
	lbu	$6,0($3)
	daddiu	$2,$2,1
	daddiu	$3,$3,1
	bne	$7,$2,.L174
	sb	$6,-1($2)

	addiu	$13,$13,-1
	bne	$13,$0,.L195
	daddu	$12,$12,$5

	b	.L161
	nop

.L197:
	sll	$11,$14,4
	nor	$2,$0,$9
	sra	$11,$11,5
	daddiu	$3,$sp,136
	nor	$11,$0,$11
	dlsa	$2,$2,$sp,1
	daddiu	$15,$11,1
	lh	$12,224($2)
	beq	$11,$0,.L167
	daddu	$15,$3,$15

	addiu	$9,$11,-1
	daddiu	$7,$15,-2
	dext	$9,$9,0,32
	li	$8,128			# 0x80
	dsubu	$9,$15,$9
	daddiu	$9,$9,-3
.L168:
	addu	$8,$12,$8
	daddiu	$7,$7,-1
	sra	$2,$8,8
	addiu	$2,$2,32
	daddu	$2,$6,$2
	lbu	$2,0($2)
	bne	$9,$7,.L168
	sb	$2,1($7)

.L167:
	move	$2,$6
	daddu	$3,$3,$11
	daddiu	$7,$15,16
	.align	3
.L170:
	lbu	$6,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$3,$7,.L170
	sb	$6,-1($3)

	b	.L199
	move	$11,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116intra_pred_ang_cILi16EEEvPhlPKhii
	.size	_ZN12_GLOBAL__N_116intra_pred_ang_cILi16EEEvPhlPKhii, .-_ZN12_GLOBAL__N_116intra_pred_ang_cILi16EEEvPhlPKhii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116intra_pred_ang_cILi32EEEvPhlPKhii
	.type	_ZN12_GLOBAL__N_116intra_pred_ang_cILi32EEEvPhlPKhii, @function
_ZN12_GLOBAL__N_116intra_pred_ang_cILi32EEEvPhlPKhii:
	.frame	$sp,272,$31		# vars= 240, regs= 3/0, args= 0, gp= 0
	.mask	0x10030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-272
	slt	$10,$7,18
	sd	$17,256($sp)
	beq	$10,$0,.L201
	sd	$16,248($sp)

	lbu	$9,0($6)
	daddiu	$2,$sp,1
	daddiu	$3,$6,65
	daddiu	$11,$sp,65
	sb	$9,0($sp)
	.align	3
.L202:
	lbu	$9,0($3)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	lbu	$6,-65($3)
	sb	$9,-1($2)
	bne	$11,$2,.L202
	sb	$6,63($2)

	move	$6,$sp
.L201:
	li	$9,-8321			# 0xffffffffffffdf7f
	li	$2,437583872			# 0x1a150000
	dsll	$9,$9,22
	li	$3,4194304			# 0x400000
	daddiu	$2,$2,4365
	daddiu	$9,$9,-24705
	li	$11,20643840			# 0x13b0000
	daddiu	$3,$3,79
	dsll	$2,$2,16
	dsll	$9,$9,16
	daddiu	$11,$11,455
	dsll	$3,$3,17
	daddiu	$2,$2,2309
	daddiu	$9,$9,24375
	dsll	$9,$9,5
	dsll	$11,$11,21
	daddiu	$3,$3,-32573
	dsll	$2,$2,16
	sd	$9,200($sp)
	daddiu	$2,$2,512
	daddiu	$9,$11,26209
	dsll	$3,$3,17
	sd	$2,208($sp)
	dsll	$9,$9,12
	li	$2,32			# 0x20
	daddiu	$3,$3,482
	sd	$9,224($sp)
	sb	$2,216($sp)
	addiu	$2,$7,-26
	beq	$10,$0,.L204
	sd	$3,232($sp)

	li	$2,10			# 0xa
	subu	$2,$2,$7
.L204:
	addiu	$3,$2,8
	daddu	$3,$sp,$3
	lb	$24,200($3)
	bne	$24,$0,.L205
	move	$13,$4

	move	$11,$4
	li	$12,32			# 0x20
	daddiu	$14,$6,1
	.align	3
.L207:
	move	$3,$14
	daddiu	$9,$11,32
	move	$2,$11
	.align	3
.L206:
	lbu	$7,0($3)
	daddiu	$2,$2,1
	daddiu	$3,$3,1
	bne	$9,$2,.L206
	sb	$7,-1($2)

	addiu	$12,$12,-1
	bne	$12,$0,.L207
	daddu	$11,$11,$5

	beq	$8,$0,.L209
	nop

	lbu	$2,0($6)
	daddiu	$7,$6,65
	daddiu	$9,$6,97
	lbu	$8,1($6)
	b	.L213
	move	$6,$2

	.align	3
.L244:
	li	$2,255			# 0xff
.L211:
	daddiu	$7,$7,1
	sb	$2,0($13)
	beq	$9,$7,.L209
	daddu	$13,$13,$5

.L213:
	lbu	$2,0($7)
	subu	$2,$2,$6
	sra	$2,$2,1
	addu	$2,$2,$8
	slt	$3,$2,256
	beq	$3,$0,.L244
	seh	$3,$2

	bgez	$3,.L211
	nop

	move	$2,$0
	daddiu	$7,$7,1
	sb	$2,0($13)
	bne	$9,$7,.L213
	daddu	$13,$13,$5

.L209:
	beq	$10,$0,.L200
	nop

	daddiu	$8,$4,1
	daddiu	$11,$5,1
	daddiu	$4,$4,32
	li	$9,31			# 0x1f
	daddiu	$10,$5,-1
	.align	3
.L225:
	daddu	$3,$10,$8
	move	$2,$8
	.align	3
.L227:
	daddiu	$2,$2,1
	lbu	$7,0($3)
	lbu	$6,-1($2)
	sb	$7,-1($2)
	sb	$6,0($3)
	bne	$4,$2,.L227
	daddu	$3,$3,$5

	addiu	$9,$9,-1
	daddu	$8,$8,$11
	bne	$9,$0,.L225
	daddu	$4,$4,$5

.L200:
	ld	$17,256($sp)
	ld	$16,248($sp)
	jr	$31
	daddiu	$sp,$sp,272

.L205:
	bltz	$24,.L245
	daddiu	$15,$6,1

	daddiu	$14,$6,33
	move	$11,$0
.L247:
	move	$13,$4
	addu	$11,$24,$11
	li	$12,32			# 0x20
	andi	$9,$11,0x1f
	li	$25,32			# 0x20
	beq	$9,$0,.L219
	dsra	$6,$11,5

	.align	3
.L246:
	subu	$16,$25,$9
	daddu	$3,$15,$6
	daddu	$8,$14,$6
	move	$7,$13
	.align	3
.L221:
	lbu	$6,1($3)
	daddiu	$3,$3,1
	daddiu	$7,$7,1
	lbu	$2,-1($3)
	gsmultu	$6,$6,$9
	mul	$17,$2,$16
	addu	$2,$17,$6
	addiu	$2,$2,16
	sra	$2,$2,5
	bne	$8,$3,.L221
	sb	$2,-1($7)

	addiu	$12,$12,-1
	beq	$12,$0,.L209
	daddu	$13,$13,$5

.L243:
	addu	$11,$24,$11
	andi	$9,$11,0x1f
	bne	$9,$0,.L246
	dsra	$6,$11,5

.L219:
	daddu	$2,$15,$6
	move	$3,$13
	daddu	$6,$14,$6
	.align	3
.L222:
	lbu	$7,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$6,$2,.L222
	sb	$7,-1($3)

	addiu	$12,$12,-1
	bne	$12,$0,.L243
	daddu	$13,$13,$5

	b	.L209
	nop

.L245:
	nor	$3,$0,$2
	nor	$8,$0,$24
	daddiu	$2,$sp,136
	daddiu	$15,$8,1
	dlsa	$3,$3,$sp,1
	daddu	$15,$2,$15
	beq	$8,$0,.L215
	lh	$12,224($3)

	addiu	$7,$8,-1
	daddiu	$9,$15,-2
	dext	$7,$7,0,32
	li	$11,128			# 0x80
	dsubu	$7,$15,$7
	daddiu	$7,$7,-3
.L216:
	addu	$11,$12,$11
	daddiu	$9,$9,-1
	sra	$3,$11,8
	addiu	$3,$3,64
	daddu	$3,$6,$3
	lbu	$3,0($3)
	bne	$7,$9,.L216
	sb	$3,1($9)

.L215:
	move	$3,$6
	daddu	$2,$2,$8
	daddiu	$14,$15,32
	.align	3
.L218:
	lbu	$6,0($3)
	daddiu	$2,$2,1
	daddiu	$3,$3,1
	bne	$14,$2,.L218
	sb	$6,-1($2)

	b	.L247
	move	$11,$0

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116intra_pred_ang_cILi32EEEvPhlPKhii
	.size	_ZN12_GLOBAL__N_116intra_pred_ang_cILi32EEEvPhlPKhii, .-_ZN12_GLOBAL__N_116intra_pred_ang_cILi32EEEvPhlPKhii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115all_angs_pred_cILi2EEEvPhS1_S1_i
	.type	_ZN12_GLOBAL__N_115all_angs_pred_cILi2EEEvPhS1_S1_i, @function
_ZN12_GLOBAL__N_115all_angs_pred_cILi2EEEvPhS1_S1_i:
	.frame	$sp,112,$31		# vars= 16, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115all_angs_pred_cILi2EEEvPhS1_S1_i)))
	daddu	$28,$28,$25
	sd	$fp,96($sp)
	move	$fp,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115all_angs_pred_cILi2EEEvPhS1_S1_i)))
	sd	$23,80($sp)
	li	$23,4			# 0x4
	ld	$9,%got_disp(_ZN4x26518g_intraFilterFlagsE)($28)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116intra_pred_ang_cILi4EEEvPhlPKhii)($28)
	sd	$22,72($sp)
	li	$22,2			# 0x2
	sd	$21,64($sp)
	move	$21,$5
	sd	$20,56($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_116intra_pred_ang_cILi4EEEvPhlPKhii)
	move	$20,$6
	sd	$19,48($sp)
	move	$19,$7
	sd	$18,40($sp)
	li	$18,35			# 0x23
	sd	$17,32($sp)
	daddiu	$17,$9,2
	sd	$16,24($sp)
	li	$16,3			# 0x3
	sd	$31,104($sp)
	sd	$2,0($sp)
	.align	3
.L254:
	lbu	$6,0($17)
	move	$2,$21
	move	$8,$19
	ld	$25,0($sp)
	move	$7,$22
	li	$5,4			# 0x4
	move	$4,$fp
	andi	$6,$6,0x4
	movn	$2,$20,$6
	jalr	$25
	move	$6,$2

	slt	$2,$22,18
	beq	$2,$0,.L250
	nop

	daddiu	$7,$fp,1
	move	$8,$0
.L251:
	addiu	$2,$8,1
	daddiu	$4,$7,3
	move	$8,$2
	move	$3,$7
.L253:
	lbu	$5,0($3)
	daddiu	$4,$4,4
	daddiu	$3,$3,1
	lbu	$6,-4($4)
	addiu	$2,$2,1
	sb	$6,-1($3)
	bne	$2,$23,.L253
	sb	$5,-4($4)

	bne	$8,$16,.L251
	daddiu	$7,$7,5

.L250:
	addiu	$22,$22,1
	daddiu	$17,$17,1
	bne	$22,$18,.L254
	daddiu	$fp,$fp,16

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
	.end	_ZN12_GLOBAL__N_115all_angs_pred_cILi2EEEvPhS1_S1_i
	.size	_ZN12_GLOBAL__N_115all_angs_pred_cILi2EEEvPhS1_S1_i, .-_ZN12_GLOBAL__N_115all_angs_pred_cILi2EEEvPhS1_S1_i
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115all_angs_pred_cILi3EEEvPhS1_S1_i
	.type	_ZN12_GLOBAL__N_115all_angs_pred_cILi3EEEvPhS1_S1_i, @function
_ZN12_GLOBAL__N_115all_angs_pred_cILi3EEEvPhS1_S1_i:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115all_angs_pred_cILi3EEEvPhS1_S1_i)))
	daddu	$28,$28,$25
	sd	$23,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115all_angs_pred_cILi3EEEvPhS1_S1_i)))
	sd	$16,0($sp)
	ld	$23,%got_disp(_ZN4x26518g_intraFilterFlagsE)($28)
	ld	$16,%got_page(_ZN12_GLOBAL__N_116intra_pred_ang_cILi8EEEvPhlPKhii)($28)
	sd	$22,48($sp)
	li	$22,2			# 0x2
	sd	$21,40($sp)
	daddiu	$23,$23,2
	daddiu	$21,$4,64
	sd	$20,32($sp)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_116intra_pred_ang_cILi8EEEvPhlPKhii)
	move	$20,$5
	sd	$19,24($sp)
	move	$19,$6
	sd	$18,16($sp)
	move	$18,$7
	sd	$17,8($sp)
	li	$17,35			# 0x23
	sd	$31,72($sp)
	.align	3
.L264:
	lbu	$6,0($23)
	move	$2,$20
	move	$8,$18
	move	$7,$22
	li	$5,8			# 0x8
	daddiu	$4,$21,-64
	move	$25,$16
	andi	$6,$6,0x8
	movn	$2,$19,$6
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_116intra_pred_ang_cILi8EEEvPhlPKhii
1:	jalr	$25
	move	$6,$2

	slt	$2,$22,18
	beq	$2,$0,.L260
	nop

	daddiu	$7,$21,-63
	move	$6,$21
	.align	3
.L261:
	daddiu	$2,$7,7
	move	$3,$7
	.align	3
.L263:
	daddiu	$2,$2,8
	lbu	$4,0($3)
	daddiu	$3,$3,1
	lbu	$5,-8($2)
	sb	$5,-1($3)
	bne	$2,$6,.L263
	sb	$4,-8($2)

	daddiu	$7,$7,9
	bne	$7,$21,.L261
	daddiu	$6,$6,1

.L260:
	addiu	$22,$22,1
	daddiu	$23,$23,1
	bne	$22,$17,.L264
	daddiu	$21,$21,64

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
	.end	_ZN12_GLOBAL__N_115all_angs_pred_cILi3EEEvPhS1_S1_i
	.size	_ZN12_GLOBAL__N_115all_angs_pred_cILi3EEEvPhS1_S1_i, .-_ZN12_GLOBAL__N_115all_angs_pred_cILi3EEEvPhS1_S1_i
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115all_angs_pred_cILi4EEEvPhS1_S1_i
	.type	_ZN12_GLOBAL__N_115all_angs_pred_cILi4EEEvPhS1_S1_i, @function
_ZN12_GLOBAL__N_115all_angs_pred_cILi4EEEvPhS1_S1_i:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115all_angs_pred_cILi4EEEvPhS1_S1_i)))
	daddu	$28,$28,$25
	sd	$23,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115all_angs_pred_cILi4EEEvPhS1_S1_i)))
	sd	$16,0($sp)
	ld	$23,%got_disp(_ZN4x26518g_intraFilterFlagsE)($28)
	ld	$16,%got_page(_ZN12_GLOBAL__N_116intra_pred_ang_cILi16EEEvPhlPKhii)($28)
	sd	$22,48($sp)
	li	$22,2			# 0x2
	sd	$21,40($sp)
	daddiu	$23,$23,2
	daddiu	$21,$4,256
	sd	$20,32($sp)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_116intra_pred_ang_cILi16EEEvPhlPKhii)
	move	$20,$5
	sd	$19,24($sp)
	move	$19,$6
	sd	$18,16($sp)
	move	$18,$7
	sd	$17,8($sp)
	li	$17,35			# 0x23
	sd	$31,72($sp)
	.align	3
.L274:
	lbu	$6,0($23)
	move	$2,$20
	move	$8,$18
	move	$7,$22
	li	$5,16			# 0x10
	daddiu	$4,$21,-256
	move	$25,$16
	andi	$6,$6,0x10
	movn	$2,$19,$6
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_116intra_pred_ang_cILi16EEEvPhlPKhii
1:	jalr	$25
	move	$6,$2

	slt	$2,$22,18
	beq	$2,$0,.L270
	nop

	daddiu	$7,$21,-255
	move	$6,$21
	.align	3
.L271:
	daddiu	$2,$7,15
	move	$3,$7
	.align	3
.L273:
	daddiu	$2,$2,16
	lbu	$4,0($3)
	daddiu	$3,$3,1
	lbu	$5,-16($2)
	sb	$5,-1($3)
	bne	$2,$6,.L273
	sb	$4,-16($2)

	daddiu	$7,$7,17
	bne	$7,$21,.L271
	daddiu	$6,$6,1

.L270:
	addiu	$22,$22,1
	daddiu	$23,$23,1
	bne	$22,$17,.L274
	daddiu	$21,$21,256

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
	.end	_ZN12_GLOBAL__N_115all_angs_pred_cILi4EEEvPhS1_S1_i
	.size	_ZN12_GLOBAL__N_115all_angs_pred_cILi4EEEvPhS1_S1_i, .-_ZN12_GLOBAL__N_115all_angs_pred_cILi4EEEvPhS1_S1_i
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115all_angs_pred_cILi5EEEvPhS1_S1_i
	.type	_ZN12_GLOBAL__N_115all_angs_pred_cILi5EEEvPhS1_S1_i, @function
_ZN12_GLOBAL__N_115all_angs_pred_cILi5EEEvPhS1_S1_i:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115all_angs_pred_cILi5EEEvPhS1_S1_i)))
	daddu	$28,$28,$25
	sd	$23,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115all_angs_pred_cILi5EEEvPhS1_S1_i)))
	sd	$16,0($sp)
	ld	$23,%got_disp(_ZN4x26518g_intraFilterFlagsE)($28)
	ld	$16,%got_page(_ZN12_GLOBAL__N_116intra_pred_ang_cILi32EEEvPhlPKhii)($28)
	sd	$22,48($sp)
	li	$22,2			# 0x2
	sd	$21,40($sp)
	daddiu	$23,$23,2
	daddiu	$21,$4,1024
	sd	$20,32($sp)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_116intra_pred_ang_cILi32EEEvPhlPKhii)
	move	$20,$5
	sd	$19,24($sp)
	move	$19,$6
	sd	$18,16($sp)
	move	$18,$7
	sd	$17,8($sp)
	li	$17,35			# 0x23
	sd	$31,72($sp)
	.align	3
.L284:
	lbu	$6,0($23)
	move	$2,$20
	move	$8,$18
	move	$7,$22
	li	$5,32			# 0x20
	daddiu	$4,$21,-1024
	move	$25,$16
	andi	$6,$6,0x20
	movn	$2,$19,$6
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_116intra_pred_ang_cILi32EEEvPhlPKhii
1:	jalr	$25
	move	$6,$2

	slt	$2,$22,18
	beq	$2,$0,.L280
	nop

	daddiu	$7,$21,-1023
	move	$6,$21
	.align	3
.L281:
	daddiu	$2,$7,31
	move	$3,$7
	.align	3
.L283:
	daddiu	$2,$2,32
	lbu	$4,0($3)
	daddiu	$3,$3,1
	lbu	$5,-32($2)
	sb	$5,-1($3)
	bne	$2,$6,.L283
	sb	$4,-32($2)

	daddiu	$7,$7,33
	bne	$7,$21,.L281
	daddiu	$6,$6,1

.L280:
	addiu	$22,$22,1
	daddiu	$23,$23,1
	bne	$22,$17,.L284
	daddiu	$21,$21,1024

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
	.end	_ZN12_GLOBAL__N_115all_angs_pred_cILi5EEEvPhS1_S1_i
	.size	_ZN12_GLOBAL__N_115all_angs_pred_cILi5EEEvPhS1_S1_i, .-_ZN12_GLOBAL__N_115all_angs_pred_cILi5EEEvPhS1_S1_i
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115intra_pred_dc_cILi4EEEvPhlPKhii
	.type	_ZN12_GLOBAL__N_115intra_pred_dc_cILi4EEEvPhlPKhii, @function
_ZN12_GLOBAL__N_115intra_pred_dc_cILi4EEEvPhlPKhii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$13,$6,1
	move	$12,$6
	move	$2,$13
	daddiu	$7,$6,5
	li	$3,4			# 0x4
.L289:
	lbu	$9,0($2)
	daddiu	$2,$2,1
	lbu	$10,7($2)
	addu	$9,$9,$10
	bne	$2,$7,.L289
	addu	$3,$9,$3

	dext	$3,$3,3,8
	move	$10,$4
	li	$11,4			# 0x4
.L291:
	daddiu	$9,$10,4
	move	$2,$10
.L290:
	sb	$3,0($2)
	daddiu	$2,$2,1
	bne	$9,$2,.L290
	nop

	addiu	$11,$11,-1
	bne	$11,$0,.L291
	daddu	$10,$10,$5

	bne	$8,$0,.L299
	lui	$14,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115intra_pred_dc_cILi4EEEvPhlPKhii)))

	jr	$31
	nop

	.align	3
.L299:
	move	$7,$5
	daddu	$14,$14,$25
	move	$6,$4
	daddiu	$14,$14,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115intra_pred_dc_cILi4EEEvPhlPKhii)))
	li	$8,4			# 0x4
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli)($14)
	daddiu	$5,$12,9
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli
1:	jr	$25
	move	$4,$13

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115intra_pred_dc_cILi4EEEvPhlPKhii
	.size	_ZN12_GLOBAL__N_115intra_pred_dc_cILi4EEEvPhlPKhii, .-_ZN12_GLOBAL__N_115intra_pred_dc_cILi4EEEvPhlPKhii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115intra_pred_dc_cILi8EEEvPhlPKhii
	.type	_ZN12_GLOBAL__N_115intra_pred_dc_cILi8EEEvPhlPKhii, @function
_ZN12_GLOBAL__N_115intra_pred_dc_cILi8EEEvPhlPKhii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$13,$6,1
	move	$12,$6
	move	$2,$13
	daddiu	$7,$6,9
	li	$3,8			# 0x8
	.align	3
.L303:
	lbu	$9,0($2)
	daddiu	$2,$2,1
	lbu	$10,15($2)
	addu	$9,$9,$10
	bne	$2,$7,.L303
	addu	$3,$9,$3

	dext	$3,$3,4,8
	move	$10,$4
	li	$11,8			# 0x8
	.align	3
.L305:
	daddiu	$9,$10,8
	move	$2,$10
	.align	3
.L304:
	sb	$3,0($2)
	daddiu	$2,$2,1
	bne	$9,$2,.L304
	nop

	addiu	$11,$11,-1
	bne	$11,$0,.L305
	daddu	$10,$10,$5

	bne	$8,$0,.L313
	lui	$14,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115intra_pred_dc_cILi8EEEvPhlPKhii)))

	jr	$31
	nop

.L313:
	move	$7,$5
	daddu	$14,$14,$25
	move	$6,$4
	daddiu	$14,$14,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115intra_pred_dc_cILi8EEEvPhlPKhii)))
	li	$8,8			# 0x8
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli)($14)
	daddiu	$5,$12,17
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli
1:	jr	$25
	move	$4,$13

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115intra_pred_dc_cILi8EEEvPhlPKhii
	.size	_ZN12_GLOBAL__N_115intra_pred_dc_cILi8EEEvPhlPKhii, .-_ZN12_GLOBAL__N_115intra_pred_dc_cILi8EEEvPhlPKhii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115intra_pred_dc_cILi16EEEvPhlPKhii
	.type	_ZN12_GLOBAL__N_115intra_pred_dc_cILi16EEEvPhlPKhii, @function
_ZN12_GLOBAL__N_115intra_pred_dc_cILi16EEEvPhlPKhii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$13,$6,1
	move	$12,$6
	move	$2,$13
	daddiu	$7,$6,17
	li	$3,16			# 0x10
	.align	3
.L317:
	lbu	$9,0($2)
	daddiu	$2,$2,1
	lbu	$10,31($2)
	addu	$9,$9,$10
	bne	$2,$7,.L317
	addu	$3,$9,$3

	dext	$3,$3,5,8
	move	$10,$4
	li	$11,16			# 0x10
	.align	3
.L319:
	daddiu	$9,$10,16
	move	$2,$10
	.align	3
.L318:
	sb	$3,0($2)
	daddiu	$2,$2,1
	bne	$9,$2,.L318
	nop

	addiu	$11,$11,-1
	bne	$11,$0,.L319
	daddu	$10,$10,$5

	bne	$8,$0,.L327
	lui	$14,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115intra_pred_dc_cILi16EEEvPhlPKhii)))

	jr	$31
	nop

.L327:
	move	$7,$5
	daddu	$14,$14,$25
	move	$6,$4
	daddiu	$14,$14,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115intra_pred_dc_cILi16EEEvPhlPKhii)))
	li	$8,16			# 0x10
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli)($14)
	daddiu	$5,$12,33
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli
1:	jr	$25
	move	$4,$13

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115intra_pred_dc_cILi16EEEvPhlPKhii
	.size	_ZN12_GLOBAL__N_115intra_pred_dc_cILi16EEEvPhlPKhii, .-_ZN12_GLOBAL__N_115intra_pred_dc_cILi16EEEvPhlPKhii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115intra_pred_dc_cILi32EEEvPhlPKhii
	.type	_ZN12_GLOBAL__N_115intra_pred_dc_cILi32EEEvPhlPKhii, @function
_ZN12_GLOBAL__N_115intra_pred_dc_cILi32EEEvPhlPKhii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$12,$6
	move	$6,$4
	daddiu	$4,$12,1
	daddiu	$7,$12,33
	move	$2,$4
	li	$3,32			# 0x20
	.align	3
.L331:
	lbu	$9,0($2)
	daddiu	$2,$2,1
	lbu	$10,63($2)
	addu	$9,$9,$10
	bne	$2,$7,.L331
	addu	$3,$9,$3

	dext	$3,$3,6,8
	move	$10,$6
	li	$11,32			# 0x20
	.align	3
.L333:
	daddiu	$9,$10,32
	move	$2,$10
	.align	3
.L332:
	sb	$3,0($2)
	daddiu	$2,$2,1
	bne	$9,$2,.L332
	nop

	addiu	$11,$11,-1
	bne	$11,$0,.L333
	daddu	$10,$10,$5

	bne	$8,$0,.L341
	lui	$13,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_115intra_pred_dc_cILi32EEEvPhlPKhii)))

	jr	$31
	nop

.L341:
	move	$7,$5
	daddu	$13,$13,$25
	li	$8,32			# 0x20
	daddiu	$13,$13,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_115intra_pred_dc_cILi32EEEvPhlPKhii)))
	ld	$25,%got_page(_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli)($13)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L12dcPredFilterEPKhS1_Phli
1:	jr	$25
	daddiu	$5,$12,65

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115intra_pred_dc_cILi32EEEvPhlPKhii
	.size	_ZN12_GLOBAL__N_115intra_pred_dc_cILi32EEEvPhlPKhii, .-_ZN12_GLOBAL__N_115intra_pred_dc_cILi32EEEvPhlPKhii
	.align	2
	.align	3
	.globl	_ZN4x26522setupIntraPrimitives_cERNS_17EncoderPrimitivesE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26522setupIntraPrimitives_cERNS_17EncoderPrimitivesE
	.type	_ZN4x26522setupIntraPrimitives_cERNS_17EncoderPrimitivesE, @function
_ZN4x26522setupIntraPrimitives_cERNS_17EncoderPrimitivesE:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$10,%hi(%neg(%gp_rel(_ZN4x26522setupIntraPrimitives_cERNS_17EncoderPrimitivesE)))
	daddiu	$2,$4,3432
	daddu	$10,$10,$25
	daddiu	$8,$4,3696
	daddiu	$10,$10,%lo(%neg(%gp_rel(_ZN4x26522setupIntraPrimitives_cERNS_17EncoderPrimitivesE)))
	ld	$9,%got_page(_ZN12_GLOBAL__N_111intraFilterILi16EEEvPKhPh)($10)
	ld	$3,%got_page(_ZN12_GLOBAL__N_111intraFilterILi4EEEvPKhPh)($10)
	ld	$7,%got_page(_ZN12_GLOBAL__N_116intra_pred_ang_cILi4EEEvPhlPKhii)($10)
	daddiu	$9,$9,%got_ofst(_ZN12_GLOBAL__N_111intraFilterILi16EEEvPKhPh)
	ld	$6,%got_page(_ZN12_GLOBAL__N_116intra_pred_ang_cILi8EEEvPhlPKhii)($10)
	sd	$9,4400($4)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_111intraFilterILi4EEEvPKhPh)
	ld	$9,%got_page(_ZN12_GLOBAL__N_111intraFilterILi32EEEvPKhPh)($10)
	daddiu	$7,$7,%got_ofst(_ZN12_GLOBAL__N_116intra_pred_ang_cILi4EEEvPhlPKhii)
	sd	$3,3408($4)
	daddiu	$6,$6,%got_ofst(_ZN12_GLOBAL__N_116intra_pred_ang_cILi8EEEvPhlPKhii)
	ld	$3,%got_page(_ZN12_GLOBAL__N_111intraFilterILi8EEEvPKhPh)($10)
	daddiu	$9,$9,%got_ofst(_ZN12_GLOBAL__N_111intraFilterILi32EEEvPKhPh)
	ld	$5,%got_page(_ZN12_GLOBAL__N_116intra_pred_ang_cILi16EEEvPhlPKhii)($10)
	sd	$9,4896($4)
	ld	$9,%got_page(_ZN12_GLOBAL__N_113planar_pred_cILi2EEEvPhlPKhii)($10)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_111intraFilterILi8EEEvPKhPh)
	sd	$3,3904($4)
	daddiu	$5,$5,%got_ofst(_ZN12_GLOBAL__N_116intra_pred_ang_cILi16EEEvPhlPKhii)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116intra_pred_ang_cILi32EEEvPhlPKhii)($10)
	daddiu	$9,$9,%got_ofst(_ZN12_GLOBAL__N_113planar_pred_cILi2EEEvPhlPKhii)
	sd	$9,3416($4)
	ld	$9,%got_page(_ZN12_GLOBAL__N_113planar_pred_cILi3EEEvPhlPKhii)($10)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116intra_pred_ang_cILi32EEEvPhlPKhii)
	daddiu	$9,$9,%got_ofst(_ZN12_GLOBAL__N_113planar_pred_cILi3EEEvPhlPKhii)
	sd	$9,3912($4)
	ld	$9,%got_page(_ZN12_GLOBAL__N_113planar_pred_cILi4EEEvPhlPKhii)($10)
	daddiu	$9,$9,%got_ofst(_ZN12_GLOBAL__N_113planar_pred_cILi4EEEvPhlPKhii)
	sd	$9,4408($4)
	ld	$9,%got_page(_ZN12_GLOBAL__N_113planar_pred_cILi5EEEvPhlPKhii)($10)
	daddiu	$9,$9,%got_ofst(_ZN12_GLOBAL__N_113planar_pred_cILi5EEEvPhlPKhii)
	sd	$9,4904($4)
	ld	$9,%got_page(_ZN12_GLOBAL__N_115intra_pred_dc_cILi4EEEvPhlPKhii)($10)
	daddiu	$9,$9,%got_ofst(_ZN12_GLOBAL__N_115intra_pred_dc_cILi4EEEvPhlPKhii)
	sd	$9,3424($4)
	ld	$9,%got_page(_ZN12_GLOBAL__N_115intra_pred_dc_cILi8EEEvPhlPKhii)($10)
	daddiu	$9,$9,%got_ofst(_ZN12_GLOBAL__N_115intra_pred_dc_cILi8EEEvPhlPKhii)
	sd	$9,3920($4)
	ld	$9,%got_page(_ZN12_GLOBAL__N_115intra_pred_dc_cILi16EEEvPhlPKhii)($10)
	daddiu	$9,$9,%got_ofst(_ZN12_GLOBAL__N_115intra_pred_dc_cILi16EEEvPhlPKhii)
	sd	$9,4416($4)
	ld	$9,%got_page(_ZN12_GLOBAL__N_115intra_pred_dc_cILi32EEEvPhlPKhii)($10)
	daddiu	$9,$9,%got_ofst(_ZN12_GLOBAL__N_115intra_pred_dc_cILi32EEEvPhlPKhii)
	sd	$9,4912($4)
	.align	3
.L345:
	sd	$7,0($2)
	daddiu	$2,$2,8
	sd	$6,488($2)
	sd	$5,984($2)
	bne	$2,$8,.L345
	sd	$3,1480($2)

	ld	$2,%got_page(_ZN12_GLOBAL__N_115all_angs_pred_cILi2EEEvPhS1_S1_i)($10)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_115all_angs_pred_cILi2EEEvPhS1_S1_i)
	sd	$2,3400($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_115all_angs_pred_cILi3EEEvPhS1_S1_i)($10)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_115all_angs_pred_cILi3EEEvPhS1_S1_i)
	sd	$2,3896($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_115all_angs_pred_cILi4EEEvPhS1_S1_i)($10)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_115all_angs_pred_cILi4EEEvPhS1_S1_i)
	sd	$2,4392($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_115all_angs_pred_cILi5EEEvPhS1_S1_i)($10)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_115all_angs_pred_cILi5EEEvPhS1_S1_i)
	jr	$31
	sd	$2,4888($4)

	.set	macro
	.set	reorder
	.end	_ZN4x26522setupIntraPrimitives_cERNS_17EncoderPrimitivesE
	.size	_ZN4x26522setupIntraPrimitives_cERNS_17EncoderPrimitivesE, .-_ZN4x26522setupIntraPrimitives_cERNS_17EncoderPrimitivesE
	.ident	"GCC: (GNU) 7.3.0"
