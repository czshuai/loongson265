	.file	1 "loopfilter.cpp"
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
	.ent	_ZN12_GLOBAL__N_1L7calSignEPaPKhS2_i
	.type	_ZN12_GLOBAL__N_1L7calSignEPaPKhS2_i, @function
_ZN12_GLOBAL__N_1L7calSignEPaPKhS2_i:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$7,.L7
	addiu	$2,$7,-1

	daddiu	$7,$5,1
	dext	$2,$2,0,32
	daddu	$7,$7,$2
	.align	3
.L3:
	daddiu	$6,$6,1
	lbu	$2,0($5)
	daddiu	$4,$4,1
	lbu	$3,-1($6)
	daddiu	$5,$5,1
	subu	$2,$2,$3
	subu	$3,$0,$2
	sra	$2,$2,31
	srl	$3,$3,31
	or	$2,$3,$2
	bne	$7,$5,.L3
	sb	$2,-1($4)

.L7:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L7calSignEPaPKhS2_i
	.size	_ZN12_GLOBAL__N_1L7calSignEPaPKhS2_i, .-_ZN12_GLOBAL__N_1L7calSignEPaPKhS2_i
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L14processSaoCUE0EPhPaiS1_l
	.type	_ZN12_GLOBAL__N_1L14processSaoCUE0EPhPaiS1_l, @function
_ZN12_GLOBAL__N_1L14processSaoCUE0EPhPaiS1_l:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$15,$6,-1
	daddiu	$sp,$sp,-16
	dext	$15,$15,0,32
	daddiu	$24,$7,2
	daddiu	$15,$15,1
	li	$14,255			# 0xff
.L12:
	blez	$6,.L9
	lb	$12,0($7)

	move	$10,$4
	b	.L11
	daddu	$13,$15,$4

	.align	3
.L17:
	sltu	$3,$0,$3
	addiu	$12,$12,2
	move	$9,$3
	dsubu	$3,$0,$3
	addu	$9,$12,$9
	move	$12,$3
	seb	$3,$9
	daddiu	$10,$10,1
	daddu	$3,$5,$3
	lb	$2,0($3)
	addu	$2,$2,$11
	slt	$3,$2,256
	movz	$2,$14,$3
	slt	$3,$2,0
	movn	$2,$0,$3
	beq	$13,$10,.L9
	sb	$2,-1($10)

.L11:
	lbu	$2,0($10)
	lbu	$3,1($10)
	subu	$3,$2,$3
	bgez	$3,.L17
	move	$11,$2

	addiu	$12,$12,2
	li	$9,255			# 0xff
	li	$3,1			# 0x1
	addu	$9,$12,$9
	move	$12,$3
	seb	$3,$9
	daddu	$3,$5,$3
	daddiu	$10,$10,1
	lb	$2,0($3)
	addu	$2,$2,$11
	slt	$3,$2,256
	movz	$2,$14,$3
	slt	$3,$2,0
	movn	$2,$0,$3
	bne	$13,$10,.L11
	sb	$2,-1($10)

.L9:
	daddiu	$7,$7,1
	bne	$24,$7,.L12
	daddu	$4,$4,$8

	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L14processSaoCUE0EPhPaiS1_l
	.size	_ZN12_GLOBAL__N_1L14processSaoCUE0EPhPaiS1_l, .-_ZN12_GLOBAL__N_1L14processSaoCUE0EPhPaiS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L14processSaoCUE1EPhPaS1_li
	.type	_ZN12_GLOBAL__N_1L14processSaoCUE1EPhPaS1_li, @function
_ZN12_GLOBAL__N_1L14processSaoCUE1EPhPaS1_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$8,.L23
	addiu	$8,$8,-1

	daddiu	$9,$4,1
	dext	$8,$8,0,32
	daddu	$7,$4,$7
	daddu	$9,$9,$8
	li	$10,255			# 0xff
	.align	3
.L20:
	daddiu	$7,$7,1
	lbu	$8,0($4)
	daddiu	$5,$5,1
	lbu	$2,-1($7)
	daddiu	$4,$4,1
	lb	$3,-1($5)
	subu	$8,$8,$2
	subu	$2,$0,$8
	sra	$8,$8,31
	srl	$2,$2,31
	or	$2,$2,$8
	seb	$2,$2
	addu	$3,$3,$2
	subu	$2,$0,$2
	addiu	$3,$3,2
	sb	$2,-1($5)
	daddu	$3,$6,$3
	lbu	$8,-1($4)
	lb	$2,0($3)
	addu	$2,$2,$8
	slt	$3,$2,256
	movz	$2,$10,$3
	slt	$3,$2,0
	movn	$2,$0,$3
	bne	$9,$4,.L20
	sb	$2,-1($4)

.L23:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L14processSaoCUE1EPhPaS1_li
	.size	_ZN12_GLOBAL__N_1L14processSaoCUE1EPhPaS1_li, .-_ZN12_GLOBAL__N_1L14processSaoCUE1EPhPaS1_li
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L20processSaoCUE1_2RowsEPhPaS1_li
	.type	_ZN12_GLOBAL__N_1L20processSaoCUE1_2RowsEPhPaS1_li, @function
_ZN12_GLOBAL__N_1L20processSaoCUE1_2RowsEPhPaS1_li:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$15,$8,-1
	daddiu	$sp,$sp,-16
	dext	$15,$15,0,32
	li	$24,2			# 0x2
	daddiu	$15,$15,1
	li	$13,255			# 0xff
	li	$25,1			# 0x1
.L27:
	blez	$8,.L25
	daddu	$14,$4,$7

	daddu	$14,$4,$7
	move	$10,$5
	daddu	$12,$4,$15
	move	$11,$14
	.align	3
.L26:
	daddiu	$11,$11,1
	lbu	$9,0($4)
	daddiu	$10,$10,1
	lbu	$2,-1($11)
	daddiu	$4,$4,1
	lb	$3,-1($10)
	subu	$9,$9,$2
	subu	$2,$0,$9
	sra	$9,$9,31
	srl	$2,$2,31
	or	$2,$2,$9
	seb	$2,$2
	addu	$3,$3,$2
	subu	$2,$0,$2
	addiu	$3,$3,2
	sb	$2,-1($10)
	daddu	$3,$6,$3
	lbu	$9,-1($4)
	lb	$2,0($3)
	addu	$2,$2,$9
	slt	$3,$2,256
	movz	$2,$13,$3
	slt	$3,$2,0
	movn	$2,$0,$3
	bne	$12,$4,.L26
	sb	$2,-1($4)

.L25:
	bne	$24,$25,.L28
	move	$4,$14

	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L28:
	b	.L27
	li	$24,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L20processSaoCUE1_2RowsEPhPaS1_li
	.size	_ZN12_GLOBAL__N_1L20processSaoCUE1_2RowsEPhPaS1_li, .-_ZN12_GLOBAL__N_1L20processSaoCUE1_2RowsEPhPaS1_li
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L14processSaoCUE2EPhPaS1_S1_il
	.type	_ZN12_GLOBAL__N_1L14processSaoCUE2EPhPaS1_S1_il, @function
_ZN12_GLOBAL__N_1L14processSaoCUE2EPhPaS1_S1_il:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$8,.L38
	addiu	$8,$8,-1

	daddiu	$9,$9,1
	daddiu	$10,$4,1
	dext	$8,$8,0,32
	daddu	$9,$4,$9
	daddiu	$5,$5,1
	daddu	$10,$10,$8
	li	$11,255			# 0xff
	.align	3
.L35:
	daddiu	$9,$9,1
	lbu	$8,0($4)
	daddiu	$6,$6,1
	lbu	$2,-1($9)
	daddiu	$4,$4,1
	daddiu	$5,$5,1
	lb	$3,-1($6)
	subu	$8,$8,$2
	subu	$2,$0,$8
	sra	$8,$8,31
	srl	$2,$2,31
	or	$2,$2,$8
	seb	$2,$2
	addu	$3,$3,$2
	subu	$2,$0,$2
	addiu	$3,$3,2
	sb	$2,-1($5)
	daddu	$3,$7,$3
	lbu	$8,-1($4)
	lb	$2,0($3)
	addu	$2,$2,$8
	slt	$3,$2,256
	movz	$2,$11,$3
	slt	$3,$2,0
	movn	$2,$0,$3
	bne	$10,$4,.L35
	sb	$2,-1($4)

.L38:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L14processSaoCUE2EPhPaS1_S1_il
	.size	_ZN12_GLOBAL__N_1L14processSaoCUE2EPhPaS1_S1_il, .-_ZN12_GLOBAL__N_1L14processSaoCUE2EPhPaS1_S1_il
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L14processSaoCUE3EPhPaS1_lii
	.type	_ZN12_GLOBAL__N_1L14processSaoCUE3EPhPaS1_lii, @function
_ZN12_GLOBAL__N_1L14processSaoCUE3EPhPaS1_lii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$3,$8,1
	slt	$2,$3,$9
	beq	$2,$0,.L44
	addiu	$2,$9,-2

	daddiu	$9,$4,1
	subu	$2,$2,$8
	daddu	$7,$3,$7
	daddu	$9,$9,$3
	dext	$2,$2,0,32
	daddu	$8,$4,$3
	daddu	$5,$5,$3
	daddu	$4,$4,$7
	daddu	$9,$9,$2
	li	$10,255			# 0xff
	.align	3
.L41:
	daddiu	$4,$4,1
	lbu	$7,0($8)
	daddiu	$5,$5,1
	lbu	$2,-1($4)
	daddiu	$8,$8,1
	lbu	$3,-1($5)
	subu	$7,$7,$2
	subu	$2,$0,$7
	sra	$7,$7,31
	srl	$2,$2,31
	addiu	$3,$3,2
	or	$2,$2,$7
	andi	$2,$2,0x00ff
	addu	$3,$3,$2
	subu	$2,$0,$2
	seb	$3,$3
	sb	$2,-2($5)
	daddu	$3,$6,$3
	lbu	$7,-1($8)
	lb	$2,0($3)
	addu	$2,$2,$7
	slt	$3,$2,256
	movz	$2,$10,$3
	slt	$3,$2,0
	movn	$2,$0,$3
	bne	$9,$8,.L41
	sb	$2,-1($8)

.L44:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L14processSaoCUE3EPhPaS1_lii
	.size	_ZN12_GLOBAL__N_1L14processSaoCUE3EPhPaS1_lii, .-_ZN12_GLOBAL__N_1L14processSaoCUE3EPhPaS1_lii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L14processSaoCUB0EPhPKaiil
	.type	_ZN12_GLOBAL__N_1L14processSaoCUB0EPhPKaiil, @function
_ZN12_GLOBAL__N_1L14processSaoCUB0EPhPKaiil:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$7,.L53
	addiu	$14,$6,-1

	move	$13,$0
	dext	$14,$14,0,32
	li	$12,255			# 0xff
	daddiu	$14,$14,1
	.align	3
.L49:
	blez	$6,.L47
	nop

	move	$3,$4
	daddu	$11,$14,$4
	.align	3
.L48:
	lbu	$10,0($3)
	daddiu	$3,$3,1
	dsrl	$9,$10,3
	daddu	$9,$5,$9
	lb	$2,0($9)
	addu	$2,$2,$10
	slt	$9,$2,256
	movz	$2,$12,$9
	slt	$9,$2,0
	movn	$2,$0,$9
	bne	$11,$3,.L48
	sb	$2,-1($3)

.L47:
	addiu	$13,$13,1
	bne	$7,$13,.L49
	daddu	$4,$4,$8

.L53:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L14processSaoCUB0EPhPKaiil
	.size	_ZN12_GLOBAL__N_1L14processSaoCUB0EPhPKaiil, .-_ZN12_GLOBAL__N_1L14processSaoCUB0EPhPKaiil
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L21pelFilterLumaStrong_cEPhllii
	.type	_ZN12_GLOBAL__N_1L21pelFilterLumaStrong_cEPhllii, @function
_ZN12_GLOBAL__N_1L21pelFilterLumaStrong_cEPhllii:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsubu	$3,$0,$6
	sd	$21,120($sp)
	move	$21,$4
	dsll	$2,$6,1
	dsll	$4,$6,2
	sd	$20,112($sp)
	daddu	$20,$21,$3
	dsubu	$9,$6,$4
	daddu	$12,$20,$2
	sd	$18,96($sp)
	daddu	$10,$12,$9
	daddu	$2,$2,$6
	sd	$fp,152($sp)
	daddu	$4,$10,$4
	sd	$23,136($sp)
	subu	$fp,$0,$7
	dlsa	$3,$3,$4,2
	subu	$23,$0,$8
	sd	$22,128($sp)
	dsubu	$18,$3,$6
	dsll	$3,$6,3
	sd	$19,104($sp)
	dlsa	$2,$2,$18,1
	dsubu	$6,$6,$3
	sd	$17,88($sp)
	sd	$2,8($sp)
	daddu	$2,$2,$6
	sd	$2,0($sp)
	li	$2,4			# 0x4
	sd	$16,80($sp)
	sd	$2,16($sp)
.L55:
	ld	$3,16($sp)
	ld	$25,0($sp)
	lbu	$11,0($18)
	lbu	$2,0($20)
	addiu	$3,$3,-1
	lbu	$9,0($10)
	lbu	$6,0($21)
	move	$16,$11
	sd	$3,16($sp)
	move	$14,$2
	lbu	$3,0($25)
	move	$15,$9
	sll	$19,$14,1
	sd	$2,32($sp)
	lsa	$2,$16,$16,1
	move	$13,$6
	lbu	$24,0($12)
	sll	$17,$13,1
	sd	$6,24($sp)
	lsa	$2,$3,$2,1
	addu	$3,$15,$19
	lbu	$6,0($4)
	addu	$2,$2,$15
	addu	$3,$3,$17
	sd	$11,64($sp)
	addu	$2,$2,$14
	addu	$11,$11,$9
	move	$25,$24
	sd	$24,40($sp)
	addu	$2,$2,$13
	move	$24,$6
	sd	$6,56($sp)
	addu	$6,$15,$11
	addu	$11,$14,$11
	addiu	$2,$2,4
	ld	$22,8($sp)
	addu	$11,$11,$13
	sra	$2,$2,3
	sd	$9,48($sp)
	addiu	$11,$11,2
	subu	$2,$2,$16
	sra	$11,$11,2
	addu	$6,$6,$19
	lbu	$22,0($22)
	subu	$11,$11,$15
	slt	$19,$2,$fp
	movn	$2,$fp,$19
	slt	$15,$11,$fp
	ld	$19,8($sp)
	addu	$6,$6,$17
	lsa	$3,$25,$3,1
	movn	$11,$fp,$15
	addu	$6,$6,$25
	slt	$15,$7,$11
	addu	$9,$14,$13
	addu	$3,$3,$24
	daddu	$19,$19,$5
	movn	$11,$7,$15
	addiu	$6,$6,4
	ld	$15,64($sp)
	addu	$9,$9,$25
	sd	$19,8($sp)
	addiu	$3,$3,4
	sra	$6,$6,3
	slt	$19,$7,$2
	addu	$9,$9,$24
	subu	$6,$6,$14
	sra	$3,$3,3
	lsa	$17,$24,$9,1
	movn	$2,$7,$19
	subu	$3,$3,$13
	addu	$2,$2,$15
	slt	$13,$6,$fp
	addiu	$9,$9,2
	sb	$2,0($18)
	lsa	$22,$22,$17,1
	ld	$2,32($sp)
	movn	$6,$fp,$13
	sra	$9,$9,2
	subu	$9,$9,$25
	slt	$13,$7,$6
	addiu	$22,$22,4
	slt	$14,$3,$23
	slt	$16,$9,$23
	sra	$22,$22,3
	movn	$6,$7,$13
	ld	$13,48($sp)
	subu	$22,$22,$24
	movn	$9,$23,$16
	addu	$6,$6,$2
	ld	$16,0($sp)
	movn	$3,$23,$14
	ld	$2,24($sp)
	slt	$25,$8,$9
	ld	$24,40($sp)
	slt	$14,$8,$3
	slt	$17,$22,$23
	addu	$11,$11,$13
	daddu	$16,$16,$5
	movn	$3,$8,$14
	sb	$11,0($10)
	daddu	$18,$18,$5
	movn	$9,$8,$25
	sb	$6,0($20)
	addu	$3,$3,$2
	movn	$22,$23,$17
	ld	$6,56($sp)
	addu	$9,$9,$24
	sb	$3,0($21)
	slt	$17,$8,$22
	daddu	$21,$21,$5
	sd	$16,0($sp)
	movn	$22,$8,$17
	daddu	$20,$20,$5
	sb	$9,0($12)
	addu	$22,$22,$6
	daddu	$12,$12,$5
	ld	$3,16($sp)
	daddu	$10,$10,$5
	sb	$22,0($4)
	bne	$3,$0,.L55
	daddu	$4,$4,$5

	ld	$fp,152($sp)
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
	.end	_ZN12_GLOBAL__N_1L21pelFilterLumaStrong_cEPhllii
	.size	_ZN12_GLOBAL__N_1L21pelFilterLumaStrong_cEPhllii, .-_ZN12_GLOBAL__N_1L21pelFilterLumaStrong_cEPhllii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L17pelFilterChroma_cEPhlliii
	.type	_ZN12_GLOBAL__N_1L17pelFilterChroma_cEPhlliii, @function
_ZN12_GLOBAL__N_1L17pelFilterChroma_cEPhlliii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsubu	$12,$4,$6
	dsll	$10,$6,2
	dlsa	$13,$6,$12,1
	dsubu	$6,$6,$10
	daddiu	$sp,$sp,-16
	subu	$15,$0,$7
	daddu	$10,$13,$6
	li	$14,4			# 0x4
	sd	$16,0($sp)
	li	$24,255			# 0xff
.L59:
	lbu	$6,0($12)
	addiu	$14,$14,-1
	lbu	$2,0($4)
	lbu	$16,0($10)
	daddu	$10,$10,$5
	lbu	$25,0($13)
	move	$11,$6
	daddu	$13,$13,$5
	subu	$3,$2,$6
	lsa	$3,$3,$16,2
	subu	$3,$3,$25
	addiu	$3,$3,4
	sra	$3,$3,3
	slt	$6,$3,$15
	movn	$3,$15,$6
	move	$6,$3
	slt	$3,$7,$3
	movn	$6,$7,$3
	move	$3,$6
	and	$6,$8,$6
	and	$3,$9,$3
	addu	$6,$6,$11
	subu	$2,$2,$3
	slt	$11,$6,256
	movz	$6,$24,$11
	slt	$3,$2,256
	movz	$2,$24,$3
	slt	$3,$6,0
	movn	$6,$0,$3
	slt	$3,$2,0
	movn	$2,$0,$3
	sb	$6,0($12)
	daddu	$12,$12,$5
	sb	$2,0($4)
	bne	$14,$0,.L59
	daddu	$4,$4,$5

	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L17pelFilterChroma_cEPhlliii
	.size	_ZN12_GLOBAL__N_1L17pelFilterChroma_cEPhlliii, .-_ZN12_GLOBAL__N_1L17pelFilterChroma_cEPhlliii
	.align	2
	.align	3
	.globl	_ZN4x26527setupLoopFilterPrimitives_cERNS_17EncoderPrimitivesE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26527setupLoopFilterPrimitives_cERNS_17EncoderPrimitivesE
	.type	_ZN4x26527setupLoopFilterPrimitives_cERNS_17EncoderPrimitivesE, @function
_ZN4x26527setupLoopFilterPrimitives_cERNS_17EncoderPrimitivesE:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$8,%hi(%neg(%gp_rel(_ZN4x26527setupLoopFilterPrimitives_cERNS_17EncoderPrimitivesE)))
	daddu	$8,$8,$25
	daddiu	$8,$8,%lo(%neg(%gp_rel(_ZN4x26527setupLoopFilterPrimitives_cERNS_17EncoderPrimitivesE)))
	ld	$5,%got_page(_ZN12_GLOBAL__N_1L14processSaoCUE3EPhPaS1_lii)($8)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L14processSaoCUE0EPhPaiS1_l)($8)
	ld	$6,%got_page(_ZN12_GLOBAL__N_1L14processSaoCUE2EPhPaS1_S1_il)($8)
	daddiu	$5,$5,%got_ofst(_ZN12_GLOBAL__N_1L14processSaoCUE3EPhPaS1_lii)
	ld	$3,%got_page(_ZN12_GLOBAL__N_1L21pelFilterLumaStrong_cEPhllii)($8)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L14processSaoCUE0EPhPaiS1_l)
	sd	$5,5816($4)
	sd	$2,5776($4)
	daddiu	$6,$6,%got_ofst(_ZN12_GLOBAL__N_1L14processSaoCUE2EPhPaS1_S1_il)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L14processSaoCUE1EPhPaS1_li)($8)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_1L21pelFilterLumaStrong_cEPhllii)
	sd	$5,5824($4)
	ld	$5,%got_page(_ZN12_GLOBAL__N_1L14processSaoCUB0EPhPKaiil)($8)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L14processSaoCUE1EPhPaS1_li)
	ld	$7,%got_page(_ZN12_GLOBAL__N_1L20processSaoCUE1_2RowsEPhPaS1_li)($8)
	sd	$2,5784($4)
	daddiu	$5,$5,%got_ofst(_ZN12_GLOBAL__N_1L14processSaoCUB0EPhPKaiil)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L17pelFilterChroma_cEPhlliii)($8)
	sd	$5,5832($4)
	daddiu	$7,$7,%got_ofst(_ZN12_GLOBAL__N_1L20processSaoCUE1_2RowsEPhPaS1_li)
	ld	$5,%got_page(_ZN12_GLOBAL__N_1L7calSignEPaPKhS2_i)($8)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L17pelFilterChroma_cEPhlliii)
	sd	$7,5792($4)
	sd	$6,5800($4)
	daddiu	$5,$5,%got_ofst(_ZN12_GLOBAL__N_1L7calSignEPaPKhS2_i)
	sd	$6,5808($4)
	sd	$5,5768($4)
	sd	$3,6008($4)
	sd	$3,6016($4)
	sd	$2,6024($4)
	jr	$31
	sd	$2,6032($4)

	.set	macro
	.set	reorder
	.end	_ZN4x26527setupLoopFilterPrimitives_cERNS_17EncoderPrimitivesE
	.size	_ZN4x26527setupLoopFilterPrimitives_cERNS_17EncoderPrimitivesE, .-_ZN4x26527setupLoopFilterPrimitives_cERNS_17EncoderPrimitivesE
	.ident	"GCC: (GNU) 7.3.0"
