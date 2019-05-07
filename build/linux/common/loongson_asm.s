	.file	1 "loongson_asm.cpp"
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
.L3:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,4
.L2:
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
	bne	$3,$17,.L2
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L3
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
.L10:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,4
.L9:
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
	bne	$24,$3,.L9
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L10
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
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,4			# 0x4
.L16:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,4
.L15:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L15
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L16
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
.L22:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L21:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L21
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L22
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
.L28:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L27:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L27
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L28
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
.L34:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L33:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L33
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L34
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
.L40:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,4
.L39:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L39
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L40
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
.L46:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,4
.L45:
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
	bne	$3,$17,.L45
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L46
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
.L52:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,4
.L51:
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
	bne	$24,$3,.L51
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L52
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
.L58:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L57:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L57
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L58
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
.L64:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,4
.L63:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L63
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L64
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
.L70:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L69:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L69
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L70
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
.L76:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,8
	.align	3
.L75:
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
	bne	$3,$17,.L75
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L76
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
.L82:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,8
	.align	3
.L81:
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
	bne	$24,$3,.L81
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L82
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
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,4			# 0x4
.L88:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L87:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L87
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L88
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
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,4			# 0x4
.L94:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L93:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L93
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L94
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
.L100:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L99:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L99
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L100
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
.L106:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,16
	.align	3
.L105:
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
	bne	$3,$17,.L105
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L106
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
.L112:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L111:
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
	bne	$24,$3,.L111
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L112
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
.L118:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L117:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L117
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L118
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
.L124:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L123:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L123
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L124
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
.L130:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L129:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L129
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L130
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
.L136:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,8
	.align	3
.L135:
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
	bne	$3,$17,.L135
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L136
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
.L142:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,8
	.align	3
.L141:
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
	bne	$24,$3,.L141
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L142
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
.L148:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L147:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L147
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L148
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
.L154:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L153:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L153
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L154
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
.L160:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L159:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L159
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L160
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
.L166:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,16
	.align	3
.L165:
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
	bne	$3,$17,.L165
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L166
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
.L172:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L171:
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
	bne	$24,$3,.L171
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L172
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
.L178:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L177:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L177
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L178
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
.L184:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L183:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L183
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L184
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
.L190:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,12
	.align	3
.L189:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L189
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L190
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
.L196:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,12
	.align	3
.L195:
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
	bne	$3,$17,.L195
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L196
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
.L202:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,12
	.align	3
.L201:
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
	bne	$24,$3,.L201
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L202
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
.L208:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,12
	.align	3
.L207:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L207
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L208
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
.L214:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,12
	.align	3
.L213:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L213
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L214
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
.L220:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L219:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L219
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L220
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
.L226:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,16
	.align	3
.L225:
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
	bne	$3,$17,.L225
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L226
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
.L232:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L231:
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
	bne	$24,$3,.L231
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L232
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
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$10,4			# 0x4
.L238:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L237:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L237
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L238
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
	.ent	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li
	.type	_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li, @function
_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$14,4			# 0x4
.L244:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L243:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L243
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L244
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
.L250:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,4
.L249:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L249
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L250
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
.L256:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,4
.L255:
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
	bne	$3,$17,.L255
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L256
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
.L262:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,4
.L261:
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
	bne	$24,$3,.L261
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L262
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
.L268:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L267:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L267
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L268
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
.L274:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,4
.L273:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L273
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L274
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
.L280:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L279:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L279
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L280
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
.L286:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,32
	.align	3
.L285:
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
	bne	$3,$5,.L285
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L286
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
.L292:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L291:
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
	bne	$24,$3,.L291
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L292
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
.L298:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L297:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L297
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L298
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
.L304:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L303:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L303
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L304
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
.L310:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L309:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L309
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L310
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
.L316:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,16
	.align	3
.L315:
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
	bne	$3,$5,.L315
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L316
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
.L322:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L321:
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
	bne	$24,$3,.L321
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L322
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
.L328:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L327:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L327
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L328
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
.L334:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L333:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L333
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L334
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
.L340:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L339:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L339
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L340
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
.L346:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,32
	.align	3
.L345:
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
	bne	$3,$5,.L345
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L346
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
.L352:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L351:
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
	bne	$24,$3,.L351
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L352
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
.L358:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L357:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L357
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L358
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
.L364:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L363:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L363
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L364
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
.L370:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,24
	.align	3
.L369:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L369
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L370
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
.L376:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,24
	.align	3
.L375:
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
	bne	$3,$5,.L375
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L376
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
.L382:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,24
	.align	3
.L381:
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
	bne	$24,$3,.L381
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L382
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
.L388:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,24
	.align	3
.L387:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L387
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L388
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
.L394:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,24
	.align	3
.L393:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L393
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L394
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
.L400:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L399:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L399
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L400
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
.L406:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,32
	.align	3
.L405:
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
	bne	$3,$17,.L405
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L406
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
.L412:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L411:
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
	bne	$24,$3,.L411
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L412
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
.L418:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L417:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L417
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L418
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
.L424:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L423:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L423
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L424
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
.L430:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L429:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L429
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L430
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
.L436:
	move	$3,$4
	move	$14,$5
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$17,$4,8
	.align	3
.L435:
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
	bne	$3,$17,.L435
	sw	$16,12($10)

	daddiu	$4,$4,64
	daddu	$5,$5,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$4,$18,.L436
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
.L442:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,8
	.align	3
.L441:
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
	bne	$24,$3,.L441
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L442
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
.L448:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L447:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L447
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L448
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
.L454:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L453:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L453
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L454
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
.L460:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L459:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L459
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L460
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
.L466:
	move	$13,$16
	move	$12,$6
	move	$11,$7
	move	$3,$8
	daddiu	$5,$4,64
	.align	3
.L465:
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
	bne	$5,$4,.L465
	sw	$25,12($10)

	move	$4,$5
	daddu	$16,$16,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$5,$17,.L466
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
.L472:
	move	$11,$5
	move	$10,$6
	move	$3,$7
	daddiu	$15,$4,64
	.align	3
.L471:
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
	bne	$15,$4,.L471
	sw	$14,8($9)

	move	$4,$15
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$24,$15,.L472
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
.L478:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L477:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L477
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L478
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
.L484:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L483:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L483
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L484
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
.L490:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L489:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L489
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L490
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
.L496:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,32
	.align	3
.L495:
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
	bne	$3,$5,.L495
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L496
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
.L502:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,32
	.align	3
.L501:
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
	bne	$24,$3,.L501
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L502
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
.L508:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L507:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L507
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L508
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
.L514:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L513:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L513
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L514
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
.L520:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L519:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L519
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L520
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
.L526:
	move	$13,$16
	move	$12,$6
	move	$11,$7
	move	$3,$8
	daddiu	$5,$4,64
	.align	3
.L525:
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
	bne	$5,$4,.L525
	sw	$25,12($10)

	move	$4,$5
	daddu	$16,$16,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$5,$17,.L526
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
.L532:
	move	$11,$5
	move	$10,$6
	move	$3,$7
	daddiu	$15,$4,64
	.align	3
.L531:
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
	bne	$15,$4,.L531
	sw	$14,8($9)

	move	$4,$15
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$24,$15,.L532
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
.L538:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L537:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L537
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L538
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
.L544:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L543:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L543
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L544
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
.L550:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,48
	.align	3
.L549:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L549
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L550
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
.L556:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,48
	.align	3
.L555:
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
	bne	$3,$5,.L555
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L556
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
.L562:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,48
	.align	3
.L561:
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
	bne	$24,$3,.L561
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L562
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
.L568:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,48
	.align	3
.L567:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L567
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L568
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
.L574:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,48
	.align	3
.L573:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L573
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L574
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
.L580:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L579:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L579
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L580
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
.L586:
	move	$13,$16
	move	$12,$6
	move	$11,$7
	move	$3,$8
	daddiu	$5,$4,64
	.align	3
.L585:
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
	bne	$5,$4,.L585
	sw	$25,12($10)

	move	$4,$5
	daddu	$16,$16,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$5,$17,.L586
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
.L592:
	move	$11,$5
	move	$10,$6
	move	$3,$7
	daddiu	$15,$4,64
	.align	3
.L591:
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
	bne	$15,$4,.L591
	sw	$14,8($9)

	move	$4,$15
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$24,$15,.L592
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
.L598:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L597:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L597
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L598
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
.L604:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L603:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L603
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L604
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
.L610:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L609:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	daddiu	$3,$3,1
	lbu	$9,-1($8)
	subu	$2,$2,$9
	sra	$9,$2,31
	xor	$2,$9,$2
	subu	$2,$2,$9
	addu	$2,$2,$10
	bne	$11,$3,.L609
	move	$10,$2

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L610
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
.L616:
	move	$3,$16
	move	$14,$17
	move	$13,$6
	move	$12,$7
	move	$11,$8
	daddiu	$5,$16,16
	.align	3
.L615:
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
	bne	$3,$5,.L615
	sw	$4,12($10)

	daddiu	$16,$16,64
	daddu	$17,$17,$9
	daddu	$6,$6,$9
	daddu	$7,$7,$9
	bne	$16,$18,.L616
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
.L622:
	move	$3,$4
	move	$12,$5
	move	$11,$6
	move	$10,$7
	daddiu	$24,$4,16
	.align	3
.L621:
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
	bne	$24,$3,.L621
	sw	$15,8($9)

	daddiu	$4,$4,64
	daddu	$5,$5,$8
	daddu	$6,$6,$8
	bne	$25,$4,.L622
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
.L628:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L627:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L627
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L628
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
.L634:
	move	$3,$6
	move	$11,$8
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L633:
	daddiu	$11,$11,1
	lbu	$2,0($3)
	daddiu	$10,$10,1
	lbu	$12,-1($11)
	daddiu	$3,$3,1
	addu	$2,$2,$12
	addiu	$2,$2,1
	sra	$2,$2,1
	bne	$13,$3,.L633
	sb	$2,-1($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$7
	daddu	$8,$8,$9
	bne	$14,$0,.L634
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
.L640:
	move	$2,$4
	daddiu	$7,$4,4
.L639:
	lbu	$3,0($2)
	daddiu	$2,$2,1
	madd	$3,$3
	bne	$7,$2,.L639
	addu	$6,$3,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L640
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
.L646:
	move	$3,$4
	daddiu	$7,$4,32
	.align	3
.L645:
	lbu	$2,0($3)
	daddiu	$3,$3,1
	madd	$2,$2
	bne	$7,$3,.L645
	addu	$6,$2,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L646
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
.L652:
	move	$3,$4
	daddiu	$7,$4,64
	.align	3
.L651:
	lbu	$2,0($3)
	daddiu	$3,$3,1
	madd	$2,$2
	bne	$7,$3,.L651
	addu	$6,$2,$6

	addiu	$8,$8,-1
	bne	$8,$0,.L652
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
.L658:
	daddiu	$3,$4,128
	move	$2,$4
	.align	3
.L657:
	sh	$6,0($2)
	daddiu	$2,$2,2
	bne	$2,$3,.L657
	nop

	addiu	$7,$7,-1
	bne	$7,$0,.L658
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
.L664:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,64
	.align	3
.L663:
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
	bne	$13,$3,.L663
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L664
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
.L670:
	move	$2,$4
	move	$9,$5
	move	$8,$6
	daddiu	$11,$4,64
	.align	3
.L669:
	daddiu	$9,$9,1
	lbu	$3,0($2)
	daddiu	$8,$8,2
	lbu	$10,-1($9)
	daddiu	$2,$2,1
	subu	$3,$3,$10
	bne	$11,$2,.L669
	sh	$3,-2($8)

	addiu	$12,$12,-1
	daddu	$4,$4,$7
	daddu	$6,$6,$13
	bne	$12,$0,.L670
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
.L676:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,128
	.align	3
.L675:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L675
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L676
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
	.ent	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl
	.type	_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl, @function
_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,4			# 0x4
.L683:
	lbu	$3,0($6)
	addiu	$2,$2,-1
	sb	$3,0($4)
	lbu	$3,1($6)
	daddu	$6,$6,$7
	sb	$3,1($4)
	bne	$2,$0,.L683
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
.L687:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$9,$2,.L687
	sb	$8,-1($3)

	daddiu	$2,$7,4
	daddu	$5,$4,$5
	daddu	$7,$6,$7
	daddu	$6,$6,$2
.L688:
	lbu	$2,0($7)
	daddiu	$5,$5,1
	daddiu	$7,$7,1
	bne	$6,$7,.L688
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
.L694:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L693:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L693
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L694
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
.L700:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,6
	.align	3
.L699:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L699
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L700
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
.L705:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$9,$2,.L705
	sb	$8,-1($3)

	daddiu	$2,$7,8
	daddu	$5,$4,$5
	daddu	$7,$6,$7
	daddu	$6,$6,$2
	.align	3
.L706:
	lbu	$2,0($7)
	daddiu	$5,$5,1
	daddiu	$7,$7,1
	bne	$6,$7,.L706
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
.L711:
	lbu	$3,0($6)
	addiu	$2,$2,-1
	sb	$3,0($4)
	lbu	$3,1($6)
	daddu	$6,$6,$7
	sb	$3,1($4)
	bne	$2,$0,.L711
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
.L719:
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
	bne	$11,$12,.L720
	daddu	$4,$4,$5

	jr	$31
	nop

	.align	3
.L720:
	b	.L719
	li	$11,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll, .-_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll
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
.L728:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L727:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L727
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L728
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
.L734:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,6
	.align	3
.L733:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L733
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L734
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
.L739:
	lbu	$3,0($6)
	addiu	$2,$2,-1
	sb	$3,0($4)
	lbu	$3,1($6)
	daddu	$6,$6,$7
	sb	$3,1($4)
	bne	$2,$0,.L739
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
.L744:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L743:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L743
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L744
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
.L750:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,12
	.align	3
.L749:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L749
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L750
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
.L756:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,4
.L755:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L755
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L756
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
.L762:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L761:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L761
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L762
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
.L768:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,24
	.align	3
.L767:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L767
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L768
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
.L774:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
	.align	3
.L773:
	lbu	$8,0($2)
	daddiu	$3,$3,1
	daddiu	$2,$2,1
	bne	$2,$9,.L773
	sb	$8,-1($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L774
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
.L779:
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
	bne	$9,$0,.L779
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
.L783:
	lh	$3,0($6)
	addiu	$2,$2,-1
	sh	$3,0($4)
	lh	$3,2($6)
	daddu	$6,$6,$7
	sh	$3,2($4)
	bne	$2,$0,.L783
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
.L787:
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
	bne	$3,$0,.L787
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
.L791:
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
	bne	$3,$0,.L791
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
.L796:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,4
.L795:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L795
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L796
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
.L802:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,8
.L801:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L801
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L802
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
.L808:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,4
.L807:
	daddiu	$11,$11,1
	lbu	$3,0($2)
	daddiu	$10,$10,2
	lbu	$12,-1($11)
	daddiu	$2,$2,1
	subu	$3,$3,$12
	bne	$13,$2,.L807
	sh	$3,-2($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$14,$0,.L808
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
.L814:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,4
.L813:
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
	bne	$13,$3,.L813
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L814
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
.L820:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,8
	.align	3
.L819:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L819
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L820
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
.L826:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,16
	.align	3
.L825:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L825
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L826
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
.L832:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L831:
	daddiu	$11,$11,1
	lbu	$3,0($2)
	daddiu	$10,$10,2
	lbu	$12,-1($11)
	daddiu	$2,$2,1
	subu	$3,$3,$12
	bne	$13,$2,.L831
	sh	$3,-2($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$14,$0,.L832
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
.L838:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,8
	.align	3
.L837:
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
	bne	$13,$3,.L837
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L838
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
.L844:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,16
	.align	3
.L843:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L843
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L844
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
.L850:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,32
	.align	3
.L849:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L849
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L850
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
.L856:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L855:
	daddiu	$11,$11,1
	lbu	$3,0($2)
	daddiu	$10,$10,2
	lbu	$12,-1($11)
	daddiu	$2,$2,1
	subu	$3,$3,$12
	bne	$13,$2,.L855
	sh	$3,-2($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$14,$0,.L856
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
.L862:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,16
	.align	3
.L861:
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
	bne	$13,$3,.L861
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L862
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
.L868:
	move	$3,$4
	move	$8,$6
	daddiu	$11,$4,32
	.align	3
.L867:
	daddiu	$8,$8,1
	lbu	$2,0($3)
	mtlo	$9
	lbu	$10,-1($8)
	daddiu	$3,$3,1
	subu	$2,$2,$10
	madd	$2,$2
	mflo	$2
	bne	$11,$3,.L867
	mflo	$9

	addiu	$12,$12,-1
	daddu	$4,$4,$5
	bne	$12,$0,.L868
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
.L874:
	move	$2,$6
	move	$3,$4
	daddiu	$9,$6,64
	.align	3
.L873:
	lh	$8,0($2)
	daddiu	$3,$3,2
	daddiu	$2,$2,2
	bne	$2,$9,.L873
	sh	$8,-2($3)

	addiu	$10,$10,-1
	daddu	$4,$4,$5
	bne	$10,$0,.L874
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
.L880:
	move	$2,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L879:
	daddiu	$11,$11,1
	lbu	$3,0($2)
	daddiu	$10,$10,2
	lbu	$12,-1($11)
	daddiu	$2,$2,1
	subu	$3,$3,$12
	bne	$13,$2,.L879
	sh	$3,-2($10)

	addiu	$14,$14,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$14,$0,.L880
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
.L886:
	move	$3,$6
	move	$11,$7
	move	$10,$4
	daddiu	$13,$6,32
	.align	3
.L885:
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
	bne	$13,$3,.L885
	sb	$2,-1($10)

	addiu	$15,$15,-1
	daddu	$6,$6,$8
	daddu	$7,$7,$9
	bne	$15,$0,.L886
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
	.ent	_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl
	.type	_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl, @function
_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$3,$6,$7
	daddu	$8,$4,$5
	vblw	$w3,0($6)
	daddu	$2,$3,$7
	daddu	$6,$8,$5
	vblw	$w2,0($3)
	daddu	$7,$2,$7
	daddu	$5,$6,$5
	vblw	$w1,0($2)
	vblw	$w0,0($7)
	vsw	$w3,0,0($4)
	vsw	$w2,0,0($8)
	vsw	$w1,0,0($6)
	jr	$31
	vsw	$w0,0,0($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl
	.size	_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl, .-_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl
	.type	_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl, @function
_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$7,$7,1
	dsll	$5,$5,1
	vbld	$w3,0($6)
	daddu	$3,$6,$7
	daddu	$8,$4,$5
	daddu	$2,$3,$7
	daddu	$6,$8,$5
	vbld	$w2,0($3)
	daddu	$7,$2,$7
	daddu	$5,$6,$5
	vbld	$w1,0($2)
	vbld	$w0,0($7)
	vsd	$w3,0,0($4)
	vsd	$w2,0,0($8)
	vsd	$w1,0,0($6)
	jr	$31
	vsd	$w0,0,0($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl
	.size	_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl, .-_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl
	.type	_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl, @function
_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$3,$6,$7
	daddu	$12,$4,$5
	vbld	$w6,0($6)
	daddu	$2,$3,$7
	daddu	$8,$12,$5
	vbld	$w5,0($3)
	dlsa	$11,$5,$8,1
	dlsa	$3,$7,$2,1
	vbld	$w7,0($2)
	daddu	$6,$3,$7
	daddu	$10,$11,$5
	vbld	$w4,0($3)
	daddu	$9,$10,$5
	daddu	$3,$6,$7
	vbld	$w3,0($6)
	vbld	$w2,0($3)
	daddu	$2,$2,$7
	daddu	$7,$3,$7
	daddu	$3,$8,$5
	daddu	$5,$9,$5
	vbld	$w1,0($2)
	vbld	$w0,0($7)
	vsd	$w6,0,0($4)
	vsd	$w5,0,0($12)
	vsd	$w7,0,0($8)
	vsd	$w1,0,0($3)
	vsd	$w4,0,0($11)
	vsd	$w3,0,0($10)
	vsd	$w2,0,0($9)
	jr	$31
	vsd	$w0,0,0($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl
	.size	_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl, .-_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl
	.type	_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl, @function
_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$3,$7,1
	dsll	$2,$5,1
	ld.d	$w7,0($6)
	daddu	$10,$6,$3
	daddu	$11,$4,$2
	daddu	$8,$10,$3
	daddu	$9,$11,$2
	ld.d	$w6,0($10)
	dlsa	$7,$7,$8,2
	dlsa	$5,$5,$9,2
	ld.d	$w5,0($8)
	daddu	$13,$7,$3
	daddu	$10,$5,$2
	ld.d	$w3,0($7)
	daddu	$12,$13,$3
	daddu	$7,$10,$2
	ld.d	$w2,0($13)
	ld.d	$w1,0($12)
	daddu	$8,$8,$3
	daddu	$3,$12,$3
	daddu	$12,$9,$2
	daddu	$2,$7,$2
	ld.d	$w4,0($8)
	ld.d	$w0,0($3)
	st.d	$w7,0($4)
	st.d	$w6,0($11)
	st.d	$w5,0($9)
	st.d	$w4,0($12)
	st.d	$w3,0($5)
	st.d	$w2,0($10)
	st.d	$w1,0($7)
	jr	$31
	st.d	$w0,0($2)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl
	.size	_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl, .-_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl
	.type	_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl, @function
_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$2,$6,$7
	daddu	$14,$4,$5
	ld.d	$w15,0($6)
	daddiu	$sp,$sp,-32
	daddu	$10,$2,$7
	daddu	$13,$14,$5
	sd	$18,16($sp)
	dlsa	$8,$7,$10,1
	sd	$17,8($sp)
	dlsa	$12,$5,$13,1
	dsll	$9,$5,2
	sd	$16,0($sp)
	ld.d	$w14,0($2)
	dsll	$2,$7,2
	daddu	$11,$12,$9
	daddu	$3,$8,$2
	ld.d	$w11,0($8)
	daddu	$9,$11,$9
	ld.d	$w13,0($10)
	daddu	$2,$3,$2
	daddu	$8,$8,$7
	ld.d	$w7,0($3)
	ld.d	$w3,0($2)
	ld.d	$w10,0($8)
	daddu	$16,$12,$5
	daddu	$3,$3,$7
	daddu	$2,$2,$7
	daddu	$25,$11,$5
	ld.d	$w6,0($3)
	daddu	$24,$9,$5
	daddu	$8,$8,$7
	ld.d	$w2,0($2)
	ld.d	$w9,0($8)
	daddu	$18,$16,$5
	daddu	$17,$25,$5
	daddu	$3,$3,$7
	daddu	$2,$2,$7
	daddu	$10,$10,$7
	daddu	$8,$8,$7
	ld.d	$w1,0($2)
	ld.d	$w5,0($3)
	daddu	$15,$24,$5
	ld.d	$w12,0($10)
	ld.d	$w8,0($8)
	daddu	$3,$3,$7
	daddu	$8,$18,$5
	daddu	$7,$2,$7
	ld.d	$w4,0($3)
	daddu	$2,$17,$5
	daddu	$10,$13,$5
	ld.d	$w0,0($7)
	st.d	$w15,0($4)
	daddu	$5,$15,$5
	st.d	$w14,0($14)
	st.d	$w13,0($13)
	st.d	$w12,0($10)
	st.d	$w11,0($12)
	st.d	$w10,0($16)
	st.d	$w9,0($18)
	st.d	$w8,0($8)
	st.d	$w7,0($11)
	st.d	$w6,0($25)
	st.d	$w5,0($17)
	st.d	$w4,0($2)
	st.d	$w3,0($9)
	st.d	$w2,0($24)
	st.d	$w1,0($15)
	st.d	$w0,0($5)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl
	.size	_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl, .-_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl
	.type	_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl, @function
_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl:
	.frame	$sp,112,$31		# vars= 0, regs= 5/8, args= 0, gp= 0
	.mask	0x100f0000,-72
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	dsll	$7,$7,1
	dsll	$5,$5,1
	sd	$17,16($sp)
	daddu	$3,$6,$7
	daddu	$17,$4,$5
	sd	$16,8($sp)
	daddu	$2,$3,$7
	daddu	$16,$17,$5
	sd	$19,32($sp)
	sd	$18,24($sp)
	daddu	$25,$16,$5
	sdc1	$f31,104($sp)
	daddu	$24,$25,$5
	sdc1	$f30,96($sp)
	daddu	$15,$24,$5
	ld.d	$w30,16($6)
	sdc1	$f29,88($sp)
	daddu	$14,$15,$5
	sdc1	$f28,80($sp)
	daddu	$13,$14,$5
	sdc1	$f27,72($sp)
	daddu	$12,$13,$5
	sdc1	$f26,64($sp)
	daddu	$11,$12,$5
	sdc1	$f25,56($sp)
	daddu	$10,$11,$5
	sdc1	$f24,48($sp)
	ld.d	$w29,0($3)
	ld.d	$w28,16($3)
	daddu	$3,$2,$7
	ld.d	$w27,0($2)
	ld.d	$w26,16($2)
	daddu	$2,$3,$7
	ld.d	$w25,0($3)
	ld.d	$w24,16($3)
	daddu	$3,$2,$7
	ld.d	$w23,0($2)
	ld.d	$w22,16($2)
	daddu	$2,$3,$7
	ld.d	$w21,0($3)
	ld.d	$w20,16($3)
	daddu	$9,$10,$5
	daddu	$3,$2,$7
	ld.d	$w19,0($2)
	ld.d	$w18,16($2)
	daddu	$8,$9,$5
	daddu	$2,$3,$7
	ld.d	$w17,0($3)
	ld.d	$w16,16($3)
	daddu	$3,$2,$7
	ld.d	$w15,0($2)
	ld.d	$w14,16($2)
	daddu	$2,$3,$7
	ld.d	$w13,0($3)
	ld.d	$w12,16($3)
	ld.d	$w31,0($6)
	daddu	$3,$2,$7
	ld.d	$w11,0($2)
	ld.d	$w10,16($2)
	daddu	$2,$3,$7
	ld.d	$w9,0($3)
	ld.d	$w8,16($3)
	daddu	$3,$8,$5
	daddu	$19,$2,$7
	ld.d	$w7,0($2)
	ld.d	$w6,16($2)
	daddu	$2,$3,$5
	daddu	$18,$19,$7
	daddu	$5,$2,$5
	ld.d	$w5,0($19)
	ld.d	$w4,16($19)
	daddu	$7,$18,$7
	ld.d	$w3,0($18)
	ld.d	$w2,16($18)
	ld.d	$w1,0($7)
	ld.d	$w0,16($7)
	st.d	$w31,0($4)
	st.d	$w30,16($4)
	st.d	$w29,0($17)
	st.d	$w28,16($17)
	st.d	$w27,0($16)
	st.d	$w26,16($16)
	st.d	$w25,0($25)
	st.d	$w24,16($25)
	st.d	$w23,0($24)
	st.d	$w22,16($24)
	st.d	$w21,0($15)
	st.d	$w20,16($15)
	st.d	$w19,0($14)
	st.d	$w18,16($14)
	st.d	$w17,0($13)
	st.d	$w16,16($13)
	st.d	$w15,0($12)
	st.d	$w14,16($12)
	st.d	$w13,0($11)
	st.d	$w12,16($11)
	st.d	$w11,0($10)
	st.d	$w10,16($10)
	st.d	$w9,0($9)
	st.d	$w8,16($9)
	st.d	$w7,0($8)
	st.d	$w6,16($8)
	st.d	$w5,0($3)
	st.d	$w4,16($3)
	st.d	$w3,0($2)
	st.d	$w2,16($2)
	st.d	$w1,0($5)
	st.d	$w0,16($5)
	ld	$19,32($sp)
	ldc1	$f31,104($sp)
	ld	$18,24($sp)
	ldc1	$f30,96($sp)
	ld	$17,16($sp)
	ldc1	$f29,88($sp)
	ld	$16,8($sp)
	ldc1	$f28,80($sp)
	ldc1	$f27,72($sp)
	ldc1	$f26,64($sp)
	ldc1	$f25,56($sp)
	ldc1	$f24,48($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl
	.size	_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl, .-_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl
	.type	_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl, @function
_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl:
	.frame	$sp,128,$31		# vars= 0, regs= 8/8, args= 0, gp= 0
	.mask	0x107f0000,-72
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	sd	$22,48($sp)
	li	$22,1			# 0x1
	sd	$21,40($sp)
	li	$21,2			# 0x2
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	sdc1	$f31,120($sp)
	sdc1	$f30,112($sp)
	sdc1	$f29,104($sp)
	sdc1	$f28,96($sp)
	sdc1	$f27,88($sp)
	sdc1	$f26,80($sp)
	sdc1	$f25,72($sp)
	sdc1	$f24,64($sp)
.L903:
	daddu	$2,$6,$7
	daddu	$18,$4,$5
	ld.d	$w30,16($6)
	ld.d	$w31,0($6)
	daddu	$3,$2,$7
	daddu	$17,$18,$5
	ld.d	$w29,0($2)
	ld.d	$w28,16($2)
	daddu	$16,$17,$5
	daddu	$2,$3,$7
	ld.d	$w27,0($3)
	ld.d	$w26,16($3)
	daddu	$25,$16,$5
	daddu	$3,$2,$7
	ld.d	$w25,0($2)
	ld.d	$w24,16($2)
	daddu	$24,$25,$5
	daddu	$2,$3,$7
	ld.d	$w23,0($3)
	ld.d	$w22,16($3)
	daddu	$15,$24,$5
	daddu	$3,$2,$7
	ld.d	$w21,0($2)
	ld.d	$w20,16($2)
	daddu	$14,$15,$5
	daddu	$2,$3,$7
	ld.d	$w19,0($3)
	ld.d	$w18,16($3)
	daddu	$13,$14,$5
	daddu	$3,$2,$7
	ld.d	$w17,0($2)
	ld.d	$w16,16($2)
	daddu	$12,$13,$5
	daddu	$2,$3,$7
	ld.d	$w15,0($3)
	ld.d	$w14,16($3)
	daddu	$11,$12,$5
	daddu	$3,$2,$7
	ld.d	$w13,0($2)
	ld.d	$w12,16($2)
	daddu	$10,$11,$5
	daddu	$2,$3,$7
	ld.d	$w11,0($3)
	ld.d	$w10,16($3)
	daddu	$9,$10,$5
	daddu	$3,$2,$7
	ld.d	$w9,0($2)
	ld.d	$w8,16($2)
	daddu	$8,$9,$5
	daddu	$2,$3,$7
	ld.d	$w7,0($3)
	ld.d	$w6,16($3)
	daddu	$20,$2,$7
	daddu	$3,$8,$5
	ld.d	$w5,0($2)
	ld.d	$w4,16($2)
	daddu	$19,$20,$7
	daddu	$2,$3,$5
	ld.d	$w3,0($20)
	ld.d	$w2,16($20)
	ld.d	$w1,0($19)
	ld.d	$w0,16($19)
	daddu	$6,$19,$7
	st.d	$w31,0($4)
	st.d	$w30,16($4)
	st.d	$w29,0($18)
	st.d	$w28,16($18)
	daddu	$4,$2,$5
	st.d	$w27,0($17)
	st.d	$w26,16($17)
	st.d	$w25,0($16)
	st.d	$w24,16($16)
	st.d	$w23,0($25)
	st.d	$w22,16($25)
	st.d	$w21,0($24)
	st.d	$w20,16($24)
	st.d	$w19,0($15)
	st.d	$w18,16($15)
	st.d	$w17,0($14)
	st.d	$w16,16($14)
	st.d	$w15,0($13)
	st.d	$w14,16($13)
	st.d	$w13,0($12)
	st.d	$w12,16($12)
	st.d	$w11,0($11)
	st.d	$w10,16($11)
	st.d	$w9,0($10)
	st.d	$w8,16($10)
	st.d	$w7,0($9)
	st.d	$w6,16($9)
	st.d	$w5,0($8)
	st.d	$w4,16($8)
	st.d	$w3,0($3)
	st.d	$w2,16($3)
	st.d	$w1,0($2)
	bne	$21,$22,.L904
	st.d	$w0,16($2)

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

	.align	3
.L904:
	b	.L903
	li	$21,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl
	.size	_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl, .-_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl
	.type	_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl, @function
_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl:
	.frame	$sp,96,$31		# vars= 0, regs= 4/8, args= 0, gp= 0
	.mask	0x10070000,-72
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	dsll	$3,$7,1
	dsll	$2,$5,1
	sd	$17,8($sp)
	daddu	$17,$6,$3
	sd	$16,0($sp)
	daddu	$16,$4,$2
	daddu	$25,$17,$3
	daddu	$24,$16,$2
	daddu	$15,$25,$3
	sd	$18,16($sp)
	daddu	$14,$24,$2
	daddu	$13,$15,$3
	sdc1	$f31,88($sp)
	daddu	$12,$14,$2
	daddu	$11,$13,$3
	sdc1	$f30,80($sp)
	daddu	$10,$12,$2
	daddu	$9,$11,$3
	sdc1	$f29,72($sp)
	daddu	$8,$10,$2
	daddu	$3,$9,$3
	sdc1	$f28,64($sp)
	daddu	$2,$8,$2
	dsll	$7,$7,4
	sdc1	$f27,56($sp)
	dsll	$5,$5,4
	li	$18,4			# 0x4
	sdc1	$f26,48($sp)
	sdc1	$f25,40($sp)
	sdc1	$f24,32($sp)
.L907:
	addiu	$18,$18,-1
	ld.d	$w30,16($6)
	ld.d	$w29,32($6)
	ld.d	$w28,48($6)
	ld.d	$w27,0($17)
	ld.d	$w26,16($17)
	ld.d	$w25,32($17)
	ld.d	$w24,48($17)
	ld.d	$w23,0($25)
	ld.d	$w22,16($25)
	ld.d	$w21,32($25)
	ld.d	$w20,48($25)
	ld.d	$w19,0($15)
	ld.d	$w18,16($15)
	ld.d	$w17,32($15)
	ld.d	$w16,48($15)
	ld.d	$w15,0($13)
	ld.d	$w14,16($13)
	ld.d	$w13,32($13)
	ld.d	$w12,48($13)
	ld.d	$w11,0($11)
	ld.d	$w10,16($11)
	ld.d	$w9,32($11)
	ld.d	$w8,48($11)
	ld.d	$w7,0($9)
	ld.d	$w6,16($9)
	ld.d	$w5,32($9)
	ld.d	$w4,48($9)
	ld.d	$w3,0($3)
	ld.d	$w2,16($3)
	ld.d	$w1,32($3)
	ld.d	$w0,48($3)
	ld.d	$w31,0($6)
	daddu	$17,$17,$7
	st.d	$w31,0($4)
	daddu	$6,$6,$7
	st.d	$w30,16($4)
	st.d	$w29,32($4)
	st.d	$w28,48($4)
	daddu	$25,$25,$7
	st.d	$w27,0($16)
	st.d	$w26,16($16)
	st.d	$w25,32($16)
	st.d	$w24,48($16)
	daddu	$15,$15,$7
	st.d	$w23,0($24)
	st.d	$w22,16($24)
	st.d	$w21,32($24)
	st.d	$w20,48($24)
	daddu	$13,$13,$7
	st.d	$w19,0($14)
	st.d	$w18,16($14)
	st.d	$w17,32($14)
	st.d	$w16,48($14)
	daddu	$11,$11,$7
	st.d	$w15,0($12)
	st.d	$w14,16($12)
	st.d	$w13,32($12)
	st.d	$w12,48($12)
	daddu	$9,$9,$7
	st.d	$w11,0($10)
	st.d	$w10,16($10)
	st.d	$w9,32($10)
	st.d	$w8,48($10)
	daddu	$3,$3,$7
	st.d	$w7,0($8)
	st.d	$w6,16($8)
	st.d	$w5,32($8)
	st.d	$w4,48($8)
	daddu	$4,$4,$5
	st.d	$w3,0($2)
	st.d	$w2,16($2)
	st.d	$w1,32($2)
	st.d	$w0,48($2)
	daddu	$16,$16,$5
	daddu	$24,$24,$5
	daddu	$14,$14,$5
	daddu	$12,$12,$5
	daddu	$10,$10,$5
	daddu	$8,$8,$5
	bne	$18,$0,.L907
	daddu	$2,$2,$5

	ld	$18,16($sp)
	ldc1	$f31,88($sp)
	ld	$17,8($sp)
	ldc1	$f30,80($sp)
	ld	$16,0($sp)
	ldc1	$f29,72($sp)
	ldc1	$f28,64($sp)
	ldc1	$f27,56($sp)
	ldc1	$f26,48($sp)
	ldc1	$f25,40($sp)
	ldc1	$f24,32($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl
	.size	_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl, .-_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl
	.type	_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl, @function
_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl:
	.frame	$sp,96,$31		# vars= 0, regs= 4/8, args= 0, gp= 0
	.mask	0x10070000,-72
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	daddu	$24,$4,$5
	daddu	$25,$6,$7
	daddu	$14,$24,$5
	sd	$18,16($sp)
	daddu	$15,$25,$7
	daddu	$12,$14,$5
	sd	$17,8($sp)
	daddu	$13,$15,$7
	daddu	$10,$12,$5
	sd	$16,0($sp)
	daddu	$11,$13,$7
	daddu	$8,$10,$5
	sdc1	$f31,88($sp)
	daddu	$9,$11,$7
	daddu	$2,$8,$5
	sdc1	$f30,80($sp)
	daddu	$3,$9,$7
	daddu	$16,$2,$5
	sdc1	$f29,72($sp)
	daddu	$17,$3,$7
	dsll	$5,$5,3
	sdc1	$f28,64($sp)
	dsll	$7,$7,3
	li	$18,8			# 0x8
	sdc1	$f27,56($sp)
	sdc1	$f26,48($sp)
	sdc1	$f25,40($sp)
	sdc1	$f24,32($sp)
	.align	3
.L911:
	addiu	$18,$18,-1
	ld.d	$w30,16($6)
	ld.d	$w29,32($6)
	ld.d	$w28,48($6)
	ld.d	$w27,0($25)
	ld.d	$w26,16($25)
	ld.d	$w25,32($25)
	ld.d	$w24,48($25)
	ld.d	$w23,0($15)
	ld.d	$w22,16($15)
	ld.d	$w21,32($15)
	ld.d	$w20,48($15)
	ld.d	$w19,0($13)
	ld.d	$w18,16($13)
	ld.d	$w17,32($13)
	ld.d	$w16,48($13)
	ld.d	$w15,0($11)
	ld.d	$w14,16($11)
	ld.d	$w13,32($11)
	ld.d	$w12,48($11)
	ld.d	$w11,0($9)
	ld.d	$w10,16($9)
	ld.d	$w9,32($9)
	ld.d	$w8,48($9)
	ld.d	$w7,0($3)
	ld.d	$w6,16($3)
	ld.d	$w5,32($3)
	ld.d	$w4,48($3)
	ld.d	$w3,0($17)
	ld.d	$w2,16($17)
	ld.d	$w1,32($17)
	ld.d	$w0,48($17)
	ld.d	$w31,0($6)
	daddu	$25,$25,$7
	st.d	$w31,0($4)
	daddu	$6,$6,$7
	st.d	$w30,16($4)
	st.d	$w29,32($4)
	st.d	$w28,48($4)
	daddu	$15,$15,$7
	st.d	$w27,0($24)
	st.d	$w26,16($24)
	st.d	$w25,32($24)
	st.d	$w24,48($24)
	daddu	$13,$13,$7
	st.d	$w23,0($14)
	st.d	$w22,16($14)
	st.d	$w21,32($14)
	st.d	$w20,48($14)
	daddu	$11,$11,$7
	st.d	$w19,0($12)
	st.d	$w18,16($12)
	st.d	$w17,32($12)
	st.d	$w16,48($12)
	daddu	$9,$9,$7
	st.d	$w15,0($10)
	st.d	$w14,16($10)
	st.d	$w13,32($10)
	st.d	$w12,48($10)
	daddu	$3,$3,$7
	st.d	$w11,0($8)
	st.d	$w10,16($8)
	st.d	$w9,32($8)
	st.d	$w8,48($8)
	daddu	$17,$17,$7
	st.d	$w7,0($2)
	st.d	$w6,16($2)
	st.d	$w5,32($2)
	st.d	$w4,48($2)
	daddu	$4,$4,$5
	st.d	$w3,0($16)
	st.d	$w2,16($16)
	st.d	$w1,32($16)
	st.d	$w0,48($16)
	daddu	$24,$24,$5
	daddu	$14,$14,$5
	daddu	$12,$12,$5
	daddu	$10,$10,$5
	daddu	$8,$8,$5
	daddu	$2,$2,$5
	bne	$18,$0,.L911
	daddu	$16,$16,$5

	ld	$18,16($sp)
	ldc1	$f31,88($sp)
	ld	$17,8($sp)
	ldc1	$f30,80($sp)
	ld	$16,0($sp)
	ldc1	$f29,72($sp)
	ldc1	$f28,64($sp)
	ldc1	$f27,56($sp)
	ldc1	$f26,48($sp)
	ldc1	$f25,40($sp)
	ldc1	$f24,32($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl
	.size	_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl, .-_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL5idst4PKsPsl
	.type	_ZL5idst4PKsPsl, @function
_ZL5idst4PKsPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$8,%hi(%neg(%gp_rel(_ZL5idst4PKsPsl)))
	dsll	$6,$6,1
	ld.h	$w0,16($4)
	ld.h	$w6,0($4)
	daddu	$8,$8,$25
	daddu	$7,$5,$6
	ilvr.h	$w1,$w0,$w6
	ilvl.h	$w6,$w0,$w6
	daddiu	$8,$8,%lo(%neg(%gp_rel(_ZL5idst4PKsPsl)))
	daddu	$3,$7,$6
	ld	$2,%got_page(.LC0)($8)
	daddu	$6,$3,$6
	daddiu	$2,$2,%got_ofst(.LC0)
	ld.h	$w2,0($2)
	ld	$2,%got_page(.LC1)($8)
	dotp_s.w	$w0,$w1,$w2
	daddiu	$2,$2,%got_ofst(.LC1)
	ld.h	$w5,0($2)
	ld	$2,%got_page(.LC2)($8)
	dotp_s.w	$w9,$w1,$w5
	daddiu	$2,$2,%got_ofst(.LC2)
	ld.h	$w7,0($2)
	ld	$2,%got_page(.LC3)($8)
	dotp_s.w	$w8,$w1,$w7
	daddiu	$2,$2,%got_ofst(.LC3)
	ld.h	$w13,0($2)
	ld	$2,%got_page(.LC4)($8)
	dotp_s.w	$w4,$w1,$w13
	move.v	$w1,$w9
	daddiu	$2,$2,%got_ofst(.LC4)
	ld.h	$w12,0($2)
	ld	$2,%got_page(.LC5)($8)
	dpadd_s.w	$w0,$w6,$w12
	vsrarin.h	$w0,$w0,7
	daddiu	$2,$2,%got_ofst(.LC5)
	ld.h	$w11,0($2)
	ld	$2,%got_page(.LC6)($8)
	dpadd_s.w	$w1,$w6,$w11
	vsrarin.h	$w1,$w1,7
	insve.d	$w0[1],$w1[0]
	move.v	$w1,$w0
	daddiu	$2,$2,%got_ofst(.LC6)
	ld.h	$w10,0($2)
	ld	$2,%got_page(.LC7)($8)
	dpadd_s.w	$w8,$w6,$w10
	vsrarin.h	$w0,$w8,7
	daddiu	$2,$2,%got_ofst(.LC7)
	ld.h	$w9,0($2)
	dpadd_s.w	$w4,$w6,$w9
	vsrarin.h	$w4,$w4,7
	insve.d	$w0[1],$w4[0]
	pckev.h	$w3,$w0,$w1
	pckod.h	$w0,$w0,$w1
	dotp_s.w	$w2,$w3,$w2
	dotp_s.w	$w5,$w3,$w5
	dotp_s.w	$w7,$w3,$w7
	dpadd_s.w	$w2,$w0,$w12
	dpadd_s.w	$w5,$w0,$w11
	dpadd_s.w	$w7,$w0,$w10
	dotp_s.w	$w3,$w3,$w13
	vsrarin.h	$w2,$w2,12
	dpadd_s.w	$w3,$w0,$w9
	vsrarin.h	$w5,$w5,12
	vsrarin.h	$w7,$w7,12
	vsrarin.h	$w3,$w3,12
	ilvr.h	$w2,$w7,$w2
	ilvr.h	$w3,$w3,$w5
	ilvr.h	$w0,$w3,$w2
	ilvl.h	$w2,$w3,$w2
	vsd	$w0,0,0($5)
	vsd	$w0,1,0($7)
	vsd	$w2,0,0($3)
	jr	$31
	vsd	$w2,1,0($6)

	.set	macro
	.set	reorder
	.end	_ZL5idst4PKsPsl
	.size	_ZL5idst4PKsPsl, .-_ZL5idst4PKsPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL4dst4PKsPsl
	.type	_ZL4dst4PKsPsl, @function
_ZL4dst4PKsPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$6,$6,1
	lui	$7,%hi(%neg(%gp_rel(_ZL4dst4PKsPsl)))
	vbld	$w3,0($4)
	daddu	$3,$4,$6
	daddu	$7,$7,$25
	daddiu	$7,$7,%lo(%neg(%gp_rel(_ZL4dst4PKsPsl)))
	daddu	$2,$3,$6
	vbld	$w0,0($3)
	insve.d	$w3[1],$w0[0]
	vbld	$w4,0($2)
	daddu	$6,$2,$6
	ld	$2,%got_page(.LC8)($7)
	vbld	$w1,0($6)
	insve.d	$w4[1],$w1[0]
	daddiu	$2,$2,%got_ofst(.LC8)
	ld.h	$w7,0($2)
	ld	$2,%got_page(.LC9)($7)
	dotp_s.w	$w0,$w3,$w7
	dotp_s.w	$w11,$w4,$w7
	hadd_s.d	$w0,$w0,$w0
	hadd_s.d	$w11,$w11,$w11
	pckev.w	$w0,$w11,$w0
	vsrarin.h	$w0,$w0,1
	daddiu	$2,$2,%got_ofst(.LC9)
	ld.h	$w6,0($2)
	ld	$2,%got_page(.LC10)($7)
	dotp_s.w	$w9,$w3,$w6
	dotp_s.w	$w10,$w4,$w6
	hadd_s.d	$w9,$w9,$w9
	hadd_s.d	$w10,$w10,$w10
	pckev.w	$w9,$w10,$w9
	vsrarin.h	$w9,$w9,1
	insve.d	$w0[1],$w9[0]
	daddiu	$2,$2,%got_ofst(.LC10)
	ld.h	$w5,0($2)
	ld	$2,%got_page(.LC11)($7)
	dotp_s.w	$w2,$w3,$w5
	dotp_s.w	$w1,$w4,$w5
	hadd_s.d	$w2,$w2,$w2
	hadd_s.d	$w1,$w1,$w1
	pckev.w	$w1,$w1,$w2
	dotp_s.w	$w2,$w0,$w5
	vsrarin.h	$w1,$w1,1
	hadd_s.d	$w2,$w2,$w2
	daddiu	$2,$2,%got_ofst(.LC11)
	ld.h	$w8,0($2)
	dotp_s.w	$w3,$w3,$w8
	dotp_s.w	$w4,$w4,$w8
	hadd_s.d	$w3,$w3,$w3
	hadd_s.d	$w4,$w4,$w4
	pckev.w	$w3,$w4,$w3
	dotp_s.w	$w4,$w0,$w7
	vsrarin.h	$w3,$w3,1
	hadd_s.d	$w4,$w4,$w4
	insve.d	$w1[1],$w3[0]
	dotp_s.w	$w3,$w0,$w6
	dotp_s.w	$w7,$w1,$w7
	dotp_s.w	$w6,$w1,$w6
	dotp_s.w	$w5,$w1,$w5
	dotp_s.w	$w0,$w0,$w8
	dotp_s.w	$w1,$w1,$w8
	hadd_s.d	$w7,$w7,$w7
	hadd_s.d	$w3,$w3,$w3
	hadd_s.d	$w6,$w6,$w6
	hadd_s.d	$w5,$w5,$w5
	hadd_s.d	$w0,$w0,$w0
	hadd_s.d	$w1,$w1,$w1
	pckev.w	$w7,$w7,$w4
	pckev.w	$w6,$w6,$w3
	pckev.w	$w5,$w5,$w2
	pckev.w	$w0,$w1,$w0
	vsrarin.h	$w7,$w7,8
	vsrarin.h	$w6,$w6,8
	vsrarin.h	$w5,$w5,8
	vsrarin.h	$w0,$w0,8
	insve.d	$w7[1],$w6[0]
	insve.d	$w5[1],$w0[0]
	st.d	$w7,0($5)
	jr	$31
	st.d	$w5,16($5)

	.set	macro
	.set	reorder
	.end	_ZL4dst4PKsPsl
	.size	_ZL4dst4PKsPsl, .-_ZL4dst4PKsPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL5idct4PKsPsl
	.type	_ZL5idct4PKsPsl, @function
_ZL5idct4PKsPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$8,%hi(%neg(%gp_rel(_ZL5idct4PKsPsl)))
	dsll	$6,$6,1
	ld.h	$w0,16($4)
	ld.h	$w4,0($4)
	daddu	$8,$8,$25
	daddu	$7,$5,$6
	ilvr.h	$w1,$w0,$w4
	ldi.h	$w3,64
	daddiu	$8,$8,%lo(%neg(%gp_rel(_ZL5idct4PKsPsl)))
	daddu	$3,$7,$6
	ilvl.h	$w4,$w0,$w4
	dotp_s.w	$w6,$w1,$w3
	ld	$2,%got_page(.LC12)($8)
	daddu	$6,$3,$6
	daddiu	$2,$2,%got_ofst(.LC12)
	ld.h	$w8,0($2)
	ld	$2,%got_page(.LC13)($8)
	dotp_s.w	$w2,$w1,$w8
	daddiu	$2,$2,%got_ofst(.LC13)
	ld.h	$w5,0($2)
	ld	$2,%got_page(.LC14)($8)
	dotp_s.w	$w0,$w4,$w5
	addv.w	$w1,$w6,$w0
	subv.w	$w6,$w6,$w0
	vsrarin.h	$w1,$w1,7
	vsrarin.h	$w6,$w6,7
	daddiu	$2,$2,%got_ofst(.LC14)
	ld.h	$w7,0($2)
	dotp_s.w	$w0,$w4,$w7
	addv.w	$w4,$w2,$w0
	subv.w	$w0,$w2,$w0
	vsrarin.h	$w2,$w4,7
	vsrarin.h	$w0,$w0,7
	insve.d	$w1[1],$w2[0]
	insve.d	$w0[1],$w6[0]
	pckev.h	$w2,$w0,$w1
	pckod.h	$w0,$w0,$w1
	dotp_s.w	$w3,$w2,$w3
	dotp_s.w	$w5,$w0,$w5
	dotp_s.w	$w2,$w2,$w8
	dotp_s.w	$w0,$w0,$w7
	addv.w	$w1,$w3,$w5
	addv.w	$w4,$w2,$w0
	subv.w	$w3,$w3,$w5
	subv.w	$w2,$w2,$w0
	vsrarin.h	$w3,$w3,12
	vsrarin.h	$w0,$w1,12
	vsrarin.h	$w2,$w2,12
	vsrarin.h	$w1,$w4,12
	ilvr.h	$w2,$w2,$w0
	ilvr.h	$w3,$w3,$w1
	ilvr.h	$w0,$w3,$w2
	ilvl.h	$w2,$w3,$w2
	vsd	$w0,0,0($5)
	vsd	$w0,1,0($7)
	vsd	$w2,0,0($3)
	jr	$31
	vsd	$w2,1,0($6)

	.set	macro
	.set	reorder
	.end	_ZL5idct4PKsPsl
	.size	_ZL5idct4PKsPsl, .-_ZL5idct4PKsPsl
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
.L933:
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
	bne	$15,$0,.L933
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
.L937:
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
	bne	$15,$0,.L937
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
.L941:
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
	bne	$15,$0,.L941
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
.L945:
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
	bne	$2,$0,.L945
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
.L949:
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
	bne	$24,$0,.L949
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
	.ent	_ZL4dct8PKsPsl
	.type	_ZL4dct8PKsPsl, @function
_ZL4dct8PKsPsl:
	.frame	$sp,80,$31		# vars= 16, regs= 0/8, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	lui	$13,%hi(%neg(%gp_rel(_ZL4dct8PKsPsl)))
	daddiu	$sp,$sp,-80
	dsll	$2,$6,1
	daddu	$13,$13,$25
	sdc1	$f31,72($sp)
	sdc1	$f30,64($sp)
	daddiu	$13,$13,%lo(%neg(%gp_rel(_ZL4dct8PKsPsl)))
	sdc1	$f29,56($sp)
	sdc1	$f28,48($sp)
	sdc1	$f27,40($sp)
	sdc1	$f26,32($sp)
	sdc1	$f25,24($sp)
	sdc1	$f24,16($sp)
	ld.h	$w3,0($4)
	daddu	$4,$4,$2
	ld	$3,%got_disp(tab_dct8_2)($13)
	daddu	$10,$4,$2
	ld.h	$w9,0($4)
	ilvr.h	$w13,$w9,$w3
	dlsa	$6,$6,$10,2
	ld	$9,%got_disp(tab_dct8_1)($13)
	daddu	$12,$10,$2
	ld.h	$w5,0($10)
	ld	$8,%got_disp(tab_dct8_11)($13)
	daddu	$11,$6,$2
	ld.h	$w1,0($12)
	ld.h	$w2,0($6)
	ld	$7,%got_disp(tab_dct4)($13)
	ld.w	$w6,64($3)
	ld.w	$w10,80($3)
	ld.w	$w8,32($3)
	ld.w	$w7,48($3)
	ld.w	$w24,16($3)
	ld.w	$w29,0($3)
	daddu	$3,$11,$2
	daddu	$2,$3,$2
	ld.h	$w14,0($11)
	ld.h	$w27,0($9)
	ld.h	$w26,32($9)
	ld.h	$w4,0($2)
	ld.h	$w25,0($8)
	ld.h	$w23,32($8)
	ld.h	$w28,48($8)
	ilvr.h	$w12,$w14,$w2
	ld.h	$w16,0($3)
	ld.h	$w21,16($9)
	ld.h	$w20,48($9)
	ld.h	$w19,16($8)
	ld.h	$w11,0($7)
	ilvr.h	$w0,$w1,$w5
	ld.h	$w22,16($7)
	ilvl.h	$w5,$w1,$w5
	ld.h	$w17,32($7)
	ld.h	$w15,48($7)
	ilvl.h	$w3,$w9,$w3
	ilvr.w	$w1,$w0,$w13
	ilvr.h	$w9,$w4,$w16
	ilvl.w	$w0,$w0,$w13
	ilvl.h	$w16,$w4,$w16
	ilvr.w	$w18,$w5,$w3
	ilvr.w	$w4,$w9,$w12
	shf.w	$w18,$w18,0x4e
	ilvl.w	$w12,$w9,$w12
	subv.h	$w30,$w0,$w18
	ilvl.h	$w2,$w14,$w2
	ilvl.w	$w3,$w5,$w3
	ilvr.w	$w14,$w16,$w2
	shf.w	$w3,$w3,0x4e
	shf.w	$w14,$w14,0x4e
	addv.h	$w13,$w1,$w3
	ilvl.w	$w2,$w16,$w2
	subv.h	$w1,$w1,$w3
	subv.h	$w16,$w12,$w14
	ilvr.h	$w5,$w30,$w1
	shf.w	$w2,$w2,0x4e
	ilvl.h	$w1,$w30,$w1
	addv.h	$w9,$w4,$w2
	addv.h	$w0,$w0,$w18
	subv.h	$w4,$w4,$w2
	dotp_s.w	$w18,$w1,$w21
	ilvr.h	$w3,$w16,$w4
	dpadd_s.w	$w18,$w5,$w27
	ilvl.h	$w4,$w16,$w4
	shf.w	$w0,$w0,0x4e
	dotp_s.w	$w16,$w1,$w20
	addv.h	$w2,$w13,$w0
	dpadd_s.w	$w16,$w5,$w26
	addv.h	$w12,$w12,$w14
	subv.h	$w0,$w13,$w0
	shf.w	$w12,$w12,0x4e
	dotp_s.w	$w13,$w1,$w19
	addv.h	$w14,$w9,$w12
	dpadd_s.w	$w13,$w5,$w25
	subv.h	$w12,$w9,$w12
	dotp_s.w	$w1,$w1,$w28
	dotp_s.w	$w21,$w4,$w21
	dpadd_s.w	$w1,$w5,$w23
	dpadd_s.w	$w21,$w3,$w27
	srari.w	$w1,$w1,2
	dotp_s.w	$w20,$w4,$w20
	dotp_s.w	$w19,$w4,$w19
	dpadd_s.w	$w20,$w3,$w26
	dpadd_s.w	$w19,$w3,$w25
	dotp_s.w	$w4,$w4,$w28
	shf.w	$w12,$w12,0xd8
	dpadd_s.w	$w4,$w3,$w23
	shf.h	$w9,$w12,0xd8
	srari.w	$w18,$w18,2
	srari.w	$w16,$w16,2
	srari.w	$w13,$w13,2
	shf.w	$w2,$w2,0xd8
	shf.w	$w0,$w0,0xd8
	shf.h	$w2,$w2,0xd8
	shf.h	$w0,$w0,0xd8
	dotp_s.w	$w3,$w2,$w11
	dotp_s.w	$w5,$w0,$w22
	srari.w	$w3,$w3,2
	srari.w	$w5,$w5,2
	dotp_s.w	$w2,$w2,$w17
	dotp_s.w	$w0,$w0,$w15
	srari.w	$w2,$w2,2
	srari.w	$w0,$w0,2
	dotp_s.w	$w22,$w9,$w22
	shf.w	$w14,$w14,0xd8
	dotp_s.w	$w9,$w9,$w15
	shf.h	$w14,$w14,0xd8
	srari.w	$w21,$w21,2
	dotp_s.w	$w11,$w14,$w11
	shf.w	$w21,$w21,0x1b
	dotp_s.w	$w14,$w14,$w17
	srari.w	$w11,$w11,2
	subv.w	$w17,$w18,$w21
	shf.w	$w23,$w11,0x1b
	addv.w	$w18,$w18,$w21
	subv.w	$w28,$w3,$w23
	dotp_s.d	$w21,$w17,$w6
	dotp_s.d	$w30,$w28,$w6
	dotp_s.d	$w31,$w28,$w10
	pckev.w	$w21,$w21,$w30
	addv.w	$w3,$w3,$w23
	st.w	$w21,0($sp)
	dotp_s.d	$w23,$w17,$w10
	dotp_s.d	$w21,$w28,$w8
	shf.w	$w3,$w3,0x36
	dotp_s.d	$w28,$w28,$w7
	shf.w	$w18,$w18,0x36
	pckev.w	$w31,$w23,$w31
	hsub_s.d	$w30,$w3,$w3
	hsub_s.d	$w23,$w18,$w18
	hadd_s.d	$w31,$w31,$w31
	pckev.w	$w30,$w23,$w30
	hadd_s.d	$w18,$w18,$w18
	dotp_s.d	$w23,$w17,$w8
	srari.w	$w20,$w20,2
	dotp_s.d	$w17,$w17,$w7
	shf.w	$w20,$w20,0x1b
	pckev.w	$w23,$w23,$w21
	subv.w	$w27,$w16,$w20
	pckev.w	$w17,$w17,$w28
	addv.w	$w16,$w16,$w20
	dotp_s.d	$w28,$w30,$w24
	hadd_s.d	$w17,$w17,$w17
	dotp_s.d	$w30,$w30,$w29
	shf.w	$w16,$w16,0x36
	srari.w	$w19,$w19,2
	srari.w	$w4,$w4,2
	shf.w	$w19,$w19,0x1b
	shf.w	$w4,$w4,0x1b
	subv.w	$w26,$w13,$w19
	subv.w	$w25,$w1,$w4
	addv.w	$w13,$w13,$w19
	addv.w	$w4,$w1,$w4
	dotp_s.d	$w19,$w26,$w8
	shf.w	$w13,$w13,0x36
	shf.w	$w4,$w4,0x36
	srari.w	$w22,$w22,2
	srari.w	$w14,$w14,2
	shf.w	$w22,$w22,0x1b
	shf.w	$w14,$w14,0x1b
	subv.w	$w15,$w5,$w22
	subv.w	$w12,$w2,$w14
	addv.w	$w5,$w5,$w22
	addv.w	$w14,$w2,$w14
	dotp_s.d	$w22,$w15,$w8
	shf.w	$w5,$w5,0x36
	shf.w	$w14,$w14,0x36
	srari.w	$w9,$w9,2
	hadd_s.d	$w2,$w14,$w14
	shf.w	$w9,$w9,0x1b
	hsub_s.d	$w14,$w14,$w14
	subv.w	$w11,$w0,$w9
	hadd_s.d	$w3,$w3,$w3
	addv.w	$w0,$w0,$w9
	pckev.w	$w3,$w18,$w3
	dotp_s.d	$w9,$w11,$w7
	ld.w	$w18,0($sp)
	slli.w	$w3,$w3,6
	hadd_s.d	$w21,$w18,$w18
	shf.w	$w0,$w0,0x36
	hadd_s.d	$w18,$w3,$w3
	pckev.w	$w21,$w31,$w21
	pckev.w	$w30,$w30,$w18
	dotp_s.d	$w31,$w27,$w6
	vsrarin.h	$w30,$w30,9
	dotp_s.d	$w18,$w15,$w6
	vsrarin.h	$w21,$w21,9
	vsw	$w30,0,0($5)
	vsw	$w30,1,32($5)
	pckev.w	$w18,$w31,$w18
	hadd_s.d	$w30,$w16,$w16
	hadd_s.d	$w18,$w18,$w18
	hadd_s.d	$w1,$w0,$w0
	hadd_s.d	$w23,$w23,$w23
	hsub_s.d	$w3,$w3,$w3
	pckev.w	$w23,$w17,$w23
	pckev.w	$w3,$w28,$w3
	dotp_s.d	$w17,$w15,$w7
	vsrarin.h	$w23,$w23,9
	vsrarin.h	$w3,$w3,9
	dotp_s.d	$w28,$w27,$w7
	vsw	$w23,0,16($5)
	vsw	$w23,1,48($5)
	vsw	$w3,0,64($5)
	dotp_s.d	$w23,$w27,$w8
	vsw	$w3,1,96($5)
	dotp_s.d	$w27,$w27,$w10
	dotp_s.d	$w15,$w15,$w10
	hadd_s.d	$w3,$w5,$w5
	pckev.w	$w23,$w23,$w22
	hsub_s.d	$w5,$w5,$w5
	hadd_s.d	$w22,$w13,$w13
	pckev.w	$w28,$w28,$w17
	pckev.w	$w15,$w27,$w15
	pckev.w	$w3,$w30,$w3
	dotp_s.d	$w27,$w26,$w7
	slli.w	$w3,$w3,6
	hadd_s.d	$w28,$w28,$w28
	pckev.w	$w2,$w22,$w2
	vsw	$w21,0,80($5)
	slli.w	$w2,$w2,6
	hsub_s.d	$w16,$w16,$w16
	hadd_s.d	$w23,$w23,$w23
	pckev.w	$w16,$w16,$w5
	pckev.w	$w23,$w28,$w23
	dotp_s.d	$w20,$w16,$w24
	hadd_s.d	$w5,$w3,$w3
	vsrarin.h	$w17,$w23,9
	dotp_s.d	$w16,$w16,$w29
	dotp_s.d	$w23,$w26,$w6
	pckev.w	$w16,$w16,$w5
	dotp_s.d	$w26,$w26,$w10
	vsrarin.h	$w5,$w16,9
	hadd_s.d	$w15,$w15,$w15
	dotp_s.d	$w16,$w12,$w8
	pckev.w	$w15,$w15,$w18
	pckev.w	$w19,$w19,$w16
	dotp_s.d	$w18,$w12,$w6
	vsrarin.h	$w15,$w15,9
	hadd_s.d	$w19,$w19,$w19
	hsub_s.d	$w3,$w3,$w3
	hsub_s.d	$w13,$w13,$w13
	pckev.w	$w3,$w20,$w3
	pckev.w	$w13,$w13,$w14
	dotp_s.d	$w20,$w12,$w7
	hadd_s.d	$w14,$w2,$w2
	dotp_s.d	$w22,$w13,$w24
	vsrarin.h	$w3,$w3,9
	dotp_s.d	$w12,$w12,$w10
	pckev.w	$w20,$w27,$w20
	pckev.w	$w12,$w26,$w12
	dotp_s.d	$w13,$w13,$w29
	dotp_s.d	$w7,$w25,$w7
	pckev.w	$w13,$w13,$w14
	pckev.w	$w18,$w23,$w18
	dotp_s.d	$w14,$w11,$w6
	hadd_s.d	$w18,$w18,$w18
	vsrarin.h	$w13,$w13,9
	dotp_s.d	$w6,$w25,$w6
	hadd_s.d	$w20,$w20,$w20
	hadd_s.d	$w12,$w12,$w12
	pckev.w	$w16,$w20,$w19
	pckev.w	$w12,$w12,$w18
	vsrarin.h	$w16,$w16,9
	dotp_s.d	$w18,$w11,$w8
	vsrarin.h	$w12,$w12,9
	dotp_s.d	$w8,$w25,$w8
	dotp_s.d	$w11,$w11,$w10
	hadd_s.d	$w19,$w4,$w4
	dotp_s.d	$w10,$w25,$w10
	hsub_s.d	$w2,$w2,$w2
	pckev.w	$w11,$w10,$w11
	pckev.w	$w2,$w22,$w2
	hsub_s.d	$w0,$w0,$w0
	vsrarin.h	$w2,$w2,9
	hsub_s.d	$w4,$w4,$w4
	pckev.w	$w8,$w8,$w18
	pckev.w	$w0,$w4,$w0
	pckev.w	$w7,$w7,$w9
	dotp_s.d	$w24,$w0,$w24
	pckev.w	$w6,$w6,$w14
	pckev.w	$w1,$w19,$w1
	hadd_s.d	$w8,$w8,$w8
	slli.w	$w1,$w1,6
	hadd_s.d	$w7,$w7,$w7
	hadd_s.d	$w10,$w1,$w1
	hadd_s.d	$w6,$w6,$w6
	hadd_s.d	$w11,$w11,$w11
	hsub_s.d	$w1,$w1,$w1
	dotp_s.d	$w29,$w0,$w29
	pckev.w	$w1,$w24,$w1
	pckev.w	$w8,$w7,$w8
	vsrarin.h	$w1,$w1,9
	vsrarin.h	$w8,$w8,9
	pckev.w	$w11,$w11,$w6
	pckev.w	$w29,$w29,$w10
	vsrarin.h	$w11,$w11,9
	vsrarin.h	$w29,$w29,9
	vsw	$w21,1,112($5)
	vsw	$w29,0,12($5)
	vsw	$w29,1,44($5)
	vsw	$w5,0,4($5)
	vsw	$w17,0,20($5)
	vsw	$w5,1,36($5)
	vsw	$w17,1,52($5)
	vsw	$w3,0,68($5)
	vsw	$w15,0,84($5)
	vsw	$w3,1,100($5)
	vsw	$w15,1,116($5)
	vsw	$w13,0,8($5)
	vsw	$w16,0,24($5)
	vsw	$w13,1,40($5)
	vsw	$w16,1,56($5)
	vsw	$w2,0,72($5)
	vsw	$w12,0,88($5)
	vsw	$w2,1,104($5)
	vsw	$w12,1,120($5)
	vsw	$w8,0,28($5)
	vsw	$w8,1,60($5)
	ldc1	$f31,72($sp)
	ldc1	$f30,64($sp)
	vsw	$w1,0,76($5)
	vsw	$w11,0,92($5)
	vsw	$w1,1,108($5)
	ldc1	$f29,56($sp)
	vsw	$w11,1,124($5)
	ldc1	$f28,48($sp)
	ldc1	$f27,40($sp)
	ldc1	$f26,32($sp)
	ldc1	$f25,24($sp)
	ldc1	$f24,16($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.set	macro
	.set	reorder
	.end	_ZL4dct8PKsPsl
	.size	_ZL4dct8PKsPsl, .-_ZL4dct8PKsPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL4dct4PKsPsl
	.type	_ZL4dct4PKsPsl, @function
_ZL4dct4PKsPsl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$6,$6,1
	lui	$7,%hi(%neg(%gp_rel(_ZL4dct4PKsPsl)))
	vbld	$w1,0($4)
	ldi.h	$w4,64
	daddu	$3,$4,$6
	daddu	$7,$7,$25
	daddiu	$7,$7,%lo(%neg(%gp_rel(_ZL4dct4PKsPsl)))
	daddu	$2,$3,$6
	vbld	$w0,0($3)
	insve.d	$w1[1],$w0[0]
	daddu	$6,$2,$6
	vbld	$w0,0($2)
	ld	$2,%got_page(.LC13)($7)
	vbld	$w2,0($6)
	insve.d	$w0[1],$w2[0]
	pckev.w	$w2,$w0,$w1
	pckod.w	$w0,$w0,$w1
	shf.h	$w0,$w0,0xb1
	addv.h	$w1,$w2,$w0
	subv.h	$w0,$w2,$w0
	dotp_s.w	$w2,$w1,$w4
	daddiu	$2,$2,%got_ofst(.LC13)
	vsrarin.h	$w2,$w2,1
	ld.h	$w5,0($2)
	ld	$2,%got_page(.LC12)($7)
	dotp_s.w	$w3,$w0,$w5
	vsrarin.h	$w3,$w3,1
	insve.d	$w2[1],$w3[0]
	daddiu	$2,$2,%got_ofst(.LC12)
	ld.h	$w7,0($2)
	ld	$2,%got_page(.LC14)($7)
	dotp_s.w	$w1,$w1,$w7
	vsrarin.h	$w1,$w1,1
	daddiu	$2,$2,%got_ofst(.LC14)
	ld.h	$w6,0($2)
	dotp_s.w	$w0,$w0,$w6
	vsrarin.h	$w3,$w0,1
	insve.d	$w1[1],$w3[0]
	pckev.w	$w0,$w1,$w2
	pckod.w	$w1,$w1,$w2
	shf.h	$w1,$w1,0xb1
	addv.h	$w2,$w0,$w1
	subv.h	$w0,$w0,$w1
	dotp_s.w	$w4,$w2,$w4
	dotp_s.w	$w5,$w0,$w5
	dotp_s.w	$w2,$w2,$w7
	dotp_s.w	$w0,$w0,$w6
	vsrarin.h	$w4,$w4,8
	vsrarin.h	$w5,$w5,8
	vsrarin.h	$w2,$w2,8
	vsrarin.h	$w0,$w0,8
	insve.d	$w4[1],$w5[0]
	insve.d	$w2[1],$w0[0]
	st.d	$w4,0($5)
	jr	$31
	st.d	$w2,16($5)

	.set	macro
	.set	reorder
	.end	_ZL4dct4PKsPsl
	.size	_ZL4dct4PKsPsl, .-_ZL4dct4PKsPsl
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
	blez	$16,.L958
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
.L962:
	daddu	$2,$4,$9
	ld.d	$w3,0($4)
	daddu	$3,$2,$9
	ld.b	$w2,0($2)
	aver_u.b	$w3,$w3,$w2
	ld.d	$w0,0($3)
	blez	$21,.L960
	aver_u.b	$w2,$w2,$w0

	daddu	$25,$4,$22
	move	$12,$8
	move	$11,$7
	move	$10,$6
	move	$3,$17
	.align	3
.L961:
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
	bne	$4,$25,.L961
	st.d	$w0,0($12)

	daddu	$17,$17,$18
	daddu	$6,$6,$18
	daddu	$7,$7,$18
	daddu	$8,$8,$18
.L960:
	addiu	$19,$19,1
	daddu	$4,$4,$20
	daddu	$17,$17,$5
	daddu	$6,$6,$5
	daddu	$7,$7,$5
	bne	$16,$19,.L962
	daddu	$8,$8,$5

.L958:
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
	blez	$8,.L974
	shf.w	$w5,$w5,0

	sra	$7,$7,4
	move	$10,$0
	ldi.h	$w7,1
	addiu	$11,$7,-1
	dext	$11,$11,0,32
	dsll	$11,$11,4
	daddiu	$11,$11,16
	.align	3
.L970:
	blez	$7,.L968
	nop

	move	$2,$4
	move	$3,$5
	daddu	$9,$11,$4
	.align	3
.L969:
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
	bne	$2,$9,.L969
	st.d	$w0,-16($3)

.L968:
	addiu	$10,$10,1
	daddu	$4,$4,$6
	bne	$8,$10,.L970
	daddu	$5,$5,$6

.L974:
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
.L977:
	daddu	$fp,$7,$6
	move	$24,$4
	daddu	$16,$18,$4
	daddiu	$19,$4,64
	move	$25,$fp
	.align	3
.L976:
	daddu	$12,$5,$16
	daddu	$10,$7,$25
	vbld	$w10,0($24)
	vbld	$w9,0($16)
	daddu	$9,$12,$18
	daddu	$3,$10,$22
	vbld	$w4,0($12)
	vbld	$w8,0($6)
	daddu	$13,$5,$24
	daddu	$2,$3,$7
	vbld	$w7,0($25)
	hadd_u.h	$w2,$w9,$w9
	dsubu	$11,$6,$7
	daddu	$8,$5,$9
	vbld	$w5,0($13)
	hadd_u.h	$w14,$w8,$w8
	daddu	$15,$21,$13
	daddu	$14,$8,$5
	hadd_u.h	$w13,$w7,$w7
	vbld	$w3,0($11)
	daddu	$12,$7,$2
	daddu	$13,$20,$11
	hadd_u.h	$w15,$w3,$w3
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
	vbld	$w9,0($14)
	addv.h	$w11,$w0,$w2
	vbld	$w6,0($9)
	addv.h	$w13,$w11,$w5
	subv.h	$w0,$w0,$w2
	subv.h	$w11,$w11,$w5
	subv.h	$w2,$w0,$w3
	addv.h	$w12,$w0,$w3
	vbld	$w5,0($8)
	vbld	$w3,0($2)
	vbld	$w8,0($13)
	vbld	$w7,0($12)
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
	daddiu	$16,$16,8
	addiu	$2,$2,1
	daddiu	$6,$6,8
	sra	$2,$2,1
	daddiu	$25,$25,8
	addu	$2,$2,$17
	bne	$24,$19,.L976
	move	$17,$2

	ld	$3,0($sp)
	addiu	$23,$23,-1
	daddu	$4,$4,$3
	ld	$3,8($sp)
	bne	$23,$0,.L977
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
	.ent	_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l
	.type	_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l, @function
_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x103f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$15,2			# 0x2
	move	$13,$0
	sd	$16,8($sp)
	dsll	$16,$5,3
	dsll	$25,$7,3
	li	$24,1			# 0x1
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
.L983:
	move	$11,$4
	move	$12,$6
	daddiu	$14,$4,16
.L982:
	daddu	$8,$5,$11
	daddu	$2,$7,$12
	vbld	$w9,0($11)
	vbld	$w8,0($12)
	daddu	$3,$8,$5
	daddu	$20,$7,$2
	vbld	$w7,0($8)
	vbld	$w4,0($2)
	daddu	$9,$5,$3
	daddu	$19,$7,$20
	vbld	$w6,0($3)
	hadd_u.h	$w15,$w8,$w8
	daddu	$21,$9,$5
	daddu	$8,$7,$19
	vbld	$w5,0($9)
	hadd_u.h	$w10,$w6,$w6
	daddu	$3,$7,$8
	daddu	$10,$5,$21
	hadd_u.h	$w14,$w4,$w4
	vbld	$w3,0($20)
	daddu	$2,$7,$3
	daddu	$9,$5,$10
	hadd_u.h	$w13,$w3,$w3
	vbld	$w1,0($19)
	daddu	$17,$7,$2
	daddu	$18,$5,$9
	hadd_u.h	$w12,$w1,$w1
	hadd_u.h	$w11,$w9,$w9
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w0,$w5,$w5
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w11[1],$w9[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w1,$w1,$w1
	insve.d	$w2[1],$w7[0]
	insve.d	$w0[1],$w5[0]
	move.v	$w7,$w2
	move.v	$w5,$w0
	move.v	$w2,$w10
	move.v	$w0,$w15
	insve.d	$w2[1],$w6[0]
	insve.d	$w0[1],$w8[0]
	move.v	$w6,$w2
	subv.h	$w8,$w11,$w0
	move.v	$w2,$w14
	move.v	$w0,$w13
	insve.d	$w2[1],$w4[0]
	insve.d	$w0[1],$w3[0]
	subv.h	$w2,$w7,$w2
	subv.h	$w4,$w6,$w0
	addv.h	$w7,$w2,$w8
	subv.h	$w3,$w2,$w8
	move.v	$w0,$w12
	vbld	$w8,0($21)
	insve.d	$w0[1],$w1[0]
	vbld	$w6,0($9)
	subv.h	$w0,$w5,$w0
	vbld	$w10,0($18)
	addv.h	$w11,$w0,$w4
	vbld	$w5,0($8)
	subv.h	$w0,$w0,$w4
	addv.h	$w13,$w11,$w7
	subv.h	$w2,$w0,$w3
	addv.h	$w12,$w0,$w3
	subv.h	$w11,$w11,$w7
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	vbld	$w7,0($10)
	vbld	$w9,0($17)
	hadd_u.h	$w16,$w8,$w8
	hadd_u.h	$w14,$w7,$w7
	hadd_u.h	$w15,$w6,$w6
	hadd_u.h	$w1,$w10,$w10
	hadd_u.h	$w20,$w5,$w5
	hadd_u.h	$w19,$w4,$w4
	hadd_u.h	$w0,$w3,$w3
	hadd_u.h	$w17,$w9,$w9
	hsub_u.h	$w18,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w1[1],$w10[0]
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w0[1],$w3[0]
	insve.d	$w17[1],$w9[0]
	insve.d	$w16[1],$w18[0]
	move.v	$w8,$w14
	insve.d	$w8[1],$w7[0]
	move.v	$w7,$w8
	move.v	$w8,$w15
	insve.d	$w8[1],$w6[0]
	move.v	$w6,$w8
	move.v	$w8,$w20
	insve.d	$w8[1],$w5[0]
	move.v	$w5,$w19
	subv.h	$w8,$w16,$w8
	insve.d	$w5[1],$w4[0]
	subv.h	$w4,$w7,$w5
	subv.h	$w5,$w6,$w0
	addv.h	$w10,$w4,$w8
	subv.h	$w3,$w4,$w8
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
	daddiu	$11,$11,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$12,$12,8
	addu	$2,$3,$2
	addiu	$2,$2,1
	sra	$2,$2,1
	addu	$2,$2,$13
	bne	$11,$14,.L982
	move	$13,$2

	daddu	$4,$4,$16
	bne	$15,$24,.L984
	daddu	$6,$6,$25

	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L984:
	b	.L983
	li	$15,1			# 0x1

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
.L988:
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
	bne	$fp,$0,.L988
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
	.ent	_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l
	.type	_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l, @function
_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l:
	.frame	$sp,112,$31		# vars= 16, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	dsll	$2,$5,3
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l)))
	daddiu	$24,$4,64
	daddu	$28,$28,$25
	sd	$20,56($sp)
	move	$14,$0
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l)))
	sd	$22,72($sp)
	move	$22,$5
	ld	$20,%got_page(_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf)($28)
	ld	$25,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	sd	$21,64($sp)
	move	$21,$7
	daddiu	$20,$20,%got_ofst(_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf)
	sd	$17,32($sp)
	move	$17,$6
	sd	$16,24($sp)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	li	$16,8			# 0x8
	sd	$2,8($sp)
	move	$15,$20
	dsll	$2,$7,3
	sd	$31,104($sp)
	sd	$fp,96($sp)
	sd	$23,80($sp)
	sd	$19,48($sp)
	sd	$18,40($sp)
	sd	$2,0($sp)
.L1003:
	daddiu	$23,$24,-64
	move	$fp,$17
	.align	3
.L1002:
	move	$7,$0
	move	$6,$15
	move	$5,$22
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	move	$4,$23

	move	$18,$23
	li	$9,8			# 0x8
	move	$7,$0
	.align	3
.L999:
	move	$4,$18
	daddiu	$10,$18,8
	move	$5,$20
	.align	3
.L998:
	daddiu	$5,$5,1
	lbu	$3,0($4)
	daddiu	$4,$4,1
	lbu	$6,-1($5)
	subu	$3,$3,$6
	sra	$6,$3,31
	xor	$3,$6,$3
	subu	$3,$3,$6
	bne	$10,$4,.L998
	addu	$7,$3,$7

	addiu	$9,$9,-1
	bne	$9,$0,.L999
	daddu	$18,$18,$22

	sra	$9,$7,2
	move	$6,$15
	move	$7,$0
	move	$5,$21
	move	$4,$fp
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l
1:	jalr	$25
	subu	$18,$2,$9

	move	$19,$fp
	li	$10,8			# 0x8
	move	$6,$0
	.align	3
.L1001:
	move	$4,$19
	daddiu	$7,$19,8
	move	$5,$20
	.align	3
.L1000:
	daddiu	$5,$5,1
	lbu	$3,0($4)
	daddiu	$4,$4,1
	lbu	$11,-1($5)
	subu	$3,$3,$11
	sra	$11,$3,31
	xor	$3,$11,$3
	subu	$3,$3,$11
	bne	$7,$4,.L1000
	addu	$6,$3,$6

	addiu	$10,$10,-1
	bne	$10,$0,.L1001
	daddu	$19,$19,$21

	sra	$6,$6,2
	daddiu	$23,$23,8
	subu	$6,$2,$6
	daddiu	$fp,$fp,8
	subu	$9,$18,$6
	sra	$2,$9,31
	xor	$9,$2,$9
	subu	$2,$9,$2
	bne	$24,$23,.L1002
	addu	$14,$2,$14

	ld	$2,8($sp)
	addiu	$16,$16,-1
	daddu	$24,$24,$2
	ld	$2,0($sp)
	bne	$16,$0,.L1003
	daddu	$17,$17,$2

	ld	$31,104($sp)
	move	$2,$14
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
	.end	_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_l
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
.L1012:
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
	bne	$9,$0,.L1012
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
	.ent	_ZN12_GLOBAL__N_116psyCost_pp_16x16EPKhlS1_l
	.type	_ZN12_GLOBAL__N_116psyCost_pp_16x16EPKhlS1_l, @function
_ZN12_GLOBAL__N_116psyCost_pp_16x16EPKhlS1_l:
	.frame	$sp,128,$31		# vars= 0, regs= 9/6, args= 0, gp= 0
	.mask	0x10ff0000,-56
	.fmask	0x3f000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	dsll	$15,$5,3
	dsll	$14,$7,3
	li	$12,2			# 0x2
	sd	$23,64($sp)
	move	$2,$0
	li	$13,1			# 0x1
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	sdc1	$f29,120($sp)
	sdc1	$f28,112($sp)
	sdc1	$f27,104($sp)
	sdc1	$f26,96($sp)
	sdc1	$f25,88($sp)
	sdc1	$f24,80($sp)
.L1021:
	move	$9,$4
	move	$10,$6
	daddiu	$11,$4,16
.L1020:
	daddu	$8,$5,$9
	daddu	$21,$7,$10
	vbld	$w3,0($9)
	vbld	$w23,0($10)
	daddu	$3,$8,$5
	daddu	$20,$7,$21
	vbld	$w8,0($8)
	hadd_u.h	$w1,$w3,$w3
	daddu	$17,$5,$3
	daddu	$19,$7,$20
	vbld	$w7,0($3)
	hadd_u.h	$w2,$w23,$w23
	daddu	$16,$17,$5
	daddu	$18,$7,$19
	hadd_u.h	$w20,$w8,$w8
	hadd_u.h	$w13,$w7,$w7
	daddu	$8,$7,$18
	daddu	$25,$5,$16
	vbld	$w6,0($17)
	vbld	$w5,0($16)
	daddu	$3,$7,$8
	daddu	$24,$5,$25
	hadd_u.h	$w0,$w6,$w6
	hadd_u.h	$w9,$w5,$w5
	daddu	$23,$5,$24
	daddu	$22,$7,$3
	vbld	$w14,0($25)
	vbld	$w4,0($24)
	hadd_u.h	$w19,$w14,$w14
	hadd_u.h	$w12,$w4,$w4
	vbld	$w10,0($23)
	vbld	$w26,0($22)
	hadd_u.h	$w18,$w10,$w10
	hsub_u.h	$w3,$w3,$w3
	move.v	$w11,$w1
	hsub_u.h	$w8,$w8,$w8
	insve.d	$w11[1],$w3[0]
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w23,$w23,$w23
	move.v	$w3,$w20
	insve.d	$w3[1],$w8[0]
	move.v	$w16,$w3
	move.v	$w3,$w13
	subv.h	$w22,$w16,$w11
	insve.d	$w3[1],$w7[0]
	addv.h	$w7,$w16,$w11
	move.v	$w8,$w3
	move.v	$w3,$w0
	insve.d	$w3[1],$w6[0]
	hsub_u.h	$w6,$w14,$w14
	move.v	$w16,$w3
	move.v	$w3,$w9
	addv.h	$w21,$w16,$w8
	insve.d	$w3[1],$w5[0]
	addv.h	$w15,$w21,$w7
	subv.h	$w16,$w16,$w8
	subv.h	$w21,$w21,$w7
	addv.h	$w11,$w16,$w22
	move.v	$w5,$w19
	subv.h	$w16,$w16,$w22
	insve.d	$w5[1],$w6[0]
	vbld	$w6,0($21)
	move.v	$w7,$w5
	move.v	$w5,$w12
	addv.h	$w8,$w7,$w3
	insve.d	$w5[1],$w4[0]
	subv.h	$w7,$w7,$w3
	move.v	$w14,$w5
	move.v	$w3,$w18
	hsub_u.h	$w5,$w10,$w10
	insve.d	$w3[1],$w5[0]
	addv.h	$w4,$w3,$w14
	subv.h	$w3,$w3,$w14
	addv.h	$w17,$w4,$w8
	subv.h	$w4,$w4,$w8
	addv.h	$w14,$w17,$w15
	addv.h	$w8,$w3,$w7
	subv.h	$w17,$w17,$w15
	subv.h	$w3,$w3,$w7
	pckod.h	$w15,$w17,$w14
	addv.h	$w7,$w4,$w21
	addv.h	$w5,$w3,$w16
	pckev.h	$w14,$w17,$w14
	addv.h	$w10,$w8,$w11
	asub_s.h	$w24,$w15,$w14
	subv.h	$w8,$w8,$w11
	subv.h	$w4,$w4,$w21
	pckod.h	$w11,$w8,$w10
	subv.h	$w3,$w3,$w16
	pckev.h	$w10,$w8,$w10
	hadd_u.h	$w17,$w6,$w6
	pckod.h	$w8,$w4,$w7
	asub_s.h	$w22,$w11,$w10
	pckev.h	$w4,$w4,$w7
	addv.h	$w15,$w15,$w14
	pckod.h	$w7,$w3,$w5
	asub_s.h	$w21,$w8,$w4
	pckev.h	$w3,$w3,$w5
	vabs.h	$w14,$w15
	asub_s.h	$w16,$w7,$w3
	ilvod.h	$w5,$w14,$w24
	addv.h	$w11,$w11,$w10
	ilvev.h	$w14,$w14,$w24
	vabs.h	$w10,$w11
	addv.h	$w4,$w8,$w4
	addv.h	$w3,$w7,$w3
	ilvod.h	$w8,$w10,$w22
	vabs.h	$w4,$w4
	vabs.h	$w3,$w3
	ilvod.h	$w25,$w4,$w21
	ilvod.h	$w7,$w3,$w16
	ilvev.h	$w4,$w4,$w21
	ilvev.h	$w10,$w10,$w22
	ilvev.h	$w3,$w3,$w16
	max_s.h	$w5,$w5,$w14
	max_s.h	$w10,$w8,$w10
	hadd_u.h	$w14,$w26,$w26
	max_s.h	$w25,$w25,$w4
	max_s.h	$w3,$w7,$w3
	vbld	$w4,0($8)
	hadd_s.w	$w10,$w10,$w10
	hadd_u.h	$w15,$w4,$w4
	hadd_s.w	$w3,$w3,$w3
	vbld	$w22,0($20)
	vbld	$w21,0($19)
	hadd_u.h	$w11,$w22,$w22
	hadd_u.h	$w16,$w21,$w21
	vbld	$w7,0($18)
	hsub_u.h	$w6,$w6,$w6
	hadd_u.h	$w8,$w7,$w7
	move.v	$w24,$w2
	hsub_u.h	$w22,$w22,$w22
	insve.d	$w24[1],$w23[0]
	hsub_u.h	$w21,$w21,$w21
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w4,$w4,$w4
	hadd_s.w	$w5,$w5,$w5
	hadd_s.w	$w25,$w25,$w25
	addv.w	$w5,$w5,$w10
	addv.w	$w25,$w25,$w3
	move.v	$w23,$w17
	vbld	$w3,0($3)
	insve.d	$w23[1],$w6[0]
	hadd_u.h	$w10,$w3,$w3
	move.v	$w28,$w23
	hsub_u.h	$w3,$w3,$w3
	subv.h	$w28,$w28,$w24
	addv.h	$w23,$w23,$w24
	addv.w	$w5,$w5,$w25
	move.v	$w6,$w11
	hadd_s.d	$w5,$w5,$w5
	insve.d	$w6[1],$w22[0]
	copy_s.w	$8,$w5[2]
	move.v	$w22,$w16
	copy_s.w	$3,$w5[0]
	insve.d	$w22[1],$w21[0]
	addu	$3,$3,$8
	move.v	$w21,$w8
	insve.d	$w21[1],$w7[0]
	move.v	$w7,$w21
	addv.h	$w21,$w22,$w6
	subv.h	$w6,$w22,$w6
	addv.h	$w24,$w21,$w23
	subv.h	$w22,$w6,$w28
	subv.h	$w23,$w21,$w23
	addv.h	$w21,$w6,$w28
	move.v	$w6,$w15
	insve.d	$w6[1],$w4[0]
	move.v	$w4,$w10
	subv.h	$w27,$w6,$w7
	insve.d	$w4[1],$w3[0]
	move.v	$w3,$w14
	move.v	$w28,$w4
	addv.h	$w4,$w6,$w7
	hsub_u.h	$w7,$w26,$w26
	insve.d	$w3[1],$w7[0]
	move.v	$w6,$w3
	addv.h	$w3,$w3,$w28
	subv.h	$w6,$w6,$w28
	addv.h	$w25,$w3,$w4
	addv.h	$w26,$w6,$w27
	subv.h	$w3,$w3,$w4
	addv.h	$w28,$w26,$w21
	addv.h	$w7,$w3,$w23
	addv.h	$w4,$w25,$w24
	subv.h	$w26,$w26,$w21
	subv.h	$w3,$w3,$w23
	pckod.h	$w29,$w26,$w28
	pckev.h	$w23,$w26,$w28
	pckod.h	$w21,$w3,$w7
	subv.h	$w6,$w6,$w27
	pckev.h	$w3,$w3,$w7
	addv.h	$w27,$w6,$w22
	asub_s.h	$w7,$w29,$w23
	subv.h	$w24,$w25,$w24
	subv.h	$w6,$w6,$w22
	pckod.h	$w25,$w24,$w4
	pckod.h	$w22,$w6,$w27
	pckev.h	$w24,$w24,$w4
	pckev.h	$w6,$w6,$w27
	asub_s.h	$w28,$w25,$w24
	asub_s.h	$w27,$w21,$w3
	asub_s.h	$w26,$w22,$w6
	addv.h	$w21,$w21,$w3
	addv.h	$w6,$w22,$w6
	vabs.h	$w21,$w21
	vabs.h	$w6,$w6
	addv.h	$w24,$w25,$w24
	ilvod.h	$w22,$w6,$w26
	vabs.h	$w24,$w24
	addv.h	$w23,$w29,$w23
	ilvod.h	$w4,$w24,$w28
	vabs.h	$w23,$w23
	ilvev.h	$w24,$w24,$w28
	ilvod.h	$w3,$w23,$w7
	ilvev.h	$w6,$w6,$w26
	ilvev.h	$w23,$w23,$w7
	max_s.h	$w4,$w4,$w24
	ilvod.h	$w7,$w21,$w27
	max_s.h	$w3,$w3,$w23
	ilvev.h	$w21,$w21,$w27
	max_s.h	$w6,$w22,$w6
	max_s.h	$w7,$w7,$w21
	hadd_s.w	$w4,$w4,$w4
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w7,$w7,$w7
	hadd_s.w	$w6,$w6,$w6
	addv.w	$w3,$w4,$w3
	addv.w	$w7,$w7,$w6
	addv.w	$w3,$w3,$w7
	hadd_s.d	$w3,$w3,$w3
	copy_s.w	$24,$w3[0]
	copy_s.w	$8,$w3[2]
	addu	$8,$24,$8
	addiu	$3,$3,1
	addv.h	$w1,$w1,$w20
	addv.h	$w0,$w13,$w0
	addiu	$8,$8,1
	sra	$3,$3,1
	addv.h	$w0,$w1,$w0
	addv.h	$w9,$w9,$w19
	sra	$8,$8,1
	addv.h	$w12,$w12,$w18
	addv.h	$w2,$w2,$w17
	addv.h	$w12,$w9,$w12
	subu	$8,$3,$8
	addv.h	$w0,$w0,$w12
	addv.h	$w1,$w11,$w16
	hadd_s.w	$w0,$w0,$w0
	addv.h	$w8,$w8,$w15
	hadd_s.d	$w0,$w0,$w0
	addv.h	$w10,$w10,$w14
	srli.w	$w0,$w0,2
	addv.h	$w1,$w2,$w1
	addv.h	$w10,$w8,$w10
	addv.h	$w1,$w1,$w10
	hadd_s.w	$w1,$w1,$w1
	hadd_s.d	$w1,$w1,$w1
	srli.w	$w1,$w1,2
	subv.w	$w0,$w0,$w1
	copy_s.w	$3,$w0[0]
	subu	$3,$8,$3
	daddiu	$9,$9,8
	sra	$8,$3,31
	daddiu	$10,$10,8
	xor	$3,$8,$3
	subu	$3,$3,$8
	bne	$9,$11,.L1020
	addu	$2,$3,$2

	daddu	$4,$4,$15
	bne	$12,$13,.L1022
	daddu	$6,$6,$14

	ld	$23,64($sp)
	ldc1	$f29,120($sp)
	ld	$22,56($sp)
	ldc1	$f28,112($sp)
	ld	$21,48($sp)
	ldc1	$f27,104($sp)
	ld	$20,40($sp)
	ldc1	$f26,96($sp)
	ld	$19,32($sp)
	ldc1	$f25,88($sp)
	ld	$18,24($sp)
	ldc1	$f24,80($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,128

	.align	3
.L1022:
	b	.L1021
	li	$12,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116psyCost_pp_16x16EPKhlS1_l
	.size	_ZN12_GLOBAL__N_116psyCost_pp_16x16EPKhlS1_l, .-_ZN12_GLOBAL__N_116psyCost_pp_16x16EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114psyCost_pp_8x8EPKhlS1_l
	.type	_ZN12_GLOBAL__N_114psyCost_pp_8x8EPKhlS1_l, @function
_ZN12_GLOBAL__N_114psyCost_pp_8x8EPKhlS1_l:
	.frame	$sp,176,$31		# vars= 112, regs= 0/8, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0xff000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-176
	daddu	$8,$4,$5
	daddu	$10,$6,$7
	sdc1	$f31,168($sp)
	daddu	$2,$8,$5
	sdc1	$f30,160($sp)
	dlsa	$3,$5,$2,1
	sdc1	$f29,152($sp)
	daddu	$11,$3,$5
	sdc1	$f28,144($sp)
	sdc1	$f27,136($sp)
	sdc1	$f26,128($sp)
	sdc1	$f25,120($sp)
	sdc1	$f24,112($sp)
	vbld	$w5,0($4)
	daddu	$4,$10,$7
	vbld	$w8,0($6)
	dlsa	$9,$7,$4,1
	vbld	$w3,0($8)
	daddu	$8,$11,$5
	vbld	$w6,0($2)
	daddu	$6,$9,$7
	daddu	$2,$2,$5
	vbld	$w1,0($3)
	vbld	$w7,0($11)
	daddu	$13,$6,$7
	daddu	$12,$4,$7
	vbld	$w0,0($2)
	vbld	$w4,0($8)
	daddu	$5,$8,$5
	daddu	$7,$13,$7
	hadd_u.h	$w2,$w5,$w5
	hadd_u.h	$w23,$w8,$w8
	vbld	$w10,0($5)
	hadd_u.h	$w21,$w3,$w3
	hadd_u.h	$w18,$w10,$w10
	hadd_u.h	$w16,$w6,$w6
	hadd_u.h	$w20,$w0,$w0
	hadd_u.h	$w9,$w1,$w1
	hadd_u.h	$w19,$w7,$w7
	hadd_u.h	$w15,$w4,$w4
	hsub_u.h	$w5,$w5,$w5
	move.v	$w11,$w2
	hsub_u.h	$w3,$w3,$w3
	insve.d	$w11[1],$w5[0]
	hsub_u.h	$w6,$w6,$w6
	move.v	$w5,$w11
	hsub_u.h	$w0,$w0,$w0
	hsub_u.h	$w1,$w1,$w1
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w8,$w8,$w8
	move.v	$w11,$w21
	insve.d	$w11[1],$w3[0]
	move.v	$w3,$w16
	subv.h	$w14,$w11,$w5
	insve.d	$w3[1],$w6[0]
	move.v	$w12,$w3
	addv.h	$w3,$w11,$w5
	move.v	$w5,$w20
	insve.d	$w5[1],$w0[0]
	move.v	$w0,$w5
	move.v	$w5,$w9
	addv.h	$w11,$w0,$w12
	insve.d	$w5[1],$w1[0]
	addv.h	$w6,$w11,$w3
	move.v	$w13,$w5
	subv.h	$w11,$w11,$w3
	subv.h	$w12,$w0,$w12
	move.v	$w3,$w18
	addv.h	$w17,$w12,$w14
	subv.h	$w0,$w12,$w14
	insve.d	$w3[1],$w10[0]
	move.v	$w1,$w19
	move.v	$w12,$w3
	insve.d	$w1[1],$w7[0]
	move.v	$w5,$w1
	move.v	$w1,$w15
	addv.h	$w7,$w5,$w13
	insve.d	$w1[1],$w4[0]
	subv.h	$w5,$w5,$w13
	vbld	$w4,0($10)
	subv.h	$w12,$w12,$w1
	st.h	$w18,48($sp)
	hadd_u.h	$w29,$w4,$w4
	addv.h	$w13,$w12,$w5
	addv.h	$w3,$w3,$w1
	addv.h	$w10,$w13,$w17
	addv.h	$w1,$w3,$w7
	subv.h	$w12,$w12,$w5
	addv.h	$w14,$w1,$w6
	subv.h	$w3,$w3,$w7
	subv.h	$w1,$w1,$w6
	addv.h	$w5,$w3,$w11
	addv.h	$w7,$w12,$w0
	subv.h	$w13,$w13,$w17
	subv.h	$w3,$w3,$w11
	pckod.h	$w6,$w13,$w10
	pckod.h	$w11,$w1,$w14
	pckod.h	$w31,$w3,$w5
	pckev.h	$w13,$w13,$w10
	subv.h	$w12,$w12,$w0
	vbld	$w10,0($4)
	asub_s.h	$w27,$w6,$w13
	hadd_u.h	$w30,$w10,$w10
	pckev.h	$w1,$w1,$w14
	pckev.h	$w3,$w3,$w5
	asub_s.h	$w28,$w11,$w1
	asub_s.h	$w26,$w31,$w3
	pckod.h	$w5,$w12,$w7
	hsub_u.h	$w4,$w4,$w4
	pckev.h	$w12,$w12,$w7
	hsub_u.h	$w10,$w10,$w10
	vbld	$w7,0($12)
	asub_s.h	$w25,$w5,$w12
	hadd_u.h	$w14,$w7,$w7
	addv.h	$w1,$w11,$w1
	st.h	$w14,0($sp)
	hsub_u.h	$w7,$w7,$w7
	vbld	$w0,0($9)
	vbld	$w24,0($6)
	hadd_u.h	$w17,$w0,$w0
	hadd_u.h	$w22,$w24,$w24
	st.h	$w17,16($sp)
	st.h	$w22,32($sp)
	hsub_u.h	$w0,$w0,$w0
	vbld	$w22,0($13)
	vbld	$w17,0($7)
	hadd_u.h	$w14,$w22,$w22
	hadd_u.h	$w18,$w17,$w17
	st.h	$w23,64($sp)
	st.h	$w29,80($sp)
	st.h	$w30,96($sp)
	insve.d	$w23[1],$w8[0]
	hsub_u.h	$w24,$w24,$w24
	move.v	$w8,$w23
	hsub_u.h	$w22,$w22,$w22
	move.v	$w23,$w29
	hsub_u.h	$w17,$w17,$w17
	insve.d	$w23[1],$w4[0]
	move.v	$w29,$w30
	addv.h	$w4,$w23,$w8
	insve.d	$w29[1],$w10[0]
	subv.h	$w8,$w23,$w8
	ld.d	$w10,0($sp)
	move.v	$w30,$w29
	insve.d	$w10[1],$w7[0]
	vabs.h	$w1,$w1
	ld.d	$w7,16($sp)
	addv.h	$w6,$w6,$w13
	insve.d	$w7[1],$w0[0]
	addv.h	$w3,$w31,$w3
	move.v	$w29,$w7
	vabs.h	$w6,$w6
	addv.h	$w7,$w10,$w30
	ilvod.h	$w13,$w6,$w27
	subv.h	$w10,$w10,$w30
	addv.h	$w0,$w7,$w4
	subv.h	$w30,$w7,$w4
	subv.h	$w23,$w10,$w8
	addv.h	$w4,$w10,$w8
	ld.d	$w7,32($sp)
	vabs.h	$w3,$w3
	insve.d	$w7[1],$w24[0]
	addv.h	$w5,$w5,$w12
	move.v	$w10,$w7
	vabs.h	$w5,$w5
	move.v	$w7,$w14
	ilvod.h	$w31,$w5,$w25
	insve.d	$w7[1],$w22[0]
	ilvev.h	$w6,$w6,$w27
	subv.h	$w22,$w10,$w29
	move.v	$w24,$w7
	ilvev.h	$w5,$w5,$w25
	addv.h	$w7,$w10,$w29
	max_s.h	$w5,$w31,$w5
	move.v	$w8,$w18
	max_s.h	$w6,$w13,$w6
	insve.d	$w8[1],$w17[0]
	hadd_s.w	$w6,$w6,$w6
	addv.h	$w11,$w8,$w24
	subv.h	$w10,$w8,$w24
	addv.h	$w17,$w11,$w7
	hadd_s.w	$w5,$w5,$w5
	addv.h	$w29,$w17,$w0
	subv.h	$w7,$w11,$w7
	subv.h	$w0,$w17,$w0
	addv.h	$w11,$w10,$w22
	subv.h	$w10,$w10,$w22
	addv.h	$w24,$w11,$w4
	addv.h	$w22,$w7,$w30
	addv.h	$w17,$w10,$w23
	subv.h	$w7,$w7,$w30
	subv.h	$w10,$w10,$w23
	pckod.h	$w30,$w0,$w29
	pckod.h	$w8,$w10,$w17
	pckev.h	$w0,$w0,$w29
	pckev.h	$w10,$w10,$w17
	pckod.h	$w29,$w7,$w22
	subv.h	$w11,$w11,$w4
	pckev.h	$w7,$w7,$w22
	pckod.h	$w4,$w11,$w24
	asub_s.h	$w22,$w8,$w10
	pckev.h	$w11,$w11,$w24
	asub_s.h	$w17,$w29,$w7
	asub_s.h	$w24,$w30,$w0
	asub_s.h	$w23,$w4,$w11
	addv.h	$w0,$w30,$w0
	addv.h	$w4,$w4,$w11
	vabs.h	$w0,$w0
	ilvod.h	$w11,$w3,$w26
	ilvod.h	$w12,$w0,$w24
	addv.h	$w7,$w29,$w7
	vabs.h	$w4,$w4
	ilvod.h	$w29,$w1,$w28
	ilvod.h	$w30,$w4,$w23
	vabs.h	$w7,$w7
	addv.h	$w8,$w8,$w10
	ilvev.h	$w1,$w1,$w28
	ilvod.h	$w10,$w7,$w17
	vabs.h	$w8,$w8
	ilvev.h	$w3,$w3,$w26
	ilvev.h	$w0,$w0,$w24
	ilvev.h	$w4,$w4,$w23
	ilvev.h	$w17,$w7,$w17
	max_s.h	$w1,$w29,$w1
	ilvod.h	$w7,$w8,$w22
	max_s.h	$w4,$w30,$w4
	ilvev.h	$w8,$w8,$w22
	hadd_s.w	$w29,$w1,$w1
	max_s.h	$w3,$w11,$w3
	addv.w	$w1,$w29,$w6
	max_s.h	$w0,$w12,$w0
	max_s.h	$w17,$w10,$w17
	max_s.h	$w8,$w7,$w8
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w0,$w0,$w0
	hadd_s.w	$w4,$w4,$w4
	hadd_s.w	$w17,$w17,$w17
	hadd_s.w	$w8,$w8,$w8
	addv.w	$w3,$w3,$w5
	addv.w	$w0,$w0,$w4
	addv.w	$w17,$w17,$w8
	addv.w	$w1,$w1,$w3
	addv.w	$w0,$w0,$w17
	hadd_s.d	$w1,$w1,$w1
	hadd_s.d	$w0,$w0,$w0
	copy_s.w	$2,$w1[0]
	copy_s.w	$4,$w1[2]
	copy_s.w	$5,$w0[0]
	copy_s.w	$3,$w0[2]
	addu	$2,$2,$4
	addu	$3,$5,$3
	addiu	$2,$2,1
	ld.h	$w0,48($sp)
	ld.h	$w29,80($sp)
	addiu	$3,$3,1
	sra	$2,$2,1
	ld.h	$w30,96($sp)
	ld.h	$w1,0($sp)
	sra	$3,$3,1
	ld.h	$w23,64($sp)
	ld.h	$w22,32($sp)
	addv.h	$w2,$w2,$w21
	subu	$3,$2,$3
	addv.h	$w15,$w15,$w0
	addv.h	$w16,$w16,$w20
	addv.h	$w0,$w23,$w29
	addv.h	$w16,$w2,$w16
	addv.h	$w9,$w9,$w19
	addv.h	$w2,$w30,$w1
	addv.h	$w9,$w9,$w15
	ld.h	$w1,16($sp)
	addv.h	$w16,$w16,$w9
	addv.h	$w1,$w1,$w22
	hadd_s.w	$w16,$w16,$w16
	addv.h	$w14,$w14,$w18
	hadd_s.d	$w16,$w16,$w16
	addv.h	$w0,$w0,$w2
	srli.w	$w16,$w16,2
	addv.h	$w14,$w1,$w14
	addv.h	$w14,$w0,$w14
	hadd_s.w	$w14,$w14,$w14
	hadd_s.d	$w14,$w14,$w14
	srli.w	$w14,$w14,2
	subv.w	$w16,$w16,$w14
	copy_s.w	$2,$w16[0]
	subu	$2,$3,$2
	sra	$3,$2,31
	ldc1	$f31,168($sp)
	xor	$2,$3,$2
	ldc1	$f30,160($sp)
	ldc1	$f29,152($sp)
	subu	$2,$2,$3
	ldc1	$f28,144($sp)
	ldc1	$f27,136($sp)
	ldc1	$f26,128($sp)
	ldc1	$f25,120($sp)
	ldc1	$f24,112($sp)
	jr	$31
	daddiu	$sp,$sp,176

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114psyCost_pp_8x8EPKhlS1_l
	.size	_ZN12_GLOBAL__N_114psyCost_pp_8x8EPKhlS1_l, .-_ZN12_GLOBAL__N_114psyCost_pp_8x8EPKhlS1_l
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_114psyCost_pp_4x4EPKhlS1_l
	.type	_ZN12_GLOBAL__N_114psyCost_pp_4x4EPKhlS1_l, @function
_ZN12_GLOBAL__N_114psyCost_pp_4x4EPKhlS1_l:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$9,$4,$5
	daddu	$8,$6,$7
	vblw	$w4,0($4)
	vblw	$w3,0($6)
	daddu	$3,$9,$5
	daddu	$2,$8,$7
	vblw	$w1,0($9)
	vblw	$w0,0($8)
	daddu	$5,$3,$5
	daddu	$7,$2,$7
	insve.w	$w4[1],$w1[0]
	insve.w	$w3[1],$w0[0]
	vblw	$w2,0($3)
	hadd_u.h	$w5,$w3,$w3
	hadd_u.h	$w0,$w4,$w4
	vblw	$w6,0($5)
	vblw	$w1,0($2)
	insve.w	$w2[1],$w6[0]
	hsub_u.h	$w4,$w4,$w4
	hadd_u.h	$w9,$w2,$w2
	ilvr.w	$w4,$w4,$w0
	vblw	$w6,0($7)
	addv.h	$w0,$w0,$w9
	insve.w	$w1[1],$w6[0]
	hsub_u.h	$w2,$w2,$w2
	hadd_u.h	$w8,$w1,$w1
	ilvr.w	$w2,$w2,$w9
	hsub_u.h	$w3,$w3,$w3
	addv.h	$w6,$w4,$w2
	ilvr.w	$w3,$w3,$w5
	subv.h	$w2,$w2,$w4
	hsub_u.h	$w1,$w1,$w1
	move.v	$w4,$w6
	ilvr.w	$w1,$w1,$w8
	insve.d	$w4[1],$w2[0]
	hadd_s.w	$w0,$w0,$w0
	move.v	$w10,$w4
	ilvl.d	$w2,$w2,$w6
	addv.h	$w4,$w3,$w1
	addv.h	$w7,$w10,$w2
	subv.h	$w1,$w1,$w3
	subv.h	$w2,$w2,$w10
	move.v	$w3,$w4
	hadd_s.d	$w0,$w0,$w0
	insve.d	$w3[1],$w1[0]
	srli.w	$w0,$w0,2
	ilvl.d	$w1,$w1,$w4
	addv.h	$w6,$w3,$w1
	subv.h	$w4,$w1,$w3
	ilvod.h	$w1,$w2,$w7
	addv.h	$w3,$w5,$w8
	ilvev.h	$w7,$w2,$w7
	hadd_s.w	$w3,$w3,$w3
	ilvod.h	$w2,$w4,$w6
	vabs.h	$w7,$w7
	ilvev.h	$w4,$w4,$w6
	hadd_s.d	$w3,$w3,$w3
	vabs.h	$w4,$w4
	srli.w	$w3,$w3,2
	vabs.h	$w1,$w1
	vabs.h	$w2,$w2
	max_s.h	$w1,$w1,$w7
	max_s.h	$w2,$w2,$w4
	hadd_s.w	$w1,$w1,$w1
	hadd_s.w	$w2,$w2,$w2
	subv.w	$w0,$w1,$w0
	subv.w	$w3,$w2,$w3
	subv.w	$w1,$w1,$w2
	subv.w	$w0,$w0,$w3
	copy_s.w	$2,$w1[1]
	copy_s.w	$3,$w0[0]
	addu	$3,$3,$2
	copy_s.w	$4,$w1[2]
	addu	$3,$3,$4
	copy_s.w	$2,$w1[3]
	addu	$3,$3,$2
	sra	$2,$3,31
	xor	$3,$2,$3
	jr	$31
	subu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_114psyCost_pp_4x4EPKhlS1_l
	.size	_ZN12_GLOBAL__N_114psyCost_pp_4x4EPKhlS1_l, .-_ZN12_GLOBAL__N_114psyCost_pp_4x4EPKhlS1_l
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
.L1032:
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
	bne	$11,$0,.L1032
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
.L1037:
	daddiu	$15,$14,12
	move	$12,$18
	move	$11,$14
.L1036:
	move	$6,$12
	move	$4,$11
	move	$7,$24
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$16

	addu	$2,$2,$13
	daddiu	$11,$11,4
	daddiu	$12,$12,4
	bne	$11,$15,.L1036
	move	$13,$2

	addiu	$17,$17,-1
	daddu	$14,$14,$20
	bne	$17,$0,.L1037
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
.L1044:
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
	bne	$14,$0,.L1044
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
.L1048:
	move	$6,$12
	move	$4,$11
	move	$7,$15
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$24

	addu	$2,$2,$13
	daddiu	$11,$11,4
	daddiu	$12,$12,4
	bne	$11,$14,.L1048
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
.L1053:
	daddiu	$14,$16,16
	move	$12,$18
	move	$11,$16
.L1052:
	move	$6,$12
	move	$4,$11
	move	$7,$15
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$24

	addu	$2,$2,$13
	daddiu	$11,$11,4
	daddiu	$12,$12,4
	bne	$11,$14,.L1052
	move	$13,$2

	addiu	$17,$17,-1
	daddu	$16,$16,$20
	bne	$17,$0,.L1053
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
.L1058:
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
	bne	$11,$0,.L1058
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
.L1063:
	daddiu	$15,$14,12
	move	$12,$18
	move	$11,$14
.L1062:
	move	$6,$12
	move	$4,$11
	move	$7,$24
	.reloc	1f,R_MIPS_JALR,_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l
1:	jalr	$25
	move	$5,$16

	addu	$2,$2,$13
	daddiu	$11,$11,4
	daddiu	$12,$12,4
	bne	$11,$15,.L1062
	move	$13,$2

	addiu	$17,$17,-1
	daddu	$14,$14,$20
	bne	$17,$0,.L1063
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
	.ent	_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl
	.type	_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl, @function
_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddu	$2,$4,$5
	vbld	$w0,0($4)
	vextb_u.h	$w0,$w0
	daddu	$4,$2,$5
	vbld	$w3,0($2)
	vextb_u.h	$w3,$w3
	dotp_u.w	$w4,$w3,$w3
	dlsa	$6,$5,$4,1
	daddu	$3,$4,$5
	dpadd_u.w	$w4,$w0,$w0
	move.v	$w5,$w4
	daddu	$2,$6,$5
	vbld	$w4,0($3)
	vbld	$w6,0($4)
	vbld	$w8,0($6)
	daddu	$3,$2,$5
	vextb_u.h	$w6,$w6
	vextb_u.h	$w8,$w8
	vbld	$w2,0($2)
	daddu	$5,$3,$5
	vbld	$w7,0($3)
	vextb_u.h	$w4,$w4
	vextb_u.h	$w7,$w7
	vextb_u.h	$w2,$w2
	addv.h	$w0,$w0,$w8
	vbld	$w1,0($5)
	addv.h	$w3,$w3,$w2
	vextb_u.h	$w1,$w1
	addv.h	$w9,$w6,$w7
	addv.h	$w10,$w4,$w1
	hadd_u.w	$w3,$w3,$w3
	hadd_u.w	$w10,$w10,$w10
	dotp_u.w	$w4,$w4,$w4
	dotp_u.w	$w2,$w2,$w2
	dpadd_u.w	$w4,$w6,$w6
	dpadd_u.w	$w2,$w8,$w8
	addv.w	$w4,$w5,$w4
	dotp_u.w	$w1,$w1,$w1
	hadd_u.w	$w0,$w0,$w0
	dpadd_u.w	$w1,$w7,$w7
	addv.w	$w0,$w0,$w3
	addv.w	$w1,$w2,$w1
	hadd_u.w	$w9,$w9,$w9
	addv.w	$w1,$w4,$w1
	addv.w	$w9,$w9,$w10
	hadd_s.d	$w1,$w1,$w1
	addv.w	$w0,$w0,$w9
	slli.d	$w1,$w1,32
	hadd_s.d	$w0,$w0,$w0
	addv.d	$w0,$w0,$w1
	copy_s.d	$3,$w0[0]
	copy_s.d	$2,$w0[1]
	jr	$31
	daddu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl
	.size	_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl, .-_ZN12_GLOBAL__N_113pixel_var_8x8EPKhl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl
	.type	_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl, @function
_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl:
	.frame	$sp,64,$31		# vars= 0, regs= 0/7, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x7f000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	daddu	$2,$4,$5
	sdc1	$f30,56($sp)
	sdc1	$f29,48($sp)
	sdc1	$f28,40($sp)
	sdc1	$f27,32($sp)
	sdc1	$f26,24($sp)
	sdc1	$f25,16($sp)
	sdc1	$f24,8($sp)
	vbld	$w21,0($4)
	vbld	$w1,8($4)
	daddu	$4,$2,$5
	daddu	$3,$4,$5
	vbld	$w20,0($2)
	vbld	$w8,8($2)
	vbld	$w19,0($4)
	daddu	$2,$3,$5
	vbld	$w14,8($4)
	vbld	$w18,0($3)
	vbld	$w7,8($3)
	daddu	$4,$2,$5
	vbld	$w17,0($2)
	vbld	$w6,8($2)
	vextb_u.h	$w21,$w21
	daddu	$3,$4,$5
	vbld	$w16,0($4)
	vbld	$w5,8($4)
	vextb_u.h	$w20,$w20
	daddu	$2,$3,$5
	vbld	$w9,0($3)
	vbld	$w3,8($3)
	vextb_u.h	$w19,$w19
	daddu	$9,$2,$5
	vbld	$w4,0($2)
	vbld	$w2,8($2)
	vextb_u.h	$w18,$w18
	daddu	$8,$9,$5
	addv.h	$w12,$w20,$w18
	vextb_u.h	$w17,$w17
	vextb_u.h	$w16,$w16
	daddu	$7,$8,$5
	vextb_u.h	$w9,$w9
	vextb_u.h	$w4,$w4
	vextb_u.h	$w2,$w2
	daddu	$6,$7,$5
	addv.h	$w22,$w21,$w19
	addv.h	$w11,$w17,$w9
	addv.h	$w10,$w16,$w4
	daddu	$4,$6,$5
	vextb_u.h	$w1,$w1
	vextb_u.h	$w8,$w8
	vextb_u.h	$w14,$w14
	daddu	$3,$4,$5
	addv.h	$w0,$w1,$w14
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	daddu	$2,$3,$5
	addv.h	$w15,$w8,$w7
	vextb_u.h	$w5,$w5
	vextb_u.h	$w3,$w3
	daddu	$5,$2,$5
	addv.h	$w24,$w5,$w2
	addv.h	$w23,$w6,$w3
	dotp_u.w	$w13,$w2,$w2
	hadd_u.w	$w22,$w22,$w22
	hadd_u.w	$w2,$w12,$w12
	hadd_u.w	$w23,$w23,$w23
	hadd_u.w	$w12,$w15,$w15
	dpadd_u.w	$w13,$w4,$w4
	hadd_u.w	$w15,$w24,$w24
	addv.w	$w12,$w2,$w12
	dotp_u.w	$w1,$w1,$w1
	dotp_u.w	$w8,$w8,$w8
	dpadd_u.w	$w1,$w21,$w21
	dpadd_u.w	$w8,$w20,$w20
	vbld	$w21,0($7)
	addv.w	$w4,$w1,$w8
	vextb_u.h	$w21,$w21
	vbld	$w20,0($6)
	dotp_u.w	$w14,$w14,$w14
	vextb_u.h	$w20,$w20
	dpadd_u.w	$w14,$w19,$w19
	dotp_u.w	$w7,$w7,$w7
	dotp_u.w	$w6,$w6,$w6
	dpadd_u.w	$w7,$w18,$w18
	dpadd_u.w	$w6,$w17,$w17
	addv.w	$w14,$w14,$w7
	dotp_u.w	$w5,$w5,$w5
	vbld	$w7,8($9)
	dpadd_u.w	$w5,$w16,$w16
	vextb_u.h	$w7,$w7
	addv.w	$w5,$w6,$w5
	dotp_u.w	$w3,$w3,$w3
	vbld	$w6,8($8)
	dpadd_u.w	$w3,$w9,$w9
	vextb_u.h	$w6,$w6
	addv.w	$w13,$w3,$w13
	vbld	$w9,8($6)
	vbld	$w3,8($7)
	vextb_u.h	$w9,$w9
	vextb_u.h	$w3,$w3
	addv.h	$w28,$w6,$w9
	addv.h	$w29,$w7,$w3
	hadd_u.w	$w28,$w28,$w28
	hadd_u.w	$w29,$w29,$w29
	hadd_u.w	$w0,$w0,$w0
	hadd_u.w	$w11,$w11,$w11
	addv.w	$w0,$w22,$w0
	addv.w	$w11,$w11,$w23
	addv.w	$w12,$w0,$w12
	vbld	$w23,0($9)
	vbld	$w22,0($8)
	vextb_u.h	$w23,$w23
	vbld	$w19,0($4)
	vextb_u.h	$w22,$w22
	vbld	$w18,0($3)
	vbld	$w8,8($3)
	vbld	$w17,0($2)
	vbld	$w1,8($2)
	vbld	$w2,8($4)
	vextb_u.h	$w1,$w1
	vextb_u.h	$w19,$w19
	vextb_u.h	$w2,$w2
	vextb_u.h	$w18,$w18
	addv.h	$w27,$w2,$w1
	vextb_u.h	$w8,$w8
	vextb_u.h	$w17,$w17
	vbld	$w16,0($5)
	vbld	$w0,8($5)
	vextb_u.h	$w16,$w16
	vextb_u.h	$w0,$w0
	addv.h	$w24,$w18,$w16
	addv.h	$w26,$w8,$w0
	dotp_u.w	$w30,$w1,$w1
	hadd_u.w	$w27,$w27,$w27
	hadd_u.w	$w26,$w26,$w26
	dpadd_u.w	$w30,$w17,$w17
	hadd_u.w	$w10,$w10,$w10
	addv.h	$w25,$w22,$w20
	addv.w	$w10,$w10,$w15
	dotp_u.w	$w7,$w7,$w7
	addv.w	$w15,$w11,$w10
	dotp_u.w	$w6,$w6,$w6
	addv.h	$w11,$w23,$w21
	addv.h	$w10,$w19,$w17
	dotp_u.w	$w3,$w3,$w3
	dotp_u.w	$w9,$w9,$w9
	dotp_u.w	$w2,$w2,$w2
	dotp_u.w	$w8,$w8,$w8
	dotp_u.w	$w0,$w0,$w0
	hadd_u.w	$w11,$w11,$w11
	dpadd_u.w	$w0,$w16,$w16
	addv.w	$w11,$w11,$w29
	addv.w	$w16,$w30,$w0
	ldc1	$f29,48($sp)
	hadd_u.w	$w25,$w25,$w25
	ldc1	$f30,56($sp)
	addv.w	$w25,$w25,$w28
	hadd_u.w	$w10,$w10,$w10
	addv.w	$w0,$w11,$w25
	addv.w	$w10,$w10,$w27
	ldc1	$f28,40($sp)
	hadd_u.w	$w24,$w24,$w24
	dpadd_u.w	$w7,$w23,$w23
	addv.w	$w24,$w24,$w26
	ldc1	$f27,32($sp)
	addv.w	$w10,$w10,$w24
	dpadd_u.w	$w6,$w22,$w22
	ldc1	$f26,24($sp)
	dpadd_u.w	$w3,$w21,$w21
	dpadd_u.w	$w9,$w20,$w20
	dpadd_u.w	$w2,$w19,$w19
	ldc1	$f25,16($sp)
	dpadd_u.w	$w8,$w18,$w18
	addv.w	$w7,$w7,$w6
	addv.w	$w3,$w3,$w9
	ldc1	$f24,8($sp)
	addv.w	$w2,$w2,$w8
	addv.w	$w1,$w4,$w7
	addv.w	$w14,$w14,$w3
	addv.w	$w2,$w5,$w2
	addv.w	$w13,$w13,$w16
	addv.w	$w0,$w12,$w0
	addv.w	$w15,$w15,$w10
	addv.w	$w1,$w1,$w14
	addv.w	$w2,$w2,$w13
	addv.w	$w0,$w0,$w15
	addv.w	$w1,$w1,$w2
	hadd_s.d	$w0,$w0,$w0
	hadd_s.d	$w1,$w1,$w1
	slli.d	$w1,$w1,32
	daddiu	$sp,$sp,64
	addv.d	$w0,$w0,$w1
	copy_s.d	$3,$w0[0]
	copy_s.d	$2,$w0[1]
	jr	$31
	daddu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl
	.size	_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl, .-_ZN12_GLOBAL__N_115pixel_var_16x16EPKhl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll, @function
_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$9,$9,1
	vbld	$w2,0($7)
	daddu	$2,$6,$8
	vblw	$w3,0($6)
	daddu	$3,$7,$9
	daddu	$7,$4,$5
	vblw	$w1,0($2)
	vbld	$w0,0($3)
	daddu	$6,$2,$8
	daddu	$2,$3,$9
	daddu	$3,$7,$5
	vblw	$w4,0($6)
	daddu	$9,$2,$9
	vbld	$w5,0($2)
	daddu	$6,$6,$8
	daddu	$5,$3,$5
	insve.w	$w3[1],$w4[0]
	insve.d	$w2[1],$w5[0]
	vblw	$w6,0($6)
	vbld	$w4,0($9)
	vextb_u.h	$w3,$w3
	insve.w	$w1[1],$w6[0]
	insve.d	$w0[1],$w4[0]
	vextb_u.h	$w1,$w1
	addv.h	$w2,$w3,$w2
	addv.h	$w0,$w1,$w0
	vsrains_u.b	$w1,$w2,0
	vsrains_u.b	$w0,$w0,0
	vsw	$w1,0,0($4)
	vsw	$w0,0,0($7)
	vsw	$w1,1,0($3)
	jr	$31
	vsw	$w0,1,0($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll, .-_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll, @function
_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$10,$9,1
	daddu	$2,$6,$8
	ld.d	$w15,0($7)
	vbld	$w3,0($6)
	daddu	$3,$7,$10
	daddu	$14,$4,$5
	vbld	$w7,0($2)
	vextb_u.h	$w3,$w3
	daddu	$11,$3,$10
	daddu	$12,$14,$5
	ld.d	$w14,0($3)
	vextb_u.h	$w7,$w7
	daddu	$2,$2,$8
	dlsa	$9,$9,$11,2
	ld.d	$w13,0($11)
	addv.h	$w3,$w3,$w15
	dlsa	$3,$8,$2,1
	dlsa	$13,$5,$12,1
	ld.d	$w11,0($9)
	vbld	$w6,0($2)
	vbld	$w5,0($3)
	daddu	$7,$9,$10
	daddu	$3,$3,$8
	vsrains_u.b	$w3,$w3,0
	daddu	$9,$13,$5
	vbld	$w1,0($3)
	ld.d	$w10,0($7)
	daddu	$6,$3,$8
	daddu	$2,$2,$8
	daddu	$3,$7,$10
	vbld	$w4,0($6)
	vextb_u.h	$w6,$w6
	daddu	$7,$9,$5
	ld.d	$w9,0($3)
	vbld	$w0,0($2)
	daddu	$6,$6,$8
	daddu	$2,$12,$5
	daddu	$11,$11,$10
	vbld	$w2,0($6)
	vextb_u.h	$w5,$w5
	daddu	$3,$3,$10
	daddu	$5,$7,$5
	ld.d	$w12,0($11)
	vextb_u.h	$w1,$w1
	ld.d	$w8,0($3)
	addv.h	$w1,$w1,$w10
	vsd	$w3,0,0($4)
	vextb_u.h	$w4,$w4
	vextb_u.h	$w0,$w0
	vextb_u.h	$w2,$w2
	addv.h	$w7,$w7,$w14
	addv.h	$w6,$w6,$w13
	addv.h	$w0,$w0,$w12
	vsrains_u.b	$w3,$w6,0
	vsrains_u.b	$w0,$w0,0
	addv.h	$w5,$w5,$w11
	addv.h	$w4,$w4,$w9
	addv.h	$w2,$w2,$w8
	vsrains_u.b	$w7,$w7,0
	vsd	$w7,0,0($14)
	vsd	$w3,0,0($12)
	vsd	$w0,0,0($2)
	vsrains_u.b	$w3,$w5,0
	vsrains_u.b	$w0,$w1,0
	vsd	$w3,0,0($13)
	vsrains_u.b	$w1,$w4,0
	vsd	$w0,0,0($9)
	vsrains_u.b	$w0,$w2,0
	vsd	$w1,0,0($7)
	jr	$31
	vsd	$w0,0,0($5)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll, .-_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll, @function
_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll:
	.frame	$sp,112,$31		# vars= 16, regs= 10/1, args= 0, gp= 0
	.mask	0x50ff0000,-24
	.fmask	0x01000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	dsll	$13,$9,1
	daddu	$11,$4,$5
	sd	$18,32($sp)
	dsll	$18,$8,2
	dsll	$3,$5,2
	daddu	$15,$7,$13
	sd	$23,72($sp)
	li	$2,2			# 0x2
	daddu	$23,$11,$5
	sd	$17,24($sp)
	sd	$16,16($sp)
	daddiu	$17,$18,8
	dsll	$16,$9,3
	daddu	$24,$6,$8
	daddiu	$25,$16,16
	sd	$22,64($sp)
	sd	$21,56($sp)
	daddu	$10,$24,$8
	dsll	$21,$8,3
	sd	$20,48($sp)
	daddu	$14,$15,$13
	dsll	$20,$9,4
	sd	$19,40($sp)
	daddu	$22,$23,$5
	dsll	$19,$5,3
	sd	$2,0($sp)
	move	$5,$17
	daddiu	$2,$3,8
	sd	$fp,88($sp)
	move	$12,$18
	move	$17,$21
	move	$18,$20
	daddu	$fp,$10,$8
	sdc1	$f24,104($sp)
	move	$20,$2
	daddu	$13,$14,$13
	move	$2,$25
	move	$21,$5
	move	$25,$16
	move	$16,$3
.L1078:
	daddu	$5,$12,$24
	daddu	$3,$24,$21
	ld.h	$w24,0($7)
	vbld	$w17,0($6)
	vbld	$w7,0($5)
	daddu	$5,$12,$fp
	vbld	$w6,0($3)
	daddu	$3,$12,$10
	vbld	$w2,0($5)
	daddu	$5,$fp,$21
	daddu	$9,$12,$6
	vbld	$w5,0($3)
	vbld	$w0,0($5)
	daddu	$5,$25,$7
	daddu	$8,$6,$21
	vbld	$w16,8($6)
	ld.d	$w23,0($5)
	daddu	$5,$7,$2
	daddu	$3,$10,$21
	vbld	$w15,0($24)
	ld.d	$w22,0($5)
	daddu	$5,$25,$15
	vbld	$w14,8($24)
	vbld	$w13,0($10)
	ld.d	$w21,0($5)
	daddu	$5,$15,$2
	vbld	$w12,8($10)
	vbld	$w11,0($fp)
	ld.d	$w20,0($5)
	daddu	$5,$25,$14
	vbld	$w10,8($fp)
	vbld	$w9,0($9)
	ld.d	$w19,0($5)
	daddu	$5,$14,$2
	vbld	$w8,0($8)
	vbld	$w4,0($3)
	ld.d	$w18,0($5)
	daddu	$5,$25,$13
	vextb_u.h	$w17,$w17
	vextb_u.h	$w16,$w16
	ld.d	$w3,0($5)
	daddu	$5,$13,$2
	addv.h	$w17,$w17,$w24
	vextb_u.h	$w15,$w15
	ld.d	$w1,0($5)
	daddu	$5,$16,$4
	ld.h	$w24,16($7)
	vextb_u.h	$w14,$w14
	addv.h	$w16,$w16,$w24
	vextb_u.h	$w13,$w13
	ld.h	$w24,0($15)
	vextb_u.h	$w12,$w12
	addv.h	$w15,$w15,$w24
	vextb_u.h	$w11,$w11
	ld.h	$w24,16($15)
	vextb_u.h	$w10,$w10
	addv.h	$w14,$w14,$w24
	vextb_u.h	$w9,$w9
	ld.h	$w24,0($14)
	vextb_u.h	$w2,$w2
	addv.h	$w13,$w13,$w24
	addv.h	$w2,$w2,$w3
	ld.h	$w24,16($14)
	vsrains_u.b	$w3,$w17,0
	addv.h	$w12,$w12,$w24
	vextb_u.h	$w0,$w0
	ld.h	$w24,0($13)
	addv.h	$w0,$w0,$w1
	addv.h	$w11,$w11,$w24
	vsrains_u.b	$w1,$w16,0
	ld.h	$w24,16($13)
	addv.h	$w9,$w9,$w23
	vsd	$w3,0,0($4)
	addv.h	$w10,$w10,$w24
	vsd	$w1,0,8($4)
	vsrains_u.b	$w3,$w15,0
	vsrains_u.b	$w1,$w14,0
	vsd	$w3,0,0($11)
	vsd	$w1,0,8($11)
	vsrains_u.b	$w3,$w13,0
	vsrains_u.b	$w1,$w12,0
	vsd	$w3,0,0($23)
	vsd	$w1,0,8($23)
	vsrains_u.b	$w3,$w11,0
	vsrains_u.b	$w1,$w10,0
	vsd	$w3,0,0($22)
	vsd	$w1,0,8($22)
	vsrains_u.b	$w1,$w9,0
	vsd	$w1,0,0($5)
	daddu	$5,$4,$20
	daddu	$9,$16,$11
	vextb_u.h	$w8,$w8
	addv.h	$w8,$w8,$w22
	vsrains_u.b	$w3,$w8,0
	vsd	$w3,0,0($5)
	daddu	$5,$11,$20
	daddu	$8,$16,$23
	vextb_u.h	$w7,$w7
	vextb_u.h	$w6,$w6
	addv.h	$w7,$w7,$w21
	addv.h	$w6,$w6,$w20
	vsrains_u.b	$w1,$w7,0
	vsrains_u.b	$w3,$w6,0
	vsd	$w1,0,0($9)
	vsd	$w3,0,0($5)
	daddu	$5,$23,$20
	daddu	$3,$16,$22
	vextb_u.h	$w5,$w5
	vextb_u.h	$w4,$w4
	addv.h	$w5,$w5,$w19
	addv.h	$w4,$w4,$w18
	vsrains_u.b	$w1,$w5,0
	vsrains_u.b	$w3,$w4,0
	vsd	$w1,0,0($8)
	vsd	$w3,0,0($5)
	daddu	$5,$22,$20
	vsrains_u.b	$w1,$w2,0
	vsrains_u.b	$w0,$w0,0
	vsd	$w1,0,0($3)
	vsd	$w0,0,0($5)
	ld	$3,0($sp)
	li	$5,1			# 0x1
	daddu	$6,$6,$17
	daddu	$24,$24,$17
	daddu	$10,$10,$17
	daddu	$fp,$fp,$17
	daddu	$7,$7,$18
	daddu	$15,$15,$18
	daddu	$14,$14,$18
	daddu	$13,$13,$18
	daddu	$4,$4,$19
	daddu	$11,$11,$19
	daddu	$23,$23,$19
	bne	$3,$5,.L1079
	daddu	$22,$22,$19

	ld	$fp,88($sp)
	ldc1	$f24,104($sp)
	ld	$23,72($sp)
	ld	$22,64($sp)
	ld	$21,56($sp)
	ld	$20,48($sp)
	ld	$19,40($sp)
	ld	$18,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.align	3
.L1079:
	li	$3,1			# 0x1
	b	.L1078
	sd	$3,0($sp)

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll, .-_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll
	.type	_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll, @function
_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll:
	.frame	$sp,32,$31		# vars= 0, regs= 1/1, args= 0, gp= 0
	.mask	0x10000000,-24
	.fmask	0x01000000,-8
	.set	noreorder
	.set	nomacro
	dsll	$2,$9,1
	daddu	$14,$6,$8
	daddu	$13,$7,$2
	daddu	$12,$4,$5
	daddiu	$sp,$sp,-32
	daddu	$11,$14,$8
	daddu	$3,$12,$5
	daddu	$10,$13,$2
	sdc1	$f24,24($sp)
	daddu	$24,$11,$8
	daddu	$15,$3,$5
	daddu	$2,$10,$2
	dsll	$8,$8,2
	dsll	$9,$9,3
	dsll	$5,$5,2
	li	$25,8			# 0x8
	.align	3
.L1082:
	addiu	$25,$25,-1
	ld.h	$w24,0($7)
	vbld	$w15,0($6)
	vbld	$w14,8($6)
	vbld	$w13,16($6)
	vbld	$w12,24($6)
	vbld	$w11,0($14)
	vbld	$w10,8($14)
	vbld	$w9,16($14)
	vbld	$w8,24($14)
	vbld	$w7,0($11)
	vbld	$w6,8($11)
	vbld	$w5,16($11)
	vbld	$w4,24($11)
	vbld	$w3,0($24)
	vbld	$w2,8($24)
	vbld	$w1,16($24)
	vbld	$w0,24($24)
	ld.d	$w23,0($10)
	ld.d	$w22,16($10)
	ld.d	$w21,32($10)
	ld.d	$w20,48($10)
	ld.d	$w19,0($2)
	ld.d	$w18,16($2)
	ld.d	$w17,32($2)
	ld.d	$w16,48($2)
	vextb_u.h	$w15,$w15
	vextb_u.h	$w14,$w14
	addv.h	$w15,$w15,$w24
	vextb_u.h	$w13,$w13
	ld.h	$w24,16($7)
	vextb_u.h	$w12,$w12
	addv.h	$w14,$w14,$w24
	vextb_u.h	$w11,$w11
	ld.h	$w24,32($7)
	vextb_u.h	$w10,$w10
	addv.h	$w13,$w13,$w24
	vextb_u.h	$w9,$w9
	ld.h	$w24,48($7)
	vextb_u.h	$w8,$w8
	addv.h	$w12,$w12,$w24
	vextb_u.h	$w7,$w7
	ld.h	$w24,0($13)
	vextb_u.h	$w6,$w6
	addv.h	$w11,$w11,$w24
	vextb_u.h	$w5,$w5
	ld.h	$w24,16($13)
	vextb_u.h	$w4,$w4
	addv.h	$w10,$w10,$w24
	vextb_u.h	$w3,$w3
	ld.h	$w24,32($13)
	vextb_u.h	$w2,$w2
	addv.h	$w9,$w9,$w24
	vextb_u.h	$w1,$w1
	ld.h	$w24,48($13)
	vextb_u.h	$w0,$w0
	addv.h	$w8,$w8,$w24
	addv.h	$w7,$w7,$w23
	addv.h	$w6,$w6,$w22
	addv.h	$w5,$w5,$w21
	addv.h	$w4,$w4,$w20
	addv.h	$w3,$w3,$w19
	addv.h	$w2,$w2,$w18
	addv.h	$w1,$w1,$w17
	addv.h	$w0,$w0,$w16
	vsrains_u.b	$w15,$w15,0
	vsrains_u.b	$w14,$w14,0
	vsd	$w15,0,0($4)
	vsrains_u.b	$w13,$w13,0
	vsd	$w14,0,8($4)
	vsd	$w13,0,16($4)
	vsrains_u.b	$w12,$w12,0
	vsrains_u.b	$w11,$w11,0
	vsd	$w12,0,24($4)
	vsrains_u.b	$w10,$w10,0
	vsd	$w11,0,0($12)
	vsd	$w10,0,8($12)
	vsrains_u.b	$w9,$w9,0
	vsrains_u.b	$w8,$w8,0
	vsd	$w9,0,16($12)
	vsd	$w8,0,24($12)
	vsrains_u.b	$w7,$w7,0
	vsrains_u.b	$w6,$w6,0
	vsd	$w7,0,0($3)
	vsd	$w6,0,8($3)
	vsrains_u.b	$w5,$w5,0
	vsrains_u.b	$w4,$w4,0
	vsd	$w5,0,16($3)
	vsd	$w4,0,24($3)
	vsrains_u.b	$w3,$w3,0
	vsrains_u.b	$w2,$w2,0
	vsrains_u.b	$w1,$w1,0
	vsrains_u.b	$w0,$w0,0
	vsd	$w3,0,0($15)
	vsd	$w2,0,8($15)
	vsd	$w1,0,16($15)
	vsd	$w0,0,24($15)
	daddu	$6,$6,$8
	daddu	$14,$14,$8
	daddu	$11,$11,$8
	daddu	$24,$24,$8
	daddu	$7,$7,$9
	daddu	$13,$13,$9
	daddu	$10,$10,$9
	daddu	$2,$2,$9
	daddu	$4,$4,$5
	daddu	$12,$12,$5
	daddu	$3,$3,$5
	bne	$25,$0,.L1082
	daddu	$15,$15,$5

	ldc1	$f24,24($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll
	.size	_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll, .-_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll
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
.L1094:
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
	bne	$24,$0,.L1094
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
.L1098:
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
	bne	$2,$0,.L1098
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
.L1102:
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
	bne	$14,$0,.L1102
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
.L1112:
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
	bne	$4,$16,.L1112
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
.L1116:
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
	bne	$4,$24,.L1116
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
.L1120:
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
	bne	$4,$2,.L1120
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
.L1124:
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
	bne	$4,$17,.L1124
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
.L1128:
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
	bne	$4,$2,.L1128
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
.L1132:
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
	bne	$4,$24,.L1132
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
.L1136:
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
	bne	$2,$0,.L1136
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
.L1142:
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
	bne	$2,$0,.L1142
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
.L1149:
	daddiu	$15,$4,48
	move	$13,$6
	move	$12,$4
	.align	3
.L1148:
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
	bne	$12,$15,.L1148
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1149
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
.L1155:
	daddiu	$15,$4,64
	move	$13,$6
	move	$12,$4
	.align	3
.L1154:
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
	bne	$12,$15,.L1154
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1155
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
.L1161:
	daddiu	$15,$4,32
	move	$13,$6
	move	$12,$4
.L1160:
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
	bne	$12,$15,.L1160
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1161
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
.L1167:
	daddiu	$15,$4,64
	move	$13,$6
	move	$12,$4
	.align	3
.L1166:
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
	bne	$12,$15,.L1166
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1167
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
.L1173:
	daddiu	$15,$4,24
	move	$13,$6
	move	$12,$4
.L1172:
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
	bne	$12,$15,.L1172
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1173
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
.L1179:
	daddiu	$15,$4,32
	move	$13,$6
	move	$12,$4
.L1178:
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
	bne	$12,$15,.L1178
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1179
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
.L1185:
	daddiu	$24,$4,16
	move	$13,$6
	move	$12,$4
.L1184:
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
	bne	$12,$24,.L1184
	move	$14,$2

	addiu	$15,$15,-1
	daddu	$4,$4,$16
	bne	$15,$0,.L1185
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
.L1191:
	daddiu	$15,$4,64
	move	$13,$6
	move	$12,$4
	.align	3
.L1190:
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
	bne	$12,$15,.L1190
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1191
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
.L1197:
	daddiu	$15,$4,24
	move	$13,$6
	move	$12,$4
.L1196:
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
	bne	$12,$15,.L1196
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1197
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
.L1203:
	daddiu	$15,$4,32
	move	$13,$6
	move	$12,$4
.L1202:
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
	bne	$12,$15,.L1202
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1203
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
.L1209:
	move	$8,$4
	daddiu	$11,$4,8
	move	$10,$6
	daddiu	$9,$6,8
	daddiu	$25,$4,64
.L1208:
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
	bne	$8,$25,.L1208
	move	$24,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$18
	bne	$16,$0,.L1209
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
.L1214:
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
	bne	$8,$0,.L1214
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
.L1219:
	daddiu	$15,$4,32
	move	$13,$6
	move	$12,$4
.L1218:
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
	bne	$12,$15,.L1218
	move	$14,$2

	addiu	$16,$16,-1
	daddu	$4,$4,$17
	bne	$16,$0,.L1219
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
.L1225:
	daddiu	$24,$4,16
	move	$13,$6
	move	$12,$4
.L1224:
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
	bne	$12,$24,.L1224
	move	$14,$2

	addiu	$15,$15,-1
	daddu	$4,$4,$16
	bne	$15,$0,.L1225
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
.L1231:
	daddiu	$24,$4,16
	move	$13,$6
	move	$12,$4
.L1230:
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
	bne	$12,$24,.L1230
	move	$14,$2

	addiu	$15,$15,-1
	daddu	$4,$4,$16
	bne	$15,$0,.L1231
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
	.ent	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l
	.type	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l, @function
_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x101f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	li	$24,4			# 0x4
	move	$14,$0
	sd	$16,0($sp)
	dsll	$16,$5,3
	dsll	$25,$7,3
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
.L1237:
	move	$12,$4
	move	$13,$6
	daddiu	$15,$4,32
.L1236:
	daddu	$8,$5,$12
	daddu	$2,$7,$13
	vbld	$w9,0($12)
	vbld	$w8,0($13)
	daddu	$3,$8,$5
	daddu	$17,$7,$2
	vbld	$w7,0($8)
	vbld	$w4,0($2)
	daddu	$9,$5,$3
	daddu	$11,$7,$17
	vbld	$w6,0($3)
	hadd_u.h	$w15,$w8,$w8
	daddu	$20,$9,$5
	daddu	$8,$7,$11
	vbld	$w5,0($9)
	hadd_u.h	$w10,$w6,$w6
	daddu	$3,$7,$8
	daddu	$10,$5,$20
	hadd_u.h	$w14,$w4,$w4
	vbld	$w3,0($17)
	daddu	$2,$7,$3
	daddu	$9,$5,$10
	hadd_u.h	$w13,$w3,$w3
	vbld	$w1,0($11)
	daddu	$18,$7,$2
	daddu	$19,$5,$9
	hadd_u.h	$w12,$w1,$w1
	hadd_u.h	$w11,$w9,$w9
	hadd_u.h	$w2,$w7,$w7
	hadd_u.h	$w0,$w5,$w5
	hsub_u.h	$w9,$w9,$w9
	hsub_u.h	$w7,$w7,$w7
	insve.d	$w11[1],$w9[0]
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w8,$w8,$w8
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w1,$w1,$w1
	insve.d	$w2[1],$w7[0]
	insve.d	$w0[1],$w5[0]
	move.v	$w7,$w2
	move.v	$w5,$w0
	move.v	$w2,$w10
	move.v	$w0,$w15
	insve.d	$w2[1],$w6[0]
	insve.d	$w0[1],$w8[0]
	move.v	$w6,$w2
	subv.h	$w8,$w11,$w0
	move.v	$w2,$w14
	move.v	$w0,$w13
	insve.d	$w2[1],$w4[0]
	insve.d	$w0[1],$w3[0]
	subv.h	$w2,$w7,$w2
	subv.h	$w4,$w6,$w0
	addv.h	$w7,$w2,$w8
	subv.h	$w3,$w2,$w8
	move.v	$w0,$w12
	vbld	$w8,0($20)
	insve.d	$w0[1],$w1[0]
	vbld	$w6,0($9)
	subv.h	$w0,$w5,$w0
	vbld	$w10,0($19)
	addv.h	$w11,$w0,$w4
	vbld	$w5,0($8)
	subv.h	$w0,$w0,$w4
	addv.h	$w13,$w11,$w7
	subv.h	$w2,$w0,$w3
	addv.h	$w12,$w0,$w3
	subv.h	$w11,$w11,$w7
	vbld	$w4,0($3)
	vbld	$w3,0($2)
	vbld	$w7,0($10)
	vbld	$w9,0($18)
	hadd_u.h	$w16,$w8,$w8
	hadd_u.h	$w14,$w7,$w7
	hadd_u.h	$w15,$w6,$w6
	hadd_u.h	$w1,$w10,$w10
	hadd_u.h	$w20,$w5,$w5
	hadd_u.h	$w19,$w4,$w4
	hadd_u.h	$w0,$w3,$w3
	hadd_u.h	$w17,$w9,$w9
	hsub_u.h	$w18,$w8,$w8
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w10,$w10,$w10
	hsub_u.h	$w5,$w5,$w5
	insve.d	$w1[1],$w10[0]
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w3,$w3,$w3
	hsub_u.h	$w9,$w9,$w9
	insve.d	$w0[1],$w3[0]
	insve.d	$w17[1],$w9[0]
	insve.d	$w16[1],$w18[0]
	move.v	$w8,$w14
	insve.d	$w8[1],$w7[0]
	move.v	$w7,$w8
	move.v	$w8,$w15
	insve.d	$w8[1],$w6[0]
	move.v	$w6,$w8
	move.v	$w8,$w20
	insve.d	$w8[1],$w5[0]
	move.v	$w5,$w19
	subv.h	$w8,$w16,$w8
	insve.d	$w5[1],$w4[0]
	subv.h	$w4,$w7,$w5
	subv.h	$w5,$w6,$w0
	addv.h	$w10,$w4,$w8
	subv.h	$w3,$w4,$w8
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
	daddiu	$12,$12,8
	addu	$3,$2,$3
	copy_s.w	$2,$w0[3]
	daddiu	$13,$13,8
	addu	$2,$3,$2
	addiu	$2,$2,1
	sra	$2,$2,1
	addu	$2,$2,$14
	bne	$12,$15,.L1236
	move	$14,$2

	addiu	$24,$24,-1
	daddu	$4,$4,$16
	bne	$24,$0,.L1237
	daddu	$6,$6,$25

	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l
	.size	_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l, .-_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l
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
.L1242:
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
	bne	$8,$0,.L1242
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
.L1247:
	daddiu	$15,$4,32
	move	$13,$6
	move	$12,$4
.L1246:
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
	bne	$12,$15,.L1246
	move	$14,$2

	daddu	$4,$4,$17
	bne	$16,$19,.L1248
	daddu	$6,$6,$18

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.align	3
.L1248:
	b	.L1247
	li	$16,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l
	.size	_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l, .-_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l
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
.L1253:
	daddiu	$24,$4,16
	move	$13,$6
	move	$12,$4
.L1252:
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
	bne	$12,$24,.L1252
	move	$14,$2

	addiu	$15,$15,-1
	daddu	$4,$4,$16
	bne	$15,$0,.L1253
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
.L1259:
	move	$8,$4
	daddiu	$11,$4,8
	move	$10,$6
	daddiu	$9,$6,8
	daddiu	$16,$4,32
.L1258:
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
	bne	$8,$16,.L1258
	move	$24,$2

	addiu	$25,$25,-1
	daddu	$4,$4,$18
	bne	$25,$0,.L1259
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
.L1265:
	daddiu	$15,$4,16
	move	$13,$6
	move	$12,$4
.L1264:
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
	bne	$12,$15,.L1264
	move	$14,$2

	daddu	$4,$4,$17
	bne	$16,$19,.L1266
	daddu	$6,$6,$18

	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.align	3
.L1266:
	b	.L1265
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
.L1270:
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
	bne	$8,$0,.L1270
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
	.ent	_ZN12_GLOBAL__N_116psyCost_pp_32x32EPKhlS1_l
	.type	_ZN12_GLOBAL__N_116psyCost_pp_32x32EPKhlS1_l, @function
_ZN12_GLOBAL__N_116psyCost_pp_32x32EPKhlS1_l:
	.frame	$sp,112,$31		# vars= 0, regs= 8/6, args= 0, gp= 0
	.mask	0x107f0000,-56
	.fmask	0x3f000000,-8
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	dsll	$24,$5,3
	dsll	$15,$7,3
	li	$14,4			# 0x4
	sd	$22,48($sp)
	move	$2,$0
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	sdc1	$f29,104($sp)
	sdc1	$f28,96($sp)
	sdc1	$f27,88($sp)
	sdc1	$f26,80($sp)
	sdc1	$f25,72($sp)
	sdc1	$f24,64($sp)
.L1275:
	move	$11,$4
	move	$12,$6
	daddiu	$13,$4,32
.L1274:
	daddu	$10,$5,$11
	daddu	$18,$7,$12
	vbld	$w3,0($11)
	vbld	$w23,0($12)
	daddu	$9,$10,$5
	daddu	$17,$7,$18
	vbld	$w8,0($10)
	hadd_u.h	$w1,$w3,$w3
	daddu	$8,$5,$9
	daddu	$16,$7,$17
	vbld	$w7,0($9)
	hadd_u.h	$w2,$w23,$w23
	daddu	$3,$8,$5
	daddu	$25,$7,$16
	hadd_u.h	$w20,$w8,$w8
	hadd_u.h	$w13,$w7,$w7
	daddu	$20,$5,$3
	daddu	$10,$7,$25
	vbld	$w6,0($8)
	vbld	$w5,0($3)
	daddu	$9,$7,$10
	daddu	$19,$5,$20
	hadd_u.h	$w0,$w6,$w6
	hadd_u.h	$w9,$w5,$w5
	daddu	$21,$7,$9
	daddu	$22,$5,$19
	vbld	$w14,0($20)
	vbld	$w4,0($19)
	hadd_u.h	$w19,$w14,$w14
	hadd_u.h	$w12,$w4,$w4
	vbld	$w10,0($22)
	vbld	$w26,0($21)
	hadd_u.h	$w18,$w10,$w10
	hsub_u.h	$w3,$w3,$w3
	move.v	$w11,$w1
	hsub_u.h	$w8,$w8,$w8
	insve.d	$w11[1],$w3[0]
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w6,$w6,$w6
	hsub_u.h	$w5,$w5,$w5
	hsub_u.h	$w4,$w4,$w4
	hsub_u.h	$w23,$w23,$w23
	move.v	$w3,$w20
	insve.d	$w3[1],$w8[0]
	move.v	$w16,$w3
	move.v	$w3,$w13
	subv.h	$w22,$w16,$w11
	insve.d	$w3[1],$w7[0]
	addv.h	$w7,$w16,$w11
	move.v	$w8,$w3
	move.v	$w3,$w0
	insve.d	$w3[1],$w6[0]
	hsub_u.h	$w6,$w14,$w14
	move.v	$w16,$w3
	move.v	$w3,$w9
	addv.h	$w21,$w16,$w8
	insve.d	$w3[1],$w5[0]
	addv.h	$w15,$w21,$w7
	subv.h	$w16,$w16,$w8
	subv.h	$w21,$w21,$w7
	addv.h	$w11,$w16,$w22
	move.v	$w5,$w19
	subv.h	$w16,$w16,$w22
	insve.d	$w5[1],$w6[0]
	vbld	$w6,0($18)
	move.v	$w7,$w5
	move.v	$w5,$w12
	addv.h	$w8,$w7,$w3
	insve.d	$w5[1],$w4[0]
	subv.h	$w7,$w7,$w3
	move.v	$w14,$w5
	move.v	$w3,$w18
	hsub_u.h	$w5,$w10,$w10
	insve.d	$w3[1],$w5[0]
	addv.h	$w4,$w3,$w14
	subv.h	$w3,$w3,$w14
	addv.h	$w17,$w4,$w8
	subv.h	$w4,$w4,$w8
	addv.h	$w14,$w17,$w15
	addv.h	$w8,$w3,$w7
	subv.h	$w17,$w17,$w15
	subv.h	$w3,$w3,$w7
	pckod.h	$w15,$w17,$w14
	addv.h	$w7,$w4,$w21
	addv.h	$w5,$w3,$w16
	pckev.h	$w14,$w17,$w14
	addv.h	$w10,$w8,$w11
	asub_s.h	$w24,$w15,$w14
	subv.h	$w8,$w8,$w11
	subv.h	$w4,$w4,$w21
	pckod.h	$w11,$w8,$w10
	subv.h	$w3,$w3,$w16
	pckev.h	$w10,$w8,$w10
	hadd_u.h	$w17,$w6,$w6
	pckod.h	$w8,$w4,$w7
	asub_s.h	$w22,$w11,$w10
	pckev.h	$w4,$w4,$w7
	addv.h	$w15,$w15,$w14
	pckod.h	$w7,$w3,$w5
	asub_s.h	$w21,$w8,$w4
	pckev.h	$w3,$w3,$w5
	vabs.h	$w14,$w15
	asub_s.h	$w16,$w7,$w3
	ilvod.h	$w5,$w14,$w24
	addv.h	$w11,$w11,$w10
	ilvev.h	$w14,$w14,$w24
	vabs.h	$w10,$w11
	addv.h	$w4,$w8,$w4
	addv.h	$w3,$w7,$w3
	ilvod.h	$w8,$w10,$w22
	vabs.h	$w4,$w4
	vabs.h	$w3,$w3
	ilvod.h	$w25,$w4,$w21
	ilvod.h	$w7,$w3,$w16
	ilvev.h	$w4,$w4,$w21
	ilvev.h	$w10,$w10,$w22
	ilvev.h	$w3,$w3,$w16
	max_s.h	$w5,$w5,$w14
	max_s.h	$w10,$w8,$w10
	hadd_u.h	$w14,$w26,$w26
	max_s.h	$w25,$w25,$w4
	max_s.h	$w3,$w7,$w3
	hadd_s.w	$w10,$w10,$w10
	hadd_s.w	$w3,$w3,$w3
	vbld	$w22,0($17)
	vbld	$w21,0($16)
	hadd_u.h	$w11,$w22,$w22
	hadd_u.h	$w16,$w21,$w21
	vbld	$w7,0($25)
	vbld	$w4,0($10)
	hadd_u.h	$w8,$w7,$w7
	hadd_u.h	$w15,$w4,$w4
	hsub_u.h	$w6,$w6,$w6
	move.v	$w24,$w2
	hsub_u.h	$w22,$w22,$w22
	insve.d	$w24[1],$w23[0]
	hsub_u.h	$w21,$w21,$w21
	hsub_u.h	$w7,$w7,$w7
	hsub_u.h	$w4,$w4,$w4
	hadd_s.w	$w5,$w5,$w5
	hadd_s.w	$w25,$w25,$w25
	addv.w	$w5,$w5,$w10
	addv.w	$w25,$w25,$w3
	move.v	$w23,$w17
	vbld	$w3,0($9)
	insve.d	$w23[1],$w6[0]
	hadd_u.h	$w10,$w3,$w3
	move.v	$w28,$w23
	hsub_u.h	$w3,$w3,$w3
	subv.h	$w28,$w28,$w24
	addv.h	$w23,$w23,$w24
	addv.w	$w5,$w5,$w25
	move.v	$w6,$w11
	hadd_s.d	$w5,$w5,$w5
	insve.d	$w6[1],$w22[0]
	copy_s.w	$8,$w5[2]
	move.v	$w22,$w16
	copy_s.w	$3,$w5[0]
	insve.d	$w22[1],$w21[0]
	addu	$3,$3,$8
	move.v	$w21,$w8
	insve.d	$w21[1],$w7[0]
	move.v	$w7,$w21
	addv.h	$w21,$w22,$w6
	subv.h	$w6,$w22,$w6
	addv.h	$w24,$w21,$w23
	subv.h	$w22,$w6,$w28
	subv.h	$w23,$w21,$w23
	addv.h	$w21,$w6,$w28
	move.v	$w6,$w15
	insve.d	$w6[1],$w4[0]
	move.v	$w4,$w10
	subv.h	$w27,$w6,$w7
	insve.d	$w4[1],$w3[0]
	move.v	$w3,$w14
	move.v	$w28,$w4
	addv.h	$w4,$w6,$w7
	hsub_u.h	$w7,$w26,$w26
	insve.d	$w3[1],$w7[0]
	move.v	$w6,$w3
	addv.h	$w3,$w3,$w28
	subv.h	$w6,$w6,$w28
	addv.h	$w25,$w3,$w4
	addv.h	$w26,$w6,$w27
	subv.h	$w3,$w3,$w4
	addv.h	$w28,$w26,$w21
	addv.h	$w7,$w3,$w23
	addv.h	$w4,$w25,$w24
	subv.h	$w26,$w26,$w21
	subv.h	$w3,$w3,$w23
	pckod.h	$w29,$w26,$w28
	pckev.h	$w23,$w26,$w28
	pckod.h	$w21,$w3,$w7
	subv.h	$w6,$w6,$w27
	pckev.h	$w3,$w3,$w7
	addv.h	$w27,$w6,$w22
	asub_s.h	$w7,$w29,$w23
	subv.h	$w24,$w25,$w24
	subv.h	$w6,$w6,$w22
	pckod.h	$w25,$w24,$w4
	pckod.h	$w22,$w6,$w27
	pckev.h	$w24,$w24,$w4
	pckev.h	$w6,$w6,$w27
	asub_s.h	$w28,$w25,$w24
	asub_s.h	$w27,$w21,$w3
	asub_s.h	$w26,$w22,$w6
	addv.h	$w21,$w21,$w3
	addv.h	$w6,$w22,$w6
	vabs.h	$w21,$w21
	vabs.h	$w6,$w6
	addv.h	$w24,$w25,$w24
	ilvod.h	$w22,$w6,$w26
	vabs.h	$w24,$w24
	addv.h	$w23,$w29,$w23
	ilvod.h	$w4,$w24,$w28
	vabs.h	$w23,$w23
	ilvev.h	$w24,$w24,$w28
	ilvod.h	$w3,$w23,$w7
	ilvev.h	$w6,$w6,$w26
	ilvev.h	$w23,$w23,$w7
	max_s.h	$w4,$w4,$w24
	ilvod.h	$w7,$w21,$w27
	max_s.h	$w3,$w3,$w23
	ilvev.h	$w21,$w21,$w27
	max_s.h	$w6,$w22,$w6
	max_s.h	$w7,$w7,$w21
	hadd_s.w	$w4,$w4,$w4
	hadd_s.w	$w3,$w3,$w3
	hadd_s.w	$w7,$w7,$w7
	hadd_s.w	$w6,$w6,$w6
	addv.w	$w3,$w4,$w3
	addv.w	$w7,$w7,$w6
	addv.w	$w3,$w3,$w7
	hadd_s.d	$w3,$w3,$w3
	copy_s.w	$9,$w3[0]
	copy_s.w	$8,$w3[2]
	addu	$8,$9,$8
	addiu	$3,$3,1
	addv.h	$w1,$w1,$w20
	addv.h	$w0,$w13,$w0
	addiu	$8,$8,1
	sra	$3,$3,1
	addv.h	$w0,$w1,$w0
	addv.h	$w9,$w9,$w19
	sra	$8,$8,1
	addv.h	$w12,$w12,$w18
	addv.h	$w2,$w2,$w17
	addv.h	$w12,$w9,$w12
	subu	$8,$3,$8
	addv.h	$w0,$w0,$w12
	addv.h	$w1,$w11,$w16
	hadd_s.w	$w0,$w0,$w0
	addv.h	$w8,$w8,$w15
	hadd_s.d	$w0,$w0,$w0
	addv.h	$w10,$w10,$w14
	srli.w	$w0,$w0,2
	addv.h	$w1,$w2,$w1
	addv.h	$w10,$w8,$w10
	addv.h	$w1,$w1,$w10
	hadd_s.w	$w1,$w1,$w1
	hadd_s.d	$w1,$w1,$w1
	srli.w	$w1,$w1,2
	subv.w	$w0,$w0,$w1
	copy_s.w	$3,$w0[0]
	subu	$3,$8,$3
	daddiu	$11,$11,8
	sra	$8,$3,31
	daddiu	$12,$12,8
	xor	$3,$8,$3
	subu	$3,$3,$8
	bne	$11,$13,.L1274
	addu	$2,$3,$2

	addiu	$14,$14,-1
	daddu	$4,$4,$24
	bne	$14,$0,.L1275
	daddu	$6,$6,$15

	ld	$22,48($sp)
	ldc1	$f29,104($sp)
	ld	$21,40($sp)
	ldc1	$f28,96($sp)
	ld	$20,32($sp)
	ldc1	$f27,88($sp)
	ld	$19,24($sp)
	ldc1	$f26,80($sp)
	ld	$18,16($sp)
	ldc1	$f25,72($sp)
	ld	$17,8($sp)
	ldc1	$f24,64($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	_ZN12_GLOBAL__N_116psyCost_pp_32x32EPKhlS1_l
	.size	_ZN12_GLOBAL__N_116psyCost_pp_32x32EPKhlS1_l, .-_ZN12_GLOBAL__N_116psyCost_pp_32x32EPKhlS1_l
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
.L1280:
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
	bne	$4,$15,.L1280
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
	.globl	_Z7LD_V6_HPKhPDv2_xS2_S2_S2_S2_S2_
	.set	nomips16
	.set	nomicromips
	.ent	_Z7LD_V6_HPKhPDv2_xS2_S2_S2_S2_S2_
	.type	_Z7LD_V6_HPKhPDv2_xS2_S2_S2_S2_S2_, @function
_Z7LD_V6_HPKhPDv2_xS2_S2_S2_S2_S2_:
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
	st.d	$w0,0($8)
	ld.d	$w0,64($4)
	st.d	$w0,0($9)
	ld.d	$w0,80($4)
	jr	$31
	st.d	$w0,0($10)

	.set	macro
	.set	reorder
	.end	_Z7LD_V6_HPKhPDv2_xS2_S2_S2_S2_S2_
	.size	_Z7LD_V6_HPKhPDv2_xS2_S2_S2_S2_S2_, .-_Z7LD_V6_HPKhPDv2_xS2_S2_S2_S2_S2_
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
	.globl	_Z2SWDv4_iPh
	.set	nomips16
	.set	nomicromips
	.ent	_Z2SWDv4_iPh
	.type	_Z2SWDv4_iPh, @function
_Z2SWDv4_iPh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	insert.d	$w0[0],$4
	insert.d	$w0[1],$5
	jr	$31
	vsw	$w0,0,0($6)

	.set	macro
	.set	reorder
	.end	_Z2SWDv4_iPh
	.size	_Z2SWDv4_iPh, .-_Z2SWDv4_iPh
	.align	2
	.align	3
	.globl	_Z3SW2Dv4_iS_Phl
	.set	nomips16
	.set	nomicromips
	.ent	_Z3SW2Dv4_iS_Phl
	.type	_Z3SW2Dv4_iS_Phl, @function
_Z3SW2Dv4_iS_Phl:
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
	vsw	$w1,0,0($8)
	jr	$31
	vsw	$w0,0,0($9)

	.set	macro
	.set	reorder
	.end	_Z3SW2Dv4_iS_Phl
	.size	_Z3SW2Dv4_iS_Phl, .-_Z3SW2Dv4_iS_Phl
	.align	2
	.align	3
	.globl	_Z3SW4Dv4_iS_S_S_Phl
	.set	nomips16
	.set	nomicromips
	.ent	_Z3SW4Dv4_iS_S_S_Phl
	.type	_Z3SW4Dv4_iS_S_S_Phl, @function
_Z3SW4Dv4_iS_S_S_Phl:
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
	vsw	$w3,0,0($3)
	daddu	$3,$4,$2
	vsw	$w2,0,0($4)
	daddu	$2,$3,$2
	vsw	$w1,0,0($3)
	jr	$31
	vsw	$w0,0,0($2)

	.set	macro
	.set	reorder
	.end	_Z3SW4Dv4_iS_S_S_Phl
	.size	_Z3SW4Dv4_iS_S_S_Phl, .-_Z3SW4Dv4_iS_S_S_Phl
	.align	2
	.align	3
	.globl	_Z4SW_1Dv4_iPh
	.set	nomips16
	.set	nomicromips
	.ent	_Z4SW_1Dv4_iPh
	.type	_Z4SW_1Dv4_iPh, @function
_Z4SW_1Dv4_iPh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	insert.d	$w0[0],$4
	insert.d	$w0[1],$5
	jr	$31
	vsw	$w0,1,0($6)

	.set	macro
	.set	reorder
	.end	_Z4SW_1Dv4_iPh
	.size	_Z4SW_1Dv4_iPh, .-_Z4SW_1Dv4_iPh
	.align	2
	.align	3
	.globl	_Z5SW2_1Dv4_iS_Phl
	.set	nomips16
	.set	nomicromips
	.ent	_Z5SW2_1Dv4_iS_Phl
	.type	_Z5SW2_1Dv4_iS_Phl, @function
_Z5SW2_1Dv4_iS_Phl:
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
	vsw	$w1,1,0($8)
	jr	$31
	vsw	$w0,1,0($9)

	.set	macro
	.set	reorder
	.end	_Z5SW2_1Dv4_iS_Phl
	.size	_Z5SW2_1Dv4_iS_Phl, .-_Z5SW2_1Dv4_iS_Phl
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
	.globl	_Z5SD2_HDv2_xS_Ph
	.set	nomips16
	.set	nomicromips
	.ent	_Z5SD2_HDv2_xS_Ph
	.type	_Z5SD2_HDv2_xS_Ph, @function
_Z5SD2_HDv2_xS_Ph:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	insert.d	$w1[0],$4
	insert.d	$w0[0],$6
	insert.d	$w1[1],$5
	insert.d	$w0[1],$7
	vsd	$w1,0,0($8)
	jr	$31
	vsd	$w0,0,8($8)

	.set	macro
	.set	reorder
	.end	_Z5SD2_HDv2_xS_Ph
	.size	_Z5SD2_HDv2_xS_Ph, .-_Z5SD2_HDv2_xS_Ph
	.align	2
	.align	3
	.globl	_Z5SD4_HDv2_xS_S_S_Ph
	.set	nomips16
	.set	nomicromips
	.ent	_Z5SD4_HDv2_xS_S_S_Ph
	.type	_Z5SD4_HDv2_xS_S_S_Ph, @function
_Z5SD4_HDv2_xS_S_S_Ph:
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
	vsd	$w3,0,0($2)
	vsd	$w2,0,8($2)
	vsd	$w1,0,16($2)
	jr	$31
	vsd	$w0,0,24($2)

	.set	macro
	.set	reorder
	.end	_Z5SD4_HDv2_xS_S_S_Ph
	.size	_Z5SD4_HDv2_xS_S_S_Ph, .-_Z5SD4_HDv2_xS_S_S_Ph
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
	.globl	_Z7ST_V6_HDv2_xS_S_S_S_S_Ph
	.set	nomips16
	.set	nomicromips
	.ent	_Z7ST_V6_HDv2_xS_S_S_S_S_Ph
	.type	_Z7ST_V6_HDv2_xS_S_S_S_S_Ph, @function
_Z7ST_V6_HDv2_xS_S_S_S_S_Ph:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,32($sp)
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
	st.d	$w0,48($2)
	ld.d	$w0,0($sp)
	st.d	$w0,64($2)
	ld.d	$w0,16($sp)
	jr	$31
	st.d	$w0,80($2)

	.set	macro
	.set	reorder
	.end	_Z7ST_V6_HDv2_xS_S_S_S_S_Ph
	.size	_Z7ST_V6_HDv2_xS_S_S_S_S_Ph, .-_Z7ST_V6_HDv2_xS_S_S_S_S_Ph
	.align	2
	.align	3
	.globl	_ZN4x26527setupLoongson_asmPrimitivesERNS_17EncoderPrimitivesE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26527setupLoongson_asmPrimitivesERNS_17EncoderPrimitivesE
	.type	_ZN4x26527setupLoongson_asmPrimitivesERNS_17EncoderPrimitivesE, @function
_ZN4x26527setupLoongson_asmPrimitivesERNS_17EncoderPrimitivesE:
	.frame	$sp,368,$31		# vars= 288, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-368
	sd	$28,352($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26527setupLoongson_asmPrimitivesERNS_17EncoderPrimitivesE)))
	daddu	$28,$28,$25
	sd	$fp,360($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26527setupLoongson_asmPrimitivesERNS_17EncoderPrimitivesE)))
	sd	$23,344($sp)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l)($28)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi12EEEvPhlPKhl)($28)
	sd	$22,336($sp)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi64EEEiPKhlS2_l)
	sd	$21,328($sp)
	sd	$fp,104($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi12EEEvPhlPKhl)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l)($28)
	sd	$2,0($sp)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi16EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi64EEEiPKhlS2_l)
	sd	$20,320($sp)
	sd	$fp,112($sp)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l)($28)
	daddiu	$3,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi16EEEvPhlPKhl)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl)($28)
	sd	$3,8($sp)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sse_pp_a_4x4EPKhlS1_l)
	ld	$3,%got_page(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)($28)
	sd	$fp,120($sp)
	daddiu	$5,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi4EEEvPhlPKhl)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l)($28)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi24EEEvPhlPKhl)($28)
	daddiu	$12,$3,%got_ofst(_ZN12_GLOBAL__N_1L8satd_8x4EPKhlS1_l)
	sd	$5,16($sp)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sse_pp_a_8x8EPKhlS1_l)
	ld	$5,%got_page(_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l)($28)
	sd	$fp,128($sp)
	daddiu	$6,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi24EEEvPhlPKhl)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l)($28)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi32EEEvPhlPKhl)($28)
	daddiu	$5,$5,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi12ELi16EEEiPKhlS2_l)
	sd	$19,312($sp)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114sse_pp_a_16x16EPKhlS1_l)
	sd	$18,304($sp)
	daddiu	$7,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi32EEEvPhlPKhl)
	sd	$fp,136($sp)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl)($28)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l)($28)
	sd	$17,296($sp)
	daddiu	$8,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi8EEEvPhlPKhl)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114sse_pp_a_32x32EPKhlS1_l)
	sd	$8,40($sp)
	sd	$fp,144($sp)
	ld	$8,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l)($28)
	daddiu	$9,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi64EEEvPhlPKhl)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll)($28)
	ld	$2,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl)($28)
	daddiu	$8,$8,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi24EEEiPKhlS2_l)
	sd	$16,288($sp)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110sub_ps_4x4EPslPKhS2_ll)
	sd	$8,80($sp)
	sd	$fp,152($sp)
	daddiu	$10,$2,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi64EEEvPhlPKhl)
	ld	$8,%got_page(_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l)($28)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll)($28)
	sd	$6,24($sp)
	daddiu	$8,$8,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi24ELi32EEEiPKhlS2_l)
	sd	$7,32($sp)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110sub_ps_8x8EPslPKhS2_ll)
	sd	$8,88($sp)
	sd	$fp,160($sp)
	ld	$8,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l)($28)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll)($28)
	sd	$9,48($sp)
	daddiu	$8,$8,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi8EEEiPKhlS2_l)
	sd	$10,56($sp)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sub_ps_16x16EPslPKhS2_ll)
	sd	$12,64($sp)
	sd	$5,72($sp)
	sd	$8,96($sp)
	sd	$fp,168($sp)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll)($28)
	ld	$23,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl)($28)
	ld	$19,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sub_ps_32x32EPslPKhS2_ll)
	ld	$17,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl)($28)
	sd	$fp,176($sp)
	daddiu	$23,$23,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi8EEEvPhlPKhl)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll)($28)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi4EEEvPhlPKhl)
	sd	$23,880($4)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi8EEEvPhlPKhl)
	sd	$19,752($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116pixel_add_ps_4x4EPhlPKhPKsll)
	ld	$22,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl)($28)
	sd	$fp,184($sp)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll)($28)
	ld	$20,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl)($28)
	daddiu	$22,$22,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi16EEEvPhlPKhl)
	ld	$16,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116pixel_add_ps_8x8EPhlPKhPKsll)
	ld	$21,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl)($28)
	sd	$fp,192($sp)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi16EEEvPhlPKhl)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl)($28)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi16EEEvPhlPKhl)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi32EEEvPhlPKhl)($28)
	daddiu	$21,$21,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi32EEEvPhlPKhl)
	ld	$25,%got_page(_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116blockcopy_ss_8x8EPslPKsl)
	ld	$24,%got_page(_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl)($28)
	sd	$fp,224($sp)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi32EEEvPhlPKhl)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll)($28)
	daddiu	$25,$25,%got_ofst(_ZN12_GLOBAL__N_116blockcopy_pp_4x4EPhlPKhl)
	ld	$15,%got_page(_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl)($28)
	daddiu	$24,$24,%got_ofst(_ZN12_GLOBAL__N_116blockcopy_pp_8x8EPhlPKhl)
	ld	$14,%got_page(_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_118pixel_add_ps_16x16EPhlPKhPKsll)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)($28)
	sd	$fp,200($sp)
	daddiu	$15,$15,%got_ofst(_ZN12_GLOBAL__N_118blockcopy_pp_16x16EPhlPKhl)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl)($28)
	daddiu	$14,$14,%got_ofst(_ZN12_GLOBAL__N_118blockcopy_pp_32x32EPhlPKhl)
	ld	$11,%got_page(_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L8satd_4x4EPKhlS1_l)
	ld	$3,%got_page(_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_116blockcopy_ss_4x4EPslPKsl)
	ld	$9,%got_page(_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l)($28)
	sd	$fp,216($sp)
	daddiu	$11,$11,%got_ofst(_ZN12_GLOBAL__N_19satd8_8x8EPKhlS1_l)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll)($28)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi4ELi8EEEiPKhlS2_l)
	ld	$6,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l)($28)
	daddiu	$9,$9,%got_ofst(_ZN12_GLOBAL__N_111satd8_16x16EPKhlS1_l)
	ld	$13,%got_page(_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_118pixel_add_ps_32x32EPhlPKhPKsll)
	ld	$10,%got_page(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)($28)
	sd	$fp,208($sp)
	daddiu	$6,$6,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi8EEEiPKhlS2_l)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl)($28)
	daddiu	$13,$13,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi8ELi16EEEiPKhlS2_l)
	ld	$7,%got_page(_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l)($28)
	daddiu	$10,$10,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi4ELi16EEEiPKhlS2_l)
	ld	$5,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_118blockcopy_ss_16x16EPslPKsl)
	ld	$12,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l)($28)
	sd	$fp,232($sp)
	daddiu	$7,$7,%got_ofst(_ZN12_GLOBAL__N_111satd8_32x32EPKhlS1_l)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl)($28)
	daddiu	$5,$5,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi16EEEiPKhlS2_l)
	daddiu	$12,$12,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi32EEEiPKhlS2_l)
	ld	$8,%got_page(_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_118blockcopy_ss_32x32EPslPKsl)
	sd	$fp,240($sp)
	daddiu	$8,$8,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi8ELi32EEEiPKhlS2_l)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_18sa8d_8x8EPKhlS1_l)
	sd	$fp,248($sp)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110sa8d_16x16EPKhlS1_l)
	sd	$fp,256($sp)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110sa8d_32x32EPKhlS1_l)
	sd	$fp,264($sp)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi4EEEvPhlPKhl)
	sd	$fp,272($sp)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi8EEEvPhlPKhl)
	sd	$fp,280($sp)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi4ELi4EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,16($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi4ELi4EEEvPKhS2_S2_S2_lPi)
	sd	$fp,8($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi4EEEvPhlPKhlS3_li)
	sd	$fp,96($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi16EEEvPhlPKhlS3_li)
	sd	$fp,352($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi32EEEvPhlPKhlS3_li)
	sd	$fp,480($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi64EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi64EEEvPhlPKhlS3_li)
	sd	$fp,608($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi4ELi8EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi4ELi8EEEiPKhlS2_l)
	sd	$fp,768($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi4ELi8EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,784($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi4ELi8EEEvPKhS2_S2_S2_lPi)
	sd	$fp,776($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi8EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi8EEEvPhlPKhlS3_li)
	sd	$fp,864($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi8ELi4EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi8ELi4EEEiPKhlS2_l)
	sd	$fp,640($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi8ELi4EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,656($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi8ELi4EEEvPKhS2_S2_S2_lPi)
	sd	$fp,648($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi4EEEvPhlPKhlS3_li)
	sd	$fp,736($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi8EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi8EEEiPKhlS2_l)
	sd	$fp,896($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi8EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,912($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi8EEEvPKhS2_S2_S2_lPi)
	sd	$fp,904($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi8EEEvPhlPKhlS3_li)($28)
	sd	$17,1008($4)
	sd	$22,1136($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi8EEEvPhlPKhlS3_li)
	sd	$20,2160($4)
	sd	$fp,992($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi8ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi8ELi16EEEiPKhlS2_l)
	sd	$fp,1024($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi8ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1040($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi8ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1032($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi16EEEvPhlPKhlS3_li)
	sd	$fp,1120($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi12EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi12EEEiPKhlS2_l)
	sd	$fp,1664($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi12EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1680($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi12EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1672($4)
	ld	$fp,0($sp)
	sd	$fp,1776($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi12EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi12EEEvPhlPKhlS3_li)
	sd	$fp,1760($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi12ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi12ELi16EEEiPKhlS2_l)
	sd	$fp,1792($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi12ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1808($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi12ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1800($4)
	ld	$fp,8($sp)
	sd	$fp,1904($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi12ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi12ELi16EEEvPhlPKhlS3_li)
	sd	$fp,1888($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi4EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi4EEEiPKhlS2_l)
	sd	$fp,1920($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi4EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1936($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi4EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1928($4)
	ld	$fp,16($sp)
	sd	$fp,2032($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi4EEEvPhlPKhlS3_li)
	sd	$fp,2016($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi4ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi4ELi16EEEiPKhlS2_l)
	sd	$fp,2048($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi4ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2064($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi4ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2056($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi4ELi16EEEvPhlPKhlS3_li)
	sd	$fp,2144($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi32ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi32ELi16EEEiPKhlS2_l)
	sd	$fp,1152($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi32ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1168($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi32ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1160($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi16EEEvPhlPKhlS3_li)($28)
	sd	$16,1264($4)
	sd	$21,1392($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi16EEEvPhlPKhlS3_li)
	sd	$18,2672($4)
	sd	$fp,1248($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi32EEEiPKhlS2_l)
	sd	$fp,1280($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi32EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1296($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi32EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1288($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi16ELi32EEEvPhlPKhlS3_li)
	sd	$fp,1376($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi32ELi24EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi32ELi24EEEiPKhlS2_l)
	sd	$fp,2176($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi32ELi24EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2192($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi32ELi24EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2184($4)
	ld	$fp,24($sp)
	sd	$fp,2288($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi24EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi24EEEvPhlPKhlS3_li)
	sd	$fp,2272($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi24ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi24ELi32EEEiPKhlS2_l)
	sd	$fp,2304($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi24ELi32EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2320($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi24ELi32EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2312($4)
	ld	$fp,32($sp)
	sd	$fp,2416($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi24ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi24ELi32EEEvPhlPKhlS3_li)
	sd	$fp,2400($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi32ELi8EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi32ELi8EEEiPKhlS2_l)
	sd	$fp,2432($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi32ELi8EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2448($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi32ELi8EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2440($4)
	ld	$fp,40($sp)
	sd	$fp,2544($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi8EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi8EEEvPhlPKhlS3_li)
	sd	$fp,2528($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi8ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi8ELi32EEEiPKhlS2_l)
	sd	$fp,2560($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi8ELi32EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2576($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi8ELi32EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2568($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi8ELi32EEEvPhlPKhlS3_li)
	sd	$fp,2656($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi64ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi64ELi32EEEiPKhlS2_l)
	sd	$fp,1408($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi64ELi32EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1424($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi64ELi32EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1416($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi32EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi32EEEvPhlPKhl)
	sd	$fp,1520($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi32EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi32EEEvPhlPKhlS3_li)
	sd	$fp,1504($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi32ELi64EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi32ELi64EEEiPKhlS2_l)
	sd	$fp,1536($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi32ELi64EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,1552($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi32ELi64EEEvPKhS2_S2_S2_lPi)
	sd	$fp,1544($4)
	ld	$fp,48($sp)
	sd	$fp,1648($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi64EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi32ELi64EEEvPhlPKhlS3_li)
	sd	$fp,1632($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi64ELi48EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi64ELi48EEEiPKhlS2_l)
	sd	$fp,2688($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi64ELi48EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2704($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi64ELi48EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2696($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi48EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi48EEEvPhlPKhl)
	sd	$fp,2800($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi48EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi48EEEvPhlPKhlS3_li)
	sd	$fp,2784($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi48ELi64EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi48ELi64EEEiPKhlS2_l)
	sd	$fp,2816($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi48ELi64EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2832($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi48ELi64EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2824($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi48ELi64EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi48ELi64EEEvPhlPKhl)
	sd	$fp,2928($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi48ELi64EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi48ELi64EEEvPhlPKhlS3_li)
	sd	$fp,2912($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi64ELi16EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi64ELi16EEEiPKhlS2_l)
	sd	$fp,2944($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi64ELi16EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,2960($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi64ELi16EEEvPKhS2_S2_S2_lPi)
	sd	$fp,2952($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi16EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi64ELi16EEEvPhlPKhl)
	sd	$fp,3056($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi16EEEvPhlPKhlS3_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111pixelavg_ppILi64ELi16EEEvPhlPKhlS3_li)
	sd	$fp,3040($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_13sadILi16ELi64EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_13sadILi16ELi64EEEiPKhlS2_l)
	sd	$fp,3072($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x4ILi16ELi64EEEvPKhS2_S2_S2_S2_lPi)
	sd	$fp,3088($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_16sad_x3ILi16ELi64EEEvPKhS2_S2_S2_lPi)
	sd	$fp,3080($4)
	ld	$fp,56($sp)
	sd	$fp,3184($4)
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
	sd	$2,32($4)
	sd	$25,112($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19sad_64x64EPKhlS1_l)
	sd	$24,240($4)
	sd	$fp,512($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi)($28)
	sd	$15,368($4)
	sd	$14,496($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110sad_x3_8x8EPKhS1_S1_S1_lPi)
	sd	$11,160($4)
	sd	$fp,136($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi)($28)
	sd	$3,800($4)
	sd	$9,288($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sad_x3_16x16EPKhS1_S1_S1_lPi)
	sd	$6,928($4)
	sd	$fp,264($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi)($28)
	sd	$13,1056($4)
	sd	$10,2080($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sad_x3_32x32EPKhS1_S1_S1_lPi)
	sd	$7,416($4)
	sd	$fp,392($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi)($28)
	sd	$5,1184($4)
	sd	$12,1312($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sad_x3_64x64EPKhS1_S1_S1_lPi)
	sd	$fp,520($4)
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
	ld	$fp,%got_page(_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_115pixelavg_pp_8x8EPhlPKhlS2_li)
	sd	$fp,224($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_118blockcopy_pp_64x64EPhlPKhl)
	sd	$fp,624($4)
	ld	$fp,64($sp)
	sd	$fp,672($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi12EEEiPKhlS2_l)
	sd	$fp,1696($4)
	ld	$fp,72($sp)
	sd	$fp,1824($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi4EEEiPKhlS2_l)
	sd	$fp,1952($4)
	ld	$fp,80($sp)
	sd	$fp,2208($4)
	ld	$fp,88($sp)
	sd	$8,2592($4)
	sd	$fp,2336($4)
	ld	$fp,96($sp)
	sd	$fp,2464($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_111satd8_64x64EPKhlS1_l)
	sd	$fp,544($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi64ELi32EEEiPKhlS2_l)
	sd	$fp,1440($4)
	ld	$fp,104($sp)
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
	ld	$fp,112($sp)
	sd	$fp,3104($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19pixel_varILi4EEEmPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19pixel_varILi4EEEmPKhl)
	sd	$fp,3344($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19pixel_varILi32EEEmPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19pixel_varILi32EEEmPKhl)
	sd	$fp,4832($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_19pixel_varILi64EEEmPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_19pixel_varILi64EEEmPKhl)
	sd	$fp,5328($4)
	ld	$fp,120($sp)
	sd	$fp,3352($4)
	ld	$fp,128($sp)
	sd	$fp,3848($4)
	ld	$fp,136($sp)
	sd	$fp,4344($4)
	ld	$fp,144($sp)
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
	ld	$fp,152($sp)
	sd	$fp,3240($4)
	ld	$fp,160($sp)
	sd	$fp,3736($4)
	ld	$fp,168($sp)
	sd	$fp,4232($4)
	ld	$fp,176($sp)
	sd	$fp,4728($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_112sub_ps_64x64EPslPKhS2_ll)
	sd	$fp,5224($4)
	ld	$fp,184($sp)
	sd	$fp,3248($4)
	ld	$fp,192($sp)
	sd	$fp,3744($4)
	ld	$fp,200($sp)
	sd	$fp,4240($4)
	ld	$fp,208($sp)
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
	ld	$fp,216($sp)
	sd	$fp,3328($4)
	ld	$fp,224($sp)
	sd	$fp,3824($4)
	ld	$fp,232($sp)
	sd	$2,3384($4)
	sd	$19,9080($4)
	sd	$fp,4320($4)
	ld	$fp,240($sp)
	sd	$23,9160($4)
	sd	$17,9240($4)
	sd	$fp,4816($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi64ELi64EEEvPslPKsl)($28)
	sd	$22,9320($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi64ELi64EEEvPslPKsl)
	sd	$fp,5312($4)
	ld	$fp,248($sp)
	sd	$fp,3880($4)
	ld	$fp,256($sp)
	sd	$fp,4376($4)
	ld	$fp,264($sp)
	sd	$fp,4872($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_110sa8d_64x64EPKhlS1_l)
	sd	$fp,5368($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi2EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi2EEEvPhlPKhl)
	sd	$fp,8520($4)
	ld	$fp,272($sp)
	sd	$fp,9000($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi2EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi2EEEvPhlPKhl)
	sd	$fp,8920($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi6EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi6EEEvPhlPKhl)
	sd	$fp,9560($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi8EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi8EEEvPhlPKhl)
	sd	$fp,9640($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi2EEEvPhlPKhl)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi2EEEvPhlPKhl)
	sd	$fp,9720($4)
	ld	$fp,280($sp)
	sd	$fp,9800($4)
	ld	$fp,0($sp)
	sd	$fp,9880($4)
	ld	$fp,8($sp)
	sd	$fp,9960($4)
	ld	$fp,16($sp)
	sd	$fp,10040($4)
	sd	$20,10120($4)
	ld	$fp,24($sp)
	sd	$16,9400($4)
	sd	$21,9480($4)
	sd	$fp,10200($4)
	ld	$fp,32($sp)
	sd	$18,10440($4)
	sd	$2,8536($4)
	sd	$fp,10280($4)
	ld	$fp,40($sp)
	sd	$25,8600($4)
	sd	$24,8680($4)
	sd	$fp,10360($4)
	ld	$fp,64($sp)
	sd	$15,8760($4)
	sd	$14,8840($4)
	sd	$fp,9016($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l)($28)
	sd	$0,8456($4)
	sd	$11,8616($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi16ELi12EEEiPKhlS2_l)
	sd	$9,8696($4)
	sd	$7,8776($4)
	sd	$0,8856($4)
	sd	$0,8936($4)
	sd	$3,9096($4)
	sd	$6,9176($4)
	sd	$13,9256($4)
	sd	$5,9336($4)
	sd	$12,9416($4)
	sd	$0,9496($4)
	sd	$0,9576($4)
	sd	$0,9656($4)
	sd	$0,9736($4)
	sd	$fp,9816($4)
	ld	$fp,72($sp)
	sd	$10,10056($4)
	sd	$8,10376($4)
	sd	$fp,9896($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi16ELi4EEEiPKhlS2_l)
	sd	$fp,9976($4)
	ld	$fp,80($sp)
	sd	$fp,10136($4)
	ld	$fp,88($sp)
	sd	$fp,10216($4)
	ld	$fp,96($sp)
	sd	$fp,10296($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_18sse_pp_aILi2ELi2EEEjPKhlS2_l)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_18sse_pp_aILi2ELi2EEEjPKhlS2_l)
	sd	$fp,10464($4)
	ld	$fp,120($sp)
	sd	$fp,10528($4)
	ld	$fp,128($sp)
	sd	$fp,10592($4)
	ld	$fp,136($sp)
	sd	$fp,10656($4)
	ld	$fp,144($sp)
	sd	$fp,10720($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi2EEEvPslPKhS3_ll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114pixel_sub_ps_cILi2ELi2EEEvPslPKhS3_ll)
	sd	$fp,10472($4)
	ld	$fp,152($sp)
	sd	$fp,10536($4)
	ld	$fp,160($sp)
	sd	$fp,10600($4)
	ld	$fp,168($sp)
	sd	$fp,10664($4)
	ld	$fp,176($sp)
	sd	$fp,10728($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll)($28)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114pixel_add_ps_cILi2ELi2EEEvPhlPKhPKsll)
	sd	$fp,10480($4)
	ld	$fp,184($sp)
	sd	$fp,10544($4)
	ld	$fp,192($sp)
	sd	$20,11480($4)
	ld	$20,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi12EEEvPhlPKhl)($28)
	sd	$fp,10608($4)
	ld	$fp,200($sp)
	sd	$21,11080($4)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi12EEEvPhlPKhl)
	ld	$21,280($sp)
	sd	$fp,10672($4)
	ld	$fp,208($sp)
	sd	$2,10520($4)
	sd	$23,10920($4)
	sd	$fp,10736($4)
	ld	$fp,%got_page(_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi2EEEvPslPKsl)($28)
	sd	$22,11000($4)
	sd	$21,11320($4)
	daddiu	$fp,$fp,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_ss_cILi2ELi2EEEvPslPKsl)
	sd	$fp,10504($4)
	ld	$fp,216($sp)
	sd	$fp,10568($4)
	ld	$fp,224($sp)
	sd	$fp,10632($4)
	ld	$fp,232($sp)
	sd	$fp,10696($4)
	ld	$fp,240($sp)
	sd	$fp,10760($4)
	ld	$fp,248($sp)
	sd	$fp,10584($4)
	ld	$fp,256($sp)
	sd	$fp,10648($4)
	ld	$fp,264($sp)
	sd	$fp,10712($4)
	ld	$fp,272($sp)
	sd	$fp,10840($4)
	ld	$fp,48($sp)
	sd	$fp,11160($4)
	sd	$20,11880($4)
	sd	$17,12360($4)
	ld	$17,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi32EEEvPhlPKhl)($28)
	ld	$fp,56($sp)
	sd	$18,11640($4)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi4ELi32EEEvPhlPKhl)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi24EEEvPhlPKhl)($28)
	sd	$17,12440($4)
	ld	$17,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi48EEEvPhlPKhl)($28)
	sd	$fp,11800($4)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi16ELi24EEEvPhlPKhl)
	ld	$fp,104($sp)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi32ELi48EEEvPhlPKhl)
	ld	$20,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi16EEEvPhlPKhl)($28)
	sd	$19,12040($4)
	sd	$18,12200($4)
	ld	$19,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi16EEEvPhlPKhl)($28)
	daddiu	$20,$20,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi6ELi16EEEvPhlPKhl)
	ld	$18,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi32EEEvPhlPKhl)($28)
	sd	$17,12520($4)
	sd	$16,12680($4)
	daddiu	$19,$19,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi2ELi16EEEvPhlPKhl)
	ld	$17,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi64EEEvPhlPKhl)($28)
	daddiu	$18,$18,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi12ELi32EEEvPhlPKhl)
	ld	$16,%got_page(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi64EEEvPhlPKhl)($28)
	sd	$2,11176($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l)($28)
	daddiu	$17,$17,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi24ELi64EEEvPhlPKhl)
	sd	$fp,11096($4)
	daddiu	$16,$16,%got_ofst(_ZN12_GLOBAL__N_114blockcopy_pp_cILi8ELi64EEEvPhlPKhl)
	ld	$fp,112($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi8ELi12EEEiPKhlS2_l)
	sd	$20,11960($4)
	sd	$19,12120($4)
	sd	$18,12280($4)
	sd	$17,12600($4)
	sd	$16,12760($4)
	sd	$25,11240($4)
	sd	$24,11400($4)
	sd	$15,11560($4)
	sd	$14,11720($4)
	sd	$0,10776($4)
	sd	$3,10856($4)
	sd	$13,10936($4)
	sd	$12,11016($4)
	sd	$0,11256($4)
	sd	$11,11336($4)
	sd	$10,11416($4)
	sd	$9,11496($4)
	sd	$8,11576($4)
	sd	$7,11656($4)
	sd	$fp,11736($4)
	sd	$2,11816($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l)($28)
	sd	$0,11896($4)
	sd	$0,12056($4)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi8ELi4EEEiPKhlS2_l)
	sd	$6,12296($4)
	sd	$2,11976($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l)($28)
	sd	$5,12616($4)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi16ELi24EEEiPKhlS2_l)
	sd	$2,12136($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi12ELi32EEEiPKhlS2_l)
	sd	$2,12216($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd4ILi4ELi32EEEiPKhlS2_l)
	sd	$2,12376($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi32ELi48EEEiPKhlS2_l)
	sd	$2,12456($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi24ELi64EEEiPKhlS2_l)
	sd	$2,12536($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15satd8ILi8ELi64EEEiPKhlS2_l)
	sd	$2,12696($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_18sse_pp_aILi2ELi4EEEjPKhlS2_l)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_18sse_pp_aILi2ELi4EEEjPKhlS2_l)
	sd	$2,12784($4)
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
	sd	$3,12840($4)
	ld	$fp,360($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_15sa8d8ILi8ELi16EEEiPKhlS2_l)
	ld	$23,344($sp)
	sd	$2,12904($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l)($28)
	ld	$22,336($sp)
	ld	$21,328($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_16sa8d16ILi16ELi32EEEiPKhlS2_l)
	ld	$20,320($sp)
	sd	$2,12968($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_16sa8d16ILi32ELi64EEEiPKhlS2_l)($28)
	ld	$19,312($sp)
	ld	$18,304($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_16sa8d16ILi32ELi64EEEiPKhlS2_l)
	ld	$17,296($sp)
	sd	$2,13032($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii)($28)
	ld	$16,288($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L9weight_ppEPKhPhliiiiii)
	sd	$2,5960($4)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L22frame_init_lowres_coreEPKhPhS2_S2_S2_llii)
	sd	$2,5880($4)
	ld	$2,%got_page(_ZL4dct4PKsPsl)($28)
	daddiu	$2,$2,%got_ofst(_ZL4dct4PKsPsl)
	sd	$2,3200($4)
	ld	$2,%got_page(_ZL4dct8PKsPsl)($28)
	daddiu	$2,$2,%got_ofst(_ZL4dct8PKsPsl)
	sd	$2,3696($4)
	ld	$2,%got_page(_ZL5idct4PKsPsl)($28)
	daddiu	$2,$2,%got_ofst(_ZL5idct4PKsPsl)
	sd	$2,3208($4)
	ld	$2,%got_page(_ZL4dst4PKsPsl)($28)
	daddiu	$2,$2,%got_ofst(_ZL4dst4PKsPsl)
	sd	$2,5680($4)
	ld	$2,%got_page(_ZL5idst4PKsPsl)($28)
	ld	$28,352($sp)
	daddiu	$sp,$sp,368
	daddiu	$2,$2,%got_ofst(_ZL5idst4PKsPsl)
	jr	$31
	sd	$2,5688($4)

	.set	macro
	.set	reorder
	.end	_ZN4x26527setupLoongson_asmPrimitivesERNS_17EncoderPrimitivesE
	.size	_ZN4x26527setupLoongson_asmPrimitivesERNS_17EncoderPrimitivesE, .-_ZN4x26527setupLoongson_asmPrimitivesERNS_17EncoderPrimitivesE
	.local	_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf
	.comm	_ZZN12_GLOBAL__N_110psyCost_ppILi4EEEiPKhlS2_lE7zeroBuf,8,8
	.globl	tab_dct8_2
	.data
	.align	3
	.type	tab_dct8_2, @object
	.size	tab_dct8_2, 96
tab_dct8_2:
	.word	36
	.word	83
	.word	36
	.word	83
	.word	-83
	.word	36
	.word	-83
	.word	36
	.word	89
	.word	75
	.word	50
	.word	18
	.word	75
	.word	-18
	.word	-89
	.word	-50
	.word	50
	.word	-89
	.word	18
	.word	75
	.word	18
	.word	-50
	.word	75
	.word	-89
	.globl	tab_dct4
	.align	3
	.type	tab_dct4, @object
	.size	tab_dct4, 64
tab_dct4:
	.half	64
	.half	64
	.half	64
	.half	64
	.half	64
	.half	64
	.half	64
	.half	64
	.half	83
	.half	36
	.half	83
	.half	36
	.half	83
	.half	36
	.half	83
	.half	36
	.half	64
	.half	-64
	.half	64
	.half	-64
	.half	64
	.half	-64
	.half	64
	.half	-64
	.half	36
	.half	-83
	.half	36
	.half	-83
	.half	36
	.half	-83
	.half	36
	.half	-83
	.globl	tab_dct8_11
	.align	3
	.type	tab_dct8_11, @object
	.size	tab_dct8_11, 64
tab_dct8_11:
	.half	50
	.half	18
	.half	50
	.half	18
	.half	50
	.half	18
	.half	50
	.half	18
	.half	-89
	.half	75
	.half	-89
	.half	75
	.half	-89
	.half	75
	.half	-89
	.half	75
	.half	18
	.half	75
	.half	18
	.half	75
	.half	18
	.half	75
	.half	18
	.half	75
	.half	-50
	.half	-89
	.half	-50
	.half	-89
	.half	-50
	.half	-89
	.half	-50
	.half	-89
	.globl	tab_dct8_1
	.align	3
	.type	tab_dct8_1, @object
	.size	tab_dct8_1, 64
tab_dct8_1:
	.half	89
	.half	50
	.half	89
	.half	50
	.half	89
	.half	50
	.half	89
	.half	50
	.half	75
	.half	18
	.half	75
	.half	18
	.half	75
	.half	18
	.half	75
	.half	18
	.half	75
	.half	-89
	.half	75
	.half	-89
	.half	75
	.half	-89
	.half	75
	.half	-89
	.half	-18
	.half	-50
	.half	-18
	.half	-50
	.half	-18
	.half	-50
	.half	-18
	.half	-50
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LC0:
	.half	29
	.half	84
	.half	29
	.half	84
	.half	29
	.half	84
	.half	29
	.half	84
	.align	4
.LC1:
	.half	55
	.half	-29
	.half	55
	.half	-29
	.half	55
	.half	-29
	.half	55
	.half	-29
	.align	4
.LC2:
	.half	74
	.half	-74
	.half	74
	.half	-74
	.half	74
	.half	-74
	.half	74
	.half	-74
	.align	4
.LC3:
	.half	84
	.half	55
	.half	84
	.half	55
	.half	84
	.half	55
	.half	84
	.half	55
	.align	4
.LC4:
	.half	74
	.half	55
	.half	74
	.half	55
	.half	74
	.half	55
	.half	74
	.half	55
	.align	4
.LC5:
	.half	74
	.half	-84
	.half	74
	.half	-84
	.half	74
	.half	-84
	.half	74
	.half	-84
	.align	4
.LC6:
	.half	0
	.half	74
	.half	0
	.half	74
	.half	0
	.half	74
	.half	0
	.half	74
	.align	4
.LC7:
	.half	-74
	.half	-29
	.half	-74
	.half	-29
	.half	-74
	.half	-29
	.half	-74
	.half	-29
	.align	4
.LC8:
	.half	29
	.half	55
	.half	74
	.half	84
	.half	29
	.half	55
	.half	74
	.half	84
	.align	4
.LC9:
	.half	74
	.half	74
	.half	0
	.half	-74
	.half	74
	.half	74
	.half	0
	.half	-74
	.align	4
.LC10:
	.half	84
	.half	-29
	.half	-74
	.half	55
	.half	84
	.half	-29
	.half	-74
	.half	55
	.align	4
.LC11:
	.half	55
	.half	-84
	.half	74
	.half	-29
	.half	55
	.half	-84
	.half	74
	.half	-29
	.align	4
.LC12:
	.half	64
	.half	-64
	.half	64
	.half	-64
	.half	64
	.half	-64
	.half	64
	.half	-64
	.align	4
.LC13:
	.half	83
	.half	36
	.half	83
	.half	36
	.half	83
	.half	36
	.half	83
	.half	36
	.align	4
.LC14:
	.half	36
	.half	-83
	.half	36
	.half	-83
	.half	36
	.half	-83
	.half	36
	.half	-83
	.ident	"GCC: (GNU) 7.3.0"
