	.file	1 "ipfilter.cpp"
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
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi4EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi4EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi4EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi4EEEvPKhlPhli)))
	li	$15,4			# 0x4
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi4EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
.L5:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,4
.L4:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L10
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L10:
	bgez	$3,.L3
	nop

	move	$2,$0
.L3:
	sb	$2,0($14)
	bne	$24,$9,.L4
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L5
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi4EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi4EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi4EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi4EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi4EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi4EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi4EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$21,48($sp)
	li	$25,4			# 0x4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi4EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L12
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$25,11			# 0xb
	dsubu	$4,$4,$2
.L12:
	dsll	$16,$7,1
	move	$7,$0
	.align	3
.L14:
	move	$2,$4
	move	$15,$6
	daddiu	$24,$4,4
.L13:
	lbu	$9,1($2)
	daddiu	$2,$2,1
	daddiu	$15,$15,2
	lh	$14,2($8)
	lh	$10,0($8)
	lbu	$3,-1($2)
	gsmultu	$9,$9,$14
	lh	$21,4($8)
	lbu	$14,1($2)
	lbu	$13,2($2)
	lh	$20,6($8)
	lbu	$12,3($2)
	mtlo	$9
	lh	$19,8($8)
	madd	$3,$10
	lbu	$11,4($2)
	lh	$18,10($8)
	lbu	$10,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$9,6($2)
	madd	$14,$21
	madd	$13,$20
	madd	$12,$19
	madd	$11,$18
	madd	$10,$17
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L13
	sh	$3,-2($15)

	addiu	$7,$7,1
	daddu	$4,$4,$5
	bne	$25,$7,.L14
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi4EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi4EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi4EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi4EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi4EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi4EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi4EEEvPKhlPhli)))
	dsll	$10,$5,2
	daddu	$28,$28,$25
	daddu	$9,$2,$5
	sd	$5,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi4EEEvPKhlPhli)))
	sd	$2,56($sp)
	dsll	$2,$5,3
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,4			# 0x4
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
.L25:
	ld	$2,40($sp)
	move	$23,$6
	daddiu	$fp,$4,4
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
.L24:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$21,$21,1
	lh	$11,2($8)
	daddiu	$22,$22,1
	daddiu	$20,$20,1
	lbu	$2,-1($4)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lh	$5,0($8)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lbu	$3,-1($16)
	lh	$2,14($8)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L22
	move	$3,$2

	move	$3,$0
.L22:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L23
	nop

	li	$2,255			# 0xff
.L23:
	sb	$2,0($23)
	bne	$fp,$4,.L24
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L25
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi4EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi4EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi4EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi4EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi4EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi4EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi4EEEvPKhlPsli)))
	daddu	$9,$2,$5
	daddu	$28,$28,$25
	dsll	$10,$5,2
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi4EEEvPKhlPsli)))
	dsll	$2,$5,3
	sd	$5,48($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,4			# 0x4
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
.L31:
	ld	$2,48($sp)
	move	$23,$6
	daddiu	$fp,$4,4
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
.L30:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$22,$22,1
	lh	$11,2($8)
	daddiu	$20,$20,1
	daddiu	$19,$19,1
	lbu	$2,-1($4)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$5,0($8)
	daddiu	$16,$16,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,1
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lbu	$3,-1($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$4,.L30
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L31
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi4EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi4EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi4EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi4EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi4EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi4EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi4EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$6,0($sp)
	dsll	$9,$5,3
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi4EEEvPKslPhli)))
	sd	$2,64($sp)
	daddu	$2,$2,$5
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	sd	$fp,152($sp)
	li	$fp,524288			# 0x80000
	dsubu	$4,$4,$10
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,4			# 0x4
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
.L39:
	ld	$2,64($sp)
	daddiu	$23,$4,8
	ld	$22,0($sp)
	daddu	$20,$4,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$4,$2
	ld	$2,72($sp)
	daddu	$19,$4,$2
	ld	$2,40($sp)
	daddu	$18,$4,$2
	ld	$2,32($sp)
	daddu	$17,$4,$2
	ld	$2,24($sp)
	daddu	$16,$4,$2
	ld	$2,16($sp)
	daddu	$25,$4,$2
.L38:
	lh	$3,0($20)
	daddiu	$4,$4,2
	daddiu	$20,$20,2
	lh	$10,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$10
	lh	$15,4($8)
	lh	$10,-2($21)
	lh	$9,-2($19)
	lh	$14,6($8)
	lh	$7,-2($18)
	mtlo	$3
	lh	$13,8($8)
	madd	$2,$5
	lh	$6,-2($17)
	lh	$12,10($8)
	lh	$5,-2($16)
	lh	$11,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L36
	move	$3,$2

	move	$3,$0
.L36:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L37
	nop

	li	$2,255			# 0xff
.L37:
	sb	$2,0($22)
	bne	$23,$4,.L38
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$4,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L39
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi4EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi4EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi4EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi4EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi4EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi4EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi4EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	dsll	$9,$5,3
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi4EEEvPKslPsli)))
	daddu	$2,$2,$5
	sd	$3,48($sp)
	sd	$9,40($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	ld	$9,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	dsll	$7,$7,1
	dsll	$3,$3,1
	sd	$2,24($sp)
	dsubu	$4,$4,$10
	dsll	$2,$5,1
	sd	$fp,152($sp)
	dlsa	$8,$8,$9,4
	li	$25,4			# 0x4
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,64($sp)
	sd	$7,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
.L45:
	ld	$2,56($sp)
	move	$23,$6
	daddiu	$fp,$4,8
	daddu	$21,$4,$2
	ld	$2,48($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,64($sp)
	daddu	$20,$4,$2
	ld	$2,40($sp)
	daddu	$19,$4,$2
	ld	$2,32($sp)
	daddu	$18,$4,$2
	ld	$2,24($sp)
	daddu	$17,$4,$2
	ld	$2,16($sp)
	daddu	$16,$4,$2
.L44:
	lh	$3,0($21)
	daddiu	$4,$4,2
	daddiu	$22,$22,2
	lh	$11,2($8)
	daddiu	$20,$20,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,2
	lh	$11,-2($22)
	lh	$10,-2($20)
	lh	$15,6($8)
	lh	$9,-2($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lh	$7,-2($18)
	lh	$13,10($8)
	lh	$5,-2($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lh	$3,-2($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$4,.L44
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L45
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi4EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi4EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi4EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi4EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi4EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi4EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,4			# 0x4
.L51:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,8
.L50:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L50
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L51
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi4EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi4EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi4EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi8EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi8EEEvPKhlPhli)))
	li	$15,8			# 0x8
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi8EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L59:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,8
	.align	3
.L58:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L63
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L63:
	bgez	$3,.L57
	nop

	move	$2,$0
.L57:
	sb	$2,0($14)
	bne	$24,$9,.L58
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L59
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi8EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi8EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi8EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi8EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$21,48($sp)
	li	$25,8			# 0x8
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi8EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L65
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$25,15			# 0xf
	dsubu	$4,$4,$2
.L65:
	dsll	$16,$7,1
	move	$7,$0
	.align	3
.L67:
	move	$2,$4
	move	$15,$6
	daddiu	$24,$4,8
	.align	3
.L66:
	lbu	$9,1($2)
	daddiu	$2,$2,1
	daddiu	$15,$15,2
	lh	$14,2($8)
	lh	$10,0($8)
	lbu	$3,-1($2)
	gsmultu	$9,$9,$14
	lh	$21,4($8)
	lbu	$14,1($2)
	lbu	$13,2($2)
	lh	$20,6($8)
	lbu	$12,3($2)
	mtlo	$9
	lh	$19,8($8)
	madd	$3,$10
	lbu	$11,4($2)
	lh	$18,10($8)
	lbu	$10,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$9,6($2)
	madd	$14,$21
	madd	$13,$20
	madd	$12,$19
	madd	$11,$18
	madd	$10,$17
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L66
	sh	$3,-2($15)

	addiu	$7,$7,1
	daddu	$4,$4,$5
	bne	$25,$7,.L67
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi8EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi8EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi8EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi8EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi8EEEvPKhlPhli)))
	dsll	$10,$5,2
	daddu	$28,$28,$25
	daddu	$9,$2,$5
	sd	$5,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi8EEEvPKhlPhli)))
	sd	$2,56($sp)
	dsll	$2,$5,3
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,8			# 0x8
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L78:
	ld	$2,40($sp)
	move	$16,$6
	daddiu	$fp,$4,8
	daddu	$22,$4,$2
	ld	$2,56($sp)
	sd	$22,0($sp)
	daddu	$23,$4,$2
	ld	$2,8($sp)
	daddu	$21,$4,$2
	ld	$2,16($sp)
	daddu	$20,$4,$2
	ld	$2,24($sp)
	daddu	$19,$4,$2
	ld	$2,64($sp)
	daddu	$18,$4,$2
	ld	$2,32($sp)
	daddu	$17,$4,$2
	.align	3
.L77:
	lbu	$3,0($22)
	daddiu	$4,$4,1
	daddiu	$22,$22,1
	lh	$11,2($8)
	daddiu	$23,$23,1
	daddiu	$21,$21,1
	lbu	$2,-1($4)
	daddiu	$20,$20,1
	daddiu	$19,$19,1
	lh	$5,0($8)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	lbu	$11,-1($23)
	lbu	$10,-1($21)
	lh	$15,6($8)
	lbu	$9,-1($20)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($19)
	lh	$13,10($8)
	lbu	$5,-1($18)
	lh	$12,12($8)
	lbu	$3,-1($17)
	lh	$2,14($8)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L75
	move	$3,$2

	move	$3,$0
.L75:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L76
	nop

	li	$2,255			# 0xff
.L76:
	sb	$2,0($16)
	bne	$fp,$4,.L77
	daddiu	$16,$16,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L78
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi8EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi8EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi8EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi8EEEvPKhlPsli)))
	daddu	$9,$2,$5
	daddu	$28,$28,$25
	dsll	$10,$5,2
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi8EEEvPKhlPsli)))
	dsll	$2,$5,3
	sd	$5,48($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,8			# 0x8
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L84:
	ld	$2,48($sp)
	move	$23,$6
	daddiu	$fp,$4,8
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
	.align	3
.L83:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$22,$22,1
	lh	$11,2($8)
	daddiu	$20,$20,1
	daddiu	$19,$19,1
	lbu	$2,-1($4)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$5,0($8)
	daddiu	$16,$16,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,1
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lbu	$3,-1($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$4,.L83
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L84
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi8EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi8EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi8EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi8EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi8EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi8EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi8EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$6,0($sp)
	dsll	$9,$5,3
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi8EEEvPKslPhli)))
	sd	$2,64($sp)
	daddu	$2,$2,$5
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	sd	$fp,152($sp)
	li	$fp,524288			# 0x80000
	dsubu	$4,$4,$10
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,8			# 0x8
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L92:
	ld	$2,64($sp)
	daddiu	$23,$4,16
	ld	$25,0($sp)
	daddu	$21,$4,$2
	ld	$2,48($sp)
	sd	$21,8($sp)
	daddu	$22,$4,$2
	ld	$2,72($sp)
	daddu	$20,$4,$2
	ld	$2,40($sp)
	daddu	$19,$4,$2
	ld	$2,32($sp)
	daddu	$18,$4,$2
	ld	$2,24($sp)
	daddu	$17,$4,$2
	ld	$2,16($sp)
	daddu	$16,$4,$2
	.align	3
.L91:
	lh	$3,0($21)
	daddiu	$4,$4,2
	daddiu	$21,$21,2
	lh	$10,2($8)
	daddiu	$22,$22,2
	daddiu	$20,$20,2
	lh	$2,-2($4)
	daddiu	$19,$19,2
	daddiu	$18,$18,2
	lh	$5,0($8)
	daddiu	$17,$17,2
	daddiu	$16,$16,2
	gsmultu	$3,$3,$10
	lh	$15,4($8)
	lh	$10,-2($22)
	lh	$9,-2($20)
	lh	$14,6($8)
	lh	$7,-2($19)
	mtlo	$3
	lh	$13,8($8)
	madd	$2,$5
	lh	$6,-2($18)
	lh	$12,10($8)
	lh	$5,-2($17)
	lh	$11,12($8)
	lh	$3,-2($16)
	lh	$2,14($8)
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L89
	move	$3,$2

	move	$3,$0
.L89:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L90
	nop

	li	$2,255			# 0xff
.L90:
	sb	$2,0($25)
	bne	$23,$4,.L91
	daddiu	$25,$25,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$4,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L92
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi8EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi8EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi8EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi8EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi8EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi8EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi8EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	dsll	$9,$5,3
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi8EEEvPKslPsli)))
	daddu	$2,$2,$5
	sd	$3,48($sp)
	sd	$9,40($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	ld	$9,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	dsll	$7,$7,1
	dsll	$3,$3,1
	sd	$2,24($sp)
	dsubu	$4,$4,$10
	dsll	$2,$5,1
	sd	$fp,152($sp)
	dlsa	$8,$8,$9,4
	li	$25,8			# 0x8
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,64($sp)
	sd	$7,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L98:
	ld	$2,56($sp)
	move	$23,$6
	daddiu	$fp,$4,16
	daddu	$21,$4,$2
	ld	$2,48($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,64($sp)
	daddu	$20,$4,$2
	ld	$2,40($sp)
	daddu	$19,$4,$2
	ld	$2,32($sp)
	daddu	$18,$4,$2
	ld	$2,24($sp)
	daddu	$17,$4,$2
	ld	$2,16($sp)
	daddu	$16,$4,$2
	.align	3
.L97:
	lh	$3,0($21)
	daddiu	$4,$4,2
	daddiu	$22,$22,2
	lh	$11,2($8)
	daddiu	$20,$20,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,2
	lh	$11,-2($22)
	lh	$10,-2($20)
	lh	$15,6($8)
	lh	$9,-2($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lh	$7,-2($18)
	lh	$13,10($8)
	lh	$5,-2($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lh	$3,-2($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$4,.L97
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L98
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi8EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi8EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi8EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi8EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi8EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi8EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,8			# 0x8
	.align	3
.L104:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,16
	.align	3
.L103:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L103
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L104
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi8EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi8EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi8EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi4EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi4EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi4EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi4EEEvPKhlPhli)))
	li	$14,4			# 0x4
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi4EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
.L112:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,4
.L111:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L116
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L116:
	bgez	$3,.L110
	nop

	move	$2,$0
.L110:
	sb	$2,0($13)
	bne	$15,$9,.L111
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L112
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi4EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi4EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi4EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi4EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi4EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi4EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi4EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$16,4			# 0x4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi4EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L118
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$16,7			# 0x7
.L118:
	dsll	$7,$7,1
	move	$25,$0
	.align	3
.L120:
	move	$2,$4
	move	$13,$6
	daddiu	$24,$4,4
.L119:
	lbu	$12,1($2)
	daddiu	$2,$2,1
	daddiu	$13,$13,2
	lh	$10,2($8)
	lh	$15,0($8)
	lbu	$11,-1($2)
	gsmultu	$12,$12,$10
	lh	$14,4($8)
	lbu	$10,1($2)
	lh	$3,6($8)
	lbu	$9,2($2)
	mtlo	$12
	madd	$11,$15
	madd	$10,$14
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L119
	sh	$3,-2($13)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$16,$25,.L120
	daddu	$6,$6,$7

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi4EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi4EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi4EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi4EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi4EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi4EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi4EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi4EEEvPKhlPhli)))
	li	$16,4			# 0x4
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
.L131:
	daddu	$14,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$14
	daddu	$10,$4,$25
	daddiu	$15,$4,4
.L130:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L128
	move	$3,$2

	move	$3,$0
.L128:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L129
	nop

	li	$2,255			# 0xff
.L129:
	sb	$2,0($13)
	bne	$15,$4,.L130
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$14
	bne	$16,$0,.L131
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi4EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi4EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi4EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi4EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi4EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi4EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi4EEEvPKhlPsli)))
	dsll	$7,$7,1
	daddu	$28,$28,$25
	sd	$17,8($sp)
	dsll	$17,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi4EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,4			# 0x4
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	daddu	$18,$17,$5
	sd	$20,32($sp)
	dlsa	$8,$8,$2,3
	sd	$16,0($sp)
.L137:
	daddu	$25,$4,$5
	move	$9,$6
	daddu	$15,$4,$17
	move	$14,$25
	daddu	$13,$4,$18
	daddiu	$16,$6,8
.L136:
	lbu	$12,0($14)
	daddiu	$4,$4,1
	daddiu	$15,$15,1
	lh	$10,2($8)
	daddiu	$13,$13,1
	daddiu	$9,$9,2
	lbu	$11,-1($4)
	daddiu	$14,$14,1
	lh	$20,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,-1($15)
	lh	$2,6($8)
	lbu	$3,-1($13)
	mtlo	$12
	madd	$11,$20
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$16,$9,.L136
	sh	$2,-2($9)

	addiu	$19,$19,-1
	move	$4,$25
	bne	$19,$0,.L137
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi4EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi4EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi4EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi4EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi4EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi4EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$24,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi4EEEvPKslPhli)))
	addiu	$24,$24,2048
	daddu	$28,$28,$25
	sd	$16,8($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi4EEEvPKslPhli)))
	sd	$17,16($sp)
	daddu	$17,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$5,$5,2
	dsll	$17,$17,1
	li	$25,4			# 0x4
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
.L145:
	daddu	$14,$4,$16
	move	$13,$6
	daddu	$12,$4,$5
	move	$11,$14
	daddu	$10,$4,$17
	daddiu	$15,$4,8
.L144:
	lh	$19,0($11)
	daddiu	$4,$4,2
	daddiu	$11,$11,2
	lh	$9,2($8)
	daddiu	$12,$12,2
	daddiu	$10,$10,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$9
	lh	$20,4($8)
	lh	$9,-2($12)
	lh	$3,-2($10)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$9,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$24
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L142
	move	$3,$2

	move	$3,$0
.L142:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L143
	nop

	li	$2,255			# 0xff
.L143:
	sb	$2,0($13)
	bne	$15,$4,.L144
	daddiu	$13,$13,1

	addiu	$25,$25,-1
	move	$4,$14
	bne	$25,$0,.L145
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi4EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi4EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi4EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi4EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi4EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi4EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$7,$7,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi4EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$17,8($sp)
	dsll	$17,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi4EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$17,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$17
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$16,0($sp)
	li	$16,4			# 0x4
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
.L151:
	daddu	$25,$4,$17
	move	$15,$6
	daddu	$14,$4,$18
	move	$13,$25
	daddu	$12,$4,$19
	daddiu	$5,$4,8
.L150:
	lh	$11,0($13)
	daddiu	$4,$4,2
	daddiu	$14,$14,2
	lh	$9,2($8)
	daddiu	$12,$12,2
	daddiu	$15,$15,2
	lh	$10,-2($4)
	daddiu	$13,$13,2
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lh	$9,-2($14)
	lh	$2,6($8)
	lh	$3,-2($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$5,$4,.L150
	sh	$2,-2($15)

	addiu	$16,$16,-1
	move	$4,$25
	bne	$16,$0,.L151
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi4EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi4EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi4EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi8EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi8EEEvPKhlPhli)))
	li	$15,8			# 0x8
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi8EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L159:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,4
.L158:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L163
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L163:
	bgez	$3,.L157
	nop

	move	$2,$0
.L157:
	sb	$2,0($14)
	bne	$24,$9,.L158
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L159
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi8EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi8EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi8EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi8EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$21,48($sp)
	li	$25,8			# 0x8
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi8EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L165
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$25,15			# 0xf
	dsubu	$4,$4,$2
.L165:
	dsll	$16,$7,1
	move	$7,$0
	.align	3
.L167:
	move	$2,$4
	move	$15,$6
	daddiu	$24,$4,4
.L166:
	lbu	$9,1($2)
	daddiu	$2,$2,1
	daddiu	$15,$15,2
	lh	$14,2($8)
	lh	$10,0($8)
	lbu	$3,-1($2)
	gsmultu	$9,$9,$14
	lh	$21,4($8)
	lbu	$14,1($2)
	lbu	$13,2($2)
	lh	$20,6($8)
	lbu	$12,3($2)
	mtlo	$9
	lh	$19,8($8)
	madd	$3,$10
	lbu	$11,4($2)
	lh	$18,10($8)
	lbu	$10,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$9,6($2)
	madd	$14,$21
	madd	$13,$20
	madd	$12,$19
	madd	$11,$18
	madd	$10,$17
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L166
	sh	$3,-2($15)

	addiu	$7,$7,1
	daddu	$4,$4,$5
	bne	$25,$7,.L167
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi8EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi8EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi8EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi8EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi8EEEvPKhlPhli)))
	dsll	$10,$5,2
	daddu	$28,$28,$25
	daddu	$9,$2,$5
	sd	$5,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi8EEEvPKhlPhli)))
	sd	$2,56($sp)
	dsll	$2,$5,3
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,8			# 0x8
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L178:
	ld	$2,40($sp)
	move	$23,$6
	daddiu	$fp,$4,4
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
.L177:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$21,$21,1
	lh	$11,2($8)
	daddiu	$22,$22,1
	daddiu	$20,$20,1
	lbu	$2,-1($4)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lh	$5,0($8)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lbu	$3,-1($16)
	lh	$2,14($8)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L175
	move	$3,$2

	move	$3,$0
.L175:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L176
	nop

	li	$2,255			# 0xff
.L176:
	sb	$2,0($23)
	bne	$fp,$4,.L177
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L178
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi8EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi8EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi8EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi8EEEvPKhlPsli)))
	daddu	$9,$2,$5
	daddu	$28,$28,$25
	dsll	$10,$5,2
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi8EEEvPKhlPsli)))
	dsll	$2,$5,3
	sd	$5,48($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,8			# 0x8
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L184:
	ld	$2,48($sp)
	move	$23,$6
	daddiu	$fp,$4,4
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
.L183:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$22,$22,1
	lh	$11,2($8)
	daddiu	$20,$20,1
	daddiu	$19,$19,1
	lbu	$2,-1($4)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$5,0($8)
	daddiu	$16,$16,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,1
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lbu	$3,-1($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$4,.L183
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L184
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi8EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi8EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi8EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi8EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi8EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi8EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi8EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$6,0($sp)
	dsll	$9,$5,3
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi8EEEvPKslPhli)))
	sd	$2,64($sp)
	daddu	$2,$2,$5
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	sd	$fp,152($sp)
	li	$fp,524288			# 0x80000
	dsubu	$4,$4,$10
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,8			# 0x8
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L192:
	ld	$2,64($sp)
	daddiu	$23,$4,8
	ld	$22,0($sp)
	daddu	$20,$4,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$4,$2
	ld	$2,72($sp)
	daddu	$19,$4,$2
	ld	$2,40($sp)
	daddu	$18,$4,$2
	ld	$2,32($sp)
	daddu	$17,$4,$2
	ld	$2,24($sp)
	daddu	$16,$4,$2
	ld	$2,16($sp)
	daddu	$25,$4,$2
.L191:
	lh	$3,0($20)
	daddiu	$4,$4,2
	daddiu	$20,$20,2
	lh	$10,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$10
	lh	$15,4($8)
	lh	$10,-2($21)
	lh	$9,-2($19)
	lh	$14,6($8)
	lh	$7,-2($18)
	mtlo	$3
	lh	$13,8($8)
	madd	$2,$5
	lh	$6,-2($17)
	lh	$12,10($8)
	lh	$5,-2($16)
	lh	$11,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L189
	move	$3,$2

	move	$3,$0
.L189:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L190
	nop

	li	$2,255			# 0xff
.L190:
	sb	$2,0($22)
	bne	$23,$4,.L191
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$4,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L192
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi8EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi8EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi8EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi8EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi8EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi8EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi8EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	dsll	$9,$5,3
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi8EEEvPKslPsli)))
	daddu	$2,$2,$5
	sd	$3,48($sp)
	sd	$9,40($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	ld	$9,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	dsll	$7,$7,1
	dsll	$3,$3,1
	sd	$2,24($sp)
	dsubu	$4,$4,$10
	dsll	$2,$5,1
	sd	$fp,152($sp)
	dlsa	$8,$8,$9,4
	li	$25,8			# 0x8
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,64($sp)
	sd	$7,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L198:
	ld	$2,56($sp)
	move	$23,$6
	daddiu	$fp,$4,8
	daddu	$21,$4,$2
	ld	$2,48($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,64($sp)
	daddu	$20,$4,$2
	ld	$2,40($sp)
	daddu	$19,$4,$2
	ld	$2,32($sp)
	daddu	$18,$4,$2
	ld	$2,24($sp)
	daddu	$17,$4,$2
	ld	$2,16($sp)
	daddu	$16,$4,$2
.L197:
	lh	$3,0($21)
	daddiu	$4,$4,2
	daddiu	$22,$22,2
	lh	$11,2($8)
	daddiu	$20,$20,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,2
	lh	$11,-2($22)
	lh	$10,-2($20)
	lh	$15,6($8)
	lh	$9,-2($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lh	$7,-2($18)
	lh	$13,10($8)
	lh	$5,-2($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lh	$3,-2($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$4,.L197
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L198
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi8EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi8EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi8EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi8EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi8EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi8EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,8			# 0x8
	.align	3
.L204:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,8
.L203:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L203
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L204
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi8EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi8EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi8EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi4EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi4EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi4EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi4EEEvPKhlPhli)))
	li	$14,4			# 0x4
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi4EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
.L212:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,2
.L211:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L216
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L216:
	bgez	$3,.L210
	nop

	move	$2,$0
.L210:
	sb	$2,0($13)
	bne	$15,$9,.L211
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L212
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi4EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi4EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi4EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi4EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi4EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi4EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi4EEEvPKhlPslii)))
	li	$14,4			# 0x4
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi4EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L218
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$14,7			# 0x7
.L218:
	dsll	$7,$7,1
	move	$15,$0
	.align	3
.L219:
	lbu	$13,1($4)
	addiu	$15,$15,1
	lh	$11,2($8)
	lbu	$12,0($4)
	lh	$24,0($8)
	gsmultu	$13,$13,$11
	lh	$2,4($8)
	lbu	$11,2($4)
	lbu	$10,3($4)
	lh	$9,6($8)
	mtlo	$13
	madd	$12,$24
	madd	$11,$2
	madd	$10,$9
	mflo	$9
	addiu	$9,$9,-8192
	sh	$9,0($6)
	lbu	$11,2($4)
	lh	$2,2($8)
	lbu	$10,1($4)
	lbu	$9,3($4)
	gsmultu	$11,$11,$2
	lh	$12,4($8)
	lbu	$3,4($4)
	daddu	$4,$4,$5
	lh	$2,6($8)
	mtlo	$11
	madd	$10,$24
	madd	$9,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	sh	$2,2($6)
	bne	$14,$15,.L219
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi4EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi4EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi4EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi4EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi4EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi4EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi4EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	li	$15,4			# 0x4
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi4EEEvPKhlPhli)))
	daddu	$25,$24,$5
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,3
	sd	$16,0($sp)
.L229:
	daddu	$14,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$14
	daddu	$10,$4,$25
	daddiu	$16,$4,2
.L228:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L226
	move	$3,$2

	move	$3,$0
.L226:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L227
	nop

	li	$2,255			# 0xff
.L227:
	sb	$2,0($13)
	bne	$16,$4,.L228
	daddiu	$13,$13,1

	addiu	$15,$15,-1
	move	$4,$14
	bne	$15,$0,.L229
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi4EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi4EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi4EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi4EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi4EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi4EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi4EEEvPKhlPsli)))
	dsll	$7,$7,1
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi4EEEvPKhlPsli)))
	sd	$18,16($sp)
	li	$18,4			# 0x4
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$17,8($sp)
	daddu	$17,$16,$5
	sd	$20,32($sp)
	dlsa	$8,$8,$2,3
	sd	$19,24($sp)
.L235:
	daddu	$24,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$24
	daddu	$12,$4,$17
	daddiu	$19,$4,2
.L234:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$25,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$25
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$19,$4,.L234
	sh	$2,-2($15)

	addiu	$18,$18,-1
	move	$4,$24
	bne	$18,$0,.L235
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi4EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi4EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi4EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi4EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi4EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi4EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$15,4			# 0x4
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi4EEEvPKslPhli)))
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi4EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsll	$16,$5,2
	li	$5,524288			# 0x80000
	dsubu	$4,$4,$25
	dsll	$17,$17,1
	sd	$21,48($sp)
	addiu	$5,$5,2048
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
.L243:
	daddu	$14,$4,$25
	move	$13,$6
	daddu	$12,$4,$16
	move	$11,$14
	daddu	$10,$4,$17
	daddiu	$24,$4,4
.L242:
	lh	$19,0($11)
	daddiu	$4,$4,2
	daddiu	$11,$11,2
	lh	$9,2($8)
	daddiu	$12,$12,2
	daddiu	$10,$10,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$9
	lh	$20,4($8)
	lh	$9,-2($12)
	lh	$3,-2($10)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$9,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$5
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L240
	move	$3,$2

	move	$3,$0
.L240:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L241
	nop

	li	$2,255			# 0xff
.L241:
	sb	$2,0($13)
	bne	$24,$4,.L242
	daddiu	$13,$13,1

	addiu	$15,$15,-1
	move	$4,$14
	bne	$15,$0,.L243
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi4EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi4EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi4EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi4EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi4EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi4EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$7,$7,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi4EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi4EEEvPKslPsli)))
	sd	$18,16($sp)
	daddu	$18,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$18,$18,1
	sd	$17,8($sp)
	dsll	$17,$5,2
	li	$5,4			# 0x4
	sd	$20,32($sp)
	dlsa	$8,$8,$2,3
	sd	$19,24($sp)
.L249:
	daddu	$24,$4,$16
	move	$15,$6
	daddu	$14,$4,$17
	move	$13,$24
	daddu	$12,$4,$18
	daddiu	$19,$4,4
.L248:
	lh	$11,0($13)
	daddiu	$4,$4,2
	daddiu	$14,$14,2
	lh	$9,2($8)
	daddiu	$12,$12,2
	daddiu	$15,$15,2
	lh	$10,-2($4)
	daddiu	$13,$13,2
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$25,4($8)
	lh	$9,-2($14)
	lh	$2,6($8)
	lh	$3,-2($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$25
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$19,$4,.L248
	sh	$2,-2($15)

	addiu	$5,$5,-1
	move	$4,$24
	bne	$5,$0,.L249
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi4EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi4EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi4EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi4EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi4EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi4EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$3,4			# 0x4
.L254:
	lbu	$2,0($4)
	addiu	$3,$3,-1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	sh	$2,0($6)
	lbu	$2,1($4)
	daddu	$4,$4,$5
	sll	$2,$2,6
	addiu	$2,$2,-8192
	sh	$2,2($6)
	bne	$3,$0,.L254
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi4EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi4EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi4EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi4EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi4EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi4EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi4EEEvPKhlPhli)))
	li	$15,4			# 0x4
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi4EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
.L261:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,8
	.align	3
.L260:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L265
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L265:
	bgez	$3,.L259
	nop

	move	$2,$0
.L259:
	sb	$2,0($14)
	bne	$24,$9,.L260
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L261
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi4EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi4EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi4EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi4EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi4EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi4EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi4EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$21,48($sp)
	li	$25,4			# 0x4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi4EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L267
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$25,11			# 0xb
	dsubu	$4,$4,$2
.L267:
	dsll	$16,$7,1
	move	$7,$0
	.align	3
.L269:
	move	$2,$4
	move	$15,$6
	daddiu	$24,$4,8
	.align	3
.L268:
	lbu	$9,1($2)
	daddiu	$2,$2,1
	daddiu	$15,$15,2
	lh	$14,2($8)
	lh	$10,0($8)
	lbu	$3,-1($2)
	gsmultu	$9,$9,$14
	lh	$21,4($8)
	lbu	$14,1($2)
	lbu	$13,2($2)
	lh	$20,6($8)
	lbu	$12,3($2)
	mtlo	$9
	lh	$19,8($8)
	madd	$3,$10
	lbu	$11,4($2)
	lh	$18,10($8)
	lbu	$10,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$9,6($2)
	madd	$14,$21
	madd	$13,$20
	madd	$12,$19
	madd	$11,$18
	madd	$10,$17
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L268
	sh	$3,-2($15)

	addiu	$7,$7,1
	daddu	$4,$4,$5
	bne	$25,$7,.L269
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi4EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi4EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi4EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi4EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi4EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi4EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi4EEEvPKhlPhli)))
	dsll	$10,$5,2
	daddu	$28,$28,$25
	daddu	$9,$2,$5
	sd	$5,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi4EEEvPKhlPhli)))
	sd	$2,56($sp)
	dsll	$2,$5,3
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,4			# 0x4
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
.L280:
	ld	$2,40($sp)
	move	$16,$6
	daddiu	$fp,$4,8
	daddu	$22,$4,$2
	ld	$2,56($sp)
	sd	$22,0($sp)
	daddu	$23,$4,$2
	ld	$2,8($sp)
	daddu	$21,$4,$2
	ld	$2,16($sp)
	daddu	$20,$4,$2
	ld	$2,24($sp)
	daddu	$19,$4,$2
	ld	$2,64($sp)
	daddu	$18,$4,$2
	ld	$2,32($sp)
	daddu	$17,$4,$2
	.align	3
.L279:
	lbu	$3,0($22)
	daddiu	$4,$4,1
	daddiu	$22,$22,1
	lh	$11,2($8)
	daddiu	$23,$23,1
	daddiu	$21,$21,1
	lbu	$2,-1($4)
	daddiu	$20,$20,1
	daddiu	$19,$19,1
	lh	$5,0($8)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	lbu	$11,-1($23)
	lbu	$10,-1($21)
	lh	$15,6($8)
	lbu	$9,-1($20)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($19)
	lh	$13,10($8)
	lbu	$5,-1($18)
	lh	$12,12($8)
	lbu	$3,-1($17)
	lh	$2,14($8)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L277
	move	$3,$2

	move	$3,$0
.L277:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L278
	nop

	li	$2,255			# 0xff
.L278:
	sb	$2,0($16)
	bne	$fp,$4,.L279
	daddiu	$16,$16,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L280
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi4EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi4EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi4EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi4EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi4EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi4EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi4EEEvPKhlPsli)))
	daddu	$9,$2,$5
	daddu	$28,$28,$25
	dsll	$10,$5,2
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi4EEEvPKhlPsli)))
	dsll	$2,$5,3
	sd	$5,48($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,4			# 0x4
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
.L286:
	ld	$2,48($sp)
	move	$23,$6
	daddiu	$fp,$4,8
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
	.align	3
.L285:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$22,$22,1
	lh	$11,2($8)
	daddiu	$20,$20,1
	daddiu	$19,$19,1
	lbu	$2,-1($4)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$5,0($8)
	daddiu	$16,$16,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,1
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lbu	$3,-1($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$4,.L285
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L286
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi4EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi4EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi4EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi4EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi4EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi4EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi4EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$6,0($sp)
	dsll	$9,$5,3
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi4EEEvPKslPhli)))
	sd	$2,64($sp)
	daddu	$2,$2,$5
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	sd	$fp,152($sp)
	li	$fp,524288			# 0x80000
	dsubu	$4,$4,$10
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,4			# 0x4
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
.L294:
	ld	$2,64($sp)
	daddiu	$23,$4,16
	ld	$25,0($sp)
	daddu	$21,$4,$2
	ld	$2,48($sp)
	sd	$21,8($sp)
	daddu	$22,$4,$2
	ld	$2,72($sp)
	daddu	$20,$4,$2
	ld	$2,40($sp)
	daddu	$19,$4,$2
	ld	$2,32($sp)
	daddu	$18,$4,$2
	ld	$2,24($sp)
	daddu	$17,$4,$2
	ld	$2,16($sp)
	daddu	$16,$4,$2
	.align	3
.L293:
	lh	$3,0($21)
	daddiu	$4,$4,2
	daddiu	$21,$21,2
	lh	$10,2($8)
	daddiu	$22,$22,2
	daddiu	$20,$20,2
	lh	$2,-2($4)
	daddiu	$19,$19,2
	daddiu	$18,$18,2
	lh	$5,0($8)
	daddiu	$17,$17,2
	daddiu	$16,$16,2
	gsmultu	$3,$3,$10
	lh	$15,4($8)
	lh	$10,-2($22)
	lh	$9,-2($20)
	lh	$14,6($8)
	lh	$7,-2($19)
	mtlo	$3
	lh	$13,8($8)
	madd	$2,$5
	lh	$6,-2($18)
	lh	$12,10($8)
	lh	$5,-2($17)
	lh	$11,12($8)
	lh	$3,-2($16)
	lh	$2,14($8)
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L291
	move	$3,$2

	move	$3,$0
.L291:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L292
	nop

	li	$2,255			# 0xff
.L292:
	sb	$2,0($25)
	bne	$23,$4,.L293
	daddiu	$25,$25,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$4,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L294
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi4EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi4EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi4EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi4EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi4EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi4EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi4EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	dsll	$9,$5,3
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi4EEEvPKslPsli)))
	daddu	$2,$2,$5
	sd	$3,48($sp)
	sd	$9,40($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	ld	$9,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	dsll	$7,$7,1
	dsll	$3,$3,1
	sd	$2,24($sp)
	dsubu	$4,$4,$10
	dsll	$2,$5,1
	sd	$fp,152($sp)
	dlsa	$8,$8,$9,4
	li	$25,4			# 0x4
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,64($sp)
	sd	$7,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
.L300:
	ld	$2,56($sp)
	move	$23,$6
	daddiu	$fp,$4,16
	daddu	$21,$4,$2
	ld	$2,48($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,64($sp)
	daddu	$20,$4,$2
	ld	$2,40($sp)
	daddu	$19,$4,$2
	ld	$2,32($sp)
	daddu	$18,$4,$2
	ld	$2,24($sp)
	daddu	$17,$4,$2
	ld	$2,16($sp)
	daddu	$16,$4,$2
	.align	3
.L299:
	lh	$3,0($21)
	daddiu	$4,$4,2
	daddiu	$22,$22,2
	lh	$11,2($8)
	daddiu	$20,$20,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,2
	lh	$11,-2($22)
	lh	$10,-2($20)
	lh	$15,6($8)
	lh	$9,-2($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lh	$7,-2($18)
	lh	$13,10($8)
	lh	$5,-2($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lh	$3,-2($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$4,.L299
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L300
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi4EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi4EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi4EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi4EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi4EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi4EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,4			# 0x4
.L306:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,16
	.align	3
.L305:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L305
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L306
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi4EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi4EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi4EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi2EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi2EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi2EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi2EEEvPKhlPhli)))
	li	$14,2			# 0x2
	daddu	$28,$28,$25
	li	$15,1			# 0x1
	sd	$16,0($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi2EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
.L314:
	move	$9,$4
	move	$13,$6
	daddiu	$24,$4,4
.L313:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$16,0($8)
	gsmultu	$12,$12,$10
	lh	$25,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$16
	madd	$10,$25
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L318
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L318:
	bgez	$3,.L312
	nop

	move	$2,$0
.L312:
	sb	$2,0($13)
	bne	$24,$9,.L313
	daddiu	$13,$13,1

	daddu	$4,$4,$5
	bne	$14,$15,.L315
	daddu	$6,$6,$7

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L315:
	b	.L314
	li	$14,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi2EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi2EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi2EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi2EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi2EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi2EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi2EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$16,2			# 0x2
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi2EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L320
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$16,5			# 0x5
.L320:
	dsll	$7,$7,1
	move	$25,$0
.L322:
	move	$2,$4
	move	$13,$6
	daddiu	$24,$4,4
.L321:
	lbu	$12,1($2)
	daddiu	$2,$2,1
	daddiu	$13,$13,2
	lh	$10,2($8)
	lh	$15,0($8)
	lbu	$11,-1($2)
	gsmultu	$12,$12,$10
	lh	$14,4($8)
	lbu	$10,1($2)
	lh	$3,6($8)
	lbu	$9,2($2)
	mtlo	$12
	madd	$11,$15
	madd	$10,$14
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L321
	sh	$3,-2($13)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$16,$25,.L322
	daddu	$6,$6,$7

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi2EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi2EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi2EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi2EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi2EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi2EEEvPKhlPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	dsubu	$4,$4,$5
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi2EEEvPKhlPhli)))
	li	$24,2			# 0x2
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi2EEEvPKhlPhli)))
	sd	$16,8($sp)
	li	$17,1			# 0x1
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	daddu	$16,$25,$5
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
.L333:
	daddu	$14,$4,$5
	move	$13,$6
	daddu	$12,$4,$25
	move	$11,$14
	daddu	$10,$4,$16
	daddiu	$15,$4,4
.L332:
	lbu	$19,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$18,-1($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$9
	lh	$20,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$9,$20
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L330
	move	$3,$2

	move	$3,$0
.L330:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L331
	nop

	li	$2,255			# 0xff
.L331:
	sb	$2,0($13)
	bne	$15,$4,.L332
	daddiu	$13,$13,1

	move	$4,$14
	bne	$24,$17,.L334
	daddu	$6,$6,$7

	ld	$28,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L334:
	b	.L333
	li	$24,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi2EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi2EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi2EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi2EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi2EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi2EEEvPKhlPsli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	dsubu	$4,$4,$5
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi2EEEvPKhlPsli)))
	dsll	$7,$7,1
	daddu	$28,$28,$25
	sd	$17,16($sp)
	dsll	$17,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi2EEEvPKhlPsli)))
	sd	$19,32($sp)
	li	$19,1			# 0x1
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,24($sp)
	daddu	$18,$17,$5
	sd	$16,8($sp)
	li	$16,2			# 0x2
	dlsa	$8,$8,$2,3
	sd	$21,48($sp)
	sd	$20,40($sp)
.L339:
	daddu	$24,$4,$5
	move	$9,$6
	daddu	$15,$4,$17
	move	$14,$24
	daddu	$13,$4,$18
	daddiu	$25,$6,8
.L338:
	lbu	$12,0($14)
	daddiu	$4,$4,1
	daddiu	$15,$15,1
	lh	$10,2($8)
	daddiu	$13,$13,1
	daddiu	$9,$9,2
	lbu	$11,-1($4)
	daddiu	$14,$14,1
	lh	$21,0($8)
	gsmultu	$12,$12,$10
	lh	$20,4($8)
	lbu	$10,-1($15)
	lh	$2,6($8)
	lbu	$3,-1($13)
	mtlo	$12
	madd	$11,$21
	madd	$10,$20
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$9,.L338
	sh	$2,-2($9)

	move	$4,$24
	bne	$16,$19,.L340
	daddu	$6,$6,$7

	ld	$28,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L340:
	b	.L339
	li	$16,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi2EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi2EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi2EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi2EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi2EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi2EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x107f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	dsll	$24,$5,1
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi2EEEvPKslPhli)))
	li	$13,524288			# 0x80000
	daddu	$28,$28,$25
	daddu	$25,$24,$5
	sd	$17,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi2EEEvPKslPhli)))
	sd	$16,0($sp)
	dsubu	$4,$4,$24
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsll	$5,$5,2
	dsll	$25,$25,1
	li	$16,2			# 0x2
	addiu	$13,$13,2048
	sd	$22,48($sp)
	li	$17,1			# 0x1
	sd	$21,40($sp)
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
.L347:
	daddu	$14,$4,$24
	move	$12,$6
	daddu	$11,$4,$5
	move	$10,$14
	daddu	$9,$4,$25
	daddiu	$15,$4,8
.L346:
	lh	$20,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$18,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$19,-2($4)
	lh	$22,0($8)
	gsmultu	$20,$20,$18
	lh	$21,4($8)
	lh	$18,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$20
	madd	$19,$22
	madd	$18,$21
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$13
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L344
	move	$3,$2

	move	$3,$0
.L344:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L345
	nop

	li	$2,255			# 0xff
.L345:
	sb	$2,0($12)
	bne	$15,$4,.L346
	daddiu	$12,$12,1

	move	$4,$14
	bne	$16,$17,.L348
	daddu	$6,$6,$7

	ld	$28,56($sp)
	ld	$22,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L348:
	b	.L347
	li	$16,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi2EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi2EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi2EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi2EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi2EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi2EEEvPKslPsli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	dsll	$7,$7,1
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi2EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$17,16($sp)
	dsll	$17,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi2EEEvPKslPsli)))
	sd	$16,8($sp)
	daddu	$16,$17,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$17
	dsll	$5,$5,2
	sd	$19,32($sp)
	dsll	$16,$16,1
	li	$19,1			# 0x1
	sd	$18,24($sp)
	li	$18,2			# 0x2
	dlsa	$8,$8,$2,3
	sd	$21,48($sp)
	sd	$20,40($sp)
.L353:
	daddu	$24,$4,$17
	move	$15,$6
	daddu	$14,$4,$5
	move	$13,$24
	daddu	$12,$4,$16
	daddiu	$25,$4,8
.L352:
	lh	$11,0($13)
	daddiu	$4,$4,2
	daddiu	$14,$14,2
	lh	$9,2($8)
	daddiu	$12,$12,2
	daddiu	$15,$15,2
	lh	$10,-2($4)
	daddiu	$13,$13,2
	lh	$21,0($8)
	gsmultu	$11,$11,$9
	lh	$20,4($8)
	lh	$9,-2($14)
	lh	$2,6($8)
	lh	$3,-2($12)
	mtlo	$11
	madd	$10,$21
	madd	$9,$20
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$25,$4,.L352
	sh	$2,-2($15)

	move	$4,$24
	bne	$18,$19,.L354
	daddu	$6,$6,$7

	ld	$28,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L354:
	b	.L353
	li	$18,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi2EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi2EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi2EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi2EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi2EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi2EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,8
.L358:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$3,$9,.L358
	sh	$2,-2($3)

	daddu	$6,$6,$7
	daddu	$5,$4,$5
	daddiu	$3,$6,8
.L359:
	lbu	$2,0($5)
	daddiu	$6,$6,2
	daddiu	$5,$5,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$6,$3,.L359
	sh	$2,-2($6)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi2EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi2EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi2EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi16EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi16EEEvPKhlPhli)))
	li	$15,16			# 0x10
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi16EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L367:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,16
	.align	3
.L366:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L371
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L371:
	bgez	$3,.L365
	nop

	move	$2,$0
.L365:
	sb	$2,0($14)
	bne	$24,$9,.L366
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L367
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi16EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi16EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi16EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi16EEEvPKhlPslii)))
	li	$24,16			# 0x10
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi16EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L373
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,23			# 0x17
	dsubu	$4,$4,$2
.L373:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L375:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,16
	.align	3
.L374:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L374
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L375
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi16EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi16EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi16EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi16EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi16EEEvPKhlPhli)))
	dsll	$10,$5,2
	daddu	$28,$28,$25
	daddu	$9,$2,$5
	sd	$5,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi16EEEvPKhlPhli)))
	sd	$2,56($sp)
	dsll	$2,$5,3
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,16			# 0x10
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L386:
	ld	$2,40($sp)
	move	$23,$6
	daddiu	$fp,$4,16
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
	.align	3
.L385:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$21,$21,1
	lh	$11,2($8)
	daddiu	$22,$22,1
	daddiu	$20,$20,1
	lbu	$2,-1($4)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lh	$5,0($8)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lbu	$3,-1($16)
	lh	$2,14($8)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L383
	move	$3,$2

	move	$3,$0
.L383:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L384
	nop

	li	$2,255			# 0xff
.L384:
	sb	$2,0($23)
	bne	$fp,$4,.L385
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L386
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi16EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi16EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi16EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi16EEEvPKhlPsli)))
	daddu	$9,$2,$5
	daddu	$28,$28,$25
	dsll	$10,$5,2
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi16EEEvPKhlPsli)))
	dsll	$2,$5,3
	sd	$5,48($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,16			# 0x10
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L392:
	ld	$2,48($sp)
	move	$23,$6
	daddiu	$fp,$4,16
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
	.align	3
.L391:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$22,$22,1
	lh	$11,2($8)
	daddiu	$20,$20,1
	daddiu	$19,$19,1
	lbu	$2,-1($4)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$5,0($8)
	daddiu	$16,$16,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,1
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lbu	$3,-1($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$4,.L391
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L392
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi16EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi16EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi16EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi16EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi16EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi16EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi16EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$6,0($sp)
	dsll	$9,$5,3
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi16EEEvPKslPhli)))
	sd	$2,64($sp)
	daddu	$2,$2,$5
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	sd	$fp,152($sp)
	li	$fp,524288			# 0x80000
	dsubu	$4,$4,$10
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,16			# 0x10
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L400:
	ld	$2,64($sp)
	daddiu	$23,$4,32
	ld	$22,0($sp)
	daddu	$20,$4,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$4,$2
	ld	$2,72($sp)
	daddu	$19,$4,$2
	ld	$2,40($sp)
	daddu	$18,$4,$2
	ld	$2,32($sp)
	daddu	$17,$4,$2
	ld	$2,24($sp)
	daddu	$16,$4,$2
	ld	$2,16($sp)
	daddu	$25,$4,$2
	.align	3
.L399:
	lh	$3,0($20)
	daddiu	$4,$4,2
	daddiu	$20,$20,2
	lh	$10,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$10
	lh	$15,4($8)
	lh	$10,-2($21)
	lh	$9,-2($19)
	lh	$14,6($8)
	lh	$7,-2($18)
	mtlo	$3
	lh	$13,8($8)
	madd	$2,$5
	lh	$6,-2($17)
	lh	$12,10($8)
	lh	$5,-2($16)
	lh	$11,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L397
	move	$3,$2

	move	$3,$0
.L397:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L398
	nop

	li	$2,255			# 0xff
.L398:
	sb	$2,0($22)
	bne	$23,$4,.L399
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$4,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L400
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi16EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi16EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi16EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi16EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi16EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi16EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi16EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	dsll	$9,$5,3
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi16EEEvPKslPsli)))
	daddu	$2,$2,$5
	sd	$3,48($sp)
	sd	$9,40($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	ld	$9,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	dsll	$7,$7,1
	dsll	$3,$3,1
	sd	$2,24($sp)
	dsubu	$4,$4,$10
	dsll	$2,$5,1
	sd	$fp,152($sp)
	dlsa	$8,$8,$9,4
	li	$25,16			# 0x10
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,64($sp)
	sd	$7,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L406:
	ld	$2,56($sp)
	move	$23,$6
	daddiu	$fp,$4,32
	daddu	$21,$4,$2
	ld	$2,48($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,64($sp)
	daddu	$20,$4,$2
	ld	$2,40($sp)
	daddu	$19,$4,$2
	ld	$2,32($sp)
	daddu	$18,$4,$2
	ld	$2,24($sp)
	daddu	$17,$4,$2
	ld	$2,16($sp)
	daddu	$16,$4,$2
	.align	3
.L405:
	lh	$3,0($21)
	daddiu	$4,$4,2
	daddiu	$22,$22,2
	lh	$11,2($8)
	daddiu	$20,$20,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,2
	lh	$11,-2($22)
	lh	$10,-2($20)
	lh	$15,6($8)
	lh	$9,-2($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lh	$7,-2($18)
	lh	$13,10($8)
	lh	$5,-2($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lh	$3,-2($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$4,.L405
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L406
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi16EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi16EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi16EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi16EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi16EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi16EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,16			# 0x10
	.align	3
.L412:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,32
	.align	3
.L411:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L411
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L412
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi16EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi16EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi16EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi8EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi8EEEvPKhlPhli)))
	li	$14,8			# 0x8
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi8EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L420:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,8
	.align	3
.L419:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L424
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L424:
	bgez	$3,.L418
	nop

	move	$2,$0
.L418:
	sb	$2,0($13)
	bne	$15,$9,.L419
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L420
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi8EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi8EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi8EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi8EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$16,8			# 0x8
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi8EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L426
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$16,11			# 0xb
.L426:
	dsll	$7,$7,1
	move	$25,$0
	.align	3
.L428:
	move	$2,$4
	move	$13,$6
	daddiu	$24,$4,8
	.align	3
.L427:
	lbu	$12,1($2)
	daddiu	$2,$2,1
	daddiu	$13,$13,2
	lh	$10,2($8)
	lh	$15,0($8)
	lbu	$11,-1($2)
	gsmultu	$12,$12,$10
	lh	$14,4($8)
	lbu	$10,1($2)
	lh	$3,6($8)
	lbu	$9,2($2)
	mtlo	$12
	madd	$11,$15
	madd	$10,$14
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L427
	sh	$3,-2($13)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$16,$25,.L428
	daddu	$6,$6,$7

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi8EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi8EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi8EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi8EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi8EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi8EEEvPKhlPhli)))
	li	$16,8			# 0x8
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L439:
	daddu	$15,$4,$5
	move	$10,$6
	daddu	$13,$4,$24
	move	$12,$15
	daddu	$11,$4,$25
	daddiu	$14,$4,8
	.align	3
.L438:
	lbu	$18,0($12)
	daddiu	$4,$4,1
	daddiu	$12,$12,1
	lh	$9,2($8)
	daddiu	$13,$13,1
	daddiu	$11,$11,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($13)
	lbu	$3,-1($11)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L436
	move	$3,$2

	move	$3,$0
.L436:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L437
	nop

	li	$2,255			# 0xff
.L437:
	sb	$2,0($10)
	bne	$14,$4,.L438
	daddiu	$10,$10,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L439
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi8EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi8EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi8EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi8EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi8EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,8			# 0x8
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L445:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,8
	.align	3
.L444:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L444
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L445
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi8EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi8EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi8EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi8EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi8EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi8EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi8EEEvPKslPhli)))
	li	$24,8			# 0x8
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi8EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L453:
	daddu	$15,$4,$25
	move	$9,$6
	daddu	$12,$4,$16
	move	$11,$15
	daddu	$10,$4,$17
	daddiu	$13,$4,16
	.align	3
.L452:
	lh	$19,0($11)
	daddiu	$4,$4,2
	daddiu	$11,$11,2
	lh	$5,2($8)
	daddiu	$12,$12,2
	daddiu	$10,$10,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($12)
	lh	$3,-2($10)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L450
	move	$3,$2

	move	$3,$0
.L450:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L451
	nop

	li	$2,255			# 0xff
.L451:
	sb	$2,0($9)
	bne	$13,$4,.L452
	daddiu	$9,$9,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L453
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi8EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi8EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi8EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi8EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi8EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi8EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi8EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi8EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,8			# 0x8
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L459:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,16
	.align	3
.L458:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L458
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L459
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi8EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi8EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi8EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi8EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi8EEEvPKhlPhli)))
	li	$15,8			# 0x8
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi8EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L467:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,16
	.align	3
.L466:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L471
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L471:
	bgez	$3,.L465
	nop

	move	$2,$0
.L465:
	sb	$2,0($14)
	bne	$24,$9,.L466
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L467
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi8EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi8EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi8EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi8EEEvPKhlPslii)))
	li	$24,8			# 0x8
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi8EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L473
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,15			# 0xf
	dsubu	$4,$4,$2
.L473:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L475:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,16
	.align	3
.L474:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L474
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L475
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi8EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi8EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi8EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi8EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi8EEEvPKhlPhli)))
	dsll	$10,$5,2
	daddu	$28,$28,$25
	daddu	$9,$2,$5
	sd	$5,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi8EEEvPKhlPhli)))
	sd	$2,56($sp)
	dsll	$2,$5,3
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,8			# 0x8
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L486:
	ld	$2,40($sp)
	move	$23,$6
	daddiu	$fp,$4,16
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
	.align	3
.L485:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$21,$21,1
	lh	$11,2($8)
	daddiu	$22,$22,1
	daddiu	$20,$20,1
	lbu	$2,-1($4)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lh	$5,0($8)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lbu	$3,-1($16)
	lh	$2,14($8)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L483
	move	$3,$2

	move	$3,$0
.L483:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L484
	nop

	li	$2,255			# 0xff
.L484:
	sb	$2,0($23)
	bne	$fp,$4,.L485
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L486
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi8EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi8EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi8EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi8EEEvPKhlPsli)))
	daddu	$9,$2,$5
	daddu	$28,$28,$25
	dsll	$10,$5,2
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi8EEEvPKhlPsli)))
	dsll	$2,$5,3
	sd	$5,48($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,8			# 0x8
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L492:
	ld	$2,48($sp)
	move	$23,$6
	daddiu	$fp,$4,16
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
	.align	3
.L491:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$22,$22,1
	lh	$11,2($8)
	daddiu	$20,$20,1
	daddiu	$19,$19,1
	lbu	$2,-1($4)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$5,0($8)
	daddiu	$16,$16,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,1
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lbu	$3,-1($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$4,.L491
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L492
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi8EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi8EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi8EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi8EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi8EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi8EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi8EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$6,0($sp)
	dsll	$9,$5,3
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi8EEEvPKslPhli)))
	sd	$2,64($sp)
	daddu	$2,$2,$5
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	sd	$fp,152($sp)
	li	$fp,524288			# 0x80000
	dsubu	$4,$4,$10
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,8			# 0x8
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L500:
	ld	$2,64($sp)
	daddiu	$23,$4,32
	ld	$22,0($sp)
	daddu	$20,$4,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$4,$2
	ld	$2,72($sp)
	daddu	$19,$4,$2
	ld	$2,40($sp)
	daddu	$18,$4,$2
	ld	$2,32($sp)
	daddu	$17,$4,$2
	ld	$2,24($sp)
	daddu	$16,$4,$2
	ld	$2,16($sp)
	daddu	$25,$4,$2
	.align	3
.L499:
	lh	$3,0($20)
	daddiu	$4,$4,2
	daddiu	$20,$20,2
	lh	$10,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$10
	lh	$15,4($8)
	lh	$10,-2($21)
	lh	$9,-2($19)
	lh	$14,6($8)
	lh	$7,-2($18)
	mtlo	$3
	lh	$13,8($8)
	madd	$2,$5
	lh	$6,-2($17)
	lh	$12,10($8)
	lh	$5,-2($16)
	lh	$11,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L497
	move	$3,$2

	move	$3,$0
.L497:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L498
	nop

	li	$2,255			# 0xff
.L498:
	sb	$2,0($22)
	bne	$23,$4,.L499
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$4,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L500
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi8EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi8EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi8EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi8EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi8EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi8EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi8EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	dsll	$9,$5,3
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi8EEEvPKslPsli)))
	daddu	$2,$2,$5
	sd	$3,48($sp)
	sd	$9,40($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	ld	$9,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	dsll	$7,$7,1
	dsll	$3,$3,1
	sd	$2,24($sp)
	dsubu	$4,$4,$10
	dsll	$2,$5,1
	sd	$fp,152($sp)
	dlsa	$8,$8,$9,4
	li	$25,8			# 0x8
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,64($sp)
	sd	$7,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L506:
	ld	$2,56($sp)
	move	$23,$6
	daddiu	$fp,$4,32
	daddu	$21,$4,$2
	ld	$2,48($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,64($sp)
	daddu	$20,$4,$2
	ld	$2,40($sp)
	daddu	$19,$4,$2
	ld	$2,32($sp)
	daddu	$18,$4,$2
	ld	$2,24($sp)
	daddu	$17,$4,$2
	ld	$2,16($sp)
	daddu	$16,$4,$2
	.align	3
.L505:
	lh	$3,0($21)
	daddiu	$4,$4,2
	daddiu	$22,$22,2
	lh	$11,2($8)
	daddiu	$20,$20,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,2
	lh	$11,-2($22)
	lh	$10,-2($20)
	lh	$15,6($8)
	lh	$9,-2($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lh	$7,-2($18)
	lh	$13,10($8)
	lh	$5,-2($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lh	$3,-2($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$4,.L505
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L506
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi8EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi8EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi8EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi8EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi8EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi8EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,8			# 0x8
	.align	3
.L512:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,32
	.align	3
.L511:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L511
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L512
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi8EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi8EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi8EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi4EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi4EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi4EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi4EEEvPKhlPhli)))
	li	$14,4			# 0x4
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi4EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
.L520:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,8
	.align	3
.L519:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L524
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L524:
	bgez	$3,.L518
	nop

	move	$2,$0
.L518:
	sb	$2,0($13)
	bne	$15,$9,.L519
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L520
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi4EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi4EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi4EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi4EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi4EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi4EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi4EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$16,4			# 0x4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi4EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L526
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$16,7			# 0x7
.L526:
	dsll	$7,$7,1
	move	$25,$0
	.align	3
.L528:
	move	$2,$4
	move	$13,$6
	daddiu	$24,$4,8
	.align	3
.L527:
	lbu	$12,1($2)
	daddiu	$2,$2,1
	daddiu	$13,$13,2
	lh	$10,2($8)
	lh	$15,0($8)
	lbu	$11,-1($2)
	gsmultu	$12,$12,$10
	lh	$14,4($8)
	lbu	$10,1($2)
	lh	$3,6($8)
	lbu	$9,2($2)
	mtlo	$12
	madd	$11,$15
	madd	$10,$14
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L527
	sh	$3,-2($13)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$16,$25,.L528
	daddu	$6,$6,$7

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi4EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi4EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi4EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi4EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi4EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi4EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi4EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi4EEEvPKhlPhli)))
	li	$16,4			# 0x4
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
.L539:
	daddu	$15,$4,$5
	move	$10,$6
	daddu	$13,$4,$24
	move	$12,$15
	daddu	$11,$4,$25
	daddiu	$14,$4,8
	.align	3
.L538:
	lbu	$18,0($12)
	daddiu	$4,$4,1
	daddiu	$12,$12,1
	lh	$9,2($8)
	daddiu	$13,$13,1
	daddiu	$11,$11,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($13)
	lbu	$3,-1($11)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L536
	move	$3,$2

	move	$3,$0
.L536:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L537
	nop

	li	$2,255			# 0xff
.L537:
	sb	$2,0($10)
	bne	$14,$4,.L538
	daddiu	$10,$10,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L539
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi4EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi4EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi4EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi4EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi4EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi4EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi4EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi4EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,4			# 0x4
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
.L545:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,8
	.align	3
.L544:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L544
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L545
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi4EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi4EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi4EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi4EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi4EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi4EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi4EEEvPKslPhli)))
	li	$24,4			# 0x4
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi4EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
.L553:
	daddu	$15,$4,$25
	move	$9,$6
	daddu	$12,$4,$16
	move	$11,$15
	daddu	$10,$4,$17
	daddiu	$13,$4,16
	.align	3
.L552:
	lh	$19,0($11)
	daddiu	$4,$4,2
	daddiu	$11,$11,2
	lh	$5,2($8)
	daddiu	$12,$12,2
	daddiu	$10,$10,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($12)
	lh	$3,-2($10)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L550
	move	$3,$2

	move	$3,$0
.L550:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L551
	nop

	li	$2,255			# 0xff
.L551:
	sb	$2,0($9)
	bne	$13,$4,.L552
	daddiu	$9,$9,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L553
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi4EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi4EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi4EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi4EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi4EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi4EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi4EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi4EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,4			# 0x4
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
.L559:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,16
	.align	3
.L558:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L558
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L559
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi4EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi4EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi4EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi16EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi16EEEvPKhlPhli)))
	li	$15,16			# 0x10
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi16EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L567:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,8
	.align	3
.L566:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L571
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L571:
	bgez	$3,.L565
	nop

	move	$2,$0
.L565:
	sb	$2,0($14)
	bne	$24,$9,.L566
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L567
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi16EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi16EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi16EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi16EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$21,48($sp)
	li	$25,16			# 0x10
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi16EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L573
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$25,23			# 0x17
	dsubu	$4,$4,$2
.L573:
	dsll	$16,$7,1
	move	$7,$0
	.align	3
.L575:
	move	$2,$4
	move	$15,$6
	daddiu	$24,$4,8
	.align	3
.L574:
	lbu	$9,1($2)
	daddiu	$2,$2,1
	daddiu	$15,$15,2
	lh	$14,2($8)
	lh	$10,0($8)
	lbu	$3,-1($2)
	gsmultu	$9,$9,$14
	lh	$21,4($8)
	lbu	$14,1($2)
	lbu	$13,2($2)
	lh	$20,6($8)
	lbu	$12,3($2)
	mtlo	$9
	lh	$19,8($8)
	madd	$3,$10
	lbu	$11,4($2)
	lh	$18,10($8)
	lbu	$10,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$9,6($2)
	madd	$14,$21
	madd	$13,$20
	madd	$12,$19
	madd	$11,$18
	madd	$10,$17
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L574
	sh	$3,-2($15)

	addiu	$7,$7,1
	daddu	$4,$4,$5
	bne	$25,$7,.L575
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi16EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi16EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi16EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi16EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi16EEEvPKhlPhli)))
	dsll	$10,$5,2
	daddu	$28,$28,$25
	daddu	$9,$2,$5
	sd	$5,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi16EEEvPKhlPhli)))
	sd	$2,56($sp)
	dsll	$2,$5,3
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,16			# 0x10
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L586:
	ld	$2,40($sp)
	move	$16,$6
	daddiu	$fp,$4,8
	daddu	$22,$4,$2
	ld	$2,56($sp)
	sd	$22,0($sp)
	daddu	$23,$4,$2
	ld	$2,8($sp)
	daddu	$21,$4,$2
	ld	$2,16($sp)
	daddu	$20,$4,$2
	ld	$2,24($sp)
	daddu	$19,$4,$2
	ld	$2,64($sp)
	daddu	$18,$4,$2
	ld	$2,32($sp)
	daddu	$17,$4,$2
	.align	3
.L585:
	lbu	$3,0($22)
	daddiu	$4,$4,1
	daddiu	$22,$22,1
	lh	$11,2($8)
	daddiu	$23,$23,1
	daddiu	$21,$21,1
	lbu	$2,-1($4)
	daddiu	$20,$20,1
	daddiu	$19,$19,1
	lh	$5,0($8)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	lbu	$11,-1($23)
	lbu	$10,-1($21)
	lh	$15,6($8)
	lbu	$9,-1($20)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($19)
	lh	$13,10($8)
	lbu	$5,-1($18)
	lh	$12,12($8)
	lbu	$3,-1($17)
	lh	$2,14($8)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L583
	move	$3,$2

	move	$3,$0
.L583:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L584
	nop

	li	$2,255			# 0xff
.L584:
	sb	$2,0($16)
	bne	$fp,$4,.L585
	daddiu	$16,$16,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L586
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi16EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi16EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi16EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi16EEEvPKhlPsli)))
	daddu	$9,$2,$5
	daddu	$28,$28,$25
	dsll	$10,$5,2
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi16EEEvPKhlPsli)))
	dsll	$2,$5,3
	sd	$5,48($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,16			# 0x10
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L592:
	ld	$2,48($sp)
	move	$23,$6
	daddiu	$fp,$4,8
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
	.align	3
.L591:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$22,$22,1
	lh	$11,2($8)
	daddiu	$20,$20,1
	daddiu	$19,$19,1
	lbu	$2,-1($4)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$5,0($8)
	daddiu	$16,$16,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,1
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lbu	$3,-1($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$4,.L591
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L592
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi16EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi16EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi16EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi16EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi16EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi16EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi16EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$6,0($sp)
	dsll	$9,$5,3
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi16EEEvPKslPhli)))
	sd	$2,64($sp)
	daddu	$2,$2,$5
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	sd	$fp,152($sp)
	li	$fp,524288			# 0x80000
	dsubu	$4,$4,$10
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,16			# 0x10
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L600:
	ld	$2,64($sp)
	daddiu	$23,$4,16
	ld	$25,0($sp)
	daddu	$21,$4,$2
	ld	$2,48($sp)
	sd	$21,8($sp)
	daddu	$22,$4,$2
	ld	$2,72($sp)
	daddu	$20,$4,$2
	ld	$2,40($sp)
	daddu	$19,$4,$2
	ld	$2,32($sp)
	daddu	$18,$4,$2
	ld	$2,24($sp)
	daddu	$17,$4,$2
	ld	$2,16($sp)
	daddu	$16,$4,$2
	.align	3
.L599:
	lh	$3,0($21)
	daddiu	$4,$4,2
	daddiu	$21,$21,2
	lh	$10,2($8)
	daddiu	$22,$22,2
	daddiu	$20,$20,2
	lh	$2,-2($4)
	daddiu	$19,$19,2
	daddiu	$18,$18,2
	lh	$5,0($8)
	daddiu	$17,$17,2
	daddiu	$16,$16,2
	gsmultu	$3,$3,$10
	lh	$15,4($8)
	lh	$10,-2($22)
	lh	$9,-2($20)
	lh	$14,6($8)
	lh	$7,-2($19)
	mtlo	$3
	lh	$13,8($8)
	madd	$2,$5
	lh	$6,-2($18)
	lh	$12,10($8)
	lh	$5,-2($17)
	lh	$11,12($8)
	lh	$3,-2($16)
	lh	$2,14($8)
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L597
	move	$3,$2

	move	$3,$0
.L597:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L598
	nop

	li	$2,255			# 0xff
.L598:
	sb	$2,0($25)
	bne	$23,$4,.L599
	daddiu	$25,$25,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$4,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L600
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi16EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi16EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi16EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi16EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi16EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi16EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi16EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	dsll	$9,$5,3
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi16EEEvPKslPsli)))
	daddu	$2,$2,$5
	sd	$3,48($sp)
	sd	$9,40($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	ld	$9,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	dsll	$7,$7,1
	dsll	$3,$3,1
	sd	$2,24($sp)
	dsubu	$4,$4,$10
	dsll	$2,$5,1
	sd	$fp,152($sp)
	dlsa	$8,$8,$9,4
	li	$25,16			# 0x10
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,64($sp)
	sd	$7,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L606:
	ld	$2,56($sp)
	move	$23,$6
	daddiu	$fp,$4,16
	daddu	$21,$4,$2
	ld	$2,48($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,64($sp)
	daddu	$20,$4,$2
	ld	$2,40($sp)
	daddu	$19,$4,$2
	ld	$2,32($sp)
	daddu	$18,$4,$2
	ld	$2,24($sp)
	daddu	$17,$4,$2
	ld	$2,16($sp)
	daddu	$16,$4,$2
	.align	3
.L605:
	lh	$3,0($21)
	daddiu	$4,$4,2
	daddiu	$22,$22,2
	lh	$11,2($8)
	daddiu	$20,$20,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,2
	lh	$11,-2($22)
	lh	$10,-2($20)
	lh	$15,6($8)
	lh	$9,-2($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lh	$7,-2($18)
	lh	$13,10($8)
	lh	$5,-2($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lh	$3,-2($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$4,.L605
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L606
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi16EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi16EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi16EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi16EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi16EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi16EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,16			# 0x10
	.align	3
.L612:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,16
	.align	3
.L611:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L611
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L612
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi16EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi16EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi16EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi8EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi8EEEvPKhlPhli)))
	li	$14,8			# 0x8
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi8EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L620:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,4
.L619:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L624
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L624:
	bgez	$3,.L618
	nop

	move	$2,$0
.L618:
	sb	$2,0($13)
	bne	$15,$9,.L619
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L620
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi8EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi8EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi8EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi8EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$16,8			# 0x8
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi8EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L626
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$16,11			# 0xb
.L626:
	dsll	$7,$7,1
	move	$25,$0
	.align	3
.L628:
	move	$2,$4
	move	$13,$6
	daddiu	$24,$4,4
.L627:
	lbu	$12,1($2)
	daddiu	$2,$2,1
	daddiu	$13,$13,2
	lh	$10,2($8)
	lh	$15,0($8)
	lbu	$11,-1($2)
	gsmultu	$12,$12,$10
	lh	$14,4($8)
	lbu	$10,1($2)
	lh	$3,6($8)
	lbu	$9,2($2)
	mtlo	$12
	madd	$11,$15
	madd	$10,$14
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L627
	sh	$3,-2($13)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$16,$25,.L628
	daddu	$6,$6,$7

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi8EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi8EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi8EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi8EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi8EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi8EEEvPKhlPhli)))
	li	$16,8			# 0x8
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L639:
	daddu	$14,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$14
	daddu	$10,$4,$25
	daddiu	$15,$4,4
.L638:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L636
	move	$3,$2

	move	$3,$0
.L636:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L637
	nop

	li	$2,255			# 0xff
.L637:
	sb	$2,0($13)
	bne	$15,$4,.L638
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$14
	bne	$16,$0,.L639
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi8EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi8EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi8EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi8EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi8EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,8			# 0x8
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L645:
	daddu	$25,$4,$5
	move	$9,$6
	daddu	$15,$4,$16
	move	$14,$25
	daddu	$13,$4,$17
	daddiu	$7,$6,8
.L644:
	lbu	$12,0($14)
	daddiu	$4,$4,1
	daddiu	$15,$15,1
	lh	$10,2($8)
	daddiu	$13,$13,1
	daddiu	$9,$9,2
	lbu	$11,-1($4)
	daddiu	$14,$14,1
	lh	$20,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,-1($15)
	lh	$2,6($8)
	lbu	$3,-1($13)
	mtlo	$12
	madd	$11,$20
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$7,$9,.L644
	sh	$2,-2($9)

	addiu	$19,$19,-1
	move	$4,$25
	bne	$19,$0,.L645
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi8EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi8EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi8EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi8EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi8EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi8EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$15,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi8EEEvPKslPhli)))
	li	$24,8			# 0x8
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi8EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$15,$15,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L653:
	daddu	$13,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$13
	daddu	$9,$4,$17
	daddiu	$14,$4,8
.L652:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$15
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L650
	move	$3,$2

	move	$3,$0
.L650:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L651
	nop

	li	$2,255			# 0xff
.L651:
	sb	$2,0($12)
	bne	$14,$4,.L652
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$13
	bne	$24,$0,.L653
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi8EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi8EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi8EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi8EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi8EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi8EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi8EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi8EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,8			# 0x8
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L659:
	daddu	$24,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$24
	daddu	$11,$4,$19
	daddiu	$25,$4,8
.L658:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$25,$4,.L658
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$24
	bne	$7,$0,.L659
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi8EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi8EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi8EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi12EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi12EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi12EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi12EEEvPKhlPhli)))
	li	$15,12			# 0xc
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi12EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L667:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,16
	.align	3
.L666:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L671
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L671:
	bgez	$3,.L665
	nop

	move	$2,$0
.L665:
	sb	$2,0($14)
	bne	$24,$9,.L666
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L667
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi12EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi12EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi12EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi12EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi12EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi12EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi12EEEvPKhlPslii)))
	li	$24,12			# 0xc
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi12EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L673
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,19			# 0x13
	dsubu	$4,$4,$2
.L673:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L675:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,16
	.align	3
.L674:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L674
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L675
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi12EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi12EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi12EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi12EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi12EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi12EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi12EEEvPKhlPhli)))
	dsll	$10,$5,2
	daddu	$28,$28,$25
	daddu	$9,$2,$5
	sd	$5,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi12EEEvPKhlPhli)))
	sd	$2,56($sp)
	dsll	$2,$5,3
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,12			# 0xc
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L686:
	ld	$2,40($sp)
	move	$23,$6
	daddiu	$fp,$4,16
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
	.align	3
.L685:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$21,$21,1
	lh	$11,2($8)
	daddiu	$22,$22,1
	daddiu	$20,$20,1
	lbu	$2,-1($4)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lh	$5,0($8)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lbu	$3,-1($16)
	lh	$2,14($8)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L683
	move	$3,$2

	move	$3,$0
.L683:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L684
	nop

	li	$2,255			# 0xff
.L684:
	sb	$2,0($23)
	bne	$fp,$4,.L685
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L686
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi12EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi12EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi12EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi12EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi12EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi12EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi12EEEvPKhlPsli)))
	daddu	$9,$2,$5
	daddu	$28,$28,$25
	dsll	$10,$5,2
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi12EEEvPKhlPsli)))
	dsll	$2,$5,3
	sd	$5,48($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,12			# 0xc
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L692:
	ld	$2,48($sp)
	move	$23,$6
	daddiu	$fp,$4,16
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
	.align	3
.L691:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$22,$22,1
	lh	$11,2($8)
	daddiu	$20,$20,1
	daddiu	$19,$19,1
	lbu	$2,-1($4)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$5,0($8)
	daddiu	$16,$16,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,1
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lbu	$3,-1($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$4,.L691
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L692
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi12EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi12EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi12EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi12EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi12EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi12EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi12EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$6,0($sp)
	dsll	$9,$5,3
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi12EEEvPKslPhli)))
	sd	$2,64($sp)
	daddu	$2,$2,$5
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	sd	$fp,152($sp)
	li	$fp,524288			# 0x80000
	dsubu	$4,$4,$10
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,12			# 0xc
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L700:
	ld	$2,64($sp)
	daddiu	$23,$4,32
	ld	$22,0($sp)
	daddu	$20,$4,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$4,$2
	ld	$2,72($sp)
	daddu	$19,$4,$2
	ld	$2,40($sp)
	daddu	$18,$4,$2
	ld	$2,32($sp)
	daddu	$17,$4,$2
	ld	$2,24($sp)
	daddu	$16,$4,$2
	ld	$2,16($sp)
	daddu	$25,$4,$2
	.align	3
.L699:
	lh	$3,0($20)
	daddiu	$4,$4,2
	daddiu	$20,$20,2
	lh	$10,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$10
	lh	$15,4($8)
	lh	$10,-2($21)
	lh	$9,-2($19)
	lh	$14,6($8)
	lh	$7,-2($18)
	mtlo	$3
	lh	$13,8($8)
	madd	$2,$5
	lh	$6,-2($17)
	lh	$12,10($8)
	lh	$5,-2($16)
	lh	$11,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L697
	move	$3,$2

	move	$3,$0
.L697:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L698
	nop

	li	$2,255			# 0xff
.L698:
	sb	$2,0($22)
	bne	$23,$4,.L699
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$4,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L700
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi12EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi12EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi12EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi12EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi12EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi12EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi12EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	dsll	$9,$5,3
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi12EEEvPKslPsli)))
	daddu	$2,$2,$5
	sd	$3,48($sp)
	sd	$9,40($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	ld	$9,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	dsll	$7,$7,1
	dsll	$3,$3,1
	sd	$2,24($sp)
	dsubu	$4,$4,$10
	dsll	$2,$5,1
	sd	$fp,152($sp)
	dlsa	$8,$8,$9,4
	li	$25,12			# 0xc
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,64($sp)
	sd	$7,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L706:
	ld	$2,56($sp)
	move	$23,$6
	daddiu	$fp,$4,32
	daddu	$21,$4,$2
	ld	$2,48($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,64($sp)
	daddu	$20,$4,$2
	ld	$2,40($sp)
	daddu	$19,$4,$2
	ld	$2,32($sp)
	daddu	$18,$4,$2
	ld	$2,24($sp)
	daddu	$17,$4,$2
	ld	$2,16($sp)
	daddu	$16,$4,$2
	.align	3
.L705:
	lh	$3,0($21)
	daddiu	$4,$4,2
	daddiu	$22,$22,2
	lh	$11,2($8)
	daddiu	$20,$20,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,2
	lh	$11,-2($22)
	lh	$10,-2($20)
	lh	$15,6($8)
	lh	$9,-2($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lh	$7,-2($18)
	lh	$13,10($8)
	lh	$5,-2($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lh	$3,-2($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$4,.L705
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L706
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi12EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi12EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi12EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi12EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi12EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi12EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,12			# 0xc
	.align	3
.L712:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,32
	.align	3
.L711:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L711
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L712
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi12EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi12EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi12EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi6EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi6EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi6EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi6EEEvPKhlPhli)))
	li	$14,6			# 0x6
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi6EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L720:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,8
	.align	3
.L719:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L724
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L724:
	bgez	$3,.L718
	nop

	move	$2,$0
.L718:
	sb	$2,0($13)
	bne	$15,$9,.L719
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L720
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi6EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi6EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi6EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi6EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi6EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi6EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi6EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$16,6			# 0x6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi6EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L726
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$16,9			# 0x9
.L726:
	dsll	$7,$7,1
	move	$25,$0
	.align	3
.L728:
	move	$2,$4
	move	$13,$6
	daddiu	$24,$4,8
	.align	3
.L727:
	lbu	$12,1($2)
	daddiu	$2,$2,1
	daddiu	$13,$13,2
	lh	$10,2($8)
	lh	$15,0($8)
	lbu	$11,-1($2)
	gsmultu	$12,$12,$10
	lh	$14,4($8)
	lbu	$10,1($2)
	lh	$3,6($8)
	lbu	$9,2($2)
	mtlo	$12
	madd	$11,$15
	madd	$10,$14
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L727
	sh	$3,-2($13)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$16,$25,.L728
	daddu	$6,$6,$7

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi6EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi6EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi6EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi6EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi6EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi6EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi6EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi6EEEvPKhlPhli)))
	li	$16,6			# 0x6
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L739:
	daddu	$15,$4,$5
	move	$10,$6
	daddu	$13,$4,$24
	move	$12,$15
	daddu	$11,$4,$25
	daddiu	$14,$4,8
	.align	3
.L738:
	lbu	$18,0($12)
	daddiu	$4,$4,1
	daddiu	$12,$12,1
	lh	$9,2($8)
	daddiu	$13,$13,1
	daddiu	$11,$11,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($13)
	lbu	$3,-1($11)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L736
	move	$3,$2

	move	$3,$0
.L736:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L737
	nop

	li	$2,255			# 0xff
.L737:
	sb	$2,0($10)
	bne	$14,$4,.L738
	daddiu	$10,$10,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L739
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi6EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi6EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi6EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi6EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi6EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi6EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi6EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi6EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,6			# 0x6
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L745:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,8
	.align	3
.L744:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L744
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L745
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi6EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi6EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi6EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi6EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi6EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi6EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi6EEEvPKslPhli)))
	li	$24,6			# 0x6
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi6EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L753:
	daddu	$15,$4,$25
	move	$9,$6
	daddu	$12,$4,$16
	move	$11,$15
	daddu	$10,$4,$17
	daddiu	$13,$4,16
	.align	3
.L752:
	lh	$19,0($11)
	daddiu	$4,$4,2
	daddiu	$11,$11,2
	lh	$5,2($8)
	daddiu	$12,$12,2
	daddiu	$10,$10,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($12)
	lh	$3,-2($10)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L750
	move	$3,$2

	move	$3,$0
.L750:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L751
	nop

	li	$2,255			# 0xff
.L751:
	sb	$2,0($9)
	bne	$13,$4,.L752
	daddiu	$9,$9,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L753
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi6EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi6EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi6EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi6EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi6EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi6EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi6EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi6EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,6			# 0x6
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L759:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,16
	.align	3
.L758:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L758
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L759
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi6EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi6EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi6EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi6EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi6EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi6EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,6			# 0x6
	.align	3
.L765:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,16
	.align	3
.L764:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L764
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L765
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi6EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi6EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi6EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi12ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi12ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi12ELi16EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi12ELi16EEEvPKhlPhli)))
	li	$15,16			# 0x10
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi12ELi16EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L773:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,12
	.align	3
.L772:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L777
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L777:
	bgez	$3,.L771
	nop

	move	$2,$0
.L771:
	sb	$2,0($14)
	bne	$24,$9,.L772
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L773
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi12ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi12ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi12ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi12ELi16EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi12ELi16EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi12ELi16EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi12ELi16EEEvPKhlPslii)))
	li	$24,16			# 0x10
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi12ELi16EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L779
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,23			# 0x17
	dsubu	$4,$4,$2
.L779:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L781:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,12
	.align	3
.L780:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L780
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L781
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi12ELi16EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi12ELi16EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi12ELi16EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi12ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi12ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi12ELi16EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi12ELi16EEEvPKhlPhli)))
	dsll	$10,$5,2
	daddu	$28,$28,$25
	daddu	$9,$2,$5
	sd	$5,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi12ELi16EEEvPKhlPhli)))
	sd	$2,56($sp)
	dsll	$2,$5,3
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,16			# 0x10
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L792:
	ld	$2,40($sp)
	move	$23,$6
	daddiu	$fp,$4,12
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
	.align	3
.L791:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$21,$21,1
	lh	$11,2($8)
	daddiu	$22,$22,1
	daddiu	$20,$20,1
	lbu	$2,-1($4)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lh	$5,0($8)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lbu	$3,-1($16)
	lh	$2,14($8)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L789
	move	$3,$2

	move	$3,$0
.L789:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L790
	nop

	li	$2,255			# 0xff
.L790:
	sb	$2,0($23)
	bne	$fp,$4,.L791
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L792
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi12ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi12ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi12ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi12ELi16EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi12ELi16EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi12ELi16EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi12ELi16EEEvPKhlPsli)))
	daddu	$9,$2,$5
	daddu	$28,$28,$25
	dsll	$10,$5,2
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi12ELi16EEEvPKhlPsli)))
	dsll	$2,$5,3
	sd	$5,48($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,16			# 0x10
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L798:
	ld	$2,48($sp)
	move	$23,$6
	daddiu	$fp,$4,12
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
	.align	3
.L797:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$22,$22,1
	lh	$11,2($8)
	daddiu	$20,$20,1
	daddiu	$19,$19,1
	lbu	$2,-1($4)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$5,0($8)
	daddiu	$16,$16,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,1
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lbu	$3,-1($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$4,.L797
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L798
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi12ELi16EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi12ELi16EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi12ELi16EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi12ELi16EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi12ELi16EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi12ELi16EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi12ELi16EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$6,0($sp)
	dsll	$9,$5,3
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi12ELi16EEEvPKslPhli)))
	sd	$2,64($sp)
	daddu	$2,$2,$5
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	sd	$fp,152($sp)
	li	$fp,524288			# 0x80000
	dsubu	$4,$4,$10
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,16			# 0x10
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L806:
	ld	$2,64($sp)
	daddiu	$23,$4,24
	ld	$22,0($sp)
	daddu	$20,$4,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$4,$2
	ld	$2,72($sp)
	daddu	$19,$4,$2
	ld	$2,40($sp)
	daddu	$18,$4,$2
	ld	$2,32($sp)
	daddu	$17,$4,$2
	ld	$2,24($sp)
	daddu	$16,$4,$2
	ld	$2,16($sp)
	daddu	$25,$4,$2
	.align	3
.L805:
	lh	$3,0($20)
	daddiu	$4,$4,2
	daddiu	$20,$20,2
	lh	$10,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$10
	lh	$15,4($8)
	lh	$10,-2($21)
	lh	$9,-2($19)
	lh	$14,6($8)
	lh	$7,-2($18)
	mtlo	$3
	lh	$13,8($8)
	madd	$2,$5
	lh	$6,-2($17)
	lh	$12,10($8)
	lh	$5,-2($16)
	lh	$11,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L803
	move	$3,$2

	move	$3,$0
.L803:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L804
	nop

	li	$2,255			# 0xff
.L804:
	sb	$2,0($22)
	bne	$23,$4,.L805
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$4,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L806
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi12ELi16EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi12ELi16EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi12ELi16EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi12ELi16EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi12ELi16EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi12ELi16EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi12ELi16EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	dsll	$9,$5,3
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi12ELi16EEEvPKslPsli)))
	daddu	$2,$2,$5
	sd	$3,48($sp)
	sd	$9,40($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	ld	$9,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	dsll	$7,$7,1
	dsll	$3,$3,1
	sd	$2,24($sp)
	dsubu	$4,$4,$10
	dsll	$2,$5,1
	sd	$fp,152($sp)
	dlsa	$8,$8,$9,4
	li	$25,16			# 0x10
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,64($sp)
	sd	$7,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L812:
	ld	$2,56($sp)
	move	$23,$6
	daddiu	$fp,$4,24
	daddu	$21,$4,$2
	ld	$2,48($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,64($sp)
	daddu	$20,$4,$2
	ld	$2,40($sp)
	daddu	$19,$4,$2
	ld	$2,32($sp)
	daddu	$18,$4,$2
	ld	$2,24($sp)
	daddu	$17,$4,$2
	ld	$2,16($sp)
	daddu	$16,$4,$2
	.align	3
.L811:
	lh	$3,0($21)
	daddiu	$4,$4,2
	daddiu	$22,$22,2
	lh	$11,2($8)
	daddiu	$20,$20,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,2
	lh	$11,-2($22)
	lh	$10,-2($20)
	lh	$15,6($8)
	lh	$9,-2($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lh	$7,-2($18)
	lh	$13,10($8)
	lh	$5,-2($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lh	$3,-2($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$4,.L811
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L812
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi12ELi16EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi12ELi16EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi12ELi16EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi16EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi16EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi16EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,16			# 0x10
	.align	3
.L818:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,24
	.align	3
.L817:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L817
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L818
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi16EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi16EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi16EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi8EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi8EEEvPKhlPhli)))
	li	$14,8			# 0x8
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi8EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L826:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,6
	.align	3
.L825:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L830
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L830:
	bgez	$3,.L824
	nop

	move	$2,$0
.L824:
	sb	$2,0($13)
	bne	$15,$9,.L825
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L826
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi8EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi8EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi8EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi8EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$16,8			# 0x8
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi8EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L832
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$16,11			# 0xb
.L832:
	dsll	$7,$7,1
	move	$25,$0
	.align	3
.L834:
	move	$2,$4
	move	$13,$6
	daddiu	$24,$4,6
	.align	3
.L833:
	lbu	$12,1($2)
	daddiu	$2,$2,1
	daddiu	$13,$13,2
	lh	$10,2($8)
	lh	$15,0($8)
	lbu	$11,-1($2)
	gsmultu	$12,$12,$10
	lh	$14,4($8)
	lbu	$10,1($2)
	lh	$3,6($8)
	lbu	$9,2($2)
	mtlo	$12
	madd	$11,$15
	madd	$10,$14
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L833
	sh	$3,-2($13)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$16,$25,.L834
	daddu	$6,$6,$7

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi8EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi8EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi8EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi8EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi8EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi8EEEvPKhlPhli)))
	li	$16,8			# 0x8
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L845:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,6
	.align	3
.L844:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L842
	move	$3,$2

	move	$3,$0
.L842:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L843
	nop

	li	$2,255			# 0xff
.L843:
	sb	$2,0($13)
	bne	$14,$4,.L844
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L845
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi8EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi8EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi8EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi8EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi8EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,8			# 0x8
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L851:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,6
	.align	3
.L850:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L850
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L851
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi8EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi8EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi8EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi8EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi8EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi8EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi8EEEvPKslPhli)))
	li	$24,8			# 0x8
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi8EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L859:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,12
	.align	3
.L858:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L856
	move	$3,$2

	move	$3,$0
.L856:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L857
	nop

	li	$2,255			# 0xff
.L857:
	sb	$2,0($12)
	bne	$13,$4,.L858
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L859
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi8EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi8EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi8EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi8EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi8EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi8EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi8EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi8EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,8			# 0x8
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L865:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,12
	.align	3
.L864:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L864
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L865
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi8EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi8EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi8EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi6ELi8EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi6ELi8EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi6ELi8EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,8			# 0x8
	.align	3
.L871:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,12
	.align	3
.L870:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L870
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L871
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi6ELi8EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi6ELi8EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi6ELi8EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi4EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi4EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi4EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi4EEEvPKhlPhli)))
	li	$15,4			# 0x4
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi4EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
.L879:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,16
	.align	3
.L878:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L883
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L883:
	bgez	$3,.L877
	nop

	move	$2,$0
.L877:
	sb	$2,0($14)
	bne	$24,$9,.L878
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L879
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi4EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi4EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi4EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi4EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi4EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi4EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi4EEEvPKhlPslii)))
	li	$24,4			# 0x4
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi4EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L885
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,11			# 0xb
	dsubu	$4,$4,$2
.L885:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L887:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,16
	.align	3
.L886:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L886
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L887
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi4EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi4EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi4EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi4EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi4EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi4EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi4EEEvPKhlPhli)))
	dsll	$10,$5,2
	daddu	$28,$28,$25
	daddu	$9,$2,$5
	sd	$5,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi4EEEvPKhlPhli)))
	sd	$2,56($sp)
	dsll	$2,$5,3
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,4			# 0x4
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
.L898:
	ld	$2,40($sp)
	move	$23,$6
	daddiu	$fp,$4,16
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
	.align	3
.L897:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$21,$21,1
	lh	$11,2($8)
	daddiu	$22,$22,1
	daddiu	$20,$20,1
	lbu	$2,-1($4)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lh	$5,0($8)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lbu	$3,-1($16)
	lh	$2,14($8)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L895
	move	$3,$2

	move	$3,$0
.L895:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L896
	nop

	li	$2,255			# 0xff
.L896:
	sb	$2,0($23)
	bne	$fp,$4,.L897
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L898
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi4EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi4EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi4EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi4EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi4EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi4EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi4EEEvPKhlPsli)))
	daddu	$9,$2,$5
	daddu	$28,$28,$25
	dsll	$10,$5,2
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi4EEEvPKhlPsli)))
	dsll	$2,$5,3
	sd	$5,48($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,4			# 0x4
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
.L904:
	ld	$2,48($sp)
	move	$23,$6
	daddiu	$fp,$4,16
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
	.align	3
.L903:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$22,$22,1
	lh	$11,2($8)
	daddiu	$20,$20,1
	daddiu	$19,$19,1
	lbu	$2,-1($4)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$5,0($8)
	daddiu	$16,$16,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,1
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lbu	$3,-1($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$4,.L903
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L904
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi4EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi4EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi4EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi4EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi4EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi4EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi4EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$6,0($sp)
	dsll	$9,$5,3
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi4EEEvPKslPhli)))
	sd	$2,64($sp)
	daddu	$2,$2,$5
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	sd	$fp,152($sp)
	li	$fp,524288			# 0x80000
	dsubu	$4,$4,$10
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,4			# 0x4
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
.L912:
	ld	$2,64($sp)
	daddiu	$23,$4,32
	ld	$22,0($sp)
	daddu	$20,$4,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$4,$2
	ld	$2,72($sp)
	daddu	$19,$4,$2
	ld	$2,40($sp)
	daddu	$18,$4,$2
	ld	$2,32($sp)
	daddu	$17,$4,$2
	ld	$2,24($sp)
	daddu	$16,$4,$2
	ld	$2,16($sp)
	daddu	$25,$4,$2
	.align	3
.L911:
	lh	$3,0($20)
	daddiu	$4,$4,2
	daddiu	$20,$20,2
	lh	$10,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$10
	lh	$15,4($8)
	lh	$10,-2($21)
	lh	$9,-2($19)
	lh	$14,6($8)
	lh	$7,-2($18)
	mtlo	$3
	lh	$13,8($8)
	madd	$2,$5
	lh	$6,-2($17)
	lh	$12,10($8)
	lh	$5,-2($16)
	lh	$11,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L909
	move	$3,$2

	move	$3,$0
.L909:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L910
	nop

	li	$2,255			# 0xff
.L910:
	sb	$2,0($22)
	bne	$23,$4,.L911
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$4,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L912
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi4EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi4EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi4EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi4EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi4EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi4EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi4EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	dsll	$9,$5,3
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi4EEEvPKslPsli)))
	daddu	$2,$2,$5
	sd	$3,48($sp)
	sd	$9,40($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	ld	$9,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	dsll	$7,$7,1
	dsll	$3,$3,1
	sd	$2,24($sp)
	dsubu	$4,$4,$10
	dsll	$2,$5,1
	sd	$fp,152($sp)
	dlsa	$8,$8,$9,4
	li	$25,4			# 0x4
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,64($sp)
	sd	$7,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
.L918:
	ld	$2,56($sp)
	move	$23,$6
	daddiu	$fp,$4,32
	daddu	$21,$4,$2
	ld	$2,48($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,64($sp)
	daddu	$20,$4,$2
	ld	$2,40($sp)
	daddu	$19,$4,$2
	ld	$2,32($sp)
	daddu	$18,$4,$2
	ld	$2,24($sp)
	daddu	$17,$4,$2
	ld	$2,16($sp)
	daddu	$16,$4,$2
	.align	3
.L917:
	lh	$3,0($21)
	daddiu	$4,$4,2
	daddiu	$22,$22,2
	lh	$11,2($8)
	daddiu	$20,$20,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,2
	lh	$11,-2($22)
	lh	$10,-2($20)
	lh	$15,6($8)
	lh	$9,-2($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lh	$7,-2($18)
	lh	$13,10($8)
	lh	$5,-2($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lh	$3,-2($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$4,.L917
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L918
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi4EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi4EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi4EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi4EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi4EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi4EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,4			# 0x4
.L924:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,32
	.align	3
.L923:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L923
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L924
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi4EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi4EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi4EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi2EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi2EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi2EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi2EEEvPKhlPhli)))
	li	$14,2			# 0x2
	daddu	$28,$28,$25
	li	$15,1			# 0x1
	sd	$16,0($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi2EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
.L932:
	move	$9,$4
	move	$13,$6
	daddiu	$24,$4,8
	.align	3
.L931:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$16,0($8)
	gsmultu	$12,$12,$10
	lh	$25,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$16
	madd	$10,$25
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L936
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L936:
	bgez	$3,.L930
	nop

	move	$2,$0
.L930:
	sb	$2,0($13)
	bne	$24,$9,.L931
	daddiu	$13,$13,1

	daddu	$4,$4,$5
	bne	$14,$15,.L933
	daddu	$6,$6,$7

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L933:
	b	.L932
	li	$14,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi2EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi2EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi2EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi2EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi2EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi2EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi2EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$16,2			# 0x2
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi2EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L938
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$16,5			# 0x5
.L938:
	dsll	$7,$7,1
	move	$25,$0
	.align	3
.L940:
	move	$2,$4
	move	$13,$6
	daddiu	$24,$4,8
	.align	3
.L939:
	lbu	$12,1($2)
	daddiu	$2,$2,1
	daddiu	$13,$13,2
	lh	$10,2($8)
	lh	$15,0($8)
	lbu	$11,-1($2)
	gsmultu	$12,$12,$10
	lh	$14,4($8)
	lbu	$10,1($2)
	lh	$3,6($8)
	lbu	$9,2($2)
	mtlo	$12
	madd	$11,$15
	madd	$10,$14
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L939
	sh	$3,-2($13)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$16,$25,.L940
	daddu	$6,$6,$7

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi2EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi2EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi2EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi2EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi2EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi2EEEvPKhlPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	dsubu	$4,$4,$5
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi2EEEvPKhlPhli)))
	li	$24,2			# 0x2
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi2EEEvPKhlPhli)))
	sd	$16,8($sp)
	li	$17,1			# 0x1
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	daddu	$16,$25,$5
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
.L951:
	daddu	$15,$4,$5
	move	$10,$6
	daddu	$13,$4,$25
	move	$12,$15
	daddu	$11,$4,$16
	daddiu	$14,$4,8
	.align	3
.L950:
	lbu	$19,0($12)
	daddiu	$4,$4,1
	daddiu	$12,$12,1
	lh	$9,2($8)
	daddiu	$13,$13,1
	daddiu	$11,$11,1
	lbu	$18,-1($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$9
	lh	$20,4($8)
	lbu	$9,-1($13)
	lbu	$3,-1($11)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$9,$20
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L948
	move	$3,$2

	move	$3,$0
.L948:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L949
	nop

	li	$2,255			# 0xff
.L949:
	sb	$2,0($10)
	bne	$14,$4,.L950
	daddiu	$10,$10,1

	move	$4,$15
	bne	$24,$17,.L952
	daddu	$6,$6,$7

	ld	$28,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L952:
	b	.L951
	li	$24,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi2EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi2EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi2EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi2EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi2EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi2EEEvPKhlPsli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	dsubu	$4,$4,$5
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi2EEEvPKhlPsli)))
	dsll	$7,$7,1
	daddu	$28,$28,$25
	sd	$17,16($sp)
	dsll	$17,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi2EEEvPKhlPsli)))
	sd	$19,32($sp)
	li	$19,1			# 0x1
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,24($sp)
	daddu	$18,$17,$5
	sd	$16,8($sp)
	li	$16,2			# 0x2
	dlsa	$8,$8,$2,3
	sd	$21,48($sp)
	sd	$20,40($sp)
.L957:
	daddu	$25,$4,$5
	move	$15,$6
	daddu	$14,$4,$17
	move	$13,$25
	daddu	$12,$4,$18
	daddiu	$24,$4,8
	.align	3
.L956:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$21,0($8)
	gsmultu	$11,$11,$9
	lh	$20,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$21
	madd	$9,$20
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$24,$4,.L956
	sh	$2,-2($15)

	move	$4,$25
	bne	$16,$19,.L958
	daddu	$6,$6,$7

	ld	$28,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L958:
	b	.L957
	li	$16,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi2EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi2EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi2EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi2EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi2EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi2EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x107f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	dsll	$24,$5,1
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi2EEEvPKslPhli)))
	li	$13,524288			# 0x80000
	daddu	$28,$28,$25
	daddu	$25,$24,$5
	sd	$17,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi2EEEvPKslPhli)))
	sd	$16,0($sp)
	dsubu	$4,$4,$24
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsll	$5,$5,2
	dsll	$25,$25,1
	li	$16,2			# 0x2
	addiu	$13,$13,2048
	sd	$22,48($sp)
	li	$17,1			# 0x1
	sd	$21,40($sp)
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
.L965:
	daddu	$15,$4,$24
	move	$9,$6
	daddu	$12,$4,$5
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,16
	.align	3
.L964:
	lh	$20,0($11)
	daddiu	$4,$4,2
	daddiu	$11,$11,2
	lh	$18,2($8)
	daddiu	$12,$12,2
	daddiu	$10,$10,2
	lh	$19,-2($4)
	lh	$22,0($8)
	gsmultu	$20,$20,$18
	lh	$21,4($8)
	lh	$18,-2($12)
	lh	$3,-2($10)
	lh	$2,6($8)
	mtlo	$20
	madd	$19,$22
	madd	$18,$21
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$13
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L962
	move	$3,$2

	move	$3,$0
.L962:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L963
	nop

	li	$2,255			# 0xff
.L963:
	sb	$2,0($9)
	bne	$14,$4,.L964
	daddiu	$9,$9,1

	move	$4,$15
	bne	$16,$17,.L966
	daddu	$6,$6,$7

	ld	$28,56($sp)
	ld	$22,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L966:
	b	.L965
	li	$16,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi2EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi2EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi2EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi2EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi2EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi2EEEvPKslPsli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	dsll	$7,$7,1
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi2EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$17,16($sp)
	dsll	$17,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi2EEEvPKslPsli)))
	sd	$16,8($sp)
	daddu	$16,$17,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$17
	dsll	$5,$5,2
	sd	$19,32($sp)
	dsll	$16,$16,1
	li	$19,1			# 0x1
	sd	$18,24($sp)
	li	$18,2			# 0x2
	dlsa	$8,$8,$2,3
	sd	$21,48($sp)
	sd	$20,40($sp)
.L971:
	daddu	$25,$4,$17
	move	$15,$6
	daddu	$14,$4,$5
	move	$13,$25
	daddu	$12,$4,$16
	daddiu	$24,$4,16
	.align	3
.L970:
	lh	$11,0($13)
	daddiu	$4,$4,2
	daddiu	$14,$14,2
	lh	$9,2($8)
	daddiu	$12,$12,2
	daddiu	$15,$15,2
	lh	$10,-2($4)
	daddiu	$13,$13,2
	lh	$21,0($8)
	gsmultu	$11,$11,$9
	lh	$20,4($8)
	lh	$9,-2($14)
	lh	$2,6($8)
	lh	$3,-2($12)
	mtlo	$11
	madd	$10,$21
	madd	$9,$20
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L970
	sh	$2,-2($15)

	move	$4,$25
	bne	$18,$19,.L972
	daddu	$6,$6,$7

	ld	$28,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L972:
	b	.L971
	li	$18,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi2EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi2EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi2EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi2EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi2EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi2EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,16
	.align	3
.L976:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$3,$9,.L976
	sh	$2,-2($3)

	daddu	$6,$6,$7
	daddu	$5,$4,$5
	daddiu	$3,$6,16
	.align	3
.L977:
	lbu	$2,0($5)
	daddiu	$6,$6,2
	daddiu	$5,$5,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$6,$3,.L977
	sh	$2,-2($6)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi2EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi2EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi2EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi16EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi16EEEvPKhlPhli)))
	li	$15,16			# 0x10
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi16EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L985:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,4
.L984:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L989
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L989:
	bgez	$3,.L983
	nop

	move	$2,$0
.L983:
	sb	$2,0($14)
	bne	$24,$9,.L984
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L985
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi16EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi16EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi16EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi16EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$21,48($sp)
	li	$25,16			# 0x10
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi16EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L991
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$25,23			# 0x17
	dsubu	$4,$4,$2
.L991:
	dsll	$16,$7,1
	move	$7,$0
	.align	3
.L993:
	move	$2,$4
	move	$15,$6
	daddiu	$24,$4,4
.L992:
	lbu	$9,1($2)
	daddiu	$2,$2,1
	daddiu	$15,$15,2
	lh	$14,2($8)
	lh	$10,0($8)
	lbu	$3,-1($2)
	gsmultu	$9,$9,$14
	lh	$21,4($8)
	lbu	$14,1($2)
	lbu	$13,2($2)
	lh	$20,6($8)
	lbu	$12,3($2)
	mtlo	$9
	lh	$19,8($8)
	madd	$3,$10
	lbu	$11,4($2)
	lh	$18,10($8)
	lbu	$10,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$9,6($2)
	madd	$14,$21
	madd	$13,$20
	madd	$12,$19
	madd	$11,$18
	madd	$10,$17
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L992
	sh	$3,-2($15)

	addiu	$7,$7,1
	daddu	$4,$4,$5
	bne	$25,$7,.L993
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi16EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi16EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi16EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi16EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi16EEEvPKhlPhli)))
	dsll	$10,$5,2
	daddu	$28,$28,$25
	daddu	$9,$2,$5
	sd	$5,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi16EEEvPKhlPhli)))
	sd	$2,56($sp)
	dsll	$2,$5,3
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,16			# 0x10
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L1004:
	ld	$2,40($sp)
	move	$23,$6
	daddiu	$fp,$4,4
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
.L1003:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$21,$21,1
	lh	$11,2($8)
	daddiu	$22,$22,1
	daddiu	$20,$20,1
	lbu	$2,-1($4)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lh	$5,0($8)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lbu	$3,-1($16)
	lh	$2,14($8)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1001
	move	$3,$2

	move	$3,$0
.L1001:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1002
	nop

	li	$2,255			# 0xff
.L1002:
	sb	$2,0($23)
	bne	$fp,$4,.L1003
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L1004
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi16EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi16EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi16EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi16EEEvPKhlPsli)))
	daddu	$9,$2,$5
	daddu	$28,$28,$25
	dsll	$10,$5,2
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi16EEEvPKhlPsli)))
	dsll	$2,$5,3
	sd	$5,48($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,16			# 0x10
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L1010:
	ld	$2,48($sp)
	move	$23,$6
	daddiu	$fp,$4,4
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
.L1009:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$22,$22,1
	lh	$11,2($8)
	daddiu	$20,$20,1
	daddiu	$19,$19,1
	lbu	$2,-1($4)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$5,0($8)
	daddiu	$16,$16,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,1
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lbu	$3,-1($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$4,.L1009
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L1010
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi16EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi16EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi16EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi16EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi16EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi16EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi16EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$6,0($sp)
	dsll	$9,$5,3
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi16EEEvPKslPhli)))
	sd	$2,64($sp)
	daddu	$2,$2,$5
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	sd	$fp,152($sp)
	li	$fp,524288			# 0x80000
	dsubu	$4,$4,$10
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,16			# 0x10
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1018:
	ld	$2,64($sp)
	daddiu	$23,$4,8
	ld	$22,0($sp)
	daddu	$20,$4,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$4,$2
	ld	$2,72($sp)
	daddu	$19,$4,$2
	ld	$2,40($sp)
	daddu	$18,$4,$2
	ld	$2,32($sp)
	daddu	$17,$4,$2
	ld	$2,24($sp)
	daddu	$16,$4,$2
	ld	$2,16($sp)
	daddu	$25,$4,$2
.L1017:
	lh	$3,0($20)
	daddiu	$4,$4,2
	daddiu	$20,$20,2
	lh	$10,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$10
	lh	$15,4($8)
	lh	$10,-2($21)
	lh	$9,-2($19)
	lh	$14,6($8)
	lh	$7,-2($18)
	mtlo	$3
	lh	$13,8($8)
	madd	$2,$5
	lh	$6,-2($17)
	lh	$12,10($8)
	lh	$5,-2($16)
	lh	$11,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1015
	move	$3,$2

	move	$3,$0
.L1015:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1016
	nop

	li	$2,255			# 0xff
.L1016:
	sb	$2,0($22)
	bne	$23,$4,.L1017
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$4,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L1018
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi16EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi16EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi16EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi16EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi16EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi16EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi16EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	dsll	$9,$5,3
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi16EEEvPKslPsli)))
	daddu	$2,$2,$5
	sd	$3,48($sp)
	sd	$9,40($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	ld	$9,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	dsll	$7,$7,1
	dsll	$3,$3,1
	sd	$2,24($sp)
	dsubu	$4,$4,$10
	dsll	$2,$5,1
	sd	$fp,152($sp)
	dlsa	$8,$8,$9,4
	li	$25,16			# 0x10
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,64($sp)
	sd	$7,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1024:
	ld	$2,56($sp)
	move	$23,$6
	daddiu	$fp,$4,8
	daddu	$21,$4,$2
	ld	$2,48($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,64($sp)
	daddu	$20,$4,$2
	ld	$2,40($sp)
	daddu	$19,$4,$2
	ld	$2,32($sp)
	daddu	$18,$4,$2
	ld	$2,24($sp)
	daddu	$17,$4,$2
	ld	$2,16($sp)
	daddu	$16,$4,$2
.L1023:
	lh	$3,0($21)
	daddiu	$4,$4,2
	daddiu	$22,$22,2
	lh	$11,2($8)
	daddiu	$20,$20,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,2
	lh	$11,-2($22)
	lh	$10,-2($20)
	lh	$15,6($8)
	lh	$9,-2($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lh	$7,-2($18)
	lh	$13,10($8)
	lh	$5,-2($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lh	$3,-2($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$4,.L1023
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L1024
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi16EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi16EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi16EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi16EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi16EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi16EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,16			# 0x10
	.align	3
.L1030:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,8
.L1029:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L1029
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1030
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi16EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi16EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi16EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi8EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi8EEEvPKhlPhli)))
	li	$14,8			# 0x8
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi8EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L1038:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,2
.L1037:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1042
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1042:
	bgez	$3,.L1036
	nop

	move	$2,$0
.L1036:
	sb	$2,0($13)
	bne	$15,$9,.L1037
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L1038
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi8EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi8EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi8EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi8EEEvPKhlPslii)))
	li	$14,8			# 0x8
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi8EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L1044
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$14,11			# 0xb
.L1044:
	dsll	$7,$7,1
	move	$15,$0
	.align	3
.L1045:
	lbu	$13,1($4)
	addiu	$15,$15,1
	lh	$11,2($8)
	lbu	$12,0($4)
	lh	$24,0($8)
	gsmultu	$13,$13,$11
	lh	$2,4($8)
	lbu	$11,2($4)
	lbu	$10,3($4)
	lh	$9,6($8)
	mtlo	$13
	madd	$12,$24
	madd	$11,$2
	madd	$10,$9
	mflo	$9
	addiu	$9,$9,-8192
	sh	$9,0($6)
	lbu	$11,2($4)
	lh	$2,2($8)
	lbu	$10,1($4)
	lbu	$9,3($4)
	gsmultu	$11,$11,$2
	lh	$12,4($8)
	lbu	$3,4($4)
	daddu	$4,$4,$5
	lh	$2,6($8)
	mtlo	$11
	madd	$10,$24
	madd	$9,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	sh	$2,2($6)
	bne	$14,$15,.L1045
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi8EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi8EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi8EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi8EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi8EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	li	$15,8			# 0x8
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi8EEEvPKhlPhli)))
	daddu	$25,$24,$5
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,3
	sd	$16,0($sp)
	.align	3
.L1055:
	daddu	$14,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$14
	daddu	$10,$4,$25
	daddiu	$16,$4,2
.L1054:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1052
	move	$3,$2

	move	$3,$0
.L1052:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1053
	nop

	li	$2,255			# 0xff
.L1053:
	sb	$2,0($13)
	bne	$16,$4,.L1054
	daddiu	$13,$13,1

	addiu	$15,$15,-1
	move	$4,$14
	bne	$15,$0,.L1055
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi8EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi8EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi8EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi8EEEvPKhlPsli)))
	dsll	$7,$7,1
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi8EEEvPKhlPsli)))
	sd	$18,16($sp)
	li	$18,8			# 0x8
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$17,8($sp)
	daddu	$17,$16,$5
	sd	$20,32($sp)
	dlsa	$8,$8,$2,3
	sd	$19,24($sp)
	.align	3
.L1061:
	daddu	$24,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$24
	daddu	$12,$4,$17
	daddiu	$19,$4,2
.L1060:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$25,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$25
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$19,$4,.L1060
	sh	$2,-2($15)

	addiu	$18,$18,-1
	move	$4,$24
	bne	$18,$0,.L1061
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi8EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi8EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi8EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi8EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi8EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi8EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$15,8			# 0x8
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi8EEEvPKslPhli)))
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi8EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsll	$16,$5,2
	li	$5,524288			# 0x80000
	dsubu	$4,$4,$25
	dsll	$17,$17,1
	sd	$21,48($sp)
	addiu	$5,$5,2048
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L1069:
	daddu	$14,$4,$25
	move	$13,$6
	daddu	$12,$4,$16
	move	$11,$14
	daddu	$10,$4,$17
	daddiu	$24,$4,4
.L1068:
	lh	$19,0($11)
	daddiu	$4,$4,2
	daddiu	$11,$11,2
	lh	$9,2($8)
	daddiu	$12,$12,2
	daddiu	$10,$10,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$9
	lh	$20,4($8)
	lh	$9,-2($12)
	lh	$3,-2($10)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$9,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$5
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1066
	move	$3,$2

	move	$3,$0
.L1066:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1067
	nop

	li	$2,255			# 0xff
.L1067:
	sb	$2,0($13)
	bne	$24,$4,.L1068
	daddiu	$13,$13,1

	addiu	$15,$15,-1
	move	$4,$14
	bne	$15,$0,.L1069
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi8EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi8EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi8EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi8EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi8EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi8EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$7,$7,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi8EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi8EEEvPKslPsli)))
	sd	$18,16($sp)
	daddu	$18,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$18,$18,1
	sd	$17,8($sp)
	dsll	$17,$5,2
	li	$5,8			# 0x8
	sd	$20,32($sp)
	dlsa	$8,$8,$2,3
	sd	$19,24($sp)
	.align	3
.L1075:
	daddu	$24,$4,$16
	move	$15,$6
	daddu	$14,$4,$17
	move	$13,$24
	daddu	$12,$4,$18
	daddiu	$19,$4,4
.L1074:
	lh	$11,0($13)
	daddiu	$4,$4,2
	daddiu	$14,$14,2
	lh	$9,2($8)
	daddiu	$12,$12,2
	daddiu	$15,$15,2
	lh	$10,-2($4)
	daddiu	$13,$13,2
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$25,4($8)
	lh	$9,-2($14)
	lh	$2,6($8)
	lh	$3,-2($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$25
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$19,$4,.L1074
	sh	$2,-2($15)

	addiu	$5,$5,-1
	move	$4,$24
	bne	$5,$0,.L1075
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi8EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi8EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi8EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi8EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi8EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi8EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$3,8			# 0x8
	.align	3
.L1080:
	lbu	$2,0($4)
	addiu	$3,$3,-1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	sh	$2,0($6)
	lbu	$2,1($4)
	daddu	$4,$4,$5
	sll	$2,$2,6
	addiu	$2,$2,-8192
	sh	$2,2($6)
	bne	$3,$0,.L1080
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi8EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi8EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi8EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi32EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi32EEEvPKhlPhli)))
	li	$15,32			# 0x20
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi32EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L1087:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,32
	.align	3
.L1086:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1091
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1091:
	bgez	$3,.L1085
	nop

	move	$2,$0
.L1085:
	sb	$2,0($14)
	bne	$24,$9,.L1086
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L1087
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi32EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi32EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi32EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi32EEEvPKhlPslii)))
	li	$24,32			# 0x20
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi32EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L1093
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,39			# 0x27
	dsubu	$4,$4,$2
.L1093:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L1095:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,32
	.align	3
.L1094:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L1094
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L1095
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi32EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi32EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi32EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi32EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi32EEEvPKhlPhli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi32EEEvPKhlPhli)))
	daddu	$6,$2,$5
	sd	$5,40($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$6
	li	$25,32			# 0x20
	sd	$2,56($sp)
	dsll	$2,$5,3
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L1106:
	ld	$2,40($sp)
	move	$23,$21
	daddiu	$fp,$15,32
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L1105:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$20,$20,1
	lh	$9,2($8)
	daddiu	$22,$22,1
	daddiu	$19,$19,1
	lbu	$2,-1($15)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$4,0($8)
	daddiu	$16,$16,1
	daddiu	$24,$24,1
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lbu	$3,-1($24)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1103
	move	$3,$2

	move	$3,$0
.L1103:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1104
	nop

	li	$2,255			# 0xff
.L1104:
	sb	$2,0($23)
	bne	$fp,$15,.L1105
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1106
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi32EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi32EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi32EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi32EEEvPKhlPsli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi32EEEvPKhlPsli)))
	daddu	$6,$2,$5
	sd	$2,56($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$5,3
	dsubu	$4,$4,$6
	sd	$5,48($sp)
	li	$25,32			# 0x20
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L1112:
	ld	$2,48($sp)
	move	$23,$21
	daddiu	$fp,$15,32
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L1111:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$22,$22,1
	lh	$9,2($8)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lbu	$2,-1($15)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	lh	$4,0($8)
	daddiu	$24,$24,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,1
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lbu	$3,-1($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$15,.L1111
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1112
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi32EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi32EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi32EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi32EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi32EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi32EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi32EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$2,64($sp)
	daddu	$2,$2,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi32EEEvPKslPhli)))
	sd	$6,0($sp)
	dsll	$10,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$9,$5,3
	dsll	$2,$2,2
	sd	$fp,152($sp)
	dsubu	$4,$4,$10
	li	$fp,524288			# 0x80000
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,32			# 0x20
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	move	$15,$4
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1120:
	ld	$2,64($sp)
	daddiu	$23,$15,64
	ld	$22,0($sp)
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$15,$2
	ld	$2,72($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$25,$15,$2
	.align	3
.L1119:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$20,$20,2
	lh	$9,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($15)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$4,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lh	$9,-2($21)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1117
	move	$3,$2

	move	$3,$0
.L1117:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1118
	nop

	li	$2,255			# 0xff
.L1118:
	sb	$2,0($22)
	bne	$23,$15,.L1119
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$15,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L1120
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi32EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi32EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi32EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi32EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi32EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi32EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi32EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi32EEEvPKslPsli)))
	dsll	$6,$5,3
	sd	$2,56($sp)
	sd	$3,48($sp)
	daddu	$2,$2,$5
	daddu	$3,$3,$5
	sd	$6,40($sp)
	dsubu	$5,$6,$5
	dsll	$9,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$2,2
	dsubu	$4,$4,$9
	dsll	$3,$3,1
	sd	$2,24($sp)
	li	$25,32			# 0x20
	dsll	$2,$5,1
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$6,4
	dsll	$6,$7,1
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,64($sp)
	sd	$6,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1126:
	ld	$2,56($sp)
	move	$23,$21
	daddiu	$fp,$15,64
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,64($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$24,$15,$2
	.align	3
.L1125:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$22,$22,2
	lh	$9,2($8)
	daddiu	$19,$19,2
	daddiu	$18,$18,2
	lh	$2,-2($15)
	daddiu	$17,$17,2
	daddiu	$16,$16,2
	lh	$4,0($8)
	daddiu	$24,$24,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,2
	lh	$9,-2($22)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lh	$3,-2($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$15,.L1125
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1126
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi32EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi32EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi32EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi32EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi32EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi32EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,32			# 0x20
	.align	3
.L1132:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,64
	.align	3
.L1131:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L1131
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1132
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi32EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi32EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi32EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi16EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi16EEEvPKhlPhli)))
	li	$14,16			# 0x10
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi16EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L1140:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,16
	.align	3
.L1139:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1144
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1144:
	bgez	$3,.L1138
	nop

	move	$2,$0
.L1138:
	sb	$2,0($13)
	bne	$15,$9,.L1139
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L1140
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi16EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi16EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi16EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi16EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,16			# 0x10
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi16EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L1146
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,19			# 0x13
.L1146:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L1148:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,16
	.align	3
.L1147:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L1147
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L1148
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi16EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi16EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi16EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi16EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi16EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi16EEEvPKhlPhli)))
	li	$16,16			# 0x10
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L1159:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,16
	.align	3
.L1158:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1156
	move	$3,$2

	move	$3,$0
.L1156:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1157
	nop

	li	$2,255			# 0xff
.L1157:
	sb	$2,0($13)
	bne	$14,$4,.L1158
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L1159
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi16EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi16EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi16EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi16EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi16EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,16			# 0x10
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L1165:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,16
	.align	3
.L1164:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L1164
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L1165
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi16EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi16EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi16EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi16EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi16EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi16EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi16EEEvPKslPhli)))
	li	$24,16			# 0x10
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi16EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L1173:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,32
	.align	3
.L1172:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1170
	move	$3,$2

	move	$3,$0
.L1170:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1171
	nop

	li	$2,255			# 0xff
.L1171:
	sb	$2,0($12)
	bne	$13,$4,.L1172
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L1173
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi16EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi16EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi16EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi16EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi16EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi16EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi16EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi16EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,16			# 0x10
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L1179:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,32
	.align	3
.L1178:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L1178
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L1179
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi16EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi16EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi16EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi16EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi16EEEvPKhlPhli)))
	li	$15,16			# 0x10
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi16EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L1187:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,32
	.align	3
.L1186:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1191
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1191:
	bgez	$3,.L1185
	nop

	move	$2,$0
.L1185:
	sb	$2,0($14)
	bne	$24,$9,.L1186
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L1187
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi16EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi16EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi16EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi16EEEvPKhlPslii)))
	li	$24,16			# 0x10
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi16EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L1193
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,23			# 0x17
	dsubu	$4,$4,$2
.L1193:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L1195:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,32
	.align	3
.L1194:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L1194
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L1195
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi16EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi16EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi16EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi16EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi16EEEvPKhlPhli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi16EEEvPKhlPhli)))
	daddu	$6,$2,$5
	sd	$5,40($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$6
	li	$25,16			# 0x10
	sd	$2,56($sp)
	dsll	$2,$5,3
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L1206:
	ld	$2,40($sp)
	move	$23,$21
	daddiu	$fp,$15,32
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L1205:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$20,$20,1
	lh	$9,2($8)
	daddiu	$22,$22,1
	daddiu	$19,$19,1
	lbu	$2,-1($15)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$4,0($8)
	daddiu	$16,$16,1
	daddiu	$24,$24,1
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lbu	$3,-1($24)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1203
	move	$3,$2

	move	$3,$0
.L1203:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1204
	nop

	li	$2,255			# 0xff
.L1204:
	sb	$2,0($23)
	bne	$fp,$15,.L1205
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1206
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi16EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi16EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi16EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi16EEEvPKhlPsli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi16EEEvPKhlPsli)))
	daddu	$6,$2,$5
	sd	$2,56($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$5,3
	dsubu	$4,$4,$6
	sd	$5,48($sp)
	li	$25,16			# 0x10
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L1212:
	ld	$2,48($sp)
	move	$23,$21
	daddiu	$fp,$15,32
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L1211:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$22,$22,1
	lh	$9,2($8)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lbu	$2,-1($15)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	lh	$4,0($8)
	daddiu	$24,$24,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,1
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lbu	$3,-1($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$15,.L1211
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1212
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi16EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi16EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi16EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi16EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi16EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi16EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi16EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$2,64($sp)
	daddu	$2,$2,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi16EEEvPKslPhli)))
	sd	$6,0($sp)
	dsll	$10,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$9,$5,3
	dsll	$2,$2,2
	sd	$fp,152($sp)
	dsubu	$4,$4,$10
	li	$fp,524288			# 0x80000
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,16			# 0x10
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	move	$15,$4
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1220:
	ld	$2,64($sp)
	daddiu	$23,$15,64
	ld	$22,0($sp)
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$15,$2
	ld	$2,72($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$25,$15,$2
	.align	3
.L1219:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$20,$20,2
	lh	$9,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($15)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$4,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lh	$9,-2($21)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1217
	move	$3,$2

	move	$3,$0
.L1217:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1218
	nop

	li	$2,255			# 0xff
.L1218:
	sb	$2,0($22)
	bne	$23,$15,.L1219
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$15,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L1220
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi16EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi16EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi16EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi16EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi16EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi16EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi16EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi16EEEvPKslPsli)))
	dsll	$6,$5,3
	sd	$2,56($sp)
	sd	$3,48($sp)
	daddu	$2,$2,$5
	daddu	$3,$3,$5
	sd	$6,40($sp)
	dsubu	$5,$6,$5
	dsll	$9,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$2,2
	dsubu	$4,$4,$9
	dsll	$3,$3,1
	sd	$2,24($sp)
	li	$25,16			# 0x10
	dsll	$2,$5,1
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$6,4
	dsll	$6,$7,1
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,64($sp)
	sd	$6,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1226:
	ld	$2,56($sp)
	move	$23,$21
	daddiu	$fp,$15,64
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,64($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$24,$15,$2
	.align	3
.L1225:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$22,$22,2
	lh	$9,2($8)
	daddiu	$19,$19,2
	daddiu	$18,$18,2
	lh	$2,-2($15)
	daddiu	$17,$17,2
	daddiu	$16,$16,2
	lh	$4,0($8)
	daddiu	$24,$24,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,2
	lh	$9,-2($22)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lh	$3,-2($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$15,.L1225
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1226
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi16EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi16EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi16EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi16EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi16EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi16EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,16			# 0x10
	.align	3
.L1232:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,64
	.align	3
.L1231:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L1231
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1232
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi16EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi16EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi16EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi8EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi8EEEvPKhlPhli)))
	li	$14,8			# 0x8
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi8EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L1240:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,16
	.align	3
.L1239:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1244
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1244:
	bgez	$3,.L1238
	nop

	move	$2,$0
.L1238:
	sb	$2,0($13)
	bne	$15,$9,.L1239
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L1240
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi8EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi8EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi8EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi8EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,8			# 0x8
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi8EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L1246
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,11			# 0xb
.L1246:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L1248:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,16
	.align	3
.L1247:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L1247
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L1248
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi8EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi8EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi8EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi8EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi8EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi8EEEvPKhlPhli)))
	li	$16,8			# 0x8
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L1259:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,16
	.align	3
.L1258:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1256
	move	$3,$2

	move	$3,$0
.L1256:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1257
	nop

	li	$2,255			# 0xff
.L1257:
	sb	$2,0($13)
	bne	$14,$4,.L1258
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L1259
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi8EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi8EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi8EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi8EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi8EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,8			# 0x8
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L1265:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,16
	.align	3
.L1264:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L1264
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L1265
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi8EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi8EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi8EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi8EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi8EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi8EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi8EEEvPKslPhli)))
	li	$24,8			# 0x8
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi8EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L1273:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,32
	.align	3
.L1272:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1270
	move	$3,$2

	move	$3,$0
.L1270:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1271
	nop

	li	$2,255			# 0xff
.L1271:
	sb	$2,0($12)
	bne	$13,$4,.L1272
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L1273
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi8EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi8EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi8EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi8EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi8EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi8EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi8EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi8EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,8			# 0x8
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L1279:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,32
	.align	3
.L1278:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L1278
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L1279
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi8EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi8EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi8EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi32EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi32EEEvPKhlPhli)))
	li	$15,32			# 0x20
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi32EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L1287:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,16
	.align	3
.L1286:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1291
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1291:
	bgez	$3,.L1285
	nop

	move	$2,$0
.L1285:
	sb	$2,0($14)
	bne	$24,$9,.L1286
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L1287
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi32EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi32EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi32EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi32EEEvPKhlPslii)))
	li	$24,32			# 0x20
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi32EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L1293
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,39			# 0x27
	dsubu	$4,$4,$2
.L1293:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L1295:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,16
	.align	3
.L1294:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L1294
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L1295
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi32EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi32EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi32EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi32EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi32EEEvPKhlPhli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi32EEEvPKhlPhli)))
	daddu	$6,$2,$5
	sd	$5,40($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$6
	li	$25,32			# 0x20
	sd	$2,56($sp)
	dsll	$2,$5,3
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L1306:
	ld	$2,40($sp)
	move	$23,$21
	daddiu	$fp,$15,16
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L1305:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$20,$20,1
	lh	$9,2($8)
	daddiu	$22,$22,1
	daddiu	$19,$19,1
	lbu	$2,-1($15)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$4,0($8)
	daddiu	$16,$16,1
	daddiu	$24,$24,1
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lbu	$3,-1($24)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1303
	move	$3,$2

	move	$3,$0
.L1303:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1304
	nop

	li	$2,255			# 0xff
.L1304:
	sb	$2,0($23)
	bne	$fp,$15,.L1305
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1306
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi32EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi32EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi32EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi32EEEvPKhlPsli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi32EEEvPKhlPsli)))
	daddu	$6,$2,$5
	sd	$2,56($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$5,3
	dsubu	$4,$4,$6
	sd	$5,48($sp)
	li	$25,32			# 0x20
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L1312:
	ld	$2,48($sp)
	move	$23,$21
	daddiu	$fp,$15,16
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L1311:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$22,$22,1
	lh	$9,2($8)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lbu	$2,-1($15)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	lh	$4,0($8)
	daddiu	$24,$24,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,1
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lbu	$3,-1($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$15,.L1311
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1312
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi32EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi32EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi32EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi32EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi32EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi32EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi32EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$2,64($sp)
	daddu	$2,$2,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi32EEEvPKslPhli)))
	sd	$6,0($sp)
	dsll	$10,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$9,$5,3
	dsll	$2,$2,2
	sd	$fp,152($sp)
	dsubu	$4,$4,$10
	li	$fp,524288			# 0x80000
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,32			# 0x20
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	move	$15,$4
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1320:
	ld	$2,64($sp)
	daddiu	$23,$15,32
	ld	$22,0($sp)
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$15,$2
	ld	$2,72($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$25,$15,$2
	.align	3
.L1319:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$20,$20,2
	lh	$9,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($15)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$4,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lh	$9,-2($21)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1317
	move	$3,$2

	move	$3,$0
.L1317:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1318
	nop

	li	$2,255			# 0xff
.L1318:
	sb	$2,0($22)
	bne	$23,$15,.L1319
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$15,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L1320
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi32EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi32EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi32EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi32EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi32EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi32EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi32EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi32EEEvPKslPsli)))
	dsll	$6,$5,3
	sd	$2,56($sp)
	sd	$3,48($sp)
	daddu	$2,$2,$5
	daddu	$3,$3,$5
	sd	$6,40($sp)
	dsubu	$5,$6,$5
	dsll	$9,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$2,2
	dsubu	$4,$4,$9
	dsll	$3,$3,1
	sd	$2,24($sp)
	li	$25,32			# 0x20
	dsll	$2,$5,1
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$6,4
	dsll	$6,$7,1
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,64($sp)
	sd	$6,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1326:
	ld	$2,56($sp)
	move	$23,$21
	daddiu	$fp,$15,32
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,64($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$24,$15,$2
	.align	3
.L1325:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$22,$22,2
	lh	$9,2($8)
	daddiu	$19,$19,2
	daddiu	$18,$18,2
	lh	$2,-2($15)
	daddiu	$17,$17,2
	daddiu	$16,$16,2
	lh	$4,0($8)
	daddiu	$24,$24,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,2
	lh	$9,-2($22)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lh	$3,-2($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$15,.L1325
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1326
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi32EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi32EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi32EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi32EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi32EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi32EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,32			# 0x20
	.align	3
.L1332:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,32
	.align	3
.L1331:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L1331
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1332
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi32EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi32EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi32EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi16EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi16EEEvPKhlPhli)))
	li	$14,16			# 0x10
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi16EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L1340:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,8
	.align	3
.L1339:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1344
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1344:
	bgez	$3,.L1338
	nop

	move	$2,$0
.L1338:
	sb	$2,0($13)
	bne	$15,$9,.L1339
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L1340
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi16EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi16EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi16EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi16EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$16,16			# 0x10
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi16EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L1346
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$16,19			# 0x13
.L1346:
	dsll	$7,$7,1
	move	$25,$0
	.align	3
.L1348:
	move	$2,$4
	move	$13,$6
	daddiu	$24,$4,8
	.align	3
.L1347:
	lbu	$12,1($2)
	daddiu	$2,$2,1
	daddiu	$13,$13,2
	lh	$10,2($8)
	lh	$15,0($8)
	lbu	$11,-1($2)
	gsmultu	$12,$12,$10
	lh	$14,4($8)
	lbu	$10,1($2)
	lh	$3,6($8)
	lbu	$9,2($2)
	mtlo	$12
	madd	$11,$15
	madd	$10,$14
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L1347
	sh	$3,-2($13)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$16,$25,.L1348
	daddu	$6,$6,$7

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi16EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi16EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi16EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi16EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi16EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi16EEEvPKhlPhli)))
	li	$16,16			# 0x10
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L1359:
	daddu	$15,$4,$5
	move	$10,$6
	daddu	$13,$4,$24
	move	$12,$15
	daddu	$11,$4,$25
	daddiu	$14,$4,8
	.align	3
.L1358:
	lbu	$18,0($12)
	daddiu	$4,$4,1
	daddiu	$12,$12,1
	lh	$9,2($8)
	daddiu	$13,$13,1
	daddiu	$11,$11,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($13)
	lbu	$3,-1($11)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1356
	move	$3,$2

	move	$3,$0
.L1356:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1357
	nop

	li	$2,255			# 0xff
.L1357:
	sb	$2,0($10)
	bne	$14,$4,.L1358
	daddiu	$10,$10,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L1359
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi16EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi16EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi16EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi16EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi16EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,16			# 0x10
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L1365:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,8
	.align	3
.L1364:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L1364
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L1365
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi16EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi16EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi16EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi16EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi16EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi16EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi16EEEvPKslPhli)))
	li	$24,16			# 0x10
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi16EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L1373:
	daddu	$15,$4,$25
	move	$9,$6
	daddu	$12,$4,$16
	move	$11,$15
	daddu	$10,$4,$17
	daddiu	$13,$4,16
	.align	3
.L1372:
	lh	$19,0($11)
	daddiu	$4,$4,2
	daddiu	$11,$11,2
	lh	$5,2($8)
	daddiu	$12,$12,2
	daddiu	$10,$10,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($12)
	lh	$3,-2($10)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1370
	move	$3,$2

	move	$3,$0
.L1370:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1371
	nop

	li	$2,255			# 0xff
.L1371:
	sb	$2,0($9)
	bne	$13,$4,.L1372
	daddiu	$9,$9,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L1373
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi16EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi16EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi16EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi16EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi16EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi16EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi16EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi16EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,16			# 0x10
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L1379:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,16
	.align	3
.L1378:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L1378
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L1379
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi16EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi16EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi16EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi24EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi24EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi24EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi24EEEvPKhlPhli)))
	li	$15,24			# 0x18
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi24EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L1387:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,32
	.align	3
.L1386:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1391
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1391:
	bgez	$3,.L1385
	nop

	move	$2,$0
.L1385:
	sb	$2,0($14)
	bne	$24,$9,.L1386
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L1387
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi24EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi24EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi24EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi24EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi24EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi24EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi24EEEvPKhlPslii)))
	li	$24,24			# 0x18
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi24EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L1393
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,31			# 0x1f
	dsubu	$4,$4,$2
.L1393:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L1395:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,32
	.align	3
.L1394:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L1394
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L1395
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi24EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi24EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi24EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi24EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi24EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi24EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi24EEEvPKhlPhli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi24EEEvPKhlPhli)))
	daddu	$6,$2,$5
	sd	$5,40($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$6
	li	$25,24			# 0x18
	sd	$2,56($sp)
	dsll	$2,$5,3
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L1406:
	ld	$2,40($sp)
	move	$23,$21
	daddiu	$fp,$15,32
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L1405:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$20,$20,1
	lh	$9,2($8)
	daddiu	$22,$22,1
	daddiu	$19,$19,1
	lbu	$2,-1($15)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$4,0($8)
	daddiu	$16,$16,1
	daddiu	$24,$24,1
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lbu	$3,-1($24)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1403
	move	$3,$2

	move	$3,$0
.L1403:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1404
	nop

	li	$2,255			# 0xff
.L1404:
	sb	$2,0($23)
	bne	$fp,$15,.L1405
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1406
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi24EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi24EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi24EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi24EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi24EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi24EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi24EEEvPKhlPsli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi24EEEvPKhlPsli)))
	daddu	$6,$2,$5
	sd	$2,56($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$5,3
	dsubu	$4,$4,$6
	sd	$5,48($sp)
	li	$25,24			# 0x18
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L1412:
	ld	$2,48($sp)
	move	$23,$21
	daddiu	$fp,$15,32
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L1411:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$22,$22,1
	lh	$9,2($8)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lbu	$2,-1($15)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	lh	$4,0($8)
	daddiu	$24,$24,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,1
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lbu	$3,-1($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$15,.L1411
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1412
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi24EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi24EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi24EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi24EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi24EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi24EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi24EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$2,64($sp)
	daddu	$2,$2,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi24EEEvPKslPhli)))
	sd	$6,0($sp)
	dsll	$10,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$9,$5,3
	dsll	$2,$2,2
	sd	$fp,152($sp)
	dsubu	$4,$4,$10
	li	$fp,524288			# 0x80000
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,24			# 0x18
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	move	$15,$4
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1420:
	ld	$2,64($sp)
	daddiu	$23,$15,64
	ld	$22,0($sp)
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$15,$2
	ld	$2,72($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$25,$15,$2
	.align	3
.L1419:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$20,$20,2
	lh	$9,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($15)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$4,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lh	$9,-2($21)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1417
	move	$3,$2

	move	$3,$0
.L1417:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1418
	nop

	li	$2,255			# 0xff
.L1418:
	sb	$2,0($22)
	bne	$23,$15,.L1419
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$15,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L1420
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi24EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi24EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi24EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi24EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi24EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi24EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi24EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi24EEEvPKslPsli)))
	dsll	$6,$5,3
	sd	$2,56($sp)
	sd	$3,48($sp)
	daddu	$2,$2,$5
	daddu	$3,$3,$5
	sd	$6,40($sp)
	dsubu	$5,$6,$5
	dsll	$9,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$2,2
	dsubu	$4,$4,$9
	dsll	$3,$3,1
	sd	$2,24($sp)
	li	$25,24			# 0x18
	dsll	$2,$5,1
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$6,4
	dsll	$6,$7,1
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,64($sp)
	sd	$6,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1426:
	ld	$2,56($sp)
	move	$23,$21
	daddiu	$fp,$15,64
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,64($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$24,$15,$2
	.align	3
.L1425:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$22,$22,2
	lh	$9,2($8)
	daddiu	$19,$19,2
	daddiu	$18,$18,2
	lh	$2,-2($15)
	daddiu	$17,$17,2
	daddiu	$16,$16,2
	lh	$4,0($8)
	daddiu	$24,$24,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,2
	lh	$9,-2($22)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lh	$3,-2($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$15,.L1425
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1426
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi24EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi24EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi24EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi24EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi24EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi24EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,24			# 0x18
	.align	3
.L1432:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,64
	.align	3
.L1431:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L1431
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1432
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi24EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi24EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi24EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi12EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi12EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi12EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi12EEEvPKhlPhli)))
	li	$14,12			# 0xc
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi12EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L1440:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,16
	.align	3
.L1439:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1444
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1444:
	bgez	$3,.L1438
	nop

	move	$2,$0
.L1438:
	sb	$2,0($13)
	bne	$15,$9,.L1439
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L1440
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi12EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi12EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi12EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi12EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi12EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi12EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi12EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,12			# 0xc
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi12EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L1446
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,15			# 0xf
.L1446:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L1448:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,16
	.align	3
.L1447:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L1447
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L1448
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi12EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi12EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi12EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi12EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi12EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi12EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi12EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi12EEEvPKhlPhli)))
	li	$16,12			# 0xc
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L1459:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,16
	.align	3
.L1458:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1456
	move	$3,$2

	move	$3,$0
.L1456:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1457
	nop

	li	$2,255			# 0xff
.L1457:
	sb	$2,0($13)
	bne	$14,$4,.L1458
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L1459
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi12EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi12EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi12EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi12EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi12EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi12EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi12EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi12EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,12			# 0xc
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L1465:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,16
	.align	3
.L1464:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L1464
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L1465
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi12EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi12EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi12EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi12EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi12EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi12EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi12EEEvPKslPhli)))
	li	$24,12			# 0xc
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi12EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L1473:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,32
	.align	3
.L1472:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1470
	move	$3,$2

	move	$3,$0
.L1470:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1471
	nop

	li	$2,255			# 0xff
.L1471:
	sb	$2,0($12)
	bne	$13,$4,.L1472
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L1473
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi12EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi12EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi12EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi12EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi12EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi12EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi12EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi12EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,12			# 0xc
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L1479:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,32
	.align	3
.L1478:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L1478
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L1479
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi12EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi12EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi12EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi24ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi24ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi24ELi32EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi24ELi32EEEvPKhlPhli)))
	li	$15,32			# 0x20
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi24ELi32EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L1487:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,24
	.align	3
.L1486:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1491
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1491:
	bgez	$3,.L1485
	nop

	move	$2,$0
.L1485:
	sb	$2,0($14)
	bne	$24,$9,.L1486
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L1487
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi24ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi24ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi24ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi24ELi32EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi24ELi32EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi24ELi32EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi24ELi32EEEvPKhlPslii)))
	li	$24,32			# 0x20
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi24ELi32EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L1493
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,39			# 0x27
	dsubu	$4,$4,$2
.L1493:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L1495:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,24
	.align	3
.L1494:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L1494
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L1495
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi24ELi32EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi24ELi32EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi24ELi32EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi24ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi24ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi24ELi32EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi24ELi32EEEvPKhlPhli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi24ELi32EEEvPKhlPhli)))
	daddu	$6,$2,$5
	sd	$5,40($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$6
	li	$25,32			# 0x20
	sd	$2,56($sp)
	dsll	$2,$5,3
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L1506:
	ld	$2,40($sp)
	move	$23,$21
	daddiu	$fp,$15,24
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L1505:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$20,$20,1
	lh	$9,2($8)
	daddiu	$22,$22,1
	daddiu	$19,$19,1
	lbu	$2,-1($15)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$4,0($8)
	daddiu	$16,$16,1
	daddiu	$24,$24,1
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lbu	$3,-1($24)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1503
	move	$3,$2

	move	$3,$0
.L1503:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1504
	nop

	li	$2,255			# 0xff
.L1504:
	sb	$2,0($23)
	bne	$fp,$15,.L1505
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1506
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi24ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi24ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi24ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi24ELi32EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi24ELi32EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi24ELi32EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi24ELi32EEEvPKhlPsli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi24ELi32EEEvPKhlPsli)))
	daddu	$6,$2,$5
	sd	$2,56($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$5,3
	dsubu	$4,$4,$6
	sd	$5,48($sp)
	li	$25,32			# 0x20
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L1512:
	ld	$2,48($sp)
	move	$23,$21
	daddiu	$fp,$15,24
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L1511:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$22,$22,1
	lh	$9,2($8)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lbu	$2,-1($15)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	lh	$4,0($8)
	daddiu	$24,$24,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,1
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lbu	$3,-1($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$15,.L1511
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1512
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi24ELi32EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi24ELi32EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi24ELi32EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi24ELi32EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi24ELi32EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi24ELi32EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi24ELi32EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$2,64($sp)
	daddu	$2,$2,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi24ELi32EEEvPKslPhli)))
	sd	$6,0($sp)
	dsll	$10,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$9,$5,3
	dsll	$2,$2,2
	sd	$fp,152($sp)
	dsubu	$4,$4,$10
	li	$fp,524288			# 0x80000
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,32			# 0x20
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	move	$15,$4
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1520:
	ld	$2,64($sp)
	daddiu	$23,$15,48
	ld	$22,0($sp)
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$15,$2
	ld	$2,72($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$25,$15,$2
	.align	3
.L1519:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$20,$20,2
	lh	$9,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($15)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$4,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lh	$9,-2($21)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1517
	move	$3,$2

	move	$3,$0
.L1517:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1518
	nop

	li	$2,255			# 0xff
.L1518:
	sb	$2,0($22)
	bne	$23,$15,.L1519
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$15,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L1520
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi24ELi32EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi24ELi32EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi24ELi32EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi24ELi32EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi24ELi32EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi24ELi32EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi24ELi32EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi24ELi32EEEvPKslPsli)))
	dsll	$6,$5,3
	sd	$2,56($sp)
	sd	$3,48($sp)
	daddu	$2,$2,$5
	daddu	$3,$3,$5
	sd	$6,40($sp)
	dsubu	$5,$6,$5
	dsll	$9,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$2,2
	dsubu	$4,$4,$9
	dsll	$3,$3,1
	sd	$2,24($sp)
	li	$25,32			# 0x20
	dsll	$2,$5,1
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$6,4
	dsll	$6,$7,1
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,64($sp)
	sd	$6,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1526:
	ld	$2,56($sp)
	move	$23,$21
	daddiu	$fp,$15,48
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,64($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$24,$15,$2
	.align	3
.L1525:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$22,$22,2
	lh	$9,2($8)
	daddiu	$19,$19,2
	daddiu	$18,$18,2
	lh	$2,-2($15)
	daddiu	$17,$17,2
	daddiu	$16,$16,2
	lh	$4,0($8)
	daddiu	$24,$24,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,2
	lh	$9,-2($22)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lh	$3,-2($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$15,.L1525
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1526
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi24ELi32EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi24ELi32EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi24ELi32EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi24ELi32EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi24ELi32EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi24ELi32EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,32			# 0x20
	.align	3
.L1532:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,48
	.align	3
.L1531:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L1531
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1532
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi24ELi32EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi24ELi32EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi24ELi32EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi16EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi16EEEvPKhlPhli)))
	li	$14,16			# 0x10
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi16EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L1540:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,12
	.align	3
.L1539:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1544
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1544:
	bgez	$3,.L1538
	nop

	move	$2,$0
.L1538:
	sb	$2,0($13)
	bne	$15,$9,.L1539
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L1540
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi16EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi16EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi16EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi16EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,16			# 0x10
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi16EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L1546
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,19			# 0x13
.L1546:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L1548:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,12
	.align	3
.L1547:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L1547
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L1548
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi16EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi16EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi16EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi16EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi16EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi16EEEvPKhlPhli)))
	li	$16,16			# 0x10
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L1559:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,12
	.align	3
.L1558:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1556
	move	$3,$2

	move	$3,$0
.L1556:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1557
	nop

	li	$2,255			# 0xff
.L1557:
	sb	$2,0($13)
	bne	$14,$4,.L1558
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L1559
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi16EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi16EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi16EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi16EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi16EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,16			# 0x10
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L1565:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,12
	.align	3
.L1564:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L1564
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L1565
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi16EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi16EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi16EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi16EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi16EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi16EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi16EEEvPKslPhli)))
	li	$24,16			# 0x10
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi16EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L1573:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,24
	.align	3
.L1572:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1570
	move	$3,$2

	move	$3,$0
.L1570:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1571
	nop

	li	$2,255			# 0xff
.L1571:
	sb	$2,0($12)
	bne	$13,$4,.L1572
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L1573
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi16EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi16EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi16EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi16EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi16EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi16EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi16EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi16EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,16			# 0x10
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L1579:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,24
	.align	3
.L1578:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L1578
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L1579
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi16EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi16EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi16EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi8EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi8EEEvPKhlPhli)))
	li	$15,8			# 0x8
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi8EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L1587:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,32
	.align	3
.L1586:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1591
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1591:
	bgez	$3,.L1585
	nop

	move	$2,$0
.L1585:
	sb	$2,0($14)
	bne	$24,$9,.L1586
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L1587
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi8EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi8EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi8EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi8EEEvPKhlPslii)))
	li	$24,8			# 0x8
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi8EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L1593
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,15			# 0xf
	dsubu	$4,$4,$2
.L1593:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L1595:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,32
	.align	3
.L1594:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L1594
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L1595
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi8EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi8EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi8EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi8EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi8EEEvPKhlPhli)))
	dsll	$10,$5,2
	daddu	$28,$28,$25
	daddu	$9,$2,$5
	sd	$5,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi8EEEvPKhlPhli)))
	sd	$2,56($sp)
	dsll	$2,$5,3
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,8			# 0x8
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L1606:
	ld	$2,40($sp)
	move	$23,$6
	daddiu	$fp,$4,32
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
	.align	3
.L1605:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$21,$21,1
	lh	$11,2($8)
	daddiu	$22,$22,1
	daddiu	$20,$20,1
	lbu	$2,-1($4)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lh	$5,0($8)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lbu	$3,-1($16)
	lh	$2,14($8)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1603
	move	$3,$2

	move	$3,$0
.L1603:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1604
	nop

	li	$2,255			# 0xff
.L1604:
	sb	$2,0($23)
	bne	$fp,$4,.L1605
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L1606
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi8EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi8EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi8EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi8EEEvPKhlPsli)))
	daddu	$9,$2,$5
	daddu	$28,$28,$25
	dsll	$10,$5,2
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi8EEEvPKhlPsli)))
	dsll	$2,$5,3
	sd	$5,48($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,8			# 0x8
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L1612:
	ld	$2,48($sp)
	move	$23,$6
	daddiu	$fp,$4,32
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
	.align	3
.L1611:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$22,$22,1
	lh	$11,2($8)
	daddiu	$20,$20,1
	daddiu	$19,$19,1
	lbu	$2,-1($4)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$5,0($8)
	daddiu	$16,$16,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,1
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lbu	$3,-1($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$4,.L1611
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L1612
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi8EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi8EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi8EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi8EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi8EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi8EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi8EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$6,0($sp)
	dsll	$9,$5,3
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi8EEEvPKslPhli)))
	sd	$2,64($sp)
	daddu	$2,$2,$5
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	sd	$fp,152($sp)
	li	$fp,524288			# 0x80000
	dsubu	$4,$4,$10
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,8			# 0x8
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1620:
	ld	$2,64($sp)
	daddiu	$23,$4,64
	ld	$22,0($sp)
	daddu	$20,$4,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$4,$2
	ld	$2,72($sp)
	daddu	$19,$4,$2
	ld	$2,40($sp)
	daddu	$18,$4,$2
	ld	$2,32($sp)
	daddu	$17,$4,$2
	ld	$2,24($sp)
	daddu	$16,$4,$2
	ld	$2,16($sp)
	daddu	$25,$4,$2
	.align	3
.L1619:
	lh	$3,0($20)
	daddiu	$4,$4,2
	daddiu	$20,$20,2
	lh	$10,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$10
	lh	$15,4($8)
	lh	$10,-2($21)
	lh	$9,-2($19)
	lh	$14,6($8)
	lh	$7,-2($18)
	mtlo	$3
	lh	$13,8($8)
	madd	$2,$5
	lh	$6,-2($17)
	lh	$12,10($8)
	lh	$5,-2($16)
	lh	$11,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1617
	move	$3,$2

	move	$3,$0
.L1617:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1618
	nop

	li	$2,255			# 0xff
.L1618:
	sb	$2,0($22)
	bne	$23,$4,.L1619
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$4,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L1620
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi8EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi8EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi8EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi8EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi8EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi8EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi8EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	dsll	$9,$5,3
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi8EEEvPKslPsli)))
	daddu	$2,$2,$5
	sd	$3,48($sp)
	sd	$9,40($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	ld	$9,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	dsll	$7,$7,1
	dsll	$3,$3,1
	sd	$2,24($sp)
	dsubu	$4,$4,$10
	dsll	$2,$5,1
	sd	$fp,152($sp)
	dlsa	$8,$8,$9,4
	li	$25,8			# 0x8
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,64($sp)
	sd	$7,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1626:
	ld	$2,56($sp)
	move	$23,$6
	daddiu	$fp,$4,64
	daddu	$21,$4,$2
	ld	$2,48($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,64($sp)
	daddu	$20,$4,$2
	ld	$2,40($sp)
	daddu	$19,$4,$2
	ld	$2,32($sp)
	daddu	$18,$4,$2
	ld	$2,24($sp)
	daddu	$17,$4,$2
	ld	$2,16($sp)
	daddu	$16,$4,$2
	.align	3
.L1625:
	lh	$3,0($21)
	daddiu	$4,$4,2
	daddiu	$22,$22,2
	lh	$11,2($8)
	daddiu	$20,$20,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,2
	lh	$11,-2($22)
	lh	$10,-2($20)
	lh	$15,6($8)
	lh	$9,-2($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lh	$7,-2($18)
	lh	$13,10($8)
	lh	$5,-2($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lh	$3,-2($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$4,.L1625
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L1626
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi8EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi8EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi8EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi8EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi8EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi8EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,8			# 0x8
	.align	3
.L1632:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,64
	.align	3
.L1631:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L1631
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1632
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi8EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi8EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi8EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi4EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi4EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi4EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi4EEEvPKhlPhli)))
	li	$14,4			# 0x4
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi4EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
.L1640:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,16
	.align	3
.L1639:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1644
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1644:
	bgez	$3,.L1638
	nop

	move	$2,$0
.L1638:
	sb	$2,0($13)
	bne	$15,$9,.L1639
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L1640
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi4EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi4EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi4EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi4EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi4EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi4EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi4EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,4			# 0x4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi4EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L1646
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,7			# 0x7
.L1646:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L1648:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,16
	.align	3
.L1647:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L1647
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L1648
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi4EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi4EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi4EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi4EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi4EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi4EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi4EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi4EEEvPKhlPhli)))
	li	$16,4			# 0x4
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
.L1659:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,16
	.align	3
.L1658:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1656
	move	$3,$2

	move	$3,$0
.L1656:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1657
	nop

	li	$2,255			# 0xff
.L1657:
	sb	$2,0($13)
	bne	$14,$4,.L1658
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L1659
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi4EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi4EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi4EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi4EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi4EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi4EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi4EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi4EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,4			# 0x4
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
.L1665:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,16
	.align	3
.L1664:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L1664
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L1665
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi4EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi4EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi4EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi4EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi4EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi4EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi4EEEvPKslPhli)))
	li	$24,4			# 0x4
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi4EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
.L1673:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,32
	.align	3
.L1672:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1670
	move	$3,$2

	move	$3,$0
.L1670:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1671
	nop

	li	$2,255			# 0xff
.L1671:
	sb	$2,0($12)
	bne	$13,$4,.L1672
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L1673
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi4EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi4EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi4EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi4EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi4EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi4EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi4EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi4EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,4			# 0x4
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
.L1679:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,32
	.align	3
.L1678:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L1678
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L1679
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi4EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi4EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi4EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi32EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi32EEEvPKhlPhli)))
	li	$15,32			# 0x20
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi32EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L1687:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,8
	.align	3
.L1686:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1691
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1691:
	bgez	$3,.L1685
	nop

	move	$2,$0
.L1685:
	sb	$2,0($14)
	bne	$24,$9,.L1686
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L1687
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi32EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi32EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi32EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi32EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$21,48($sp)
	li	$25,32			# 0x20
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi32EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L1693
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$25,39			# 0x27
	dsubu	$4,$4,$2
.L1693:
	dsll	$16,$7,1
	move	$7,$0
	.align	3
.L1695:
	move	$2,$4
	move	$15,$6
	daddiu	$24,$4,8
	.align	3
.L1694:
	lbu	$9,1($2)
	daddiu	$2,$2,1
	daddiu	$15,$15,2
	lh	$14,2($8)
	lh	$10,0($8)
	lbu	$3,-1($2)
	gsmultu	$9,$9,$14
	lh	$21,4($8)
	lbu	$14,1($2)
	lbu	$13,2($2)
	lh	$20,6($8)
	lbu	$12,3($2)
	mtlo	$9
	lh	$19,8($8)
	madd	$3,$10
	lbu	$11,4($2)
	lh	$18,10($8)
	lbu	$10,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$9,6($2)
	madd	$14,$21
	madd	$13,$20
	madd	$12,$19
	madd	$11,$18
	madd	$10,$17
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L1694
	sh	$3,-2($15)

	addiu	$7,$7,1
	daddu	$4,$4,$5
	bne	$25,$7,.L1695
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi32EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi32EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi32EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi32EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi32EEEvPKhlPhli)))
	dsll	$10,$5,2
	daddu	$28,$28,$25
	daddu	$9,$2,$5
	sd	$5,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi32EEEvPKhlPhli)))
	sd	$2,56($sp)
	dsll	$2,$5,3
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,32			# 0x20
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L1706:
	ld	$2,40($sp)
	move	$16,$6
	daddiu	$fp,$4,8
	daddu	$22,$4,$2
	ld	$2,56($sp)
	sd	$22,0($sp)
	daddu	$23,$4,$2
	ld	$2,8($sp)
	daddu	$21,$4,$2
	ld	$2,16($sp)
	daddu	$20,$4,$2
	ld	$2,24($sp)
	daddu	$19,$4,$2
	ld	$2,64($sp)
	daddu	$18,$4,$2
	ld	$2,32($sp)
	daddu	$17,$4,$2
	.align	3
.L1705:
	lbu	$3,0($22)
	daddiu	$4,$4,1
	daddiu	$22,$22,1
	lh	$11,2($8)
	daddiu	$23,$23,1
	daddiu	$21,$21,1
	lbu	$2,-1($4)
	daddiu	$20,$20,1
	daddiu	$19,$19,1
	lh	$5,0($8)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	lbu	$11,-1($23)
	lbu	$10,-1($21)
	lh	$15,6($8)
	lbu	$9,-1($20)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($19)
	lh	$13,10($8)
	lbu	$5,-1($18)
	lh	$12,12($8)
	lbu	$3,-1($17)
	lh	$2,14($8)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1703
	move	$3,$2

	move	$3,$0
.L1703:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1704
	nop

	li	$2,255			# 0xff
.L1704:
	sb	$2,0($16)
	bne	$fp,$4,.L1705
	daddiu	$16,$16,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L1706
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi32EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi32EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi32EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi32EEEvPKhlPsli)))
	daddu	$9,$2,$5
	daddu	$28,$28,$25
	dsll	$10,$5,2
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi32EEEvPKhlPsli)))
	dsll	$2,$5,3
	sd	$5,48($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$9
	li	$25,32			# 0x20
	sd	$fp,152($sp)
	sd	$23,136($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$22,128($sp)
	daddu	$5,$10,$5
	dsubu	$2,$2,$3
	sd	$21,120($sp)
	sd	$5,24($sp)
	dsll	$5,$9,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,16($sp)
	sd	$9,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L1712:
	ld	$2,48($sp)
	move	$23,$6
	daddiu	$fp,$4,8
	daddu	$21,$4,$2
	ld	$2,56($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,8($sp)
	daddu	$20,$4,$2
	ld	$2,16($sp)
	daddu	$19,$4,$2
	ld	$2,24($sp)
	daddu	$18,$4,$2
	ld	$2,64($sp)
	daddu	$17,$4,$2
	ld	$2,32($sp)
	daddu	$16,$4,$2
	.align	3
.L1711:
	lbu	$3,0($21)
	daddiu	$4,$4,1
	daddiu	$22,$22,1
	lh	$11,2($8)
	daddiu	$20,$20,1
	daddiu	$19,$19,1
	lbu	$2,-1($4)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$5,0($8)
	daddiu	$16,$16,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,1
	lbu	$11,-1($22)
	lbu	$10,-1($20)
	lh	$15,6($8)
	lbu	$9,-1($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lbu	$7,-1($18)
	lh	$13,10($8)
	lbu	$5,-1($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lbu	$3,-1($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$4,.L1711
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L1712
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi32EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi32EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi32EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi32EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi32EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi32EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi32EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$6,0($sp)
	dsll	$9,$5,3
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi32EEEvPKslPhli)))
	sd	$2,64($sp)
	daddu	$2,$2,$5
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	sd	$fp,152($sp)
	li	$fp,524288			# 0x80000
	dsubu	$4,$4,$10
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,32			# 0x20
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1720:
	ld	$2,64($sp)
	daddiu	$23,$4,16
	ld	$25,0($sp)
	daddu	$21,$4,$2
	ld	$2,48($sp)
	sd	$21,8($sp)
	daddu	$22,$4,$2
	ld	$2,72($sp)
	daddu	$20,$4,$2
	ld	$2,40($sp)
	daddu	$19,$4,$2
	ld	$2,32($sp)
	daddu	$18,$4,$2
	ld	$2,24($sp)
	daddu	$17,$4,$2
	ld	$2,16($sp)
	daddu	$16,$4,$2
	.align	3
.L1719:
	lh	$3,0($21)
	daddiu	$4,$4,2
	daddiu	$21,$21,2
	lh	$10,2($8)
	daddiu	$22,$22,2
	daddiu	$20,$20,2
	lh	$2,-2($4)
	daddiu	$19,$19,2
	daddiu	$18,$18,2
	lh	$5,0($8)
	daddiu	$17,$17,2
	daddiu	$16,$16,2
	gsmultu	$3,$3,$10
	lh	$15,4($8)
	lh	$10,-2($22)
	lh	$9,-2($20)
	lh	$14,6($8)
	lh	$7,-2($19)
	mtlo	$3
	lh	$13,8($8)
	madd	$2,$5
	lh	$6,-2($18)
	lh	$12,10($8)
	lh	$5,-2($17)
	lh	$11,12($8)
	lh	$3,-2($16)
	lh	$2,14($8)
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1717
	move	$3,$2

	move	$3,$0
.L1717:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1718
	nop

	li	$2,255			# 0xff
.L1718:
	sb	$2,0($25)
	bne	$23,$4,.L1719
	daddiu	$25,$25,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$4,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L1720
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi32EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi32EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi32EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi32EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi32EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi32EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi32EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	dsll	$9,$5,3
	sd	$2,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi32EEEvPKslPsli)))
	daddu	$2,$2,$5
	sd	$3,48($sp)
	sd	$9,40($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	ld	$9,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$10,$2,1
	dsll	$2,$2,2
	dsll	$7,$7,1
	dsll	$3,$3,1
	sd	$2,24($sp)
	dsubu	$4,$4,$10
	dsll	$2,$5,1
	sd	$fp,152($sp)
	dlsa	$8,$8,$9,4
	li	$25,32			# 0x20
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$10,64($sp)
	sd	$7,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1726:
	ld	$2,56($sp)
	move	$23,$6
	daddiu	$fp,$4,16
	daddu	$21,$4,$2
	ld	$2,48($sp)
	sd	$21,0($sp)
	daddu	$22,$4,$2
	ld	$2,64($sp)
	daddu	$20,$4,$2
	ld	$2,40($sp)
	daddu	$19,$4,$2
	ld	$2,32($sp)
	daddu	$18,$4,$2
	ld	$2,24($sp)
	daddu	$17,$4,$2
	ld	$2,16($sp)
	daddu	$16,$4,$2
	.align	3
.L1725:
	lh	$3,0($21)
	daddiu	$4,$4,2
	daddiu	$22,$22,2
	lh	$11,2($8)
	daddiu	$20,$20,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($8)
	daddiu	$16,$16,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$11
	lh	$24,4($8)
	daddiu	$21,$21,2
	lh	$11,-2($22)
	lh	$10,-2($20)
	lh	$15,6($8)
	lh	$9,-2($19)
	mtlo	$3
	lh	$14,8($8)
	madd	$2,$5
	lh	$7,-2($18)
	lh	$13,10($8)
	lh	$5,-2($17)
	lh	$12,12($8)
	lh	$2,14($8)
	lh	$3,-2($16)
	madd	$11,$24
	madd	$10,$15
	madd	$9,$14
	madd	$7,$13
	madd	$5,$12
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$4,.L1725
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$4,0($sp)
	bne	$25,$0,.L1726
	daddu	$6,$6,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi32EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi32EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi32EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi32EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi32EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi32EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,32			# 0x20
	.align	3
.L1732:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,16
	.align	3
.L1731:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L1731
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1732
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi32EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi32EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi32EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi16EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi16EEEvPKhlPhli)))
	li	$14,16			# 0x10
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi16EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L1740:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,4
.L1739:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1744
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1744:
	bgez	$3,.L1738
	nop

	move	$2,$0
.L1738:
	sb	$2,0($13)
	bne	$15,$9,.L1739
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L1740
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi16EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi16EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi16EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi16EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$16,16			# 0x10
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi16EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L1746
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$16,19			# 0x13
.L1746:
	dsll	$7,$7,1
	move	$25,$0
	.align	3
.L1748:
	move	$2,$4
	move	$13,$6
	daddiu	$24,$4,4
.L1747:
	lbu	$12,1($2)
	daddiu	$2,$2,1
	daddiu	$13,$13,2
	lh	$10,2($8)
	lh	$15,0($8)
	lbu	$11,-1($2)
	gsmultu	$12,$12,$10
	lh	$14,4($8)
	lbu	$10,1($2)
	lh	$3,6($8)
	lbu	$9,2($2)
	mtlo	$12
	madd	$11,$15
	madd	$10,$14
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L1747
	sh	$3,-2($13)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$16,$25,.L1748
	daddu	$6,$6,$7

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi16EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi16EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi16EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi16EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi16EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi16EEEvPKhlPhli)))
	li	$16,16			# 0x10
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L1759:
	daddu	$14,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$14
	daddu	$10,$4,$25
	daddiu	$15,$4,4
.L1758:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1756
	move	$3,$2

	move	$3,$0
.L1756:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1757
	nop

	li	$2,255			# 0xff
.L1757:
	sb	$2,0($13)
	bne	$15,$4,.L1758
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$14
	bne	$16,$0,.L1759
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi16EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi16EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi16EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi16EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi16EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,16			# 0x10
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L1765:
	daddu	$25,$4,$5
	move	$9,$6
	daddu	$15,$4,$16
	move	$14,$25
	daddu	$13,$4,$17
	daddiu	$7,$6,8
.L1764:
	lbu	$12,0($14)
	daddiu	$4,$4,1
	daddiu	$15,$15,1
	lh	$10,2($8)
	daddiu	$13,$13,1
	daddiu	$9,$9,2
	lbu	$11,-1($4)
	daddiu	$14,$14,1
	lh	$20,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,-1($15)
	lh	$2,6($8)
	lbu	$3,-1($13)
	mtlo	$12
	madd	$11,$20
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$7,$9,.L1764
	sh	$2,-2($9)

	addiu	$19,$19,-1
	move	$4,$25
	bne	$19,$0,.L1765
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi16EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi16EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi16EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi16EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi16EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi16EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$15,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi16EEEvPKslPhli)))
	li	$24,16			# 0x10
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi16EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$15,$15,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L1773:
	daddu	$13,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$13
	daddu	$9,$4,$17
	daddiu	$14,$4,8
.L1772:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$15
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1770
	move	$3,$2

	move	$3,$0
.L1770:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1771
	nop

	li	$2,255			# 0xff
.L1771:
	sb	$2,0($12)
	bne	$14,$4,.L1772
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$13
	bne	$24,$0,.L1773
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi16EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi16EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi16EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi16EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi16EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi16EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi16EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi16EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,16			# 0x10
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L1779:
	daddu	$24,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$24
	daddu	$11,$4,$19
	daddiu	$25,$4,8
.L1778:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$25,$4,.L1778
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$24
	bne	$7,$0,.L1779
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi16EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi16EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi16EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi64EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi64EEEvPKhlPhli)))
	li	$15,64			# 0x40
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi64EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L1787:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,64
	.align	3
.L1786:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1791
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1791:
	bgez	$3,.L1785
	nop

	move	$2,$0
.L1785:
	sb	$2,0($14)
	bne	$24,$9,.L1786
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L1787
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi64EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi64EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi64EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi64EEEvPKhlPslii)))
	li	$24,64			# 0x40
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi64EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L1793
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,71			# 0x47
	dsubu	$4,$4,$2
.L1793:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L1795:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,64
	.align	3
.L1794:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L1794
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L1795
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi64EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi64EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi64EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi64EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi64EEEvPKhlPhli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi64EEEvPKhlPhli)))
	daddu	$6,$2,$5
	sd	$5,40($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$6
	li	$25,64			# 0x40
	sd	$2,56($sp)
	dsll	$2,$5,3
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L1806:
	ld	$2,40($sp)
	move	$23,$21
	daddiu	$fp,$15,64
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L1805:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$20,$20,1
	lh	$9,2($8)
	daddiu	$22,$22,1
	daddiu	$19,$19,1
	lbu	$2,-1($15)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$4,0($8)
	daddiu	$16,$16,1
	daddiu	$24,$24,1
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lbu	$3,-1($24)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1803
	move	$3,$2

	move	$3,$0
.L1803:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1804
	nop

	li	$2,255			# 0xff
.L1804:
	sb	$2,0($23)
	bne	$fp,$15,.L1805
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1806
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi64EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi64EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi64EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi64EEEvPKhlPsli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi64EEEvPKhlPsli)))
	daddu	$6,$2,$5
	sd	$2,56($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$5,3
	dsubu	$4,$4,$6
	sd	$5,48($sp)
	li	$25,64			# 0x40
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L1812:
	ld	$2,48($sp)
	move	$23,$21
	daddiu	$fp,$15,64
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L1811:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$22,$22,1
	lh	$9,2($8)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lbu	$2,-1($15)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	lh	$4,0($8)
	daddiu	$24,$24,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,1
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lbu	$3,-1($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$15,.L1811
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1812
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi64EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi64EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi64EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi64EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi64EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi64EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi64EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$2,64($sp)
	daddu	$2,$2,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi64EEEvPKslPhli)))
	sd	$6,0($sp)
	dsll	$10,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$9,$5,3
	dsll	$2,$2,2
	sd	$fp,152($sp)
	dsubu	$4,$4,$10
	li	$fp,524288			# 0x80000
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,64			# 0x40
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	move	$15,$4
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1820:
	ld	$2,64($sp)
	daddiu	$23,$15,128
	ld	$22,0($sp)
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$15,$2
	ld	$2,72($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$25,$15,$2
	.align	3
.L1819:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$20,$20,2
	lh	$9,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($15)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$4,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lh	$9,-2($21)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1817
	move	$3,$2

	move	$3,$0
.L1817:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1818
	nop

	li	$2,255			# 0xff
.L1818:
	sb	$2,0($22)
	bne	$23,$15,.L1819
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$15,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L1820
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi64EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi64EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi64EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi64EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi64EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi64EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi64EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi64EEEvPKslPsli)))
	dsll	$6,$5,3
	sd	$2,56($sp)
	sd	$3,48($sp)
	daddu	$2,$2,$5
	daddu	$3,$3,$5
	sd	$6,40($sp)
	dsubu	$5,$6,$5
	dsll	$9,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$2,2
	dsubu	$4,$4,$9
	dsll	$3,$3,1
	sd	$2,24($sp)
	li	$25,64			# 0x40
	dsll	$2,$5,1
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$6,4
	dsll	$6,$7,1
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,64($sp)
	sd	$6,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1826:
	ld	$2,56($sp)
	move	$23,$21
	daddiu	$fp,$15,128
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,64($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$24,$15,$2
	.align	3
.L1825:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$22,$22,2
	lh	$9,2($8)
	daddiu	$19,$19,2
	daddiu	$18,$18,2
	lh	$2,-2($15)
	daddiu	$17,$17,2
	daddiu	$16,$16,2
	lh	$4,0($8)
	daddiu	$24,$24,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,2
	lh	$9,-2($22)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lh	$3,-2($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$15,.L1825
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1826
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi64EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi64EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi64EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi64EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi64EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi64EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,64			# 0x40
	.align	3
.L1832:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,128
	.align	3
.L1831:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L1831
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1832
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi64EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi64EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi64EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi32EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi32EEEvPKhlPhli)))
	li	$14,32			# 0x20
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi32EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L1840:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,32
	.align	3
.L1839:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1844
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1844:
	bgez	$3,.L1838
	nop

	move	$2,$0
.L1838:
	sb	$2,0($13)
	bne	$15,$9,.L1839
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L1840
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi32EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi32EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi32EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi32EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,32			# 0x20
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi32EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L1846
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,35			# 0x23
.L1846:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L1848:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,32
	.align	3
.L1847:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L1847
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L1848
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi32EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi32EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi32EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi32EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi32EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi32EEEvPKhlPhli)))
	li	$16,32			# 0x20
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L1859:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,32
	.align	3
.L1858:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1856
	move	$3,$2

	move	$3,$0
.L1856:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1857
	nop

	li	$2,255			# 0xff
.L1857:
	sb	$2,0($13)
	bne	$14,$4,.L1858
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L1859
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi32EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi32EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi32EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi32EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi32EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,32			# 0x20
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L1865:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,32
	.align	3
.L1864:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L1864
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L1865
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi32EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi32EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi32EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi32EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi32EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi32EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi32EEEvPKslPhli)))
	li	$24,32			# 0x20
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi32EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L1873:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,64
	.align	3
.L1872:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1870
	move	$3,$2

	move	$3,$0
.L1870:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1871
	nop

	li	$2,255			# 0xff
.L1871:
	sb	$2,0($12)
	bne	$13,$4,.L1872
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L1873
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi32EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi32EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi32EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi32EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi32EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi32EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi32EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi32EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,32			# 0x20
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L1879:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,64
	.align	3
.L1878:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L1878
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L1879
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi32EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi32EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi32EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi32EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi32EEEvPKhlPhli)))
	li	$15,32			# 0x20
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi32EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L1887:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,64
	.align	3
.L1886:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1891
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1891:
	bgez	$3,.L1885
	nop

	move	$2,$0
.L1885:
	sb	$2,0($14)
	bne	$24,$9,.L1886
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L1887
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi32EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi32EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi32EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi32EEEvPKhlPslii)))
	li	$24,32			# 0x20
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi32EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L1893
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,39			# 0x27
	dsubu	$4,$4,$2
.L1893:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L1895:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,64
	.align	3
.L1894:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L1894
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L1895
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi32EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi32EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi32EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi32EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi32EEEvPKhlPhli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi32EEEvPKhlPhli)))
	daddu	$6,$2,$5
	sd	$5,40($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$6
	li	$25,32			# 0x20
	sd	$2,56($sp)
	dsll	$2,$5,3
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L1906:
	ld	$2,40($sp)
	move	$23,$21
	daddiu	$fp,$15,64
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L1905:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$20,$20,1
	lh	$9,2($8)
	daddiu	$22,$22,1
	daddiu	$19,$19,1
	lbu	$2,-1($15)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$4,0($8)
	daddiu	$16,$16,1
	daddiu	$24,$24,1
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lbu	$3,-1($24)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1903
	move	$3,$2

	move	$3,$0
.L1903:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1904
	nop

	li	$2,255			# 0xff
.L1904:
	sb	$2,0($23)
	bne	$fp,$15,.L1905
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1906
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi32EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi32EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi32EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi32EEEvPKhlPsli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi32EEEvPKhlPsli)))
	daddu	$6,$2,$5
	sd	$2,56($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$5,3
	dsubu	$4,$4,$6
	sd	$5,48($sp)
	li	$25,32			# 0x20
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L1912:
	ld	$2,48($sp)
	move	$23,$21
	daddiu	$fp,$15,64
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L1911:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$22,$22,1
	lh	$9,2($8)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lbu	$2,-1($15)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	lh	$4,0($8)
	daddiu	$24,$24,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,1
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lbu	$3,-1($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$15,.L1911
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1912
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi32EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi32EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi32EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi32EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi32EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi32EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi32EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$2,64($sp)
	daddu	$2,$2,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi32EEEvPKslPhli)))
	sd	$6,0($sp)
	dsll	$10,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$9,$5,3
	dsll	$2,$2,2
	sd	$fp,152($sp)
	dsubu	$4,$4,$10
	li	$fp,524288			# 0x80000
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,32			# 0x20
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	move	$15,$4
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1920:
	ld	$2,64($sp)
	daddiu	$23,$15,128
	ld	$22,0($sp)
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$15,$2
	ld	$2,72($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$25,$15,$2
	.align	3
.L1919:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$20,$20,2
	lh	$9,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($15)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$4,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lh	$9,-2($21)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1917
	move	$3,$2

	move	$3,$0
.L1917:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1918
	nop

	li	$2,255			# 0xff
.L1918:
	sb	$2,0($22)
	bne	$23,$15,.L1919
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$15,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L1920
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi32EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi32EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi32EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi32EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi32EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi32EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi32EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi32EEEvPKslPsli)))
	dsll	$6,$5,3
	sd	$2,56($sp)
	sd	$3,48($sp)
	daddu	$2,$2,$5
	daddu	$3,$3,$5
	sd	$6,40($sp)
	dsubu	$5,$6,$5
	dsll	$9,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$2,2
	dsubu	$4,$4,$9
	dsll	$3,$3,1
	sd	$2,24($sp)
	li	$25,32			# 0x20
	dsll	$2,$5,1
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$6,4
	dsll	$6,$7,1
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,64($sp)
	sd	$6,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L1926:
	ld	$2,56($sp)
	move	$23,$21
	daddiu	$fp,$15,128
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,64($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$24,$15,$2
	.align	3
.L1925:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$22,$22,2
	lh	$9,2($8)
	daddiu	$19,$19,2
	daddiu	$18,$18,2
	lh	$2,-2($15)
	daddiu	$17,$17,2
	daddiu	$16,$16,2
	lh	$4,0($8)
	daddiu	$24,$24,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,2
	lh	$9,-2($22)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lh	$3,-2($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$15,.L1925
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L1926
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi32EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi32EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi32EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi32EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi32EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi32EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,32			# 0x20
	.align	3
.L1932:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,128
	.align	3
.L1931:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L1931
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L1932
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi32EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi32EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi32EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi16EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi16EEEvPKhlPhli)))
	li	$14,16			# 0x10
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi16EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L1940:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,32
	.align	3
.L1939:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1944
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1944:
	bgez	$3,.L1938
	nop

	move	$2,$0
.L1938:
	sb	$2,0($13)
	bne	$15,$9,.L1939
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L1940
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi16EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi16EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi16EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi16EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,16			# 0x10
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi16EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L1946
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,19			# 0x13
.L1946:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L1948:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,32
	.align	3
.L1947:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L1947
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L1948
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi16EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi16EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi16EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi16EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi16EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi16EEEvPKhlPhli)))
	li	$16,16			# 0x10
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L1959:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,32
	.align	3
.L1958:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L1956
	move	$3,$2

	move	$3,$0
.L1956:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1957
	nop

	li	$2,255			# 0xff
.L1957:
	sb	$2,0($13)
	bne	$14,$4,.L1958
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L1959
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi16EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi16EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi16EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi16EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi16EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,16			# 0x10
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L1965:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,32
	.align	3
.L1964:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L1964
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L1965
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi16EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi16EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi16EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi16EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi16EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi16EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi16EEEvPKslPhli)))
	li	$24,16			# 0x10
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi16EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L1973:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,64
	.align	3
.L1972:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L1970
	move	$3,$2

	move	$3,$0
.L1970:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L1971
	nop

	li	$2,255			# 0xff
.L1971:
	sb	$2,0($12)
	bne	$13,$4,.L1972
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L1973
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi16EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi16EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi16EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi16EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi16EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi16EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi16EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi16EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,16			# 0x10
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L1979:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,64
	.align	3
.L1978:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L1978
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L1979
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi16EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi16EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi16EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi64EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi64EEEvPKhlPhli)))
	li	$15,64			# 0x40
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi64EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L1987:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,32
	.align	3
.L1986:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L1991
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L1991:
	bgez	$3,.L1985
	nop

	move	$2,$0
.L1985:
	sb	$2,0($14)
	bne	$24,$9,.L1986
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L1987
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi64EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi64EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi64EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi64EEEvPKhlPslii)))
	li	$24,64			# 0x40
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi64EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L1993
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,71			# 0x47
	dsubu	$4,$4,$2
.L1993:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L1995:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,32
	.align	3
.L1994:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L1994
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L1995
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi64EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi64EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi64EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi64EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi64EEEvPKhlPhli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi64EEEvPKhlPhli)))
	daddu	$6,$2,$5
	sd	$5,40($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$6
	li	$25,64			# 0x40
	sd	$2,56($sp)
	dsll	$2,$5,3
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L2006:
	ld	$2,40($sp)
	move	$23,$21
	daddiu	$fp,$15,32
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L2005:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$20,$20,1
	lh	$9,2($8)
	daddiu	$22,$22,1
	daddiu	$19,$19,1
	lbu	$2,-1($15)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$4,0($8)
	daddiu	$16,$16,1
	daddiu	$24,$24,1
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lbu	$3,-1($24)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2003
	move	$3,$2

	move	$3,$0
.L2003:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2004
	nop

	li	$2,255			# 0xff
.L2004:
	sb	$2,0($23)
	bne	$fp,$15,.L2005
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L2006
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi64EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi64EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi64EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi64EEEvPKhlPsli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi64EEEvPKhlPsli)))
	daddu	$6,$2,$5
	sd	$2,56($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$5,3
	dsubu	$4,$4,$6
	sd	$5,48($sp)
	li	$25,64			# 0x40
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L2012:
	ld	$2,48($sp)
	move	$23,$21
	daddiu	$fp,$15,32
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L2011:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$22,$22,1
	lh	$9,2($8)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lbu	$2,-1($15)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	lh	$4,0($8)
	daddiu	$24,$24,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,1
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lbu	$3,-1($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$15,.L2011
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L2012
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi64EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi64EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi64EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi64EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi64EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi64EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi64EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$2,64($sp)
	daddu	$2,$2,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi64EEEvPKslPhli)))
	sd	$6,0($sp)
	dsll	$10,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$9,$5,3
	dsll	$2,$2,2
	sd	$fp,152($sp)
	dsubu	$4,$4,$10
	li	$fp,524288			# 0x80000
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,64			# 0x40
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	move	$15,$4
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L2020:
	ld	$2,64($sp)
	daddiu	$23,$15,64
	ld	$22,0($sp)
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$15,$2
	ld	$2,72($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$25,$15,$2
	.align	3
.L2019:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$20,$20,2
	lh	$9,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($15)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$4,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lh	$9,-2($21)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2017
	move	$3,$2

	move	$3,$0
.L2017:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2018
	nop

	li	$2,255			# 0xff
.L2018:
	sb	$2,0($22)
	bne	$23,$15,.L2019
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$15,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L2020
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi64EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi64EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi64EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi64EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi64EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi64EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi64EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi64EEEvPKslPsli)))
	dsll	$6,$5,3
	sd	$2,56($sp)
	sd	$3,48($sp)
	daddu	$2,$2,$5
	daddu	$3,$3,$5
	sd	$6,40($sp)
	dsubu	$5,$6,$5
	dsll	$9,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$2,2
	dsubu	$4,$4,$9
	dsll	$3,$3,1
	sd	$2,24($sp)
	li	$25,64			# 0x40
	dsll	$2,$5,1
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$6,4
	dsll	$6,$7,1
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,64($sp)
	sd	$6,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L2026:
	ld	$2,56($sp)
	move	$23,$21
	daddiu	$fp,$15,64
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,64($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$24,$15,$2
	.align	3
.L2025:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$22,$22,2
	lh	$9,2($8)
	daddiu	$19,$19,2
	daddiu	$18,$18,2
	lh	$2,-2($15)
	daddiu	$17,$17,2
	daddiu	$16,$16,2
	lh	$4,0($8)
	daddiu	$24,$24,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,2
	lh	$9,-2($22)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lh	$3,-2($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$15,.L2025
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L2026
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi64EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi64EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi64EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi64EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi64EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi64EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,64			# 0x40
	.align	3
.L2032:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,64
	.align	3
.L2031:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L2031
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L2032
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi64EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi64EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi64EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi32EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi32EEEvPKhlPhli)))
	li	$14,32			# 0x20
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi32EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L2040:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,16
	.align	3
.L2039:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2044
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2044:
	bgez	$3,.L2038
	nop

	move	$2,$0
.L2038:
	sb	$2,0($13)
	bne	$15,$9,.L2039
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L2040
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi32EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi32EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi32EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi32EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,32			# 0x20
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi32EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L2046
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,35			# 0x23
.L2046:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L2048:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,16
	.align	3
.L2047:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L2047
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L2048
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi32EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi32EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi32EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi32EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi32EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi32EEEvPKhlPhli)))
	li	$16,32			# 0x20
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L2059:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,16
	.align	3
.L2058:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2056
	move	$3,$2

	move	$3,$0
.L2056:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2057
	nop

	li	$2,255			# 0xff
.L2057:
	sb	$2,0($13)
	bne	$14,$4,.L2058
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L2059
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi32EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi32EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi32EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi32EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi32EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,32			# 0x20
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2065:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,16
	.align	3
.L2064:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L2064
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L2065
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi32EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi32EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi32EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi32EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi32EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi32EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi32EEEvPKslPhli)))
	li	$24,32			# 0x20
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi32EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L2073:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,32
	.align	3
.L2072:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2070
	move	$3,$2

	move	$3,$0
.L2070:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2071
	nop

	li	$2,255			# 0xff
.L2071:
	sb	$2,0($12)
	bne	$13,$4,.L2072
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L2073
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi32EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi32EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi32EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi32EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi32EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi32EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi32EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi32EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,32			# 0x20
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2079:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,32
	.align	3
.L2078:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L2078
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L2079
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi32EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi32EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi32EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi48EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi48EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi48EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi48EEEvPKhlPhli)))
	li	$15,48			# 0x30
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi48EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L2087:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,64
	.align	3
.L2086:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2091
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2091:
	bgez	$3,.L2085
	nop

	move	$2,$0
.L2085:
	sb	$2,0($14)
	bne	$24,$9,.L2086
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L2087
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi48EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi48EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi48EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi48EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi48EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi48EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi48EEEvPKhlPslii)))
	li	$24,48			# 0x30
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi48EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L2093
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,55			# 0x37
	dsubu	$4,$4,$2
.L2093:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L2095:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,64
	.align	3
.L2094:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L2094
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L2095
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi48EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi48EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi48EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi48EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi48EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi48EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi48EEEvPKhlPhli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi48EEEvPKhlPhli)))
	daddu	$6,$2,$5
	sd	$5,40($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$6
	li	$25,48			# 0x30
	sd	$2,56($sp)
	dsll	$2,$5,3
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L2106:
	ld	$2,40($sp)
	move	$23,$21
	daddiu	$fp,$15,64
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L2105:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$20,$20,1
	lh	$9,2($8)
	daddiu	$22,$22,1
	daddiu	$19,$19,1
	lbu	$2,-1($15)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$4,0($8)
	daddiu	$16,$16,1
	daddiu	$24,$24,1
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lbu	$3,-1($24)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2103
	move	$3,$2

	move	$3,$0
.L2103:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2104
	nop

	li	$2,255			# 0xff
.L2104:
	sb	$2,0($23)
	bne	$fp,$15,.L2105
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L2106
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi48EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi48EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi48EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi48EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi48EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi48EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi48EEEvPKhlPsli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi48EEEvPKhlPsli)))
	daddu	$6,$2,$5
	sd	$2,56($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$5,3
	dsubu	$4,$4,$6
	sd	$5,48($sp)
	li	$25,48			# 0x30
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L2112:
	ld	$2,48($sp)
	move	$23,$21
	daddiu	$fp,$15,64
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L2111:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$22,$22,1
	lh	$9,2($8)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lbu	$2,-1($15)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	lh	$4,0($8)
	daddiu	$24,$24,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,1
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lbu	$3,-1($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$15,.L2111
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L2112
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi48EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi48EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi48EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi48EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi48EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi48EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi48EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$2,64($sp)
	daddu	$2,$2,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi48EEEvPKslPhli)))
	sd	$6,0($sp)
	dsll	$10,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$9,$5,3
	dsll	$2,$2,2
	sd	$fp,152($sp)
	dsubu	$4,$4,$10
	li	$fp,524288			# 0x80000
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,48			# 0x30
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	move	$15,$4
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L2120:
	ld	$2,64($sp)
	daddiu	$23,$15,128
	ld	$22,0($sp)
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$15,$2
	ld	$2,72($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$25,$15,$2
	.align	3
.L2119:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$20,$20,2
	lh	$9,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($15)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$4,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lh	$9,-2($21)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2117
	move	$3,$2

	move	$3,$0
.L2117:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2118
	nop

	li	$2,255			# 0xff
.L2118:
	sb	$2,0($22)
	bne	$23,$15,.L2119
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$15,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L2120
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi48EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi48EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi48EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi48EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi48EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi48EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi48EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi48EEEvPKslPsli)))
	dsll	$6,$5,3
	sd	$2,56($sp)
	sd	$3,48($sp)
	daddu	$2,$2,$5
	daddu	$3,$3,$5
	sd	$6,40($sp)
	dsubu	$5,$6,$5
	dsll	$9,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$2,2
	dsubu	$4,$4,$9
	dsll	$3,$3,1
	sd	$2,24($sp)
	li	$25,48			# 0x30
	dsll	$2,$5,1
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$6,4
	dsll	$6,$7,1
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,64($sp)
	sd	$6,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L2126:
	ld	$2,56($sp)
	move	$23,$21
	daddiu	$fp,$15,128
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,64($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$24,$15,$2
	.align	3
.L2125:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$22,$22,2
	lh	$9,2($8)
	daddiu	$19,$19,2
	daddiu	$18,$18,2
	lh	$2,-2($15)
	daddiu	$17,$17,2
	daddiu	$16,$16,2
	lh	$4,0($8)
	daddiu	$24,$24,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,2
	lh	$9,-2($22)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lh	$3,-2($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$15,.L2125
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L2126
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi48EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi48EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi48EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi48EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi48EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi48EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,48			# 0x30
	.align	3
.L2132:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,128
	.align	3
.L2131:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L2131
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L2132
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi48EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi48EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi48EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi24EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi24EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi24EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi24EEEvPKhlPhli)))
	li	$14,24			# 0x18
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi24EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L2140:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,32
	.align	3
.L2139:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2144
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2144:
	bgez	$3,.L2138
	nop

	move	$2,$0
.L2138:
	sb	$2,0($13)
	bne	$15,$9,.L2139
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L2140
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi24EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi24EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi24EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi24EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi24EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi24EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi24EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,24			# 0x18
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi24EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L2146
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,27			# 0x1b
.L2146:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L2148:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,32
	.align	3
.L2147:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L2147
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L2148
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi24EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi24EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi24EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi24EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi24EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi24EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi24EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi24EEEvPKhlPhli)))
	li	$16,24			# 0x18
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L2159:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,32
	.align	3
.L2158:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2156
	move	$3,$2

	move	$3,$0
.L2156:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2157
	nop

	li	$2,255			# 0xff
.L2157:
	sb	$2,0($13)
	bne	$14,$4,.L2158
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L2159
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi24EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi24EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi24EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi24EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi24EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi24EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi24EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi24EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,24			# 0x18
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2165:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,32
	.align	3
.L2164:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L2164
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L2165
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi24EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi24EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi24EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi24EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi24EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi24EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi24EEEvPKslPhli)))
	li	$24,24			# 0x18
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi24EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L2173:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,64
	.align	3
.L2172:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2170
	move	$3,$2

	move	$3,$0
.L2170:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2171
	nop

	li	$2,255			# 0xff
.L2171:
	sb	$2,0($12)
	bne	$13,$4,.L2172
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L2173
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi24EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi24EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi24EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi24EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi24EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi24EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi24EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi24EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,24			# 0x18
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2179:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,64
	.align	3
.L2178:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L2178
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L2179
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi24EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi24EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi24EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi48ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi48ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi48ELi64EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi48ELi64EEEvPKhlPhli)))
	li	$15,64			# 0x40
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi48ELi64EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L2187:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,48
	.align	3
.L2186:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2191
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2191:
	bgez	$3,.L2185
	nop

	move	$2,$0
.L2185:
	sb	$2,0($14)
	bne	$24,$9,.L2186
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L2187
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi48ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi48ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi48ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi48ELi64EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi48ELi64EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi48ELi64EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi48ELi64EEEvPKhlPslii)))
	li	$24,64			# 0x40
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi48ELi64EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L2193
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,71			# 0x47
	dsubu	$4,$4,$2
.L2193:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L2195:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,48
	.align	3
.L2194:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L2194
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L2195
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi48ELi64EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi48ELi64EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi48ELi64EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi48ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi48ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi48ELi64EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi48ELi64EEEvPKhlPhli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi48ELi64EEEvPKhlPhli)))
	daddu	$6,$2,$5
	sd	$5,40($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$6
	li	$25,64			# 0x40
	sd	$2,56($sp)
	dsll	$2,$5,3
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L2206:
	ld	$2,40($sp)
	move	$23,$21
	daddiu	$fp,$15,48
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L2205:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$20,$20,1
	lh	$9,2($8)
	daddiu	$22,$22,1
	daddiu	$19,$19,1
	lbu	$2,-1($15)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$4,0($8)
	daddiu	$16,$16,1
	daddiu	$24,$24,1
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lbu	$3,-1($24)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2203
	move	$3,$2

	move	$3,$0
.L2203:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2204
	nop

	li	$2,255			# 0xff
.L2204:
	sb	$2,0($23)
	bne	$fp,$15,.L2205
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L2206
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi48ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi48ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi48ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi48ELi64EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi48ELi64EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi48ELi64EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi48ELi64EEEvPKhlPsli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi48ELi64EEEvPKhlPsli)))
	daddu	$6,$2,$5
	sd	$2,56($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$5,3
	dsubu	$4,$4,$6
	sd	$5,48($sp)
	li	$25,64			# 0x40
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L2212:
	ld	$2,48($sp)
	move	$23,$21
	daddiu	$fp,$15,48
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L2211:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$22,$22,1
	lh	$9,2($8)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lbu	$2,-1($15)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	lh	$4,0($8)
	daddiu	$24,$24,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,1
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lbu	$3,-1($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$15,.L2211
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L2212
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi48ELi64EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi48ELi64EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi48ELi64EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi48ELi64EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi48ELi64EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi48ELi64EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi48ELi64EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$2,64($sp)
	daddu	$2,$2,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi48ELi64EEEvPKslPhli)))
	sd	$6,0($sp)
	dsll	$10,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$9,$5,3
	dsll	$2,$2,2
	sd	$fp,152($sp)
	dsubu	$4,$4,$10
	li	$fp,524288			# 0x80000
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,64			# 0x40
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	move	$15,$4
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L2220:
	ld	$2,64($sp)
	daddiu	$23,$15,96
	ld	$22,0($sp)
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$15,$2
	ld	$2,72($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$25,$15,$2
	.align	3
.L2219:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$20,$20,2
	lh	$9,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($15)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$4,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lh	$9,-2($21)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2217
	move	$3,$2

	move	$3,$0
.L2217:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2218
	nop

	li	$2,255			# 0xff
.L2218:
	sb	$2,0($22)
	bne	$23,$15,.L2219
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$15,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L2220
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi48ELi64EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi48ELi64EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi48ELi64EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi48ELi64EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi48ELi64EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi48ELi64EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi48ELi64EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi48ELi64EEEvPKslPsli)))
	dsll	$6,$5,3
	sd	$2,56($sp)
	sd	$3,48($sp)
	daddu	$2,$2,$5
	daddu	$3,$3,$5
	sd	$6,40($sp)
	dsubu	$5,$6,$5
	dsll	$9,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$2,2
	dsubu	$4,$4,$9
	dsll	$3,$3,1
	sd	$2,24($sp)
	li	$25,64			# 0x40
	dsll	$2,$5,1
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$6,4
	dsll	$6,$7,1
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,64($sp)
	sd	$6,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L2226:
	ld	$2,56($sp)
	move	$23,$21
	daddiu	$fp,$15,96
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,64($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$24,$15,$2
	.align	3
.L2225:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$22,$22,2
	lh	$9,2($8)
	daddiu	$19,$19,2
	daddiu	$18,$18,2
	lh	$2,-2($15)
	daddiu	$17,$17,2
	daddiu	$16,$16,2
	lh	$4,0($8)
	daddiu	$24,$24,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,2
	lh	$9,-2($22)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lh	$3,-2($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$15,.L2225
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L2226
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi48ELi64EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi48ELi64EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi48ELi64EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi48ELi64EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi48ELi64EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi48ELi64EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,64			# 0x40
	.align	3
.L2232:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,96
	.align	3
.L2231:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L2231
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L2232
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi48ELi64EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi48ELi64EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi48ELi64EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi32EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi32EEEvPKhlPhli)))
	li	$14,32			# 0x20
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi32EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L2240:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,24
	.align	3
.L2239:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2244
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2244:
	bgez	$3,.L2238
	nop

	move	$2,$0
.L2238:
	sb	$2,0($13)
	bne	$15,$9,.L2239
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L2240
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi32EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi32EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi32EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi32EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,32			# 0x20
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi32EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L2246
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,35			# 0x23
.L2246:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L2248:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,24
	.align	3
.L2247:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L2247
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L2248
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi32EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi32EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi32EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi32EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi32EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi32EEEvPKhlPhli)))
	li	$16,32			# 0x20
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L2259:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,24
	.align	3
.L2258:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2256
	move	$3,$2

	move	$3,$0
.L2256:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2257
	nop

	li	$2,255			# 0xff
.L2257:
	sb	$2,0($13)
	bne	$14,$4,.L2258
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L2259
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi32EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi32EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi32EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi32EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi32EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,32			# 0x20
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2265:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,24
	.align	3
.L2264:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L2264
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L2265
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi32EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi32EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi32EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi32EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi32EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi32EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi32EEEvPKslPhli)))
	li	$24,32			# 0x20
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi32EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L2273:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,48
	.align	3
.L2272:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2270
	move	$3,$2

	move	$3,$0
.L2270:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2271
	nop

	li	$2,255			# 0xff
.L2271:
	sb	$2,0($12)
	bne	$13,$4,.L2272
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L2273
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi32EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi32EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi32EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi32EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi32EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi32EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi32EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi32EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,32			# 0x20
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2279:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,48
	.align	3
.L2278:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L2278
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L2279
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi32EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi32EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi32EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi16EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi16EEEvPKhlPhli)))
	li	$15,16			# 0x10
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi16EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L2287:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,64
	.align	3
.L2286:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2291
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2291:
	bgez	$3,.L2285
	nop

	move	$2,$0
.L2285:
	sb	$2,0($14)
	bne	$24,$9,.L2286
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L2287
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi16EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi16EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi16EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi16EEEvPKhlPslii)))
	li	$24,16			# 0x10
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi16EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L2293
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,23			# 0x17
	dsubu	$4,$4,$2
.L2293:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L2295:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,64
	.align	3
.L2294:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L2294
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L2295
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi16EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi16EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi16EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi16EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi16EEEvPKhlPhli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi16EEEvPKhlPhli)))
	daddu	$6,$2,$5
	sd	$5,40($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$6
	li	$25,16			# 0x10
	sd	$2,56($sp)
	dsll	$2,$5,3
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L2306:
	ld	$2,40($sp)
	move	$23,$21
	daddiu	$fp,$15,64
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L2305:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$20,$20,1
	lh	$9,2($8)
	daddiu	$22,$22,1
	daddiu	$19,$19,1
	lbu	$2,-1($15)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$4,0($8)
	daddiu	$16,$16,1
	daddiu	$24,$24,1
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lbu	$3,-1($24)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2303
	move	$3,$2

	move	$3,$0
.L2303:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2304
	nop

	li	$2,255			# 0xff
.L2304:
	sb	$2,0($23)
	bne	$fp,$15,.L2305
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L2306
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi16EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi16EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi16EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi16EEEvPKhlPsli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi16EEEvPKhlPsli)))
	daddu	$6,$2,$5
	sd	$2,56($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$5,3
	dsubu	$4,$4,$6
	sd	$5,48($sp)
	li	$25,16			# 0x10
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L2312:
	ld	$2,48($sp)
	move	$23,$21
	daddiu	$fp,$15,64
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L2311:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$22,$22,1
	lh	$9,2($8)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lbu	$2,-1($15)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	lh	$4,0($8)
	daddiu	$24,$24,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,1
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lbu	$3,-1($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$15,.L2311
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L2312
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi16EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi16EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi16EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi16EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi16EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi16EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi16EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$2,64($sp)
	daddu	$2,$2,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi16EEEvPKslPhli)))
	sd	$6,0($sp)
	dsll	$10,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$9,$5,3
	dsll	$2,$2,2
	sd	$fp,152($sp)
	dsubu	$4,$4,$10
	li	$fp,524288			# 0x80000
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,16			# 0x10
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	move	$15,$4
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L2320:
	ld	$2,64($sp)
	daddiu	$23,$15,128
	ld	$22,0($sp)
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$15,$2
	ld	$2,72($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$25,$15,$2
	.align	3
.L2319:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$20,$20,2
	lh	$9,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($15)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$4,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lh	$9,-2($21)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2317
	move	$3,$2

	move	$3,$0
.L2317:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2318
	nop

	li	$2,255			# 0xff
.L2318:
	sb	$2,0($22)
	bne	$23,$15,.L2319
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$15,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L2320
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi16EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi16EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi16EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi16EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi16EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi16EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi16EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi16EEEvPKslPsli)))
	dsll	$6,$5,3
	sd	$2,56($sp)
	sd	$3,48($sp)
	daddu	$2,$2,$5
	daddu	$3,$3,$5
	sd	$6,40($sp)
	dsubu	$5,$6,$5
	dsll	$9,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$2,2
	dsubu	$4,$4,$9
	dsll	$3,$3,1
	sd	$2,24($sp)
	li	$25,16			# 0x10
	dsll	$2,$5,1
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$6,4
	dsll	$6,$7,1
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,64($sp)
	sd	$6,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L2326:
	ld	$2,56($sp)
	move	$23,$21
	daddiu	$fp,$15,128
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,64($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$24,$15,$2
	.align	3
.L2325:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$22,$22,2
	lh	$9,2($8)
	daddiu	$19,$19,2
	daddiu	$18,$18,2
	lh	$2,-2($15)
	daddiu	$17,$17,2
	daddiu	$16,$16,2
	lh	$4,0($8)
	daddiu	$24,$24,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,2
	lh	$9,-2($22)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lh	$3,-2($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$15,.L2325
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L2326
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi16EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi16EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi16EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi16EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi16EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi16EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,16			# 0x10
	.align	3
.L2332:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,128
	.align	3
.L2331:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L2331
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L2332
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi16EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi16EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi16EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi8EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi8EEEvPKhlPhli)))
	li	$14,8			# 0x8
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi8EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L2340:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,32
	.align	3
.L2339:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2344
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2344:
	bgez	$3,.L2338
	nop

	move	$2,$0
.L2338:
	sb	$2,0($13)
	bne	$15,$9,.L2339
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L2340
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi8EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi8EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi8EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi8EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,8			# 0x8
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi8EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L2346
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,11			# 0xb
.L2346:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L2348:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,32
	.align	3
.L2347:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L2347
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L2348
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi8EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi8EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi8EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi8EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi8EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi8EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi8EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi8EEEvPKhlPhli)))
	li	$16,8			# 0x8
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L2359:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,32
	.align	3
.L2358:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2356
	move	$3,$2

	move	$3,$0
.L2356:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2357
	nop

	li	$2,255			# 0xff
.L2357:
	sb	$2,0($13)
	bne	$14,$4,.L2358
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L2359
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi8EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi8EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi8EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi8EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi8EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi8EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi8EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi8EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,8			# 0x8
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2365:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,32
	.align	3
.L2364:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L2364
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L2365
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi8EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi8EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi8EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi8EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi8EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi8EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi8EEEvPKslPhli)))
	li	$24,8			# 0x8
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi8EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L2373:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,64
	.align	3
.L2372:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2370
	move	$3,$2

	move	$3,$0
.L2370:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2371
	nop

	li	$2,255			# 0xff
.L2371:
	sb	$2,0($12)
	bne	$13,$4,.L2372
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L2373
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi8EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi8EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi8EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi8EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi8EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi8EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi8EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi8EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,8			# 0x8
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2379:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,64
	.align	3
.L2378:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L2378
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L2379
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi8EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi8EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi8EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi64EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	daddiu	$4,$4,-3
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi64EEEvPKhlPhli)))
	li	$15,64			# 0x40
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi64EEEvPKhlPhli)))
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,4
	sd	$16,0($sp)
	.align	3
.L2387:
	move	$9,$4
	move	$14,$6
	daddiu	$24,$4,16
	.align	3
.L2386:
	lbu	$3,1($9)
	daddiu	$9,$9,1
	lh	$25,2($8)
	lbu	$2,-1($9)
	lh	$10,0($8)
	gsmultu	$3,$3,$25
	lh	$20,4($8)
	lbu	$25,1($9)
	lbu	$13,2($9)
	lh	$19,6($8)
	lbu	$12,3($9)
	mtlo	$3
	lh	$18,8($8)
	madd	$2,$10
	lbu	$11,4($9)
	lh	$17,10($8)
	lbu	$10,5($9)
	lh	$16,12($8)
	lbu	$3,6($9)
	lh	$2,14($8)
	madd	$25,$20
	madd	$13,$19
	madd	$12,$18
	madd	$11,$17
	madd	$10,$16
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2391
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2391:
	bgez	$3,.L2385
	nop

	move	$2,$0
.L2385:
	sb	$2,0($14)
	bne	$24,$9,.L2386
	daddiu	$14,$14,1

	addiu	$15,$15,-1
	daddu	$4,$4,$5
	bne	$15,$0,.L2387
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi64EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi64EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi64EEEvPKhlPslii:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddiu	$4,$4,-3
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi64EEEvPKhlPslii)))
	li	$24,64			# 0x40
	daddu	$28,$28,$25
	sd	$21,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi64EEEvPKhlPslii)))
	sd	$20,40($sp)
	ld	$2,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	dlsa	$8,$8,$2,4
	beq	$9,$0,.L2393
	sd	$16,8($sp)

	dlsa	$2,$5,$5,1
	li	$24,71			# 0x47
	dsubu	$4,$4,$2
.L2393:
	dsll	$16,$7,1
	move	$25,$0
	.align	3
.L2395:
	move	$2,$4
	move	$14,$6
	daddiu	$15,$4,16
	.align	3
.L2394:
	lbu	$7,1($2)
	daddiu	$2,$2,1
	daddiu	$14,$14,2
	lh	$13,2($8)
	lh	$9,0($8)
	lbu	$3,-1($2)
	gsmultu	$7,$7,$13
	lh	$21,4($8)
	lbu	$13,1($2)
	lbu	$12,2($2)
	lh	$20,6($8)
	lbu	$11,3($2)
	mtlo	$7
	lh	$19,8($8)
	madd	$3,$9
	lbu	$10,4($2)
	lh	$18,10($8)
	lbu	$9,5($2)
	lh	$17,12($8)
	lh	$3,14($8)
	lbu	$7,6($2)
	madd	$13,$21
	madd	$12,$20
	madd	$11,$19
	madd	$10,$18
	madd	$9,$17
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L2394
	sh	$3,-2($14)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$24,$25,.L2395
	daddu	$6,$6,$16

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi64EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi64EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi64EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi64EEEvPKhlPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi64EEEvPKhlPhli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi64EEEvPKhlPhli)))
	daddu	$6,$2,$5
	sd	$5,40($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsubu	$4,$4,$6
	li	$25,64			# 0x40
	sd	$2,56($sp)
	dsll	$2,$5,3
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$7,48($sp)
	sd	$5,64($sp)
	sd	$2,32($sp)
	.align	3
.L2406:
	ld	$2,40($sp)
	move	$23,$21
	daddiu	$fp,$15,16
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L2405:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$20,$20,1
	lh	$9,2($8)
	daddiu	$22,$22,1
	daddiu	$19,$19,1
	lbu	$2,-1($15)
	daddiu	$18,$18,1
	daddiu	$17,$17,1
	lh	$4,0($8)
	daddiu	$16,$16,1
	daddiu	$24,$24,1
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lbu	$3,-1($24)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2403
	move	$3,$2

	move	$3,$0
.L2403:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2404
	nop

	li	$2,255			# 0xff
.L2404:
	sb	$2,0($23)
	bne	$fp,$15,.L2405
	daddiu	$23,$23,1

	ld	$2,48($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L2406
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi64EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi64EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi64EEEvPKhlPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi64EEEvPKhlPsli)))
	dsll	$9,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi64EEEvPKhlPsli)))
	daddu	$6,$2,$5
	sd	$2,56($sp)
	ld	$3,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$5,3
	dsubu	$4,$4,$6
	sd	$5,48($sp)
	li	$25,64			# 0x40
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$3,4
	move	$3,$5
	sd	$23,136($sp)
	daddu	$5,$9,$5
	dsubu	$2,$2,$3
	sd	$22,128($sp)
	sd	$5,24($sp)
	dsll	$5,$6,1
	sd	$2,32($sp)
	dsll	$2,$7,1
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,16($sp)
	sd	$6,8($sp)
	sd	$5,64($sp)
	sd	$2,40($sp)
	.align	3
.L2412:
	ld	$2,48($sp)
	move	$23,$21
	daddiu	$fp,$15,16
	daddu	$20,$15,$2
	ld	$2,56($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,8($sp)
	daddu	$19,$15,$2
	ld	$2,16($sp)
	daddu	$18,$15,$2
	ld	$2,24($sp)
	daddu	$17,$15,$2
	ld	$2,64($sp)
	daddu	$16,$15,$2
	ld	$2,32($sp)
	daddu	$24,$15,$2
	.align	3
.L2411:
	lbu	$3,0($20)
	daddiu	$15,$15,1
	daddiu	$22,$22,1
	lh	$9,2($8)
	daddiu	$19,$19,1
	daddiu	$18,$18,1
	lbu	$2,-1($15)
	daddiu	$17,$17,1
	daddiu	$16,$16,1
	lh	$4,0($8)
	daddiu	$24,$24,1
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,1
	lbu	$9,-1($22)
	lbu	$7,-1($19)
	lh	$13,6($8)
	lbu	$6,-1($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lbu	$5,-1($17)
	lh	$11,10($8)
	lbu	$4,-1($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lbu	$3,-1($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$fp,$15,.L2411
	sh	$2,-2($23)

	ld	$2,40($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L2412
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi64EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi64EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi64EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi64EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi64EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi64EEEvPKslPhli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi64EEEvPKslPhli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$2,64($sp)
	daddu	$2,$2,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi64EEEvPKslPhli)))
	sd	$6,0($sp)
	dsll	$10,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$9,$5,3
	dsll	$2,$2,2
	sd	$fp,152($sp)
	dsubu	$4,$4,$10
	li	$fp,524288			# 0x80000
	sd	$3,48($sp)
	daddu	$3,$3,$5
	dsubu	$5,$9,$5
	dsll	$3,$3,1
	sd	$2,24($sp)
	dlsa	$8,$8,$6,4
	dsll	$2,$5,1
	li	$24,64			# 0x40
	sd	$23,136($sp)
	addiu	$fp,$fp,2048
	move	$15,$4
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,40($sp)
	sd	$10,72($sp)
	sd	$7,56($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L2420:
	ld	$2,64($sp)
	daddiu	$23,$15,32
	ld	$22,0($sp)
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$15,$2
	ld	$2,72($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$25,$15,$2
	.align	3
.L2419:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$20,$20,2
	lh	$9,2($8)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($15)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$4,0($8)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	lh	$9,-2($21)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$3,-2($25)
	lh	$2,14($8)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2417
	move	$3,$2

	move	$3,$0
.L2417:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2418
	nop

	li	$2,255			# 0xff
.L2418:
	sb	$2,0($22)
	bne	$23,$15,.L2419
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,-1
	ld	$3,56($sp)
	ld	$15,8($sp)
	daddu	$2,$2,$3
	bne	$24,$0,.L2420
	sd	$2,0($sp)

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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi64EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi64EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi64EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi64EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi64EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi64EEEvPKslPsli:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	dsll	$2,$5,1
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi64EEEvPKslPsli)))
	dsll	$3,$5,2
	daddu	$28,$28,$25
	sd	$21,120($sp)
	move	$21,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi64EEEvPKslPsli)))
	dsll	$6,$5,3
	sd	$2,56($sp)
	sd	$3,48($sp)
	daddu	$2,$2,$5
	daddu	$3,$3,$5
	sd	$6,40($sp)
	dsubu	$5,$6,$5
	dsll	$9,$2,1
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	dsll	$2,$2,2
	dsubu	$4,$4,$9
	dsll	$3,$3,1
	sd	$2,24($sp)
	li	$25,64			# 0x40
	dsll	$2,$5,1
	move	$15,$4
	sd	$fp,152($sp)
	dlsa	$8,$8,$6,4
	dsll	$6,$7,1
	sd	$23,136($sp)
	sd	$22,128($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$9,64($sp)
	sd	$6,8($sp)
	sd	$3,32($sp)
	sd	$2,16($sp)
	.align	3
.L2426:
	ld	$2,56($sp)
	move	$23,$21
	daddiu	$fp,$15,32
	daddu	$20,$15,$2
	ld	$2,48($sp)
	sd	$20,0($sp)
	daddu	$22,$15,$2
	ld	$2,64($sp)
	daddu	$19,$15,$2
	ld	$2,40($sp)
	daddu	$18,$15,$2
	ld	$2,32($sp)
	daddu	$17,$15,$2
	ld	$2,24($sp)
	daddu	$16,$15,$2
	ld	$2,16($sp)
	daddu	$24,$15,$2
	.align	3
.L2425:
	lh	$3,0($20)
	daddiu	$15,$15,2
	daddiu	$22,$22,2
	lh	$9,2($8)
	daddiu	$19,$19,2
	daddiu	$18,$18,2
	lh	$2,-2($15)
	daddiu	$17,$17,2
	daddiu	$16,$16,2
	lh	$4,0($8)
	daddiu	$24,$24,2
	daddiu	$23,$23,2
	gsmultu	$3,$3,$9
	lh	$14,4($8)
	daddiu	$20,$20,2
	lh	$9,-2($22)
	lh	$7,-2($19)
	lh	$13,6($8)
	lh	$6,-2($18)
	mtlo	$3
	lh	$12,8($8)
	madd	$2,$4
	lh	$5,-2($17)
	lh	$11,10($8)
	lh	$4,-2($16)
	lh	$10,12($8)
	lh	$2,14($8)
	lh	$3,-2($24)
	madd	$9,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$4,$10
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$fp,$15,.L2425
	sh	$2,-2($23)

	ld	$2,8($sp)
	addiu	$25,$25,-1
	ld	$15,0($sp)
	bne	$25,$0,.L2426
	daddu	$21,$21,$2

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
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi64EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi64EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi64EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi64EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi64EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi64EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,64			# 0x40
	.align	3
.L2432:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,32
	.align	3
.L2431:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L2431
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L2432
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi64EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi64EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi64EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi32EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi32EEEvPKhlPhli)))
	li	$14,32			# 0x20
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi32EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L2440:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,8
	.align	3
.L2439:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2444
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2444:
	bgez	$3,.L2438
	nop

	move	$2,$0
.L2438:
	sb	$2,0($13)
	bne	$15,$9,.L2439
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L2440
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi32EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi32EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi32EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi32EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$16,32			# 0x20
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi32EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L2446
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$16,35			# 0x23
.L2446:
	dsll	$7,$7,1
	move	$25,$0
	.align	3
.L2448:
	move	$2,$4
	move	$13,$6
	daddiu	$24,$4,8
	.align	3
.L2447:
	lbu	$12,1($2)
	daddiu	$2,$2,1
	daddiu	$13,$13,2
	lh	$10,2($8)
	lh	$15,0($8)
	lbu	$11,-1($2)
	gsmultu	$12,$12,$10
	lh	$14,4($8)
	lbu	$10,1($2)
	lh	$3,6($8)
	lbu	$9,2($2)
	mtlo	$12
	madd	$11,$15
	madd	$10,$14
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L2447
	sh	$3,-2($13)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$16,$25,.L2448
	daddu	$6,$6,$7

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi32EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi32EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi32EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi32EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi32EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi32EEEvPKhlPhli)))
	li	$16,32			# 0x20
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L2459:
	daddu	$15,$4,$5
	move	$10,$6
	daddu	$13,$4,$24
	move	$12,$15
	daddu	$11,$4,$25
	daddiu	$14,$4,8
	.align	3
.L2458:
	lbu	$18,0($12)
	daddiu	$4,$4,1
	daddiu	$12,$12,1
	lh	$9,2($8)
	daddiu	$13,$13,1
	daddiu	$11,$11,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($13)
	lbu	$3,-1($11)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2456
	move	$3,$2

	move	$3,$0
.L2456:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2457
	nop

	li	$2,255			# 0xff
.L2457:
	sb	$2,0($10)
	bne	$14,$4,.L2458
	daddiu	$10,$10,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L2459
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi32EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi32EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi32EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi32EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi32EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,32			# 0x20
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2465:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,8
	.align	3
.L2464:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L2464
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L2465
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi32EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi32EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi32EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi32EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi32EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi32EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi32EEEvPKslPhli)))
	li	$24,32			# 0x20
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi32EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L2473:
	daddu	$15,$4,$25
	move	$9,$6
	daddu	$12,$4,$16
	move	$11,$15
	daddu	$10,$4,$17
	daddiu	$13,$4,16
	.align	3
.L2472:
	lh	$19,0($11)
	daddiu	$4,$4,2
	daddiu	$11,$11,2
	lh	$5,2($8)
	daddiu	$12,$12,2
	daddiu	$10,$10,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($12)
	lh	$3,-2($10)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2470
	move	$3,$2

	move	$3,$0
.L2470:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2471
	nop

	li	$2,255			# 0xff
.L2471:
	sb	$2,0($9)
	bne	$13,$4,.L2472
	daddiu	$9,$9,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L2473
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi32EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi32EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi32EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi32EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi32EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi32EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi32EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi32EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,32			# 0x20
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2479:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,16
	.align	3
.L2478:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L2478
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L2479
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi32EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi32EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi32EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi12EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi12EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi12EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi12EEEvPKhlPhli)))
	li	$14,12			# 0xc
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi12EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L2487:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,8
	.align	3
.L2486:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2491
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2491:
	bgez	$3,.L2485
	nop

	move	$2,$0
.L2485:
	sb	$2,0($13)
	bne	$15,$9,.L2486
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L2487
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi12EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi12EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi12EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi12EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi12EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi12EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi12EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$16,12			# 0xc
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi12EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L2493
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$16,15			# 0xf
.L2493:
	dsll	$7,$7,1
	move	$25,$0
	.align	3
.L2495:
	move	$2,$4
	move	$13,$6
	daddiu	$24,$4,8
	.align	3
.L2494:
	lbu	$12,1($2)
	daddiu	$2,$2,1
	daddiu	$13,$13,2
	lh	$10,2($8)
	lh	$15,0($8)
	lbu	$11,-1($2)
	gsmultu	$12,$12,$10
	lh	$14,4($8)
	lbu	$10,1($2)
	lh	$3,6($8)
	lbu	$9,2($2)
	mtlo	$12
	madd	$11,$15
	madd	$10,$14
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L2494
	sh	$3,-2($13)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$16,$25,.L2495
	daddu	$6,$6,$7

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi12EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi12EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi12EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi12EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi12EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi12EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi12EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi12EEEvPKhlPhli)))
	li	$16,12			# 0xc
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L2506:
	daddu	$15,$4,$5
	move	$10,$6
	daddu	$13,$4,$24
	move	$12,$15
	daddu	$11,$4,$25
	daddiu	$14,$4,8
	.align	3
.L2505:
	lbu	$18,0($12)
	daddiu	$4,$4,1
	daddiu	$12,$12,1
	lh	$9,2($8)
	daddiu	$13,$13,1
	daddiu	$11,$11,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($13)
	lbu	$3,-1($11)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2503
	move	$3,$2

	move	$3,$0
.L2503:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2504
	nop

	li	$2,255			# 0xff
.L2504:
	sb	$2,0($10)
	bne	$14,$4,.L2505
	daddiu	$10,$10,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L2506
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi12EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi12EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi12EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi12EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi12EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi12EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi12EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi12EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,12			# 0xc
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2512:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,8
	.align	3
.L2511:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L2511
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L2512
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi12EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi12EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi12EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi12EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi12EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi12EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi12EEEvPKslPhli)))
	li	$24,12			# 0xc
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi12EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L2520:
	daddu	$15,$4,$25
	move	$9,$6
	daddu	$12,$4,$16
	move	$11,$15
	daddu	$10,$4,$17
	daddiu	$13,$4,16
	.align	3
.L2519:
	lh	$19,0($11)
	daddiu	$4,$4,2
	daddiu	$11,$11,2
	lh	$5,2($8)
	daddiu	$12,$12,2
	daddiu	$10,$10,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($12)
	lh	$3,-2($10)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2517
	move	$3,$2

	move	$3,$0
.L2517:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2518
	nop

	li	$2,255			# 0xff
.L2518:
	sb	$2,0($9)
	bne	$13,$4,.L2519
	daddiu	$9,$9,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L2520
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi12EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi12EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi12EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi12EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi12EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi12EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi12EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi12EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,12			# 0xc
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2526:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,16
	.align	3
.L2525:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L2525
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L2526
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi12EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi12EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi12EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi12EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi12EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi12EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,12			# 0xc
	.align	3
.L2532:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,16
	.align	3
.L2531:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L2531
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L2532
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi12EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi12EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi12EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi16EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi16EEEvPKhlPhli)))
	li	$14,16			# 0x10
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi16EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L2540:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,6
	.align	3
.L2539:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2544
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2544:
	bgez	$3,.L2538
	nop

	move	$2,$0
.L2538:
	sb	$2,0($13)
	bne	$15,$9,.L2539
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L2540
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi16EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi16EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi16EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi16EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$16,16			# 0x10
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi16EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L2546
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$16,19			# 0x13
.L2546:
	dsll	$7,$7,1
	move	$25,$0
	.align	3
.L2548:
	move	$2,$4
	move	$13,$6
	daddiu	$24,$4,6
	.align	3
.L2547:
	lbu	$12,1($2)
	daddiu	$2,$2,1
	daddiu	$13,$13,2
	lh	$10,2($8)
	lh	$15,0($8)
	lbu	$11,-1($2)
	gsmultu	$12,$12,$10
	lh	$14,4($8)
	lbu	$10,1($2)
	lh	$3,6($8)
	lbu	$9,2($2)
	mtlo	$12
	madd	$11,$15
	madd	$10,$14
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L2547
	sh	$3,-2($13)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$16,$25,.L2548
	daddu	$6,$6,$7

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi16EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi16EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi16EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi16EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi16EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi16EEEvPKhlPhli)))
	li	$16,16			# 0x10
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L2559:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,6
	.align	3
.L2558:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2556
	move	$3,$2

	move	$3,$0
.L2556:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2557
	nop

	li	$2,255			# 0xff
.L2557:
	sb	$2,0($13)
	bne	$14,$4,.L2558
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L2559
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi16EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi16EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi16EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi16EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi16EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,16			# 0x10
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2565:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,6
	.align	3
.L2564:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L2564
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L2565
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi16EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi16EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi16EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi16EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi16EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi16EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi16EEEvPKslPhli)))
	li	$24,16			# 0x10
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi16EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L2573:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,12
	.align	3
.L2572:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2570
	move	$3,$2

	move	$3,$0
.L2570:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2571
	nop

	li	$2,255			# 0xff
.L2571:
	sb	$2,0($12)
	bne	$13,$4,.L2572
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L2573
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi16EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi16EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi16EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi16EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi16EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi16EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi16EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi16EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,16			# 0x10
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2579:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,12
	.align	3
.L2578:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L2578
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L2579
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi16EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi16EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi16EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi6ELi16EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi6ELi16EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi6ELi16EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,16			# 0x10
	.align	3
.L2585:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,12
	.align	3
.L2584:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L2584
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L2585
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi6ELi16EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi6ELi16EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi6ELi16EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi16EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi16EEEvPKhlPhli)))
	li	$14,16			# 0x10
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi16EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L2593:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,2
.L2592:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2597
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2597:
	bgez	$3,.L2591
	nop

	move	$2,$0
.L2591:
	sb	$2,0($13)
	bne	$15,$9,.L2592
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L2593
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi16EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi16EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi16EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi16EEEvPKhlPslii)))
	li	$14,16			# 0x10
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi16EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L2599
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$14,19			# 0x13
.L2599:
	dsll	$7,$7,1
	move	$15,$0
	.align	3
.L2600:
	lbu	$13,1($4)
	addiu	$15,$15,1
	lh	$11,2($8)
	lbu	$12,0($4)
	lh	$24,0($8)
	gsmultu	$13,$13,$11
	lh	$2,4($8)
	lbu	$11,2($4)
	lbu	$10,3($4)
	lh	$9,6($8)
	mtlo	$13
	madd	$12,$24
	madd	$11,$2
	madd	$10,$9
	mflo	$9
	addiu	$9,$9,-8192
	sh	$9,0($6)
	lbu	$11,2($4)
	lh	$2,2($8)
	lbu	$10,1($4)
	lbu	$9,3($4)
	gsmultu	$11,$11,$2
	lh	$12,4($8)
	lbu	$3,4($4)
	daddu	$4,$4,$5
	lh	$2,6($8)
	mtlo	$11
	madd	$10,$24
	madd	$9,$12
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	sh	$2,2($6)
	bne	$14,$15,.L2600
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi16EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi16EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi16EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi16EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi16EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	li	$15,16			# 0x10
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi16EEEvPKhlPhli)))
	daddu	$25,$24,$5
	sd	$19,24($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	sd	$17,8($sp)
	dlsa	$8,$8,$2,3
	sd	$16,0($sp)
	.align	3
.L2610:
	daddu	$14,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$14
	daddu	$10,$4,$25
	daddiu	$16,$4,2
.L2609:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2607
	move	$3,$2

	move	$3,$0
.L2607:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2608
	nop

	li	$2,255			# 0xff
.L2608:
	sb	$2,0($13)
	bne	$16,$4,.L2609
	daddiu	$13,$13,1

	addiu	$15,$15,-1
	move	$4,$14
	bne	$15,$0,.L2610
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi16EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi16EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi16EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi16EEEvPKhlPsli)))
	dsll	$7,$7,1
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi16EEEvPKhlPsli)))
	sd	$18,16($sp)
	li	$18,16			# 0x10
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$17,8($sp)
	daddu	$17,$16,$5
	sd	$20,32($sp)
	dlsa	$8,$8,$2,3
	sd	$19,24($sp)
	.align	3
.L2616:
	daddu	$24,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$24
	daddu	$12,$4,$17
	daddiu	$19,$4,2
.L2615:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$25,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$25
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$19,$4,.L2615
	sh	$2,-2($15)

	addiu	$18,$18,-1
	move	$4,$24
	bne	$18,$0,.L2616
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi16EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi16EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi16EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi16EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi16EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi16EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	dsll	$24,$5,1
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi16EEEvPKslPhli)))
	dsubu	$4,$4,$24
	daddu	$28,$28,$25
	sd	$17,16($sp)
	li	$25,524288			# 0x80000
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi16EEEvPKslPhli)))
	daddu	$17,$24,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsll	$16,$5,2
	dsll	$17,$17,1
	li	$14,16			# 0x10
	addiu	$25,$25,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L2624:
	daddu	$13,$4,$24
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$13
	daddu	$9,$4,$17
	daddiu	$15,$4,4
.L2623:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$25
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2621
	move	$3,$2

	move	$3,$0
.L2621:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2622
	nop

	li	$2,255			# 0xff
.L2622:
	sb	$2,0($12)
	bne	$15,$4,.L2623
	daddiu	$12,$12,1

	addiu	$14,$14,-1
	move	$4,$13
	bne	$14,$0,.L2624
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi16EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi16EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi16EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi16EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi16EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi16EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$7,$7,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi16EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi16EEEvPKslPsli)))
	sd	$18,16($sp)
	daddu	$18,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$18,$18,1
	sd	$17,8($sp)
	li	$25,16			# 0x10
	dsll	$17,$5,2
	sd	$20,32($sp)
	dlsa	$8,$8,$2,3
	sd	$19,24($sp)
	.align	3
.L2630:
	daddu	$15,$4,$16
	move	$14,$6
	daddu	$13,$4,$17
	move	$12,$15
	daddu	$11,$4,$18
	daddiu	$19,$4,4
.L2629:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$24,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$24
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$19,$4,.L2629
	sh	$2,-2($14)

	addiu	$25,$25,-1
	move	$4,$15
	bne	$25,$0,.L2630
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi16EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi16EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi16EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi16EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi16EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi16EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$3,16			# 0x10
	.align	3
.L2635:
	lbu	$2,0($4)
	addiu	$3,$3,-1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	sh	$2,0($6)
	lbu	$2,1($4)
	daddu	$4,$4,$5
	sll	$2,$2,6
	addiu	$2,$2,-8192
	sh	$2,2($6)
	bne	$3,$0,.L2635
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi16EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi16EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi16EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi24EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi24EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi24EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi24EEEvPKhlPhli)))
	li	$14,24			# 0x18
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi24EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L2642:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,16
	.align	3
.L2641:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2646
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2646:
	bgez	$3,.L2640
	nop

	move	$2,$0
.L2640:
	sb	$2,0($13)
	bne	$15,$9,.L2641
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L2642
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi24EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi24EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi24EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi24EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi24EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi24EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi24EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,24			# 0x18
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi24EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L2648
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,27			# 0x1b
.L2648:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L2650:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,16
	.align	3
.L2649:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L2649
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L2650
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi24EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi24EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi24EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi24EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi24EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi24EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi24EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi24EEEvPKhlPhli)))
	li	$16,24			# 0x18
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L2661:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,16
	.align	3
.L2660:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2658
	move	$3,$2

	move	$3,$0
.L2658:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2659
	nop

	li	$2,255			# 0xff
.L2659:
	sb	$2,0($13)
	bne	$14,$4,.L2660
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L2661
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi24EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi24EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi24EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi24EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi24EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi24EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi24EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi24EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,24			# 0x18
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2667:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,16
	.align	3
.L2666:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L2666
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L2667
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi24EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi24EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi24EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi24EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi24EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi24EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi24EEEvPKslPhli)))
	li	$24,24			# 0x18
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi24EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L2675:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,32
	.align	3
.L2674:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2672
	move	$3,$2

	move	$3,$0
.L2672:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2673
	nop

	li	$2,255			# 0xff
.L2673:
	sb	$2,0($12)
	bne	$13,$4,.L2674
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L2675
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi24EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi24EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi24EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi24EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi24EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi24EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi24EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi24EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,24			# 0x18
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2681:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,32
	.align	3
.L2680:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L2680
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L2681
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi24EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi24EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi24EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi24EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi24EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi24EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,24			# 0x18
	.align	3
.L2687:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,32
	.align	3
.L2686:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L2686
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L2687
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi24EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi24EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi24EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi32EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi32EEEvPKhlPhli)))
	li	$14,32			# 0x20
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi32EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L2695:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,12
	.align	3
.L2694:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2699
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2699:
	bgez	$3,.L2693
	nop

	move	$2,$0
.L2693:
	sb	$2,0($13)
	bne	$15,$9,.L2694
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L2695
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi32EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi32EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi32EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi32EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,32			# 0x20
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi32EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L2701
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,35			# 0x23
.L2701:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L2703:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,12
	.align	3
.L2702:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L2702
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L2703
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi32EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi32EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi32EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi32EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi32EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi32EEEvPKhlPhli)))
	li	$16,32			# 0x20
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L2714:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,12
	.align	3
.L2713:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2711
	move	$3,$2

	move	$3,$0
.L2711:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2712
	nop

	li	$2,255			# 0xff
.L2712:
	sb	$2,0($13)
	bne	$14,$4,.L2713
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L2714
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi32EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi32EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi32EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi32EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi32EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,32			# 0x20
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2720:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,12
	.align	3
.L2719:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L2719
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L2720
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi32EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi32EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi32EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi32EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi32EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi32EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi32EEEvPKslPhli)))
	li	$24,32			# 0x20
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi32EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L2728:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,24
	.align	3
.L2727:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2725
	move	$3,$2

	move	$3,$0
.L2725:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2726
	nop

	li	$2,255			# 0xff
.L2726:
	sb	$2,0($12)
	bne	$13,$4,.L2727
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L2728
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi32EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi32EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi32EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi32EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi32EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi32EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi32EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi32EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,32			# 0x20
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2734:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,24
	.align	3
.L2733:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L2733
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L2734
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi32EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi32EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi32EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi32EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi32EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi32EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,32			# 0x20
	.align	3
.L2740:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,24
	.align	3
.L2739:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L2739
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L2740
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi32EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi32EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi32EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi32EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi32EEEvPKhlPhli)))
	li	$14,32			# 0x20
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi32EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L2748:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,4
.L2747:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2752
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2752:
	bgez	$3,.L2746
	nop

	move	$2,$0
.L2746:
	sb	$2,0($13)
	bne	$15,$9,.L2747
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L2748
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi32EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi32EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi32EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi32EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$16,32			# 0x20
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi32EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L2754
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$16,35			# 0x23
.L2754:
	dsll	$7,$7,1
	move	$25,$0
	.align	3
.L2756:
	move	$2,$4
	move	$13,$6
	daddiu	$24,$4,4
.L2755:
	lbu	$12,1($2)
	daddiu	$2,$2,1
	daddiu	$13,$13,2
	lh	$10,2($8)
	lh	$15,0($8)
	lbu	$11,-1($2)
	gsmultu	$12,$12,$10
	lh	$14,4($8)
	lbu	$10,1($2)
	lh	$3,6($8)
	lbu	$9,2($2)
	mtlo	$12
	madd	$11,$15
	madd	$10,$14
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L2755
	sh	$3,-2($13)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$16,$25,.L2756
	daddu	$6,$6,$7

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi32EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi32EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi32EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi32EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi32EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi32EEEvPKhlPhli)))
	li	$16,32			# 0x20
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L2767:
	daddu	$14,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$14
	daddu	$10,$4,$25
	daddiu	$15,$4,4
.L2766:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2764
	move	$3,$2

	move	$3,$0
.L2764:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2765
	nop

	li	$2,255			# 0xff
.L2765:
	sb	$2,0($13)
	bne	$15,$4,.L2766
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$14
	bne	$16,$0,.L2767
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi32EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi32EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi32EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi32EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi32EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,32			# 0x20
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2773:
	daddu	$25,$4,$5
	move	$9,$6
	daddu	$15,$4,$16
	move	$14,$25
	daddu	$13,$4,$17
	daddiu	$7,$6,8
.L2772:
	lbu	$12,0($14)
	daddiu	$4,$4,1
	daddiu	$15,$15,1
	lh	$10,2($8)
	daddiu	$13,$13,1
	daddiu	$9,$9,2
	lbu	$11,-1($4)
	daddiu	$14,$14,1
	lh	$20,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,-1($15)
	lh	$2,6($8)
	lbu	$3,-1($13)
	mtlo	$12
	madd	$11,$20
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$7,$9,.L2772
	sh	$2,-2($9)

	addiu	$19,$19,-1
	move	$4,$25
	bne	$19,$0,.L2773
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi32EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi32EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi32EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi32EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi32EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi32EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$15,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi32EEEvPKslPhli)))
	li	$24,32			# 0x20
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi32EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$15,$15,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L2781:
	daddu	$13,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$13
	daddu	$9,$4,$17
	daddiu	$14,$4,8
.L2780:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$15
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2778
	move	$3,$2

	move	$3,$0
.L2778:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2779
	nop

	li	$2,255			# 0xff
.L2779:
	sb	$2,0($12)
	bne	$14,$4,.L2780
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$13
	bne	$24,$0,.L2781
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi32EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi32EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi32EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi32EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi32EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi32EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi32EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi32EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,32			# 0x20
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2787:
	daddu	$24,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$24
	daddu	$11,$4,$19
	daddiu	$25,$4,8
.L2786:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$25,$4,.L2786
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$24
	bne	$7,$0,.L2787
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi32EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi32EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi32EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi32EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi32EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi32EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,32			# 0x20
	.align	3
.L2793:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,8
.L2792:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L2792
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L2793
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi32EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi32EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi32EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi64EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi64EEEvPKhlPhli)))
	li	$14,64			# 0x40
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi64EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L2801:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,32
	.align	3
.L2800:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2805
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2805:
	bgez	$3,.L2799
	nop

	move	$2,$0
.L2799:
	sb	$2,0($13)
	bne	$15,$9,.L2800
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L2801
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi64EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi64EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi64EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi64EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,64			# 0x40
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi64EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L2807
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,67			# 0x43
.L2807:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L2809:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,32
	.align	3
.L2808:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L2808
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L2809
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi64EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi64EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi64EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi64EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi64EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi64EEEvPKhlPhli)))
	li	$16,64			# 0x40
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L2820:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,32
	.align	3
.L2819:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2817
	move	$3,$2

	move	$3,$0
.L2817:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2818
	nop

	li	$2,255			# 0xff
.L2818:
	sb	$2,0($13)
	bne	$14,$4,.L2819
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L2820
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi64EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi64EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi64EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi64EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi64EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,64			# 0x40
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2826:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,32
	.align	3
.L2825:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L2825
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L2826
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi64EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi64EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi64EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi64EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi64EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi64EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi64EEEvPKslPhli)))
	li	$24,64			# 0x40
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi64EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L2834:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,64
	.align	3
.L2833:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2831
	move	$3,$2

	move	$3,$0
.L2831:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2832
	nop

	li	$2,255			# 0xff
.L2832:
	sb	$2,0($12)
	bne	$13,$4,.L2833
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L2834
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi64EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi64EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi64EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi64EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi64EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi64EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi64EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi64EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,64			# 0x40
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2840:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,64
	.align	3
.L2839:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L2839
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L2840
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi64EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi64EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi64EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi64EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi64EEEvPKhlPhli)))
	li	$14,64			# 0x40
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi64EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L2848:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,16
	.align	3
.L2847:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2852
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2852:
	bgez	$3,.L2846
	nop

	move	$2,$0
.L2846:
	sb	$2,0($13)
	bne	$15,$9,.L2847
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L2848
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi64EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi64EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi64EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi64EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,64			# 0x40
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi64EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L2854
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,67			# 0x43
.L2854:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L2856:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,16
	.align	3
.L2855:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L2855
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L2856
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi64EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi64EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi64EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi64EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi64EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi64EEEvPKhlPhli)))
	li	$16,64			# 0x40
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L2867:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,16
	.align	3
.L2866:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2864
	move	$3,$2

	move	$3,$0
.L2864:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2865
	nop

	li	$2,255			# 0xff
.L2865:
	sb	$2,0($13)
	bne	$14,$4,.L2866
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L2867
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi64EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi64EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi64EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi64EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi64EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,64			# 0x40
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2873:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,16
	.align	3
.L2872:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L2872
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L2873
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi64EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi64EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi64EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi64EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi64EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi64EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi64EEEvPKslPhli)))
	li	$24,64			# 0x40
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi64EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L2881:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,32
	.align	3
.L2880:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2878
	move	$3,$2

	move	$3,$0
.L2878:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2879
	nop

	li	$2,255			# 0xff
.L2879:
	sb	$2,0($12)
	bne	$13,$4,.L2880
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L2881
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi64EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi64EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi64EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi64EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi64EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi64EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi64EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi64EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,64			# 0x40
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2887:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,32
	.align	3
.L2886:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L2886
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L2887
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi64EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi64EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi64EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi48EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi48EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi48EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi48EEEvPKhlPhli)))
	li	$14,48			# 0x30
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi48EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L2895:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,32
	.align	3
.L2894:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2899
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2899:
	bgez	$3,.L2893
	nop

	move	$2,$0
.L2893:
	sb	$2,0($13)
	bne	$15,$9,.L2894
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L2895
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi48EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi48EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi48EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi48EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi48EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi48EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi48EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,48			# 0x30
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi48EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L2901
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,51			# 0x33
.L2901:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L2903:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,32
	.align	3
.L2902:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L2902
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L2903
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi48EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi48EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi48EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi48EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi48EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi48EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi48EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi48EEEvPKhlPhli)))
	li	$16,48			# 0x30
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L2914:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,32
	.align	3
.L2913:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2911
	move	$3,$2

	move	$3,$0
.L2911:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2912
	nop

	li	$2,255			# 0xff
.L2912:
	sb	$2,0($13)
	bne	$14,$4,.L2913
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L2914
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi48EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi48EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi48EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi48EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi48EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi48EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi48EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi48EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,48			# 0x30
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2920:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,32
	.align	3
.L2919:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L2919
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L2920
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi48EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi48EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi48EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi48EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi48EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi48EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi48EEEvPKslPhli)))
	li	$24,48			# 0x30
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi48EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L2928:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,64
	.align	3
.L2927:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2925
	move	$3,$2

	move	$3,$0
.L2925:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2926
	nop

	li	$2,255			# 0xff
.L2926:
	sb	$2,0($12)
	bne	$13,$4,.L2927
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L2928
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi48EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi48EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi48EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi48EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi48EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi48EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi48EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi48EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,48			# 0x30
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2934:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,64
	.align	3
.L2933:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L2933
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L2934
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi48EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi48EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi48EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi48EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi48EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi48EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,48			# 0x30
	.align	3
.L2940:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,64
	.align	3
.L2939:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L2939
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L2940
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi48EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi48EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi48EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi64EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi64EEEvPKhlPhli)))
	li	$14,64			# 0x40
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi64EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L2948:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,24
	.align	3
.L2947:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L2952
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L2952:
	bgez	$3,.L2946
	nop

	move	$2,$0
.L2946:
	sb	$2,0($13)
	bne	$15,$9,.L2947
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L2948
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi64EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi64EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi64EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi64EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,64			# 0x40
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi64EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L2954
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,67			# 0x43
.L2954:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L2956:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,24
	.align	3
.L2955:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L2955
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L2956
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi64EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi64EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi64EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi64EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi64EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi64EEEvPKhlPhli)))
	li	$16,64			# 0x40
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L2967:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,24
	.align	3
.L2966:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L2964
	move	$3,$2

	move	$3,$0
.L2964:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2965
	nop

	li	$2,255			# 0xff
.L2965:
	sb	$2,0($13)
	bne	$14,$4,.L2966
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L2967
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi64EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi64EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi64EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi64EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi64EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,64			# 0x40
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2973:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,24
	.align	3
.L2972:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L2972
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L2973
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi64EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi64EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi64EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi64EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi64EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi64EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi64EEEvPKslPhli)))
	li	$24,64			# 0x40
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi64EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L2981:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,48
	.align	3
.L2980:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L2978
	move	$3,$2

	move	$3,$0
.L2978:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L2979
	nop

	li	$2,255			# 0xff
.L2979:
	sb	$2,0($12)
	bne	$13,$4,.L2980
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L2981
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi64EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi64EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi64EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi64EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi64EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi64EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi64EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi64EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,64			# 0x40
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L2987:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,48
	.align	3
.L2986:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L2986
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L2987
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi64EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi64EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi64EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi24ELi64EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi24ELi64EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi24ELi64EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,64			# 0x40
	.align	3
.L2993:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,48
	.align	3
.L2992:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L2992
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L2993
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi24ELi64EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi24ELi64EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi24ELi64EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi64EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi64EEEvPKhlPhli)))
	li	$14,64			# 0x40
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi64EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L3001:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,8
	.align	3
.L3000:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L3005
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L3005:
	bgez	$3,.L2999
	nop

	move	$2,$0
.L2999:
	sb	$2,0($13)
	bne	$15,$9,.L3000
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L3001
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi64EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi64EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi64EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi64EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$16,64			# 0x40
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi64EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L3007
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$16,67			# 0x43
.L3007:
	dsll	$7,$7,1
	move	$25,$0
	.align	3
.L3009:
	move	$2,$4
	move	$13,$6
	daddiu	$24,$4,8
	.align	3
.L3008:
	lbu	$12,1($2)
	daddiu	$2,$2,1
	daddiu	$13,$13,2
	lh	$10,2($8)
	lh	$15,0($8)
	lbu	$11,-1($2)
	gsmultu	$12,$12,$10
	lh	$14,4($8)
	lbu	$10,1($2)
	lh	$3,6($8)
	lbu	$9,2($2)
	mtlo	$12
	madd	$11,$15
	madd	$10,$14
	madd	$9,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$24,$2,.L3008
	sh	$3,-2($13)

	addiu	$25,$25,1
	daddu	$4,$4,$5
	bne	$16,$25,.L3009
	daddu	$6,$6,$7

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi64EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi64EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi64EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi64EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi64EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi64EEEvPKhlPhli)))
	li	$16,64			# 0x40
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L3020:
	daddu	$15,$4,$5
	move	$10,$6
	daddu	$13,$4,$24
	move	$12,$15
	daddu	$11,$4,$25
	daddiu	$14,$4,8
	.align	3
.L3019:
	lbu	$18,0($12)
	daddiu	$4,$4,1
	daddiu	$12,$12,1
	lh	$9,2($8)
	daddiu	$13,$13,1
	daddiu	$11,$11,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($13)
	lbu	$3,-1($11)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L3017
	move	$3,$2

	move	$3,$0
.L3017:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L3018
	nop

	li	$2,255			# 0xff
.L3018:
	sb	$2,0($10)
	bne	$14,$4,.L3019
	daddiu	$10,$10,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L3020
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi64EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi64EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi64EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi64EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi64EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,64			# 0x40
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L3026:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,8
	.align	3
.L3025:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L3025
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L3026
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi64EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi64EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi64EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi64EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi64EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi64EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi64EEEvPKslPhli)))
	li	$24,64			# 0x40
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi64EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L3034:
	daddu	$15,$4,$25
	move	$9,$6
	daddu	$12,$4,$16
	move	$11,$15
	daddu	$10,$4,$17
	daddiu	$13,$4,16
	.align	3
.L3033:
	lh	$19,0($11)
	daddiu	$4,$4,2
	daddiu	$11,$11,2
	lh	$5,2($8)
	daddiu	$12,$12,2
	daddiu	$10,$10,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($12)
	lh	$3,-2($10)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L3031
	move	$3,$2

	move	$3,$0
.L3031:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L3032
	nop

	li	$2,255			# 0xff
.L3032:
	sb	$2,0($9)
	bne	$13,$4,.L3033
	daddiu	$9,$9,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L3034
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi64EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi64EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi64EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi64EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi64EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi64EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi64EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi64EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,64			# 0x40
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L3040:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,16
	.align	3
.L3039:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L3039
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L3040
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi64EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi64EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi64EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi64EEEvPKhlPsl
	.type	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi64EEEvPKhlPsl, @function
_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi64EEEvPKhlPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	li	$10,64			# 0x40
	.align	3
.L3046:
	move	$8,$4
	move	$3,$6
	daddiu	$9,$6,16
	.align	3
.L3045:
	lbu	$2,0($8)
	daddiu	$3,$3,2
	daddiu	$8,$8,1
	sll	$2,$2,6
	addiu	$2,$2,-8192
	bne	$9,$3,.L3045
	sh	$2,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L3046
	daddu	$6,$6,$7

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi64EEEvPKhlPsl
	.size	_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi64EEEvPKhlPsl, .-_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi64EEEvPKhlPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi64EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi64EEEvPKhlPhli)))
	li	$14,64			# 0x40
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi64EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L3054:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,64
	.align	3
.L3053:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L3058
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L3058:
	bgez	$3,.L3052
	nop

	move	$2,$0
.L3052:
	sb	$2,0($13)
	bne	$15,$9,.L3053
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L3054
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi64EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi64EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi64EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi64EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,64			# 0x40
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi64EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L3060
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,67			# 0x43
.L3060:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L3062:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,64
	.align	3
.L3061:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L3061
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L3062
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi64EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi64EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi64EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi64EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi64EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi64EEEvPKhlPhli)))
	li	$16,64			# 0x40
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L3073:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,64
	.align	3
.L3072:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L3070
	move	$3,$2

	move	$3,$0
.L3070:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L3071
	nop

	li	$2,255			# 0xff
.L3071:
	sb	$2,0($13)
	bne	$14,$4,.L3072
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L3073
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi64EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi64EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi64EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi64EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi64EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,64			# 0x40
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L3079:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,64
	.align	3
.L3078:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L3078
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L3079
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi64EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi64EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi64EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi64EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi64EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi64EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi64EEEvPKslPhli)))
	li	$24,64			# 0x40
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi64EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L3087:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,128
	.align	3
.L3086:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L3084
	move	$3,$2

	move	$3,$0
.L3084:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L3085
	nop

	li	$2,255			# 0xff
.L3085:
	sb	$2,0($12)
	bne	$13,$4,.L3086
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L3087
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi64EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi64EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi64EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi64EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi64EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi64EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi64EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi64EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,64			# 0x40
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L3093:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,128
	.align	3
.L3092:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L3092
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L3093
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi64EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi64EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi64EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi32EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi32EEEvPKhlPhli)))
	li	$14,32			# 0x20
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi32EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L3101:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,64
	.align	3
.L3100:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L3105
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L3105:
	bgez	$3,.L3099
	nop

	move	$2,$0
.L3099:
	sb	$2,0($13)
	bne	$15,$9,.L3100
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L3101
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi32EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi32EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi32EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi32EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,32			# 0x20
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi32EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L3107
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,35			# 0x23
.L3107:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L3109:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,64
	.align	3
.L3108:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L3108
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L3109
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi32EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi32EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi32EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi32EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi32EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi32EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi32EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi32EEEvPKhlPhli)))
	li	$16,32			# 0x20
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L3120:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,64
	.align	3
.L3119:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L3117
	move	$3,$2

	move	$3,$0
.L3117:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L3118
	nop

	li	$2,255			# 0xff
.L3118:
	sb	$2,0($13)
	bne	$14,$4,.L3119
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L3120
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi32EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi32EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi32EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi32EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi32EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi32EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi32EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi32EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,32			# 0x20
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L3126:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,64
	.align	3
.L3125:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L3125
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L3126
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi32EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi32EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi32EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi32EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi32EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi32EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi32EEEvPKslPhli)))
	li	$24,32			# 0x20
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi32EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L3134:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,128
	.align	3
.L3133:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L3131
	move	$3,$2

	move	$3,$0
.L3131:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L3132
	nop

	li	$2,255			# 0xff
.L3132:
	sb	$2,0($12)
	bne	$13,$4,.L3133
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L3134
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi32EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi32EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi32EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi32EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi32EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi32EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi32EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi32EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,32			# 0x20
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L3140:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,128
	.align	3
.L3139:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L3139
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L3140
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi32EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi32EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi32EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi48EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi48EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi48EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi48EEEvPKhlPhli)))
	li	$14,48			# 0x30
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi48EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L3148:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,64
	.align	3
.L3147:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L3152
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L3152:
	bgez	$3,.L3146
	nop

	move	$2,$0
.L3146:
	sb	$2,0($13)
	bne	$15,$9,.L3147
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L3148
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi48EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi48EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi48EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi48EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi48EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi48EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi48EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,48			# 0x30
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi48EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L3154
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,51			# 0x33
.L3154:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L3156:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,64
	.align	3
.L3155:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L3155
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L3156
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi48EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi48EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi48EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi48EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi48EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi48EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi48EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi48EEEvPKhlPhli)))
	li	$16,48			# 0x30
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L3167:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,64
	.align	3
.L3166:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L3164
	move	$3,$2

	move	$3,$0
.L3164:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L3165
	nop

	li	$2,255			# 0xff
.L3165:
	sb	$2,0($13)
	bne	$14,$4,.L3166
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L3167
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi48EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi48EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi48EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi48EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi48EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi48EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi48EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi48EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,48			# 0x30
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L3173:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,64
	.align	3
.L3172:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L3172
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L3173
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi48EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi48EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi48EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi48EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi48EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi48EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi48EEEvPKslPhli)))
	li	$24,48			# 0x30
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi48EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L3181:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,128
	.align	3
.L3180:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L3178
	move	$3,$2

	move	$3,$0
.L3178:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L3179
	nop

	li	$2,255			# 0xff
.L3179:
	sb	$2,0($12)
	bne	$13,$4,.L3180
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L3181
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi48EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi48EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi48EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi48EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi48EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi48EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi48EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi48EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,48			# 0x30
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L3187:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,128
	.align	3
.L3186:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L3186
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L3187
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi48EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi48EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi48EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi48ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi48ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi48ELi64EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi48ELi64EEEvPKhlPhli)))
	li	$14,64			# 0x40
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi48ELi64EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L3195:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,48
	.align	3
.L3194:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L3199
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L3199:
	bgez	$3,.L3193
	nop

	move	$2,$0
.L3193:
	sb	$2,0($13)
	bne	$15,$9,.L3194
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L3195
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi48ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi48ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi48ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi48ELi64EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi48ELi64EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi48ELi64EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi48ELi64EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,64			# 0x40
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi48ELi64EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L3201
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,67			# 0x43
.L3201:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L3203:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,48
	.align	3
.L3202:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L3202
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L3203
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi48ELi64EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi48ELi64EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi48ELi64EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi48ELi64EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi48ELi64EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi48ELi64EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi48ELi64EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi48ELi64EEEvPKhlPhli)))
	li	$16,64			# 0x40
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L3214:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,48
	.align	3
.L3213:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L3211
	move	$3,$2

	move	$3,$0
.L3211:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L3212
	nop

	li	$2,255			# 0xff
.L3212:
	sb	$2,0($13)
	bne	$14,$4,.L3213
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L3214
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi48ELi64EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi48ELi64EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi48ELi64EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi48ELi64EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi48ELi64EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi48ELi64EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi48ELi64EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi48ELi64EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,64			# 0x40
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L3220:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,48
	.align	3
.L3219:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L3219
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L3220
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi48ELi64EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi48ELi64EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi48ELi64EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi48ELi64EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi48ELi64EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi48ELi64EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi48ELi64EEEvPKslPhli)))
	li	$24,64			# 0x40
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi48ELi64EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L3228:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,96
	.align	3
.L3227:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L3225
	move	$3,$2

	move	$3,$0
.L3225:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L3226
	nop

	li	$2,255			# 0xff
.L3226:
	sb	$2,0($12)
	bne	$13,$4,.L3227
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L3228
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi48ELi64EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi48ELi64EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi48ELi64EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi48ELi64EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi48ELi64EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi48ELi64EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi48ELi64EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi48ELi64EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,64			# 0x40
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L3234:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,96
	.align	3
.L3233:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L3233
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L3234
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi48ELi64EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi48ELi64EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi48ELi64EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi16EEEvPKhlPhli:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi16EEEvPKhlPhli)))
	li	$14,16			# 0x10
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi16EEEvPKhlPhli)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dlsa	$8,$8,$2,3
	.align	3
.L3242:
	move	$9,$4
	move	$13,$6
	daddiu	$15,$4,64
	.align	3
.L3241:
	lbu	$12,1($9)
	daddiu	$9,$9,1
	lh	$10,2($8)
	lbu	$11,-1($9)
	lh	$25,0($8)
	gsmultu	$12,$12,$10
	lh	$24,4($8)
	lbu	$10,1($9)
	lbu	$3,2($9)
	lh	$2,6($8)
	mtlo	$12
	madd	$11,$25
	madd	$10,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$3,$2
	slt	$3,$3,256
	bne	$3,$0,.L3246
	seh	$3,$2

	li	$2,255			# 0xff
	seh	$3,$2
.L3246:
	bgez	$3,.L3240
	nop

	move	$2,$0
.L3240:
	sb	$2,0($13)
	bne	$15,$9,.L3241
	daddiu	$13,$13,1

	addiu	$14,$14,-1
	daddu	$4,$4,$5
	bne	$14,$0,.L3242
	daddu	$6,$6,$7

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi16EEEvPKhlPslii
	.type	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi16EEEvPKhlPslii, @function
_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi16EEEvPKhlPslii:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x10010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	daddiu	$4,$4,-1
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi16EEEvPKhlPslii)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	li	$25,16			# 0x10
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi16EEEvPKhlPslii)))
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	beq	$9,$0,.L3248
	dlsa	$8,$8,$2,3

	dsubu	$4,$4,$5
	li	$25,19			# 0x13
.L3248:
	dsll	$16,$7,1
	move	$24,$0
	.align	3
.L3250:
	move	$2,$4
	move	$12,$6
	daddiu	$15,$4,64
	.align	3
.L3249:
	lbu	$11,1($2)
	daddiu	$2,$2,1
	daddiu	$12,$12,2
	lh	$9,2($8)
	lh	$14,0($8)
	lbu	$10,-1($2)
	gsmultu	$11,$11,$9
	lh	$13,4($8)
	lbu	$9,1($2)
	lh	$3,6($8)
	lbu	$7,2($2)
	mtlo	$11
	madd	$10,$14
	madd	$9,$13
	madd	$7,$3
	mflo	$3
	addiu	$3,$3,-8192
	bne	$15,$2,.L3249
	sh	$3,-2($12)

	addiu	$24,$24,1
	daddu	$4,$4,$5
	bne	$25,$24,.L3250
	daddu	$6,$6,$16

	ld	$28,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi16EEEvPKhlPslii
	.size	_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi16EEEvPKhlPslii, .-_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi16EEEvPKhlPslii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi16EEEvPKhlPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi16EEEvPKhlPhli, @function
_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi16EEEvPKhlPhli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsll	$24,$5,1
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi16EEEvPKhlPhli)))
	dsubu	$4,$4,$5
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddu	$25,$24,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi16EEEvPKhlPhli)))
	li	$16,16			# 0x10
	sd	$20,32($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$19,24($sp)
	sd	$18,16($sp)
	dlsa	$8,$8,$2,3
	sd	$17,8($sp)
	.align	3
.L3261:
	daddu	$15,$4,$5
	move	$13,$6
	daddu	$12,$4,$24
	move	$11,$15
	daddu	$10,$4,$25
	daddiu	$14,$4,64
	.align	3
.L3260:
	lbu	$18,0($11)
	daddiu	$4,$4,1
	daddiu	$11,$11,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$10,$10,1
	lbu	$17,-1($4)
	lh	$20,0($8)
	gsmultu	$18,$18,$9
	lh	$19,4($8)
	lbu	$9,-1($12)
	lbu	$3,-1($10)
	lh	$2,6($8)
	mtlo	$18
	madd	$17,$20
	madd	$9,$19
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,32
	sra	$2,$2,6
	seh	$2,$2
	bgez	$2,.L3258
	move	$3,$2

	move	$3,$0
.L3258:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L3259
	nop

	li	$2,255			# 0xff
.L3259:
	sb	$2,0($13)
	bne	$14,$4,.L3260
	daddiu	$13,$13,1

	addiu	$16,$16,-1
	move	$4,$15
	bne	$16,$0,.L3261
	daddu	$6,$6,$7

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi16EEEvPKhlPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi16EEEvPKhlPhli, .-_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi16EEEvPKhlPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi16EEEvPKhlPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi16EEEvPKhlPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi16EEEvPKhlPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	dsubu	$4,$4,$5
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi16EEEvPKhlPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi16EEEvPKhlPsli)))
	sd	$19,24($sp)
	li	$19,16			# 0x10
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	sd	$18,16($sp)
	dsll	$18,$7,1
	sd	$17,8($sp)
	daddu	$17,$16,$5
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L3267:
	daddu	$7,$4,$5
	move	$15,$6
	daddu	$14,$4,$16
	move	$13,$7
	daddu	$12,$4,$17
	daddiu	$25,$4,64
	.align	3
.L3266:
	lbu	$11,0($13)
	daddiu	$4,$4,1
	daddiu	$14,$14,1
	lh	$9,2($8)
	daddiu	$12,$12,1
	daddiu	$15,$15,2
	lbu	$10,-1($4)
	daddiu	$13,$13,1
	lh	$20,0($8)
	gsmultu	$11,$11,$9
	lh	$24,4($8)
	lbu	$9,-1($14)
	lh	$2,6($8)
	lbu	$3,-1($12)
	mtlo	$11
	madd	$10,$20
	madd	$9,$24
	madd	$3,$2
	mflo	$2
	addiu	$2,$2,-8192
	bne	$25,$4,.L3266
	sh	$2,-2($15)

	addiu	$19,$19,-1
	move	$4,$7
	bne	$19,$0,.L3267
	daddu	$6,$6,$18

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi16EEEvPKhlPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi16EEEvPKhlPsli, .-_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi16EEEvPKhlPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi16EEEvPKslPhli
	.type	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi16EEEvPKslPhli, @function
_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi16EEEvPKslPhli:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$14,524288			# 0x80000
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi16EEEvPKslPhli)))
	li	$24,16			# 0x10
	daddu	$28,$28,$25
	dsll	$25,$5,1
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi16EEEvPKslPhli)))
	daddu	$17,$25,$5
	sd	$16,8($sp)
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$25
	dsll	$16,$5,2
	dsll	$17,$17,1
	addiu	$14,$14,2048
	sd	$21,48($sp)
	sd	$20,40($sp)
	dlsa	$8,$8,$2,3
	sd	$19,32($sp)
	sd	$18,24($sp)
	.align	3
.L3275:
	daddu	$15,$4,$25
	move	$12,$6
	daddu	$11,$4,$16
	move	$10,$15
	daddu	$9,$4,$17
	daddiu	$13,$4,128
	.align	3
.L3274:
	lh	$19,0($10)
	daddiu	$4,$4,2
	daddiu	$10,$10,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$9,$9,2
	lh	$18,-2($4)
	lh	$21,0($8)
	gsmultu	$19,$19,$5
	lh	$20,4($8)
	lh	$5,-2($11)
	lh	$3,-2($9)
	lh	$2,6($8)
	mtlo	$19
	madd	$18,$21
	madd	$5,$20
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$14
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L3272
	move	$3,$2

	move	$3,$0
.L3272:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L3273
	nop

	li	$2,255			# 0xff
.L3273:
	sb	$2,0($12)
	bne	$13,$4,.L3274
	daddiu	$12,$12,1

	addiu	$24,$24,-1
	move	$4,$15
	bne	$24,$0,.L3275
	daddu	$6,$6,$7

	ld	$28,56($sp)
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
	.end	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi16EEEvPKslPhli
	.size	_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi16EEEvPKslPhli, .-_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi16EEEvPKslPhli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi16EEEvPKslPsli
	.type	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi16EEEvPKslPsli, @function
_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi16EEEvPKslPsli:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,40($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi16EEEvPKslPsli)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi16EEEvPKslPsli)))
	sd	$19,24($sp)
	daddu	$19,$16,$5
	ld	$2,%got_disp(_ZN4x26514g_chromaFilterE)($28)
	dsubu	$4,$4,$16
	dsll	$19,$19,1
	sd	$18,16($sp)
	dsll	$18,$5,2
	sd	$17,8($sp)
	dsll	$17,$7,1
	li	$7,16			# 0x10
	dlsa	$8,$8,$2,3
	sd	$20,32($sp)
	.align	3
.L3281:
	daddu	$25,$4,$16
	move	$14,$6
	daddu	$13,$4,$18
	move	$12,$25
	daddu	$11,$4,$19
	daddiu	$24,$4,128
	.align	3
.L3280:
	lh	$10,0($12)
	daddiu	$4,$4,2
	daddiu	$13,$13,2
	lh	$5,2($8)
	daddiu	$11,$11,2
	daddiu	$14,$14,2
	lh	$9,-2($4)
	daddiu	$12,$12,2
	lh	$20,0($8)
	gsmultu	$10,$10,$5
	lh	$15,4($8)
	lh	$5,-2($13)
	lh	$2,6($8)
	lh	$3,-2($11)
	mtlo	$10
	madd	$9,$20
	madd	$5,$15
	madd	$3,$2
	mflo	$2
	sra	$2,$2,6
	bne	$24,$4,.L3280
	sh	$2,-2($14)

	addiu	$7,$7,-1
	move	$4,$25
	bne	$7,$0,.L3281
	daddu	$6,$6,$17

	ld	$28,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi16EEEvPKslPsli
	.size	_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi16EEEvPKslPsli, .-_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi16EEEvPKslPsli
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
	.type	_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii, @function
_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii:
	.frame	$sp,176,$31		# vars= 96, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-176
	dsll	$3,$5,1
	sd	$28,160($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)))
	addiu	$2,$8,-1
	daddu	$28,$28,$25
	sd	$6,0($sp)
	dsll	$8,$5,2
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)))
	dsll	$11,$5,3
	sd	$3,72($sp)
	ld	$6,%got_disp(_ZN4x26512g_lumaFilterE)($28)
	daddu	$3,$3,$5
	dext	$2,$2,0,32
	dsll	$12,$3,1
	sd	$fp,168($sp)
	dsll	$3,$3,2
	sd	$8,48($sp)
	dsll	$2,$2,1
	daddu	$8,$8,$5
	li	$fp,524288			# 0x80000
	dsubu	$5,$11,$5
	sd	$3,24($sp)
	dlsa	$10,$10,$6,4
	dsll	$3,$5,1
	sd	$23,152($sp)
	dsll	$6,$8,1
	daddiu	$2,$2,2
	sd	$22,144($sp)
	dsubu	$4,$4,$12
	move	$24,$0
	sd	$21,136($sp)
	addiu	$fp,$fp,2048
	sd	$20,128($sp)
	sd	$19,120($sp)
	sd	$18,112($sp)
	sd	$17,104($sp)
	sd	$16,96($sp)
	sd	$11,40($sp)
	sd	$12,80($sp)
	sd	$7,56($sp)
	sd	$9,64($sp)
	sd	$6,32($sp)
	sd	$3,16($sp)
	sd	$2,88($sp)
	.align	3
.L3289:
	ld	$2,72($sp)
	ld	$22,0($sp)
	daddu	$20,$4,$2
	ld	$2,48($sp)
	sd	$20,8($sp)
	daddu	$21,$4,$2
	ld	$2,80($sp)
	daddu	$19,$4,$2
	ld	$2,40($sp)
	daddu	$18,$4,$2
	ld	$2,32($sp)
	daddu	$17,$4,$2
	ld	$2,24($sp)
	daddu	$16,$4,$2
	ld	$2,16($sp)
	daddu	$25,$4,$2
	ld	$2,88($sp)
	daddu	$23,$4,$2
	.align	3
.L3288:
	lh	$3,0($20)
	daddiu	$4,$4,2
	daddiu	$20,$20,2
	lh	$9,2($10)
	daddiu	$21,$21,2
	daddiu	$19,$19,2
	lh	$2,-2($4)
	daddiu	$18,$18,2
	daddiu	$17,$17,2
	lh	$5,0($10)
	daddiu	$16,$16,2
	daddiu	$25,$25,2
	gsmultu	$3,$3,$9
	lh	$15,4($10)
	lh	$9,-2($21)
	lh	$8,-2($19)
	lh	$14,6($10)
	lh	$7,-2($18)
	mtlo	$3
	lh	$13,8($10)
	madd	$2,$5
	lh	$6,-2($17)
	lh	$12,10($10)
	lh	$5,-2($16)
	lh	$11,12($10)
	lh	$3,-2($25)
	lh	$2,14($10)
	madd	$9,$15
	madd	$8,$14
	madd	$7,$13
	madd	$6,$12
	madd	$5,$11
	madd	$3,$2
	mflo	$2
	addu	$2,$2,$fp
	sra	$2,$2,12
	seh	$2,$2
	bgez	$2,.L3286
	move	$3,$2

	move	$3,$0
.L3286:
	move	$2,$3
	seh	$3,$3
	slt	$3,$3,256
	bne	$3,$0,.L3287
	nop

	li	$2,255			# 0xff
.L3287:
	sb	$2,0($22)
	bne	$23,$4,.L3288
	daddiu	$22,$22,1

	ld	$2,0($sp)
	addiu	$24,$24,1
	ld	$3,56($sp)
	ld	$4,8($sp)
	daddu	$2,$2,$3
	sd	$2,0($sp)
	ld	$2,64($sp)
	bne	$2,$24,.L3289
	ld	$23,152($sp)

	ld	$fp,168($sp)
	ld	$28,160($sp)
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
	.end	_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
	.size	_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii, .-_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi64EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi64EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi64EEEvPKhlPhlii:
	.frame	$sp,2352,$31		# vars= 2304, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-2352
	sd	$28,2336($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi64EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,2304($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi64EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,2328($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi64EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,2320($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,2312($sp)
	li	$7,16			# 0x10
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi64EEEvPKhlPslii)
	sd	$31,2344($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi64EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,96
	li	$9,64			# 0x40
	li	$8,16			# 0x10
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,16			# 0x10

	ld	$31,2344($sp)
	ld	$28,2336($sp)
	ld	$19,2328($sp)
	ld	$18,2320($sp)
	ld	$17,2312($sp)
	ld	$16,2304($sp)
	jr	$31
	daddiu	$sp,$sp,2352

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi64EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi64EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi64EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi16EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi16EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi16EEEvPKhlPhlii:
	.frame	$sp,3024,$31		# vars= 2976, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-3024
	sd	$28,3008($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi16EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,2976($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi16EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,3000($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi16EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,2992($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,2984($sp)
	li	$7,64			# 0x40
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi16EEEvPKhlPslii)
	sd	$31,3016($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi16EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,384
	li	$9,16			# 0x10
	li	$8,64			# 0x40
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,64			# 0x40

	ld	$31,3016($sp)
	ld	$28,3008($sp)
	ld	$19,3000($sp)
	ld	$18,2992($sp)
	ld	$17,2984($sp)
	ld	$16,2976($sp)
	jr	$31
	daddiu	$sp,$sp,3024

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi16EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi16EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi16EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi48ELi64EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi48ELi64EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi48ELi64EEEvPKhlPhlii:
	.frame	$sp,6896,$31		# vars= 6848, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-6896
	sd	$28,6880($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi48ELi64EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,6848($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi48ELi64EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,6872($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi48ELi64EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,6864($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,6856($sp)
	li	$7,48			# 0x30
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi48ELi64EEEvPKhlPslii)
	sd	$31,6888($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi48ELi64EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,288
	li	$9,64			# 0x40
	li	$8,48			# 0x30
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,48			# 0x30

	ld	$31,6888($sp)
	ld	$28,6880($sp)
	ld	$19,6872($sp)
	ld	$18,6864($sp)
	ld	$17,6856($sp)
	ld	$16,6848($sp)
	jr	$31
	daddiu	$sp,$sp,6896

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi48ELi64EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi48ELi64EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi48ELi64EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi48EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi48EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi48EEEvPKhlPhlii:
	.frame	$sp,7120,$31		# vars= 7072, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-7120
	sd	$28,7104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi48EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,7072($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi48EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,7096($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi48EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,7088($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,7080($sp)
	li	$7,64			# 0x40
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi48EEEvPKhlPslii)
	sd	$31,7112($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi48EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,384
	li	$9,48			# 0x30
	li	$8,64			# 0x40
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,64			# 0x40

	ld	$31,7112($sp)
	ld	$28,7104($sp)
	ld	$19,7096($sp)
	ld	$18,7088($sp)
	ld	$17,7080($sp)
	ld	$16,7072($sp)
	jr	$31
	daddiu	$sp,$sp,7120

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi48EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi48EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi48EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi64EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi64EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi64EEEvPKhlPhlii:
	.frame	$sp,4624,$31		# vars= 4576, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-4624
	sd	$28,4608($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi64EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,4576($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi64EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,4600($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi64EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,4592($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,4584($sp)
	li	$7,32			# 0x20
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi64EEEvPKhlPslii)
	sd	$31,4616($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi64EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,192
	li	$9,64			# 0x40
	li	$8,32			# 0x20
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,32			# 0x20

	ld	$31,4616($sp)
	ld	$28,4608($sp)
	ld	$19,4600($sp)
	ld	$18,4592($sp)
	ld	$17,4584($sp)
	ld	$16,4576($sp)
	jr	$31
	daddiu	$sp,$sp,4624

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi64EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi64EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi64EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi32EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi32EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi32EEEvPKhlPhlii:
	.frame	$sp,5072,$31		# vars= 5024, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-5072
	sd	$28,5056($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi32EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,5024($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi32EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,5048($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi32EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,5040($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,5032($sp)
	li	$7,64			# 0x40
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi32EEEvPKhlPslii)
	sd	$31,5064($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi32EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,384
	li	$9,32			# 0x20
	li	$8,64			# 0x40
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,64			# 0x40

	ld	$31,5064($sp)
	ld	$28,5056($sp)
	ld	$19,5048($sp)
	ld	$18,5040($sp)
	ld	$17,5032($sp)
	ld	$16,5024($sp)
	jr	$31
	daddiu	$sp,$sp,5072

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi32EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi32EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi32EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi64EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi64EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi64EEEvPKhlPhlii:
	.frame	$sp,9168,$31		# vars= 9120, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-9168
	sd	$28,9152($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi64EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,9120($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi64EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,9144($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi64EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,9136($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,9128($sp)
	li	$7,64			# 0x40
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi64EEEvPKhlPslii)
	sd	$31,9160($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi64EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,384
	li	$9,64			# 0x40
	li	$8,64			# 0x40
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,64			# 0x40

	ld	$31,9160($sp)
	ld	$28,9152($sp)
	ld	$19,9144($sp)
	ld	$18,9136($sp)
	ld	$17,9128($sp)
	ld	$16,9120($sp)
	jr	$31
	daddiu	$sp,$sp,9168

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi64EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi64EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi64EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi32EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi32EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi32EEEvPKhlPhlii:
	.frame	$sp,704,$31		# vars= 656, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-704
	sd	$28,688($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi32EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,656($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi32EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,680($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi32EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,672($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,664($sp)
	li	$7,8			# 0x8
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi32EEEvPKhlPslii)
	sd	$31,696($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi32EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,48
	li	$9,32			# 0x20
	li	$8,8			# 0x8
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,8			# 0x8

	ld	$31,696($sp)
	ld	$28,688($sp)
	ld	$19,680($sp)
	ld	$18,672($sp)
	ld	$17,664($sp)
	ld	$16,656($sp)
	jr	$31
	daddiu	$sp,$sp,704

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi32EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi32EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi32EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi8EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi8EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi8EEEvPKhlPhlii:
	.frame	$sp,1040,$31		# vars= 992, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-1040
	sd	$28,1024($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi8EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,992($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi8EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,1016($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi8EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,1008($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,1000($sp)
	li	$7,32			# 0x20
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi8EEEvPKhlPslii)
	sd	$31,1032($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi8EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,192
	li	$9,8			# 0x8
	li	$8,32			# 0x20
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,32			# 0x20

	ld	$31,1032($sp)
	ld	$28,1024($sp)
	ld	$19,1016($sp)
	ld	$18,1008($sp)
	ld	$17,1000($sp)
	ld	$16,992($sp)
	jr	$31
	daddiu	$sp,$sp,1040

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi8EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi8EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi8EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi24ELi32EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi24ELi32EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi24ELi32EEEvPKhlPhlii:
	.frame	$sp,1952,$31		# vars= 1904, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-1952
	sd	$28,1936($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi24ELi32EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,1904($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi24ELi32EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,1928($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi24ELi32EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,1920($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,1912($sp)
	li	$7,24			# 0x18
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi24ELi32EEEvPKhlPslii)
	sd	$31,1944($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi24ELi32EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,144
	li	$9,32			# 0x20
	li	$8,24			# 0x18
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,24			# 0x18

	ld	$31,1944($sp)
	ld	$28,1936($sp)
	ld	$19,1928($sp)
	ld	$18,1920($sp)
	ld	$17,1912($sp)
	ld	$16,1904($sp)
	jr	$31
	daddiu	$sp,$sp,1952

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi24ELi32EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi24ELi32EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi24ELi32EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi24EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi24EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi24EEEvPKhlPhlii:
	.frame	$sp,2064,$31		# vars= 2016, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-2064
	sd	$28,2048($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi24EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,2016($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi24EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,2040($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi24EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,2032($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,2024($sp)
	li	$7,32			# 0x20
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi24EEEvPKhlPslii)
	sd	$31,2056($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi24EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,192
	li	$9,24			# 0x18
	li	$8,32			# 0x20
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,32			# 0x20

	ld	$31,2056($sp)
	ld	$28,2048($sp)
	ld	$19,2040($sp)
	ld	$18,2032($sp)
	ld	$17,2024($sp)
	ld	$16,2016($sp)
	jr	$31
	daddiu	$sp,$sp,2064

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi24EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi24EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi24EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi32EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi32EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi32EEEvPKhlPhlii:
	.frame	$sp,1328,$31		# vars= 1280, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-1328
	sd	$28,1312($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi32EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,1280($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi32EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,1304($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi32EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,1296($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,1288($sp)
	li	$7,16			# 0x10
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi32EEEvPKhlPslii)
	sd	$31,1320($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi32EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,96
	li	$9,32			# 0x20
	li	$8,16			# 0x10
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,16			# 0x10

	ld	$31,1320($sp)
	ld	$28,1312($sp)
	ld	$19,1304($sp)
	ld	$18,1296($sp)
	ld	$17,1288($sp)
	ld	$16,1280($sp)
	jr	$31
	daddiu	$sp,$sp,1328

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi32EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi32EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi32EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi16EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi16EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi16EEEvPKhlPhlii:
	.frame	$sp,1552,$31		# vars= 1504, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-1552
	sd	$28,1536($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi16EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,1504($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi16EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,1528($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi16EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,1520($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,1512($sp)
	li	$7,32			# 0x20
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi16EEEvPKhlPslii)
	sd	$31,1544($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi16EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,192
	li	$9,16			# 0x10
	li	$8,32			# 0x20
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,32			# 0x20

	ld	$31,1544($sp)
	ld	$28,1536($sp)
	ld	$19,1528($sp)
	ld	$18,1520($sp)
	ld	$17,1512($sp)
	ld	$16,1504($sp)
	jr	$31
	daddiu	$sp,$sp,1552

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi16EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi16EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi16EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi32EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi32EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi32EEEvPKhlPhlii:
	.frame	$sp,2576,$31		# vars= 2528, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-2576
	sd	$28,2560($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi32EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,2528($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi32EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,2552($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi32EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,2544($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,2536($sp)
	li	$7,32			# 0x20
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi32EEEvPKhlPslii)
	sd	$31,2568($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi32EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,192
	li	$9,32			# 0x20
	li	$8,32			# 0x20
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,32			# 0x20

	ld	$31,2568($sp)
	ld	$28,2560($sp)
	ld	$19,2552($sp)
	ld	$18,2544($sp)
	ld	$17,2536($sp)
	ld	$16,2528($sp)
	jr	$31
	daddiu	$sp,$sp,2576

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi32EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi32EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi32EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi16EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi16EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi16EEEvPKhlPhlii:
	.frame	$sp,272,$31		# vars= 224, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-272
	sd	$28,256($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi16EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,224($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi16EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,248($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi16EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,240($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,232($sp)
	li	$7,4			# 0x4
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi16EEEvPKhlPslii)
	sd	$31,264($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi16EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,24
	li	$9,16			# 0x10
	li	$8,4			# 0x4
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,4			# 0x4

	ld	$31,264($sp)
	ld	$28,256($sp)
	ld	$19,248($sp)
	ld	$18,240($sp)
	ld	$17,232($sp)
	ld	$16,224($sp)
	jr	$31
	daddiu	$sp,$sp,272

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi16EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi16EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi16EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi4EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi4EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi4EEEvPKhlPhlii:
	.frame	$sp,432,$31		# vars= 384, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-432
	sd	$28,416($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi4EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,384($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi4EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,408($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi4EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,400($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,392($sp)
	li	$7,16			# 0x10
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi4EEEvPKhlPslii)
	sd	$31,424($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi4EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,96
	li	$9,4			# 0x4
	li	$8,16			# 0x10
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,16			# 0x10

	ld	$31,424($sp)
	ld	$28,416($sp)
	ld	$19,408($sp)
	ld	$18,400($sp)
	ld	$17,392($sp)
	ld	$16,384($sp)
	jr	$31
	daddiu	$sp,$sp,432

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi4EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi4EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi4EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi12ELi16EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi12ELi16EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi12ELi16EEEvPKhlPhlii:
	.frame	$sp,640,$31		# vars= 592, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-640
	sd	$28,624($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi12ELi16EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,592($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi12ELi16EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,616($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi12ELi16EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,608($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,600($sp)
	li	$7,12			# 0xc
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi12ELi16EEEvPKhlPslii)
	sd	$31,632($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi12ELi16EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,72
	li	$9,16			# 0x10
	li	$8,12			# 0xc
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,12			# 0xc

	ld	$31,632($sp)
	ld	$28,624($sp)
	ld	$19,616($sp)
	ld	$18,608($sp)
	ld	$17,600($sp)
	ld	$16,592($sp)
	jr	$31
	daddiu	$sp,$sp,640

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi12ELi16EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi12ELi16EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi12ELi16EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi12EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi12EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi12EEEvPKhlPhlii:
	.frame	$sp,688,$31		# vars= 640, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-688
	sd	$28,672($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi12EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,640($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi12EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,664($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi12EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,656($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,648($sp)
	li	$7,16			# 0x10
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi12EEEvPKhlPslii)
	sd	$31,680($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi12EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,96
	li	$9,12			# 0xc
	li	$8,16			# 0x10
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,16			# 0x10

	ld	$31,680($sp)
	ld	$28,672($sp)
	ld	$19,664($sp)
	ld	$18,656($sp)
	ld	$17,648($sp)
	ld	$16,640($sp)
	jr	$31
	daddiu	$sp,$sp,688

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi12EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi12EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi12EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi16EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi16EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi16EEEvPKhlPhlii:
	.frame	$sp,448,$31		# vars= 400, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-448
	sd	$28,432($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi16EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,400($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi16EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,424($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi16EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,416($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,408($sp)
	li	$7,8			# 0x8
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi16EEEvPKhlPslii)
	sd	$31,440($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi16EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,48
	li	$9,16			# 0x10
	li	$8,8			# 0x8
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,8			# 0x8

	ld	$31,440($sp)
	ld	$28,432($sp)
	ld	$19,424($sp)
	ld	$18,416($sp)
	ld	$17,408($sp)
	ld	$16,400($sp)
	jr	$31
	daddiu	$sp,$sp,448

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi16EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi16EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi16EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi8EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi8EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi8EEEvPKhlPhlii:
	.frame	$sp,560,$31		# vars= 512, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-560
	sd	$28,544($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi8EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,512($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi8EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,536($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi8EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,528($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,520($sp)
	li	$7,16			# 0x10
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi8EEEvPKhlPslii)
	sd	$31,552($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi8EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,96
	li	$9,8			# 0x8
	li	$8,16			# 0x10
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,16			# 0x10

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
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi8EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi8EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi8EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi16EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi16EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi16EEEvPKhlPhlii:
	.frame	$sp,816,$31		# vars= 768, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-816
	sd	$28,800($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi16EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,768($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi16EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,792($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi16EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,784($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,776($sp)
	li	$7,16			# 0x10
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi16EEEvPKhlPslii)
	sd	$31,808($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi16EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,96
	li	$9,16			# 0x10
	li	$8,16			# 0x10
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,16			# 0x10

	ld	$31,808($sp)
	ld	$28,800($sp)
	ld	$19,792($sp)
	ld	$18,784($sp)
	ld	$17,776($sp)
	ld	$16,768($sp)
	jr	$31
	daddiu	$sp,$sp,816

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi16EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi16EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi16EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi4EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi4EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi4EEEvPKhlPhlii:
	.frame	$sp,256,$31		# vars= 208, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-256
	sd	$28,240($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi4EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,208($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi4EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,232($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi4EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,224($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,216($sp)
	li	$7,8			# 0x8
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi4EEEvPKhlPslii)
	sd	$31,248($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi4EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,48
	li	$9,4			# 0x4
	li	$8,8			# 0x8
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,8			# 0x8

	ld	$31,248($sp)
	ld	$28,240($sp)
	ld	$19,232($sp)
	ld	$18,224($sp)
	ld	$17,216($sp)
	ld	$16,208($sp)
	jr	$31
	daddiu	$sp,$sp,256

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi4EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi4EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi4EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi8EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi8EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi8EEEvPKhlPhlii:
	.frame	$sp,208,$31		# vars= 160, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-208
	sd	$28,192($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi8EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,160($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi8EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,184($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi8EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,176($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,168($sp)
	li	$7,4			# 0x4
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi8EEEvPKhlPslii)
	sd	$31,200($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi8EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,24
	li	$9,8			# 0x8
	li	$8,4			# 0x4
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,4			# 0x4

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
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi8EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi8EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi8EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi8EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi8EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi8EEEvPKhlPhlii:
	.frame	$sp,320,$31		# vars= 272, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-320
	sd	$28,304($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi8EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,272($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi8EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,296($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi8EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,288($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,280($sp)
	li	$7,8			# 0x8
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi8EEEvPKhlPslii)
	sd	$31,312($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi8EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,48
	li	$9,8			# 0x8
	li	$8,8			# 0x8
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,8			# 0x8

	ld	$31,312($sp)
	ld	$28,304($sp)
	ld	$19,296($sp)
	ld	$18,288($sp)
	ld	$17,280($sp)
	ld	$16,272($sp)
	jr	$31
	daddiu	$sp,$sp,320

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi8EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi8EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi8EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi4EEEvPKhlPhlii
	.type	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi4EEEvPKhlPhlii, @function
_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi4EEEvPKhlPhlii:
	.frame	$sp,176,$31		# vars= 128, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-176
	sd	$28,160($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi4EEEvPKhlPhlii)))
	daddu	$28,$28,$25
	sd	$16,128($sp)
	daddiu	$16,$sp,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi4EEEvPKhlPhlii)))
	dsrl	$16,$16,5
	sd	$19,152($sp)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi4EEEvPKhlPslii)($28)
	dsll	$16,$16,5
	move	$19,$9
	sd	$18,144($sp)
	li	$9,1			# 0x1
	move	$18,$7
	sd	$17,136($sp)
	li	$7,4			# 0x4
	move	$17,$6
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi4EEEvPKhlPslii)
	sd	$31,168($sp)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi4EEEvPKhlPslii
1:	jalr	$25
	move	$6,$16

	ld	$25,%got_page(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)($28)
	move	$10,$19
	move	$7,$18
	move	$6,$17
	daddiu	$4,$16,24
	li	$9,4			# 0x4
	li	$8,4			# 0x4
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii)
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_119filterVertical_sp_cILi8EEEvPKslPhliii
1:	jalr	$25
	li	$5,4			# 0x4

	ld	$31,168($sp)
	ld	$28,160($sp)
	ld	$19,152($sp)
	ld	$18,144($sp)
	ld	$17,136($sp)
	ld	$16,128($sp)
	jr	$31
	daddiu	$sp,$sp,176

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi4EEEvPKhlPhlii
	.size	_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi4EEEvPKhlPhlii, .-_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi4EEEvPKhlPhlii
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_1L20extendCURowColBorderEPhliii
	.type	_ZN12_GLOBAL__N_1L20extendCURowColBorderEPhliii, @function
_ZN12_GLOBAL__N_1L20extendCURowColBorderEPhliii:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$7,.L3351
	nop

	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_1L20extendCURowColBorderEPhliii)))
	daddu	$28,$28,$25
	sd	$21,40($sp)
	move	$21,$7
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_1L20extendCURowColBorderEPhliii)))
	move	$20,$5
	sd	$19,24($sp)
	move	$19,$0
	sd	$18,16($sp)
	move	$18,$8
	sd	$17,8($sp)
	move	$17,$4
	sd	$16,0($sp)
	daddu	$16,$4,$6
	sd	$31,56($sp)
	.align	3
.L3345:
	lbu	$5,0($17)
	dsubu	$4,$17,$18
	move	$6,$18
	ld	$25,%call16(memset)($28)
	addiu	$19,$19,1
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	daddu	$17,$17,$20

	lbu	$5,-1($16)
	move	$4,$16
	ld	$25,%call16(memset)($28)
	move	$6,$18
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	daddu	$16,$16,$20

	bne	$21,$19,.L3345
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

.L3351:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_1L20extendCURowColBorderEPhliii
	.size	_ZN12_GLOBAL__N_1L20extendCURowColBorderEPhliii, .-_ZN12_GLOBAL__N_1L20extendCURowColBorderEPhliii
	.align	2
	.align	3
	.globl	_ZN4x26523setupFilterPrimitives_cERNS_17EncoderPrimitivesE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26523setupFilterPrimitives_cERNS_17EncoderPrimitivesE
	.type	_ZN4x26523setupFilterPrimitives_cERNS_17EncoderPrimitivesE, @function
_ZN4x26523setupFilterPrimitives_cERNS_17EncoderPrimitivesE:
	.frame	$sp,912,$31		# vars= 832, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-912
	sd	$28,896($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26523setupFilterPrimitives_cERNS_17EncoderPrimitivesE)))
	daddu	$28,$28,$25
	sd	$fp,904($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26523setupFilterPrimitives_cERNS_17EncoderPrimitivesE)))
	sd	$23,888($sp)
	ld	$2,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi16EEEvPKhlPsl)($28)
	ld	$14,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi32EEEvPKhlPsl)($28)
	sd	$22,880($sp)
	daddiu	$13,$2,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi16EEEvPKhlPsl)
	sd	$21,872($sp)
	sd	$13,816($sp)
	daddiu	$13,$2,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi16EEEvPKhlPsl)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi32EEEvPKhlPsl)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi16EEEvPKslPsli)($28)
	sd	$20,864($sp)
	sd	$19,856($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi16EEEvPKslPsli)
	sd	$18,848($sp)
	sd	$2,808($sp)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi16EEEvPKslPhli)($28)
	sd	$17,840($sp)
	sd	$16,832($sp)
	daddiu	$3,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi16EEEvPKslPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi16EEEvPKhlPsli)($28)
	sd	$3,800($sp)
	sd	$14,712($sp)
	daddiu	$5,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi16EEEvPKhlPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi16EEEvPKhlPhli)($28)
	sd	$5,792($sp)
	ld	$21,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi4EEEvPKhlPsl)($28)
	daddiu	$6,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi16EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi16EEEvPKhlPslii)($28)
	sd	$6,784($sp)
	ld	$19,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi16EEEvPKhlPsl)($28)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi4EEEvPKhlPsl)
	daddiu	$7,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi16EEEvPKhlPslii)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi16EEEvPKhlPhli)($28)
	sd	$7,776($sp)
	ld	$18,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi8EEEvPKhlPsl)($28)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi16EEEvPKhlPsl)
	daddiu	$8,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi16EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi64EEEvPKslPsli)($28)
	sd	$8,768($sp)
	ld	$12,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi32EEEvPKhlPsl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi8EEEvPKhlPsl)
	daddiu	$9,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi64EEEvPKslPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi64EEEvPKslPhli)($28)
	sd	$9,760($sp)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi32EEEvPKhlPsl)
	ld	$23,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi4EEEvPKhlPsl)($28)
	daddiu	$10,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi64EEEvPKslPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi64EEEvPKhlPsli)($28)
	sd	$10,752($sp)
	ld	$22,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi8EEEvPKhlPsl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi4EEEvPKhlPsl)
	daddiu	$11,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi64EEEvPKhlPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi64EEEvPKhlPhli)($28)
	sd	$11,744($sp)
	ld	$17,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi16EEEvPKhlPsl)($28)
	daddiu	$22,$22,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi8EEEvPKhlPsl)
	daddiu	$fp,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi64EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi64EEEvPKhlPslii)($28)
	sd	$fp,736($sp)
	ld	$15,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi16EEEvPKhlPsl)($28)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi16EEEvPKhlPsl)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi64EEEvPKhlPslii)
	ld	$20,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi8EEEvPKhlPsl)($28)
	sd	$2,728($sp)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi64EEEvPKhlPhli)($28)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi16EEEvPKhlPsl)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi8EEEvPKhlPsl)
	ld	$16,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi12EEEvPKhlPsl)($28)
	ld	$25,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi16EEEvPKhlPsl)($28)
	daddiu	$3,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi64EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi32EEEvPKslPsli)($28)
	sd	$3,720($sp)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi12EEEvPKhlPsl)
	ld	$24,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi4EEEvPKhlPsl)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi16EEEvPKhlPsl)
	daddiu	$5,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi32EEEvPKslPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi32EEEvPKslPhli)($28)
	sd	$5,696($sp)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi4EEEvPKhlPsl)
	ld	$11,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi24EEEvPKhlPsl)($28)
	daddiu	$6,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi32EEEvPKslPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi32EEEvPKhlPsli)($28)
	sd	$6,688($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi24EEEvPKhlPsl)
	daddiu	$7,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi32EEEvPKhlPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi32EEEvPKhlPhli)($28)
	sd	$7,680($sp)
	daddiu	$8,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi32EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi32EEEvPKhlPslii)($28)
	sd	$8,672($sp)
	daddiu	$9,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi32EEEvPKhlPslii)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi32EEEvPKhlPhli)($28)
	sd	$9,664($sp)
	daddiu	$10,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi32EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi64EEEvPKhlPsl)($28)
	sd	$10,656($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi64EEEvPKhlPsl)
	sd	$2,648($sp)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi64EEEvPKslPsli)($28)
	daddiu	$3,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi64EEEvPKslPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi64EEEvPKslPhli)($28)
	sd	$3,640($sp)
	sd	$18,592($sp)
	daddiu	$5,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi64EEEvPKslPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi64EEEvPKhlPsli)($28)
	sd	$5,632($sp)
	sd	$19,536($sp)
	daddiu	$6,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi64EEEvPKhlPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi64EEEvPKhlPhli)($28)
	sd	$6,624($sp)
	sd	$12,480($sp)
	daddiu	$7,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi64EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi64EEEvPKhlPslii)($28)
	sd	$7,616($sp)
	sd	$21,424($sp)
	daddiu	$8,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi64EEEvPKhlPslii)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi64EEEvPKhlPhli)($28)
	sd	$8,608($sp)
	daddiu	$9,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi64EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi24ELi32EEEvPKhlPsl)($28)
	sd	$9,600($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi24ELi32EEEvPKhlPsl)
	sd	$2,704($sp)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi8EEEvPKslPsli)($28)
	daddiu	$10,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi8EEEvPKslPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi8EEEvPKslPhli)($28)
	sd	$10,584($sp)
	daddiu	$fp,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi8EEEvPKslPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi8EEEvPKhlPsli)($28)
	sd	$fp,576($sp)
	daddiu	$3,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi8EEEvPKhlPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi8EEEvPKhlPhli)($28)
	sd	$3,568($sp)
	daddiu	$5,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi8EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi8EEEvPKhlPslii)($28)
	sd	$5,560($sp)
	daddiu	$6,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi8EEEvPKhlPslii)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi8EEEvPKhlPhli)($28)
	sd	$6,552($sp)
	daddiu	$7,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi8EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi16EEEvPKslPsli)($28)
	sd	$7,544($sp)
	daddiu	$9,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi16EEEvPKslPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi16EEEvPKslPhli)($28)
	sd	$9,528($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi16EEEvPKslPhli)
	sd	$2,520($sp)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi16EEEvPKhlPsli)($28)
	daddiu	$10,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi16EEEvPKhlPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi16EEEvPKhlPhli)($28)
	sd	$10,512($sp)
	daddiu	$fp,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi16EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi16EEEvPKhlPslii)($28)
	sd	$fp,504($sp)
	daddiu	$3,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi16EEEvPKhlPslii)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi16EEEvPKhlPhli)($28)
	sd	$3,496($sp)
	daddiu	$5,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi16EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi32EEEvPKslPsli)($28)
	sd	$5,488($sp)
	daddiu	$7,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi32EEEvPKslPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi32EEEvPKslPhli)($28)
	sd	$7,472($sp)
	daddiu	$8,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi32EEEvPKslPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi32EEEvPKhlPsli)($28)
	sd	$8,464($sp)
	daddiu	$9,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi32EEEvPKhlPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi32EEEvPKhlPhli)($28)
	sd	$9,456($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi32EEEvPKhlPhli)
	sd	$2,448($sp)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi32EEEvPKhlPslii)($28)
	daddiu	$10,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi32EEEvPKhlPslii)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi32EEEvPKhlPhli)($28)
	sd	$10,440($sp)
	daddiu	$fp,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi32EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi4EEEvPKslPsli)($28)
	sd	$fp,432($sp)
	daddiu	$5,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi4EEEvPKslPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi4EEEvPKslPhli)($28)
	sd	$5,416($sp)
	daddiu	$6,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi4EEEvPKslPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi4EEEvPKhlPsli)($28)
	sd	$6,408($sp)
	daddiu	$7,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi4EEEvPKhlPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi4EEEvPKhlPhli)($28)
	sd	$7,400($sp)
	daddiu	$8,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi4EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi4EEEvPKhlPslii)($28)
	sd	$8,392($sp)
	daddiu	$9,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi4EEEvPKhlPslii)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi4EEEvPKhlPhli)($28)
	sd	$9,384($sp)
	sd	$15,368($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi4EEEvPKhlPhli)
	sd	$22,312($sp)
	sd	$2,376($sp)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi16EEEvPKslPsli)($28)
	sd	$17,256($sp)
	sd	$23,200($sp)
	daddiu	$3,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi16EEEvPKslPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi16EEEvPKslPhli)($28)
	sd	$3,360($sp)
	daddiu	$5,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi16EEEvPKslPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi16EEEvPKhlPsli)($28)
	sd	$5,352($sp)
	daddiu	$6,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi16EEEvPKhlPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi16EEEvPKhlPhli)($28)
	sd	$6,344($sp)
	daddiu	$7,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi16EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi16EEEvPKhlPslii)($28)
	sd	$7,336($sp)
	daddiu	$8,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi16EEEvPKhlPslii)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi16EEEvPKhlPhli)($28)
	sd	$8,328($sp)
	daddiu	$9,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi16EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi8EEEvPKslPsli)($28)
	sd	$9,320($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi8EEEvPKslPsli)
	sd	$2,304($sp)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi8EEEvPKslPhli)($28)
	daddiu	$10,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi8EEEvPKslPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi8EEEvPKhlPsli)($28)
	sd	$10,296($sp)
	daddiu	$3,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi8EEEvPKhlPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi8EEEvPKhlPhli)($28)
	sd	$3,288($sp)
	daddiu	$5,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi8EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi8EEEvPKhlPslii)($28)
	sd	$5,280($sp)
	daddiu	$6,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi8EEEvPKhlPslii)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi8EEEvPKhlPhli)($28)
	sd	$6,272($sp)
	daddiu	$7,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi8EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi16EEEvPKslPsli)($28)
	sd	$7,264($sp)
	daddiu	$9,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi16EEEvPKslPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi16EEEvPKslPhli)($28)
	sd	$9,248($sp)
	daddiu	$fp,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi16EEEvPKslPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi16EEEvPKhlPsli)($28)
	sd	$fp,240($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi16EEEvPKhlPsli)
	sd	$2,232($sp)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi16EEEvPKhlPhli)($28)
	daddiu	$10,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi16EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi16EEEvPKhlPslii)($28)
	sd	$10,224($sp)
	daddiu	$3,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi16EEEvPKhlPslii)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi16EEEvPKhlPhli)($28)
	sd	$3,216($sp)
	daddiu	$5,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi16EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi32EEEvPKhlPhli)($28)
	sd	$5,208($sp)
	daddiu	$6,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi32EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi32EEEvPKhlPsli)($28)
	sd	$6,0($sp)
	daddiu	$7,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi32EEEvPKhlPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi32EEEvPKslPhli)($28)
	sd	$7,8($sp)
	daddiu	$8,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi32EEEvPKslPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi32EEEvPKslPsli)($28)
	sd	$8,16($sp)
	daddiu	$fp,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi32EEEvPKslPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi4EEEvPKslPsli)($28)
	sd	$fp,24($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi4EEEvPKslPsli)
	sd	$2,192($sp)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi4EEEvPKslPhli)($28)
	daddiu	$10,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi4EEEvPKslPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi4EEEvPKhlPsli)($28)
	sd	$10,184($sp)
	daddiu	$3,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi4EEEvPKhlPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi4EEEvPKhlPhli)($28)
	sd	$3,176($sp)
	daddiu	$5,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi4EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi4EEEvPKhlPslii)($28)
	sd	$5,168($sp)
	daddiu	$6,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi4EEEvPKhlPslii)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi4EEEvPKhlPhli)($28)
	sd	$6,160($sp)
	daddiu	$7,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi4EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi8EEEvPKslPsli)($28)
	sd	$7,152($sp)
	sd	$20,144($sp)
	daddiu	$9,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi8EEEvPKslPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi16EEEvPKhlPsl)($28)
	sd	$9,136($sp)
	sd	$23,120($4)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi16EEEvPKhlPsl)
	sd	$22,248($4)
	sd	$2,32($sp)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi8EEEvPKslPhli)($28)
	daddiu	$10,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi8EEEvPKslPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi8EEEvPKhlPhli)($28)
	sd	$10,128($sp)
	daddiu	$fp,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi8EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi8EEEvPKhlPsli)($28)
	sd	$fp,40($sp)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi4EEEvPKhlPhli)($28)
	daddiu	$3,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi8EEEvPKhlPsli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi8EEEvPKhlPslii)($28)
	sd	$3,120($sp)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi4EEEvPKhlPhli)
	ld	$3,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi32EEEvPKhlPsl)($28)
	sd	$fp,40($4)
	daddiu	$5,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi8EEEvPKhlPslii)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi4EEEvPKhlPslii)($28)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi8EEEvPKhlPhli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi32EEEvPKhlPsl)
	sd	$5,48($sp)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi4EEEvPKhlPslii)
	sd	$fp,48($4)
	daddiu	$6,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi8EEEvPKhlPhli)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi4EEEvPKhlPhli)($28)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi8EEEvPKhlPhli)($28)
	sd	$6,112($sp)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi4EEEvPKhlPhli)
	sd	$fp,56($4)
	daddiu	$7,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi8EEEvPKhlPhli)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi4EEEvPKhlPsli)($28)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi8EEEvPKhlPslii)($28)
	sd	$7,56($sp)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi4EEEvPKhlPsli)
	ld	$7,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi32EEEvPKhlPsli)($28)
	sd	$fp,64($4)
	daddiu	$8,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi8EEEvPKhlPslii)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi4EEEvPKslPhli)($28)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi8EEEvPKhlPsli)($28)
	daddiu	$7,$7,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi32EEEvPKhlPsli)
	sd	$8,104($sp)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi4EEEvPKslPhli)
	ld	$8,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi32EEEvPKhlPhli)($28)
	sd	$fp,72($4)
	daddiu	$9,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi8EEEvPKhlPsli)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi4EEEvPKslPsli)($28)
	ld	$2,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi8EEEvPKhlPhli)($28)
	daddiu	$8,$8,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi32EEEvPKhlPhli)
	sd	$9,64($sp)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi4EEEvPKslPsli)
	ld	$9,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi32EEEvPKhlPslii)($28)
	sd	$fp,80($4)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi8EEEvPKhlPhli)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi4EEEvPKhlPhlii)($28)
	sd	$2,96($sp)
	daddiu	$9,$9,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi32EEEvPKhlPslii)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi8EEEvPKslPhli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi4EEEvPKhlPhlii)
	sd	$fp,88($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi8EEEvPKhlPhli)($28)
	daddiu	$10,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi8EEEvPKslPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi8EEEvPKslPsli)($28)
	sd	$10,72($sp)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi8EEEvPKhlPhli)
	ld	$10,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi32EEEvPKhlPhli)($28)
	sd	$fp,168($4)
	daddiu	$5,$2,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi8EEEvPKslPsli)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi8EEEvPKhlPslii)($28)
	ld	$2,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi8EEEvPKhlPsl)($28)
	daddiu	$10,$10,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi32EEEvPKhlPhli)
	sd	$5,80($sp)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi8EEEvPKhlPslii)
	ld	$5,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi32EEEvPKslPsli)($28)
	sd	$fp,176($4)
	daddiu	$6,$2,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi8EEEvPKhlPsl)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi8EEEvPKhlPhli)($28)
	sd	$6,88($sp)
	daddiu	$5,$5,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi32EEEvPKslPsli)
	ld	$6,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi32EEEvPKslPhli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi8EEEvPKhlPhli)
	ld	$2,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi64EEEvPKhlPsl)($28)
	sd	$fp,184($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi8EEEvPKhlPsli)($28)
	daddiu	$6,$6,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi32EEEvPKslPhli)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi64EEEvPKhlPsl)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi8EEEvPKhlPsli)
	sd	$fp,192($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi8EEEvPKslPhli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi8EEEvPKslPhli)
	sd	$fp,200($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi8EEEvPKslPsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi8EEEvPKslPsli)
	sd	$fp,208($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi8EEEvPKhlPhlii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi8EEEvPKhlPhlii)
	sd	$fp,216($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi4EEEvPKhlPhli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi4EEEvPKhlPhli)
	sd	$fp,8576($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi4EEEvPKhlPslii)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi4EEEvPKhlPslii)
	sd	$fp,8584($4)
	sd	$23,8608($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi8EEEvPKhlPhli)($28)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi4EEEvPKhlPhli)($28)
	sd	$20,888($4)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi8EEEvPKhlPhli)
	sd	$21,760($4)
	sd	$23,808($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi4EEEvPKhlPhli)
	ld	$23,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi8EEEvPKhlPslii)($28)
	sd	$fp,8544($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi4EEEvPKhlPsli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi8EEEvPKhlPslii)
	sd	$23,816($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi8EEEvPKhlPhli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi4EEEvPKhlPsli)
	sd	$fp,8552($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi4EEEvPKslPhli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi8EEEvPKhlPhli)
	sd	$23,824($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi8EEEvPKhlPsli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi4EEEvPKslPhli)
	sd	$fp,8560($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi4EEEvPKslPsli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi8EEEvPKhlPsli)
	sd	$23,832($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi8EEEvPKslPhli)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi4EEEvPKslPsli)
	sd	$fp,8568($4)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi8EEEvPKslPhli)
	sd	$23,840($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi8EEEvPKslPsli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi8EEEvPKslPsli)
	sd	$23,848($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi8EEEvPKhlPhlii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi8EEEvPKhlPhlii)
	sd	$23,856($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi4EEEvPKhlPhli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi4EEEvPKhlPhli)
	sd	$23,8976($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi4EEEvPKhlPslii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi4EEEvPKhlPslii)
	sd	$23,8984($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi4EEEvPKhlPhli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi4EEEvPKhlPhli)
	sd	$23,8944($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi4EEEvPKhlPsli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi4EEEvPKhlPsli)
	sd	$23,8952($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi4EEEvPKslPhli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi4EEEvPKslPhli)
	sd	$23,8960($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi4EEEvPKslPsli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi4EEEvPKslPsli)
	sd	$23,8968($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi4EEEvPKhlPsl)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi4EEEvPKhlPsl)
	sd	$23,9008($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi4EEEvPKhlPhli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi4EEEvPKhlPhli)
	sd	$23,680($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi4EEEvPKhlPslii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi4EEEvPKhlPslii)
	sd	$23,688($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi4EEEvPKhlPhli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi4EEEvPKhlPhli)
	sd	$23,696($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi4EEEvPKhlPsli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi4EEEvPKhlPsli)
	sd	$23,704($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi4EEEvPKslPhli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi4EEEvPKslPhli)
	sd	$23,712($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi4EEEvPKslPsli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi4EEEvPKslPsli)
	sd	$23,720($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi4EEEvPKhlPhlii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi4EEEvPKhlPhlii)
	sd	$23,728($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi2EEEvPKhlPhli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi2EEEvPKhlPhli)
	sd	$23,8896($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi2EEEvPKhlPslii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi2EEEvPKhlPslii)
	sd	$23,8904($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi2EEEvPKhlPhli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi2EEEvPKhlPhli)
	sd	$23,8864($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi2EEEvPKhlPsli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi2EEEvPKhlPsli)
	sd	$23,8872($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi2EEEvPKslPhli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi2EEEvPKslPhli)
	sd	$23,8880($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi2EEEvPKslPsli)($28)
	sd	$22,8688($4)
	ld	$22,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi8EEEvPKhlPhli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi2EEEvPKslPsli)
	sd	$21,9088($4)
	sd	$23,8888($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi2EEEvPKhlPsl)($28)
	daddiu	$22,$22,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi8EEEvPKhlPhli)
	sd	$22,936($4)
	ld	$22,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi8EEEvPKhlPslii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi2EEEvPKhlPsl)
	ld	$21,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi16EEEvPKhlPhli)($28)
	sd	$23,8928($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi16EEEvPKhlPhli)($28)
	daddiu	$22,$22,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi8EEEvPKhlPslii)
	sd	$22,944($4)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi16EEEvPKhlPhli)
	ld	$22,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi8EEEvPKhlPhli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi16EEEvPKhlPhli)
	sd	$19,376($4)
	sd	$23,296($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi16EEEvPKhlPslii)($28)
	daddiu	$22,$22,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi8EEEvPKhlPhli)
	sd	$22,952($4)
	ld	$22,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi8EEEvPKhlPsli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi16EEEvPKhlPslii)
	sd	$18,1016($4)
	sd	$23,304($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi16EEEvPKhlPhli)($28)
	daddiu	$22,$22,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi8EEEvPKhlPsli)
	sd	$22,960($4)
	ld	$22,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi8EEEvPKslPhli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi16EEEvPKhlPhli)
	sd	$23,312($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi16EEEvPKhlPsli)($28)
	daddiu	$22,$22,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi8EEEvPKslPhli)
	sd	$22,968($4)
	ld	$22,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi8EEEvPKslPsli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi16EEEvPKhlPsli)
	sd	$23,320($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi16EEEvPKslPhli)($28)
	daddiu	$22,$22,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi8EEEvPKslPsli)
	sd	$22,976($4)
	ld	$22,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi8EEEvPKhlPhlii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi16EEEvPKslPhli)
	sd	$23,328($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi16EEEvPKslPsli)($28)
	daddiu	$22,$22,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi8EEEvPKhlPhlii)
	sd	$22,984($4)
	ld	$22,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi4EEEvPKhlPhli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi16EEEvPKslPsli)
	sd	$23,336($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi16EEEvPKhlPhlii)($28)
	daddiu	$22,$22,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi4EEEvPKhlPhli)
	sd	$22,9056($4)
	ld	$22,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi4EEEvPKhlPslii)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi16EEEvPKhlPhlii)
	sd	$23,344($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi8EEEvPKhlPhli)($28)
	daddiu	$22,$22,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi4EEEvPKhlPslii)
	sd	$22,9064($4)
	ld	$22,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi4EEEvPKhlPhli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi8EEEvPKhlPhli)
	sd	$23,8656($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi8EEEvPKhlPslii)($28)
	daddiu	$22,$22,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi4EEEvPKhlPhli)
	sd	$22,9024($4)
	ld	$22,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi4EEEvPKhlPsli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi8EEEvPKhlPslii)
	sd	$23,8664($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi8EEEvPKhlPhli)($28)
	daddiu	$22,$22,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi4EEEvPKhlPsli)
	sd	$22,9032($4)
	ld	$22,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi4EEEvPKslPhli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi8EEEvPKhlPhli)
	sd	$23,8624($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi8EEEvPKhlPsli)($28)
	daddiu	$22,$22,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi4EEEvPKslPhli)
	sd	$22,9040($4)
	ld	$22,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi4EEEvPKslPsli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi8EEEvPKhlPsli)
	sd	$23,8632($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi8EEEvPKslPhli)($28)
	daddiu	$22,$22,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi4EEEvPKslPsli)
	sd	$22,9048($4)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi8EEEvPKslPhli)
	sd	$23,8640($4)
	ld	$23,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi8EEEvPKslPsli)($28)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi8EEEvPKslPsli)
	sd	$23,8648($4)
	sd	$21,1064($4)
	sd	$20,9168($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi12EEEvPKhlPhli)($28)
	ld	$21,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi16EEEvPKhlPslii)($28)
	sd	$17,1144($4)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi12EEEvPKhlPhli)
	sd	$16,1784($4)
	sd	$20,1704($4)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi16EEEvPKhlPslii)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi12EEEvPKhlPslii)($28)
	sd	$21,1072($4)
	ld	$21,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi16EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi12EEEvPKhlPslii)
	sd	$20,1712($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi12EEEvPKhlPhli)($28)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi16EEEvPKhlPhli)
	sd	$21,1080($4)
	ld	$21,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi16EEEvPKhlPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi12EEEvPKhlPhli)
	sd	$20,1720($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi12EEEvPKhlPsli)($28)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi16EEEvPKhlPsli)
	sd	$21,1088($4)
	ld	$21,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi16EEEvPKslPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi12EEEvPKhlPsli)
	sd	$20,1728($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi12EEEvPKslPhli)($28)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi16EEEvPKslPhli)
	sd	$21,1096($4)
	ld	$21,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi16EEEvPKslPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi12EEEvPKslPhli)
	sd	$20,1736($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi12EEEvPKslPsli)($28)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi16EEEvPKslPsli)
	sd	$21,1104($4)
	ld	$21,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi16EEEvPKhlPhlii)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi12EEEvPKslPsli)
	sd	$20,1744($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi12EEEvPKhlPhlii)($28)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi16EEEvPKhlPhlii)
	sd	$21,1112($4)
	ld	$21,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi8EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi12EEEvPKhlPhlii)
	sd	$20,1752($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi6EEEvPKhlPhli)($28)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi8EEEvPKhlPhli)
	sd	$21,9136($4)
	ld	$21,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi8EEEvPKhlPslii)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi6EEEvPKhlPhli)
	sd	$20,9536($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi6EEEvPKhlPslii)($28)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi8EEEvPKhlPslii)
	sd	$21,9144($4)
	ld	$21,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi8EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi6EEEvPKhlPslii)
	sd	$20,9544($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi6EEEvPKhlPhli)($28)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi8EEEvPKhlPhli)
	sd	$21,9104($4)
	ld	$21,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi8EEEvPKhlPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi6EEEvPKhlPhli)
	sd	$20,9504($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi6EEEvPKhlPsli)($28)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi8EEEvPKhlPsli)
	sd	$21,9112($4)
	ld	$21,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi8EEEvPKslPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi6EEEvPKhlPsli)
	sd	$20,9512($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi6EEEvPKslPhli)($28)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi8EEEvPKslPhli)
	sd	$21,9120($4)
	ld	$21,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi8EEEvPKslPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi6EEEvPKslPhli)
	sd	$20,9520($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi6EEEvPKslPsli)($28)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi8EEEvPKslPsli)
	sd	$21,9128($4)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi6EEEvPKslPsli)
	sd	$20,9528($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi6EEEvPKhlPsl)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi6EEEvPKhlPsl)
	sd	$20,9568($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi12ELi16EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi12ELi16EEEvPKhlPhli)
	sd	$20,1832($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi12ELi16EEEvPKhlPslii)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi12ELi16EEEvPKhlPslii)
	sd	$20,1840($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi12ELi16EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi12ELi16EEEvPKhlPhli)
	sd	$20,1848($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi12ELi16EEEvPKhlPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi12ELi16EEEvPKhlPsli)
	sd	$20,1856($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi12ELi16EEEvPKslPhli)($28)
	sd	$25,1912($4)
	sd	$24,2040($4)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi12ELi16EEEvPKslPhli)
	sd	$20,1864($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi12ELi16EEEvPKslPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi12ELi16EEEvPKslPsli)
	sd	$20,1872($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi12ELi16EEEvPKhlPhlii)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi12ELi16EEEvPKhlPhlii)
	sd	$20,1880($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi8EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi8EEEvPKhlPhli)
	sd	$20,9616($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi8EEEvPKhlPslii)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi8EEEvPKhlPslii)
	sd	$20,9624($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi8EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi8EEEvPKhlPhli)
	sd	$20,9584($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi8EEEvPKhlPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi8EEEvPKhlPsli)
	sd	$20,9592($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi8EEEvPKslPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi8EEEvPKslPhli)
	sd	$20,9600($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi8EEEvPKslPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi8EEEvPKslPsli)
	sd	$20,9608($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi6ELi8EEEvPKhlPsl)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi6ELi8EEEvPKhlPsl)
	sd	$20,9648($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi4EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi4EEEvPKhlPhli)
	sd	$20,1960($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi4EEEvPKhlPslii)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi4EEEvPKhlPslii)
	sd	$20,1968($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi4EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi4EEEvPKhlPhli)
	sd	$20,1976($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi4EEEvPKhlPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi4EEEvPKhlPsli)
	sd	$20,1984($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi4EEEvPKslPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi4EEEvPKslPhli)
	sd	$20,1992($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi4EEEvPKslPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi4EEEvPKslPsli)
	sd	$20,2000($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi4EEEvPKhlPhlii)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi4EEEvPKhlPhlii)
	sd	$20,2008($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi2EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi2EEEvPKhlPhli)
	sd	$20,9696($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi2EEEvPKhlPslii)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi2EEEvPKhlPslii)
	sd	$20,9704($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi2EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi2EEEvPKhlPhli)
	sd	$20,9664($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi2EEEvPKhlPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi2EEEvPKhlPsli)
	sd	$20,9672($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi2EEEvPKslPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi2EEEvPKslPhli)
	sd	$20,9680($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi2EEEvPKslPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi2EEEvPKslPsli)
	sd	$20,9688($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi2EEEvPKhlPsl)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi2EEEvPKhlPsl)
	sd	$20,9728($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi16EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi4ELi16EEEvPKhlPhli)
	sd	$20,2088($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi16EEEvPKhlPslii)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi4ELi16EEEvPKhlPslii)
	sd	$20,2096($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi16EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi4ELi16EEEvPKhlPhli)
	sd	$20,2104($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi16EEEvPKhlPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi4ELi16EEEvPKhlPsli)
	sd	$20,2112($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi16EEEvPKslPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi4ELi16EEEvPKslPhli)
	sd	$20,2120($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi16EEEvPKslPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi4ELi16EEEvPKslPsli)
	sd	$20,2128($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi16EEEvPKhlPhlii)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi4ELi16EEEvPKhlPhlii)
	sd	$20,2136($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi8EEEvPKhlPhli)($28)
	sd	$19,8768($4)
	ld	$19,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi16EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi8EEEvPKhlPhli)
	sd	$15,2168($4)
	sd	$20,9776($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi8EEEvPKhlPslii)($28)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi16EEEvPKhlPhli)
	sd	$19,1192($4)
	ld	$19,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi16EEEvPKhlPslii)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi8EEEvPKhlPslii)
	sd	$14,504($4)
	sd	$20,9784($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi8EEEvPKhlPhli)($28)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi16EEEvPKhlPslii)
	sd	$19,1200($4)
	ld	$19,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi16EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi8EEEvPKhlPhli)
	sd	$13,1272($4)
	sd	$20,9744($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi8EEEvPKhlPsli)($28)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi16EEEvPKhlPhli)
	sd	$19,1208($4)
	ld	$19,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi16EEEvPKhlPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi8EEEvPKhlPsli)
	sd	$20,9752($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi8EEEvPKslPhli)($28)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi16EEEvPKhlPsli)
	sd	$19,1216($4)
	ld	$19,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi16EEEvPKslPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi8EEEvPKslPhli)
	sd	$20,9760($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi8EEEvPKslPsli)($28)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi16EEEvPKslPhli)
	sd	$19,1224($4)
	ld	$19,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi16EEEvPKslPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi8EEEvPKslPsli)
	sd	$20,9768($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi8EEEvPKhlPsl)($28)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi16EEEvPKslPsli)
	sd	$19,1232($4)
	ld	$19,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi16EEEvPKhlPhlii)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi8EEEvPKhlPsl)
	sd	$20,9808($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi32EEEvPKhlPhli)($28)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi16EEEvPKhlPhlii)
	sd	$19,1240($4)
	ld	$19,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi8EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi32EEEvPKhlPhli)
	sd	$20,424($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi32EEEvPKhlPslii)($28)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi8EEEvPKhlPhli)
	sd	$19,9216($4)
	ld	$19,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi8EEEvPKhlPslii)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi32EEEvPKhlPslii)
	sd	$20,432($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi32EEEvPKhlPhli)($28)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi8EEEvPKhlPslii)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi32EEEvPKhlPhli)
	sd	$20,440($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi32EEEvPKhlPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi32EEEvPKhlPsli)
	sd	$20,448($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi32EEEvPKslPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi32EEEvPKslPhli)
	sd	$20,456($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi32EEEvPKslPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi32EEEvPKslPsli)
	sd	$20,464($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi32EEEvPKhlPhlii)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi32EEEvPKhlPhlii)
	sd	$20,472($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi16EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi16EEEvPKhlPhli)
	sd	$20,8736($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi16EEEvPKhlPslii)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi16EEEvPKhlPslii)
	sd	$20,8744($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi16EEEvPKhlPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi16EEEvPKhlPhli)
	sd	$20,8704($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi16EEEvPKhlPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi16EEEvPKhlPsli)
	sd	$20,8712($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi16EEEvPKslPhli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi16EEEvPKslPhli)
	sd	$20,8720($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi16EEEvPKslPsli)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi16EEEvPKslPsli)
	sd	$20,8728($4)
	sd	$19,9224($4)
	sd	$18,9248($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi32EEEvPKhlPhli)($28)
	sd	$17,9328($4)
	ld	$17,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi24EEEvPKhlPhli)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi32EEEvPKhlPhli)
	ld	$19,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi8EEEvPKhlPhli)($28)
	sd	$18,1320($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi32EEEvPKhlPslii)($28)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi24EEEvPKhlPhli)
	sd	$17,2216($4)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi8EEEvPKhlPhli)
	ld	$17,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi24EEEvPKhlPslii)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi32EEEvPKhlPslii)
	sd	$19,9184($4)
	sd	$18,1328($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi32EEEvPKhlPhli)($28)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi24EEEvPKhlPslii)
	sd	$17,2224($4)
	ld	$17,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi24EEEvPKhlPhli)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi32EEEvPKhlPhli)
	ld	$19,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi8EEEvPKhlPsli)($28)
	sd	$18,1336($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi32EEEvPKhlPsli)($28)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi24EEEvPKhlPhli)
	sd	$17,2232($4)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi8EEEvPKhlPsli)
	ld	$17,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi24EEEvPKhlPsli)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi32EEEvPKhlPsli)
	sd	$19,9192($4)
	sd	$18,1344($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi32EEEvPKslPhli)($28)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi24EEEvPKhlPsli)
	sd	$17,2240($4)
	ld	$17,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi24EEEvPKslPhli)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi32EEEvPKslPhli)
	ld	$19,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi8EEEvPKslPhli)($28)
	sd	$18,1352($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi32EEEvPKslPsli)($28)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi24EEEvPKslPhli)
	sd	$17,2248($4)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi8EEEvPKslPhli)
	ld	$17,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi24EEEvPKslPsli)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi32EEEvPKslPsli)
	sd	$19,9200($4)
	sd	$18,1360($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi32EEEvPKhlPhlii)($28)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi24EEEvPKslPsli)
	sd	$17,2256($4)
	ld	$17,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi24EEEvPKhlPhlii)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi32EEEvPKhlPhlii)
	ld	$19,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi8EEEvPKslPsli)($28)
	sd	$18,1368($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi16EEEvPKhlPhli)($28)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi24EEEvPKhlPhlii)
	sd	$17,2264($4)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi8EEEvPKslPsli)
	ld	$17,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi12EEEvPKhlPhli)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi16EEEvPKhlPhli)
	sd	$19,9208($4)
	sd	$18,9296($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi16EEEvPKhlPslii)($28)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi12EEEvPKhlPhli)
	sd	$17,9856($4)
	ld	$17,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi12EEEvPKhlPslii)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi16EEEvPKhlPslii)
	sd	$12,1400($4)
	sd	$18,9304($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi16EEEvPKhlPhli)($28)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi12EEEvPKhlPslii)
	sd	$17,9864($4)
	ld	$17,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi12EEEvPKhlPhli)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi16EEEvPKhlPhli)
	sd	$11,2296($4)
	sd	$18,9264($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi16EEEvPKhlPsli)($28)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi12EEEvPKhlPhli)
	sd	$17,9824($4)
	ld	$17,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi12EEEvPKhlPsli)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi16EEEvPKhlPsli)
	sd	$18,9272($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi16EEEvPKslPhli)($28)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi12EEEvPKhlPsli)
	sd	$17,9832($4)
	ld	$17,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi12EEEvPKslPhli)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi16EEEvPKslPhli)
	sd	$18,9280($4)
	ld	$18,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi16EEEvPKslPsli)($28)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi12EEEvPKslPhli)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi16EEEvPKslPsli)
	sd	$18,9288($4)
	sd	$17,9840($4)
	sd	$25,9968($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi8EEEvPKhlPhli)($28)
	sd	$16,9888($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi24ELi32EEEvPKhlPhli)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi8EEEvPKhlPhli)
	ld	$17,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi12EEEvPKslPsli)($28)
	sd	$25,2472($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi8EEEvPKhlPslii)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi24ELi32EEEvPKhlPhli)
	sd	$16,2344($4)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi12EEEvPKslPsli)
	ld	$16,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi24ELi32EEEvPKhlPslii)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi8EEEvPKhlPslii)
	sd	$17,9848($4)
	sd	$25,2480($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi8EEEvPKhlPhli)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi24ELi32EEEvPKhlPslii)
	sd	$16,2352($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi24ELi32EEEvPKhlPhli)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi8EEEvPKhlPhli)
	ld	$17,704($sp)
	sd	$25,2488($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi8EEEvPKhlPsli)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi24ELi32EEEvPKhlPhli)
	sd	$16,2360($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi24ELi32EEEvPKhlPsli)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi8EEEvPKhlPsli)
	sd	$17,2424($4)
	sd	$25,2496($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi8EEEvPKslPhli)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi24ELi32EEEvPKhlPsli)
	sd	$16,2368($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi24ELi32EEEvPKslPhli)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi8EEEvPKslPhli)
	sd	$25,2504($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi8EEEvPKslPsli)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi24ELi32EEEvPKslPhli)
	sd	$16,2376($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi24ELi32EEEvPKslPsli)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi8EEEvPKslPsli)
	sd	$25,2512($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi8EEEvPKhlPhlii)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi24ELi32EEEvPKslPsli)
	sd	$16,2384($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi24ELi32EEEvPKhlPhlii)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi8EEEvPKhlPhlii)
	sd	$25,2520($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi8EEEvPKhlPsl)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi24ELi32EEEvPKhlPhlii)
	sd	$16,2392($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi16EEEvPKhlPhli)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi8EEEvPKhlPsl)
	sd	$25,2552($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi4EEEvPKhlPhli)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi16EEEvPKhlPhli)
	sd	$16,9936($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi16EEEvPKhlPslii)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi4EEEvPKhlPhli)
	sd	$25,10016($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi4EEEvPKhlPslii)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi16EEEvPKhlPslii)
	sd	$16,9944($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi16EEEvPKhlPhli)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi4EEEvPKhlPslii)
	sd	$25,10024($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi4EEEvPKhlPhli)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi16EEEvPKhlPhli)
	sd	$16,9904($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi16EEEvPKhlPsli)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi4EEEvPKhlPhli)
	sd	$25,9984($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi4EEEvPKhlPsli)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi16EEEvPKhlPsli)
	sd	$16,9912($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi16EEEvPKslPhli)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi4EEEvPKhlPsli)
	sd	$25,9992($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi4EEEvPKslPhli)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi16EEEvPKslPhli)
	sd	$16,9920($4)
	ld	$16,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi16EEEvPKslPsli)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi4EEEvPKslPhli)
	sd	$25,10000($4)
	ld	$25,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi4EEEvPKslPsli)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi16EEEvPKslPsli)
	sd	$16,9928($4)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi4EEEvPKslPsli)
	sd	$25,10008($4)
	sd	$24,10048($4)
	sd	$15,10128($4)
	ld	$15,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi64EEEvPKhlPhli)($28)
	ld	$24,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi32EEEvPKhlPhli)($28)
	sd	$14,8848($4)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi64EEEvPKhlPhli)
	ld	$14,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi32EEEvPKhlPhli)($28)
	sd	$15,552($4)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi8ELi32EEEvPKhlPhli)
	ld	$15,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi64EEEvPKhlPslii)($28)
	sd	$24,2600($4)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi32EEEvPKhlPhli)
	ld	$24,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi32EEEvPKhlPslii)($28)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi64EEEvPKhlPslii)
	sd	$14,1448($4)
	sd	$15,560($4)
	ld	$15,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi64EEEvPKhlPhli)($28)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi8ELi32EEEvPKhlPslii)
	sd	$24,2608($4)
	ld	$24,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi32EEEvPKhlPhli)($28)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi64EEEvPKhlPhli)
	ld	$14,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi32EEEvPKhlPslii)($28)
	sd	$15,568($4)
	ld	$15,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi64EEEvPKhlPsli)($28)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi8ELi32EEEvPKhlPhli)
	sd	$24,2616($4)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi32EEEvPKhlPslii)
	ld	$24,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi32EEEvPKhlPsli)($28)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi64EEEvPKhlPsli)
	sd	$14,1456($4)
	sd	$15,576($4)
	ld	$15,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi64EEEvPKslPhli)($28)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi8ELi32EEEvPKhlPsli)
	sd	$24,2624($4)
	ld	$24,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi32EEEvPKslPhli)($28)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi64EEEvPKslPhli)
	ld	$14,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi32EEEvPKhlPhli)($28)
	sd	$15,584($4)
	ld	$15,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi64EEEvPKslPsli)($28)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi8ELi32EEEvPKslPhli)
	sd	$24,2632($4)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi32EEEvPKhlPhli)
	ld	$24,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi32EEEvPKslPsli)($28)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi64EEEvPKslPsli)
	sd	$3,2680($4)
	sd	$15,592($4)
	ld	$15,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi64EEEvPKhlPhlii)($28)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi8ELi32EEEvPKslPsli)
	sd	$24,2640($4)
	ld	$24,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi32EEEvPKhlPhlii)($28)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi64EEEvPKhlPhlii)
	sd	$15,600($4)
	ld	$15,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi64EEEvPKhlPsl)($28)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi8ELi32EEEvPKhlPhlii)
	sd	$24,2648($4)
	ld	$24,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi16EEEvPKhlPhli)($28)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi64EEEvPKhlPsl)
	sd	$15,632($4)
	ld	$15,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi32EEEvPKhlPhli)($28)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi16EEEvPKhlPhli)
	sd	$24,10096($4)
	ld	$24,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi16EEEvPKhlPslii)($28)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi32EEEvPKhlPhli)
	sd	$15,8816($4)
	ld	$15,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi32EEEvPKhlPslii)($28)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi16EEEvPKhlPslii)
	sd	$24,10104($4)
	ld	$24,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi16EEEvPKhlPhli)($28)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi32EEEvPKhlPslii)
	sd	$15,8824($4)
	ld	$15,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi32EEEvPKhlPhli)($28)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi16EEEvPKhlPhli)
	sd	$24,10064($4)
	ld	$24,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi16EEEvPKhlPsli)($28)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi32EEEvPKhlPhli)
	sd	$15,8784($4)
	ld	$15,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi32EEEvPKhlPsli)($28)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi16EEEvPKhlPsli)
	sd	$24,10072($4)
	ld	$24,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi16EEEvPKslPhli)($28)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi32EEEvPKhlPsli)
	sd	$15,8792($4)
	ld	$15,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi32EEEvPKslPhli)($28)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi16EEEvPKslPhli)
	sd	$24,10080($4)
	ld	$24,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi16EEEvPKslPsli)($28)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi32EEEvPKslPhli)
	sd	$15,8800($4)
	ld	$15,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi32EEEvPKslPsli)($28)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi16EEEvPKslPsli)
	sd	$24,10088($4)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi32EEEvPKslPsli)
	sd	$15,8808($4)
	sd	$14,1464($4)
	sd	$13,9408($4)
	ld	$13,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi64EEEvPKhlPhli)($28)
	ld	$14,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi32EEEvPKhlPsli)($28)
	sd	$12,9488($4)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi32ELi64EEEvPKhlPhli)
	ld	$12,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi48EEEvPKhlPhli)($28)
	sd	$13,1576($4)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi32EEEvPKhlPsli)
	ld	$13,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi64EEEvPKhlPslii)($28)
	sd	$14,1472($4)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi48EEEvPKhlPhli)
	ld	$14,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi32EEEvPKslPhli)($28)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi32ELi64EEEvPKhlPslii)
	sd	$12,2728($4)
	sd	$13,1584($4)
	ld	$13,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi64EEEvPKhlPhli)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi32EEEvPKslPhli)
	sd	$14,1480($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi32EEEvPKslPsli)($28)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi32ELi64EEEvPKhlPhli)
	ld	$12,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi48EEEvPKhlPslii)($28)
	sd	$13,1592($4)
	ld	$13,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi64EEEvPKhlPsli)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi32EEEvPKslPsli)
	sd	$14,1488($4)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi48EEEvPKhlPslii)
	ld	$14,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi32EEEvPKhlPhlii)($28)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi32ELi64EEEvPKhlPsli)
	sd	$12,2736($4)
	sd	$13,1600($4)
	ld	$13,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi64EEEvPKslPhli)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi32EEEvPKhlPhlii)
	sd	$14,1496($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi32EEEvPKhlPsl)($28)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi32ELi64EEEvPKslPhli)
	ld	$12,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi48EEEvPKhlPhli)($28)
	sd	$13,1608($4)
	ld	$13,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi64EEEvPKslPsli)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi32EEEvPKhlPsl)
	sd	$14,1528($4)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi48EEEvPKhlPhli)
	ld	$14,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi16EEEvPKhlPhli)($28)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi32ELi64EEEvPKslPsli)
	sd	$12,2744($4)
	sd	$13,1616($4)
	ld	$13,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi64EEEvPKhlPhlii)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi16EEEvPKhlPhli)
	sd	$14,9376($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi16EEEvPKhlPslii)($28)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi32ELi64EEEvPKhlPhlii)
	ld	$12,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi48EEEvPKhlPsli)($28)
	sd	$13,1624($4)
	ld	$13,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi64EEEvPKhlPsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi16EEEvPKhlPslii)
	sd	$14,9384($4)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi48EEEvPKhlPsli)
	ld	$14,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi16EEEvPKhlPhli)($28)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi64EEEvPKhlPsl)
	sd	$12,2752($4)
	sd	$13,1656($4)
	ld	$13,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi32EEEvPKhlPhli)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi16EEEvPKhlPhli)
	sd	$14,9344($4)
	ld	$14,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi16EEEvPKhlPsli)($28)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi32EEEvPKhlPhli)
	ld	$12,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi48EEEvPKslPhli)($28)
	sd	$13,9456($4)
	ld	$13,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi32EEEvPKhlPslii)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi16EEEvPKhlPsli)
	sd	$14,9352($4)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi48EEEvPKslPhli)
	ld	$14,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi16EEEvPKslPhli)($28)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi32EEEvPKhlPslii)
	sd	$12,2760($4)
	sd	$13,9464($4)
	ld	$13,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi32EEEvPKhlPhli)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi16EEEvPKslPhli)
	sd	$14,9360($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi48EEEvPKslPsli)($28)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi32EEEvPKhlPhli)
	ld	$14,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi16EEEvPKslPsli)($28)
	sd	$13,9424($4)
	ld	$13,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi32EEEvPKhlPsli)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi48EEEvPKslPsli)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi16EEEvPKslPsli)
	sd	$14,9368($4)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi32EEEvPKhlPsli)
	sd	$13,9432($4)
	ld	$13,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi32EEEvPKslPhli)($28)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi32EEEvPKslPhli)
	sd	$13,9440($4)
	ld	$13,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi32EEEvPKslPsli)($28)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi32EEEvPKslPsli)
	sd	$13,9448($4)
	sd	$12,2768($4)
	sd	$11,10208($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi48ELi64EEEvPKhlPhli)($28)
	ld	$12,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi48EEEvPKhlPhlii)($28)
	sd	$17,10288($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi48ELi64EEEvPKhlPhli)
	sd	$11,2856($4)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi48EEEvPKhlPhlii)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi48ELi64EEEvPKhlPslii)($28)
	sd	$12,2776($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi48EEEvPKhlPsl)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi48ELi64EEEvPKhlPslii)
	sd	$11,2864($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi48ELi64EEEvPKhlPhli)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi48EEEvPKhlPsl)
	sd	$12,2808($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi24EEEvPKhlPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi48ELi64EEEvPKhlPhli)
	sd	$11,2872($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi48ELi64EEEvPKhlPsli)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi24EEEvPKhlPhli)
	sd	$12,10176($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi24EEEvPKhlPslii)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi48ELi64EEEvPKhlPsli)
	sd	$11,2880($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi48ELi64EEEvPKslPhli)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi24EEEvPKhlPslii)
	sd	$12,10184($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi24EEEvPKhlPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi48ELi64EEEvPKslPhli)
	sd	$11,2888($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi48ELi64EEEvPKslPsli)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi24EEEvPKhlPhli)
	sd	$12,10144($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi24EEEvPKhlPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi48ELi64EEEvPKslPsli)
	sd	$11,2896($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi48ELi64EEEvPKhlPhlii)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi24EEEvPKhlPsli)
	sd	$12,10152($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi24EEEvPKslPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi48ELi64EEEvPKhlPhlii)
	sd	$11,2904($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi48ELi64EEEvPKhlPsl)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi24EEEvPKslPhli)
	sd	$12,10160($4)
	ld	$12,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi24EEEvPKslPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi48ELi64EEEvPKhlPsl)
	sd	$11,2936($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi32EEEvPKhlPhli)($28)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi24EEEvPKslPsli)
	sd	$12,10168($4)
	ld	$12,0($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi32EEEvPKhlPhli)
	sd	$11,10256($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi32EEEvPKhlPslii)($28)
	sd	$12,10224($4)
	ld	$12,8($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi32EEEvPKhlPslii)
	sd	$11,10264($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi16EEEvPKhlPhli)($28)
	sd	$12,10232($4)
	ld	$12,16($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi64ELi16EEEvPKhlPhli)
	sd	$11,2984($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi16EEEvPKhlPslii)($28)
	sd	$12,10240($4)
	ld	$12,24($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi64ELi16EEEvPKhlPslii)
	sd	$11,2992($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi16EEEvPKhlPhli)($28)
	sd	$12,10248($4)
	move	$12,$17
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi64ELi16EEEvPKhlPhli)
	sd	$11,3000($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi16EEEvPKhlPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi64ELi16EEEvPKhlPsli)
	sd	$11,3008($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi16EEEvPKslPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi64ELi16EEEvPKslPhli)
	sd	$11,3016($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi16EEEvPKslPsli)($28)
	ld	$21,32($sp)
	ld	$23,40($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi64ELi16EEEvPKslPsli)
	ld	$14,48($sp)
	sd	$11,3024($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi16EEEvPKhlPhlii)($28)
	ld	$24,56($sp)
	ld	$16,64($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi64ELi16EEEvPKhlPhlii)
	ld	$18,72($sp)
	sd	$11,3032($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi64EEEvPKhlPhli)($28)
	ld	$19,80($sp)
	ld	$20,88($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi8ELi16ELi64EEEvPKhlPhli)
	sd	$21,3064($4)
	sd	$11,3112($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi64EEEvPKhlPslii)($28)
	sd	$23,10336($4)
	sd	$14,10344($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi8ELi16ELi64EEEvPKhlPslii)
	sd	$24,10304($4)
	sd	$11,3120($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi64EEEvPKhlPhli)($28)
	sd	$16,10312($4)
	sd	$18,10320($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi8ELi16ELi64EEEvPKhlPhli)
	sd	$19,10328($4)
	sd	$11,3128($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi64EEEvPKhlPsli)($28)
	sd	$20,10368($4)
	sd	$2,3192($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi8ELi16ELi64EEEvPKhlPsli)
	sd	$9,10424($4)
	sd	$11,3136($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi64EEEvPKslPhli)($28)
	sd	$8,10384($4)
	sd	$7,10392($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi8ELi16ELi64EEEvPKslPhli)
	sd	$6,10400($4)
	sd	$11,3144($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi64EEEvPKslPsli)($28)
	sd	$5,10408($4)
	sd	$10,10416($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi8ELi16ELi64EEEvPKslPsli)
	sd	$11,3152($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi64EEEvPKhlPhlii)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_114interp_hv_pp_cILi8ELi16ELi64EEEvPKhlPhlii)
	sd	$11,3160($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi4EEEvPKhlPhli)($28)
	sd	$3,10448($4)
	ld	$17,96($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi4EEEvPKhlPhli)
	ld	$25,104($sp)
	sd	$11,10816($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi4EEEvPKhlPslii)($28)
	ld	$15,112($sp)
	ld	$13,120($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi4EEEvPKhlPslii)
	ld	$22,128($sp)
	sd	$11,10824($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi4EEEvPKhlPhli)($28)
	ld	$20,136($sp)
	ld	$19,144($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi4EEEvPKhlPhli)
	ld	$18,152($sp)
	sd	$11,10784($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi4EEEvPKhlPsli)($28)
	ld	$16,168($sp)
	ld	$24,184($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi4EEEvPKhlPsli)
	ld	$14,200($sp)
	sd	$11,10792($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi4EEEvPKslPhli)($28)
	sd	$17,10896($4)
	sd	$25,10904($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi4EEEvPKslPhli)
	ld	$17,160($sp)
	sd	$11,10800($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi4EEEvPKslPsli)($28)
	ld	$25,176($sp)
	sd	$15,10864($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi4EEEvPKslPsli)
	sd	$13,10872($4)
	sd	$22,10880($4)
	sd	$20,10888($4)
	sd	$19,10928($4)
	sd	$18,11216($4)
	sd	$17,11224($4)
	sd	$16,11184($4)
	sd	$25,11192($4)
	sd	$24,11200($4)
	sd	$fp,11208($4)
	sd	$14,11248($4)
	sd	$11,10808($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi4EEEvPKhlPsl)($28)
	ld	$13,208($sp)
	ld	$23,216($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi4EEEvPKhlPsl)
	ld	$22,224($sp)
	sd	$11,10848($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi8EEEvPKhlPhli)($28)
	ld	$21,232($sp)
	ld	$20,240($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi8EEEvPKhlPhli)
	ld	$19,248($sp)
	sd	$11,11296($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi8EEEvPKhlPslii)($28)
	ld	$18,256($sp)
	ld	$17,264($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi8EEEvPKhlPslii)
	ld	$16,272($sp)
	sd	$11,11304($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi8EEEvPKhlPhli)($28)
	ld	$25,280($sp)
	ld	$24,288($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi8EEEvPKhlPhli)
	ld	$15,296($sp)
	sd	$11,11264($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi8EEEvPKhlPsli)($28)
	sd	$13,10976($4)
	sd	$23,10984($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi8EEEvPKhlPsli)
	sd	$22,10944($4)
	sd	$11,11272($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi8EEEvPKslPhli)($28)
	sd	$21,10952($4)
	sd	$20,10960($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi8EEEvPKslPhli)
	sd	$19,10968($4)
	sd	$11,11280($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi8EEEvPKslPsli)($28)
	sd	$18,11008($4)
	sd	$17,11376($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi8EEEvPKslPsli)
	sd	$16,11384($4)
	sd	$11,11288($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi8EEEvPKhlPsl)($28)
	sd	$25,11344($4)
	sd	$24,11352($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi8EEEvPKhlPsl)
	sd	$15,11360($4)
	sd	$11,11328($4)
	ld	$14,304($sp)
	ld	$11,320($sp)
	ld	$13,312($sp)
	ld	$23,328($sp)
	sd	$11,11456($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi12EEEvPKhlPhli)($28)
	ld	$22,336($sp)
	ld	$21,344($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi12EEEvPKhlPhli)
	ld	$20,352($sp)
	sd	$11,11856($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi12EEEvPKhlPslii)($28)
	ld	$19,360($sp)
	ld	$18,368($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi12EEEvPKhlPslii)
	sd	$14,11368($4)
	sd	$11,11864($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi12EEEvPKhlPhli)($28)
	sd	$13,11408($4)
	sd	$23,11464($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi12EEEvPKhlPhli)
	sd	$22,11424($4)
	sd	$11,11824($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi12EEEvPKhlPsli)($28)
	sd	$21,11432($4)
	sd	$20,11440($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi12EEEvPKhlPsli)
	sd	$19,11448($4)
	sd	$11,11832($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi12EEEvPKslPhli)($28)
	sd	$18,11488($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi12EEEvPKslPhli)
	sd	$11,11840($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi12EEEvPKslPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi12EEEvPKslPsli)
	sd	$11,11848($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi12EEEvPKhlPsl)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi12EEEvPKhlPsl)
	sd	$11,11888($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi16EEEvPKhlPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi6ELi16EEEvPKhlPhli)
	sd	$11,11936($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi16EEEvPKhlPslii)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi6ELi16EEEvPKhlPslii)
	sd	$11,11944($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi16EEEvPKhlPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi6ELi16EEEvPKhlPhli)
	sd	$11,11904($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi16EEEvPKhlPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi6ELi16EEEvPKhlPsli)
	sd	$11,11912($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi16EEEvPKslPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi6ELi16EEEvPKslPhli)
	sd	$11,11920($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi16EEEvPKslPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi6ELi16EEEvPKslPsli)
	sd	$11,11928($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi6ELi16EEEvPKhlPsl)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi6ELi16EEEvPKhlPsl)
	sd	$11,11968($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi16EEEvPKhlPhli)($28)
	ld	$17,376($sp)
	ld	$14,384($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi2ELi16EEEvPKhlPhli)
	ld	$13,392($sp)
	sd	$11,12096($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi16EEEvPKhlPslii)($28)
	ld	$23,400($sp)
	ld	$22,408($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi2ELi16EEEvPKhlPslii)
	ld	$21,416($sp)
	sd	$11,12104($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi16EEEvPKhlPhli)($28)
	ld	$20,424($sp)
	ld	$19,432($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi2ELi16EEEvPKhlPhli)
	ld	$18,440($sp)
	sd	$11,12064($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi16EEEvPKhlPsli)($28)
	ld	$16,456($sp)
	ld	$25,464($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi2ELi16EEEvPKhlPsli)
	ld	$24,472($sp)
	sd	$11,12072($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi16EEEvPKslPhli)($28)
	sd	$17,12016($4)
	ld	$17,448($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi2ELi16EEEvPKslPhli)
	sd	$14,12024($4)
	sd	$11,12080($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi16EEEvPKslPsli)($28)
	sd	$13,11984($4)
	sd	$23,11992($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi2ELi16EEEvPKslPsli)
	sd	$22,12000($4)
	sd	$11,12088($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi16EEEvPKhlPsl)($28)
	sd	$21,12008($4)
	sd	$20,12048($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi2ELi16EEEvPKhlPsl)
	sd	$19,11056($4)
	sd	$11,12128($4)
	sd	$18,11064($4)
	sd	$17,11024($4)
	sd	$16,11032($4)
	sd	$25,11040($4)
	sd	$24,11048($4)
	ld	$11,504($sp)
	ld	$15,480($sp)
	ld	$14,488($sp)
	sd	$11,11504($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi24EEEvPKhlPhli)($28)
	ld	$13,496($sp)
	ld	$23,512($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi24EEEvPKhlPhli)
	ld	$22,520($sp)
	sd	$11,12176($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi24EEEvPKhlPslii)($28)
	ld	$21,528($sp)
	ld	$20,536($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi24EEEvPKhlPslii)
	sd	$15,11088($4)
	sd	$11,12184($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi24EEEvPKhlPhli)($28)
	sd	$14,11536($4)
	sd	$13,11544($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi24EEEvPKhlPhli)
	sd	$23,11512($4)
	sd	$11,12144($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi24EEEvPKhlPsli)($28)
	sd	$22,11520($4)
	sd	$21,11528($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi24EEEvPKhlPsli)
	sd	$20,11568($4)
	sd	$11,12152($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi24EEEvPKslPhli)($28)
	sd	$9,11624($4)
	sd	$8,11584($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi24EEEvPKslPhli)
	sd	$7,11592($4)
	sd	$11,12160($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi24EEEvPKslPsli)($28)
	sd	$6,11600($4)
	sd	$5,11608($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi24EEEvPKslPsli)
	sd	$3,11648($4)
	sd	$11,12168($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi24EEEvPKhlPsl)($28)
	sd	$10,11616($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi24EEEvPKhlPsl)
	sd	$11,12208($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi32EEEvPKhlPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi32EEEvPKhlPhli)
	sd	$11,12256($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi32EEEvPKhlPslii)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi32EEEvPKhlPslii)
	sd	$11,12264($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi32EEEvPKhlPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi32EEEvPKhlPhli)
	sd	$11,12224($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi32EEEvPKhlPsli)($28)
	ld	$19,544($sp)
	ld	$18,552($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi32EEEvPKhlPsli)
	ld	$16,560($sp)
	sd	$11,12232($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi32EEEvPKslPhli)($28)
	ld	$25,568($sp)
	ld	$24,576($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi32EEEvPKslPhli)
	ld	$15,584($sp)
	sd	$11,12240($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi32EEEvPKslPsli)($28)
	ld	$14,592($sp)
	ld	$23,600($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi32EEEvPKslPsli)
	ld	$22,608($sp)
	sd	$11,12248($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi32EEEvPKhlPsl)($28)
	ld	$21,616($sp)
	ld	$20,624($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi32EEEvPKhlPsl)
	sd	$19,12336($4)
	sd	$11,12288($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi32EEEvPKhlPhli)($28)
	sd	$18,12344($4)
	sd	$16,12304($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi4ELi32EEEvPKhlPhli)
	sd	$25,12312($4)
	sd	$11,12416($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi32EEEvPKhlPslii)($28)
	sd	$24,12320($4)
	sd	$15,12328($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi4ELi32EEEvPKhlPslii)
	sd	$14,12368($4)
	sd	$11,12424($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi32EEEvPKhlPhli)($28)
	sd	$23,11136($4)
	sd	$22,11144($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi4ELi32EEEvPKhlPhli)
	sd	$21,11104($4)
	sd	$11,12384($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi32EEEvPKhlPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi4ELi32EEEvPKhlPsli)
	sd	$11,12392($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi32EEEvPKslPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi4ELi32EEEvPKslPhli)
	sd	$11,12400($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi32EEEvPKslPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi4ELi32EEEvPKslPsli)
	sd	$11,12408($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi32EEEvPKhlPsl)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi4ELi32EEEvPKhlPsl)
	sd	$11,12448($4)
	sd	$20,11112($4)
	ld	$11,696($sp)
	ld	$19,632($sp)
	ld	$18,640($sp)
	sd	$11,11688($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi48EEEvPKhlPhli)($28)
	ld	$fp,712($sp)
	ld	$23,720($sp)
	ld	$22,728($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi48EEEvPKhlPhli)
	ld	$21,736($sp)
	ld	$20,744($sp)
	ld	$17,648($sp)
	ld	$16,656($sp)
	ld	$25,664($sp)
	ld	$24,672($sp)
	ld	$15,680($sp)
	ld	$14,688($sp)
	sd	$19,11120($4)
	sd	$18,11128($4)
	ld	$19,752($sp)
	ld	$18,760($sp)
	sd	$17,11168($4)
	sd	$16,11696($4)
	sd	$25,11704($4)
	sd	$24,11664($4)
	sd	$15,11672($4)
	sd	$14,11680($4)
	sd	$fp,11728($4)
	sd	$23,11776($4)
	sd	$22,11784($4)
	sd	$21,11744($4)
	sd	$20,11752($4)
	sd	$19,11760($4)
	sd	$18,11768($4)
	sd	$2,11808($4)
	sd	$11,12496($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi48EEEvPKhlPslii)($28)
	ld	$17,768($sp)
	ld	$16,776($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi48EEEvPKhlPslii)
	ld	$25,784($sp)
	sd	$11,12504($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi48EEEvPKhlPhli)($28)
	ld	$24,792($sp)
	ld	$15,800($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi48EEEvPKhlPhli)
	ld	$14,808($sp)
	sd	$11,12464($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi48EEEvPKhlPsli)($28)
	ld	$13,816($sp)
	sd	$17,12656($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi48EEEvPKhlPsli)
	sd	$16,12664($4)
	sd	$11,12472($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi48EEEvPKslPhli)($28)
	sd	$25,12624($4)
	sd	$24,12632($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi48EEEvPKslPhli)
	sd	$15,12640($4)
	sd	$11,12480($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi48EEEvPKslPsli)($28)
	sd	$14,12648($4)
	sd	$13,12688($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi48EEEvPKslPsli)
	sd	$11,12488($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi48EEEvPKhlPsl)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi48EEEvPKhlPsl)
	sd	$11,12528($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi64EEEvPKhlPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi64EEEvPKhlPhli)
	sd	$11,12576($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi64EEEvPKhlPslii)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi64EEEvPKhlPslii)
	sd	$11,12584($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi64EEEvPKhlPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi24ELi64EEEvPKhlPhli)
	sd	$11,12544($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi64EEEvPKhlPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi24ELi64EEEvPKhlPsli)
	sd	$11,12552($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi64EEEvPKslPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi24ELi64EEEvPKslPhli)
	sd	$11,12560($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi64EEEvPKslPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi24ELi64EEEvPKslPsli)
	sd	$11,12568($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi24ELi64EEEvPKhlPsl)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi24ELi64EEEvPKhlPsl)
	sd	$11,12608($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi64EEEvPKhlPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi8ELi64EEEvPKhlPhli)
	sd	$11,12736($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi64EEEvPKhlPslii)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi8ELi64EEEvPKhlPslii)
	sd	$11,12744($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi64EEEvPKhlPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi8ELi64EEEvPKhlPhli)
	sd	$11,12704($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi64EEEvPKhlPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi8ELi64EEEvPKhlPsli)
	sd	$11,12712($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi64EEEvPKslPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi8ELi64EEEvPKslPhli)
	sd	$11,12720($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi64EEEvPKslPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi8ELi64EEEvPKslPsli)
	sd	$11,12728($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi64EEEvPKhlPsl)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi8ELi64EEEvPKhlPsl)
	sd	$11,12768($4)
	ld	$11,152($sp)
	sd	$11,13136($4)
	ld	$11,160($sp)
	sd	$11,13144($4)
	ld	$11,168($sp)
	sd	$11,13104($4)
	ld	$11,176($sp)
	sd	$11,13112($4)
	ld	$11,184($sp)
	sd	$11,13120($4)
	ld	$11,192($sp)
	sd	$11,13128($4)
	ld	$11,200($sp)
	sd	$11,13168($4)
	ld	$11,264($sp)
	sd	$11,13216($4)
	ld	$11,272($sp)
	sd	$11,13224($4)
	ld	$11,280($sp)
	sd	$11,13184($4)
	ld	$11,288($sp)
	sd	$11,13192($4)
	ld	$11,296($sp)
	sd	$11,13200($4)
	ld	$11,304($sp)
	sd	$11,13208($4)
	ld	$11,312($sp)
	sd	$11,13248($4)
	ld	$11,96($sp)
	sd	$11,13616($4)
	ld	$11,104($sp)
	sd	$11,13624($4)
	ld	$11,112($sp)
	sd	$11,13584($4)
	ld	$11,120($sp)
	sd	$11,13592($4)
	ld	$11,128($sp)
	sd	$11,13600($4)
	ld	$11,136($sp)
	sd	$11,13608($4)
	ld	$11,144($sp)
	sd	$11,13648($4)
	ld	$11,376($sp)
	sd	$11,13536($4)
	ld	$11,384($sp)
	sd	$11,13544($4)
	ld	$11,392($sp)
	sd	$11,13504($4)
	ld	$11,400($sp)
	sd	$11,13512($4)
	ld	$11,408($sp)
	sd	$11,13520($4)
	ld	$11,416($sp)
	sd	$11,13528($4)
	ld	$11,424($sp)
	sd	$11,13568($4)
	ld	$11,488($sp)
	sd	$11,13296($4)
	ld	$11,496($sp)
	sd	$11,13304($4)
	ld	$11,504($sp)
	sd	$11,13264($4)
	ld	$11,512($sp)
	sd	$11,13272($4)
	ld	$11,520($sp)
	sd	$11,13280($4)
	ld	$11,528($sp)
	sd	$11,13288($4)
	ld	$11,536($sp)
	sd	$11,13328($4)
	ld	$11,544($sp)
	sd	$11,13696($4)
	ld	$11,552($sp)
	sd	$11,13704($4)
	ld	$11,560($sp)
	sd	$11,13664($4)
	ld	$11,568($sp)
	sd	$11,13672($4)
	ld	$11,576($sp)
	sd	$11,13680($4)
	ld	$11,584($sp)
	sd	$11,13688($4)
	ld	$11,592($sp)
	sd	$11,13728($4)
	ld	$11,208($sp)
	sd	$11,13776($4)
	ld	$11,216($sp)
	sd	$11,13784($4)
	ld	$11,224($sp)
	sd	$11,13744($4)
	ld	$11,232($sp)
	sd	$11,13752($4)
	ld	$11,240($sp)
	sd	$11,13760($4)
	ld	$11,248($sp)
	sd	$11,13768($4)
	ld	$11,256($sp)
	sd	$11,13808($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi12EEEvPKhlPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi12EEEvPKhlPhli)
	sd	$11,14176($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi12EEEvPKhlPslii)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi12EEEvPKhlPslii)
	sd	$11,14184($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi12EEEvPKhlPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi12EEEvPKhlPhli)
	sd	$11,14144($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi12EEEvPKhlPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi12EEEvPKhlPsli)
	sd	$11,14152($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi12EEEvPKslPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi12EEEvPKslPhli)
	sd	$11,14160($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi12EEEvPKslPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi12EEEvPKslPsli)
	sd	$11,14168($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi12EEEvPKhlPsl)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi12EEEvPKhlPsl)
	sd	$11,14208($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi16EEEvPKhlPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi12ELi16EEEvPKhlPhli)
	sd	$11,14256($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi16EEEvPKhlPslii)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi12ELi16EEEvPKhlPslii)
	sd	$11,14264($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi16EEEvPKhlPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi12ELi16EEEvPKhlPhli)
	sd	$11,14224($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi16EEEvPKhlPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi12ELi16EEEvPKhlPsli)
	sd	$11,14232($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi16EEEvPKslPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi12ELi16EEEvPKslPhli)
	sd	$11,14240($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi16EEEvPKslPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi12ELi16EEEvPKslPsli)
	sd	$11,14248($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi16EEEvPKhlPsl)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi12ELi16EEEvPKhlPsl)
	sd	$11,14288($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi4EEEvPKhlPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi16ELi4EEEvPKhlPhli)
	sd	$11,14336($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi4EEEvPKhlPslii)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi16ELi4EEEvPKhlPslii)
	sd	$11,14344($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi4EEEvPKhlPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi16ELi4EEEvPKhlPhli)
	sd	$11,14304($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi4EEEvPKhlPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi16ELi4EEEvPKhlPsli)
	sd	$11,14312($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi4EEEvPKslPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi16ELi4EEEvPKslPhli)
	sd	$11,14320($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi4EEEvPKslPsli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi16ELi4EEEvPKslPsli)
	sd	$11,14328($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi4EEEvPKhlPsl)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi16ELi4EEEvPKhlPsl)
	sd	$11,14368($4)
	ld	$11,320($sp)
	sd	$11,14416($4)
	ld	$11,328($sp)
	sd	$11,14424($4)
	ld	$11,336($sp)
	sd	$11,14384($4)
	ld	$11,344($sp)
	sd	$11,14392($4)
	ld	$11,352($sp)
	sd	$fp,13408($4)
	sd	$13,13888($4)
	sd	$11,14400($4)
	ld	$11,360($sp)
	ld	$fp,432($sp)
	ld	$13,440($sp)
	sd	$11,14408($4)
	ld	$11,368($sp)
	sd	$17,13856($4)
	sd	$25,13824($4)
	sd	$11,14448($4)
	ld	$11,656($sp)
	sd	$24,13832($4)
	sd	$15,13840($4)
	sd	$11,13376($4)
	ld	$11,664($sp)
	sd	$14,13848($4)
	sd	$fp,13936($4)
	sd	$11,13384($4)
	ld	$11,672($sp)
	sd	$16,13864($4)
	sd	$13,13944($4)
	sd	$11,13344($4)
	ld	$11,680($sp)
	sd	$11,13352($4)
	ld	$11,688($sp)
	sd	$11,13360($4)
	ld	$11,696($sp)
	sd	$11,13368($4)
	ld	$11,448($sp)
	sd	$11,13904($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi24EEEvPKhlPhli)($28)
	ld	$16,456($sp)
	ld	$24,472($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi32ELi24EEEvPKhlPhli)
	ld	$fp,24($sp)
	sd	$11,14496($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi24EEEvPKhlPslii)($28)
	ld	$25,464($sp)
	ld	$15,480($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi32ELi24EEEvPKhlPslii)
	ld	$14,48($sp)
	sd	$11,14504($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi24EEEvPKhlPhli)($28)
	sd	$24,13928($4)
	sd	$fp,14568($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi32ELi24EEEvPKhlPhli)
	ld	$fp,40($sp)
	sd	$11,14464($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi24EEEvPKhlPsli)($28)
	ld	$24,56($sp)
	sd	$fp,14656($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi32ELi24EEEvPKhlPsli)
	sd	$16,13912($4)
	sd	$11,14472($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi24EEEvPKslPhli)($28)
	sd	$25,13920($4)
	sd	$15,13968($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi32ELi24EEEvPKslPhli)
	sd	$12,14608($4)
	sd	$11,14480($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi24EEEvPKslPsli)($28)
	sd	$14,14664($4)
	sd	$24,14624($4)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi32ELi24EEEvPKslPsli)
	sd	$11,14488($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi24EEEvPKhlPsl)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi32ELi24EEEvPKhlPsl)
	sd	$11,14528($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi32EEEvPKhlPhli)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi24ELi32EEEvPKhlPhli)
	sd	$11,14576($4)
	ld	$11,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi32EEEvPKhlPslii)($28)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi24ELi32EEEvPKhlPslii)
	sd	$11,14584($4)
	ld	$11,0($sp)
	sd	$11,14544($4)
	ld	$11,8($sp)
	sd	$11,14552($4)
	ld	$11,16($sp)
	sd	$11,14560($4)
	ld	$16,64($sp)
	sd	$3,14768($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi64EEEvPKhlPhli)($28)
	ld	$11,72($sp)
	sd	$9,14744($4)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi64EEEvPKhlPhli)
	ld	$9,600($sp)
	sd	$3,13456($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi64EEEvPKhlPslii)($28)
	sd	$11,14640($4)
	ld	$11,80($sp)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi64EEEvPKhlPslii)
	sd	$8,14704($4)
	sd	$3,13464($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi64EEEvPKhlPhli)($28)
	sd	$11,14648($4)
	ld	$8,608($sp)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi64EEEvPKhlPhli)
	ld	$11,88($sp)
	sd	$3,13424($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi64EEEvPKhlPsli)($28)
	sd	$16,14632($4)
	sd	$7,14712($4)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi64EEEvPKhlPsli)
	sd	$6,14720($4)
	sd	$3,13432($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi64EEEvPKslPhli)($28)
	sd	$5,14728($4)
	sd	$11,14688($4)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi64EEEvPKslPhli)
	sd	$10,14736($4)
	sd	$3,13440($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi64EEEvPKslPsli)($28)
	sd	$9,14096($4)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi64EEEvPKslPsli)
	sd	$3,13448($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi64EEEvPKhlPsl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi64EEEvPKhlPsl)
	sd	$3,13488($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi32EEEvPKhlPhli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi32EEEvPKhlPhli)
	sd	$3,14016($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi32EEEvPKhlPslii)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi32EEEvPKhlPslii)
	sd	$3,14024($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi32EEEvPKhlPhli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi32EEEvPKhlPhli)
	sd	$3,13984($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi32EEEvPKhlPsli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi32EEEvPKhlPsli)
	sd	$3,13992($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi32EEEvPKslPhli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi32EEEvPKslPhli)
	sd	$3,14000($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi32EEEvPKslPsli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi32EEEvPKslPsli)
	sd	$3,14008($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi32EEEvPKhlPsl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi32EEEvPKhlPsl)
	sd	$3,14048($4)
	sd	$8,14104($4)
	ld	$3,640($sp)
	ld	$17,648($sp)
	ld	$7,616($sp)
	sd	$3,14088($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi48EEEvPKhlPhli)($28)
	ld	$6,624($sp)
	ld	$5,632($sp)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi48EEEvPKhlPhli)
	sd	$17,14128($4)
	sd	$3,14816($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi48EEEvPKhlPslii)($28)
	sd	$7,14064($4)
	sd	$6,14072($4)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi48EEEvPKhlPslii)
	sd	$5,14080($4)
	sd	$3,14824($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi48EEEvPKhlPhli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi48EEEvPKhlPhli)
	sd	$3,14784($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi48EEEvPKhlPsli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi48EEEvPKhlPsli)
	sd	$3,14792($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi48EEEvPKslPhli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi48EEEvPKslPhli)
	sd	$3,14800($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi48EEEvPKslPsli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi48EEEvPKslPsli)
	sd	$3,14808($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi48EEEvPKhlPsl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi64ELi48EEEvPKhlPsl)
	sd	$3,14848($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi48ELi64EEEvPKhlPhli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi48ELi64EEEvPKhlPhli)
	sd	$3,14896($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi48ELi64EEEvPKhlPslii)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi48ELi64EEEvPKhlPslii)
	sd	$3,14904($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi48ELi64EEEvPKhlPhli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi48ELi64EEEvPKhlPhli)
	sd	$3,14864($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi48ELi64EEEvPKhlPsli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi48ELi64EEEvPKhlPsli)
	sd	$3,14872($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi48ELi64EEEvPKslPhli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi48ELi64EEEvPKslPhli)
	sd	$3,14880($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi48ELi64EEEvPKslPsli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi48ELi64EEEvPKslPsli)
	sd	$3,14888($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_120filterPixelToShort_cILi48ELi64EEEvPKhlPsl)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_120filterPixelToShort_cILi48ELi64EEEvPKhlPsl)
	sd	$3,14928($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi16EEEvPKhlPhli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_pp_cILi4ELi64ELi16EEEvPKhlPhli)
	sd	$3,14976($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi16EEEvPKhlPslii)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_117interp_horiz_ps_cILi4ELi64ELi16EEEvPKhlPslii)
	sd	$3,14984($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi16EEEvPKhlPhli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_pp_cILi4ELi64ELi16EEEvPKhlPhli)
	sd	$3,14944($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi16EEEvPKhlPsli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ps_cILi4ELi64ELi16EEEvPKhlPsli)
	sd	$3,14952($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi16EEEvPKslPhli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_sp_cILi4ELi64ELi16EEEvPKslPhli)
	sd	$3,14960($4)
	ld	$3,%got_page(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi16EEEvPKslPsli)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_116interp_vert_ss_cILi4ELi64ELi16EEEvPKslPsli)
	sd	$3,14968($4)
	ld	$3,32($sp)
	sd	$3,15008($4)
	sd	$23,15056($4)
	sd	$2,15088($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L20extendCURowColBorderEPhliii)($28)
	ld	$fp,904($sp)
	ld	$28,896($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L20extendCURowColBorderEPhliii)
	ld	$23,888($sp)
	ld	$17,840($sp)
	ld	$16,832($sp)
	sd	$22,15064($4)
	sd	$21,15024($4)
	ld	$22,880($sp)
	ld	$21,872($sp)
	sd	$20,15032($4)
	sd	$19,15040($4)
	ld	$20,864($sp)
	ld	$19,856($sp)
	sd	$18,15048($4)
	sd	$2,5912($4)
	ld	$18,848($sp)
	jr	$31
	daddiu	$sp,$sp,912

	.set	macro
	.set	reorder
	.end	_ZN4x26523setupFilterPrimitives_cERNS_17EncoderPrimitivesE
	.size	_ZN4x26523setupFilterPrimitives_cERNS_17EncoderPrimitivesE, .-_ZN4x26523setupFilterPrimitives_cERNS_17EncoderPrimitivesE
	.ident	"GCC: (GNU) 7.3.0"
