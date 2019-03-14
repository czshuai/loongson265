	.file	1 "predict.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.align	3
	.globl	_ZN4x26514PredictionUnitC2ERKNS_6CUDataERKNS_6CUGeomEi
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26514PredictionUnitC2ERKNS_6CUDataERKNS_6CUGeomEi
	.type	_ZN4x26514PredictionUnitC2ERKNS_6CUDataERKNS_6CUGeomEi, @function
_ZN4x26514PredictionUnitC2ERKNS_6CUDataERKNS_6CUGeomEi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	lw	$10,8($6)
	move	$3,$5
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26514PredictionUnitC2ERKNS_6CUDataERKNS_6CUGeomEi)))
	move	$2,$4
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$8,$4,16
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26514PredictionUnitC2ERKNS_6CUDataERKNS_6CUGeomEi)))
	lw	$9,96($5)
	daddiu	$6,$4,8
	ld	$25,%call16(_ZNK4x2656CUData19getPartIndexAndSizeEjRjRiS2_)($28)
	move	$5,$7
	daddiu	$7,$4,12
	move	$4,$3
	sw	$10,4($2)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData19getPartIndexAndSizeEjRjRiS2_
1:	jalr	$25
	sw	$9,0($2)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN4x26514PredictionUnitC2ERKNS_6CUDataERKNS_6CUGeomEi
	.size	_ZN4x26514PredictionUnitC2ERKNS_6CUDataERKNS_6CUGeomEi, .-_ZN4x26514PredictionUnitC2ERKNS_6CUDataERKNS_6CUGeomEi
	.globl	_ZN4x26514PredictionUnitC1ERKNS_6CUDataERKNS_6CUGeomEi
	_ZN4x26514PredictionUnitC1ERKNS_6CUDataERKNS_6CUGeomEi = _ZN4x26514PredictionUnitC2ERKNS_6CUDataERKNS_6CUGeomEi
	.align	2
	.align	3
	.globl	_ZN4x2657PredictC2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657PredictC2Ev
	.type	_ZN4x2657PredictC2Ev, @function
_ZN4x2657PredictC2Ev:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2657PredictC2Ev)))
	daddu	$28,$28,$25
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2657PredictC2Ev)))
	sd	$16,8($sp)
	ld	$25,%call16(_ZN4x2658ShortYuvC1Ev)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2658ShortYuvC1Ev
1:	jalr	$25
	move	$16,$4

	ld	$25,%call16(_ZN4x2658ShortYuvC1Ev)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2658ShortYuvC1Ev
1:	jalr	$25
	daddiu	$4,$16,48

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2657PredictC2Ev
	.size	_ZN4x2657PredictC2Ev, .-_ZN4x2657PredictC2Ev
	.globl	_ZN4x2657PredictC1Ev
	_ZN4x2657PredictC1Ev = _ZN4x2657PredictC2Ev
	.align	2
	.align	3
	.globl	_ZN4x2657PredictD2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657PredictD2Ev
	.type	_ZN4x2657PredictD2Ev, @function
_ZN4x2657PredictD2Ev:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2657PredictD2Ev)))
	daddu	$28,$28,$25
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2657PredictD2Ev)))
	sd	$16,8($sp)
	ld	$25,%call16(_ZN4x2658ShortYuv7destroyEv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2658ShortYuv7destroyEv
1:	jalr	$25
	move	$16,$4

	ld	$25,%call16(_ZN4x2658ShortYuv7destroyEv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2658ShortYuv7destroyEv
1:	jalr	$25
	daddiu	$4,$16,48

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2657PredictD2Ev
	.size	_ZN4x2657PredictD2Ev, .-_ZN4x2657PredictD2Ev
	.globl	_ZN4x2657PredictD1Ev
	_ZN4x2657PredictD1Ev = _ZN4x2657PredictD2Ev
	.align	2
	.align	3
	.globl	_ZN4x2657Predict12allocBuffersEi
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657Predict12allocBuffersEi
	.type	_ZN4x2657Predict12allocBuffersEi, @function
_ZN4x2657Predict12allocBuffersEi:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	addiu	$3,$5,-1
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2657Predict12allocBuffersEi)))
	xori	$2,$5,0x1
	daddu	$28,$28,$25
	sd	$17,8($sp)
	sltu	$3,$3,2
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2657Predict12allocBuffersEi)))
	sd	$16,0($sp)
	sltu	$2,$2,1
	ld	$25,%call16(_ZN4x2658ShortYuv6createEji)($28)
	move	$6,$5
	move	$16,$5
	sd	$31,24($sp)
	move	$17,$4
	sw	$5,612($4)
	li	$5,64			# 0x40
	sw	$3,616($4)
	.reloc	1f,R_MIPS_JALR,_ZN4x2658ShortYuv6createEji
1:	jalr	$25
	sw	$2,620($4)

	beq	$2,$0,.L14
	ld	$31,24($sp)

	ld	$25,%call16(_ZN4x2658ShortYuv6createEji)($28)
	move	$6,$16
	li	$5,64			# 0x40
	.reloc	1f,R_MIPS_JALR,_ZN4x2658ShortYuv6createEji
1:	jalr	$25
	daddiu	$4,$17,48

	ld	$31,24($sp)
.L14:
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2657Predict12allocBuffersEi
	.size	_ZN4x2657Predict12allocBuffersEi, .-_ZN4x2657Predict12allocBuffersEi
	.align	2
	.align	3
	.globl	_ZNK4x2657Predict18predInterLumaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2657Predict18predInterLumaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE
	.type	_ZNK4x2657Predict18predInterLumaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE, @function
_ZNK4x2657Predict18predInterLumaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	lw	$14,8($5)
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2657Predict18predInterLumaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE)))
	daddu	$28,$28,$25
	lw	$15,24($6)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2657Predict18predInterLumaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE)))
	dext	$3,$14,0,32
	lh	$9,2($8)
	ld	$2,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	ld	$10,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	dext	$12,$15,0,32
	lw	$13,16($5)
	daddu	$2,$2,$3
	ld	$11,56($7)
	lbu	$4,0($2)
	daddu	$10,$10,$3
	dsra	$2,$9,2
	lbu	$24,0($10)
	sra	$13,$13,2
	andi	$9,$9,0xffff
	lw	$10,12($5)
	gsdmultu	$2,$2,$11
	mul	$25,$4,$15
	lw	$3,4($5)
	ld	$15,88($7)
	lwu	$5,0($5)
	sra	$10,$10,2
	addu	$3,$3,$14
	lh	$8,0($8)
	lsa	$10,$10,$13,4
	dext	$3,$3,0,32
	addiu	$10,$10,-17
	ld	$13,0($6)
	dlsa	$5,$5,$15,3
	ld	$6,24($7)
	ld	$15,0($5)
	ld	$5,%got_disp(_ZN4x26521lumaPartitionMapTableE)($28)
	daddu	$10,$5,$10
	dsra	$5,$8,2
	daddu	$2,$2,$5
	andi	$8,$8,0xffff
	daddu	$2,$2,$15
	or	$5,$8,$9
	andi	$5,$5,0x3
	addu	$4,$25,$24
	ld	$24,104($7)
	daddu	$4,$13,$4
	dlsa	$3,$3,$24,3
	ld	$14,0($3)
	lbu	$3,0($10)
	daddu	$2,$2,$14
	bne	$5,$0,.L16
	daddu	$2,$6,$2

	move	$6,$2
	ld	$2,%got_disp(_ZN4x26510primitivesE)($28)
	dsll	$3,$3,7
	ld	$28,8($sp)
	move	$7,$11
	move	$5,$12
	daddu	$3,$2,$3
	ld	$25,112($3)
	jr	$25
	daddiu	$sp,$sp,16

	.align	3
.L16:
	andi	$9,$9,0x3
	andi	$8,$8,0x3
	bne	$9,$0,.L17
	dsll	$3,$3,7

	move	$6,$4
	move	$4,$2
	ld	$2,%got_disp(_ZN4x26510primitivesE)($28)
	ld	$28,8($sp)
	move	$7,$12
	move	$5,$11
	daddu	$3,$2,$3
	ld	$25,40($3)
	jr	$25
	daddiu	$sp,$sp,16

	.align	3
.L17:
	beq	$8,$0,.L20
	move	$6,$4

	ld	$4,%got_disp(_ZN4x26510primitivesE)($28)
	move	$7,$12
	ld	$28,8($sp)
	move	$5,$11
	daddu	$3,$4,$3
	move	$4,$2
	ld	$25,88($3)
	jr	$25
	daddiu	$sp,$sp,16

	.align	3
.L20:
	move	$4,$2
	ld	$2,%got_disp(_ZN4x26510primitivesE)($28)
	ld	$28,8($sp)
	move	$8,$9
	move	$7,$12
	move	$5,$11
	daddu	$3,$2,$3
	ld	$25,56($3)
	jr	$25
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZNK4x2657Predict18predInterLumaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE
	.size	_ZNK4x2657Predict18predInterLumaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE, .-_ZNK4x2657Predict18predInterLumaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE
	.align	2
	.align	3
	.globl	_ZNK4x2657Predict18predInterLumaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2657Predict18predInterLumaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE
	.type	_ZNK4x2657Predict18predInterLumaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE, @function
_ZNK4x2657Predict18predInterLumaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE:
	.frame	$sp,9200,$31		# vars= 9136, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-9200
	lw	$13,8($5)
	sd	$28,9184($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2657Predict18predInterLumaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE)))
	daddu	$28,$28,$25
	lw	$14,24($6)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2657Predict18predInterLumaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE)))
	dext	$2,$13,0,32
	lh	$11,2($8)
	ld	$4,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	ld	$9,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	ld	$10,56($7)
	daddu	$4,$4,$2
	sd	$18,9160($sp)
	dext	$18,$14,0,32
	lbu	$3,0($4)
	daddu	$9,$9,$2
	dsra	$4,$11,2
	lw	$2,4($5)
	gsdmultu	$4,$4,$10
	andi	$11,$11,0xffff
	sd	$17,9152($sp)
	mul	$15,$3,$14
	lw	$17,12($5)
	lw	$12,16($5)
	addu	$2,$2,$13
	lwu	$5,0($5)
	dext	$2,$2,0,32
	ld	$14,88($7)
	lbu	$9,0($9)
	sra	$12,$12,2
	ld	$13,104($7)
	lh	$8,0($8)
	dlsa	$5,$5,$14,3
	ld	$5,0($5)
	dlsa	$2,$2,$13,3
	sd	$31,9192($sp)
	ld	$13,0($2)
	ld	$2,%got_disp(_ZN4x26521lumaPartitionMapTableE)($28)
	sd	$20,9176($sp)
	sd	$19,9168($sp)
	sd	$16,9144($sp)
	addu	$3,$15,$9
	sra	$9,$17,2
	lsa	$9,$9,$12,4
	ld	$12,0($6)
	dsra	$6,$8,2
	daddu	$4,$4,$6
	andi	$8,$8,0xffff
	ld	$6,24($7)
	daddu	$4,$4,$5
	addiu	$9,$9,-17
	or	$5,$8,$11
	daddu	$9,$2,$9
	daddu	$4,$4,$13
	andi	$5,$5,0x3
	lbu	$2,0($9)
	dlsa	$3,$3,$12,1
	bne	$5,$0,.L22
	daddu	$4,$6,$4

	move	$6,$3
	ld	$3,%got_disp(_ZN4x26510primitivesE)($28)
	dsll	$2,$2,7
	move	$7,$18
	daddu	$2,$3,$2
	ld	$25,120($2)
	jalr	$25
	move	$5,$10

	ld	$31,9192($sp)
.L28:
	ld	$28,9184($sp)
	ld	$20,9176($sp)
	ld	$19,9168($sp)
	ld	$18,9160($sp)
	ld	$17,9152($sp)
	ld	$16,9144($sp)
	jr	$31
	daddiu	$sp,$sp,9200

	.align	3
.L22:
	andi	$19,$11,0x3
	bne	$19,$0,.L24
	andi	$8,$8,0x3

	move	$6,$3
	ld	$3,%got_disp(_ZN4x26510primitivesE)($28)
	dsll	$2,$2,7
	move	$7,$18
	move	$9,$0
	daddu	$2,$3,$2
	ld	$25,48($2)
	jalr	$25
	move	$5,$10

	ld	$31,9192($sp)
	ld	$28,9184($sp)
	ld	$20,9176($sp)
	ld	$19,9168($sp)
	ld	$18,9160($sp)
	ld	$17,9152($sp)
	ld	$16,9144($sp)
	jr	$31
	daddiu	$sp,$sp,9200

	.align	3
.L24:
	beq	$8,$0,.L27
	ld	$20,%got_disp(_ZN4x26510primitivesE)($28)

	dsll	$2,$2,7
	daddiu	$16,$sp,31
	dsrl	$16,$16,5
	move	$5,$10
	sd	$3,9120($sp)
	dsll	$16,$16,5
	move	$7,$17
	daddu	$20,$20,$2
	move	$6,$16
	ld	$25,48($20)
	jalr	$25
	li	$9,1			# 0x1

	ld	$3,9120($sp)
	lsa	$4,$17,$17,1
	ld	$25,80($20)
	move	$8,$19
	move	$7,$18
	move	$5,$17
	dlsa	$4,$4,$16,1
	jalr	$25
	move	$6,$3

	b	.L28
	ld	$31,9192($sp)

	.align	3
.L27:
	move	$6,$3
	ld	$3,%got_disp(_ZN4x26510primitivesE)($28)
	dsll	$2,$2,7
	move	$8,$19
	move	$7,$18
	daddu	$2,$3,$2
	ld	$25,64($2)
	jalr	$25
	move	$5,$10

	b	.L28
	ld	$31,9192($sp)

	.set	macro
	.set	reorder
	.end	_ZNK4x2657Predict18predInterLumaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE
	.size	_ZNK4x2657Predict18predInterLumaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE, .-_ZNK4x2657Predict18predInterLumaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE
	.align	2
	.align	3
	.globl	_ZNK4x2657Predict20predInterChromaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2657Predict20predInterChromaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE
	.type	_ZNK4x2657Predict20predInterChromaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE, @function
_ZNK4x2657Predict20predInterChromaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE:
	.frame	$sp,8736,$31		# vars= 8640, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-8736
	lw	$13,8($5)
	li	$10,1			# 0x1
	sd	$28,8712($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2657Predict20predInterChromaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE)))
	daddu	$28,$28,$25
	sd	$fp,8720($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2657Predict20predInterChromaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE)))
	sd	$23,8704($sp)
	dext	$3,$13,0,32
	ld	$2,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	sd	$19,8672($sp)
	sd	$18,8664($sp)
	sd	$17,8656($sp)
	move	$17,$4
	daddu	$2,$2,$3
	sd	$31,8728($sp)
	sd	$22,8696($sp)
	sd	$21,8688($sp)
	sd	$20,8680($sp)
	sd	$16,8648($sp)
	lw	$9,620($4)
	ld	$4,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	lw	$14,44($6)
	lw	$19,28($6)
	subu	$9,$10,$9
	daddu	$4,$4,$3
	lbu	$3,0($2)
	lh	$11,2($8)
	lbu	$4,0($4)
	sra	$3,$3,$14
	lw	$2,4($5)
	mul	$14,$3,$19
	sll	$9,$11,$9
	lw	$11,40($6)
	dext	$19,$19,0,32
	ld	$15,112($7)
	dsra	$12,$9,3
	ld	$18,64($7)
	addu	$2,$2,$13
	sra	$4,$4,$11
	lw	$11,12($5)
	dext	$2,$2,0,32
	ld	$24,96($7)
	dlsa	$2,$2,$15,3
	lw	$13,616($17)
	lh	$15,0($8)
	gsdmultu	$8,$12,$18
	subu	$10,$10,$13
	sll	$10,$15,$10
	addu	$3,$14,$4
	lw	$14,16($5)
	sra	$4,$11,2
	lwu	$5,0($5)
	sra	$14,$14,2
	lsa	$4,$4,$14,4
	dlsa	$12,$5,$24,3
	ld	$5,0($2)
	addiu	$2,$4,-17
	ld	$4,%got_disp(_ZN4x26521lumaPartitionMapTableE)($28)
	ld	$14,0($12)
	dsra	$12,$10,3
	daddu	$8,$8,$12
	daddu	$2,$4,$2
	ld	$4,32($7)
	ld	$21,40($7)
	daddu	$5,$5,$14
	or	$7,$10,$9
	ld	$23,8($6)
	daddu	$5,$5,$8
	ld	$fp,16($6)
	andi	$6,$7,0x7
	daddu	$4,$4,$5
	daddu	$21,$21,$5
	lbu	$2,0($2)
	daddu	$23,$23,$3
	lw	$5,612($17)
	bne	$6,$0,.L30
	daddu	$fp,$fp,$3

	dlsa	$2,$2,$2,2
	ld	$20,%got_disp(_ZN4x26510primitivesE)($28)
	dlsa	$3,$5,$5,3
	dsll	$16,$2,4
	dlsa	$3,$3,$5,4
	dlsa	$3,$3,$16,4
	move	$6,$4
	daddu	$3,$20,$3
	move	$7,$18
	ld	$25,6200($3)
	move	$5,$19
	jalr	$25
	move	$4,$23

	lw	$3,612($17)
	move	$7,$18
	move	$6,$21
	move	$5,$19
	dlsa	$2,$3,$3,3
	dlsa	$2,$2,$3,4
	dlsa	$16,$2,$16,4
	daddu	$16,$20,$16
	ld	$25,6200($16)
	jalr	$25
	move	$4,$fp

	ld	$31,8728($sp)
.L36:
	ld	$fp,8720($sp)
	ld	$28,8712($sp)
	ld	$23,8704($sp)
	ld	$22,8696($sp)
	ld	$21,8688($sp)
	ld	$20,8680($sp)
	ld	$19,8672($sp)
	ld	$18,8664($sp)
	ld	$17,8656($sp)
	ld	$16,8648($sp)
	jr	$31
	daddiu	$sp,$sp,8736

	.align	3
.L30:
	andi	$10,$10,0x7
	andi	$22,$9,0x7
	bne	$22,$0,.L32
	move	$3,$10

	ld	$20,%got_disp(_ZN4x26510primitivesE)($28)
	dlsa	$2,$2,$2,2
	dlsa	$3,$5,$5,3
	dsll	$16,$2,4
	dlsa	$3,$3,$5,4
	sw	$10,8608($sp)
	dlsa	$3,$3,$16,4
	move	$7,$19
	daddu	$3,$20,$3
	move	$6,$23
	ld	$25,6176($3)
	move	$5,$18
	jalr	$25
	move	$8,$10

	lw	$3,612($17)
	move	$7,$19
	lw	$10,8608($sp)
	move	$6,$fp
	move	$5,$18
	move	$4,$21
	dlsa	$2,$3,$3,3
	dlsa	$2,$2,$3,4
	dlsa	$16,$2,$16,4
	daddu	$16,$20,$16
	ld	$25,6176($16)
	jalr	$25
	move	$8,$10

	ld	$31,8728($sp)
	ld	$fp,8720($sp)
	ld	$28,8712($sp)
	ld	$23,8704($sp)
	ld	$22,8696($sp)
	ld	$21,8688($sp)
	ld	$20,8680($sp)
	ld	$19,8672($sp)
	ld	$18,8664($sp)
	ld	$17,8656($sp)
	ld	$16,8648($sp)
	jr	$31
	daddiu	$sp,$sp,8736

	.align	3
.L32:
	beq	$3,$0,.L35
	ld	$6,%got_disp(_ZN4x26510primitivesE)($28)

	dlsa	$3,$5,$5,3
	dlsa	$2,$2,$2,2
	dsll	$16,$2,4
	dlsa	$2,$3,$5,4
	sw	$10,8612($sp)
	dlsa	$2,$2,$16,4
	sra	$3,$11,$13
	daddu	$2,$6,$2
	daddiu	$20,$sp,31
	sw	$3,8608($sp)
	ld	$25,6184($2)
	dsrl	$20,$20,5
	move	$8,$10
	lw	$7,8608($sp)
	dsll	$20,$20,5
	move	$5,$18
	sd	$6,8616($sp)
	li	$9,1			# 0x1
	move	$6,$20
	jalr	$25
	sd	$7,8624($sp)

	move	$6,$23
	lw	$9,612($17)
	move	$8,$22
	move	$7,$19
	ld	$23,8616($sp)
	ld	$3,8624($sp)
	dlsa	$2,$9,$9,3
	lw	$5,8608($sp)
	dlsa	$2,$2,$9,4
	dlsa	$2,$2,$16,4
	dlsa	$3,$3,$20,1
	daddu	$2,$23,$2
	sd	$3,8624($sp)
	ld	$25,6160($2)
	jalr	$25
	move	$4,$3

	lw	$11,612($17)
	move	$6,$20
	lw	$10,8612($sp)
	move	$5,$18
	move	$4,$21
	lw	$7,8608($sp)
	li	$9,1			# 0x1
	dlsa	$2,$11,$11,3
	dlsa	$2,$2,$11,4
	dlsa	$2,$2,$16,4
	daddu	$2,$23,$2
	ld	$25,6184($2)
	jalr	$25
	move	$8,$10

	lw	$9,612($17)
	move	$8,$22
	ld	$3,8624($sp)
	move	$7,$19
	move	$6,$fp
	lw	$5,8608($sp)
	dlsa	$2,$9,$9,3
	dlsa	$2,$2,$9,4
	dlsa	$16,$2,$16,4
	daddu	$22,$23,$16
	ld	$25,6160($22)
	jalr	$25
	move	$4,$3

	b	.L36
	ld	$31,8728($sp)

	.align	3
.L35:
	dlsa	$3,$5,$5,3
	ld	$20,%got_disp(_ZN4x26510primitivesE)($28)
	dlsa	$2,$2,$2,2
	dsll	$16,$2,4
	dlsa	$2,$3,$5,4
	dlsa	$2,$2,$16,4
	move	$7,$19
	daddu	$2,$20,$2
	move	$6,$23
	ld	$25,6144($2)
	move	$5,$18
	jalr	$25
	move	$8,$22

	lw	$3,612($17)
	move	$8,$22
	move	$7,$19
	move	$6,$fp
	move	$5,$18
	dlsa	$2,$3,$3,3
	dlsa	$2,$2,$3,4
	dlsa	$16,$2,$16,4
	daddu	$16,$20,$16
	ld	$25,6144($16)
	jalr	$25
	move	$4,$21

	b	.L36
	ld	$31,8728($sp)

	.set	macro
	.set	reorder
	.end	_ZNK4x2657Predict20predInterChromaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE
	.size	_ZNK4x2657Predict20predInterChromaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE, .-_ZNK4x2657Predict20predInterChromaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE
	.align	2
	.align	3
	.globl	_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE
	.type	_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE, @function
_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE:
	.frame	$sp,8736,$31		# vars= 8640, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-8736
	lw	$12,8($5)
	li	$10,1			# 0x1
	sd	$28,8712($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE)))
	daddu	$28,$28,$25
	sd	$fp,8720($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE)))
	sd	$23,8704($sp)
	ld	$3,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	sd	$19,8672($sp)
	sd	$18,8664($sp)
	sd	$17,8656($sp)
	move	$17,$4
	sd	$16,8648($sp)
	sd	$31,8728($sp)
	sd	$22,8696($sp)
	sd	$21,8688($sp)
	sd	$20,8680($sp)
	lw	$11,620($4)
	dext	$4,$12,0,32
	daddu	$3,$3,$4
	lw	$15,40($6)
	lbu	$2,0($3)
	ld	$9,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	subu	$11,$10,$11
	lw	$19,28($6)
	sra	$2,$2,$15
	lw	$14,36($6)
	daddu	$9,$9,$4
	lh	$13,2($8)
	lbu	$4,0($9)
	mul	$9,$2,$19
	dext	$19,$19,0,32
	lw	$3,4($5)
	ld	$18,64($7)
	sll	$11,$13,$11
	sra	$4,$4,$14
	lw	$14,16($5)
	dsra	$16,$11,3
	ld	$25,112($7)
	addu	$3,$3,$12
	lwu	$13,0($5)
	dext	$3,$3,0,32
	ld	$24,96($7)
	sra	$14,$14,2
	lw	$12,616($17)
	dlsa	$3,$3,$25,3
	lh	$15,0($8)
	gsdmultu	$8,$16,$18
	dlsa	$13,$13,$24,3
	ld	$13,0($13)
	subu	$10,$10,$12
	sll	$10,$15,$10
	addu	$2,$9,$4
	lw	$9,12($5)
	ld	$5,0($3)
	dsll	$2,$2,1
	sra	$4,$9,2
	lsa	$4,$4,$14,4
	dsra	$14,$10,3
	addiu	$3,$4,-17
	ld	$4,%got_disp(_ZN4x26521lumaPartitionMapTableE)($28)
	daddu	$8,$8,$14
	daddu	$5,$5,$13
	daddu	$5,$5,$8
	daddu	$3,$4,$3
	ld	$4,32($7)
	ld	$21,40($7)
	or	$7,$10,$11
	ld	$23,8($6)
	ld	$fp,16($6)
	andi	$6,$7,0x7
	daddu	$4,$4,$5
	daddu	$21,$21,$5
	lbu	$3,0($3)
	daddu	$23,$23,$2
	lw	$5,612($17)
	bne	$6,$0,.L38
	daddu	$fp,$fp,$2

	dlsa	$3,$3,$3,2
	ld	$20,%got_disp(_ZN4x26510primitivesE)($28)
	dlsa	$2,$5,$5,3
	dsll	$16,$3,4
	dlsa	$2,$2,$5,4
	dlsa	$2,$2,$16,4
	move	$7,$19
	daddu	$2,$20,$2
	move	$6,$23
	ld	$25,6208($2)
	jalr	$25
	move	$5,$18

	lw	$2,612($17)
	move	$7,$19
	move	$6,$fp
	move	$5,$18
	dlsa	$3,$2,$2,3
	dlsa	$3,$3,$2,4
	dlsa	$16,$3,$16,4
	daddu	$16,$20,$16
	ld	$25,6208($16)
	jalr	$25
	move	$4,$21

	ld	$31,8728($sp)
.L44:
	ld	$fp,8720($sp)
	ld	$28,8712($sp)
	ld	$23,8704($sp)
	ld	$22,8696($sp)
	ld	$21,8688($sp)
	ld	$20,8680($sp)
	ld	$19,8672($sp)
	ld	$18,8664($sp)
	ld	$17,8656($sp)
	ld	$16,8648($sp)
	jr	$31
	daddiu	$sp,$sp,8736

	.align	3
.L38:
	andi	$22,$10,0x7
	andi	$11,$11,0x7
	bne	$11,$0,.L40
	move	$2,$22

	ld	$20,%got_disp(_ZN4x26510primitivesE)($28)
	dlsa	$3,$3,$3,2
	dlsa	$2,$5,$5,3
	dsll	$16,$3,4
	dlsa	$2,$2,$5,4
	dlsa	$2,$2,$16,4
	move	$7,$19
	daddu	$2,$20,$2
	move	$6,$23
	ld	$25,6184($2)
	move	$5,$18
	move	$8,$22
	jalr	$25
	move	$9,$0

	lw	$2,612($17)
	move	$8,$22
	move	$7,$19
	move	$6,$fp
	move	$5,$18
	move	$4,$21
	dlsa	$3,$2,$2,3
	dlsa	$3,$3,$2,4
	dlsa	$16,$3,$16,4
	daddu	$16,$20,$16
	ld	$25,6184($16)
	jalr	$25
	move	$9,$0

	ld	$31,8728($sp)
	ld	$fp,8720($sp)
	ld	$28,8712($sp)
	ld	$23,8704($sp)
	ld	$22,8696($sp)
	ld	$21,8688($sp)
	ld	$20,8680($sp)
	ld	$19,8672($sp)
	ld	$18,8664($sp)
	ld	$17,8656($sp)
	ld	$16,8648($sp)
	jr	$31
	daddiu	$sp,$sp,8736

	.align	3
.L40:
	beq	$2,$0,.L43
	ld	$6,%got_disp(_ZN4x26510primitivesE)($28)

	dlsa	$3,$3,$3,2
	dlsa	$2,$5,$5,3
	dsll	$16,$3,4
	dlsa	$2,$2,$5,4
	sw	$11,8612($sp)
	dlsa	$2,$2,$16,4
	sra	$3,$9,$12
	daddu	$2,$6,$2
	daddiu	$20,$sp,31
	sw	$3,8608($sp)
	ld	$25,6184($2)
	dsrl	$20,$20,5
	move	$8,$22
	lw	$7,8608($sp)
	dsll	$20,$20,5
	move	$5,$18
	sd	$6,8616($sp)
	li	$9,1			# 0x1
	move	$6,$20
	jalr	$25
	sd	$7,8624($sp)

	move	$6,$23
	lw	$9,612($17)
	move	$7,$19
	ld	$23,8616($sp)
	ld	$3,8624($sp)
	dlsa	$2,$9,$9,3
	lw	$11,8612($sp)
	dlsa	$2,$2,$9,4
	lw	$5,8608($sp)
	dlsa	$2,$2,$16,4
	dlsa	$3,$3,$20,1
	daddu	$2,$23,$2
	move	$4,$3
	sd	$3,8632($sp)
	ld	$25,6168($2)
	move	$8,$11
	jalr	$25
	sw	$11,8624($sp)

	lw	$12,612($17)
	move	$8,$22
	lw	$7,8608($sp)
	move	$6,$20
	move	$5,$18
	move	$4,$21
	dlsa	$2,$12,$12,3
	dlsa	$2,$2,$12,4
	dlsa	$2,$2,$16,4
	daddu	$2,$23,$2
	ld	$25,6184($2)
	jalr	$25
	li	$9,1			# 0x1

	lw	$9,612($17)
	move	$7,$19
	lw	$11,8624($sp)
	move	$6,$fp
	ld	$3,8632($sp)
	dlsa	$2,$9,$9,3
	lw	$5,8608($sp)
	dlsa	$2,$2,$9,4
	move	$8,$11
	dlsa	$16,$2,$16,4
	daddu	$22,$23,$16
	ld	$25,6168($22)
	jalr	$25
	move	$4,$3

	b	.L44
	ld	$31,8728($sp)

	.align	3
.L43:
	dlsa	$3,$3,$3,2
	ld	$20,%got_disp(_ZN4x26510primitivesE)($28)
	dlsa	$2,$5,$5,3
	dsll	$16,$3,4
	dlsa	$2,$2,$5,4
	sw	$11,8608($sp)
	dlsa	$2,$2,$16,4
	move	$8,$11
	daddu	$2,$20,$2
	move	$7,$19
	ld	$25,6152($2)
	move	$6,$23
	jalr	$25
	move	$5,$18

	lw	$3,612($17)
	move	$7,$19
	lw	$11,8608($sp)
	move	$6,$fp
	move	$5,$18
	move	$4,$21
	dlsa	$2,$3,$3,3
	dlsa	$2,$2,$3,4
	dlsa	$16,$2,$16,4
	daddu	$16,$20,$16
	ld	$25,6152($16)
	jalr	$25
	move	$8,$11

	b	.L44
	ld	$31,8728($sp)

	.set	macro
	.set	reorder
	.end	_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE
	.size	_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE, .-_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE
	.align	2
	.align	3
	.globl	_ZNK4x2657Predict11addWeightBiERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvES8_PKNS0_12WeightValuesESB_bb
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2657Predict11addWeightBiERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvES8_PKNS0_12WeightValuesESB_bb
	.type	_ZNK4x2657Predict11addWeightBiERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvES8_PKNS0_12WeightValuesESB_bb, @function
_ZNK4x2657Predict11addWeightBiERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvES8_PKNS0_12WeightValuesESB_bb:
	.frame	$sp,160,$31		# vars= 80, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-160
	lbu	$2,160($sp)
	sd	$28,144($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2657Predict11addWeightBiERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvES8_PKNS0_12WeightValuesESB_bb)))
	daddu	$28,$28,$25
	sd	$23,136($sp)
	move	$23,$9
	sd	$fp,152($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2657Predict11addWeightBiERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvES8_PKNS0_12WeightValuesESB_bb)))
	sd	$22,128($sp)
	sd	$21,120($sp)
	sd	$20,112($sp)
	sd	$19,104($sp)
	sd	$18,96($sp)
	sd	$17,88($sp)
	sd	$16,80($sp)
	sd	$2,8($sp)
	beq	$11,$0,.L46
	sd	$10,0($sp)

	lwu	$4,8($5)
	move	$11,$0
	ld	$2,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	lw	$22,24($6)
	lw	$21,24($7)
	daddu	$2,$2,$4
	ld	$3,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	lbu	$2,0($2)
	lw	$19,24($8)
	daddu	$3,$3,$4
	lw	$14,4($23)
	mul	$12,$22,$2
	lbu	$25,0($3)
	lw	$3,12($9)
	lw	$10,4($10)
	move	$4,$25
	ld	$9,0($6)
	move	$24,$4
	ld	$4,0($7)
	lw	$13,0($23)
	addu	$10,$14,$10
	mul	$15,$21,$2
	mtlo	$24
	addu	$18,$12,$25
	ld	$25,0($8)
	madd	$19,$2
	addiu	$12,$3,7
	daddu	$18,$9,$18
	addiu	$3,$3,6
	mflo	$2
	dlsa	$25,$2,$25,1
	addu	$16,$15,$24
	beq	$12,$0,.L47
	dlsa	$16,$16,$4,1

	li	$11,1			# 0x1
	sll	$11,$11,$3
.L47:
	lw	$17,16($5)
	ld	$2,0($sp)
	addiu	$17,$17,-1
	bltz	$17,.L46
	lw	$14,0($2)

	dext	$21,$21,0,32
	dext	$19,$19,0,32
	sd	$6,16($sp)
	sll	$10,$10,$3
	dsll	$21,$21,1
	dsll	$19,$19,1
	dext	$22,$22,0,32
	li	$15,255			# 0xff
	li	$20,-1			# 0xffffffffffffffff
	.align	3
.L50:
	lw	$2,12($5)
	addiu	$2,$2,-1
	bltz	$2,.L48
	move	$4,$2

	dsll	$9,$4,1
	dext	$2,$2,2,30
	daddiu	$24,$9,-8
	dsll	$2,$2,3
	dsubu	$2,$24,$2
	daddu	$3,$16,$9
	daddu	$4,$18,$4
	daddu	$9,$25,$9
	daddu	$24,$16,$2
	.align	3
.L49:
	daddiu	$3,$3,-8
	lh	$2,8($3)
	daddiu	$4,$4,-4
	lh	$fp,0($9)
	daddiu	$9,$9,-8
	addiu	$2,$2,8192
	mul	$6,$2,$13
	addiu	$fp,$fp,8192
	gsmultu	$fp,$fp,$14
	addu	$2,$6,$fp
	addu	$2,$2,$11
	addu	$2,$2,$10
	sra	$2,$2,$12
	slt	$fp,$2,256
	movz	$2,$15,$fp
	slt	$fp,$2,0
	movn	$2,$0,$fp
	sb	$2,4($4)
	lh	$2,6($3)
	lh	$fp,6($9)
	addiu	$2,$2,8192
	mul	$6,$2,$13
	addiu	$fp,$fp,8192
	gsmultu	$fp,$fp,$14
	addu	$2,$6,$fp
	addu	$2,$2,$11
	addu	$2,$2,$10
	sra	$2,$2,$12
	slt	$fp,$2,256
	movz	$2,$15,$fp
	slt	$fp,$2,0
	movn	$2,$0,$fp
	sb	$2,3($4)
	lh	$2,4($3)
	lh	$fp,4($9)
	addiu	$2,$2,8192
	mul	$6,$2,$13
	addiu	$fp,$fp,8192
	gsmultu	$fp,$fp,$14
	addu	$2,$6,$fp
	addu	$2,$2,$11
	addu	$2,$2,$10
	sra	$2,$2,$12
	slt	$fp,$2,256
	movz	$2,$15,$fp
	slt	$fp,$2,0
	movn	$2,$0,$fp
	sb	$2,2($4)
	lh	$2,2($3)
	lh	$fp,2($9)
	addiu	$2,$2,8192
	mul	$6,$2,$13
	addiu	$fp,$fp,8192
	gsmultu	$fp,$fp,$14
	addu	$2,$6,$fp
	addu	$2,$2,$11
	addu	$2,$2,$10
	sra	$2,$2,$12
	slt	$fp,$2,256
	movz	$2,$15,$fp
	slt	$fp,$2,0
	movn	$2,$0,$fp
	bne	$24,$3,.L49
	sb	$2,1($4)

.L48:
	addiu	$17,$17,-1
	daddu	$16,$16,$21
	daddu	$25,$25,$19
	bne	$17,$20,.L50
	daddu	$18,$18,$22

	ld	$6,16($sp)
.L46:
	ld	$2,8($sp)
	beq	$2,$0,.L79
	ld	$fp,152($sp)

	lwu	$4,8($5)
	move	$9,$0
	ld	$3,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	ld	$2,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	lw	$14,40($8)
	daddu	$3,$3,$4
	lw	$13,40($7)
	daddu	$2,$2,$4
	lbu	$15,0($3)
	lbu	$11,0($2)
	lw	$3,36($8)
	lw	$10,40($6)
	lw	$12,36($7)
	sra	$24,$11,$14
	sra	$fp,$11,$13
	lw	$4,28($7)
	sra	$14,$15,$3
	ld	$17,8($7)
	lw	$3,28($8)
	sra	$2,$15,$12
	sra	$15,$15,$10
	ld	$7,16($7)
	mul	$10,$fp,$4
	lw	$25,44($6)
	lw	$18,28($6)
	sd	$7,40($sp)
	sra	$11,$11,$25
	lw	$19,24($23)
	ld	$25,8($6)
	ld	$6,16($6)
	sd	$6,48($sp)
	mul	$7,$24,$3
	mtlo	$15
	addu	$fp,$10,$2
	ld	$10,0($sp)
	madd	$11,$18
	lw	$2,32($23)
	dsll	$fp,$fp,1
	lw	$16,24($10)
	addiu	$10,$2,7
	addiu	$2,$2,6
	addu	$6,$19,$16
	ld	$16,8($8)
	addu	$14,$7,$14
	ld	$7,16($8)
	lw	$8,20($23)
	sd	$7,32($sp)
	dsll	$7,$14,1
	sd	$7,8($sp)
	mflo	$7
	beq	$10,$0,.L52
	sd	$7,16($sp)

	li	$9,1			# 0x1
	sll	$9,$9,$2
.L52:
	lw	$7,16($5)
	ld	$11,0($sp)
	lw	$5,12($5)
	sra	$13,$7,$13
	addiu	$13,$13,-1
	lw	$11,20($11)
	sra	$12,$5,$12
	bltz	$13,.L45
	move	$24,$13

	addiu	$5,$12,-1
	dext	$12,$4,0,32
	move	$15,$5
	sw	$5,72($sp)
	dext	$5,$3,0,32
	ld	$3,16($sp)
	dsll	$14,$15,1
	dsll	$20,$12,1
	daddu	$4,$fp,$14
	sd	$12,64($sp)
	sll	$7,$6,$2
	dsll	$19,$5,1
	dext	$18,$18,0,32
	sd	$5,56($sp)
	daddu	$21,$15,$3
	ld	$3,8($sp)
	daddu	$17,$17,$4
	daddu	$25,$25,$21
	li	$12,255			# 0xff
	sd	$21,24($sp)
	daddu	$3,$3,$14
	daddu	$16,$16,$3
	.align	3
.L56:
	bltz	$15,.L53
	nop

	move	$5,$25
	move	$4,$16
	move	$3,$17
	move	$6,$15
	.align	3
.L54:
	daddiu	$3,$3,-4
	lh	$2,4($3)
	daddiu	$5,$5,-2
	lh	$22,0($4)
	daddiu	$4,$4,-4
	addiu	$6,$6,-2
	addiu	$2,$2,8192
	mul	$21,$2,$8
	addiu	$22,$22,8192
	gsmultu	$22,$22,$11
	addu	$2,$21,$22
	addu	$2,$2,$9
	addu	$2,$2,$7
	sra	$2,$2,$10
	slt	$22,$2,256
	movz	$2,$12,$22
	slt	$22,$2,0
	movn	$2,$0,$22
	sb	$2,2($5)
	lh	$2,2($3)
	lh	$22,2($4)
	addiu	$2,$2,8192
	mul	$21,$2,$8
	addiu	$22,$22,8192
	gsmultu	$22,$22,$11
	addu	$2,$21,$22
	addu	$2,$2,$9
	addu	$2,$2,$7
	sra	$2,$2,$10
	slt	$22,$2,256
	movz	$2,$12,$22
	slt	$22,$2,0
	movn	$2,$0,$22
	bgez	$6,.L54
	sb	$2,1($5)

.L53:
	addiu	$13,$13,-1
	li	$2,-1			# 0xffffffffffffffff
	daddu	$17,$17,$20
	daddu	$16,$16,$19
	bne	$13,$2,.L56
	daddu	$25,$25,$18

	ld	$8,0($sp)
	move	$5,$0
	lw	$11,52($23)
	lw	$2,44($23)
	lw	$4,44($8)
	addiu	$6,$11,7
	addiu	$3,$11,6
	lw	$7,40($23)
	lw	$8,40($8)
	beq	$6,$0,.L60
	addu	$11,$4,$2

	ld	$2,64($sp)
	li	$5,1			# 0x1
	lw	$15,72($sp)
	sll	$5,$5,$3
	dsll	$20,$2,1
	ld	$2,56($sp)
	dsll	$14,$15,1
	dsll	$19,$2,1
	ld	$2,16($sp)
	daddu	$2,$15,$2
	sd	$2,24($sp)
.L60:
	sll	$11,$11,$3
	ld	$3,40($sp)
	daddu	$fp,$fp,$14
	ld	$2,8($sp)
	dext	$25,$15,1,31
	li	$12,255			# 0xff
	ld	$4,24($sp)
	li	$16,-1			# 0xffffffffffffffff
	daddu	$fp,$3,$fp
	ld	$3,32($sp)
	daddu	$14,$2,$14
	dsll	$2,$25,2
	li	$25,-4			# 0xfffffffffffffffc
	daddu	$14,$3,$14
	ld	$3,48($sp)
	dsubu	$25,$25,$2
	daddu	$23,$3,$4
	.align	3
.L59:
	bltz	$15,.L57
	nop

	daddu	$10,$25,$fp
	move	$9,$23
	move	$4,$14
	move	$3,$fp
	.align	3
.L58:
	daddiu	$3,$3,-4
	lh	$2,4($3)
	daddiu	$9,$9,-2
	lh	$13,0($4)
	daddiu	$4,$4,-4
	addiu	$2,$2,8192
	mul	$17,$2,$7
	addiu	$13,$13,8192
	gsmultu	$13,$13,$8
	addu	$2,$17,$13
	addu	$2,$2,$5
	addu	$2,$2,$11
	sra	$2,$2,$6
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	sb	$2,2($9)
	lh	$2,2($3)
	lh	$13,2($4)
	addiu	$2,$2,8192
	mul	$17,$2,$7
	addiu	$13,$13,8192
	gsmultu	$13,$13,$8
	addu	$2,$17,$13
	addu	$2,$2,$5
	addu	$2,$2,$11
	sra	$2,$2,$6
	slt	$13,$2,256
	movz	$2,$12,$13
	slt	$13,$2,0
	movn	$2,$0,$13
	bne	$3,$10,.L58
	sb	$2,1($9)

.L57:
	addiu	$24,$24,-1
	daddu	$fp,$fp,$20
	daddu	$14,$14,$19
	bne	$24,$16,.L59
	daddu	$23,$23,$18

.L45:
	ld	$fp,152($sp)
.L79:
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
	.end	_ZNK4x2657Predict11addWeightBiERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvES8_PKNS0_12WeightValuesESB_bb
	.size	_ZNK4x2657Predict11addWeightBiERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvES8_PKNS0_12WeightValuesESB_bb, .-_ZNK4x2657Predict11addWeightBiERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvES8_PKNS0_12WeightValuesESB_bb
	.align	2
	.align	3
	.globl	_ZNK4x2657Predict12addWeightUniERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvEPKNS0_12WeightValuesEbb
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2657Predict12addWeightUniERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvEPKNS0_12WeightValuesEbb
	.type	_ZNK4x2657Predict12addWeightUniERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvEPKNS0_12WeightValuesEbb, @function
_ZNK4x2657Predict12addWeightUniERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvEPKNS0_12WeightValuesEbb:
	.frame	$sp,96,$31		# vars= 0, regs= 10/0, args= 16, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$28,80($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2657Predict12addWeightUniERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvEPKNS0_12WeightValuesEbb)))
	daddu	$28,$28,$25
	sd	$20,48($sp)
	move	$20,$10
	sd	$19,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2657Predict12addWeightUniERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvEPKNS0_12WeightValuesEbb)))
	move	$19,$6
	sd	$18,32($sp)
	move	$18,$7
	sd	$17,24($sp)
	move	$17,$5
	sd	$16,16($sp)
	move	$16,$8
	sd	$31,88($sp)
	sd	$23,72($sp)
	sd	$22,64($sp)
	beq	$9,$0,.L81
	sd	$21,56($sp)

	lwu	$4,8($5)
	move	$11,$0
	ld	$2,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	lw	$7,24($6)
	ld	$3,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	daddu	$2,$2,$4
	lw	$6,24($18)
	lbu	$2,0($2)
	daddu	$3,$3,$4
	lw	$8,12($8)
	lbu	$4,0($3)
	mul	$9,$7,$2
	ld	$3,0($19)
	addiu	$12,$8,6
	lw	$10,0($16)
	move	$5,$4
	ld	$4,0($18)
	move	$14,$5
	lw	$13,8($16)
	mtlo	$14
	madd	$6,$2
	mflo	$2
	dlsa	$4,$2,$4,1
	addu	$5,$9,$5
	bne	$12,$0,.L99
	daddu	$5,$3,$5

.L82:
	ld	$2,%got_disp(_ZN4x26510primitivesE)($28)
	dext	$7,$7,0,32
	dext	$6,$6,0,32
	lw	$9,16($17)
	lw	$8,12($17)
	ld	$25,5952($2)
	sd	$13,8($sp)
	jalr	$25
	sd	$12,0($sp)

.L81:
	beq	$20,$0,.L80
	move	$11,$0

	lwu	$4,8($17)
	ld	$2,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	ld	$3,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	lw	$8,40($18)
	daddu	$2,$2,$4
	lw	$10,44($19)
	lbu	$2,0($2)
	daddu	$3,$3,$4
	lw	$6,28($18)
	lbu	$4,0($3)
	lw	$20,28($19)
	sra	$3,$2,$8
	sra	$2,$2,$10
	mul	$10,$3,$6
	lw	$7,40($19)
	lw	$9,36($18)
	ld	$22,16($19)
	ld	$12,8($18)
	sra	$5,$4,$9
	sra	$4,$4,$7
	lw	$7,32($16)
	ld	$21,16($18)
	lw	$15,28($16)
	addiu	$14,$7,6
	mul	$13,$2,$20
	addu	$3,$10,$5
	ld	$5,8($19)
	dsll	$3,$3,1
	lw	$10,20($16)
	daddu	$21,$21,$3
	addu	$2,$13,$4
	daddu	$4,$12,$3
	daddu	$5,$5,$2
	beq	$14,$0,.L84
	daddu	$22,$22,$2

	addiu	$7,$7,5
	li	$11,1			# 0x1
	sll	$11,$11,$7
.L84:
	ld	$23,%got_disp(_ZN4x26510primitivesE)($28)
	dext	$19,$6,0,32
	dext	$20,$20,0,32
	lw	$13,12($17)
	move	$7,$20
	move	$6,$19
	lw	$12,16($17)
	ld	$25,5952($23)
	sra	$13,$13,$9
	sd	$15,8($sp)
	sra	$12,$12,$8
	move	$8,$13
	sd	$14,0($sp)
	move	$9,$12
	move	$18,$13
	jalr	$25
	move	$17,$12

	lw	$2,52($16)
	move	$11,$0
	lw	$10,40($16)
	addiu	$3,$2,6
	bne	$3,$0,.L100
	lw	$4,48($16)

.L85:
	ld	$25,5952($23)
	move	$9,$17
	move	$8,$18
	sd	$4,8($sp)
	move	$7,$20
	move	$6,$19
	move	$5,$22
	move	$4,$21
	jalr	$25
	sd	$3,0($sp)

.L80:
	ld	$31,88($sp)
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

	.align	3
.L100:
	addiu	$2,$2,5
	li	$11,1			# 0x1
	b	.L85
	sll	$11,$11,$2

	.align	3
.L99:
	addiu	$8,$8,5
	li	$11,1			# 0x1
	b	.L82
	sll	$11,$11,$8

	.set	macro
	.set	reorder
	.end	_ZNK4x2657Predict12addWeightUniERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvEPKNS0_12WeightValuesEbb
	.size	_ZNK4x2657Predict12addWeightUniERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvEPKNS0_12WeightValuesEbb, .-_ZNK4x2657Predict12addWeightUniERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvEPKNS0_12WeightValuesEbb
	.align	2
	.align	3
	.globl	_ZN4x2657Predict18motionCompensationERKNS_6CUDataERKNS_14PredictionUnitERNS_3YuvEbb
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657Predict18motionCompensationERKNS_6CUDataERKNS_14PredictionUnitERNS_3YuvEbb
	.type	_ZN4x2657Predict18motionCompensationERKNS_6CUDataERKNS_14PredictionUnitERNS_3YuvEbb, @function
_ZN4x2657Predict18motionCompensationERKNS_6CUDataERKNS_14PredictionUnitERNS_3YuvEbb:
	.frame	$sp,304,$31		# vars= 192, regs= 11/0, args= 16, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-304
	li	$2,1			# 0x1
	sd	$fp,288($sp)
	sd	$28,280($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2657Predict18motionCompensationERKNS_6CUDataERKNS_14PredictionUnitERNS_3YuvEbb)))
	sd	$21,256($sp)
	daddu	$28,$28,$25
	move	$21,$6
	sd	$20,248($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2657Predict18motionCompensationERKNS_6CUDataERKNS_14PredictionUnitERNS_3YuvEbb)))
	move	$20,$8
	sd	$19,240($sp)
	move	$19,$4
	sd	$18,232($sp)
	move	$18,$9
	sd	$17,224($sp)
	move	$17,$5
	sd	$31,296($sp)
	sd	$23,272($sp)
	sd	$22,264($sp)
	sd	$16,216($sp)
	ld	$23,56($5)
	ld	$4,168($17)
	lwu	$5,8($6)
	ld	$3,176($17)
	lw	$fp,2264($23)
	daddu	$4,$4,$5
	sd	$7,160($sp)
	dsll	$6,$5,2
	daddu	$3,$3,$5
	lb	$22,0($4)
	beq	$fp,$2,.L232
	lb	$10,0($3)

	ld	$2,8($23)
	lbu	$2,21($2)
	bne	$2,$0,.L233
	nop

	bltz	$22,.L234
	daddiu	$fp,$sp,16

	ld	$2,376($17)
	bltz	$10,.L235
	daddu	$2,$2,$6

	move	$11,$0
	move	$16,$0
.L118:
	ld	$3,384($17)
	daddiu	$23,$sp,152
	daddiu	$7,$sp,144
	lw	$2,0($2)
	move	$4,$17
	move	$5,$23
	ld	$25,%call16(_ZNK4x2656CUData6clipMvERNS_2MVE)($28)
	daddiu	$fp,$19,48
	daddu	$6,$3,$6
	sd	$11,184($sp)
	sw	$2,152($sp)
	lw	$2,0($6)
	sd	$10,176($sp)
	sd	$7,168($sp)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData6clipMvERNS_2MVE
1:	jalr	$25
	sw	$2,144($sp)

	move	$4,$17
	ld	$25,%call16(_ZNK4x2656CUData6clipMvERNS_2MVE)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData6clipMvERNS_2MVE
1:	jalr	$25
	ld	$5,168($sp)

	ld	$10,176($sp)
	bne	$20,$0,.L236
	ld	$11,184($sp)

.L125:
	bne	$18,$0,.L237
	move	$8,$23

.L126:
	beq	$16,$0,.L254
	ld	$25,%call16(_ZN4x2653Yuv6addAvgERKNS_8ShortYuvES3_jjjbb)($28)

	beq	$11,$0,.L254
	nop

	lbu	$2,12($16)
	bne	$2,$0,.L255
	ld	$6,160($sp)

	lbu	$2,12($11)
	beq	$2,$0,.L256
	move	$11,$18

	ld	$6,160($sp)
.L255:
	move	$11,$20
	daddiu	$10,$sp,16
	ld	$25,%got_disp(_ZNK4x2657Predict11addWeightBiERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvES8_PKNS0_12WeightValuesESB_bb)($28)
	daddiu	$9,$sp,80
	move	$8,$fp
	move	$7,$19
	move	$5,$21
	sd	$18,0($sp)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2657Predict11addWeightBiERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvES8_PKNS0_12WeightValuesESB_bb
1:	jalr	$25
	move	$4,$19

	b	.L251
	ld	$31,296($sp)

	.align	3
.L233:
	bltz	$22,.L238
	dlsa	$2,$22,$22,1

	dlsa	$2,$2,$23,4
	bltz	$10,.L147
	daddiu	$16,$2,560

	dlsa	$11,$10,$10,1
	dlsa	$23,$11,$23,4
	beq	$16,$0,.L115
	daddiu	$11,$23,1328

	lbu	$2,12($16)
	bne	$2,$0,.L257
	seb	$8,$18

	lbu	$2,12($11)
	bne	$2,$0,.L258
	li	$4,3			# 0x3

.L115:
	move	$23,$16
.L141:
	seb	$5,$18
	li	$3,3			# 0x3
	li	$2,1			# 0x1
	daddiu	$4,$sp,80
	movn	$2,$3,$5
	sd	$4,168($sp)
	move	$3,$4
	move	$5,$2
	move	$2,$16
	dlsa	$5,$5,$16,4
	beq	$2,$5,.L120
	li	$13,1			# 0x1

.L239:
	lw	$4,4($2)
	move	$7,$0
	daddiu	$2,$2,16
	sw	$4,0($3)
	lw	$4,-8($2)
	sw	$4,8($3)
	lw	$4,-16($2)
	addiu	$8,$4,-1
	beq	$4,$0,.L121
	sw	$4,12($3)

	sll	$7,$13,$8
.L121:
	sw	$7,16($3)
	bne	$2,$5,.L239
	daddiu	$3,$3,20

.L120:
	bgez	$22,.L240
	daddiu	$fp,$sp,16

	ld	$2,384($17)
	move	$4,$17
	ld	$25,%call16(_ZNK4x2656CUData6clipMvERNS_2MVE)($28)
	move	$5,$fp
	sd	$11,184($sp)
	daddu	$6,$2,$6
	sd	$10,176($sp)
	lw	$2,0($6)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData6clipMvERNS_2MVE
1:	jalr	$25
	sw	$2,16($sp)

	ld	$11,184($sp)
	beq	$11,$0,.L136
	ld	$10,176($sp)

	lbu	$2,12($11)
	beq	$2,$0,.L136
	nop

	bne	$20,$0,.L241
	move	$8,$fp

.L137:
	bne	$18,$0,.L242
	move	$8,$fp

.L138:
	ld	$8,168($sp)
.L252:
	move	$10,$18
	move	$9,$20
.L230:
	ld	$6,160($sp)
	move	$7,$19
	move	$5,$21
	ld	$25,%got_disp(_ZNK4x2657Predict12addWeightUniERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvEPKNS0_12WeightValuesEbb)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2657Predict12addWeightUniERKNS_14PredictionUnitERNS_3YuvERKNS_8ShortYuvEPKNS0_12WeightValuesEbb
1:	jalr	$25
	move	$4,$19

	ld	$31,296($sp)
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
.L232:
	ld	$2,376($17)
	daddiu	$3,$sp,80
	move	$4,$17
	ld	$25,%call16(_ZNK4x2656CUData6clipMvERNS_2MVE)($28)
	move	$5,$3
	sd	$3,168($sp)
	daddu	$6,$2,$6
	lw	$2,0($6)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData6clipMvERNS_2MVE
1:	jalr	$25
	sw	$2,80($sp)

	ld	$4,56($17)
	ld	$2,8($4)
	lbu	$2,20($2)
	beq	$2,$0,.L103
	dlsa	$16,$22,$22,1

	dlsa	$23,$16,$23,4
	lbu	$2,572($23)
	beq	$2,$0,.L103
	daddiu	$23,$23,560

	seb	$5,$18
	li	$2,3			# 0x3
	movn	$fp,$2,$5
	li	$8,1			# 0x1
	move	$5,$fp
	daddiu	$fp,$sp,16
	move	$2,$fp
	dlsa	$5,$5,$23,4
.L106:
	beq	$5,$23,.L104
	move	$6,$0

	lw	$3,4($23)
	daddiu	$23,$23,16
	sw	$3,0($2)
	lw	$3,-8($23)
	sw	$3,8($2)
	lw	$3,-16($23)
	addiu	$7,$3,-1
	beq	$3,$0,.L105
	sw	$3,12($2)

	sll	$6,$8,$7
.L105:
	sw	$6,16($2)
	b	.L106
	daddiu	$2,$2,20

	.align	3
.L103:
	bne	$20,$0,.L243
	ld	$8,168($sp)

.L110:
	bne	$18,$0,.L244
	nop

.L101:
	ld	$31,296($sp)
.L251:
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
.L147:
	b	.L115
	move	$11,$0

	.align	3
.L236:
	ld	$2,56($17)
	move	$8,$23
	move	$6,$19
	ld	$25,%got_disp(_ZNK4x2657Predict18predInterLumaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE)($28)
	move	$5,$21
	move	$4,$19
	sd	$11,192($sp)
	dlsa	$2,$22,$2,3
	ld	$7,288($2)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2657Predict18predInterLumaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE
1:	jalr	$25
	sd	$25,184($sp)

	ld	$10,176($sp)
	move	$6,$fp
	ld	$2,56($17)
	move	$5,$21
	move	$4,$19
	ld	$8,168($sp)
	ld	$25,184($sp)
	dlsa	$2,$10,$2,3
	jalr	$25
	ld	$7,424($2)

	ld	$11,192($sp)
	b	.L125
	ld	$10,176($sp)

	.align	3
.L237:
	ld	$2,56($17)
	move	$6,$19
	ld	$23,%got_disp(_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE)($28)
	move	$5,$21
	move	$4,$19
	sd	$11,184($sp)
	dlsa	$9,$22,$2,3
	sd	$10,176($sp)
	move	$25,$23
	.reloc	1f,R_MIPS_JALR,_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE
1:	jalr	$25
	ld	$7,288($9)

	ld	$2,56($17)
	move	$6,$fp
	ld	$10,176($sp)
	move	$5,$21
	move	$4,$19
	ld	$8,168($sp)
	move	$25,$23
	dlsa	$10,$10,$2,3
	.reloc	1f,R_MIPS_JALR,_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE
1:	jalr	$25
	ld	$7,424($10)

	b	.L126
	ld	$11,184($sp)

	.align	3
.L257:
	li	$4,3			# 0x3
	.align	3
.L258:
	li	$3,1			# 0x1
	move	$2,$16
	movn	$3,$4,$8
	daddiu	$7,$11,4
	move	$8,$3
	daddiu	$4,$sp,80
	dlsa	$8,$8,$16,4
	daddiu	$3,$sp,16
	beq	$2,$8,.L245
	li	$15,1			# 0x1

.L117:
	lw	$5,4($2)
	daddiu	$4,$4,20
	daddiu	$2,$2,16
	daddiu	$7,$7,16
	daddiu	$3,$3,20
	sw	$5,-20($4)
	lw	$5,-8($2)
	sw	$5,-16($4)
	lw	$5,-16($2)
	move	$13,$5
	sll	$5,$15,$5
	sw	$13,-8($4)
	sw	$5,-4($4)
	lw	$14,-16($7)
	sw	$14,-20($3)
	lw	$14,-12($7)
	sw	$13,-8($3)
	sw	$5,-4($3)
	bne	$2,$8,.L117
	sw	$14,-16($3)

.L245:
	ld	$2,376($17)
	b	.L118
	daddu	$2,$2,$6

	.align	3
.L254:
	move	$11,$18
	.align	3
.L256:
	move	$10,$20
	lw	$9,16($21)
	move	$6,$fp
	move	$5,$19
	lw	$8,12($21)
	ld	$4,160($sp)
	.reloc	1f,R_MIPS_JALR,_ZN4x2653Yuv6addAvgERKNS_8ShortYuvES3_jjjbb
1:	jalr	$25
	lw	$7,8($21)

	ld	$31,296($sp)
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
.L238:
	bltz	$10,.L146
	dlsa	$2,$10,$10,1

	dlsa	$2,$2,$23,4
	move	$23,$0
	daddiu	$16,$2,1328
	b	.L141
	move	$11,$16

	.align	3
.L234:
	ld	$2,384($17)
	move	$4,$17
	ld	$25,%call16(_ZNK4x2656CUData6clipMvERNS_2MVE)($28)
	move	$5,$fp
	sd	$10,168($sp)
	daddu	$6,$2,$6
	lw	$2,0($6)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData6clipMvERNS_2MVE
1:	jalr	$25
	sw	$2,16($sp)

	ld	$10,168($sp)
.L136:
	bne	$20,$0,.L246
	move	$8,$fp

.L140:
	beq	$18,$0,.L101
	move	$8,$fp

	ld	$2,56($17)
	move	$5,$21
	ld	$6,160($sp)
	move	$4,$19
	ld	$25,%got_disp(_ZNK4x2657Predict20predInterChromaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE)($28)
	dlsa	$10,$10,$2,3
	.reloc	1f,R_MIPS_JALR,_ZNK4x2657Predict20predInterChromaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE
1:	jalr	$25
	ld	$7,424($10)

	b	.L251
	ld	$31,296($sp)

	.align	3
.L235:
	lw	$2,0($2)
	daddiu	$fp,$sp,16
	move	$4,$17
	ld	$25,%call16(_ZNK4x2656CUData6clipMvERNS_2MVE)($28)
	move	$5,$fp
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData6clipMvERNS_2MVE
1:	jalr	$25
	sw	$2,16($sp)

.L131:
	bne	$20,$0,.L247
	move	$8,$fp

.L135:
	beq	$18,$0,.L251
	ld	$31,296($sp)

	ld	$2,56($17)
	move	$8,$fp
.L231:
	dlsa	$9,$22,$2,3
	ld	$6,160($sp)
	move	$5,$21
	ld	$25,%got_disp(_ZNK4x2657Predict20predInterChromaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE)($28)
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,_ZNK4x2657Predict20predInterChromaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE
1:	jalr	$25
	ld	$7,288($9)

	ld	$31,296($sp)
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
.L247:
	ld	$2,56($17)
	move	$5,$21
	ld	$6,160($sp)
	move	$4,$19
	ld	$25,%got_disp(_ZNK4x2657Predict18predInterLumaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE)($28)
	dlsa	$2,$22,$2,3
	.reloc	1f,R_MIPS_JALR,_ZNK4x2657Predict18predInterLumaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE
1:	jalr	$25
	ld	$7,288($2)

	b	.L135
	nop

	.align	3
.L244:
	ld	$2,56($17)
	b	.L231
	ld	$8,168($sp)

	.align	3
.L146:
	move	$16,$0
	move	$23,$0
	b	.L141
	move	$11,$16

	.align	3
.L104:
	bne	$20,$0,.L248
	ld	$8,168($sp)

.L107:
	bne	$18,$0,.L249
	move	$6,$19

	move	$10,$18
.L253:
	move	$9,$20
	b	.L230
	move	$8,$fp

	.align	3
.L243:
	dlsa	$4,$22,$4,3
	move	$5,$21
	ld	$7,288($4)
	move	$4,$19
	ld	$25,%got_disp(_ZNK4x2657Predict18predInterLumaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2657Predict18predInterLumaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE
1:	jalr	$25
	ld	$6,160($sp)

	b	.L110
	nop

	.align	3
.L242:
	ld	$2,56($17)
	move	$6,$19
	ld	$25,%got_disp(_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE)($28)
	move	$5,$21
	move	$4,$19
	dlsa	$10,$10,$2,3
	.reloc	1f,R_MIPS_JALR,_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE
1:	jalr	$25
	ld	$7,424($10)

	b	.L252
	ld	$8,168($sp)

	.align	3
.L241:
	ld	$2,56($17)
	move	$6,$19
	ld	$25,%got_disp(_ZNK4x2657Predict18predInterLumaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE)($28)
	move	$5,$21
	move	$4,$19
	dlsa	$2,$10,$2,3
	.reloc	1f,R_MIPS_JALR,_ZNK4x2657Predict18predInterLumaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE
1:	jalr	$25
	ld	$7,424($2)

	b	.L137
	ld	$10,176($sp)

	.align	3
.L249:
	ld	$2,56($17)
	move	$5,$21
	ld	$8,168($sp)
	move	$4,$19
	ld	$25,%got_disp(_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE)($28)
	dlsa	$9,$22,$2,3
	.reloc	1f,R_MIPS_JALR,_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE
1:	jalr	$25
	ld	$7,288($9)

	b	.L253
	move	$10,$18

	.align	3
.L248:
	dlsa	$4,$22,$4,3
	move	$6,$19
	ld	$7,288($4)
	move	$5,$21
	ld	$25,%got_disp(_ZNK4x2657Predict18predInterLumaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2657Predict18predInterLumaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE
1:	jalr	$25
	move	$4,$19

	b	.L107
	nop

	.align	3
.L246:
	ld	$2,56($17)
	move	$5,$21
	ld	$6,160($sp)
	move	$4,$19
	ld	$25,%got_disp(_ZNK4x2657Predict18predInterLumaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE)($28)
	dlsa	$2,$10,$2,3
	sd	$10,168($sp)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2657Predict18predInterLumaPixelERKNS_14PredictionUnitERNS_3YuvERKNS_6PicYuvERKNS_2MVE
1:	jalr	$25
	ld	$7,424($2)

	b	.L140
	ld	$10,168($sp)

	.align	3
.L240:
	ld	$2,376($17)
	move	$16,$23
	bgez	$10,.L118
	daddu	$2,$2,$6

	lw	$2,0($2)
	daddiu	$fp,$sp,16
	move	$4,$17
	ld	$25,%call16(_ZNK4x2656CUData6clipMvERNS_2MVE)($28)
	move	$5,$fp
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData6clipMvERNS_2MVE
1:	jalr	$25
	sw	$2,16($sp)

	beq	$23,$0,.L131
	nop

	lbu	$2,12($23)
	beq	$2,$0,.L131
	nop

	bne	$20,$0,.L250
	move	$8,$fp

.L132:
	beq	$18,$0,.L138
	move	$8,$fp

	ld	$2,56($17)
	move	$6,$19
	ld	$25,%got_disp(_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE)($28)
	move	$5,$21
	move	$4,$19
	dlsa	$9,$22,$2,3
	.reloc	1f,R_MIPS_JALR,_ZNK4x2657Predict20predInterChromaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE
1:	jalr	$25
	ld	$7,288($9)

	b	.L252
	ld	$8,168($sp)

	.align	3
.L250:
	ld	$2,56($17)
	move	$6,$19
	ld	$25,%got_disp(_ZNK4x2657Predict18predInterLumaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE)($28)
	move	$5,$21
	move	$4,$19
	dlsa	$2,$22,$2,3
	.reloc	1f,R_MIPS_JALR,_ZNK4x2657Predict18predInterLumaShortERKNS_14PredictionUnitERNS_8ShortYuvERKNS_6PicYuvERKNS_2MVE
1:	jalr	$25
	ld	$7,288($2)

	b	.L132
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x2657Predict18motionCompensationERKNS_6CUDataERKNS_14PredictionUnitERNS_3YuvEbb
	.size	_ZN4x2657Predict18motionCompensationERKNS_6CUDataERKNS_14PredictionUnitERNS_3YuvEbb, .-_ZN4x2657Predict18motionCompensationERKNS_6CUDataERKNS_14PredictionUnitERNS_3YuvEbb
	.align	2
	.align	3
	.globl	_ZN4x2657Predict16predIntraLumaAngEjPhlj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657Predict16predIntraLumaAngEjPhlj
	.type	_ZN4x2657Predict16predIntraLumaAngEjPhlj, @function
_ZN4x2657Predict16predIntraLumaAngEjPhlj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$13,%hi(%neg(%gp_rel(_ZN4x2657Predict16predIntraLumaAngEjPhlj)))
	dext	$11,$5,0,32
	daddu	$13,$13,$25
	addiu	$12,$8,-2
	daddiu	$13,$13,%lo(%neg(%gp_rel(_ZN4x2657Predict16predIntraLumaAngEjPhlj)))
	li	$3,1			# 0x1
	ld	$10,%got_disp(_ZN4x26518g_intraFilterFlagsE)($13)
	sll	$9,$3,$8
	dsll	$2,$12,5
	dsubu	$2,$2,$12
	sltu	$8,$8,5
	dlsa	$2,$2,$11,1
	daddu	$10,$10,$11
	lbu	$3,0($10)
	move	$10,$7
	ld	$7,%got_disp(_ZN4x26510primitivesE)($13)
	and	$3,$3,$9
	dlsa	$2,$2,$7,3
	move	$7,$5
	ld	$25,3416($2)
	sltu	$2,$0,$3
	move	$5,$10
	dsll	$3,$2,7
	daddu	$2,$3,$2
	dlsa	$2,$2,$4,1
	move	$4,$6
	jr	$25
	daddiu	$6,$2,96

	.set	macro
	.set	reorder
	.end	_ZN4x2657Predict16predIntraLumaAngEjPhlj
	.size	_ZN4x2657Predict16predIntraLumaAngEjPhlj, .-_ZN4x2657Predict16predIntraLumaAngEjPhlj
	.align	2
	.align	3
	.globl	_ZN4x2657Predict18predIntraChromaAngEjPhlj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657Predict18predIntraChromaAngEjPhlj
	.type	_ZN4x2657Predict18predIntraChromaAngEjPhlj, @function
_ZN4x2657Predict18predIntraChromaAngEjPhlj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$9,612($4)
	lui	$11,%hi(%neg(%gp_rel(_ZN4x2657Predict18predIntraChromaAngEjPhlj)))
	li	$2,3			# 0x3
	daddu	$11,$11,$25
	move	$3,$4
	move	$10,$7
	daddiu	$11,$11,%lo(%neg(%gp_rel(_ZN4x2657Predict18predIntraChromaAngEjPhlj)))
	move	$4,$6
	beq	$9,$2,.L266
	addiu	$7,$8,-2

	li	$6,96			# 0x60
	dsll	$2,$7,5
	daddu	$6,$3,$6
	ld	$3,%got_disp(_ZN4x26510primitivesE)($11)
	dext	$9,$5,0,32
	dsubu	$2,$2,$7
	move	$8,$0
	dlsa	$2,$2,$9,1
	move	$7,$5
	dlsa	$2,$2,$3,3
	ld	$25,3416($2)
	jr	$25
	move	$5,$10

	.align	3
.L266:
	ld	$2,%got_disp(_ZN4x26518g_intraFilterFlagsE)($11)
	dext	$9,$5,0,32
	li	$6,1			# 0x1
	sll	$8,$6,$8
	daddu	$2,$2,$9
	lbu	$6,0($2)
	li	$2,96			# 0x60
	and	$6,$6,$8
	li	$8,354			# 0x162
	movz	$8,$2,$6
	dsll	$2,$7,5
	move	$6,$8
	dsubu	$2,$2,$7
	daddu	$6,$3,$6
	ld	$3,%got_disp(_ZN4x26510primitivesE)($11)
	dlsa	$2,$2,$9,1
	move	$7,$5
	move	$8,$0
	dlsa	$2,$2,$3,3
	ld	$25,3416($2)
	jr	$25
	move	$5,$10

	.set	macro
	.set	reorder
	.end	_ZN4x2657Predict18predIntraChromaAngEjPhlj
	.size	_ZN4x2657Predict18predIntraChromaAngEjPhlj, .-_ZN4x2657Predict18predIntraChromaAngEjPhlj
	.align	2
	.align	3
	.globl	_ZN4x2657Predict18initIntraNeighborsERKNS_6CUDataEjjbPNS0_14IntraNeighborsE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657Predict18initIntraNeighborsERKNS_6CUDataEjjbPNS0_14IntraNeighborsE
	.type	_ZN4x2657Predict18initIntraNeighborsERKNS_6CUDataEjjbPNS0_14IntraNeighborsE, @function
_ZN4x2657Predict18initIntraNeighborsERKNS_6CUDataEjjbPNS0_14IntraNeighborsE:
	.frame	$sp,224,$31		# vars= 128, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-224
	sd	$28,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2657Predict18initIntraNeighborsERKNS_6CUDataEjjbPNS0_14IntraNeighborsE)))
	sd	$20,168($sp)
	daddu	$28,$28,$25
	move	$20,$8
	sd	$16,136($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2657Predict18initIntraNeighborsERKNS_6CUDataEjjbPNS0_14IntraNeighborsE)))
	move	$16,$4
	sd	$31,216($sp)
	sd	$fp,208($sp)
	sd	$23,192($sp)
	sd	$22,184($sp)
	sd	$21,176($sp)
	sd	$19,160($sp)
	sd	$18,152($sp)
	sd	$17,144($sp)
	ld	$2,144($4)
	lbu	$2,0($2)
	subu	$8,$2,$6
	bne	$7,$0,.L304
	sd	$8,32($sp)

	lw	$6,120($4)
	li	$2,2			# 0x2
	li	$4,1			# 0x1
	lw	$7,124($16)
	subu	$3,$2,$6
	subu	$6,$8,$6
	subu	$2,$2,$7
	sd	$6,32($sp)
	sll	$6,$4,$3
	sll	$4,$4,$2
	sd	$6,104($sp)
	sd	$4,112($sp)
.L268:
	ld	$4,32($sp)
	li	$18,1			# 0x1
	daddiu	$11,$20,28
	lw	$6,100($16)
	li	$8,2			# 0x2
	ld	$10,%got_disp(_ZN4x26515g_zscanToRasterE)($28)
	sll	$18,$18,$4
	ld	$19,%got_disp(_ZN4x26515g_rasterToZscanE)($28)
	srl	$2,$18,$2
	addu	$5,$6,$5
	ld	$7,56($16)
	srl	$18,$18,$3
	move	$3,$2
	sd	$2,64($sp)
	move	$4,$3
	sd	$2,80($sp)
	addiu	$3,$2,-1
	dext	$2,$5,0,32
	sll	$4,$4,1
	sd	$10,40($sp)
	dlsa	$2,$2,$10,2
	lw	$9,2264($7)
	move	$10,$18
	lw	$17,0($2)
	move	$2,$4
	move	$6,$5
	sd	$2,96($sp)
	daddu	$22,$11,$2
	sd	$10,72($sp)
	sll	$10,$18,1
	addiu	$2,$17,-1
	lsa	$3,$3,$17,4
	sd	$10,88($sp)
	addu	$2,$2,$18
	dext	$3,$3,0,32
	sd	$11,16($sp)
	dext	$2,$2,0,32
	dlsa	$3,$3,$19,2
	ld	$25,%call16(_ZNK4x2656CUData14getPUAboveLeftERjj)($28)
	dlsa	$2,$2,$19,2
	lw	$3,0($3)
	move	$10,$4
	lw	$2,0($2)
	sd	$10,24($sp)
	sd	$3,56($sp)
	beq	$9,$8,.L269
	sd	$2,48($sp)

	ld	$2,8($7)
	lbu	$2,23($2)
	bne	$2,$0,.L342
	move	$5,$sp

.L269:
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14getPUAboveLeftERjj
1:	jalr	$25
	move	$5,$sp

	ld	$3,48($sp)
	ld	$4,40($sp)
	sltu	$2,$0,$2
	move	$21,$2
	sb	$2,0($22)
	dext	$3,$3,0,32
	ld	$2,16($sp)
	dlsa	$3,$3,$4,2
	ld	$4,24($sp)
	lw	$3,0($3)
	daddiu	$7,$4,1
	daddu	$23,$2,$7
	sltu	$2,$3,$17
	bne	$2,$0,.L288
	move	$22,$0

	move	$fp,$17
	sd	$17,120($sp)
	move	$17,$23
	b	.L291
	move	$23,$3

	.align	3
.L344:
	addiu	$fp,$fp,1
	sb	$2,0($17)
	sltu	$2,$23,$fp
	addiu	$22,$22,1
	bne	$2,$0,.L343
	daddiu	$17,$17,1

.L291:
	dext	$2,$fp,0,32
	ld	$25,%call16(_ZNK4x2656CUData10getPUAboveERjj)($28)
	move	$5,$sp
	dlsa	$2,$2,$19,2
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getPUAboveERjj
1:	jalr	$25
	lw	$6,0($2)

	bne	$2,$0,.L344
	li	$2,1			# 0x1

	addiu	$fp,$fp,1
	sb	$0,0($17)
	sltu	$2,$23,$fp
	beq	$2,$0,.L291
	daddiu	$17,$17,1

.L343:
	ld	$17,120($sp)
	addu	$21,$21,$22
.L288:
	ld	$2,72($sp)
	daddiu	$fp,$2,1
	ld	$2,24($sp)
	daddu	$fp,$fp,$2
	ld	$2,16($sp)
	beq	$18,$0,.L292
	daddu	$fp,$2,$fp

	sd	$17,72($sp)
	move	$22,$0
	move	$17,$fp
	li	$23,1			# 0x1
	b	.L295
	ld	$fp,48($sp)

	.align	3
.L346:
	addiu	$23,$23,1
	sb	$2,0($17)
	sltu	$2,$18,$23
	addiu	$22,$22,1
	bne	$2,$0,.L345
	daddiu	$17,$17,1

.L295:
	ld	$25,%call16(_ZNK4x2656CUData18getPUAboveRightAdiERjjj)($28)
	move	$7,$23
	move	$6,$fp
	move	$5,$sp
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData18getPUAboveRightAdiERjjj
1:	jalr	$25
	move	$4,$16

	bne	$2,$0,.L346
	li	$2,1			# 0x1

	addiu	$23,$23,1
	sb	$0,0($17)
	sltu	$2,$18,$23
	beq	$2,$0,.L295
	daddiu	$17,$17,1

.L345:
	ld	$17,72($sp)
	addu	$21,$21,$22
.L292:
	ld	$3,24($sp)
	ld	$2,56($sp)
	daddiu	$fp,$3,-1
	ld	$3,40($sp)
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	ld	$3,16($sp)
	lw	$22,0($2)
	sltu	$2,$22,$17
	bne	$2,$0,.L296
	daddu	$fp,$3,$fp

	move	$18,$0
	b	.L299
	li	$23,1			# 0x1

	.align	3
.L348:
	addiu	$17,$17,16
	sb	$23,0($fp)
	addiu	$18,$18,1
	sltu	$2,$22,$17
	bne	$2,$0,.L347
	daddiu	$fp,$fp,-1

.L299:
	dext	$2,$17,0,32
	ld	$25,%call16(_ZNK4x2656CUData9getPULeftERjj)($28)
	move	$5,$sp
	dlsa	$2,$2,$19,2
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData9getPULeftERjj
1:	jalr	$25
	lw	$6,0($2)

	bne	$2,$0,.L348
	nop

	addiu	$17,$17,16
	sb	$0,0($fp)
	sltu	$2,$22,$17
	beq	$2,$0,.L299
	daddiu	$fp,$fp,-1

.L347:
	addu	$21,$18,$21
.L296:
	ld	$2,80($sp)
	ld	$23,64($sp)
	daddiu	$19,$2,-1
	ld	$2,16($sp)
	beq	$23,$0,.L287
	daddu	$19,$2,$19

	move	$17,$0
	li	$22,1			# 0x1
	ld	$fp,56($sp)
	b	.L303
	li	$18,1			# 0x1

	.align	3
.L350:
	addiu	$22,$22,1
	sb	$18,0($19)
	addiu	$17,$17,1
	sltu	$2,$23,$22
	bne	$2,$0,.L349
	daddiu	$19,$19,-1

.L303:
	ld	$25,%call16(_ZNK4x2656CUData17getPUBelowLeftAdiERjjj)($28)
	move	$7,$22
	move	$6,$fp
	move	$5,$sp
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData17getPUBelowLeftAdiERjjj
1:	jalr	$25
	move	$4,$16

	bne	$2,$0,.L350
	nop

	addiu	$22,$22,1
	sb	$0,0($19)
	sltu	$2,$23,$22
	beq	$2,$0,.L303
	daddiu	$19,$19,-1

.L349:
	addu	$21,$17,$21
.L287:
	ld	$3,88($sp)
	ld	$4,96($sp)
	ld	$31,216($sp)
	sw	$21,0($20)
	addu	$2,$3,$4
	sw	$3,8($20)
	addiu	$2,$2,1
	sw	$4,12($20)
	sw	$2,4($20)
	ld	$2,104($sp)
	ld	$fp,208($sp)
	ld	$28,200($sp)
	sw	$2,16($20)
	ld	$2,112($sp)
	ld	$23,192($sp)
	ld	$22,184($sp)
	sw	$2,20($20)
	ld	$2,32($sp)
	ld	$21,176($sp)
	ld	$19,160($sp)
	sw	$2,24($20)
	ld	$18,152($sp)
	ld	$20,168($sp)
	ld	$17,144($sp)
	ld	$16,136($sp)
	jr	$31
	daddiu	$sp,$sp,224

	.align	3
.L304:
	li	$2,4			# 0x4
	li	$3,2			# 0x2
	sd	$2,112($sp)
	sd	$2,104($sp)
	b	.L268
	li	$2,2			# 0x2

	.align	3
.L342:
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14getPUAboveLeftERjj
1:	jalr	$25
	move	$4,$16

	beq	$2,$0,.L305
	move	$21,$0

	lwu	$3,0($sp)
	ld	$2,192($2)
	daddu	$2,$2,$3
	lbu	$3,0($2)
	xori	$3,$3,0x2
	sltu	$3,$3,1
	move	$21,$3
.L270:
	ld	$2,48($sp)
	sb	$3,0($22)
	ld	$3,40($sp)
	dext	$2,$2,0,32
	ld	$4,24($sp)
	dlsa	$2,$2,$3,2
	ld	$3,16($sp)
	lw	$22,0($2)
	daddiu	$8,$4,1
	sltu	$2,$22,$17
	bne	$2,$0,.L271
	daddu	$23,$3,$8

	move	$fp,$17
	sd	$0,120($sp)
	.align	3
.L274:
	dext	$2,$fp,0,32
	ld	$25,%call16(_ZNK4x2656CUData10getPUAboveERjj)($28)
	move	$5,$sp
	dlsa	$2,$2,$19,2
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getPUAboveERjj
1:	jalr	$25
	lw	$6,0($2)

	beq	$2,$0,.L272
	li	$3,2			# 0x2

	ld	$2,192($2)
	lwu	$4,0($sp)
	daddu	$2,$2,$4
	lbu	$2,0($2)
	beq	$2,$3,.L351
	ld	$2,120($sp)

.L272:
	sb	$0,0($23)
.L273:
	addiu	$fp,$fp,1
	sltu	$2,$22,$fp
	beq	$2,$0,.L274
	daddiu	$23,$23,1

	ld	$2,120($sp)
	addu	$21,$2,$21
.L271:
	ld	$2,72($sp)
	daddiu	$9,$2,1
	ld	$2,24($sp)
	daddu	$9,$9,$2
	ld	$2,16($sp)
	beq	$18,$0,.L275
	daddu	$23,$2,$9

	sd	$17,120($sp)
	move	$17,$23
	li	$fp,1			# 0x1
	ld	$23,48($sp)
	li	$22,2			# 0x2
	sd	$0,72($sp)
	.align	3
.L278:
	ld	$25,%call16(_ZNK4x2656CUData18getPUAboveRightAdiERjjj)($28)
	move	$7,$fp
	move	$6,$23
	move	$5,$sp
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData18getPUAboveRightAdiERjjj
1:	jalr	$25
	move	$4,$16

	beq	$2,$0,.L276
	lwu	$4,0($sp)

	ld	$2,192($2)
	daddu	$2,$2,$4
	lbu	$2,0($2)
	beq	$2,$22,.L352
	ld	$2,72($sp)

.L276:
	sb	$0,0($17)
.L277:
	addiu	$fp,$fp,1
	sltu	$2,$18,$fp
	beq	$2,$0,.L278
	daddiu	$17,$17,1

	ld	$2,72($sp)
	ld	$17,120($sp)
	addu	$21,$2,$21
.L275:
	ld	$3,24($sp)
	ld	$2,56($sp)
	daddiu	$7,$3,-1
	ld	$3,40($sp)
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	ld	$3,16($sp)
	lw	$18,0($2)
	sltu	$2,$18,$17
	bne	$2,$0,.L279
	daddu	$fp,$3,$7

	move	$23,$0
	li	$22,2			# 0x2
	.align	3
.L282:
	dext	$2,$17,0,32
	ld	$25,%call16(_ZNK4x2656CUData9getPULeftERjj)($28)
	move	$5,$sp
	dlsa	$2,$2,$19,2
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData9getPULeftERjj
1:	jalr	$25
	lw	$6,0($2)

	beq	$2,$0,.L280
	lwu	$3,0($sp)

	ld	$2,192($2)
	daddu	$2,$2,$3
	lbu	$2,0($2)
	beq	$2,$22,.L353
	li	$2,1			# 0x1

.L280:
	sb	$0,0($fp)
.L281:
	addiu	$17,$17,16
	sltu	$2,$18,$17
	beq	$2,$0,.L282
	daddiu	$fp,$fp,-1

	addu	$21,$23,$21
.L279:
	ld	$2,80($sp)
	ld	$fp,64($sp)
	daddiu	$23,$2,-1
	ld	$2,16($sp)
	beq	$fp,$0,.L287
	daddu	$23,$2,$23

	sd	$20,16($sp)
	move	$20,$23
	move	$23,$16
	ld	$16,56($sp)
	move	$18,$0
	li	$22,1			# 0x1
	li	$17,2			# 0x2
	li	$19,1			# 0x1
	.align	3
.L286:
	ld	$25,%call16(_ZNK4x2656CUData17getPUBelowLeftAdiERjjj)($28)
	move	$7,$22
	move	$6,$16
	move	$5,$sp
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData17getPUBelowLeftAdiERjjj
1:	jalr	$25
	move	$4,$23

	beq	$2,$0,.L284
	lwu	$4,0($sp)

	ld	$2,192($2)
	daddu	$2,$2,$4
	lbu	$2,0($2)
	beq	$2,$17,.L354
	nop

.L284:
	sb	$0,0($20)
.L285:
	addiu	$22,$22,1
	sltu	$2,$fp,$22
	beq	$2,$0,.L286
	daddiu	$20,$20,-1

	ld	$20,16($sp)
	b	.L287
	addu	$21,$18,$21

	.align	3
.L354:
	addiu	$18,$18,1
	b	.L285
	sb	$19,0($20)

	.align	3
.L353:
	addiu	$23,$23,1
	b	.L281
	sb	$2,0($fp)

	.align	3
.L352:
	addiu	$2,$2,1
	sd	$2,72($sp)
	li	$2,1			# 0x1
	b	.L277
	sb	$2,0($17)

	.align	3
.L351:
	addiu	$2,$2,1
	sd	$2,120($sp)
	li	$2,1			# 0x1
	b	.L273
	sb	$2,0($23)

	.align	3
.L305:
	b	.L270
	move	$3,$0

	.set	macro
	.set	reorder
	.end	_ZN4x2657Predict18initIntraNeighborsERKNS_6CUDataEjjbPNS0_14IntraNeighborsE
	.size	_ZN4x2657Predict18initIntraNeighborsERKNS_6CUDataEjjbPNS0_14IntraNeighborsE, .-_ZN4x2657Predict18initIntraNeighborsERKNS_6CUDataEjjbPNS0_14IntraNeighborsE
	.align	2
	.align	3
	.globl	_ZN4x2657Predict20fillReferenceSamplesEPKhlRKNS0_14IntraNeighborsEPh
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657Predict20fillReferenceSamplesEPKhlRKNS0_14IntraNeighborsEPh
	.type	_ZN4x2657Predict20fillReferenceSamplesEPKhlRKNS0_14IntraNeighborsEPh, @function
_ZN4x2657Predict20fillReferenceSamplesEPKhlRKNS0_14IntraNeighborsEPh:
	.frame	$sp,448,$31		# vars= 352, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$3,24($6)
	daddiu	$sp,$sp,-448
	lw	$2,0($6)
	sd	$28,424($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2657Predict20fillReferenceSamplesEPKhlRKNS0_14IntraNeighborsEPh)))
	sd	$17,368($sp)
	li	$17,2			# 0x2
	daddu	$28,$28,$25
	sll	$17,$17,$3
	sd	$16,360($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2657Predict20fillReferenceSamplesEPKhlRKNS0_14IntraNeighborsEPh)))
	sd	$31,440($sp)
	addiu	$16,$17,1
	sd	$fp,432($sp)
	sd	$23,416($sp)
	sd	$22,408($sp)
	sd	$21,400($sp)
	sd	$20,392($sp)
	sd	$19,384($sp)
	bne	$2,$0,.L408
	sd	$18,376($sp)

	move	$3,$7
	move	$2,$0
	li	$5,-128			# 0xffffffffffffff80
	.align	3
.L361:
	addiu	$2,$2,1
	sb	$5,0($3)
	sltu	$4,$2,$16
	bne	$4,$0,.L361
	daddiu	$3,$3,1

	beq	$17,$0,.L355
	sll	$17,$17,1

	li	$3,-128			# 0xffffffffffffff80
	addiu	$17,$17,1
	.align	3
.L363:
	dext	$2,$16,0,32
	addiu	$16,$16,1
	daddu	$2,$7,$2
	bne	$17,$16,.L363
	sb	$3,0($2)

.L355:
	ld	$31,440($sp)
.L413:
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

	.align	3
.L408:
	lw	$23,4($6)
	move	$9,$5
	nor	$5,$0,$5
	move	$19,$7
	move	$10,$4
	move	$18,$6
	dext	$21,$16,0,32
	beq	$2,$23,.L409
	daddu	$5,$4,$5

	lw	$6,8($6)
	lw	$fp,12($18)
	lw	$22,16($18)
	lw	$7,20($18)
	addiu	$6,$6,1
	gsmultu	$6,$6,$22
	gsmultu	$11,$fp,$7
	addu	$3,$11,$6
	blez	$3,.L366
	daddiu	$20,$18,28

	addiu	$3,$3,-1
	daddiu	$2,$sp,1
	dext	$3,$3,0,32
	move	$4,$sp
	daddu	$3,$2,$3
	b	.L367
	li	$8,-128			# 0xffffffffffffff80

	.align	3
.L410:
	daddiu	$2,$2,1
.L367:
	sb	$8,0($4)
	bne	$2,$3,.L410
	move	$4,$2

.L366:
	daddu	$2,$20,$fp
	lbu	$2,0($2)
	beq	$2,$0,.L371
	daddu	$8,$sp,$11

	blez	$22,.L371
	lbu	$4,0($5)

	addiu	$3,$22,-1
	move	$2,$8
	dext	$3,$3,0,32
	daddiu	$3,$3,1
	daddu	$3,$3,$8
	.align	3
.L372:
	sb	$4,0($2)
	daddiu	$2,$2,1
	bne	$3,$2,.L372
	nop

.L371:
	blez	$11,.L369
	addiu	$4,$11,-1

	daddiu	$5,$8,-2
	dext	$4,$4,0,32
	daddiu	$3,$10,-1
	daddiu	$2,$8,-1
	dsubu	$5,$5,$4
	.align	3
.L373:
	lbu	$4,0($3)
	daddiu	$2,$2,-1
	daddu	$3,$3,$9
	bne	$5,$2,.L373
	sb	$4,1($2)

.L369:
	ld	$25,%call16(memcpy)($28)
	daddu	$4,$11,$22
	subu	$6,$6,$22
	dsubu	$5,$10,$9
	daddu	$4,$sp,$4
	sd	$7,320($sp)
	sd	$8,336($sp)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	sd	$11,328($sp)

	lbu	$2,28($18)
	bne	$2,$0,.L390
	ld	$7,320($sp)

	slt	$2,$23,2
	ld	$11,328($sp)
	bne	$2,$0,.L392
	ld	$8,336($sp)

	lbu	$2,29($18)
	bne	$2,$0,.L392
	nop

	daddiu	$18,$18,30
	b	.L376
	li	$3,1			# 0x1

	.align	3
.L377:
	lbu	$2,-1($18)
	bne	$2,$0,.L414
	slt	$2,$3,$fp

.L376:
	addiu	$3,$3,1
	bne	$23,$3,.L377
	daddiu	$18,$18,1

	move	$3,$23
.L375:
	slt	$2,$3,$fp
.L414:
	beq	$2,$0,.L378
	subu	$2,$7,$22

	gsmultu	$2,$7,$3
	ld	$25,%call16(memset)($28)
	move	$4,$sp
	sd	$3,336($sp)
	sd	$7,328($sp)
	sw	$2,320($sp)
	lw	$8,320($sp)
	move	$6,$8
	daddu	$8,$sp,$8
	lbu	$5,0($8)
	sd	$8,320($sp)
.L407:
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	nop

	ld	$8,320($sp)
	ld	$7,328($sp)
	b	.L374
	ld	$3,336($sp)

	.align	3
.L390:
	move	$3,$0
	move	$8,$sp
.L374:
	slt	$2,$3,$23
	beq	$2,$0,.L415
	ld	$25,%call16(memcpy)($28)

	daddu	$20,$20,$3
	b	.L381
	addiu	$3,$3,1

	.align	3
.L382:
	move	$4,$3
	slt	$2,$2,$fp
	move	$5,$7
	movz	$5,$22,$2
	slt	$2,$4,$23
	daddu	$8,$8,$5
	daddiu	$20,$20,1
	beq	$2,$0,.L380
	addiu	$3,$3,1

.L381:
	lbu	$2,0($20)
	bne	$2,$0,.L382
	addiu	$2,$3,-1

	addiu	$6,$3,-1
	move	$2,$7
	lbu	$9,-1($8)
	slt	$6,$6,$fp
	movz	$2,$22,$6
	blez	$2,.L384
	move	$6,$2

	addiu	$5,$2,-1
	daddiu	$4,$8,1
	dext	$5,$5,0,32
	move	$2,$8
	daddu	$4,$5,$4
	.align	3
.L385:
	sb	$9,0($2)
	daddiu	$2,$2,1
	bne	$4,$2,.L385
	nop

.L384:
	move	$4,$3
	daddu	$8,$8,$6
	slt	$2,$4,$23
	daddiu	$20,$20,1
	bne	$2,$0,.L381
	addiu	$3,$3,1

.L380:
	ld	$25,%call16(memcpy)($28)
.L415:
	daddiu	$5,$22,-2
	move	$6,$21
	daddu	$5,$5,$21
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$5,$sp,$5

	slt	$2,$16,2
	bne	$2,$0,.L355
	sll	$17,$17,1

	daddiu	$2,$21,-2
	daddu	$2,$sp,$2
	addiu	$17,$17,1
	.align	3
.L389:
	lbu	$4,0($2)
	daddu	$3,$19,$21
	addiu	$16,$16,1
	daddiu	$2,$2,-1
	dext	$21,$16,0,32
	bne	$17,$16,.L389
	sb	$4,0($3)

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

	.align	3
.L409:
	ld	$25,%call16(memcpy)($28)
	move	$6,$21
	sd	$4,320($sp)
	move	$4,$7
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	sd	$9,328($sp)

	ld	$10,320($sp)
	beq	$17,$0,.L355
	daddiu	$10,$10,-1

	ld	$9,328($sp)
	sll	$17,$17,1
	addiu	$17,$17,1
	.align	3
.L365:
	lbu	$3,0($10)
	daddu	$2,$19,$21
	addiu	$16,$16,1
	daddu	$10,$10,$9
	dext	$21,$16,0,32
	bne	$17,$16,.L365
	sb	$3,0($2)

	b	.L413
	ld	$31,440($sp)

	.align	3
.L378:
	gsmultu	$6,$22,$3
	mul	$4,$2,$fp
	addu	$2,$4,$6
	daddu	$2,$sp,$2
	lbu	$5,0($2)
	bgtz	$fp,.L411
	move	$18,$5

	move	$8,$sp
.L379:
	move	$4,$8
	daddu	$8,$8,$6
	sd	$3,336($sp)
	sd	$7,328($sp)
	move	$5,$18
	ld	$25,%call16(memset)($28)
	sd	$8,320($sp)
	b	.L407
	sd	$8,344($sp)

.L392:
	b	.L375
	li	$3,1			# 0x1

.L411:
	ld	$25,%call16(memset)($28)
	move	$6,$11
	move	$4,$sp
	sd	$3,336($sp)
	sd	$7,328($sp)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sd	$8,320($sp)

	ld	$3,336($sp)
	ld	$8,320($sp)
	slt	$2,$fp,$3
	bne	$2,$0,.L412
	ld	$7,328($sp)

	b	.L374
	move	$3,$fp

.L412:
	subu	$6,$3,$fp
	b	.L379
	gsmultu	$6,$6,$22

	.set	macro
	.set	reorder
	.end	_ZN4x2657Predict20fillReferenceSamplesEPKhlRKNS0_14IntraNeighborsEPh
	.size	_ZN4x2657Predict20fillReferenceSamplesEPKhlRKNS0_14IntraNeighborsEPh, .-_ZN4x2657Predict20fillReferenceSamplesEPKhlRKNS0_14IntraNeighborsEPh
	.align	2
	.align	3
	.globl	_ZN4x2657Predict14initAdiPatternERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEi
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657Predict14initAdiPatternERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEi
	.type	_ZN4x2657Predict14initAdiPatternERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEi, @function
_ZN4x2657Predict14initAdiPatternERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEi:
	.frame	$sp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	lw	$2,8($6)
	move	$6,$8
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2657Predict14initAdiPatternERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEi)))
	sd	$22,56($sp)
	daddu	$28,$28,$25
	sd	$21,48($sp)
	addu	$2,$2,$7
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2657Predict14initAdiPatternERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEi)))
	sd	$20,40($sp)
	dext	$2,$2,0,32
	daddiu	$20,$4,96
	sd	$19,32($sp)
	move	$19,$4
	move	$7,$20
	sd	$18,24($sp)
	move	$18,$8
	move	$21,$9
	sd	$17,16($sp)
	move	$17,$5
	sd	$16,8($sp)
	li	$16,1			# 0x1
	sd	$31,72($sp)
	ld	$3,48($5)
	lwu	$10,96($5)
	lw	$22,24($8)
	ld	$3,32($3)
	ld	$25,%got_disp(_ZN4x2657Predict20fillReferenceSamplesEPKhlRKNS0_14IntraNeighborsEPh)($28)
	sll	$16,$16,$22
	ld	$5,104($3)
	ld	$8,88($3)
	ld	$4,24($3)
	dlsa	$2,$2,$5,3
	ld	$5,56($3)
	dlsa	$10,$10,$8,3
	ld	$2,0($2)
	ld	$3,0($10)
	daddu	$2,$2,$3
	.reloc	1f,R_MIPS_JALR,_ZN4x2657Predict20fillReferenceSamplesEPKhlRKNS0_14IntraNeighborsEPh
1:	jalr	$25
	daddu	$4,$4,$2

	li	$2,-1			# 0xffffffffffffffff
	beq	$21,$2,.L430
	ld	$9,%got_disp(_ZN4x26518g_intraFilterFlagsE)($28)

	daddu	$21,$9,$21
	lbu	$2,0($21)
	and	$2,$2,$16
	sltu	$2,$0,$2
.L418:
	beq	$2,$0,.L432
	ld	$31,72($sp)

	ld	$2,56($17)
	ld	$2,0($2)
	lbu	$2,10106($2)
	bne	$2,$0,.L431
	daddiu	$5,$19,354

.L420:
	lw	$2,24($18)
	move	$4,$20
	ld	$31,72($sp)
	ld	$22,56($sp)
	addiu	$3,$2,-2
	ld	$21,48($sp)
	dsll	$2,$3,5
	ld	$20,40($sp)
	dsubu	$2,$2,$3
	ld	$3,%got_disp(_ZN4x26510primitivesE)($28)
	ld	$19,32($sp)
	ld	$28,64($sp)
	dlsa	$2,$2,$3,4
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	ld	$25,3408($2)
	jr	$25
	daddiu	$sp,$sp,80

	.align	3
.L431:
	li	$2,5			# 0x5
	bne	$22,$2,.L420
	nop

	lbu	$9,96($19)
	lbu	$8,160($19)
	lbu	$3,128($19)
	addu	$2,$9,$8
	sll	$3,$3,1
	subu	$2,$2,$3
	addiu	$2,$2,7
	sltu	$2,$2,15
	beq	$2,$0,.L420
	nop

	lbu	$10,224($19)
	lbu	$4,192($19)
	addu	$3,$9,$10
	sll	$4,$4,1
	subu	$3,$3,$4
	addiu	$3,$3,7
	sltu	$3,$3,15
	beq	$3,$0,.L420
	sll	$4,$9,6

	subu	$2,$10,$9
	sb	$9,354($19)
	subu	$6,$8,$9
	addiu	$4,$4,32
	move	$12,$2
	daddiu	$5,$19,419
	addu	$2,$4,$2
	move	$11,$6
	addu	$4,$4,$6
	daddiu	$3,$19,355
	daddiu	$9,$19,418
	.align	3
.L421:
	sra	$7,$2,6
	sra	$6,$4,6
	daddiu	$3,$3,1
	sb	$7,0($5)
	addu	$2,$2,$12
	sb	$6,-1($3)
	daddiu	$5,$5,1
	bne	$3,$9,.L421
	addu	$4,$11,$4

	sb	$8,418($19)
	sb	$10,482($19)
	ld	$31,72($sp)
.L432:
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
.L430:
	andi	$2,$16,0x38
	b	.L418
	sltu	$2,$0,$2

	.set	macro
	.set	reorder
	.end	_ZN4x2657Predict14initAdiPatternERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEi
	.size	_ZN4x2657Predict14initAdiPatternERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEi, .-_ZN4x2657Predict14initAdiPatternERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEi
	.align	2
	.align	3
	.globl	_ZN4x2657Predict20initAdiPatternChromaERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657Predict20initAdiPatternChromaERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEj
	.type	_ZN4x2657Predict20initAdiPatternChromaERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEj, @function
_ZN4x2657Predict20initAdiPatternChromaERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEj:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	lw	$2,8($6)
	move	$6,$8
	sd	$28,32($sp)
	dext	$9,$9,0,32
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2657Predict20initAdiPatternChromaERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEj)))
	sd	$18,24($sp)
	move	$18,$8
	daddu	$28,$28,$25
	sd	$17,16($sp)
	addu	$2,$2,$7
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2657Predict20initAdiPatternChromaERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEj)))
	sd	$16,8($sp)
	dext	$2,$2,0,32
	move	$16,$4
	sd	$31,40($sp)
	daddiu	$17,$4,96
	ld	$3,48($5)
	move	$7,$17
	lwu	$10,96($5)
	ld	$25,%got_disp(_ZN4x2657Predict20fillReferenceSamplesEPKhlRKNS0_14IntraNeighborsEPh)($28)
	ld	$3,32($3)
	ld	$5,112($3)
	dlsa	$9,$9,$3,3
	ld	$8,96($3)
	ld	$4,24($9)
	dlsa	$2,$2,$5,3
	ld	$5,64($3)
	dlsa	$3,$10,$8,3
	ld	$2,0($2)
	ld	$3,0($3)
	daddu	$2,$2,$3
	.reloc	1f,R_MIPS_JALR,_ZN4x2657Predict20fillReferenceSamplesEPKhlRKNS0_14IntraNeighborsEPh
1:	jalr	$25
	daddu	$4,$4,$2

	lw	$3,612($16)
	li	$2,3			# 0x3
	bne	$3,$2,.L433
	daddiu	$5,$16,354

	lw	$2,24($18)
	move	$4,$17
	ld	$31,40($sp)
	ld	$18,24($sp)
	addiu	$3,$2,-2
	ld	$17,16($sp)
	dsll	$2,$3,5
	ld	$16,8($sp)
	dsubu	$2,$2,$3
	ld	$3,%got_disp(_ZN4x26510primitivesE)($28)
	ld	$28,32($sp)
	dlsa	$2,$2,$3,4
	ld	$25,3408($2)
	jr	$25
	daddiu	$sp,$sp,48

	.align	3
.L433:
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN4x2657Predict20initAdiPatternChromaERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEj
	.size	_ZN4x2657Predict20initAdiPatternChromaERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEj, .-_ZN4x2657Predict20initAdiPatternChromaERKNS_6CUDataERKNS_6CUGeomEjRKNS0_14IntraNeighborsEj
	.ident	"GCC: (GNU) 7.3.0"
