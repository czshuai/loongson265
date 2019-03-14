	.file	1 "quant.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.section	.text._ZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjb,"axG",@progbits,_ZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjb,comdat
	.align	2
	.align	3
	.weak	_ZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.type	_ZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjb, @function
_ZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjb:
	.frame	$sp,2064,$31		# vars= 1968, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-2064
	dext	$3,$7,0,32
	sd	$28,2040($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjb)))
	sd	$23,2032($sp)
	move	$23,$4
	daddu	$28,$28,$25
	sd	$22,2024($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjb)))
	sd	$21,2016($sp)
	daddiu	$21,$4,16
	sd	$20,2008($sp)
	sd	$19,2000($sp)
	li	$19,1			# 0x1
	sd	$18,1992($sp)
	move	$18,$8
	sd	$17,1984($sp)
	move	$17,$9
	li	$9,16			# 0x10
	sd	$16,1976($sp)
	sd	$31,2056($sp)
	sd	$fp,2048($sp)
	ld	$2,192($5)
	sd	$5,1808($sp)
	dext	$5,$8,0,32
	move	$8,$7
	sd	$4,1728($sp)
	dsll	$4,$3,5
	daddu	$2,$2,$5
	daddu	$22,$21,$4
	sd	$5,1944($sp)
	lbu	$2,0($2)
	li	$5,3			# 0x3
	move	$21,$6
	lw	$20,0($22)
	sd	$3,1952($sp)
	xori	$2,$2,0x2
	ld	$3,0($23)
	movz	$5,$0,$2
	ld	$10,%got_disp(_ZN4x26510primitivesE)($28)
	addu	$2,$8,$5
	sd	$7,1832($sp)
	dlsa	$2,$2,$2,1
	lw	$7,4($22)
	dlsa	$20,$2,$20,1
	ld	$25,5704($10)
	dlsa	$2,$20,$3,3
	ld	$4,120($23)
	ld	$5,288($2)
	addiu	$8,$7,18
	sd	$7,1736($sp)
	sll	$8,$19,$8
	addiu	$7,$7,19
	jalr	$25
	sd	$10,1896($sp)

	move	$16,$2
	beq	$16,$0,.L156
	ld	$7,1736($sp)

	lw	$3,24($22)
	lw	$5,116($23)
	ld	$2,0($23)
	mult	$5,$3
	li	$3,1			# 0x1
	sd	$0,1776($sp)
	lbu	$4,2592($2)
	dlsa	$20,$20,$2,3
	ld	$2,16($22)
	sd	$2,1904($sp)
	mflo	$fp
	mfhi	$2
	dins	$fp,$2,32,32
	ld	$2,1440($20)
	sd	$2,1784($sp)
	li	$2,5			# 0x5
	movz	$2,$3,$4
	move	$3,$2
	sd	$2,1824($sp)
	slt	$2,$7,$2
	beq	$2,$0,.L250
	ld	$2,1832($sp)

	subu	$2,$3,$7
	addiu	$2,$2,-1
	sll	$2,$19,$2
	sd	$2,1776($sp)
	ld	$2,1832($sp)
.L250:
	move	$6,$18
	subu	$17,$0,$17
	ld	$25,%call16(_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb)($28)
	li	$7,2			# 0x2
	daddiu	$5,$sp,1448
	ld	$18,%got_disp(_ZN4x2659g_scan4x4E)($28)
	move	$22,$17
	daddiu	$17,$sp,1152
	ld	$4,1808($sp)
	sltu	$8,$2,1
	sd	$22,1488($sp)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb
1:	jalr	$25
	sd	$18,1920($sp)

	ld	$2,1896($sp)
	daddiu	$7,$sp,512
	lwu	$10,1464($sp)
	move	$9,$16
	li	$11,4			# 0x4
	ld	$4,1448($sp)
	move	$8,$17
	move	$5,$21
	ld	$25,5968($2)
	daddiu	$6,$sp,640
	dsll	$10,$10,5
	sd	$7,1840($sp)
	jalr	$25
	daddu	$10,$18,$10

	ld	$23,1728($sp)
	daddiu	$4,$sp,1024
	sd	$2,1712($sp)
	sra	$2,$2,4
	move	$5,$0
	addiu	$20,$2,1
	subu	$16,$0,$2
	ld	$25,%call16(memset)($28)
	sll	$19,$20,4
	ld	$3,8($23)
	sll	$16,$16,4
	move	$18,$19
	dsll	$16,$16,3
	sd	$2,1864($sp)
	dsll	$18,$18,3
	move	$6,$16
	daddu	$4,$4,$18
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sd	$3,1560($sp)

	ld	$25,%call16(memset)($28)
	daddiu	$4,$sp,768
	move	$6,$16
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	daddu	$4,$4,$18

	beq	$22,$0,.L6
	nop

	bgtz	$20,.L128
	nop

	ld	$11,1448($sp)
	move	$10,$19
	move	$22,$0
	ld	$9,120($23)
	li	$12,16			# 0x10
	ld	$8,128($23)
	dext	$2,$10,0,32
	.align	3
.L251:
	dlsa	$2,$2,$11,1
	lhu	$6,0($2)
	addiu	$13,$6,16
.L9:
	addiu	$7,$6,4
.L8:
	dext	$2,$6,0,32
	addiu	$6,$6,1
	dsll	$3,$2,1
	dlsa	$4,$2,$sp,3
	daddu	$2,$9,$3
	daddu	$3,$8,$3
	lh	$5,0($2)
	lh	$2,0($3)
	mult	$5,$5
	subu	$2,$2,$5
	gsdmultu	$2,$2,$fp
	mflo	$3
	mfhi	$14
	dins	$3,$14,32,32
	dsll	$3,$3,5
	dsra	$2,$2,11
	dsubu	$2,$3,$2
	sd	$2,896($4)
	bne	$7,$6,.L8
	daddu	$22,$22,$2

	bne	$7,$13,.L9
	move	$6,$7

	addiu	$10,$10,16
	bne	$10,$12,.L251
	dext	$2,$10,0,32

.L7:
	ld	$5,1864($sp)
.L248:
	bltz	$5,.L129
	li	$4,-1002766336			# 0xffffffffc43b0000

	ld	$7,1448($sp)
	li	$3,-1			# 0xffffffffffffffff
	dsll	$3,$3,63
	lwu	$2,1464($sp)
	ori	$4,$4,0xc433
	daddiu	$3,$3,-1
	lw	$6,1468($sp)
	dsll	$4,$4,16
	sd	$7,1856($sp)
	dlsa	$7,$5,$sp,3
	daddiu	$4,$4,10777
	sd	$7,1672($sp)
	dsll	$2,$2,5
	dsll	$4,$4,17
	ld	$7,1456($sp)
	daddiu	$4,$4,21520
	sd	$5,1656($sp)
	sd	$3,1640($sp)
	sd	$7,1872($sp)
	ld	$7,%got_disp(_ZN4x26513g_goRiceRangeE)($28)
	ld	$3,1920($sp)
	ld	$20,1904($sp)
	sd	$7,1912($sp)
	ld	$7,%got_disp(_ZZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt)($28)
	daddu	$2,$3,$2
	sd	$6,1816($sp)
	addiu	$6,$6,3
	sd	$2,1880($sp)
	move	$2,$6
	sd	$7,1520($sp)
	dsll	$7,$5,4
	sd	$7,1648($sp)
	daddu	$7,$17,$5
	sd	$7,1720($sp)
	ld	$7,1840($sp)
	sd	$21,1512($sp)
	move	$21,$22
	sd	$6,1928($sp)
	dlsa	$7,$5,$7,1
	li	$5,1			# 0x1
	sd	$0,1624($sp)
	sd	$5,1480($sp)
	ld	$5,1560($sp)
	sd	$7,1664($sp)
	sd	$4,1632($sp)
	daddiu	$5,$5,208
	sd	$2,1936($sp)
	sd	$5,1528($sp)
	sd	$fp,1592($sp)
	.align	3
.L80:
	ld	$3,1840($sp)
	ld	$2,1664($sp)
	dsubu	$2,$2,$3
	ld	$3,1816($sp)
	sd	$3,1552($sp)
	ld	$3,1872($sp)
	daddu	$2,$3,$2
	lhu	$2,0($2)
	move	$3,$2
	ld	$2,1656($sp)
	beq	$2,$0,.L15
	sd	$3,1768($sp)

	ld	$2,1832($sp)
	beq	$2,$0,.L16
	ld	$2,1480($sp)

.L15:
	ld	$2,1816($sp)
	move	$11,$2
	ld	$2,1648($sp)
	move	$13,$2
	ld	$2,1728($sp)
	ld	$18,120($2)
	ld	$2,1480($sp)
	sltu	$2,$2,1
	sd	$2,1680($sp)
	ld	$2,1656($sp)
	beq	$2,$0,.L252
	ld	$2,1664($sp)

.L115:
	ld	$2,1720($sp)
	lbu	$2,0($2)
	bne	$2,$0,.L17
	ld	$2,1664($sp)

	ld	$2,1856($sp)
	dlsa	$13,$13,$2,1
	ld	$2,1488($sp)
	beq	$2,$0,.L130
	lhu	$10,0($13)

	ld	$2,1728($sp)
	move	$8,$0
	li	$15,16			# 0x10
	ld	$9,1560($sp)
	ld	$12,1592($sp)
	ld	$14,128($2)
	ld	$13,1648($sp)
	ld	$24,1880($sp)
.L21:
	addiu	$7,$8,4
.L19:
	dext	$2,$8,0,32
	addu	$25,$10,$8
	dext	$25,$25,0,32
	dlsa	$2,$2,$24,1
	lhu	$16,0($2)
	dsll	$2,$25,1
	addu	$5,$13,$8
	daddu	$3,$18,$2
	daddu	$2,$14,$2
	lh	$4,0($2)
	dlsa	$6,$25,$sp,3
	dlsa	$25,$25,$sp,2
	ld	$2,1520($sp)
	dext	$5,$5,0,32
	addiu	$8,$8,1
	lh	$17,0($3)
	dlsa	$5,$5,$sp,3
	daddu	$16,$2,$16
	lbu	$3,0($16)
	mult	$17,$17
	subu	$4,$4,$17
	addu	$3,$3,$11
	dext	$3,$3,0,32
	dlsa	$3,$3,$9,2
	lw	$17,224($3)
	mfhi	$16
	lw	$3,392($3)
	mflo	$2
	gsdmultu	$4,$4,$12
	dins	$2,$16,32,32
	gsdmultu	$16,$17,$20
	subu	$3,$3,$17
	dsll	$2,$2,5
	sw	$3,1216($25)
	dsra	$3,$4,11
	dsubu	$2,$2,$3
	dsra	$3,$16,8
	sd	$2,896($6)
	daddu	$21,$21,$2
	daddu	$22,$22,$2
	sd	$3,768($5)
	bne	$7,$8,.L19
	sd	$2,1024($5)

	bne	$7,$15,.L21
	move	$8,$7

	ld	$3,1768($sp)
.L249:
	ld	$4,1624($sp)
	addiu	$2,$3,1
	sltu	$3,$0,$3
	dsrl	$2,$4,$2
	li	$4,1			# 0x1
	sll	$2,$2,0
	sd	$4,1480($sp)
	and	$2,$2,$3
	ld	$3,1560($sp)
	dlsa	$2,$2,$3,3
	ld	$3,1672($sp)
	lw	$2,208($2)
	gsdmultu	$2,$2,$20
	dsra	$2,$2,8
	daddu	$22,$22,$2
	sd	$2,0($3)
.L23:
	ld	$4,1672($sp)
.L255:
	ld	$2,1656($sp)
	daddiu	$4,$4,-8
	sd	$4,1672($sp)
	addiu	$3,$2,-1
	li	$2,-1			# 0xffffffffffffffff
	ld	$4,1648($sp)
	sd	$3,1656($sp)
	addiu	$4,$4,-16
	sd	$4,1648($sp)
	ld	$4,1720($sp)
	daddiu	$4,$4,-1
	sd	$4,1720($sp)
	ld	$4,1664($sp)
	daddiu	$4,$4,-2
	bne	$3,$2,.L80
	sd	$4,1664($sp)

	move	$20,$22
	move	$22,$21
	ld	$21,1512($sp)
.L14:
	ld	$2,1808($sp)
	li	$4,2			# 0x2
	ld	$6,1944($sp)
	ld	$3,192($2)
	ld	$2,256($2)
	daddu	$3,$3,$6
	lbu	$5,0($3)
	daddu	$2,$2,$6
	beq	$5,$4,.L81
	lbu	$3,0($2)

	ld	$2,1832($sp)
	beq	$2,$0,.L229
	nop

.L81:
	ld	$2,1952($sp)
.L260:
	ld	$4,%got_page(_ZN4x265L6ctxCbfE)($28)
	dlsa	$2,$2,$2,2
	daddiu	$4,$4,%got_ofst(_ZN4x265L6ctxCbfE)
	dlsa	$2,$2,$4,2
	ld	$4,1560($sp)
	dlsa	$2,$3,$2,2
	lw	$2,0($2)
	dlsa	$3,$2,$4,3
	lw	$14,880($3)
	lw	$8,884($3)
.L227:
	ld	$2,1904($sp)
	gsdmultu	$14,$14,$2
	gsdmultu	$8,$8,$2
	ld	$2,1864($sp)
	dsra	$14,$14,8
	dsra	$8,$8,8
	daddu	$14,$14,$22
	bltz	$2,.L230
	daddu	$8,$8,$20

	ld	$2,1864($sp)
	move	$17,$0
	li	$16,1			# 0x1
	ld	$15,%got_disp(_ZN4x26516g_lastCoeffTableE)($28)
	li	$19,-1			# 0xffffffffffffffff
	ld	$23,1904($sp)
	ld	$20,1712($sp)
	sll	$11,$2,4
	move	$13,$2
	ld	$22,1728($sp)
	dsll	$25,$2,1
	dlsa	$24,$2,$sp,3
	addiu	$11,$11,-1
	move	$18,$2
	.align	3
.L94:
	beq	$13,$0,.L85
	nop

	beq	$13,$18,.L85
	ld	$2,1456($sp)

	ld	$3,0($24)
	daddu	$2,$2,$25
	lhu	$2,0($2)
	dsubu	$8,$8,$3
	ld	$3,1624($sp)
	dsrl	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,.L86
	nop

.L85:
	b	.L93
	addiu	$6,$11,16

	.align	3
.L147:
	move	$8,$7
.L87:
	addiu	$6,$6,-1
	beq	$11,$6,.L86
	nop

.L93:
	slt	$2,$20,$6
	bne	$2,$0,.L87
	dext	$3,$6,0,32

	ld	$4,1448($sp)
	dlsa	$2,$3,$sp,3
	ld	$2,768($2)
	dlsa	$4,$3,$4,1
	lhu	$9,0($4)
	dsubu	$7,$8,$2
	dlsa	$2,$9,$21,1
	lh	$4,0($2)
	beq	$4,$0,.L147
	srl	$10,$9,2

	andi	$2,$9,0x3
	ld	$12,8($22)
	move	$5,$9
	lw	$9,1464($sp)
	move	$fp,$2
	dlsa	$3,$3,$sp,3
	dlsa	$5,$5,$sp,3
	xori	$9,$9,0x2
	movz	$fp,$10,$9
	movn	$2,$10,$9
	daddu	$fp,$15,$fp
	lbu	$9,0($fp)
	daddu	$2,$15,$2
	lbu	$2,0($2)
	andi	$10,$9,0xf
	sra	$9,$9,4
	andi	$fp,$2,0xf
	dlsa	$10,$10,$12,2
	lw	$10,560($10)
	dlsa	$12,$fp,$12,2
	sll	$9,$9,15
	lw	$12,600($12)
	sra	$2,$2,4
	sll	$2,$2,15
	addu	$9,$9,$10
	addu	$12,$12,$9
	addu	$2,$2,$12
	dext	$2,$2,0,32
	gsdmultu	$2,$2,$23
	dsra	$2,$2,8
	daddu	$2,$2,$7
	slt	$7,$2,$14
	beq	$7,$0,.L89
	slt	$4,$4,2

	addiu	$17,$6,1
	move	$14,$2
.L89:
	beq	$4,$0,.L253
	ld	$2,1712($sp)

	lw	$2,112($22)
	beq	$2,$16,.L253
	ld	$2,1712($sp)

	ld	$2,1024($3)
	addiu	$6,$6,-1
	ld	$3,896($5)
	dsubu	$8,$8,$2
	bne	$11,$6,.L93
	daddu	$8,$8,$3

	.align	3
.L86:
	addiu	$13,$13,-1
	daddiu	$25,$25,-2
	daddiu	$24,$24,-8
	bne	$13,$19,.L94
	addiu	$11,$11,-16

	ld	$2,1712($sp)
.L253:
	li	$8,-16			# 0xfffffffffffffff0
	and	$8,$17,$8
	addiu	$8,$8,16
	blez	$17,.L231
	subu	$10,$2,$17

	ld	$6,1448($sp)
	addiu	$7,$17,-1
	move	$16,$0
	ld	$2,1728($sp)
	dext	$7,$7,0,32
	daddiu	$5,$6,2
	ld	$9,120($2)
	b	.L97
	dlsa	$7,$7,$5,1

	.align	3
.L232:
	daddiu	$5,$5,2
.L97:
	lhu	$2,0($6)
	move	$6,$5
	dsll	$2,$2,1
	daddu	$3,$9,$2
	daddu	$2,$21,$2
	lh	$4,0($3)
	lh	$3,0($2)
	sra	$4,$4,31
	andi	$4,$4,0xffff
	sltu	$11,$0,$3
	xor	$3,$3,$4
	addu	$16,$11,$16
	subu	$3,$3,$4
	bne	$7,$5,.L232
	sh	$3,0($2)

.L82:
	sra	$3,$10,31
	and	$3,$3,$10
	addu	$3,$3,$17
	ori	$3,$3,0xf
	slt	$2,$3,$17
	bne	$2,$0,.L96
	ld	$2,1448($sp)

	subu	$4,$3,$17
	dext	$4,$4,0,32
	daddu	$4,$4,$17
	daddiu	$3,$2,2
	dlsa	$2,$17,$2,1
	dlsa	$4,$4,$3,1
	.align	3
.L98:
	lhu	$3,0($2)
	daddiu	$2,$2,2
	dlsa	$3,$3,$21,1
	bne	$4,$2,.L98
	sh	$0,0($3)

.L96:
	ld	$3,1712($sp)
	slt	$2,$3,$8
	bne	$2,$0,.L99
	ld	$2,1448($sp)

	subu	$4,$3,$8
	dext	$4,$4,4,28
	dlsa	$4,$4,$8,4
	daddiu	$3,$2,32
	dlsa	$8,$8,$2,1
	dlsa	$4,$4,$3,1
	.align	3
.L100:
	lhu	$3,0($8)
	daddiu	$8,$8,32
	move	$2,$3
	dlsa	$3,$3,$21,1
	daddiu	$6,$2,4
	daddiu	$5,$2,8
	sb	$0,0($3)
	daddiu	$2,$2,12
	dlsa	$6,$6,$21,1
	sb	$0,1($3)
	dlsa	$5,$5,$21,1
	dlsa	$2,$2,$21,1
	sb	$0,2($3)
	sb	$0,3($3)
	sb	$0,4($3)
	sb	$0,5($3)
	sb	$0,6($3)
	sb	$0,7($3)
	sb	$0,0($6)
	sb	$0,1($6)
	sb	$0,2($6)
	sb	$0,3($6)
	sb	$0,4($6)
	sb	$0,5($6)
	sb	$0,6($6)
	sb	$0,7($6)
	sb	$0,0($5)
	sb	$0,1($5)
	sb	$0,2($5)
	sb	$0,3($5)
	sb	$0,4($5)
	sb	$0,5($5)
	sb	$0,6($5)
	sb	$0,7($5)
	sb	$0,0($2)
	sb	$0,1($2)
	sb	$0,2($2)
	sb	$0,3($2)
	sb	$0,4($2)
	sb	$0,5($2)
	sb	$0,6($2)
	bne	$4,$8,.L100
	sb	$0,7($2)

.L99:
	ld	$2,1808($sp)
	ld	$2,56($2)
	ld	$2,8($2)
	lbu	$2,27($2)
	beq	$2,$0,.L156
	sltu	$2,$16,2

	bne	$2,$0,.L156
	addiu	$2,$17,-1

	sra	$2,$2,4
	bltz	$2,.L156
	li	$3,-1			# 0xffffffffffffffff

	sd	$16,1472($sp)
	dsll	$20,$2,1
	ld	$19,1624($sp)
	dsll	$3,$3,63
	dsll	$23,$2,4
	ld	$17,1824($sp)
	daddiu	$2,$3,-1
	li	$18,1			# 0x1
	ld	$16,1776($sp)
	sd	$2,1480($sp)
	.align	3
.L114:
	ld	$2,1456($sp)
	daddu	$2,$2,$20
	lhu	$2,0($2)
	dsrl	$2,$19,$2
	andi	$2,$2,0x1
	beq	$2,$0,.L101
	ld	$2,1896($sp)

	move	$22,$23
	li	$5,4			# 0x4
	lwu	$6,1464($sp)
	ld	$25,5976($2)
	ld	$2,1448($sp)
	dsll	$6,$6,5
	dlsa	$2,$22,$2,1
	lhu	$4,0($2)
	ld	$2,1920($sp)
	dlsa	$4,$4,$21,1
	jalr	$25
	daddu	$6,$2,$6

	move	$4,$2
	andi	$2,$2,0x00ff
	srl	$10,$4,8
	seb	$10,$10
	subu	$3,$10,$2
	slt	$3,$3,4
	bne	$3,$0,.L149
	addu	$3,$23,$2

	ld	$5,1448($sp)
	dlsa	$3,$3,$5,1
	lhu	$3,0($3)
	dlsa	$3,$3,$21,1
	lh	$24,0($3)
	xor	$4,$24,$4
	bltz	$4,.L233
	addu	$3,$23,$10

.L149:
	move	$18,$0
.L101:
	daddiu	$20,$20,-2
	li	$2,-2			# 0xfffffffffffffffe
	bne	$2,$20,.L114
	addiu	$23,$23,-16

	ld	$16,1472($sp)
.L156:
	ld	$31,2056($sp)
	move	$2,$16
	ld	$fp,2048($sp)
	ld	$28,2040($sp)
	ld	$23,2032($sp)
	ld	$22,2024($sp)
	ld	$21,2016($sp)
	ld	$20,2008($sp)
	ld	$19,2000($sp)
	ld	$18,1992($sp)
	ld	$17,1984($sp)
	ld	$16,1976($sp)
	jr	$31
	daddiu	$sp,$sp,2064

	.align	3
.L6:
	bgtz	$20,.L128
	ld	$2,1728($sp)

	move	$10,$19
	move	$22,$0
	ld	$11,1448($sp)
	li	$8,16			# 0x10
	ld	$6,120($2)
	dext	$2,$10,0,32
	.align	3
.L254:
	dlsa	$2,$2,$11,1
	lhu	$4,0($2)
	addiu	$9,$4,16
.L12:
	addiu	$7,$4,4
.L11:
	dext	$2,$4,0,32
	addiu	$4,$4,1
	dlsa	$5,$2,$6,1
	dlsa	$3,$2,$sp,3
	lh	$2,0($5)
	mult	$2,$2
	mflo	$2
	mfhi	$5
	dins	$2,$5,32,32
	dsll	$2,$2,5
	sd	$2,896($3)
	bne	$7,$4,.L11
	daddu	$22,$22,$2

	bne	$7,$9,.L12
	move	$4,$7

	addiu	$10,$10,16
	bne	$10,$8,.L254
	dext	$2,$10,0,32

	b	.L248
	ld	$5,1864($sp)

	.align	3
.L17:
	.align	3
.L252:
	move	$19,$0
	li	$14,15			# 0xf
	ld	$5,1768($sp)
	sd	$0,1408($sp)
	lhu	$3,0($2)
	ld	$2,1680($sp)
	sd	$0,1416($sp)
	move	$24,$3
	ld	$3,1856($sp)
	sll	$4,$2,2
	li	$2,1			# 0x1
	sd	$0,1424($sp)
	dsll	$2,$2,$5
	move	$5,$4
	ld	$4,1712($sp)
	sd	$2,1792($sp)
	dlsa	$13,$13,$3,1
	ld	$2,1728($sp)
	ld	$3,1648($sp)
	sd	$5,1600($sp)
	ld	$2,128($2)
	addiu	$8,$3,15
	ld	$3,1880($sp)
	sd	$4,1504($sp)
	sd	$2,1496($sp)
	li	$2,3			# 0x3
	sd	$2,1848($sp)
	li	$2,1			# 0x1
	daddiu	$12,$3,30
	sd	$0,1432($sp)
	sd	$0,1440($sp)
	sd	$0,1760($sp)
	sd	$0,1752($sp)
	sd	$0,1800($sp)
	sd	$0,1744($sp)
	sd	$0,1584($sp)
	sd	$0,1608($sp)
	sd	$0,1616($sp)
	sd	$0,1576($sp)
	sd	$2,1480($sp)
	b	.L75
	sd	$20,1536($sp)

	.align	3
.L235:
	dext	$2,$5,0,32
	sd	$2,1472($sp)
	dlsa	$2,$2,$sp,3
	sd	$3,896($2)
.L25:
	daddu	$21,$21,$3
	beq	$5,$0,.L26
	move	$2,$0

	lhu	$2,0($12)
	ld	$5,1632($sp)
	sll	$2,$2,2
	dsrl	$2,$5,$2
	ld	$5,1552($sp)
	andi	$2,$2,0xf
	addu	$2,$2,$5
.L26:
	ld	$5,1504($sp)
	sltu	$5,$5,$8
	beq	$5,$0,.L27
	ld	$25,1480($sp)

	dext	$4,$8,0,32
	daddu	$22,$22,$3
	dlsa	$4,$4,$sp,3
	move	$3,$19
	move	$2,$0
	sd	$0,1024($4)
	sd	$0,768($4)
.L28:
	addiu	$14,$14,-1
	li	$4,-1			# 0xffffffffffffffff
	daddiu	$13,$13,-2
	addiu	$8,$8,-1
	beq	$14,$4,.L234
	daddiu	$12,$12,-2

.L143:
	move	$19,$3
.L75:
	lhu	$5,30($13)
	ld	$2,1488($sp)
	dext	$15,$5,0,32
	dsll	$4,$15,1
	and	$7,$2,$8
	ld	$2,1496($sp)
	daddu	$3,$18,$4
	lh	$6,0($3)
	ld	$3,1512($sp)
	daddu	$2,$2,$4
	lh	$10,0($2)
	mult	$6,$6
	move	$11,$6
	daddu	$4,$3,$4
	lh	$9,0($4)
	subu	$10,$10,$6
	mflo	$3
	mfhi	$2
	dins	$3,$2,32,32
	beq	$7,$0,.L235
	dsll	$3,$3,5

	ld	$2,1592($sp)
	dext	$25,$5,0,32
	sd	$25,1472($sp)
	dlsa	$25,$25,$sp,3
	gsdmultu	$2,$10,$2
	dsra	$2,$2,11
	dsubu	$3,$3,$2
	b	.L25
	sd	$3,896($25)

	.align	3
.L27:
	ld	$5,1600($sp)
	ld	$16,1528($sp)
	addu	$5,$5,$25
	andi	$25,$24,0x1
	dext	$5,$5,0,32
	srl	$24,$24,1
	daddiu	$5,$5,54
	bne	$25,$0,.L29
	dlsa	$5,$5,$16,3

	lw	$6,0($5)
	dext	$2,$2,0,32
	dext	$4,$8,0,32
	ld	$5,1560($sp)
	dlsa	$4,$4,$sp,3
	addiu	$14,$14,-1
	ld	$7,1472($sp)
	daddiu	$13,$13,-2
	addiu	$8,$8,-1
	daddiu	$12,$12,-2
	dlsa	$2,$2,$5,2
	lw	$5,224($2)
	dlsa	$7,$7,$sp,2
	lw	$9,392($2)
	ld	$2,1536($sp)
	sw	$6,1344($7)
	gsdmultu	$2,$5,$2
	subu	$5,$9,$5
	sw	$5,1216($7)
	dsra	$2,$2,8
	daddu	$5,$2,$3
	sd	$2,768($4)
	daddu	$3,$2,$19
	sd	$5,1024($4)
	li	$4,-1			# 0xffffffffffffffff
	bne	$14,$4,.L143
	daddu	$22,$22,$5

.L234:
	ld	$4,1800($sp)
	bne	$4,$0,.L236
	ld	$20,1536($sp)

.L76:
	ld	$4,1672($sp)
	sd	$3,1432($sp)
	sd	$2,1440($sp)
	sd	$0,0($4)
	ld	$4,1656($sp)
	beq	$4,$0,.L23
	nop

	ld	$5,1864($sp)
	beq	$4,$5,.L255
	ld	$4,1672($sp)

	ld	$5,1768($sp)
	ld	$6,1624($sp)
	ld	$7,1792($sp)
	addiu	$4,$5,1
	sltu	$5,$0,$5
	dsrl	$4,$6,$4
	and	$4,$4,$5
	ld	$5,1560($sp)
	and	$6,$6,$7
	dlsa	$5,$4,$5,3
	lw	$5,208($5)
	gsdmultu	$5,$5,$20
	beq	$6,$0,.L78
	dsra	$5,$5,8

	lw	$6,1408($sp)
	bne	$6,$0,.L79
	nop

	dsubu	$22,$22,$2
	move	$3,$19
	sd	$19,1432($sp)
.L79:
	ld	$2,1560($sp)
	daddu	$6,$22,$5
	dlsa	$4,$4,$2,3
	ld	$2,1424($sp)
	lw	$4,212($4)
	daddu	$2,$6,$2
	ld	$6,1416($sp)
	gsdmultu	$4,$4,$20
	dsubu	$2,$2,$6
	ld	$6,1672($sp)
	dsubu	$2,$2,$3
	dsra	$4,$4,8
	daddu	$22,$22,$4
	slt	$3,$2,$22
	beq	$3,$0,.L23
	sd	$4,0($6)

	ld	$3,1728($sp)
	lw	$3,112($3)
	slt	$3,$3,2
	bne	$3,$0,.L255
	ld	$4,1672($sp)

	ld	$3,1648($sp)
	move	$22,$2
	ldc1	$f1,1624($sp)
	ld	$2,1856($sp)
	ldc1	$f0,1792($sp)
	sd	$5,0($6)
	dext	$3,$3,0,32
	ld	$6,1512($sp)
	dlsa	$2,$3,$2,1
	pandn	$f0,$f0,$f1
	lhu	$3,0($2)
	move	$2,$3
	dlsa	$3,$3,$6,1
	daddiu	$5,$2,4
	daddiu	$4,$2,8
	sb	$0,0($3)
	daddiu	$2,$2,12
	dlsa	$5,$5,$6,1
	sb	$0,1($3)
	dlsa	$4,$4,$6,1
	dlsa	$2,$2,$6,1
	sb	$0,2($3)
	sb	$0,3($3)
	sb	$0,4($3)
	sb	$0,5($3)
	sb	$0,6($3)
	sb	$0,7($3)
	sdc1	$f0,1624($sp)
	sb	$0,0($5)
	sb	$0,1($5)
	sb	$0,2($5)
	sb	$0,3($5)
	sb	$0,4($5)
	sb	$0,5($5)
	sb	$0,6($5)
	sb	$0,7($5)
	sb	$0,0($4)
	sb	$0,1($4)
	sb	$0,2($4)
	sb	$0,3($4)
	sb	$0,4($4)
	sb	$0,5($4)
	sb	$0,6($4)
	sb	$0,7($4)
	sb	$0,0($2)
	sb	$0,1($2)
	sb	$0,2($2)
	sb	$0,3($2)
	sb	$0,4($2)
	sb	$0,5($2)
	sb	$0,6($2)
	b	.L23
	sb	$0,7($2)

	.align	3
.L29:
	ld	$16,1584($sp)
	li	$23,217			# 0xd9
	ld	$17,1608($sp)
	subu	$16,$0,$16
	sra	$20,$16,31
	addiu	$17,$17,-8
	srl	$17,$17,31
	addiu	$16,$20,1
	ld	$20,1576($sp)
	lsa	$16,$16,$17,1
	ld	$17,1680($sp)
	andi	$fp,$16,0x1
	sd	$20,1704($sp)
	addu	$20,$20,$17
	sll	$17,$16,1
	srl	$17,$23,$17
	ld	$23,1528($sp)
	dext	$20,$20,0,32
	daddiu	$20,$20,78
	andi	$17,$17,0x3
	dlsa	$20,$20,$23,3
	sd	$20,1688($sp)
	move	$20,$17
	move	$17,$0
	beq	$fp,$0,.L30
	sd	$20,1544($sp)

	lw	$17,4($5)
.L30:
	li	$20,3			# 0x3
	bne	$16,$20,.L256
	dext	$16,$8,0,32

	ld	$16,1688($sp)
	lw	$16,4($16)
	addu	$17,$16,$17
	dext	$16,$8,0,32
.L256:
	dlsa	$20,$16,$sp,3
	sd	$16,1568($sp)
	move	$16,$17
	sd	$16,1696($sp)
	ld	$16,1640($sp)
	sd	$16,1024($20)
	ld	$16,1712($sp)
	beq	$16,$8,.L237
	sltu	$23,$9,3

	ld	$16,1560($sp)
	dext	$2,$2,0,32
	dlsa	$2,$2,$16,2
	ld	$16,1640($sp)
	beq	$23,$0,.L34
	lw	$17,224($2)

	ld	$16,1536($sp)
	gsdmultu	$23,$17,$16
	dsra	$23,$23,8
	daddu	$16,$23,$3
	sd	$23,768($20)
	sd	$16,1024($20)
.L34:
	lw	$2,392($2)
	ld	$3,1472($sp)
	subu	$17,$2,$17
	dlsa	$3,$3,$sp,2
	sw	$17,1216($3)
.L33:
	ld	$3,1784($sp)
	dlsa	$15,$15,$3,2
	ld	$3,1736($sp)
	lw	$17,0($15)
	sll	$17,$17,$3
	ld	$3,1776($sp)
	mul	$20,$17,$9
	addu	$15,$20,$3
	li	$3,1			# 0x1
	beq	$9,$3,.L238
	nop

	beq	$9,$0,.L39
	ld	$3,1544($sp)

	subu	$25,$9,$3
	addiu	$3,$9,-1
	addiu	$20,$25,-1
	sd	$3,1888($sp)
	bltz	$25,.L239
	move	$23,$20

	ld	$fp,1616($sp)
	srl	$25,$25,$fp
	sltu	$3,$25,3
	beq	$3,$0,.L44
	nop

	addiu	$3,$fp,1
	addu	$25,$3,$25
	sll	$25,$25,15
.L45:
	ld	$3,1696($sp)
	addu	$25,$3,$25
	li	$3,32768			# 0x8000
	bltz	$23,.L240
	addu	$25,$3,$25

.L47:
	ld	$23,1616($sp)
	srl	$20,$20,$23
	sltu	$3,$20,3
	beq	$3,$0,.L50
	nop

	addiu	$3,$23,1
	addu	$20,$3,$20
	sll	$20,$20,15
.L51:
	ld	$3,1696($sp)
	addu	$20,$3,$20
.L117:
	ld	$fp,1824($sp)
	li	$23,32768			# 0x8000
	sra	$3,$11,31
	addu	$23,$2,$23
	subu	$17,$15,$17
	addu	$20,$23,$20
	xor	$11,$3,$11
	ld	$23,1536($sp)
	subu	$11,$11,$3
	srl	$17,$17,$fp
	srl	$15,$15,$fp
	addu	$25,$25,$2
	subu	$fp,$11,$15
	dext	$25,$25,0,32
	subu	$11,$11,$17
	dext	$20,$20,0,32
	gsdmultu	$25,$25,$23
	gsdmultu	$fp,$fp,$fp
	gsdmultu	$20,$20,$23
	gsdmultu	$11,$11,$11
	dsra	$25,$25,8
	dsll	$fp,$fp,5
	dsra	$20,$20,8
	daddu	$25,$25,$fp
	dsll	$11,$11,5
	beq	$7,$0,.L53
	daddu	$20,$20,$11

	xor	$10,$3,$10
	srl	$3,$6,31
	addu	$3,$10,$3
	addu	$17,$3,$17
	addu	$15,$3,$15
	sra	$3,$17,31
	sra	$6,$15,31
	xor	$17,$3,$17
	xor	$15,$6,$15
	subu	$17,$17,$3
	ld	$3,1592($sp)
	subu	$15,$15,$6
	gsdmultu	$15,$15,$3
	gsdmultu	$17,$17,$3
	dsra	$15,$15,11
	dsra	$17,$17,11
	dsubu	$25,$25,$15
	dsubu	$20,$20,$17
.L53:
	slt	$3,$25,$16
	beq	$3,$0,.L136
	ld	$7,1536($sp)

	dext	$3,$2,0,32
	move	$16,$25
	ld	$6,1568($sp)
	gsdmultu	$3,$3,$7
	dlsa	$6,$6,$sp,3
	sd	$25,1024($6)
	dsra	$3,$3,8
	sd	$3,768($6)
.L54:
	slt	$3,$20,$16
	beq	$3,$0,.L55
	seh	$7,$9

	ld	$3,1536($sp)
	dext	$2,$2,0,32
	ld	$6,1888($sp)
	gsdmultu	$2,$2,$3
	ld	$3,1568($sp)
	subu	$25,$0,$6
	seh	$7,$6
	slt	$25,$25,0
	move	$9,$6
	dlsa	$3,$3,$sp,3
	sd	$20,1024($3)
	dsra	$2,$2,8
	sd	$2,768($3)
.L40:
	ld	$3,1608($sp)
	sh	$7,0($4)
	addu	$3,$3,$25
	sd	$3,1608($sp)
	ld	$3,1808($sp)
	ld	$3,56($3)
	ld	$3,8($3)
	lbu	$3,27($3)
	beq	$3,$0,.L57
	daddu	$22,$22,$20

.L118:
	ld	$3,1544($sp)
	subu	$3,$9,$3
	addiu	$11,$3,-1
	slt	$4,$11,-2
	beq	$4,$0,.L58
	move	$15,$11

	ld	$3,1688($sp)
	move	$6,$0
	lw	$4,4($5)
	lw	$10,0($5)
	lw	$3,0($3)
	addu	$4,$4,$3
.L59:
	ld	$3,1472($sp)
	subu	$4,$4,$10
	subu	$6,$6,$10
	dlsa	$3,$3,$sp,2
	sw	$4,1344($3)
	sw	$6,1280($3)
.L71:
	ld	$3,1544($sp)
	sltu	$17,$9,$3
	bne	$17,$0,.L72
	ld	$4,1616($sp)

	sltu	$3,$4,4
	beq	$3,$0,.L72
	ld	$5,1848($sp)

	sltu	$3,$5,$9
	beq	$3,$0,.L72
	addiu	$3,$4,1

	sd	$3,1616($sp)
	sll	$3,$5,1
	sd	$3,1848($sp)
	.align	3
.L72:
	sltu	$9,$9,2
	bne	$9,$0,.L73
	ld	$4,1584($sp)

	ld	$3,1576($sp)
	sd	$0,1480($sp)
	addiu	$4,$4,1
	sd	$4,1584($sp)
	addiu	$3,$3,-2
	ld	$4,1704($sp)
	srl	$3,$3,31
	addu	$3,$3,$4
	sd	$3,1576($sp)
.L74:
	beq	$7,$0,.L28
	daddu	$3,$19,$2

	ld	$6,1624($sp)
	ld	$7,1792($sp)
	ld	$4,1568($sp)
	ld	$5,1472($sp)
	or	$6,$6,$7
	sd	$6,1624($sp)
	dlsa	$4,$4,$sp,3
	ld	$6,1760($sp)
	dlsa	$5,$5,$sp,3
	ld	$4,1024($4)
	ld	$5,896($5)
	addu	$6,$6,$14
	sd	$6,1760($sp)
	li	$6,1			# 0x1
	dsubu	$4,$4,$2
	sd	$6,1800($sp)
	ld	$6,1744($sp)
	daddu	$4,$6,$4
	sd	$4,1744($sp)
	ld	$4,1752($sp)
	daddu	$4,$4,$5
	b	.L28
	sd	$4,1752($sp)

	.align	3
.L39:
	ld	$2,1568($sp)
	daddu	$22,$22,$16
	move	$25,$0
	move	$7,$0
	move	$9,$0
	sh	$0,0($4)
	dlsa	$2,$2,$sp,3
	ld	$2,768($2)
.L57:
	ld	$3,1472($sp)
	lw	$4,0($5)
	dlsa	$3,$3,$sp,2
	sw	$0,1280($3)
	b	.L71
	sw	$4,1344($3)

	.align	3
.L73:
	ld	$4,1480($sp)
	addiu	$3,$4,-1
	addiu	$5,$4,1
	sltu	$3,$3,2
	and	$25,$3,$25
	movn	$4,$5,$25
	b	.L74
	sd	$4,1480($sp)

	.align	3
.L238:
	beq	$fp,$0,.L36
	ld	$3,1616($sp)

	lw	$3,0($5)
	li	$17,32768			# 0x8000
	addu	$3,$3,$17
.L37:
	ld	$20,1824($sp)
	sra	$17,$11,31
	addu	$3,$2,$3
	xor	$11,$17,$11
	dext	$3,$3,0,32
	subu	$11,$11,$17
	srl	$15,$15,$20
	ld	$20,1536($sp)
	subu	$11,$11,$15
	gsdmultu	$11,$11,$11
	gsdmultu	$3,$3,$20
	dsll	$11,$11,5
	dsra	$3,$3,8
	beq	$7,$0,.L38
	daddu	$20,$3,$11

	srl	$6,$6,31
	xor	$10,$17,$10
	addu	$10,$10,$6
	ld	$6,1592($sp)
	addu	$15,$10,$15
	sra	$3,$15,31
	xor	$15,$3,$15
	subu	$3,$15,$3
	gsdmultu	$3,$3,$6
	dsra	$3,$3,11
	dsubu	$20,$20,$3
.L38:
	slt	$3,$20,$16
	beq	$3,$0,.L39
	ld	$3,1536($sp)

	dext	$2,$2,0,32
	li	$7,1			# 0x1
	gsdmultu	$2,$2,$3
	ld	$3,1568($sp)
	dlsa	$3,$3,$sp,3
	sd	$20,1024($3)
	dsra	$2,$2,8
	b	.L40
	sd	$2,768($3)

	.align	3
.L237:
	ld	$2,1472($sp)
	ld	$16,1640($sp)
	dlsa	$2,$2,$sp,2
	sw	$0,1216($2)
	b	.L33
	move	$2,$0

	.align	3
.L58:
	ld	$10,1616($sp)
	addiu	$4,$11,1
	ld	$16,1912($sp)
	dext	$6,$10,0,32
	daddu	$6,$16,$6
	addiu	$16,$11,2
	bltz	$11,.L60
	lbu	$6,0($6)

	addiu	$3,$3,1
	slt	$3,$6,$3
	bne	$3,$0,.L257
	li	$3,-1			# 0xffffffffffffffff

	addiu	$3,$10,1
	srl	$4,$4,$10
	addu	$4,$4,$3
	move	$6,$10
	addiu	$4,$4,-8
	sra	$5,$4,31
	and	$10,$5,$4
	li	$4,-1			# 0xffffffffffffffff
	addiu	$10,$10,8
	beq	$9,$4,.L138
	sll	$10,$10,15

	srl	$4,$16,$6
	move	$6,$0
	addu	$4,$4,$3
	addiu	$4,$4,-8
	sra	$5,$4,31
	and	$4,$5,$4
	li	$5,1			# 0x1
	addiu	$4,$4,8
	beq	$9,$5,.L59
	sll	$4,$4,15

	ld	$5,1616($sp)
	srl	$11,$11,$5
	addu	$3,$11,$3
	addiu	$3,$3,-8
	sra	$5,$3,31
	and	$6,$5,$3
	addiu	$6,$6,8
	b	.L59
	sll	$6,$6,15

	.align	3
.L16:
	ld	$3,1928($sp)
	ld	$11,1936($sp)
	sd	$3,1552($sp)
	ld	$3,1728($sp)
	sltu	$2,$2,1
	daddiu	$2,$2,2
	sd	$2,1680($sp)
	ld	$18,120($3)
	ld	$3,1648($sp)
	b	.L115
	move	$13,$3

	.align	3
.L60:
	li	$3,-1			# 0xffffffffffffffff
	.align	3
.L257:
	beq	$4,$3,.L241
	move	$23,$6

	ld	$10,1696($sp)
	sltu	$3,$23,$4
	bne	$3,$0,.L242
	move	$6,$10

.L64:
	ld	$10,1616($sp)
	srl	$3,$4,$10
	addu	$3,$3,$10
	addiu	$3,$3,-7
	sra	$4,$3,31
	and	$10,$4,$3
	addiu	$10,$10,8
	sll	$10,$10,15
	addu	$10,$10,$6
.L65:
	li	$3,-1			# 0xffffffffffffffff
	bne	$9,$3,.L258
	ld	$6,1696($sp)

	bltz	$15,.L69
	move	$4,$0

	ld	$3,1616($sp)
	addiu	$3,$3,1
.L67:
	sltu	$5,$23,$11
	beq	$5,$0,.L259
	ld	$5,1616($sp)

	subu	$5,$11,$23
	ld	$6,1696($sp)
	addiu	$11,$23,1
	clz	$5,$5
	xori	$5,$5,0x1f
	sll	$5,$5,1
	addiu	$5,$5,1
	sll	$5,$5,15
	addu	$5,$5,$6
	sd	$5,1696($sp)
	ld	$5,1616($sp)
.L259:
	srl	$11,$11,$5
	addu	$11,$3,$11
	addiu	$5,$11,-8
	sra	$3,$5,31
	and	$6,$3,$5
	ld	$3,1696($sp)
	addiu	$6,$6,8
	sll	$6,$6,15
	b	.L59
	addu	$6,$6,$3

	.align	3
.L36:
	li	$17,32768			# 0x8000
	addiu	$3,$3,1
	sll	$3,$3,15
	b	.L37
	addu	$3,$3,$17

	.align	3
.L55:
	ld	$2,1808($sp)
	daddu	$22,$22,$16
	sh	$7,0($4)
	ld	$3,56($2)
	ld	$2,1568($sp)
	ld	$3,8($3)
	dlsa	$2,$2,$sp,3
	lbu	$3,27($3)
	bne	$3,$0,.L243
	ld	$2,768($2)

	ld	$3,1608($sp)
	subu	$25,$0,$9
	slt	$25,$25,0
	addu	$3,$3,$25
	b	.L57
	sd	$3,1608($sp)

	.align	3
.L136:
	b	.L54
	move	$9,$0

	.align	3
.L78:
	ld	$4,1672($sp)
	daddu	$2,$22,$5
	dsubu	$22,$2,$3
	b	.L23
	sd	$5,0($4)

	.align	3
.L239:
	li	$3,2			# 0x2
	beq	$9,$3,.L244
	li	$3,32768			# 0x8000

	lw	$25,0($5)
	bgez	$23,.L47
	addu	$25,$3,$25

.L240:
	addiu	$3,$9,-1
	li	$20,2			# 0x2
	beq	$3,$20,.L245
	nop

	b	.L117
	lw	$20,0($5)

	.align	3
.L130:
	ld	$9,1560($sp)
	move	$7,$0
	li	$12,16			# 0x10
	ld	$13,1648($sp)
	ld	$14,1880($sp)
.L18:
	addiu	$8,$7,4
.L22:
	dext	$2,$7,0,32
	addu	$4,$10,$7
	ld	$15,1520($sp)
	dlsa	$2,$2,$14,1
	dext	$4,$4,0,32
	lhu	$3,0($2)
	dlsa	$2,$4,$18,1
	addu	$5,$13,$7
	lh	$2,0($2)
	dext	$5,$5,0,32
	dlsa	$6,$4,$sp,3
	dlsa	$5,$5,$sp,3
	dlsa	$4,$4,$sp,2
	daddu	$3,$15,$3
	addiu	$7,$7,1
	lbu	$3,0($3)
	mult	$2,$2
	addu	$3,$3,$11
	dext	$3,$3,0,32
	dlsa	$3,$3,$9,2
	lw	$24,224($3)
	mfhi	$15
	mflo	$2
	dins	$2,$15,32,32
	lw	$15,392($3)
	gsdmultu	$3,$24,$20
	dsll	$2,$2,5
	daddu	$21,$21,$2
	daddu	$22,$22,$2
	sd	$2,896($6)
	sd	$2,1024($5)
	subu	$2,$15,$24
	sw	$2,1216($4)
	dsra	$2,$3,8
	bne	$8,$7,.L22
	sd	$2,768($5)

	bne	$8,$12,.L18
	move	$7,$8

	b	.L249
	ld	$3,1768($sp)

	.align	3
.L44:
	li	$fp,3			# 0x3
	beq	$25,$fp,.L46
	li	$3,4			# 0x4

	addiu	$3,$25,-2
	clz	$3,$3
	xori	$3,$3,0x1f
	sll	$3,$3,1
	addiu	$3,$3,4
.L46:
	ld	$25,1616($sp)
	addu	$25,$25,$3
	b	.L45
	sll	$25,$25,15

	.align	3
.L50:
	li	$23,3			# 0x3
	beq	$20,$23,.L52
	li	$3,4			# 0x4

	addiu	$3,$20,-2
	clz	$3,$3
	xori	$3,$3,0x1f
	sll	$3,$3,1
	addiu	$3,$3,4
.L52:
	ld	$20,1616($sp)
	addu	$20,$20,$3
	b	.L51
	sll	$20,$20,15

	.align	3
.L245:
	ld	$20,1688($sp)
	lw	$3,4($5)
	lw	$20,0($20)
	b	.L117
	addu	$20,$20,$3

	.align	3
.L241:
	li	$3,2			# 0x2
	bne	$9,$3,.L219
	ld	$3,1688($sp)

	lw	$10,0($3)
	lw	$3,4($5)
	addu	$10,$10,$3
	ld	$6,1696($sp)
	.align	3
.L258:
	sltu	$3,$23,$16
	move	$4,$16
	beq	$3,$0,.L66
	move	$17,$6

	subu	$17,$16,$23
	addiu	$4,$23,1
	clz	$17,$17
	xori	$17,$17,0x1f
	sll	$17,$17,1
	addiu	$17,$17,1
	sll	$17,$17,15
	addu	$17,$17,$6
.L66:
	ld	$6,1616($sp)
	addiu	$20,$9,-1
	srl	$16,$4,$6
	addiu	$3,$6,1
	addu	$16,$3,$16
	move	$6,$0
	addiu	$16,$16,-8
	sra	$4,$16,31
	and	$4,$4,$16
	addiu	$4,$4,8
	sll	$4,$4,15
	beq	$20,$0,.L59
	addu	$4,$4,$17

	bgez	$15,.L67
	nop

	li	$3,2			# 0x2
	bne	$20,$3,.L69
	ld	$3,1688($sp)

	lw	$6,0($3)
	lw	$3,4($5)
	b	.L59
	addu	$6,$6,$3

	.align	3
.L244:
	ld	$3,1688($sp)
	li	$fp,32768			# 0x8000
	lw	$25,4($5)
	lw	$3,0($3)
	addu	$25,$25,$fp
	bgez	$20,.L47
	addu	$25,$25,$3

	b	.L117
	lw	$20,0($5)

.L242:
	subu	$6,$4,$23
	addiu	$4,$23,1
	clz	$6,$6
	xori	$6,$6,0x1f
	sll	$6,$6,1
	addiu	$6,$6,1
	sll	$6,$6,15
	b	.L64
	addu	$6,$6,$10

.L229:
	bne	$3,$0,.L260
	ld	$2,1952($sp)

	ld	$2,1560($sp)
	lw	$14,936($2)
	b	.L227
	lw	$8,940($2)

.L219:
	b	.L65
	lw	$10,0($5)

.L233:
	ld	$4,1728($sp)
	dlsa	$3,$3,$5,1
	lhu	$13,0($3)
	ld	$25,120($4)
	dext	$3,$13,0,32
	dlsa	$4,$3,$21,1
	lh	$8,0($4)
	sra	$4,$8,31
	xor	$7,$4,$8
	subu	$7,$7,$4
	xori	$7,$7,0x1
	sltu	$7,$7,1
	and	$7,$7,$18
	bne	$18,$0,.L102
	sll	$7,$7,17

	addiu	$3,$23,15
	li	$10,15			# 0xf
	dlsa	$3,$3,$5,1
	lhu	$13,0($3)
	dext	$3,$13,0,32
	dlsa	$4,$3,$21,1
	lh	$8,0($4)
	sra	$4,$8,31
	daddu	$12,$10,$22
.L262:
	sd	$23,1504($sp)
	move	$fp,$0
	dlsa	$12,$12,$5,1
	sd	$20,1512($sp)
	move	$15,$0
	daddiu	$12,$12,-2
	ld	$18,1480($sp)
	li	$22,-1			# 0xffffffffffffffff
	sw	$2,1488($sp)
	move	$5,$3
	sd	$19,1496($sp)
	ld	$14,1904($sp)
	ld	$23,1784($sp)
	b	.L112
	ld	$20,1736($sp)

	.align	3
.L247:
	dext	$8,$13,0,32
	addu	$19,$3,$4
	dlsa	$8,$8,$sp,2
	subu	$3,$4,$3
	srl	$19,$19,$17
	lw	$5,1344($8)
	srl	$3,$3,$17
	subu	$19,$9,$19
	subu	$3,$9,$3
	lw	$4,1280($8)
	gsdmultu	$19,$19,$19
	dext	$7,$7,0,32
	gsdmultu	$5,$5,$14
	gsdmultu	$3,$3,$3
	dsubu	$19,$19,$6
	dsll	$9,$19,5
	dsra	$5,$5,8
	dsubu	$3,$3,$6
	li	$6,1			# 0x1
	daddu	$5,$9,$5
	beq	$11,$6,.L246
	dsll	$3,$3,5

	gsdmultu	$4,$4,$14
	dsra	$4,$4,8
	daddu	$3,$4,$3
	dsubu	$7,$3,$7
	slt	$3,$5,$7
.L261:
	li	$8,1			# 0x1
	movz	$5,$7,$3
	li	$4,-1			# 0xffffffffffffffff
	movz	$8,$4,$3
.L108:
	slt	$3,$5,$18
.L263:
	beq	$3,$0,.L109
	sll	$11,$11,16

	seb	$fp,$8
	addu	$15,$11,$13
	move	$18,$5
.L109:
	addiu	$10,$10,-1
	beq	$10,$22,.L111
	move	$7,$0

	lhu	$13,0($12)
	daddiu	$12,$12,-2
	dext	$5,$13,0,32
	dlsa	$3,$5,$21,1
	lh	$8,0($3)
	sra	$4,$8,31
.L112:
	dlsa	$3,$5,$23,2
	xor	$11,$4,$8
	lw	$3,0($3)
	subu	$11,$11,$4
	dlsa	$5,$5,$25,1
	lh	$5,0($5)
	sll	$3,$3,$20
	mul	$6,$3,$11
	addu	$4,$6,$16
	sra	$6,$5,31
	xor	$9,$6,$5
	subu	$9,$9,$6
	srl	$6,$4,$17
	subu	$6,$9,$6
	bne	$8,$0,.L247
	gsdmultu	$6,$6,$6

	xor	$5,$24,$5
	bgez	$5,.L155
	slt	$4,$10,$2

	bne	$4,$0,.L109
	nop

.L155:
	dext	$4,$13,0,32
	addu	$3,$16,$3
	dlsa	$4,$4,$sp,2
	srl	$5,$3,$17
	lw	$3,1344($4)
	subu	$9,$9,$5
	li	$5,32768			# 0x8000
	lw	$4,1216($4)
	gsdmultu	$9,$9,$9
	li	$8,1			# 0x1
	addu	$3,$3,$5
	addu	$3,$3,$4
	gsdmultu	$3,$3,$14
	dsubu	$9,$9,$6
	dsll	$4,$9,5
	dsra	$5,$3,8
	b	.L108
	daddu	$5,$5,$4

.L138:
	ld	$5,1616($sp)
	move	$4,$0
	srl	$11,$11,$5
	addu	$3,$11,$3
	addiu	$3,$3,-8
	sra	$5,$3,31
	and	$6,$5,$3
	addiu	$6,$6,8
	b	.L59
	sll	$6,$6,15

.L69:
	b	.L59
	lw	$6,0($5)

.L246:
	lw	$6,1216($8)
	li	$8,32768			# 0x8000
	addu	$6,$6,$8
	subu	$4,$4,$6
	gsdmultu	$4,$4,$14
	dsra	$4,$4,8
	daddu	$3,$4,$3
	dsubu	$7,$3,$7
	lw	$3,1488($sp)
	bne	$10,$3,.L261
	slt	$3,$5,$7

	slt	$7,$5,$7
	beq	$7,$0,.L109
	li	$8,1			# 0x1

	b	.L263
	slt	$3,$5,$18

.L111:
	dext	$4,$15,16,16
	andi	$2,$15,0xffff
	ld	$19,1496($sp)
	dsll	$2,$2,1
	xori	$6,$4,0x1
	ld	$23,1504($sp)
	move	$3,$4
	sltu	$5,$4,32767
	ld	$20,1512($sp)
	daddu	$25,$25,$2
	sltu	$4,$3,1
	sltu	$6,$6,1
	bne	$5,$0,.L113
	daddu	$2,$21,$2

	subu	$4,$4,$6
	li	$fp,-1			# 0xffffffffffffffff
.L104:
	ld	$5,1472($sp)
	move	$18,$0
	lh	$3,0($25)
	addu	$4,$5,$4
	sd	$4,1472($sp)
	sra	$3,$3,31
	lhu	$4,0($2)
	subu	$4,$4,$3
	xor	$3,$3,$fp
	addu	$3,$4,$3
	b	.L101
	sh	$3,0($2)

.L128:
	b	.L7
	move	$22,$0

.L129:
	move	$20,$22
	b	.L14
	sd	$0,1624($sp)

.L102:
	bgez	$10,.L262
	daddu	$12,$10,$22

	move	$2,$21
	move	$fp,$0
	b	.L104
	li	$4,1			# 0x1

.L230:
	ld	$10,1712($sp)
	li	$8,16			# 0x10
	move	$17,$0
	b	.L82
	move	$16,$0

.L231:
	b	.L82
	move	$16,$0

.L113:
	addiu	$3,$fp,1
	seh	$fp,$fp
	sltu	$3,$3,1
	and	$6,$3,$6
	b	.L104
	subu	$4,$4,$6

.L236:
	ld	$4,1744($sp)
	sd	$4,1416($sp)
	ld	$4,1752($sp)
	sd	$4,1424($sp)
	ld	$4,1760($sp)
	b	.L76
	sw	$4,1408($sp)

.L243:
	beq	$9,$0,.L137
	ld	$3,1608($sp)

	subu	$25,$0,$9
	slt	$25,$25,0
	addu	$3,$3,$25
	b	.L118
	sd	$3,1608($sp)

.L137:
	move	$25,$0
	b	.L57
	move	$7,$0

	.set	macro
	.set	reorder
	.end	_ZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.size	_ZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjb, .-_ZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.section	.text._ZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjb,"axG",@progbits,_ZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjb,comdat
	.align	2
	.align	3
	.weak	_ZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.type	_ZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjb, @function
_ZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjb:
	.frame	$sp,3824,$31		# vars= 3728, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-3824
	dext	$3,$7,0,32
	sd	$fp,3808($sp)
	sd	$28,3800($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjb)))
	sd	$23,3792($sp)
	move	$23,$4
	daddu	$28,$28,$25
	sd	$22,3784($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjb)))
	sd	$21,3776($sp)
	daddiu	$21,$4,16
	sd	$20,3768($sp)
	sd	$19,3760($sp)
	li	$19,1			# 0x1
	sd	$18,3752($sp)
	move	$18,$8
	sd	$17,3744($sp)
	move	$17,$9
	li	$9,64			# 0x40
	sd	$16,3736($sp)
	sd	$31,3816($sp)
	ld	$2,192($5)
	sd	$5,3528($sp)
	dext	$5,$18,0,32
	sd	$4,3448($sp)
	dsll	$4,$3,5
	daddu	$2,$2,$5
	daddu	$22,$21,$4
	sd	$5,3696($sp)
	lbu	$2,0($2)
	li	$5,3			# 0x3
	move	$21,$6
	lw	$20,0($22)
	sd	$3,3712($sp)
	xori	$2,$2,0x2
	ld	$3,0($23)
	movz	$5,$0,$2
	ld	$8,%got_disp(_ZN4x26510primitivesE)($28)
	addu	$2,$7,$5
	lw	$fp,4($22)
	dlsa	$2,$2,$2,1
	ld	$4,120($23)
	dlsa	$20,$2,$20,1
	ld	$25,5704($8)
	dlsa	$2,$20,$3,3
	sd	$8,3632($sp)
	addiu	$8,$fp,17
	ld	$5,576($2)
	sll	$8,$19,$8
	sd	$7,3480($sp)
	addiu	$7,$fp,18
	jalr	$25
	sd	$fp,3488($sp)

	move	$16,$2
	beq	$16,$0,.L520
	ld	$31,3816($sp)

	lw	$3,24($22)
	lw	$5,116($23)
	ld	$2,0($23)
	sd	$0,3496($sp)
	mult	$5,$3
	li	$3,2			# 0x2
	lbu	$4,2592($2)
	dlsa	$20,$20,$2,3
	ld	$2,16($22)
	sd	$2,3640($sp)
	mflo	$22
	mfhi	$2
	dins	$22,$2,32,32
	ld	$2,1728($20)
	sd	$2,3504($sp)
	li	$2,6			# 0x6
	movz	$2,$3,$4
	move	$3,$2
	sd	$2,3544($sp)
	slt	$2,$fp,$2
	beq	$2,$0,.L521
	ld	$2,3480($sp)

	subu	$2,$3,$fp
	addiu	$2,$2,-1
	sll	$2,$19,$2
	sd	$2,3496($sp)
	ld	$2,3480($sp)
.L521:
	move	$6,$18
	subu	$17,$0,$17
	ld	$25,%call16(_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb)($28)
	li	$7,3			# 0x3
	daddiu	$5,$sp,3176
	ld	$18,%got_disp(_ZN4x2659g_scan4x4E)($28)
	move	$23,$17
	daddiu	$17,$sp,3072
	ld	$4,3528($sp)
	sltu	$8,$2,1
	sd	$23,3216($sp)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb
1:	jalr	$25
	sd	$18,3664($sp)

	ld	$2,3632($sp)
	daddiu	$7,$sp,2816
	lwu	$10,3192($sp)
	move	$9,$16
	li	$11,8			# 0x8
	ld	$4,3176($sp)
	move	$8,$17
	move	$5,$21
	ld	$25,5968($2)
	daddiu	$6,$sp,2944
	li	$16,3			# 0x3
	dsll	$10,$10,5
	sd	$7,3576($sp)
	jalr	$25
	daddu	$10,$18,$10

	ld	$3,3448($sp)
	move	$5,$0
	sd	$2,3432($sp)
	sra	$2,$2,4
	addiu	$20,$2,1
	subu	$16,$16,$2
	ld	$25,%call16(memset)($28)
	ld	$4,8($3)
	sll	$19,$20,4
	sll	$16,$16,4
	move	$18,$19
	dsll	$16,$16,3
	sd	$2,3600($sp)
	dsll	$18,$18,3
	move	$3,$2
	sd	$4,3280($sp)
	daddiu	$4,$sp,1536
	move	$6,$16
	daddu	$4,$4,$18
	sd	$3,3704($sp)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	slt	$20,$20,4

	ld	$25,%call16(memset)($28)
	daddiu	$4,$sp,512
	move	$6,$16
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	daddu	$4,$4,$18

	beq	$23,$0,.L269
	nop

	beq	$20,$0,.L395
	ld	$2,3448($sp)

	move	$11,$19
	move	$fp,$0
	ld	$14,3176($sp)
	li	$13,64			# 0x40
	ld	$10,120($2)
	ld	$9,128($2)
	dext	$2,$11,0,32
	.align	3
.L522:
	dlsa	$2,$2,$14,1
	lhu	$7,0($2)
	addiu	$12,$7,32
.L272:
	addiu	$8,$7,4
	move	$6,$7
.L271:
	dext	$2,$6,0,32
	addiu	$6,$6,1
	dsll	$3,$2,1
	dlsa	$4,$2,$sp,3
	daddu	$2,$10,$3
	daddu	$3,$9,$3
	lh	$5,0($2)
	lh	$2,0($3)
	mult	$5,$5
	subu	$2,$2,$5
	gsdmultu	$2,$2,$22
	mflo	$3
	mfhi	$15
	dins	$3,$15,32,32
	dsll	$3,$3,7
	dsra	$2,$2,9
	dsubu	$2,$3,$2
	sd	$2,1024($4)
	bne	$8,$6,.L271
	daddu	$fp,$fp,$2

	addiu	$7,$7,8
	bne	$7,$12,.L272
	nop

	addiu	$11,$11,16
	bne	$11,$13,.L522
	dext	$2,$11,0,32

.L270:
	ld	$4,3600($sp)
.L517:
	bltz	$4,.L396
	ld	$6,3704($sp)

	dlsa	$2,$4,$sp,3
	lw	$5,3196($sp)
	sd	$4,3328($sp)
	dsll	$6,$6,4
	lwu	$3,3192($sp)
	sd	$6,3384($sp)
	ld	$6,3176($sp)
	sd	$5,3536($sp)
	dsll	$3,$3,5
	sd	$2,3400($sp)
	li	$2,-1			# 0xffffffffffffffff
	sd	$6,3592($sp)
	daddu	$6,$17,$4
	dsll	$2,$2,63
	sd	$6,3440($sp)
	daddiu	$2,$2,-1
	ld	$6,3576($sp)
	ld	$20,3640($sp)
	sd	$2,3376($sp)
	dlsa	$6,$4,$6,1
	ld	$4,%got_disp(_ZZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64)($28)
	sd	$6,3392($sp)
	ld	$6,3184($sp)
	sd	$4,3648($sp)
	addiu	$4,$5,3
	ld	$5,%got_disp(_ZN4x26513g_goRiceRangeE)($28)
	move	$2,$4
	sd	$22,3312($sp)
	move	$22,$fp
	sd	$21,3240($sp)
	move	$21,$fp
	sd	$5,3656($sp)
	li	$5,1			# 0x1
	sd	$5,3208($sp)
	ld	$5,%got_disp(_ZZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt)($28)
	sd	$6,3608($sp)
	sd	$4,3672($sp)
	sd	$5,3688($sp)
	ld	$5,3664($sp)
	sd	$0,3320($sp)
	sd	$2,3680($sp)
	daddu	$3,$5,$3
	sd	$3,3616($sp)
	ld	$3,3280($sp)
	daddiu	$3,$3,208
	sd	$3,3248($sp)
	ld	$2,3328($sp)
	.align	3
.L525:
	beq	$2,$0,.L397
	ld	$2,3480($sp)

	sltu	$2,$2,1
	dsll	$2,$2,1
	sd	$2,3360($sp)
.L278:
	ld	$3,3576($sp)
	ld	$2,3392($sp)
	ld	$6,3320($sp)
	dsubu	$2,$2,$3
	ld	$3,3536($sp)
	sd	$3,3272($sp)
	ld	$3,3448($sp)
	ld	$18,120($3)
	ld	$3,3608($sp)
	daddu	$2,$3,$2
	ld	$3,3384($sp)
	move	$13,$3
	lhu	$3,0($2)
	move	$2,$3
	nor	$3,$0,$3
	addiu	$4,$2,1
	andi	$3,$3,0x1
	move	$5,$4
	sd	$4,3552($sp)
	srl	$4,$2,1
	dsrl	$12,$6,$5
	xori	$4,$4,0x1
	sd	$3,3568($sp)
	sll	$12,$12,0
	sltu	$4,$0,$4
	srl	$15,$12,1
	and	$12,$3,$12
	ld	$3,3328($sp)
	and	$15,$15,$4
	sd	$4,3560($sp)
	beq	$3,$0,.L279
	lsa	$10,$15,$12,1

	ld	$3,3480($sp)
	bne	$3,$0,.L497
	ld	$3,3536($sp)

	ld	$3,3672($sp)
	ld	$14,3680($sp)
	sd	$3,3272($sp)
	ld	$3,3208($sp)
	bne	$3,$0,.L523
	ld	$3,3440($sp)

	ld	$3,3360($sp)
	addiu	$3,$3,1
.L536:
	sd	$3,3360($sp)
.L381:
	ld	$3,3440($sp)
.L523:
	lbu	$3,0($3)
	bne	$3,$0,.L524
	ld	$4,3648($sp)

	ld	$2,3592($sp)
	dlsa	$13,$13,$2,1
	ld	$2,3216($sp)
	beq	$2,$0,.L399
	lhu	$11,0($13)

	ld	$2,3448($sp)
	move	$5,$0
	li	$16,16			# 0x10
	ld	$13,3280($sp)
	ld	$24,3312($sp)
	ld	$25,128($2)
	ld	$2,3688($sp)
	ld	$17,3384($sp)
	ld	$19,3616($sp)
	dlsa	$10,$10,$2,4
.L286:
	addiu	$9,$5,4
.L284:
	dext	$2,$5,0,32
	addu	$6,$11,$5
	dext	$6,$6,0,32
	dlsa	$2,$2,$19,1
	dsll	$3,$6,1
	lhu	$2,0($2)
	addu	$7,$17,$5
	daddu	$4,$18,$3
	daddu	$3,$25,$3
	lh	$4,0($4)
	dext	$7,$7,0,32
	dlsa	$8,$6,$sp,3
	daddu	$2,$10,$2
	lh	$23,0($3)
	dlsa	$7,$7,$sp,3
	lbu	$3,0($2)
	dlsa	$6,$6,$sp,2
	addiu	$5,$5,1
	mult	$4,$4
	subu	$4,$23,$4
	addu	$3,$3,$14
	dext	$3,$3,0,32
	dlsa	$3,$3,$13,2
	lw	$23,224($3)
	mfhi	$fp
	mflo	$2
	gsdmultu	$4,$4,$24
	dins	$2,$fp,32,32
	lw	$fp,392($3)
	gsdmultu	$3,$23,$20
	dsll	$2,$2,7
	subu	$23,$fp,$23
	sw	$23,2048($6)
	dsra	$4,$4,9
	dsubu	$2,$2,$4
	dsra	$3,$3,8
	sd	$2,1024($8)
	daddu	$21,$21,$2
	daddu	$22,$22,$2
	sd	$3,512($7)
	bne	$9,$5,.L284
	sd	$2,1536($7)

	bne	$5,$16,.L286
	addiu	$11,$11,4

	li	$2,1			# 0x1
.L519:
	or	$12,$12,$15
	ld	$3,3400($sp)
	sd	$2,3208($sp)
	ld	$2,3280($sp)
	dlsa	$12,$12,$2,3
	lw	$2,208($12)
	gsdmultu	$2,$2,$20
	dsra	$2,$2,8
	daddu	$22,$22,$2
	sd	$2,0($3)
.L288:
	ld	$3,3400($sp)
.L528:
	ld	$2,3328($sp)
	daddiu	$3,$3,-8
	sd	$3,3400($sp)
	addiu	$2,$2,-1
	ld	$3,3384($sp)
	sd	$2,3328($sp)
	addiu	$3,$3,-16
	sd	$3,3384($sp)
	ld	$3,3440($sp)
	daddiu	$3,$3,-1
	sd	$3,3440($sp)
	ld	$3,3392($sp)
	daddiu	$3,$3,-2
	sd	$3,3392($sp)
	li	$3,-1			# 0xffffffffffffffff
	bne	$2,$3,.L525
	ld	$2,3328($sp)

	move	$fp,$21
	ld	$21,3240($sp)
	move	$20,$22
.L277:
	ld	$2,3528($sp)
	li	$4,2			# 0x2
	ld	$6,3696($sp)
	ld	$3,192($2)
	ld	$2,256($2)
	daddu	$3,$3,$6
	lbu	$5,0($3)
	daddu	$2,$2,$6
	beq	$5,$4,.L346
	lbu	$3,0($2)

	ld	$2,3480($sp)
	beq	$2,$0,.L498
	nop

.L346:
	ld	$2,3712($sp)
.L533:
	ld	$4,%got_page(_ZN4x265L6ctxCbfE)($28)
	dlsa	$2,$2,$2,2
	daddiu	$4,$4,%got_ofst(_ZN4x265L6ctxCbfE)
	dlsa	$2,$2,$4,2
	ld	$4,3280($sp)
	dlsa	$2,$3,$2,2
	lw	$2,0($2)
	dlsa	$3,$2,$4,3
	lw	$14,880($3)
	lw	$8,884($3)
.L496:
	ld	$2,3640($sp)
	gsdmultu	$14,$14,$2
	gsdmultu	$8,$8,$2
	ld	$2,3600($sp)
	dsra	$14,$14,8
	dsra	$8,$8,8
	daddu	$14,$14,$fp
	bltz	$2,.L499
	daddu	$8,$8,$20

	ld	$2,3704($sp)
	move	$17,$0
	li	$16,1			# 0x1
	ld	$15,%got_disp(_ZN4x26516g_lastCoeffTableE)($28)
	li	$19,-1			# 0xffffffffffffffff
	ld	$23,3640($sp)
	sll	$11,$2,4
	ld	$2,3600($sp)
	ld	$20,3432($sp)
	addiu	$11,$11,-1
	ld	$22,3448($sp)
	move	$13,$2
	dsll	$25,$2,1
	dlsa	$24,$2,$sp,3
	move	$18,$2
	.align	3
.L359:
	beq	$13,$0,.L350
	nop

	beq	$13,$18,.L350
	ld	$2,3184($sp)

	ld	$3,0($24)
	daddu	$2,$2,$25
	lhu	$2,0($2)
	dsubu	$8,$8,$3
	ld	$3,3320($sp)
	dsrl	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,.L351
	nop

.L350:
	b	.L358
	addiu	$6,$11,16

	.align	3
.L416:
	move	$8,$7
.L352:
	addiu	$6,$6,-1
	beq	$11,$6,.L351
	nop

.L358:
	slt	$2,$20,$6
	bne	$2,$0,.L352
	dext	$3,$6,0,32

	ld	$4,3176($sp)
	dlsa	$2,$3,$sp,3
	ld	$2,512($2)
	dlsa	$4,$3,$4,1
	lhu	$9,0($4)
	dsubu	$7,$8,$2
	dlsa	$2,$9,$21,1
	lh	$4,0($2)
	beq	$4,$0,.L416
	srl	$10,$9,3

	andi	$2,$9,0x7
	ld	$12,8($22)
	move	$5,$9
	lw	$9,3192($sp)
	move	$fp,$2
	dlsa	$3,$3,$sp,3
	dlsa	$5,$5,$sp,3
	xori	$9,$9,0x2
	movz	$fp,$10,$9
	movn	$2,$10,$9
	daddu	$fp,$15,$fp
	lbu	$9,0($fp)
	daddu	$2,$15,$2
	lbu	$2,0($2)
	andi	$10,$9,0xf
	sra	$9,$9,4
	andi	$fp,$2,0xf
	dlsa	$10,$10,$12,2
	lw	$10,560($10)
	dlsa	$12,$fp,$12,2
	sll	$9,$9,15
	lw	$12,600($12)
	sra	$2,$2,4
	sll	$2,$2,15
	addu	$9,$9,$10
	addu	$12,$12,$9
	addu	$2,$2,$12
	dext	$2,$2,0,32
	gsdmultu	$2,$2,$23
	dsra	$2,$2,8
	daddu	$2,$2,$7
	slt	$7,$2,$14
	beq	$7,$0,.L354
	slt	$4,$4,2

	addiu	$17,$6,1
	move	$14,$2
.L354:
	beq	$4,$0,.L526
	ld	$2,3432($sp)

	lw	$2,112($22)
	beq	$2,$16,.L526
	ld	$2,3432($sp)

	ld	$2,1536($3)
	addiu	$6,$6,-1
	ld	$3,1024($5)
	dsubu	$8,$8,$2
	bne	$11,$6,.L358
	daddu	$8,$8,$3

	.align	3
.L351:
	addiu	$13,$13,-1
	daddiu	$25,$25,-2
	daddiu	$24,$24,-8
	bne	$13,$19,.L359
	addiu	$11,$11,-16

	ld	$2,3432($sp)
.L526:
	li	$8,-16			# 0xfffffffffffffff0
	and	$8,$17,$8
	addiu	$8,$8,16
	blez	$17,.L500
	subu	$10,$2,$17

	ld	$6,3176($sp)
	addiu	$7,$17,-1
	move	$16,$0
	ld	$2,3448($sp)
	dext	$7,$7,0,32
	daddiu	$5,$6,2
	ld	$9,120($2)
	b	.L362
	dlsa	$7,$7,$5,1

	.align	3
.L501:
	daddiu	$5,$5,2
.L362:
	lhu	$2,0($6)
	move	$6,$5
	dsll	$2,$2,1
	daddu	$3,$9,$2
	daddu	$2,$21,$2
	lh	$4,0($3)
	lh	$3,0($2)
	sra	$4,$4,31
	andi	$4,$4,0xffff
	sltu	$11,$0,$3
	xor	$3,$3,$4
	addu	$16,$11,$16
	subu	$3,$3,$4
	bne	$7,$5,.L501
	sh	$3,0($2)

.L347:
	sra	$3,$10,31
	and	$3,$3,$10
	addu	$3,$3,$17
	ori	$3,$3,0xf
	slt	$2,$3,$17
	bne	$2,$0,.L361
	ld	$2,3176($sp)

	subu	$4,$3,$17
	dext	$4,$4,0,32
	daddu	$4,$4,$17
	daddiu	$3,$2,2
	dlsa	$2,$17,$2,1
	dlsa	$4,$4,$3,1
	.align	3
.L363:
	lhu	$3,0($2)
	daddiu	$2,$2,2
	dlsa	$3,$3,$21,1
	bne	$4,$2,.L363
	sh	$0,0($3)

.L361:
	ld	$3,3432($sp)
	slt	$2,$3,$8
	bne	$2,$0,.L364
	ld	$2,3176($sp)

	subu	$4,$3,$8
	dext	$4,$4,4,28
	dlsa	$4,$4,$8,4
	daddiu	$3,$2,32
	dlsa	$8,$8,$2,1
	dlsa	$4,$4,$3,1
	.align	3
.L365:
	lhu	$3,0($8)
	daddiu	$8,$8,32
	move	$2,$3
	dlsa	$3,$3,$21,1
	daddiu	$6,$2,8
	daddiu	$5,$2,16
	sb	$0,0($3)
	daddiu	$2,$2,24
	dlsa	$6,$6,$21,1
	sb	$0,1($3)
	dlsa	$5,$5,$21,1
	dlsa	$2,$2,$21,1
	sb	$0,2($3)
	sb	$0,3($3)
	sb	$0,4($3)
	sb	$0,5($3)
	sb	$0,6($3)
	sb	$0,7($3)
	sb	$0,0($6)
	sb	$0,1($6)
	sb	$0,2($6)
	sb	$0,3($6)
	sb	$0,4($6)
	sb	$0,5($6)
	sb	$0,6($6)
	sb	$0,7($6)
	sb	$0,0($5)
	sb	$0,1($5)
	sb	$0,2($5)
	sb	$0,3($5)
	sb	$0,4($5)
	sb	$0,5($5)
	sb	$0,6($5)
	sb	$0,7($5)
	sb	$0,0($2)
	sb	$0,1($2)
	sb	$0,2($2)
	sb	$0,3($2)
	sb	$0,4($2)
	sb	$0,5($2)
	sb	$0,6($2)
	bne	$4,$8,.L365
	sb	$0,7($2)

.L364:
	ld	$2,3528($sp)
	ld	$2,56($2)
	ld	$2,8($2)
	lbu	$2,27($2)
	beq	$2,$0,.L424
	sltu	$2,$16,2

	bne	$2,$0,.L424
	addiu	$2,$17,-1

	sra	$2,$2,4
	bltz	$2,.L424
	li	$3,-1			# 0xffffffffffffffff

	sd	$16,3200($sp)
	dsll	$20,$2,1
	ld	$19,3320($sp)
	dsll	$3,$3,63
	dsll	$23,$2,4
	ld	$17,3544($sp)
	daddiu	$2,$3,-1
	li	$18,1			# 0x1
	ld	$16,3496($sp)
	sd	$2,3208($sp)
	.align	3
.L379:
	ld	$2,3184($sp)
	daddu	$2,$2,$20
	lhu	$2,0($2)
	dsrl	$2,$19,$2
	andi	$2,$2,0x1
	beq	$2,$0,.L366
	ld	$2,3632($sp)

	move	$22,$23
	li	$5,8			# 0x8
	lwu	$6,3192($sp)
	ld	$25,5976($2)
	ld	$2,3176($sp)
	dsll	$6,$6,5
	dlsa	$2,$22,$2,1
	lhu	$4,0($2)
	ld	$2,3664($sp)
	dlsa	$4,$4,$21,1
	jalr	$25
	daddu	$6,$2,$6

	move	$4,$2
	andi	$2,$2,0x00ff
	srl	$10,$4,8
	seb	$10,$10
	subu	$3,$10,$2
	slt	$3,$3,4
	bne	$3,$0,.L418
	addu	$3,$23,$2

	ld	$5,3176($sp)
	dlsa	$3,$3,$5,1
	lhu	$3,0($3)
	dlsa	$3,$3,$21,1
	lh	$24,0($3)
	xor	$4,$24,$4
	bltz	$4,.L502
	addu	$3,$23,$10

.L418:
	move	$18,$0
.L366:
	daddiu	$20,$20,-2
	li	$2,-2			# 0xfffffffffffffffe
	bne	$2,$20,.L379
	addiu	$23,$23,-16

	ld	$16,3200($sp)
.L424:
	ld	$31,3816($sp)
.L520:
	move	$2,$16
	ld	$fp,3808($sp)
	ld	$28,3800($sp)
	ld	$23,3792($sp)
	ld	$22,3784($sp)
	ld	$21,3776($sp)
	ld	$20,3768($sp)
	ld	$19,3760($sp)
	ld	$18,3752($sp)
	ld	$17,3744($sp)
	ld	$16,3736($sp)
	jr	$31
	daddiu	$sp,$sp,3824

	.align	3
.L269:
	beq	$20,$0,.L395
	ld	$2,3448($sp)

	move	$11,$19
	move	$fp,$0
	ld	$12,3176($sp)
	li	$9,64			# 0x40
	ld	$7,120($2)
	dext	$2,$11,0,32
	.align	3
.L527:
	dlsa	$2,$2,$12,1
	lhu	$6,0($2)
	addiu	$10,$6,32
.L275:
	addiu	$8,$6,4
	move	$4,$6
.L274:
	dext	$2,$4,0,32
	addiu	$4,$4,1
	dlsa	$5,$2,$7,1
	dlsa	$3,$2,$sp,3
	lh	$2,0($5)
	mult	$2,$2
	mflo	$2
	mfhi	$5
	dins	$2,$5,32,32
	dsll	$2,$2,7
	sd	$2,1024($3)
	bne	$8,$4,.L274
	daddu	$fp,$fp,$2

	addiu	$6,$6,8
	bne	$6,$10,.L275
	nop

	addiu	$11,$11,16
	bne	$11,$9,.L527
	dext	$2,$11,0,32

	b	.L517
	ld	$4,3600($sp)

.L279:
	ld	$3,3360($sp)
	ld	$5,3208($sp)
	addiu	$4,$3,1
	movz	$3,$4,$5
	sd	$3,3360($sp)
	ld	$4,3648($sp)
	.align	3
.L524:
	move	$19,$0
	li	$14,15			# 0xf
	ld	$3,3392($sp)
	sd	$0,3136($sp)
	dlsa	$10,$10,$4,3
	li	$4,1			# 0x1
	sd	$0,3144($sp)
	dsll	$2,$4,$2
	lhu	$3,0($3)
	sd	$2,3512($sp)
	ld	$2,3448($sp)
	move	$24,$3
	ld	$3,3592($sp)
	ld	$4,3360($sp)
	ld	$2,128($2)
	dlsa	$13,$13,$3,1
	ld	$3,3384($sp)
	sll	$4,$4,2
	sd	$0,3152($sp)
	sd	$2,3224($sp)
	ld	$2,0($10)
	addiu	$8,$3,15
	sd	$4,3336($sp)
	ld	$3,3616($sp)
	ld	$4,3432($sp)
	sd	$2,3344($sp)
	li	$2,3			# 0x3
	sd	$2,3584($sp)
	li	$2,1			# 0x1
	daddiu	$12,$3,30
	sd	$4,3232($sp)
	sd	$0,3160($sp)
	sd	$0,3168($sp)
	sd	$0,3472($sp)
	sd	$0,3456($sp)
	sd	$0,3520($sp)
	sd	$0,3464($sp)
	sd	$0,3304($sp)
	sd	$0,3352($sp)
	sd	$0,3368($sp)
	sd	$0,3296($sp)
	sd	$2,3208($sp)
	b	.L340
	sd	$20,3256($sp)

	.align	3
.L504:
	dext	$2,$5,0,32
	sd	$2,3200($sp)
	dlsa	$2,$2,$sp,3
	sd	$3,1024($2)
.L290:
	daddu	$21,$21,$3
	beq	$5,$0,.L291
	move	$2,$0

	lhu	$2,0($12)
	ld	$5,3344($sp)
	sll	$2,$2,2
	dsrl	$2,$5,$2
	ld	$5,3272($sp)
	andi	$2,$2,0xf
	addu	$2,$2,$5
.L291:
	ld	$5,3232($sp)
	sltu	$5,$5,$8
	beq	$5,$0,.L292
	ld	$25,3208($sp)

	dext	$4,$8,0,32
	daddu	$22,$22,$3
	dlsa	$4,$4,$sp,3
	move	$3,$19
	move	$2,$0
	sd	$0,1536($4)
	sd	$0,512($4)
.L293:
	addiu	$14,$14,-1
	li	$4,-1			# 0xffffffffffffffff
	daddiu	$13,$13,-2
	addiu	$8,$8,-1
	beq	$14,$4,.L503
	daddiu	$12,$12,-2

.L412:
	move	$19,$3
.L340:
	lhu	$5,30($13)
	ld	$2,3216($sp)
	dext	$15,$5,0,32
	dsll	$4,$15,1
	and	$7,$2,$8
	ld	$2,3224($sp)
	daddu	$3,$18,$4
	lh	$6,0($3)
	ld	$3,3240($sp)
	daddu	$2,$2,$4
	lh	$10,0($2)
	mult	$6,$6
	move	$11,$6
	daddu	$4,$3,$4
	lh	$9,0($4)
	subu	$10,$10,$6
	mflo	$3
	mfhi	$2
	dins	$3,$2,32,32
	beq	$7,$0,.L504
	dsll	$3,$3,7

	ld	$2,3312($sp)
	dext	$25,$5,0,32
	sd	$25,3200($sp)
	dlsa	$25,$25,$sp,3
	gsdmultu	$2,$10,$2
	dsra	$2,$2,9
	dsubu	$3,$3,$2
	b	.L290
	sd	$3,1024($25)

	.align	3
.L292:
	ld	$5,3336($sp)
	ld	$16,3248($sp)
	addu	$5,$5,$25
	andi	$25,$24,0x1
	dext	$5,$5,0,32
	srl	$24,$24,1
	daddiu	$5,$5,54
	bne	$25,$0,.L294
	dlsa	$5,$5,$16,3

	lw	$6,0($5)
	dext	$2,$2,0,32
	dext	$4,$8,0,32
	ld	$5,3280($sp)
	dlsa	$4,$4,$sp,3
	addiu	$14,$14,-1
	ld	$7,3200($sp)
	daddiu	$13,$13,-2
	addiu	$8,$8,-1
	daddiu	$12,$12,-2
	dlsa	$2,$2,$5,2
	lw	$5,224($2)
	dlsa	$7,$7,$sp,2
	lw	$9,392($2)
	ld	$2,3256($sp)
	sw	$6,2560($7)
	gsdmultu	$2,$5,$2
	subu	$5,$9,$5
	sw	$5,2048($7)
	dsra	$2,$2,8
	daddu	$5,$2,$3
	sd	$2,512($4)
	daddu	$3,$2,$19
	sd	$5,1536($4)
	li	$4,-1			# 0xffffffffffffffff
	bne	$14,$4,.L412
	daddu	$22,$22,$5

.L503:
	ld	$4,3520($sp)
	bne	$4,$0,.L505
	ld	$20,3256($sp)

.L341:
	ld	$4,3400($sp)
	sd	$3,3160($sp)
	sd	$2,3168($sp)
	sd	$0,0($4)
	ld	$4,3328($sp)
	beq	$4,$0,.L288
	nop

	ld	$5,3600($sp)
	beq	$4,$5,.L288
	nop

	ld	$5,3320($sp)
	ld	$4,3552($sp)
	ld	$7,3568($sp)
	ld	$6,3512($sp)
	dsrl	$4,$5,$4
	sll	$4,$4,0
	and	$6,$5,$6
	srl	$5,$4,1
	and	$4,$7,$4
	ld	$7,3560($sp)
	and	$5,$5,$7
	or	$4,$5,$4
	ld	$5,3280($sp)
	dlsa	$5,$4,$5,3
	lw	$7,208($5)
	gsdmultu	$7,$7,$20
	beq	$6,$0,.L343
	dsra	$7,$7,8

	lw	$5,3136($sp)
	bne	$5,$0,.L344
	nop

	dsubu	$22,$22,$2
	move	$3,$19
	sd	$19,3160($sp)
.L344:
	ld	$2,3280($sp)
	daddu	$6,$22,$7
	ld	$5,3144($sp)
	dlsa	$4,$4,$2,3
	ld	$2,3152($sp)
	lw	$4,212($4)
	daddu	$2,$6,$2
	gsdmultu	$4,$4,$20
	dsubu	$2,$2,$5
	ld	$5,3400($sp)
	dsubu	$2,$2,$3
	dsra	$4,$4,8
	daddu	$22,$22,$4
	slt	$3,$2,$22
	beq	$3,$0,.L288
	sd	$4,0($5)

	ld	$3,3448($sp)
	lw	$3,112($3)
	slt	$3,$3,2
	bne	$3,$0,.L528
	ld	$3,3400($sp)

	ld	$3,3384($sp)
	move	$22,$2
	ldc1	$f1,3320($sp)
	ld	$2,3592($sp)
	ldc1	$f0,3512($sp)
	ld	$6,3240($sp)
	dext	$3,$3,0,32
	sd	$7,0($5)
	dlsa	$2,$3,$2,1
	pandn	$f0,$f0,$f1
	lhu	$3,0($2)
	move	$2,$3
	dlsa	$3,$3,$6,1
	daddiu	$5,$2,8
	daddiu	$4,$2,16
	sb	$0,0($3)
	daddiu	$2,$2,24
	dlsa	$5,$5,$6,1
	sb	$0,1($3)
	dlsa	$4,$4,$6,1
	dlsa	$2,$2,$6,1
	sb	$0,2($3)
	sb	$0,3($3)
	sb	$0,4($3)
	sb	$0,5($3)
	sb	$0,6($3)
	sb	$0,7($3)
	sdc1	$f0,3320($sp)
	sb	$0,0($5)
	sb	$0,1($5)
	sb	$0,2($5)
	sb	$0,3($5)
	sb	$0,4($5)
	sb	$0,5($5)
	sb	$0,6($5)
	sb	$0,7($5)
	sb	$0,0($4)
	sb	$0,1($4)
	sb	$0,2($4)
	sb	$0,3($4)
	sb	$0,4($4)
	sb	$0,5($4)
	sb	$0,6($4)
	sb	$0,7($4)
	sb	$0,0($2)
	sb	$0,1($2)
	sb	$0,2($2)
	sb	$0,3($2)
	sb	$0,4($2)
	sb	$0,5($2)
	sb	$0,6($2)
	b	.L288
	sb	$0,7($2)

	.align	3
.L294:
	ld	$16,3304($sp)
	li	$23,217			# 0xd9
	ld	$17,3352($sp)
	subu	$16,$0,$16
	sra	$20,$16,31
	addiu	$17,$17,-8
	srl	$17,$17,31
	addiu	$16,$20,1
	ld	$20,3296($sp)
	lsa	$16,$16,$17,1
	ld	$17,3360($sp)
	andi	$fp,$16,0x1
	sd	$20,3424($sp)
	addu	$20,$20,$17
	sll	$17,$16,1
	srl	$17,$23,$17
	ld	$23,3248($sp)
	dext	$20,$20,0,32
	daddiu	$20,$20,78
	andi	$17,$17,0x3
	dlsa	$20,$20,$23,3
	sd	$20,3408($sp)
	move	$20,$17
	move	$17,$0
	beq	$fp,$0,.L295
	sd	$20,3264($sp)

	lw	$17,4($5)
.L295:
	li	$20,3			# 0x3
	bne	$16,$20,.L529
	dext	$16,$8,0,32

	ld	$16,3408($sp)
	lw	$16,4($16)
	addu	$17,$16,$17
	dext	$16,$8,0,32
.L529:
	dlsa	$20,$16,$sp,3
	sd	$16,3288($sp)
	move	$16,$17
	sd	$16,3416($sp)
	ld	$16,3376($sp)
	sd	$16,1536($20)
	ld	$16,3432($sp)
	beq	$16,$8,.L506
	sltu	$23,$9,3

	ld	$16,3280($sp)
	dext	$2,$2,0,32
	dlsa	$2,$2,$16,2
	ld	$16,3376($sp)
	beq	$23,$0,.L299
	lw	$17,224($2)

	ld	$16,3256($sp)
	gsdmultu	$23,$17,$16
	dsra	$23,$23,8
	daddu	$16,$23,$3
	sd	$23,512($20)
	sd	$16,1536($20)
.L299:
	lw	$2,392($2)
	ld	$3,3200($sp)
	subu	$17,$2,$17
	dlsa	$3,$3,$sp,2
	sw	$17,2048($3)
.L298:
	ld	$3,3504($sp)
	dlsa	$15,$15,$3,2
	ld	$3,3488($sp)
	lw	$17,0($15)
	sll	$17,$17,$3
	ld	$3,3496($sp)
	mul	$20,$17,$9
	addu	$15,$20,$3
	li	$3,1			# 0x1
	beq	$9,$3,.L507
	nop

	beq	$9,$0,.L304
	ld	$3,3264($sp)

	subu	$25,$9,$3
	addiu	$3,$9,-1
	addiu	$20,$25,-1
	sd	$3,3624($sp)
	bltz	$25,.L508
	move	$23,$20

	ld	$fp,3368($sp)
	srl	$25,$25,$fp
	sltu	$3,$25,3
	beq	$3,$0,.L309
	nop

	addiu	$3,$fp,1
	addu	$25,$3,$25
	sll	$25,$25,15
.L310:
	ld	$3,3416($sp)
	addu	$25,$3,$25
	li	$3,32768			# 0x8000
	bltz	$23,.L509
	addu	$25,$3,$25

.L312:
	ld	$23,3368($sp)
	srl	$20,$20,$23
	sltu	$3,$20,3
	beq	$3,$0,.L315
	nop

	addiu	$3,$23,1
	addu	$20,$3,$20
	sll	$20,$20,15
.L316:
	ld	$3,3416($sp)
	addu	$20,$3,$20
.L383:
	ld	$fp,3544($sp)
	li	$23,32768			# 0x8000
	sra	$3,$11,31
	addu	$23,$2,$23
	subu	$17,$15,$17
	addu	$20,$23,$20
	xor	$11,$3,$11
	ld	$23,3256($sp)
	subu	$11,$11,$3
	srl	$17,$17,$fp
	srl	$15,$15,$fp
	addu	$25,$25,$2
	subu	$fp,$11,$15
	dext	$25,$25,0,32
	subu	$11,$11,$17
	dext	$20,$20,0,32
	gsdmultu	$25,$25,$23
	gsdmultu	$fp,$fp,$fp
	gsdmultu	$20,$20,$23
	gsdmultu	$11,$11,$11
	dsra	$25,$25,8
	dsll	$fp,$fp,7
	dsra	$20,$20,8
	daddu	$25,$25,$fp
	dsll	$11,$11,7
	beq	$7,$0,.L318
	daddu	$20,$20,$11

	xor	$10,$3,$10
	srl	$3,$6,31
	addu	$3,$10,$3
	addu	$17,$3,$17
	addu	$15,$3,$15
	sra	$3,$17,31
	sra	$6,$15,31
	xor	$17,$3,$17
	xor	$15,$6,$15
	subu	$17,$17,$3
	ld	$3,3312($sp)
	subu	$15,$15,$6
	gsdmultu	$15,$15,$3
	gsdmultu	$17,$17,$3
	dsra	$15,$15,9
	dsra	$17,$17,9
	dsubu	$25,$25,$15
	dsubu	$20,$20,$17
.L318:
	slt	$3,$25,$16
	beq	$3,$0,.L405
	ld	$7,3256($sp)

	dext	$3,$2,0,32
	move	$16,$25
	ld	$6,3288($sp)
	gsdmultu	$3,$3,$7
	dlsa	$6,$6,$sp,3
	sd	$25,1536($6)
	dsra	$3,$3,8
	sd	$3,512($6)
.L319:
	slt	$3,$20,$16
	beq	$3,$0,.L320
	seh	$7,$9

	ld	$3,3256($sp)
	dext	$2,$2,0,32
	ld	$6,3624($sp)
	gsdmultu	$2,$2,$3
	ld	$3,3288($sp)
	subu	$25,$0,$6
	seh	$7,$6
	slt	$25,$25,0
	move	$9,$6
	dlsa	$3,$3,$sp,3
	sd	$20,1536($3)
	dsra	$2,$2,8
	sd	$2,512($3)
.L305:
	ld	$3,3352($sp)
	sh	$7,0($4)
	addu	$3,$3,$25
	sd	$3,3352($sp)
	ld	$3,3528($sp)
	ld	$3,56($3)
	ld	$3,8($3)
	lbu	$3,27($3)
	beq	$3,$0,.L322
	daddu	$22,$22,$20

.L384:
	ld	$3,3264($sp)
	subu	$3,$9,$3
	addiu	$11,$3,-1
	slt	$4,$11,-2
	beq	$4,$0,.L323
	move	$15,$11

	ld	$3,3408($sp)
	move	$6,$0
	lw	$4,4($5)
	lw	$10,0($5)
	lw	$3,0($3)
	addu	$4,$4,$3
.L324:
	ld	$3,3200($sp)
	subu	$4,$4,$10
	subu	$6,$6,$10
	dlsa	$3,$3,$sp,2
	sw	$4,2560($3)
	sw	$6,2304($3)
.L336:
	ld	$3,3264($sp)
	sltu	$17,$9,$3
	bne	$17,$0,.L337
	ld	$4,3368($sp)

	sltu	$3,$4,4
	beq	$3,$0,.L337
	ld	$5,3584($sp)

	sltu	$3,$5,$9
	beq	$3,$0,.L337
	addiu	$3,$4,1

	sd	$3,3368($sp)
	sll	$3,$5,1
	sd	$3,3584($sp)
	.align	3
.L337:
	sltu	$9,$9,2
	bne	$9,$0,.L338
	ld	$4,3304($sp)

	ld	$3,3296($sp)
	sd	$0,3208($sp)
	addiu	$4,$4,1
	sd	$4,3304($sp)
	addiu	$3,$3,-2
	ld	$4,3424($sp)
	srl	$3,$3,31
	addu	$3,$3,$4
	sd	$3,3296($sp)
.L339:
	beq	$7,$0,.L293
	daddu	$3,$19,$2

	ld	$6,3320($sp)
	ld	$7,3512($sp)
	ld	$4,3288($sp)
	ld	$5,3200($sp)
	or	$6,$6,$7
	sd	$6,3320($sp)
	dlsa	$4,$4,$sp,3
	ld	$6,3472($sp)
	dlsa	$5,$5,$sp,3
	ld	$4,1536($4)
	ld	$5,1024($5)
	addu	$6,$6,$14
	sd	$6,3472($sp)
	li	$6,1			# 0x1
	dsubu	$4,$4,$2
	sd	$6,3520($sp)
	ld	$6,3464($sp)
	daddu	$4,$6,$4
	sd	$4,3464($sp)
	ld	$4,3456($sp)
	daddu	$4,$4,$5
	b	.L293
	sd	$4,3456($sp)

	.align	3
.L304:
	ld	$2,3288($sp)
	daddu	$22,$22,$16
	move	$25,$0
	move	$7,$0
	move	$9,$0
	sh	$0,0($4)
	dlsa	$2,$2,$sp,3
	ld	$2,512($2)
.L322:
	ld	$3,3200($sp)
	lw	$4,0($5)
	dlsa	$3,$3,$sp,2
	sw	$0,2304($3)
	b	.L336
	sw	$4,2560($3)

	.align	3
.L338:
	ld	$4,3208($sp)
	addiu	$3,$4,-1
	addiu	$5,$4,1
	sltu	$3,$3,2
	and	$25,$3,$25
	movn	$4,$5,$25
	b	.L339
	sd	$4,3208($sp)

	.align	3
.L507:
	beq	$fp,$0,.L301
	ld	$3,3368($sp)

	lw	$3,0($5)
	li	$17,32768			# 0x8000
	addu	$3,$3,$17
.L302:
	ld	$20,3544($sp)
	sra	$17,$11,31
	addu	$3,$2,$3
	xor	$11,$17,$11
	dext	$3,$3,0,32
	subu	$11,$11,$17
	srl	$15,$15,$20
	ld	$20,3256($sp)
	subu	$11,$11,$15
	gsdmultu	$11,$11,$11
	gsdmultu	$3,$3,$20
	dsll	$11,$11,7
	dsra	$3,$3,8
	beq	$7,$0,.L303
	daddu	$20,$3,$11

	srl	$6,$6,31
	xor	$10,$17,$10
	addu	$10,$10,$6
	ld	$6,3312($sp)
	addu	$15,$10,$15
	sra	$3,$15,31
	xor	$15,$3,$15
	subu	$3,$15,$3
	gsdmultu	$3,$3,$6
	dsra	$3,$3,9
	dsubu	$20,$20,$3
.L303:
	slt	$3,$20,$16
	beq	$3,$0,.L304
	ld	$3,3256($sp)

	dext	$2,$2,0,32
	li	$7,1			# 0x1
	gsdmultu	$2,$2,$3
	ld	$3,3288($sp)
	dlsa	$3,$3,$sp,3
	sd	$20,1536($3)
	dsra	$2,$2,8
	b	.L305
	sd	$2,512($3)

	.align	3
.L506:
	ld	$2,3200($sp)
	ld	$16,3376($sp)
	dlsa	$2,$2,$sp,2
	sw	$0,2048($2)
	b	.L298
	move	$2,$0

	.align	3
.L323:
	ld	$10,3368($sp)
	addiu	$4,$11,1
	ld	$16,3656($sp)
	dext	$6,$10,0,32
	daddu	$6,$16,$6
	addiu	$16,$11,2
	bltz	$11,.L325
	lbu	$6,0($6)

	addiu	$3,$3,1
	slt	$3,$6,$3
	bne	$3,$0,.L530
	li	$3,-1			# 0xffffffffffffffff

	addiu	$3,$10,1
	srl	$4,$4,$10
	addu	$4,$4,$3
	move	$6,$10
	addiu	$4,$4,-8
	sra	$5,$4,31
	and	$10,$5,$4
	li	$4,-1			# 0xffffffffffffffff
	addiu	$10,$10,8
	beq	$9,$4,.L407
	sll	$10,$10,15

	srl	$4,$16,$6
	move	$6,$0
	addu	$4,$4,$3
	addiu	$4,$4,-8
	sra	$5,$4,31
	and	$4,$5,$4
	li	$5,1			# 0x1
	addiu	$4,$4,8
	beq	$9,$5,.L324
	sll	$4,$4,15

	ld	$5,3368($sp)
	srl	$11,$11,$5
	addu	$3,$11,$3
	addiu	$3,$3,-8
	sra	$5,$3,31
	and	$6,$5,$3
	addiu	$6,$6,8
	b	.L324
	sll	$6,$6,15

	.align	3
.L497:
	move	$14,$3
	ld	$3,3208($sp)
	bne	$3,$0,.L381
	ld	$3,3360($sp)

	b	.L536
	addiu	$3,$3,1

	.align	3
.L325:
	li	$3,-1			# 0xffffffffffffffff
	.align	3
.L530:
	beq	$4,$3,.L510
	move	$23,$6

	ld	$10,3416($sp)
	sltu	$3,$23,$4
	bne	$3,$0,.L511
	move	$6,$10

.L329:
	ld	$10,3368($sp)
	srl	$3,$4,$10
	addu	$3,$3,$10
	addiu	$3,$3,-7
	sra	$4,$3,31
	and	$10,$4,$3
	addiu	$10,$10,8
	sll	$10,$10,15
	addu	$10,$10,$6
.L330:
	li	$3,-1			# 0xffffffffffffffff
	bne	$9,$3,.L531
	ld	$6,3416($sp)

	bltz	$15,.L334
	move	$4,$0

	ld	$3,3368($sp)
	addiu	$3,$3,1
.L332:
	sltu	$5,$23,$11
	beq	$5,$0,.L532
	ld	$5,3368($sp)

	subu	$5,$11,$23
	ld	$6,3416($sp)
	addiu	$11,$23,1
	clz	$5,$5
	xori	$5,$5,0x1f
	sll	$5,$5,1
	addiu	$5,$5,1
	sll	$5,$5,15
	addu	$5,$5,$6
	sd	$5,3416($sp)
	ld	$5,3368($sp)
.L532:
	srl	$11,$11,$5
	addu	$11,$3,$11
	addiu	$5,$11,-8
	sra	$3,$5,31
	and	$6,$3,$5
	ld	$3,3416($sp)
	addiu	$6,$6,8
	sll	$6,$6,15
	b	.L324
	addu	$6,$6,$3

	.align	3
.L301:
	li	$17,32768			# 0x8000
	addiu	$3,$3,1
	sll	$3,$3,15
	b	.L302
	addu	$3,$3,$17

	.align	3
.L320:
	ld	$2,3528($sp)
	daddu	$22,$22,$16
	sh	$7,0($4)
	ld	$3,56($2)
	ld	$2,3288($sp)
	ld	$3,8($3)
	dlsa	$2,$2,$sp,3
	lbu	$3,27($3)
	bne	$3,$0,.L512
	ld	$2,512($2)

	ld	$3,3352($sp)
	subu	$25,$0,$9
	slt	$25,$25,0
	addu	$3,$3,$25
	b	.L322
	sd	$3,3352($sp)

	.align	3
.L405:
	b	.L319
	move	$9,$0

	.align	3
.L343:
	ld	$4,3400($sp)
	daddu	$2,$22,$7
	dsubu	$22,$2,$3
	b	.L288
	sd	$7,0($4)

	.align	3
.L508:
	li	$3,2			# 0x2
	beq	$9,$3,.L513
	li	$3,32768			# 0x8000

	lw	$25,0($5)
	bgez	$23,.L312
	addu	$25,$3,$25

.L509:
	addiu	$3,$9,-1
	li	$20,2			# 0x2
	beq	$3,$20,.L514
	nop

	b	.L383
	lw	$20,0($5)

	.align	3
.L399:
	ld	$2,3688($sp)
	move	$5,$0
	li	$13,16			# 0x10
	ld	$9,3280($sp)
	ld	$24,3384($sp)
	ld	$25,3616($sp)
	dlsa	$10,$10,$2,4
.L283:
	addiu	$8,$5,4
.L287:
	dext	$2,$5,0,32
	addu	$4,$11,$5
	dlsa	$2,$2,$25,1
	dext	$4,$4,0,32
	lhu	$3,0($2)
	dlsa	$2,$4,$18,1
	addu	$6,$24,$5
	lh	$2,0($2)
	dext	$6,$6,0,32
	dlsa	$7,$4,$sp,3
	dlsa	$6,$6,$sp,3
	dlsa	$4,$4,$sp,2
	daddu	$3,$10,$3
	addiu	$5,$5,1
	lbu	$3,0($3)
	mult	$2,$2
	addu	$3,$3,$14
	dext	$3,$3,0,32
	dlsa	$3,$3,$9,2
	lw	$17,224($3)
	mfhi	$16
	mflo	$2
	dins	$2,$16,32,32
	lw	$16,392($3)
	gsdmultu	$3,$17,$20
	dsll	$2,$2,7
	daddu	$21,$21,$2
	daddu	$22,$22,$2
	sd	$2,1024($7)
	sd	$2,1536($6)
	subu	$2,$16,$17
	sw	$2,2048($4)
	dsra	$2,$3,8
	bne	$8,$5,.L287
	sd	$2,512($6)

	bne	$5,$13,.L283
	addiu	$11,$11,4

	b	.L519
	li	$2,1			# 0x1

	.align	3
.L309:
	li	$fp,3			# 0x3
	beq	$25,$fp,.L311
	li	$3,4			# 0x4

	addiu	$3,$25,-2
	clz	$3,$3
	xori	$3,$3,0x1f
	sll	$3,$3,1
	addiu	$3,$3,4
.L311:
	ld	$25,3368($sp)
	addu	$25,$25,$3
	b	.L310
	sll	$25,$25,15

	.align	3
.L315:
	li	$23,3			# 0x3
	beq	$20,$23,.L317
	li	$3,4			# 0x4

	addiu	$3,$20,-2
	clz	$3,$3
	xori	$3,$3,0x1f
	sll	$3,$3,1
	addiu	$3,$3,4
.L317:
	ld	$20,3368($sp)
	addu	$20,$20,$3
	b	.L316
	sll	$20,$20,15

	.align	3
.L514:
	ld	$20,3408($sp)
	lw	$3,4($5)
	lw	$20,0($20)
	b	.L383
	addu	$20,$20,$3

	.align	3
.L510:
	li	$3,2			# 0x2
	bne	$9,$3,.L488
	ld	$3,3408($sp)

	lw	$10,0($3)
	lw	$3,4($5)
	addu	$10,$10,$3
	ld	$6,3416($sp)
	.align	3
.L531:
	sltu	$3,$23,$16
	move	$4,$16
	beq	$3,$0,.L331
	move	$17,$6

	subu	$17,$16,$23
	addiu	$4,$23,1
	clz	$17,$17
	xori	$17,$17,0x1f
	sll	$17,$17,1
	addiu	$17,$17,1
	sll	$17,$17,15
	addu	$17,$17,$6
.L331:
	ld	$6,3368($sp)
	addiu	$20,$9,-1
	srl	$16,$4,$6
	addiu	$3,$6,1
	addu	$16,$3,$16
	move	$6,$0
	addiu	$16,$16,-8
	sra	$4,$16,31
	and	$4,$4,$16
	addiu	$4,$4,8
	sll	$4,$4,15
	beq	$20,$0,.L324
	addu	$4,$4,$17

	bgez	$15,.L332
	nop

	li	$3,2			# 0x2
	bne	$20,$3,.L334
	ld	$3,3408($sp)

	lw	$6,0($3)
	lw	$3,4($5)
	b	.L324
	addu	$6,$6,$3

	.align	3
.L513:
	ld	$3,3408($sp)
	li	$fp,32768			# 0x8000
	lw	$25,4($5)
	lw	$3,0($3)
	addu	$25,$25,$fp
	bgez	$20,.L312
	addu	$25,$25,$3

	b	.L383
	lw	$20,0($5)

.L511:
	subu	$6,$4,$23
	addiu	$4,$23,1
	clz	$6,$6
	xori	$6,$6,0x1f
	sll	$6,$6,1
	addiu	$6,$6,1
	sll	$6,$6,15
	b	.L329
	addu	$6,$6,$10

.L498:
	bne	$3,$0,.L533
	ld	$2,3712($sp)

	ld	$2,3280($sp)
	lw	$14,936($2)
	b	.L496
	lw	$8,940($2)

.L488:
	b	.L330
	lw	$10,0($5)

.L502:
	ld	$4,3448($sp)
	dlsa	$3,$3,$5,1
	lhu	$13,0($3)
	ld	$25,120($4)
	dext	$3,$13,0,32
	dlsa	$4,$3,$21,1
	lh	$8,0($4)
	sra	$4,$8,31
	xor	$7,$4,$8
	subu	$7,$7,$4
	xori	$7,$7,0x1
	sltu	$7,$7,1
	and	$7,$7,$18
	bne	$18,$0,.L367
	sll	$7,$7,17

	addiu	$3,$23,15
	li	$10,15			# 0xf
	dlsa	$3,$3,$5,1
	lhu	$13,0($3)
	dext	$3,$13,0,32
	dlsa	$4,$3,$21,1
	lh	$8,0($4)
	sra	$4,$8,31
	daddu	$12,$10,$22
.L535:
	sd	$23,3232($sp)
	move	$fp,$0
	dlsa	$12,$12,$5,1
	sd	$20,3240($sp)
	move	$15,$0
	daddiu	$12,$12,-2
	ld	$18,3208($sp)
	li	$22,-1			# 0xffffffffffffffff
	sw	$2,3216($sp)
	move	$5,$3
	sd	$19,3224($sp)
	ld	$14,3640($sp)
	ld	$23,3504($sp)
	b	.L377
	ld	$20,3488($sp)

	.align	3
.L516:
	dext	$8,$13,0,32
	addu	$19,$3,$4
	dlsa	$8,$8,$sp,2
	subu	$3,$4,$3
	srl	$19,$19,$17
	lw	$5,2560($8)
	srl	$3,$3,$17
	subu	$19,$9,$19
	subu	$3,$9,$3
	lw	$4,2304($8)
	gsdmultu	$19,$19,$19
	dext	$7,$7,0,32
	gsdmultu	$5,$5,$14
	gsdmultu	$3,$3,$3
	dsubu	$19,$19,$6
	dsll	$9,$19,7
	dsra	$5,$5,8
	dsubu	$3,$3,$6
	li	$6,1			# 0x1
	daddu	$5,$9,$5
	beq	$11,$6,.L515
	dsll	$3,$3,7

	gsdmultu	$4,$4,$14
	dsra	$4,$4,8
	daddu	$3,$4,$3
	dsubu	$7,$3,$7
	slt	$3,$5,$7
.L534:
	li	$8,1			# 0x1
	movz	$5,$7,$3
	li	$4,-1			# 0xffffffffffffffff
	movz	$8,$4,$3
.L373:
	slt	$3,$5,$18
.L537:
	beq	$3,$0,.L374
	sll	$11,$11,16

	seb	$fp,$8
	addu	$15,$11,$13
	move	$18,$5
.L374:
	addiu	$10,$10,-1
	beq	$10,$22,.L376
	move	$7,$0

	lhu	$13,0($12)
	daddiu	$12,$12,-2
	dext	$5,$13,0,32
	dlsa	$3,$5,$21,1
	lh	$8,0($3)
	sra	$4,$8,31
.L377:
	dlsa	$3,$5,$23,2
	xor	$11,$4,$8
	lw	$3,0($3)
	subu	$11,$11,$4
	dlsa	$5,$5,$25,1
	lh	$5,0($5)
	sll	$3,$3,$20
	mul	$6,$3,$11
	addu	$4,$6,$16
	sra	$6,$5,31
	xor	$9,$6,$5
	subu	$9,$9,$6
	srl	$6,$4,$17
	subu	$6,$9,$6
	bne	$8,$0,.L516
	gsdmultu	$6,$6,$6

	xor	$5,$24,$5
	bgez	$5,.L423
	slt	$4,$10,$2

	bne	$4,$0,.L374
	nop

.L423:
	dext	$4,$13,0,32
	addu	$3,$16,$3
	dlsa	$4,$4,$sp,2
	srl	$5,$3,$17
	lw	$3,2560($4)
	subu	$9,$9,$5
	li	$5,32768			# 0x8000
	lw	$4,2048($4)
	gsdmultu	$9,$9,$9
	li	$8,1			# 0x1
	addu	$3,$3,$5
	addu	$3,$3,$4
	gsdmultu	$3,$3,$14
	dsubu	$9,$9,$6
	dsll	$4,$9,7
	dsra	$5,$3,8
	b	.L373
	daddu	$5,$5,$4

.L407:
	ld	$5,3368($sp)
	move	$4,$0
	srl	$11,$11,$5
	addu	$3,$11,$3
	addiu	$3,$3,-8
	sra	$5,$3,31
	and	$6,$5,$3
	addiu	$6,$6,8
	b	.L324
	sll	$6,$6,15

.L334:
	b	.L324
	lw	$6,0($5)

.L515:
	lw	$6,2048($8)
	li	$8,32768			# 0x8000
	addu	$6,$6,$8
	subu	$4,$4,$6
	gsdmultu	$4,$4,$14
	dsra	$4,$4,8
	daddu	$3,$4,$3
	dsubu	$7,$3,$7
	lw	$3,3216($sp)
	bne	$10,$3,.L534
	slt	$3,$5,$7

	slt	$7,$5,$7
	beq	$7,$0,.L374
	li	$8,1			# 0x1

	b	.L537
	slt	$3,$5,$18

.L376:
	dext	$4,$15,16,16
	andi	$2,$15,0xffff
	ld	$19,3224($sp)
	dsll	$2,$2,1
	xori	$6,$4,0x1
	ld	$23,3232($sp)
	move	$3,$4
	sltu	$5,$4,32767
	ld	$20,3240($sp)
	daddu	$25,$25,$2
	sltu	$4,$3,1
	sltu	$6,$6,1
	bne	$5,$0,.L378
	daddu	$2,$21,$2

	subu	$4,$4,$6
	li	$fp,-1			# 0xffffffffffffffff
.L369:
	ld	$5,3200($sp)
	move	$18,$0
	lh	$3,0($25)
	addu	$4,$5,$4
	sd	$4,3200($sp)
	sra	$3,$3,31
	lhu	$4,0($2)
	subu	$4,$4,$3
	xor	$3,$3,$fp
	addu	$3,$4,$3
	b	.L366
	sh	$3,0($2)

.L395:
	b	.L270
	move	$fp,$0

.L396:
	move	$20,$fp
	b	.L277
	sd	$0,3320($sp)

.L397:
	b	.L278
	sd	$0,3360($sp)

.L367:
	bgez	$10,.L535
	daddu	$12,$10,$22

	move	$2,$21
	move	$fp,$0
	b	.L369
	li	$4,1			# 0x1

.L499:
	ld	$10,3432($sp)
	li	$8,16			# 0x10
	move	$17,$0
	b	.L347
	move	$16,$0

.L500:
	b	.L347
	move	$16,$0

.L378:
	addiu	$3,$fp,1
	seh	$fp,$fp
	sltu	$3,$3,1
	and	$6,$3,$6
	b	.L369
	subu	$4,$4,$6

.L512:
	beq	$9,$0,.L406
	ld	$3,3352($sp)

	subu	$25,$0,$9
	slt	$25,$25,0
	addu	$3,$3,$25
	b	.L384
	sd	$3,3352($sp)

.L505:
	ld	$4,3464($sp)
	sd	$4,3144($sp)
	ld	$4,3456($sp)
	sd	$4,3152($sp)
	ld	$4,3472($sp)
	b	.L341
	sw	$4,3136($sp)

.L406:
	move	$25,$0
	b	.L322
	move	$7,$0

	.set	macro
	.set	reorder
	.end	_ZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.size	_ZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjb, .-_ZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.section	.text._ZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjb,"axG",@progbits,_ZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjb,comdat
	.align	2
	.align	3
	.weak	_ZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.type	_ZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjb, @function
_ZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjb:
	.frame	$sp,10736,$31		# vars= 10640, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-10736
	dext	$3,$7,0,32
	sd	$fp,10720($sp)
	move	$fp,$6
	sd	$28,10712($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjb)))
	sd	$23,10704($sp)
	daddu	$28,$28,$25
	move	$23,$4
	sd	$22,10696($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjb)))
	daddiu	$22,$4,16
	sd	$21,10688($sp)
	sd	$20,10680($sp)
	li	$20,3			# 0x3
	sd	$19,10672($sp)
	li	$19,1			# 0x1
	sd	$18,10664($sp)
	move	$18,$8
	sd	$17,10656($sp)
	move	$17,$9
	li	$9,256			# 0x100
	sd	$16,10648($sp)
	sd	$31,10728($sp)
	ld	$2,192($5)
	sd	$5,10440($sp)
	dext	$5,$18,0,32
	ld	$8,%got_disp(_ZN4x26510primitivesE)($28)
	daddu	$2,$2,$5
	sd	$4,10360($sp)
	dsll	$4,$3,5
	lbu	$2,0($2)
	daddu	$22,$22,$4
	sd	$8,10544($sp)
	ld	$25,5704($8)
	move	$8,$20
	xori	$2,$2,0x2
	lw	$21,0($22)
	movz	$8,$0,$2
	sd	$3,10624($sp)
	addu	$2,$7,$8
	ld	$3,0($23)
	sd	$5,10608($sp)
	dlsa	$2,$2,$2,1
	lw	$5,4($22)
	dlsa	$21,$2,$21,1
	dlsa	$2,$21,$3,3
	sd	$7,10400($sp)
	ld	$4,120($23)
	addiu	$8,$5,16
	sd	$5,10368($sp)
	addiu	$7,$5,17
	ld	$5,864($2)
	jalr	$25
	sll	$8,$19,$8

	move	$16,$2
	beq	$16,$0,.L794
	ld	$31,10728($sp)

	lw	$5,116($23)
	lw	$4,24($22)
	ld	$2,0($23)
	sd	$0,10408($sp)
	mult	$5,$4
	ld	$5,10368($sp)
	lbu	$3,2592($2)
	dlsa	$21,$21,$2,3
	ld	$2,16($22)
	sd	$2,10552($sp)
	mflo	$22
	mfhi	$2
	dins	$22,$2,32,32
	ld	$2,2016($21)
	sd	$2,10416($sp)
	li	$2,7			# 0x7
	movz	$2,$20,$3
	move	$3,$2
	sd	$2,10456($sp)
	slt	$2,$5,$2
	beq	$2,$0,.L795
	ld	$2,10400($sp)

	subu	$2,$3,$5
	addiu	$2,$2,-1
	sll	$2,$19,$2
	sd	$2,10408($sp)
	ld	$2,10400($sp)
.L795:
	move	$6,$18
	subu	$17,$0,$17
	ld	$25,%call16(_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb)($28)
	li	$7,4			# 0x4
	daddiu	$5,$sp,10088
	ld	$18,%got_disp(_ZN4x2659g_scan4x4E)($28)
	move	$21,$17
	daddiu	$17,$sp,9984
	ld	$4,10440($sp)
	sltu	$8,$2,1
	sd	$21,10128($sp)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb
1:	jalr	$25
	sd	$18,10576($sp)

	ld	$2,10544($sp)
	daddiu	$7,$sp,9728
	lwu	$10,10104($sp)
	move	$9,$16
	li	$11,16			# 0x10
	ld	$4,10088($sp)
	move	$8,$17
	move	$5,$fp
	ld	$25,5968($2)
	daddiu	$6,$sp,9856
	li	$16,15			# 0xf
	dsll	$10,$10,5
	sd	$7,10488($sp)
	jalr	$25
	daddu	$10,$18,$10

	ld	$23,10360($sp)
	daddiu	$4,$sp,4096
	sd	$2,10344($sp)
	sra	$2,$2,4
	move	$5,$0
	addiu	$20,$2,1
	subu	$16,$16,$2
	ld	$25,%call16(memset)($28)
	ld	$3,8($23)
	sll	$19,$20,4
	sll	$16,$16,4
	move	$18,$19
	dsll	$16,$16,3
	sd	$2,10512($sp)
	dsll	$18,$18,3
	move	$6,$16
	sd	$3,10192($sp)
	daddu	$4,$4,$18
	move	$3,$2
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sd	$3,10616($sp)

	move	$6,$16
	ld	$25,%call16(memset)($28)
	move	$5,$0
	daddu	$4,$sp,$18
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	slt	$20,$20,16

	beq	$21,$0,.L543
	nop

	beq	$20,$0,.L669
	nop

	ld	$14,10088($sp)
	move	$11,$19
	move	$21,$0
	ld	$10,120($23)
	li	$13,256			# 0x100
	ld	$9,128($23)
	dext	$2,$11,0,32
	.align	3
.L796:
	dlsa	$2,$2,$14,1
	lhu	$7,0($2)
	addiu	$12,$7,64
.L546:
	addiu	$8,$7,4
	move	$6,$7
.L545:
	dext	$2,$6,0,32
	addiu	$6,$6,1
	dsll	$3,$2,1
	dlsa	$4,$2,$sp,3
	daddu	$2,$10,$3
	daddu	$3,$9,$3
	lh	$5,0($2)
	lh	$2,0($3)
	mult	$5,$5
	subu	$2,$2,$5
	gsdmultu	$2,$2,$22
	mflo	$3
	mfhi	$15
	dins	$3,$15,32,32
	dsll	$3,$3,9
	dsra	$2,$2,7
	dsubu	$2,$3,$2
	sd	$2,2048($4)
	bne	$8,$6,.L545
	daddu	$21,$21,$2

	addiu	$7,$7,16
	bne	$7,$12,.L546
	nop

	addiu	$11,$11,16
	bne	$11,$13,.L796
	dext	$2,$11,0,32

.L544:
	ld	$5,10512($sp)
.L791:
	bltz	$5,.L670
	daddiu	$4,$sp,9216

	lwu	$3,10104($sp)
	li	$2,-1			# 0xffffffffffffffff
	dlsa	$4,$5,$4,3
	lw	$6,10108($sp)
	dsll	$2,$2,63
	sd	$4,10312($sp)
	daddiu	$2,$2,-1
	ld	$4,10088($sp)
	dsll	$3,$3,5
	ld	$20,10552($sp)
	sd	$2,10288($sp)
	sd	$4,10504($sp)
	ld	$4,10616($sp)
	sd	$22,10224($sp)
	move	$22,$21
	sd	$6,10448($sp)
	dsll	$4,$4,4
	sd	$0,10232($sp)
	sd	$4,10296($sp)
	move	$4,$5
	daddu	$5,$17,$5
	sd	$5,10352($sp)
	ld	$5,10096($sp)
	sd	$4,10240($sp)
	sd	$fp,10152($sp)
	sd	$5,10520($sp)
	ld	$5,10488($sp)
	dlsa	$5,$4,$5,1
	ld	$4,%got_disp(_ZN4x26513g_goRiceRangeE)($28)
	sd	$5,10304($sp)
	ld	$5,%got_disp(_ZZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64)($28)
	sd	$4,10568($sp)
	li	$4,1			# 0x1
	sd	$4,10120($sp)
	ld	$4,%got_disp(_ZZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt)($28)
	sd	$5,10560($sp)
	addiu	$5,$6,3
	move	$2,$5
	sd	$5,10584($sp)
	sd	$4,10600($sp)
	ld	$4,10576($sp)
	sd	$2,10592($sp)
	daddu	$3,$4,$3
	sd	$3,10528($sp)
	ld	$3,10192($sp)
	daddiu	$3,$3,208
	sd	$3,10160($sp)
	ld	$2,10240($sp)
	.align	3
.L799:
	beq	$2,$0,.L671
	ld	$2,10400($sp)

	sltu	$2,$2,1
	dsll	$2,$2,1
	sd	$2,10272($sp)
.L552:
	ld	$3,10488($sp)
	ld	$2,10304($sp)
	ld	$6,10232($sp)
	dsubu	$2,$2,$3
	ld	$3,10448($sp)
	sd	$3,10184($sp)
	ld	$3,10360($sp)
	ld	$18,120($3)
	ld	$3,10520($sp)
	daddu	$2,$3,$2
	ld	$3,10296($sp)
	move	$13,$3
	lhu	$3,0($2)
	move	$2,$3
	andi	$3,$3,0x3
	addiu	$4,$2,1
	xori	$3,$3,0x3
	move	$5,$4
	sltu	$3,$0,$3
	sd	$4,10464($sp)
	dsrl	$12,$6,$5
	srl	$4,$2,2
	sd	$3,10472($sp)
	sll	$12,$12,0
	xori	$4,$4,0x3
	srl	$24,$12,3
	and	$12,$3,$12
	ld	$3,10240($sp)
	sltu	$4,$0,$4
	and	$24,$24,$4
	sd	$4,10480($sp)
	beq	$3,$0,.L553
	lsa	$10,$24,$12,1

	ld	$3,10400($sp)
	bne	$3,$0,.L771
	ld	$3,10448($sp)

	ld	$3,10584($sp)
	ld	$14,10592($sp)
	sd	$3,10184($sp)
	ld	$3,10120($sp)
	bne	$3,$0,.L797
	ld	$3,10352($sp)

	ld	$3,10272($sp)
	addiu	$3,$3,1
.L809:
	sd	$3,10272($sp)
.L655:
	ld	$3,10352($sp)
.L797:
	lbu	$3,0($3)
	bne	$3,$0,.L798
	ld	$4,10560($sp)

	ld	$2,10504($sp)
	dlsa	$13,$13,$2,1
	ld	$2,10128($sp)
	beq	$2,$0,.L673
	lhu	$11,0($13)

	ld	$2,10360($sp)
	li	$13,4			# 0x4
	li	$16,20			# 0x14
	ld	$9,10192($sp)
	ld	$15,10224($sp)
	ld	$25,128($2)
	ld	$2,10600($sp)
	ld	$17,10296($sp)
	ld	$19,10528($sp)
	dlsa	$10,$10,$2,4
.L560:
	addiu	$7,$13,-4
.L558:
	dext	$2,$7,0,32
	addu	$5,$11,$7
	dext	$5,$5,0,32
	dlsa	$2,$2,$19,1
	dsll	$3,$5,1
	lhu	$2,0($2)
	addu	$6,$17,$7
	daddu	$4,$18,$3
	daddu	$3,$25,$3
	lh	$4,0($4)
	dext	$6,$6,0,32
	dlsa	$8,$5,$sp,3
	daddu	$2,$10,$2
	lh	$23,0($3)
	dlsa	$6,$6,$sp,3
	lbu	$3,0($2)
	dlsa	$5,$5,$sp,2
	addiu	$7,$7,1
	mult	$4,$4
	subu	$4,$23,$4
	addu	$3,$3,$14
	dext	$3,$3,0,32
	dlsa	$3,$3,$9,2
	lw	$23,224($3)
	mfhi	$fp
	mflo	$2
	gsdmultu	$4,$4,$15
	dins	$2,$fp,32,32
	lw	$fp,392($3)
	gsdmultu	$3,$23,$20
	dsll	$2,$2,9
	subu	$23,$fp,$23
	sw	$23,6144($5)
	dsra	$4,$4,7
	dsubu	$2,$2,$4
	dsra	$3,$3,8
	sd	$2,2048($8)
	daddu	$21,$21,$2
	daddu	$22,$22,$2
	sd	$3,0($6)
	bne	$13,$7,.L558
	sd	$2,4096($6)

	addiu	$13,$13,4
	bne	$13,$16,.L560
	addiu	$11,$11,12

	li	$2,1			# 0x1
.L793:
	or	$12,$12,$24
	ld	$3,10312($sp)
	sd	$2,10120($sp)
	ld	$2,10192($sp)
	dlsa	$12,$12,$2,3
	lw	$2,208($12)
	gsdmultu	$2,$2,$20
	dsra	$2,$2,8
	daddu	$22,$22,$2
	sd	$2,0($3)
.L562:
	ld	$3,10312($sp)
.L802:
	ld	$2,10240($sp)
	daddiu	$3,$3,-8
	sd	$3,10312($sp)
	addiu	$2,$2,-1
	ld	$3,10296($sp)
	sd	$2,10240($sp)
	addiu	$3,$3,-16
	sd	$3,10296($sp)
	ld	$3,10352($sp)
	daddiu	$3,$3,-1
	sd	$3,10352($sp)
	ld	$3,10304($sp)
	daddiu	$3,$3,-2
	sd	$3,10304($sp)
	li	$3,-1			# 0xffffffffffffffff
	bne	$2,$3,.L799
	ld	$2,10240($sp)

	ld	$fp,10152($sp)
	move	$20,$22
.L551:
	ld	$2,10440($sp)
	li	$4,2			# 0x2
	ld	$6,10608($sp)
	ld	$3,192($2)
	ld	$2,256($2)
	daddu	$3,$3,$6
	lbu	$5,0($3)
	daddu	$2,$2,$6
	beq	$5,$4,.L620
	lbu	$3,0($2)

	ld	$2,10400($sp)
	beq	$2,$0,.L772
	nop

.L620:
	ld	$2,10624($sp)
.L807:
	ld	$4,%got_page(_ZN4x265L6ctxCbfE)($28)
	dlsa	$2,$2,$2,2
	daddiu	$4,$4,%got_ofst(_ZN4x265L6ctxCbfE)
	dlsa	$2,$2,$4,2
	ld	$4,10192($sp)
	dlsa	$2,$3,$2,2
	lw	$2,0($2)
	dlsa	$3,$2,$4,3
	lw	$14,880($3)
	lw	$8,884($3)
.L770:
	ld	$2,10552($sp)
	gsdmultu	$14,$14,$2
	gsdmultu	$8,$8,$2
	ld	$2,10512($sp)
	dsra	$14,$14,8
	dsra	$8,$8,8
	daddu	$14,$14,$21
	bltz	$2,.L773
	daddu	$8,$8,$20

	ld	$2,10616($sp)
	daddiu	$15,$sp,9216
	move	$17,$0
	ld	$24,%got_disp(_ZN4x26516g_lastCoeffTableE)($28)
	li	$16,1			# 0x1
	li	$19,-1			# 0xffffffffffffffff
	ld	$22,10552($sp)
	sll	$11,$2,4
	ld	$2,10512($sp)
	ld	$20,10344($sp)
	addiu	$11,$11,-1
	ld	$21,10360($sp)
	move	$13,$2
	dsll	$25,$2,1
	dlsa	$15,$2,$15,3
	move	$18,$2
	.align	3
.L633:
	beq	$13,$0,.L624
	nop

	beq	$13,$18,.L624
	ld	$2,10096($sp)

	ld	$3,0($15)
	daddu	$2,$2,$25
	lhu	$2,0($2)
	dsubu	$8,$8,$3
	ld	$3,10232($sp)
	dsrl	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,.L625
	nop

.L624:
	b	.L632
	addiu	$6,$11,16

	.align	3
.L690:
	move	$8,$7
.L626:
	addiu	$6,$6,-1
	beq	$11,$6,.L625
	nop

.L632:
	slt	$2,$20,$6
	bne	$2,$0,.L626
	dext	$3,$6,0,32

	ld	$4,10088($sp)
	dlsa	$2,$3,$sp,3
	ld	$2,0($2)
	dlsa	$4,$3,$4,1
	lhu	$9,0($4)
	dsubu	$7,$8,$2
	dlsa	$2,$9,$fp,1
	lh	$4,0($2)
	beq	$4,$0,.L690
	srl	$10,$9,4

	andi	$2,$9,0xf
	ld	$12,8($21)
	move	$5,$9
	lw	$9,10104($sp)
	move	$23,$2
	dlsa	$3,$3,$sp,3
	dlsa	$5,$5,$sp,3
	xori	$9,$9,0x2
	movz	$23,$10,$9
	movn	$2,$10,$9
	daddu	$23,$24,$23
	lbu	$9,0($23)
	daddu	$2,$24,$2
	lbu	$2,0($2)
	andi	$10,$9,0xf
	sra	$9,$9,4
	andi	$23,$2,0xf
	dlsa	$10,$10,$12,2
	lw	$10,560($10)
	dlsa	$12,$23,$12,2
	sll	$9,$9,15
	lw	$12,600($12)
	sra	$2,$2,4
	sll	$2,$2,15
	addu	$9,$9,$10
	addu	$12,$12,$9
	addu	$2,$2,$12
	dext	$2,$2,0,32
	gsdmultu	$2,$2,$22
	dsra	$2,$2,8
	daddu	$2,$2,$7
	slt	$7,$2,$14
	beq	$7,$0,.L628
	slt	$4,$4,2

	addiu	$17,$6,1
	move	$14,$2
.L628:
	beq	$4,$0,.L800
	ld	$2,10344($sp)

	lw	$2,112($21)
	beq	$2,$16,.L800
	ld	$2,10344($sp)

	ld	$2,4096($3)
	addiu	$6,$6,-1
	ld	$3,2048($5)
	dsubu	$8,$8,$2
	bne	$11,$6,.L632
	daddu	$8,$8,$3

	.align	3
.L625:
	addiu	$13,$13,-1
	daddiu	$25,$25,-2
	daddiu	$15,$15,-8
	bne	$13,$19,.L633
	addiu	$11,$11,-16

	ld	$2,10344($sp)
.L800:
	li	$8,-16			# 0xfffffffffffffff0
	and	$8,$17,$8
	addiu	$8,$8,16
	blez	$17,.L774
	subu	$10,$2,$17

	ld	$6,10088($sp)
	addiu	$7,$17,-1
	move	$16,$0
	ld	$2,10360($sp)
	dext	$7,$7,0,32
	daddiu	$5,$6,2
	ld	$9,120($2)
	b	.L636
	dlsa	$7,$7,$5,1

	.align	3
.L775:
	daddiu	$5,$5,2
.L636:
	lhu	$2,0($6)
	move	$6,$5
	dsll	$2,$2,1
	daddu	$3,$9,$2
	daddu	$2,$fp,$2
	lh	$4,0($3)
	lh	$3,0($2)
	sra	$4,$4,31
	andi	$4,$4,0xffff
	sltu	$11,$0,$3
	xor	$3,$3,$4
	addu	$16,$11,$16
	subu	$3,$3,$4
	bne	$7,$5,.L775
	sh	$3,0($2)

.L621:
	sra	$3,$10,31
	and	$3,$3,$10
	addu	$3,$3,$17
	ori	$3,$3,0xf
	slt	$2,$3,$17
	bne	$2,$0,.L635
	ld	$2,10088($sp)

	subu	$4,$3,$17
	dext	$4,$4,0,32
	daddu	$4,$4,$17
	daddiu	$3,$2,2
	dlsa	$2,$17,$2,1
	dlsa	$4,$4,$3,1
	.align	3
.L637:
	lhu	$3,0($2)
	daddiu	$2,$2,2
	dlsa	$3,$3,$fp,1
	bne	$4,$2,.L637
	sh	$0,0($3)

.L635:
	ld	$3,10344($sp)
	slt	$2,$3,$8
	bne	$2,$0,.L638
	ld	$2,10088($sp)

	subu	$4,$3,$8
	dext	$4,$4,4,28
	dlsa	$4,$4,$8,4
	daddiu	$3,$2,32
	dlsa	$8,$8,$2,1
	dlsa	$4,$4,$3,1
	.align	3
.L639:
	lhu	$3,0($8)
	daddiu	$8,$8,32
	move	$2,$3
	dlsa	$3,$3,$fp,1
	daddiu	$6,$2,16
	daddiu	$5,$2,32
	sb	$0,0($3)
	daddiu	$2,$2,48
	dlsa	$6,$6,$fp,1
	sb	$0,1($3)
	dlsa	$5,$5,$fp,1
	dlsa	$2,$2,$fp,1
	sb	$0,2($3)
	sb	$0,3($3)
	sb	$0,4($3)
	sb	$0,5($3)
	sb	$0,6($3)
	sb	$0,7($3)
	sb	$0,0($6)
	sb	$0,1($6)
	sb	$0,2($6)
	sb	$0,3($6)
	sb	$0,4($6)
	sb	$0,5($6)
	sb	$0,6($6)
	sb	$0,7($6)
	sb	$0,0($5)
	sb	$0,1($5)
	sb	$0,2($5)
	sb	$0,3($5)
	sb	$0,4($5)
	sb	$0,5($5)
	sb	$0,6($5)
	sb	$0,7($5)
	sb	$0,0($2)
	sb	$0,1($2)
	sb	$0,2($2)
	sb	$0,3($2)
	sb	$0,4($2)
	sb	$0,5($2)
	sb	$0,6($2)
	bne	$4,$8,.L639
	sb	$0,7($2)

.L638:
	ld	$2,10440($sp)
	ld	$2,56($2)
	ld	$2,8($2)
	lbu	$2,27($2)
	beq	$2,$0,.L698
	sltu	$2,$16,2

	bne	$2,$0,.L698
	addiu	$2,$17,-1

	sra	$3,$2,4
	bltz	$3,.L698
	li	$21,-1			# 0xffffffffffffffff

	sd	$16,10112($sp)
	dsll	$23,$3,1
	ld	$19,10232($sp)
	dsll	$2,$21,63
	dsll	$20,$3,4
	ld	$17,10456($sp)
	daddiu	$2,$2,-1
	li	$18,1			# 0x1
	ld	$16,10408($sp)
	sd	$2,10128($sp)
	.align	3
.L653:
	ld	$2,10096($sp)
	daddu	$2,$2,$23
	lhu	$2,0($2)
	dsrl	$2,$19,$2
	andi	$2,$2,0x1
	beq	$2,$0,.L640
	ld	$2,10544($sp)

	move	$22,$20
	li	$5,16			# 0x10
	lwu	$6,10104($sp)
	ld	$25,5976($2)
	ld	$2,10088($sp)
	dsll	$6,$6,5
	dlsa	$2,$22,$2,1
	lhu	$4,0($2)
	ld	$2,10576($sp)
	dlsa	$4,$4,$fp,1
	jalr	$25
	daddu	$6,$2,$6

	move	$4,$2
	andi	$2,$2,0x00ff
	srl	$10,$4,8
	seb	$10,$10
	subu	$3,$10,$2
	slt	$3,$3,4
	bne	$3,$0,.L692
	addu	$3,$20,$2

	ld	$5,10088($sp)
	dlsa	$3,$3,$5,1
	lhu	$3,0($3)
	dlsa	$3,$3,$fp,1
	lh	$24,0($3)
	xor	$4,$24,$4
	bltz	$4,.L776
	addu	$3,$20,$10

.L692:
	move	$18,$0
.L640:
	daddiu	$23,$23,-2
	li	$2,-2			# 0xfffffffffffffffe
	bne	$2,$23,.L653
	addiu	$20,$20,-16

	ld	$16,10112($sp)
.L698:
	ld	$31,10728($sp)
.L794:
	move	$2,$16
	ld	$fp,10720($sp)
	ld	$28,10712($sp)
	ld	$23,10704($sp)
	ld	$22,10696($sp)
	ld	$21,10688($sp)
	ld	$20,10680($sp)
	ld	$19,10672($sp)
	ld	$18,10664($sp)
	ld	$17,10656($sp)
	ld	$16,10648($sp)
	jr	$31
	daddiu	$sp,$sp,10736

	.align	3
.L543:
	beq	$20,$0,.L669
	ld	$2,10360($sp)

	move	$11,$19
	move	$21,$0
	ld	$12,10088($sp)
	li	$9,256			# 0x100
	ld	$7,120($2)
	dext	$2,$11,0,32
	.align	3
.L801:
	dlsa	$2,$2,$12,1
	lhu	$6,0($2)
	addiu	$10,$6,64
.L549:
	addiu	$8,$6,4
	move	$4,$6
.L548:
	dext	$2,$4,0,32
	addiu	$4,$4,1
	dlsa	$5,$2,$7,1
	dlsa	$3,$2,$sp,3
	lh	$2,0($5)
	mult	$2,$2
	mflo	$2
	mfhi	$5
	dins	$2,$5,32,32
	dsll	$2,$2,9
	sd	$2,2048($3)
	bne	$8,$4,.L548
	daddu	$21,$21,$2

	addiu	$6,$6,16
	bne	$6,$10,.L549
	nop

	addiu	$11,$11,16
	bne	$11,$9,.L801
	dext	$2,$11,0,32

	b	.L791
	ld	$5,10512($sp)

.L553:
	ld	$3,10272($sp)
	ld	$5,10120($sp)
	addiu	$4,$3,1
	movz	$3,$4,$5
	sd	$3,10272($sp)
	ld	$4,10560($sp)
	.align	3
.L798:
	move	$19,$0
	li	$14,15			# 0xf
	ld	$3,10304($sp)
	sd	$0,10048($sp)
	dlsa	$10,$10,$4,3
	li	$4,1			# 0x1
	sd	$0,10056($sp)
	dsll	$2,$4,$2
	lhu	$3,0($3)
	sd	$2,10424($sp)
	ld	$2,10360($sp)
	move	$24,$3
	ld	$3,10504($sp)
	ld	$4,10272($sp)
	ld	$2,128($2)
	dlsa	$13,$13,$3,1
	ld	$3,10296($sp)
	sll	$4,$4,2
	sd	$0,10064($sp)
	sd	$2,10136($sp)
	ld	$2,0($10)
	addiu	$8,$3,15
	sd	$4,10248($sp)
	ld	$3,10528($sp)
	ld	$4,10344($sp)
	sd	$2,10256($sp)
	li	$2,3			# 0x3
	sd	$2,10496($sp)
	li	$2,1			# 0x1
	daddiu	$12,$3,30
	sd	$4,10144($sp)
	sd	$0,10072($sp)
	sd	$0,10080($sp)
	sd	$0,10392($sp)
	sd	$0,10384($sp)
	sd	$0,10432($sp)
	sd	$0,10376($sp)
	sd	$0,10216($sp)
	sd	$0,10264($sp)
	sd	$0,10280($sp)
	sd	$0,10208($sp)
	sd	$2,10120($sp)
	b	.L614
	sd	$20,10168($sp)

	.align	3
.L778:
	dext	$2,$5,0,32
	sd	$2,10112($sp)
	dlsa	$2,$2,$sp,3
	sd	$3,2048($2)
.L564:
	daddu	$21,$21,$3
	beq	$5,$0,.L565
	move	$2,$0

	lhu	$2,0($12)
	ld	$5,10256($sp)
	sll	$2,$2,2
	dsrl	$2,$5,$2
	ld	$5,10184($sp)
	andi	$2,$2,0xf
	addu	$2,$2,$5
.L565:
	ld	$5,10144($sp)
	sltu	$5,$5,$8
	beq	$5,$0,.L566
	ld	$25,10120($sp)

	dext	$4,$8,0,32
	daddu	$22,$22,$3
	dlsa	$4,$4,$sp,3
	move	$3,$19
	move	$2,$0
	sd	$0,4096($4)
	sd	$0,0($4)
.L567:
	addiu	$14,$14,-1
	li	$4,-1			# 0xffffffffffffffff
	daddiu	$13,$13,-2
	addiu	$8,$8,-1
	beq	$14,$4,.L777
	daddiu	$12,$12,-2

.L686:
	move	$19,$3
.L614:
	lhu	$5,30($13)
	ld	$2,10128($sp)
	dext	$15,$5,0,32
	dsll	$4,$15,1
	and	$7,$2,$8
	ld	$2,10136($sp)
	daddu	$3,$18,$4
	lh	$6,0($3)
	ld	$3,10152($sp)
	daddu	$2,$2,$4
	lh	$10,0($2)
	mult	$6,$6
	move	$11,$6
	daddu	$4,$3,$4
	lh	$9,0($4)
	subu	$10,$10,$6
	mflo	$3
	mfhi	$2
	dins	$3,$2,32,32
	beq	$7,$0,.L778
	dsll	$3,$3,9

	ld	$2,10224($sp)
	dext	$25,$5,0,32
	sd	$25,10112($sp)
	dlsa	$25,$25,$sp,3
	gsdmultu	$2,$10,$2
	dsra	$2,$2,7
	dsubu	$3,$3,$2
	b	.L564
	sd	$3,2048($25)

	.align	3
.L566:
	ld	$5,10248($sp)
	ld	$16,10160($sp)
	addu	$5,$5,$25
	andi	$25,$24,0x1
	dext	$5,$5,0,32
	srl	$24,$24,1
	daddiu	$5,$5,54
	bne	$25,$0,.L568
	dlsa	$5,$5,$16,3

	lw	$6,0($5)
	dext	$2,$2,0,32
	dext	$4,$8,0,32
	ld	$5,10192($sp)
	dlsa	$4,$4,$sp,3
	addiu	$14,$14,-1
	ld	$7,10112($sp)
	daddiu	$13,$13,-2
	addiu	$8,$8,-1
	daddiu	$12,$12,-2
	dlsa	$2,$2,$5,2
	lw	$5,224($2)
	dlsa	$7,$7,$sp,2
	lw	$9,392($2)
	ld	$2,10168($sp)
	sw	$6,8192($7)
	gsdmultu	$2,$5,$2
	subu	$5,$9,$5
	sw	$5,6144($7)
	dsra	$2,$2,8
	daddu	$5,$2,$3
	sd	$2,0($4)
	daddu	$3,$2,$19
	sd	$5,4096($4)
	li	$4,-1			# 0xffffffffffffffff
	bne	$14,$4,.L686
	daddu	$22,$22,$5

.L777:
	ld	$4,10432($sp)
	bne	$4,$0,.L779
	ld	$20,10168($sp)

.L615:
	ld	$4,10312($sp)
	sd	$3,10072($sp)
	sd	$2,10080($sp)
	sd	$0,0($4)
	ld	$4,10240($sp)
	beq	$4,$0,.L562
	nop

	ld	$5,10512($sp)
	beq	$4,$5,.L562
	nop

	ld	$5,10232($sp)
	ld	$4,10464($sp)
	ld	$7,10472($sp)
	ld	$6,10424($sp)
	dsrl	$4,$5,$4
	sll	$4,$4,0
	and	$6,$5,$6
	srl	$5,$4,3
	and	$4,$7,$4
	ld	$7,10480($sp)
	and	$5,$5,$7
	or	$4,$5,$4
	ld	$5,10192($sp)
	dlsa	$5,$4,$5,3
	lw	$7,208($5)
	gsdmultu	$7,$7,$20
	beq	$6,$0,.L617
	dsra	$7,$7,8

	lw	$5,10048($sp)
	bne	$5,$0,.L618
	nop

	dsubu	$22,$22,$2
	move	$3,$19
	sd	$19,10072($sp)
.L618:
	ld	$2,10192($sp)
	daddu	$6,$22,$7
	ld	$5,10056($sp)
	dlsa	$4,$4,$2,3
	ld	$2,10064($sp)
	lw	$4,212($4)
	daddu	$2,$6,$2
	gsdmultu	$4,$4,$20
	dsubu	$2,$2,$5
	ld	$5,10312($sp)
	dsubu	$2,$2,$3
	dsra	$4,$4,8
	daddu	$22,$22,$4
	slt	$3,$2,$22
	beq	$3,$0,.L562
	sd	$4,0($5)

	ld	$3,10360($sp)
	lw	$3,112($3)
	slt	$3,$3,2
	bne	$3,$0,.L802
	ld	$3,10312($sp)

	ld	$3,10296($sp)
	move	$22,$2
	ldc1	$f1,10232($sp)
	ld	$2,10504($sp)
	ldc1	$f0,10424($sp)
	ld	$6,10152($sp)
	dext	$3,$3,0,32
	sd	$7,0($5)
	dlsa	$2,$3,$2,1
	pandn	$f0,$f0,$f1
	lhu	$3,0($2)
	move	$2,$3
	dlsa	$3,$3,$6,1
	daddiu	$5,$2,16
	daddiu	$4,$2,32
	sb	$0,0($3)
	daddiu	$2,$2,48
	dlsa	$5,$5,$6,1
	sb	$0,1($3)
	dlsa	$4,$4,$6,1
	dlsa	$2,$2,$6,1
	sb	$0,2($3)
	sb	$0,3($3)
	sb	$0,4($3)
	sb	$0,5($3)
	sb	$0,6($3)
	sb	$0,7($3)
	sdc1	$f0,10232($sp)
	sb	$0,0($5)
	sb	$0,1($5)
	sb	$0,2($5)
	sb	$0,3($5)
	sb	$0,4($5)
	sb	$0,5($5)
	sb	$0,6($5)
	sb	$0,7($5)
	sb	$0,0($4)
	sb	$0,1($4)
	sb	$0,2($4)
	sb	$0,3($4)
	sb	$0,4($4)
	sb	$0,5($4)
	sb	$0,6($4)
	sb	$0,7($4)
	sb	$0,0($2)
	sb	$0,1($2)
	sb	$0,2($2)
	sb	$0,3($2)
	sb	$0,4($2)
	sb	$0,5($2)
	sb	$0,6($2)
	b	.L562
	sb	$0,7($2)

	.align	3
.L568:
	ld	$16,10216($sp)
	li	$23,217			# 0xd9
	ld	$17,10264($sp)
	subu	$16,$0,$16
	sra	$20,$16,31
	addiu	$17,$17,-8
	srl	$17,$17,31
	addiu	$16,$20,1
	ld	$20,10208($sp)
	lsa	$16,$16,$17,1
	ld	$17,10272($sp)
	andi	$fp,$16,0x1
	sd	$20,10336($sp)
	addu	$20,$20,$17
	sll	$17,$16,1
	srl	$17,$23,$17
	ld	$23,10160($sp)
	dext	$20,$20,0,32
	daddiu	$20,$20,78
	andi	$17,$17,0x3
	dlsa	$20,$20,$23,3
	sd	$20,10320($sp)
	move	$20,$17
	move	$17,$0
	beq	$fp,$0,.L569
	sd	$20,10176($sp)

	lw	$17,4($5)
.L569:
	li	$20,3			# 0x3
	bne	$16,$20,.L803
	dext	$16,$8,0,32

	ld	$16,10320($sp)
	lw	$16,4($16)
	addu	$17,$16,$17
	dext	$16,$8,0,32
.L803:
	dlsa	$20,$16,$sp,3
	sd	$16,10200($sp)
	move	$16,$17
	sd	$16,10328($sp)
	ld	$16,10288($sp)
	sd	$16,4096($20)
	ld	$16,10344($sp)
	beq	$16,$8,.L780
	sltu	$23,$9,3

	ld	$16,10192($sp)
	dext	$2,$2,0,32
	dlsa	$2,$2,$16,2
	ld	$16,10288($sp)
	beq	$23,$0,.L573
	lw	$17,224($2)

	ld	$16,10168($sp)
	gsdmultu	$23,$17,$16
	dsra	$23,$23,8
	daddu	$16,$23,$3
	sd	$23,0($20)
	sd	$16,4096($20)
.L573:
	lw	$2,392($2)
	ld	$3,10112($sp)
	subu	$17,$2,$17
	dlsa	$3,$3,$sp,2
	sw	$17,6144($3)
.L572:
	ld	$3,10416($sp)
	dlsa	$15,$15,$3,2
	ld	$3,10368($sp)
	lw	$17,0($15)
	sll	$17,$17,$3
	ld	$3,10408($sp)
	mul	$20,$17,$9
	addu	$15,$20,$3
	li	$3,1			# 0x1
	beq	$9,$3,.L781
	nop

	beq	$9,$0,.L578
	ld	$3,10176($sp)

	subu	$25,$9,$3
	addiu	$3,$9,-1
	addiu	$20,$25,-1
	sd	$3,10536($sp)
	bltz	$25,.L782
	move	$23,$20

	ld	$fp,10280($sp)
	srl	$25,$25,$fp
	sltu	$3,$25,3
	beq	$3,$0,.L583
	nop

	addiu	$3,$fp,1
	addu	$25,$3,$25
	sll	$25,$25,15
.L584:
	ld	$3,10328($sp)
	addu	$25,$3,$25
	li	$3,32768			# 0x8000
	bltz	$23,.L783
	addu	$25,$3,$25

.L586:
	ld	$23,10280($sp)
	srl	$20,$20,$23
	sltu	$3,$20,3
	beq	$3,$0,.L589
	nop

	addiu	$3,$23,1
	addu	$20,$3,$20
	sll	$20,$20,15
.L590:
	ld	$3,10328($sp)
	addu	$20,$3,$20
.L657:
	ld	$fp,10456($sp)
	li	$23,32768			# 0x8000
	sra	$3,$11,31
	addu	$23,$2,$23
	subu	$17,$15,$17
	addu	$20,$23,$20
	xor	$11,$3,$11
	ld	$23,10168($sp)
	subu	$11,$11,$3
	srl	$17,$17,$fp
	srl	$15,$15,$fp
	addu	$25,$2,$25
	subu	$fp,$11,$15
	dext	$25,$25,0,32
	subu	$11,$11,$17
	dext	$20,$20,0,32
	gsdmultu	$25,$25,$23
	gsdmultu	$fp,$fp,$fp
	gsdmultu	$20,$20,$23
	gsdmultu	$11,$11,$11
	dsra	$25,$25,8
	dsll	$fp,$fp,9
	dsra	$20,$20,8
	daddu	$25,$25,$fp
	dsll	$11,$11,9
	beq	$7,$0,.L592
	daddu	$20,$20,$11

	xor	$10,$3,$10
	srl	$3,$6,31
	addu	$3,$10,$3
	addu	$17,$3,$17
	addu	$15,$3,$15
	sra	$3,$17,31
	sra	$6,$15,31
	xor	$17,$3,$17
	xor	$15,$6,$15
	subu	$17,$17,$3
	ld	$3,10224($sp)
	subu	$15,$15,$6
	gsdmultu	$15,$15,$3
	gsdmultu	$17,$17,$3
	dsra	$15,$15,7
	dsra	$17,$17,7
	dsubu	$25,$25,$15
	dsubu	$20,$20,$17
.L592:
	slt	$3,$25,$16
	beq	$3,$0,.L679
	ld	$7,10168($sp)

	dext	$3,$2,0,32
	move	$16,$25
	ld	$6,10200($sp)
	gsdmultu	$3,$3,$7
	dlsa	$6,$6,$sp,3
	sd	$25,4096($6)
	dsra	$3,$3,8
	sd	$3,0($6)
.L593:
	slt	$3,$20,$16
	beq	$3,$0,.L594
	seh	$7,$9

	ld	$3,10168($sp)
	dext	$2,$2,0,32
	ld	$6,10536($sp)
	gsdmultu	$2,$2,$3
	ld	$3,10200($sp)
	subu	$25,$0,$6
	seh	$7,$6
	slt	$25,$25,0
	move	$9,$6
	dlsa	$3,$3,$sp,3
	sd	$20,4096($3)
	dsra	$2,$2,8
	sd	$2,0($3)
.L579:
	ld	$3,10264($sp)
	sh	$7,0($4)
	addu	$3,$3,$25
	sd	$3,10264($sp)
	ld	$3,10440($sp)
	ld	$3,56($3)
	ld	$3,8($3)
	lbu	$3,27($3)
	beq	$3,$0,.L596
	daddu	$22,$22,$20

.L658:
	ld	$3,10176($sp)
	subu	$3,$9,$3
	addiu	$11,$3,-1
	slt	$4,$11,-2
	beq	$4,$0,.L597
	move	$15,$11

	ld	$3,10320($sp)
	move	$6,$0
	lw	$4,4($5)
	lw	$10,0($5)
	lw	$3,0($3)
	addu	$4,$4,$3
.L598:
	ld	$3,10112($sp)
	subu	$4,$4,$10
	subu	$6,$6,$10
	dlsa	$3,$3,$sp,2
	sw	$4,8192($3)
	sw	$6,7168($3)
.L610:
	ld	$3,10176($sp)
	sltu	$17,$9,$3
	bne	$17,$0,.L611
	ld	$4,10280($sp)

	sltu	$3,$4,4
	beq	$3,$0,.L611
	ld	$5,10496($sp)

	sltu	$3,$5,$9
	beq	$3,$0,.L611
	addiu	$3,$4,1

	sd	$3,10280($sp)
	sll	$3,$5,1
	sd	$3,10496($sp)
	.align	3
.L611:
	sltu	$9,$9,2
	bne	$9,$0,.L612
	ld	$4,10216($sp)

	ld	$3,10208($sp)
	sd	$0,10120($sp)
	addiu	$4,$4,1
	sd	$4,10216($sp)
	addiu	$3,$3,-2
	ld	$4,10336($sp)
	srl	$3,$3,31
	addu	$3,$3,$4
	sd	$3,10208($sp)
.L613:
	beq	$7,$0,.L567
	daddu	$3,$19,$2

	ld	$6,10232($sp)
	ld	$7,10424($sp)
	ld	$4,10200($sp)
	ld	$5,10112($sp)
	or	$6,$6,$7
	sd	$6,10232($sp)
	dlsa	$4,$4,$sp,3
	ld	$6,10392($sp)
	dlsa	$5,$5,$sp,3
	ld	$4,4096($4)
	ld	$5,2048($5)
	addu	$6,$6,$14
	sd	$6,10392($sp)
	li	$6,1			# 0x1
	dsubu	$4,$4,$2
	sd	$6,10432($sp)
	ld	$6,10376($sp)
	daddu	$4,$6,$4
	sd	$4,10376($sp)
	ld	$4,10384($sp)
	daddu	$4,$4,$5
	b	.L567
	sd	$4,10384($sp)

	.align	3
.L578:
	ld	$2,10200($sp)
	daddu	$22,$22,$16
	move	$25,$0
	move	$7,$0
	move	$9,$0
	sh	$0,0($4)
	dlsa	$2,$2,$sp,3
	ld	$2,0($2)
.L596:
	ld	$3,10112($sp)
	lw	$4,0($5)
	dlsa	$3,$3,$sp,2
	sw	$0,7168($3)
	b	.L610
	sw	$4,8192($3)

	.align	3
.L612:
	ld	$4,10120($sp)
	addiu	$3,$4,-1
	addiu	$5,$4,1
	sltu	$3,$3,2
	and	$25,$3,$25
	movn	$4,$5,$25
	b	.L613
	sd	$4,10120($sp)

	.align	3
.L781:
	beq	$fp,$0,.L575
	ld	$3,10280($sp)

	lw	$3,0($5)
	li	$17,32768			# 0x8000
	addu	$3,$3,$17
.L576:
	ld	$20,10456($sp)
	sra	$17,$11,31
	addu	$3,$2,$3
	xor	$11,$17,$11
	dext	$3,$3,0,32
	subu	$11,$11,$17
	srl	$15,$15,$20
	ld	$20,10168($sp)
	subu	$11,$11,$15
	gsdmultu	$11,$11,$11
	gsdmultu	$3,$3,$20
	dsll	$11,$11,9
	dsra	$3,$3,8
	beq	$7,$0,.L577
	daddu	$20,$3,$11

	srl	$6,$6,31
	xor	$10,$17,$10
	addu	$10,$10,$6
	ld	$6,10224($sp)
	addu	$15,$10,$15
	sra	$3,$15,31
	xor	$15,$3,$15
	subu	$3,$15,$3
	gsdmultu	$3,$3,$6
	dsra	$3,$3,7
	dsubu	$20,$20,$3
.L577:
	slt	$3,$20,$16
	beq	$3,$0,.L578
	ld	$3,10168($sp)

	dext	$2,$2,0,32
	li	$7,1			# 0x1
	gsdmultu	$2,$2,$3
	ld	$3,10200($sp)
	dlsa	$3,$3,$sp,3
	sd	$20,4096($3)
	dsra	$2,$2,8
	b	.L579
	sd	$2,0($3)

	.align	3
.L780:
	ld	$2,10112($sp)
	ld	$16,10288($sp)
	dlsa	$2,$2,$sp,2
	sw	$0,6144($2)
	b	.L572
	move	$2,$0

	.align	3
.L597:
	ld	$10,10280($sp)
	addiu	$4,$11,1
	ld	$16,10568($sp)
	dext	$6,$10,0,32
	daddu	$6,$16,$6
	addiu	$16,$11,2
	bltz	$11,.L599
	lbu	$6,0($6)

	addiu	$3,$3,1
	slt	$3,$6,$3
	bne	$3,$0,.L804
	li	$3,-1			# 0xffffffffffffffff

	addiu	$3,$10,1
	srl	$4,$4,$10
	addu	$4,$4,$3
	move	$6,$10
	addiu	$4,$4,-8
	sra	$5,$4,31
	and	$10,$5,$4
	li	$4,-1			# 0xffffffffffffffff
	addiu	$10,$10,8
	beq	$9,$4,.L681
	sll	$10,$10,15

	srl	$4,$16,$6
	move	$6,$0
	addu	$4,$4,$3
	addiu	$4,$4,-8
	sra	$5,$4,31
	and	$4,$5,$4
	li	$5,1			# 0x1
	addiu	$4,$4,8
	beq	$9,$5,.L598
	sll	$4,$4,15

	ld	$5,10280($sp)
	srl	$11,$11,$5
	addu	$3,$11,$3
	addiu	$3,$3,-8
	sra	$5,$3,31
	and	$6,$5,$3
	addiu	$6,$6,8
	b	.L598
	sll	$6,$6,15

	.align	3
.L771:
	move	$14,$3
	ld	$3,10120($sp)
	bne	$3,$0,.L655
	ld	$3,10272($sp)

	b	.L809
	addiu	$3,$3,1

	.align	3
.L599:
	li	$3,-1			# 0xffffffffffffffff
	.align	3
.L804:
	beq	$4,$3,.L784
	move	$23,$6

	ld	$10,10328($sp)
	sltu	$3,$23,$4
	bne	$3,$0,.L785
	move	$6,$10

.L603:
	ld	$10,10280($sp)
	srl	$3,$4,$10
	addu	$3,$3,$10
	addiu	$3,$3,-7
	sra	$4,$3,31
	and	$10,$4,$3
	addiu	$10,$10,8
	sll	$10,$10,15
	addu	$10,$10,$6
.L604:
	li	$3,-1			# 0xffffffffffffffff
	bne	$9,$3,.L805
	ld	$6,10328($sp)

	bltz	$15,.L608
	move	$4,$0

	ld	$3,10280($sp)
	addiu	$3,$3,1
.L606:
	sltu	$5,$23,$11
	beq	$5,$0,.L806
	ld	$5,10280($sp)

	subu	$5,$11,$23
	ld	$6,10328($sp)
	addiu	$11,$23,1
	clz	$5,$5
	xori	$5,$5,0x1f
	sll	$5,$5,1
	addiu	$5,$5,1
	sll	$5,$5,15
	addu	$5,$5,$6
	sd	$5,10328($sp)
	ld	$5,10280($sp)
.L806:
	srl	$11,$11,$5
	addu	$11,$3,$11
	addiu	$5,$11,-8
	sra	$3,$5,31
	and	$6,$3,$5
	ld	$3,10328($sp)
	addiu	$6,$6,8
	sll	$6,$6,15
	b	.L598
	addu	$6,$6,$3

	.align	3
.L575:
	li	$17,32768			# 0x8000
	addiu	$3,$3,1
	sll	$3,$3,15
	b	.L576
	addu	$3,$3,$17

	.align	3
.L594:
	ld	$2,10440($sp)
	daddu	$22,$22,$16
	sh	$7,0($4)
	ld	$3,56($2)
	ld	$2,10200($sp)
	ld	$3,8($3)
	dlsa	$2,$2,$sp,3
	lbu	$3,27($3)
	bne	$3,$0,.L786
	ld	$2,0($2)

	ld	$3,10264($sp)
	subu	$25,$0,$9
	slt	$25,$25,0
	addu	$3,$3,$25
	b	.L596
	sd	$3,10264($sp)

	.align	3
.L679:
	b	.L593
	move	$9,$0

	.align	3
.L617:
	ld	$4,10312($sp)
	daddu	$2,$22,$7
	dsubu	$22,$2,$3
	b	.L562
	sd	$7,0($4)

	.align	3
.L782:
	li	$3,2			# 0x2
	beq	$9,$3,.L787
	li	$3,32768			# 0x8000

	lw	$25,0($5)
	bgez	$23,.L586
	addu	$25,$3,$25

.L783:
	addiu	$3,$9,-1
	li	$20,2			# 0x2
	beq	$3,$20,.L788
	nop

	b	.L657
	lw	$20,0($5)

	.align	3
.L673:
	ld	$2,10600($sp)
	li	$8,4			# 0x4
	li	$13,20			# 0x14
	ld	$9,10192($sp)
	ld	$15,10296($sp)
	ld	$25,10528($sp)
	dlsa	$10,$10,$2,4
.L557:
	addiu	$6,$8,-4
.L561:
	dext	$2,$6,0,32
	addu	$4,$11,$6
	dlsa	$2,$2,$25,1
	dext	$4,$4,0,32
	lhu	$3,0($2)
	dlsa	$2,$4,$18,1
	addu	$5,$15,$6
	lh	$2,0($2)
	dext	$5,$5,0,32
	dlsa	$7,$4,$sp,3
	dlsa	$5,$5,$sp,3
	dlsa	$4,$4,$sp,2
	daddu	$3,$10,$3
	addiu	$6,$6,1
	lbu	$3,0($3)
	mult	$2,$2
	addu	$3,$3,$14
	dext	$3,$3,0,32
	dlsa	$3,$3,$9,2
	lw	$17,224($3)
	mfhi	$16
	mflo	$2
	dins	$2,$16,32,32
	lw	$16,392($3)
	gsdmultu	$3,$17,$20
	dsll	$2,$2,9
	daddu	$21,$21,$2
	daddu	$22,$22,$2
	sd	$2,2048($7)
	sd	$2,4096($5)
	subu	$2,$16,$17
	sw	$2,6144($4)
	dsra	$2,$3,8
	bne	$8,$6,.L561
	sd	$2,0($5)

	addiu	$8,$8,4
	bne	$8,$13,.L557
	addiu	$11,$11,12

	b	.L793
	li	$2,1			# 0x1

	.align	3
.L583:
	li	$fp,3			# 0x3
	beq	$25,$fp,.L585
	li	$3,4			# 0x4

	addiu	$3,$25,-2
	clz	$3,$3
	xori	$3,$3,0x1f
	sll	$3,$3,1
	addiu	$3,$3,4
.L585:
	ld	$25,10280($sp)
	addu	$25,$25,$3
	b	.L584
	sll	$25,$25,15

	.align	3
.L589:
	li	$23,3			# 0x3
	beq	$20,$23,.L591
	li	$3,4			# 0x4

	addiu	$3,$20,-2
	clz	$3,$3
	xori	$3,$3,0x1f
	sll	$3,$3,1
	addiu	$3,$3,4
.L591:
	ld	$20,10280($sp)
	addu	$20,$20,$3
	b	.L590
	sll	$20,$20,15

	.align	3
.L788:
	ld	$20,10320($sp)
	lw	$3,4($5)
	lw	$20,0($20)
	b	.L657
	addu	$20,$20,$3

	.align	3
.L784:
	li	$3,2			# 0x2
	bne	$9,$3,.L762
	ld	$3,10320($sp)

	lw	$10,0($3)
	lw	$3,4($5)
	addu	$10,$10,$3
	ld	$6,10328($sp)
	.align	3
.L805:
	sltu	$4,$23,$16
	move	$3,$16
	beq	$4,$0,.L605
	move	$17,$6

	subu	$17,$16,$23
	addiu	$3,$23,1
	clz	$17,$17
	xori	$17,$17,0x1f
	sll	$17,$17,1
	addiu	$17,$17,1
	sll	$17,$17,15
	addu	$17,$17,$6
.L605:
	ld	$4,10280($sp)
	addiu	$20,$9,-1
	move	$6,$0
	srl	$16,$3,$4
	addiu	$3,$4,1
	addu	$16,$16,$3
	addiu	$16,$16,-8
	sra	$4,$16,31
	and	$4,$4,$16
	addiu	$4,$4,8
	sll	$4,$4,15
	beq	$20,$0,.L598
	addu	$4,$4,$17

	bgez	$15,.L606
	nop

	li	$3,2			# 0x2
	bne	$20,$3,.L608
	ld	$3,10320($sp)

	lw	$6,0($3)
	lw	$3,4($5)
	b	.L598
	addu	$6,$6,$3

	.align	3
.L787:
	ld	$3,10320($sp)
	li	$fp,32768			# 0x8000
	lw	$25,4($5)
	lw	$3,0($3)
	addu	$25,$25,$fp
	bgez	$20,.L586
	addu	$25,$25,$3

	b	.L657
	lw	$20,0($5)

.L785:
	subu	$6,$4,$23
	addiu	$4,$23,1
	clz	$6,$6
	xori	$6,$6,0x1f
	sll	$6,$6,1
	addiu	$6,$6,1
	sll	$6,$6,15
	b	.L603
	addu	$6,$6,$10

.L772:
	bne	$3,$0,.L807
	ld	$2,10624($sp)

	ld	$2,10192($sp)
	lw	$14,936($2)
	b	.L770
	lw	$8,940($2)

.L762:
	b	.L604
	lw	$10,0($5)

.L776:
	ld	$4,10360($sp)
	dlsa	$3,$3,$5,1
	lhu	$13,0($3)
	ld	$25,120($4)
	dext	$3,$13,0,32
	dlsa	$4,$3,$fp,1
	lh	$8,0($4)
	sra	$4,$8,31
	xor	$7,$4,$8
	subu	$7,$7,$4
	xori	$7,$7,0x1
	sltu	$7,$7,1
	and	$7,$7,$18
	bne	$18,$0,.L641
	sll	$7,$7,17

	addiu	$3,$20,15
	li	$10,15			# 0xf
	dlsa	$3,$3,$5,1
	lhu	$13,0($3)
	dext	$3,$13,0,32
	dlsa	$4,$3,$fp,1
	lh	$8,0($4)
	sra	$4,$8,31
	daddu	$12,$10,$22
.L808:
	sd	$20,10144($sp)
	move	$15,$0
	dlsa	$5,$12,$5,1
	sd	$23,10152($sp)
	li	$22,-1			# 0xffffffffffffffff
	daddiu	$12,$5,-2
	sd	$0,10120($sp)
	move	$5,$3
	ld	$18,10128($sp)
	sd	$19,10136($sp)
	ld	$14,10552($sp)
	ld	$20,10368($sp)
	b	.L651
	ld	$23,10416($sp)

	.align	3
.L790:
	dext	$8,$13,0,32
	addu	$19,$3,$4
	dlsa	$8,$8,$sp,2
	subu	$3,$4,$3
	srl	$19,$19,$17
	lw	$5,8192($8)
	srl	$3,$3,$17
	subu	$19,$9,$19
	subu	$3,$9,$3
	lw	$4,7168($8)
	gsdmultu	$19,$19,$19
	dext	$7,$7,0,32
	gsdmultu	$5,$5,$14
	gsdmultu	$3,$3,$3
	dsubu	$19,$19,$6
	dsll	$9,$19,9
	dsra	$5,$5,8
	dsubu	$3,$3,$6
	li	$6,1			# 0x1
	daddu	$5,$9,$5
	beq	$11,$6,.L789
	dsll	$3,$3,9

	gsdmultu	$4,$4,$14
	dsra	$4,$4,8
	daddu	$3,$4,$3
	dsubu	$7,$3,$7
.L663:
	slt	$3,$5,$7
	li	$8,1			# 0x1
	movz	$8,$21,$3
	movz	$5,$7,$3
.L647:
	slt	$3,$5,$18
.L810:
	beq	$3,$0,.L648
	sll	$11,$11,16

	seb	$3,$8
	addu	$15,$11,$13
	move	$18,$5
	sd	$3,10120($sp)
.L648:
	addiu	$10,$10,-1
	beq	$10,$22,.L650
	move	$7,$0

	lhu	$13,0($12)
	daddiu	$12,$12,-2
	dext	$5,$13,0,32
	dlsa	$3,$5,$fp,1
	lh	$8,0($3)
	sra	$4,$8,31
.L651:
	dlsa	$3,$5,$23,2
	xor	$11,$4,$8
	lw	$3,0($3)
	subu	$11,$11,$4
	dlsa	$5,$5,$25,1
	lh	$5,0($5)
	sll	$3,$3,$20
	mul	$6,$3,$11
	addu	$4,$6,$16
	sra	$6,$5,31
	xor	$9,$6,$5
	subu	$9,$9,$6
	srl	$6,$4,$17
	subu	$6,$9,$6
	bne	$8,$0,.L790
	gsdmultu	$6,$6,$6

	xor	$5,$24,$5
	bgez	$5,.L697
	slt	$4,$10,$2

	bne	$4,$0,.L648
	nop

.L697:
	dext	$4,$13,0,32
	addu	$3,$16,$3
	dlsa	$4,$4,$sp,2
	srl	$5,$3,$17
	lw	$3,8192($4)
	subu	$9,$9,$5
	li	$5,32768			# 0x8000
	lw	$4,6144($4)
	gsdmultu	$9,$9,$9
	li	$8,1			# 0x1
	addu	$3,$3,$5
	addu	$3,$3,$4
	gsdmultu	$3,$3,$14
	dsubu	$9,$9,$6
	dsll	$4,$9,9
	dsra	$5,$3,8
	b	.L647
	daddu	$5,$5,$4

.L681:
	ld	$5,10280($sp)
	move	$4,$0
	srl	$11,$11,$5
	addu	$3,$11,$3
	addiu	$3,$3,-8
	sra	$5,$3,31
	and	$6,$5,$3
	addiu	$6,$6,8
	b	.L598
	sll	$6,$6,15

.L608:
	b	.L598
	lw	$6,0($5)

.L789:
	lw	$6,6144($8)
	li	$8,32768			# 0x8000
	addu	$6,$6,$8
	subu	$4,$4,$6
	gsdmultu	$4,$4,$14
	dsra	$4,$4,8
	daddu	$3,$4,$3
	bne	$2,$10,.L663
	dsubu	$7,$3,$7

	slt	$7,$5,$7
	beq	$7,$0,.L648
	li	$8,1			# 0x1

	b	.L810
	slt	$3,$5,$18

.L650:
	dext	$4,$15,16,16
	andi	$2,$15,0xffff
	ld	$19,10136($sp)
	move	$3,$4
	dsll	$2,$2,1
	ld	$20,10144($sp)
	xori	$6,$4,0x1
	sltu	$4,$4,32767
	ld	$23,10152($sp)
	daddu	$25,$25,$2
	sltu	$5,$3,1
	sltu	$6,$6,1
	bne	$4,$0,.L652
	daddu	$2,$fp,$2

	subu	$5,$5,$6
	li	$4,-1			# 0xffffffffffffffff
.L643:
	ld	$6,10112($sp)
	move	$18,$0
	lh	$3,0($25)
	addu	$5,$6,$5
	sd	$5,10112($sp)
	sra	$3,$3,31
	lhu	$5,0($2)
	subu	$5,$5,$3
	xor	$3,$3,$4
	addu	$3,$5,$3
	b	.L640
	sh	$3,0($2)

.L669:
	b	.L544
	move	$21,$0

.L670:
	move	$20,$21
	b	.L551
	sd	$0,10232($sp)

.L671:
	b	.L552
	sd	$0,10272($sp)

.L641:
	bgez	$10,.L808
	daddu	$12,$10,$22

	move	$2,$fp
	move	$4,$0
	b	.L643
	li	$5,1			# 0x1

.L773:
	ld	$10,10344($sp)
	li	$8,16			# 0x10
	move	$17,$0
	b	.L621
	move	$16,$0

.L774:
	b	.L621
	move	$16,$0

.L652:
	ld	$4,10120($sp)
	addiu	$3,$4,1
	seh	$4,$4
	sltu	$3,$3,1
	and	$6,$3,$6
	b	.L643
	subu	$5,$5,$6

.L786:
	beq	$9,$0,.L680
	ld	$3,10264($sp)

	subu	$25,$0,$9
	slt	$25,$25,0
	addu	$3,$3,$25
	b	.L658
	sd	$3,10264($sp)

.L779:
	ld	$4,10376($sp)
	sd	$4,10056($sp)
	ld	$4,10384($sp)
	sd	$4,10064($sp)
	ld	$4,10392($sp)
	b	.L615
	sw	$4,10048($sp)

.L680:
	move	$25,$0
	b	.L596
	move	$7,$0

	.set	macro
	.set	reorder
	.end	_ZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.size	_ZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjb, .-_ZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.section	.text._ZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjb,"axG",@progbits,_ZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjb,comdat
	.align	2
	.align	3
	.weak	_ZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.type	_ZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjb, @function
_ZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjb:
	.frame	$sp,38336,$31		# vars= 38240, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32752
	li	$2,38096			# 0x94d0
	sd	$28,32728($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjb)))
	li	$3,38216			# 0x9548
	daddu	$28,$28,$25
	sd	$fp,32736($sp)
	move	$fp,$6
	sd	$22,32712($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjb)))
	move	$22,$4
	sd	$21,32704($sp)
	daddiu	$21,$22,16
	sd	$20,32696($sp)
	sd	$19,32688($sp)
	li	$19,1			# 0x1
	sd	$18,32680($sp)
	move	$18,$8
	sd	$17,32672($sp)
	move	$17,$9
	li	$9,1024			# 0x400
	sd	$16,32664($sp)
	sd	$31,32744($sp)
	sd	$23,32720($sp)
	daddiu	$sp,$sp,-5584
	ld	$10,%got_disp(_ZN4x26510primitivesE)($28)
	daddu	$2,$2,$sp
	daddu	$3,$3,$sp
	sd	$5,0($2)
	li	$2,38176			# 0x9520
	daddu	$2,$2,$sp
	sd	$10,0($2)
	ld	$2,192($5)
	dext	$5,$8,0,32
	move	$8,$7
	sd	$5,0($3)
	li	$3,38056			# 0x94a8
	daddu	$3,$3,$sp
	ld	$25,5704($10)
	sd	$7,0($3)
	li	$3,38016			# 0x9480
	daddu	$2,$2,$5
	daddu	$3,$3,$sp
	lbu	$2,0($2)
	li	$5,3			# 0x3
	sd	$4,0($3)
	li	$4,38232			# 0x9558
	dext	$3,$7,0,32
	daddu	$4,$4,$sp
	sd	$3,0($4)
	dsll	$4,$3,5
	xori	$2,$2,0x2
	movz	$5,$0,$2
	daddu	$21,$21,$4
	ld	$3,0($22)
	lw	$20,0($21)
	addu	$2,$8,$5
	lw	$7,4($21)
	dlsa	$2,$2,$2,1
	ld	$4,120($22)
	dlsa	$20,$2,$20,1
	li	$2,38024			# 0x9488
	daddu	$2,$2,$sp
	addiu	$8,$7,15
	sd	$7,0($2)
	dlsa	$2,$20,$3,3
	sll	$8,$19,$8
	ld	$5,1152($2)
	jalr	$25
	addiu	$7,$7,16

	move	$16,$2
	beq	$16,$0,.L971
	li	$3,38064			# 0x94b0

	lw	$5,116($22)
	li	$6,37800			# 0x93a8
	daddu	$3,$3,$sp
	ld	$2,0($22)
	daddu	$6,$6,$sp
	sd	$0,0($3)
	lw	$3,24($21)
	lbu	$4,2592($2)
	dlsa	$20,$20,$2,3
	ld	$2,16($21)
	mult	$5,$3
	li	$3,38072			# 0x94b8
	daddu	$3,$3,$sp
	sd	$2,0($6)
	mflo	$23
	mfhi	$2
	dins	$23,$2,32,32
	ld	$2,2304($20)
	sd	$2,0($3)
	li	$3,4			# 0x4
	li	$2,8			# 0x8
	movz	$2,$3,$4
	move	$3,$2
	li	$2,38104			# 0x94d8
	daddu	$2,$2,$sp
	sd	$3,0($2)
	li	$2,38024			# 0x9488
	daddu	$2,$2,$sp
	ld	$7,0($2)
	slt	$2,$7,$3
	beq	$2,$0,.L1068
	li	$2,38096			# 0x94d0

	subu	$2,$3,$7
	li	$3,38064			# 0x94b0
	addiu	$2,$2,-1
	daddu	$3,$3,$sp
	sll	$2,$19,$2
	sd	$2,0($3)
	li	$2,38096			# 0x94d0
.L1068:
	move	$6,$18
	ld	$18,%got_disp(_ZN4x2659g_scan4x4E)($28)
	daddu	$2,$2,$sp
	ld	$25,%call16(_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb)($28)
	subu	$17,$0,$17
	ld	$4,0($2)
	li	$2,38056			# 0x94a8
	li	$5,37736			# 0x9368
	daddu	$2,$2,$sp
	li	$7,5			# 0x5
	ld	$2,0($2)
	daddu	$5,$sp,$5
	move	$21,$17
	li	$17,65536			# 0x10000
	daddu	$17,$sp,$17
	sltu	$8,$2,1
	li	$2,38112			# 0x94e0
	daddu	$2,$2,$sp
	sd	$18,0($2)
	li	$2,37768			# 0x9388
	daddu	$2,$2,$sp
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb
1:	jalr	$25
	sd	$21,0($2)

	li	$2,38176			# 0x9520
	daddu	$2,$2,$sp
	lwu	$10,-27784($17)
	li	$8,37632			# 0x9300
	ld	$2,0($2)
	li	$7,37376			# 0x9200
	li	$6,37504			# 0x9280
	ld	$4,-27800($17)
	move	$9,$16
	li	$11,32			# 0x20
	dsll	$10,$10,5
	daddu	$8,$sp,$8
	ld	$25,5968($2)
	daddu	$10,$18,$10
	daddu	$7,$sp,$7
	move	$5,$fp
	daddu	$6,$sp,$6
	jalr	$25
	li	$16,63			# 0x3f

	li	$3,38000			# 0x9470
	ld	$25,%call16(memset)($28)
	daddu	$3,$3,$sp
	li	$4,37848			# 0x93d8
	sd	$2,0($3)
	li	$3,38016			# 0x9480
	sra	$2,$2,4
	daddu	$3,$3,$sp
	daddu	$4,$4,$sp
	ld	$22,0($3)
	addiu	$20,$2,1
	subu	$16,$16,$2
	sll	$18,$20,4
	sll	$16,$16,4
	move	$19,$18
	dsll	$16,$16,3
	ld	$3,8($22)
	dsll	$19,$19,3
	move	$5,$0
	move	$6,$16
	slt	$20,$20,64
	sd	$3,0($4)
	li	$3,38152			# 0x9508
	li	$4,38224			# 0x9550
	daddu	$3,$3,$sp
	daddu	$4,$4,$sp
	sd	$2,0($3)
	move	$3,$2
	sd	$3,0($4)
	daddiu	$4,$sp,16384
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	daddu	$4,$4,$19

	ld	$25,%call16(memset)($28)
	move	$6,$16
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	daddu	$4,$sp,$19

	beq	$21,$0,.L816
	nop

	beq	$20,$0,.L942
	nop

	ld	$14,-27800($17)
	move	$11,$18
	move	$21,$0
	ld	$10,120($22)
	li	$13,1024			# 0x400
	ld	$9,128($22)
	dext	$2,$11,0,32
	.align	3
.L1069:
	dlsa	$2,$2,$14,1
	lhu	$7,0($2)
	addiu	$12,$7,128
.L819:
	addiu	$8,$7,4
	move	$6,$7
.L818:
	dext	$2,$6,0,32
	addiu	$6,$6,1
	dsll	$3,$2,1
	dlsa	$4,$2,$sp,3
	daddu	$2,$10,$3
	daddu	$3,$9,$3
	lh	$5,0($2)
	lh	$2,0($3)
	mult	$5,$5
	subu	$2,$2,$5
	gsdmultu	$2,$2,$23
	mflo	$3
	mfhi	$15
	dins	$3,$15,32,32
	dsll	$3,$3,11
	dsra	$2,$2,5
	dsubu	$2,$3,$2
	sd	$2,8192($4)
	bne	$8,$6,.L818
	daddu	$21,$21,$2

	addiu	$7,$7,32
	bne	$7,$12,.L819
	nop

	addiu	$11,$11,16
	bne	$11,$13,.L1069
	dext	$2,$11,0,32

.L817:
	li	$2,38152			# 0x9508
	daddu	$2,$2,$sp
.L1079:
	ld	$5,0($2)
	bltz	$5,.L943
	li	$4,36864			# 0x9000

	li	$6,37968			# 0x9450
	ld	$2,%got_disp(_ZZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64)($28)
	daddu	$4,$sp,$4
	daddu	$6,$6,$sp
	dlsa	$4,$5,$4,3
	li	$3,38192			# 0x9530
	sd	$4,0($6)
	li	$4,38224			# 0x9550
	daddu	$3,$3,$sp
	daddu	$4,$4,$sp
	sd	$2,0($3)
	li	$3,38200			# 0x9538
	ld	$4,0($4)
	daddu	$3,$3,$sp
	li	$6,37952			# 0x9440
	ld	$2,%got_disp(_ZN4x26513g_goRiceRangeE)($28)
	daddu	$6,$6,$sp
	move	$22,$21
	dsll	$4,$4,4
	sd	$2,0($3)
	li	$3,38208			# 0x9540
	ld	$2,%got_disp(_ZZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt)($28)
	daddu	$3,$3,$sp
	sd	$4,0($6)
	li	$4,37632			# 0x9300
	li	$6,38008			# 0x9478
	daddu	$4,$sp,$4
	daddu	$6,$6,$sp
	sd	$2,0($3)
	daddu	$4,$4,$5
	li	$3,37376			# 0x9200
	daddu	$3,$sp,$3
	sd	$4,0($6)
	li	$6,37960			# 0x9448
	dlsa	$4,$5,$3,1
	daddu	$6,$6,$sp
	sd	$4,0($6)
	li	$4,37896			# 0x9408
	li	$2,-1			# 0xffffffffffffffff
	daddu	$4,$4,$sp
	dsll	$2,$2,63
	sd	$5,0($4)
	li	$5,37760			# 0x9380
	li	$4,1			# 0x1
	daddu	$5,$5,$sp
	daddiu	$2,$2,-1
	sd	$4,0($5)
	li	$4,37888			# 0x9400
	li	$5,37832			# 0x93c8
	daddu	$4,$4,$sp
	daddu	$5,$5,$sp
	sd	$0,0($4)
	li	$4,65536			# 0x10000
	daddu	$4,$sp,$4
	sd	$4,0($5)
	li	$4,38160			# 0x9510
	daddu	$4,$4,$sp
	sd	$3,0($4)
	li	$3,37696			# 0x9340
	li	$4,38184			# 0x9528
	daddu	$3,$sp,$3
	daddu	$4,$4,$sp
	sd	$3,0($4)
	li	$3,37848			# 0x93d8
	li	$4,37824			# 0x93c0
	daddu	$3,$3,$sp
	daddu	$4,$4,$sp
	ld	$3,0($3)
	daddiu	$3,$3,208
	sd	$3,0($4)
	li	$3,37944			# 0x9438
	daddu	$3,$3,$sp
	sd	$2,0($3)
	li	$2,37880			# 0x93f8
	daddu	$2,$2,$sp
	sd	$23,0($2)
	li	$2,37808			# 0x93b0
	daddu	$2,$2,$sp
	sd	$fp,0($2)
	li	$2,37896			# 0x9408
	.align	3
.L1072:
	daddu	$2,$2,$sp
	ld	$2,0($2)
	beq	$2,$0,.L944
	li	$2,38056			# 0x94a8

	li	$3,37928			# 0x9428
	daddu	$2,$2,$sp
	daddu	$3,$3,$sp
	ld	$2,0($2)
	sltu	$2,$2,1
	dsll	$2,$2,1
	sd	$2,0($3)
.L825:
	li	$3,37960			# 0x9448
	li	$5,38160			# 0x9510
	li	$2,37832			# 0x93c8
	daddu	$3,$3,$sp
	daddu	$5,$5,$sp
	daddu	$2,$2,$sp
	ld	$3,0($3)
	ld	$5,0($5)
	li	$6,37816			# 0x93b8
	li	$7,37888			# 0x9400
	ld	$4,0($2)
	daddu	$6,$6,$sp
	daddu	$7,$7,$sp
	ld	$7,0($7)
	dsubu	$3,$3,$5
	li	$5,37952			# 0x9440
	ld	$2,-27792($4)
	daddu	$5,$5,$sp
	ld	$5,0($5)
	lwu	$10,-27784($4)
	daddu	$3,$2,$3
	ld	$2,-27800($4)
	move	$13,$5
	lw	$5,-27780($4)
	lhu	$4,0($3)
	li	$3,38016			# 0x9480
	dsll	$10,$10,5
	daddu	$3,$3,$sp
	ld	$3,0($3)
	sd	$5,0($6)
	li	$6,38120			# 0x94e8
	daddu	$6,$6,$sp
	ld	$18,120($3)
	li	$3,38112			# 0x94e0
	daddu	$3,$3,$sp
	ld	$3,0($3)
	daddu	$10,$3,$10
	move	$3,$4
	addiu	$5,$3,1
	andi	$4,$4,0x7
	sd	$5,0($6)
	srl	$6,$3,3
	dsrl	$14,$7,$5
	xori	$6,$6,0x7
	li	$7,38136			# 0x94f8
	sltu	$6,$0,$6
	daddu	$7,$7,$sp
	sd	$6,0($7)
	xori	$4,$4,0x7
	li	$7,38128			# 0x94f0
	sltu	$4,$0,$4
	sll	$5,$14,0
	daddu	$7,$7,$sp
	and	$14,$4,$5
	sd	$4,0($7)
	li	$4,37896			# 0x9408
	srl	$25,$5,7
	daddu	$4,$4,$sp
	and	$25,$25,$6
	ld	$4,0($4)
	beq	$4,$0,.L826
	lsa	$11,$25,$14,1

	li	$4,38056			# 0x94a8
	daddu	$4,$4,$sp
	ld	$4,0($4)
	bne	$4,$0,.L1046
	li	$4,37816			# 0x93b8

	li	$5,37816			# 0x93b8
	daddu	$4,$4,$sp
	daddu	$5,$5,$sp
	ld	$4,0($4)
	addiu	$4,$4,3
	sd	$4,0($5)
.L1043:
	move	$15,$4
	li	$4,37760			# 0x9380
	daddu	$4,$4,$sp
	ld	$4,0($4)
	bne	$4,$0,.L1070
	li	$4,38008			# 0x9478

	li	$4,37928			# 0x9428
	li	$5,37928			# 0x9428
	daddu	$4,$4,$sp
	daddu	$5,$5,$sp
	ld	$4,0($4)
	addiu	$4,$4,1
	sd	$4,0($5)
	li	$4,38008			# 0x9478
.L1070:
	daddu	$4,$4,$sp
	ld	$4,0($4)
	lbu	$4,0($4)
	bne	$4,$0,.L1071
	li	$5,38192			# 0x9530

	dlsa	$13,$13,$2,1
	li	$2,37768			# 0x9388
	daddu	$2,$2,$sp
	ld	$2,0($2)
	beq	$2,$0,.L946
	lhu	$12,0($13)

	li	$2,38016			# 0x9480
	li	$13,4			# 0x4
	daddu	$2,$2,$sp
	li	$17,20			# 0x14
	ld	$2,0($2)
	ld	$16,128($2)
	li	$2,38208			# 0x9540
	daddu	$2,$2,$sp
	ld	$2,0($2)
	dlsa	$11,$11,$2,4
	li	$2,37848			# 0x93d8
	daddu	$2,$2,$sp
	ld	$9,0($2)
	li	$2,37800			# 0x93a8
	daddu	$2,$2,$sp
	ld	$24,0($2)
	li	$2,37880			# 0x93f8
	daddu	$2,$2,$sp
	ld	$19,0($2)
	li	$2,37952			# 0x9440
	daddu	$2,$2,$sp
	ld	$20,0($2)
.L833:
	addiu	$7,$13,-4
.L831:
	dext	$2,$7,0,32
	addu	$5,$12,$7
	dext	$5,$5,0,32
	dlsa	$2,$2,$10,1
	dsll	$3,$5,1
	lhu	$2,0($2)
	addu	$6,$20,$7
	daddu	$4,$18,$3
	daddu	$3,$16,$3
	lh	$4,0($4)
	dext	$6,$6,0,32
	dlsa	$8,$5,$sp,3
	daddu	$2,$11,$2
	lh	$23,0($3)
	dlsa	$6,$6,$sp,3
	lbu	$3,0($2)
	dlsa	$5,$5,$sp,2
	addiu	$7,$7,1
	mult	$4,$4
	subu	$4,$23,$4
	addu	$3,$3,$15
	dext	$3,$3,0,32
	dlsa	$3,$3,$9,2
	lw	$23,224($3)
	mfhi	$fp
	mflo	$2
	gsdmultu	$4,$4,$19
	dins	$2,$fp,32,32
	lw	$fp,392($3)
	gsdmultu	$3,$23,$24
	dsll	$2,$2,11
	subu	$23,$fp,$23
	sw	$23,24576($5)
	dsra	$4,$4,5
	dsubu	$2,$2,$4
	dsra	$3,$3,8
	sd	$2,8192($8)
	daddu	$21,$21,$2
	daddu	$22,$22,$2
	sd	$3,0($6)
	bne	$13,$7,.L831
	sd	$2,16384($6)

	addiu	$13,$13,4
	bne	$13,$17,.L833
	addiu	$12,$12,28

	li	$3,37760			# 0x9380
.L1067:
	li	$2,1			# 0x1
	daddu	$3,$3,$sp
	or	$14,$14,$25
	sd	$2,0($3)
	li	$2,37848			# 0x93d8
	li	$3,37800			# 0x93a8
	daddu	$2,$2,$sp
	daddu	$3,$3,$sp
	ld	$2,0($2)
	ld	$3,0($3)
	dlsa	$14,$14,$2,3
	lw	$2,208($14)
	gsdmultu	$2,$2,$3
	li	$3,37968			# 0x9450
	daddu	$3,$3,$sp
	ld	$3,0($3)
	dsra	$2,$2,8
	daddu	$22,$22,$2
	sd	$2,0($3)
.L835:
	li	$2,37896			# 0x9408
	li	$3,37896			# 0x9408
	daddu	$2,$2,$sp
	daddu	$3,$3,$sp
	ld	$2,0($2)
	li	$4,37968			# 0x9450
	daddu	$4,$4,$sp
	addiu	$2,$2,-1
	sd	$2,0($3)
	li	$3,37968			# 0x9450
	daddu	$3,$3,$sp
	ld	$3,0($3)
	daddiu	$3,$3,-8
	sd	$3,0($4)
	li	$3,37952			# 0x9440
	li	$4,37952			# 0x9440
	daddu	$3,$3,$sp
	daddu	$4,$4,$sp
	ld	$3,0($3)
	addiu	$3,$3,-16
	sd	$3,0($4)
	li	$3,38008			# 0x9478
	li	$4,38008			# 0x9478
	daddu	$3,$3,$sp
	daddu	$4,$4,$sp
	ld	$3,0($3)
	daddiu	$3,$3,-1
	sd	$3,0($4)
	li	$3,37960			# 0x9448
	li	$4,37960			# 0x9448
	daddu	$3,$3,$sp
	daddu	$4,$4,$sp
	ld	$3,0($3)
	daddiu	$3,$3,-2
	sd	$3,0($4)
	li	$3,-1			# 0xffffffffffffffff
	bne	$2,$3,.L1072
	li	$2,37896			# 0x9408

	li	$2,37808			# 0x93b0
	move	$20,$22
	daddu	$2,$2,$sp
	ld	$fp,0($2)
.L824:
	li	$2,38096			# 0x94d0
	li	$5,38216			# 0x9548
	daddu	$2,$2,$sp
	daddu	$5,$5,$sp
	ld	$2,0($2)
	li	$4,2			# 0x2
	ld	$6,0($5)
	ld	$3,192($2)
	ld	$2,256($2)
	daddu	$3,$3,$6
	lbu	$5,0($3)
	daddu	$2,$2,$6
	beq	$5,$4,.L893
	lbu	$3,0($2)

	li	$2,38056			# 0x94a8
	daddu	$2,$2,$sp
	ld	$2,0($2)
	beq	$2,$0,.L1047
	nop

.L893:
	li	$2,38232			# 0x9558
.L1077:
	ld	$4,%got_page(_ZN4x265L6ctxCbfE)($28)
	daddu	$2,$2,$sp
	ld	$2,0($2)
	daddiu	$4,$4,%got_ofst(_ZN4x265L6ctxCbfE)
	dlsa	$2,$2,$2,2
	dlsa	$2,$2,$4,2
	dlsa	$2,$3,$2,2
	li	$3,37848			# 0x93d8
	daddu	$3,$3,$sp
	lw	$2,0($2)
	ld	$4,0($3)
	dlsa	$3,$2,$4,3
	lw	$24,880($3)
	lw	$8,884($3)
.L1045:
	li	$2,37800			# 0x93a8
	daddu	$2,$2,$sp
	ld	$2,0($2)
	gsdmultu	$24,$24,$2
	gsdmultu	$8,$8,$2
	li	$2,38152			# 0x9508
	daddu	$2,$2,$sp
	ld	$2,0($2)
	dsra	$24,$24,8
	dsra	$8,$8,8
	daddu	$24,$24,$21
	bltz	$2,.L1048
	daddu	$8,$8,$20

	li	$2,38224			# 0x9550
	li	$15,36864			# 0x9000
	ld	$25,%got_disp(_ZN4x26516g_lastCoeffTableE)($28)
	daddu	$2,$2,$sp
	daddu	$15,$sp,$15
	ld	$2,0($2)
	li	$12,65536			# 0x10000
	move	$17,$0
	daddu	$12,$sp,$12
	li	$18,1			# 0x1
	li	$20,-1			# 0xffffffffffffffff
	sll	$11,$2,4
	li	$2,38152			# 0x9508
	daddu	$2,$2,$sp
	addiu	$11,$11,-1
	ld	$2,0($2)
	move	$14,$2
	dsll	$16,$2,1
	dlsa	$15,$2,$15,3
	move	$19,$2
	li	$2,38000			# 0x9470
	daddu	$2,$2,$sp
	ld	$21,0($2)
	li	$2,38016			# 0x9480
	daddu	$2,$2,$sp
	ld	$22,0($2)
	.align	3
.L906:
	beq	$14,$0,.L897
	nop

	beq	$14,$19,.L897
	nop

	ld	$3,0($15)
	ld	$2,-27792($12)
	dsubu	$8,$8,$3
	li	$3,37888			# 0x9400
	daddu	$2,$2,$16
	daddu	$3,$3,$sp
	lhu	$2,0($2)
	ld	$3,0($3)
	dsrl	$2,$3,$2
	andi	$2,$2,0x1
	beq	$2,$0,.L898
	nop

.L897:
	b	.L905
	addiu	$6,$11,16

	.align	3
.L963:
	move	$8,$4
.L899:
	addiu	$6,$6,-1
	beq	$11,$6,.L898
	nop

.L905:
	slt	$2,$21,$6
	bne	$2,$0,.L899
	dext	$3,$6,0,32

	ld	$2,-27800($12)
	dlsa	$4,$3,$sp,3
	ld	$4,0($4)
	dlsa	$2,$3,$2,1
	lhu	$2,0($2)
	dlsa	$5,$2,$fp,1
	lh	$7,0($5)
	beq	$7,$0,.L963
	dsubu	$4,$8,$4

	lw	$23,-27784($12)
	move	$9,$2
	andi	$2,$2,0x1f
	srl	$13,$9,5
	ld	$10,8($22)
	dlsa	$3,$3,$sp,3
	dlsa	$9,$9,$sp,3
	xori	$5,$23,0x2
	move	$23,$2
	movz	$23,$13,$5
	movn	$2,$13,$5
	daddu	$23,$25,$23
	lbu	$5,0($23)
	daddu	$2,$25,$2
	lbu	$2,0($2)
	andi	$23,$5,0xf
	sra	$5,$5,4
	andi	$13,$2,0xf
	dlsa	$23,$23,$10,2
	lw	$23,560($23)
	dlsa	$10,$13,$10,2
	sll	$5,$5,15
	lw	$10,600($10)
	sra	$2,$2,4
	sll	$2,$2,15
	addu	$5,$5,$23
	addu	$10,$10,$5
	li	$5,37800			# 0x93a8
	daddu	$5,$5,$sp
	addu	$2,$2,$10
	ld	$5,0($5)
	dext	$2,$2,0,32
	gsdmultu	$2,$2,$5
	dsra	$2,$2,8
	daddu	$4,$2,$4
	slt	$2,$4,$24
	beq	$2,$0,.L901
	slt	$7,$7,2

	addiu	$17,$6,1
	move	$24,$4
.L901:
	beq	$7,$0,.L1073
	li	$2,38000			# 0x9470

	lw	$2,112($22)
	beq	$2,$18,.L1073
	li	$2,38000			# 0x9470

	ld	$2,16384($3)
	addiu	$6,$6,-1
	ld	$3,8192($9)
	dsubu	$8,$8,$2
	bne	$11,$6,.L905
	daddu	$8,$8,$3

	.align	3
.L898:
	addiu	$14,$14,-1
	daddiu	$16,$16,-2
	daddiu	$15,$15,-8
	bne	$14,$20,.L906
	addiu	$11,$11,-16

	li	$2,38000			# 0x9470
.L1073:
	li	$8,-16			# 0xfffffffffffffff0
	daddu	$2,$2,$sp
	and	$8,$17,$8
	ld	$2,0($2)
	addiu	$8,$8,16
	blez	$17,.L1049
	subu	$10,$2,$17

	li	$2,38016			# 0x9480
	addiu	$7,$17,-1
	daddu	$2,$2,$sp
	dext	$7,$7,0,32
	ld	$2,0($2)
	move	$16,$0
	ld	$9,120($2)
	li	$2,65536			# 0x10000
	daddu	$2,$sp,$2
	ld	$6,-27800($2)
	daddiu	$5,$6,2
	b	.L909
	dlsa	$7,$7,$5,1

	.align	3
.L1050:
	daddiu	$5,$5,2
.L909:
	lhu	$2,0($6)
	move	$6,$5
	dsll	$2,$2,1
	daddu	$3,$9,$2
	daddu	$2,$fp,$2
	lh	$4,0($3)
	lh	$3,0($2)
	sra	$4,$4,31
	andi	$4,$4,0xffff
	sltu	$11,$0,$3
	xor	$3,$3,$4
	addu	$16,$11,$16
	subu	$3,$3,$4
	bne	$7,$5,.L1050
	sh	$3,0($2)

.L894:
	sra	$2,$10,31
	and	$2,$2,$10
	addu	$2,$2,$17
	ori	$2,$2,0xf
	slt	$3,$2,$17
	bne	$3,$0,.L908
	nop

	subu	$4,$2,$17
	li	$2,65536			# 0x10000
	daddu	$2,$sp,$2
	dext	$4,$4,0,32
	ld	$2,-27800($2)
	daddu	$4,$4,$17
	daddiu	$3,$2,2
	dlsa	$2,$17,$2,1
	dlsa	$4,$4,$3,1
	.align	3
.L910:
	lhu	$3,0($2)
	daddiu	$2,$2,2
	dlsa	$3,$3,$fp,1
	bne	$4,$2,.L910
	sh	$0,0($3)

.L908:
	li	$2,38000			# 0x9470
	daddu	$2,$2,$sp
	ld	$3,0($2)
	slt	$2,$3,$8
	bne	$2,$0,.L911
	li	$2,65536			# 0x10000

	subu	$4,$3,$8
	daddu	$2,$sp,$2
	dext	$4,$4,4,28
	ld	$2,-27800($2)
	dlsa	$4,$4,$8,4
	daddiu	$3,$2,32
	dlsa	$8,$8,$2,1
	dlsa	$4,$4,$3,1
	.align	3
.L912:
	lhu	$3,0($8)
	daddiu	$8,$8,32
	move	$2,$3
	dlsa	$3,$3,$fp,1
	daddiu	$6,$2,32
	daddiu	$5,$2,64
	sb	$0,0($3)
	daddiu	$2,$2,96
	dlsa	$6,$6,$fp,1
	sb	$0,1($3)
	dlsa	$5,$5,$fp,1
	dlsa	$2,$2,$fp,1
	sb	$0,2($3)
	sb	$0,3($3)
	sb	$0,4($3)
	sb	$0,5($3)
	sb	$0,6($3)
	sb	$0,7($3)
	sb	$0,0($6)
	sb	$0,1($6)
	sb	$0,2($6)
	sb	$0,3($6)
	sb	$0,4($6)
	sb	$0,5($6)
	sb	$0,6($6)
	sb	$0,7($6)
	sb	$0,0($5)
	sb	$0,1($5)
	sb	$0,2($5)
	sb	$0,3($5)
	sb	$0,4($5)
	sb	$0,5($5)
	sb	$0,6($5)
	sb	$0,7($5)
	sb	$0,0($2)
	sb	$0,1($2)
	sb	$0,2($2)
	sb	$0,3($2)
	sb	$0,4($2)
	sb	$0,5($2)
	sb	$0,6($2)
	bne	$4,$8,.L912
	sb	$0,7($2)

.L911:
	li	$2,38096			# 0x94d0
	daddu	$2,$2,$sp
	ld	$2,0($2)
	ld	$2,56($2)
	ld	$2,8($2)
	lbu	$2,27($2)
	beq	$2,$0,.L971
	sltu	$2,$16,2

	bne	$2,$0,.L971
	addiu	$2,$17,-1

	sra	$2,$2,4
	bltz	$2,.L971
	li	$21,-1			# 0xffffffffffffffff

	dsll	$23,$2,1
	dsll	$3,$21,63
	dsll	$22,$2,4
	daddiu	$2,$3,-1
	li	$3,37784			# 0x9398
	daddu	$3,$3,$sp
	li	$17,65536			# 0x10000
	sd	$2,0($3)
	li	$2,37888			# 0x9400
	li	$18,1			# 0x1
	daddu	$2,$2,$sp
	daddu	$17,$sp,$17
	ld	$20,0($2)
	li	$2,38104			# 0x94d8
	daddu	$2,$2,$sp
	ld	$19,0($2)
	li	$2,37768			# 0x9388
	daddu	$2,$2,$sp
	sd	$16,0($2)
	.align	3
.L926:
	ld	$2,-27792($17)
	daddu	$2,$2,$23
	lhu	$2,0($2)
	dsrl	$2,$20,$2
	andi	$2,$2,0x1
	beq	$2,$0,.L913
	li	$3,38176			# 0x9520

	ld	$2,-27800($17)
	move	$16,$22
	daddu	$3,$3,$sp
	lwu	$6,-27784($17)
	li	$5,32			# 0x20
	ld	$3,0($3)
	dlsa	$2,$16,$2,1
	lhu	$4,0($2)
	li	$2,38112			# 0x94e0
	dsll	$6,$6,5
	daddu	$2,$2,$sp
	ld	$25,5976($3)
	ld	$2,0($2)
	dlsa	$4,$4,$fp,1
	jalr	$25
	daddu	$6,$2,$6

	move	$4,$2
	andi	$2,$2,0x00ff
	srl	$9,$4,8
	seb	$9,$9
	subu	$3,$9,$2
	slt	$3,$3,4
	bne	$3,$0,.L965
	addu	$3,$22,$2

	ld	$5,-27800($17)
	dlsa	$3,$3,$5,1
	lhu	$3,0($3)
	dlsa	$3,$3,$fp,1
	lh	$14,0($3)
	xor	$4,$14,$4
	bltz	$4,.L1051
	addu	$3,$22,$9

.L965:
	move	$18,$0
.L913:
	daddiu	$23,$23,-2
	li	$2,-2			# 0xfffffffffffffffe
	bne	$2,$23,.L926
	addiu	$22,$22,-16

	li	$2,37768			# 0x9388
	daddu	$2,$2,$sp
	ld	$16,0($2)
.L971:
	daddiu	$sp,$sp,5584
	move	$2,$16
	ld	$31,32744($sp)
	ld	$fp,32736($sp)
	ld	$28,32728($sp)
	ld	$23,32720($sp)
	ld	$22,32712($sp)
	ld	$21,32704($sp)
	ld	$20,32696($sp)
	ld	$19,32688($sp)
	ld	$18,32680($sp)
	ld	$17,32672($sp)
	ld	$16,32664($sp)
	jr	$31
	daddiu	$sp,$sp,32752

	.align	3
.L816:
	beq	$20,$0,.L942
	li	$2,38016			# 0x9480

	ld	$10,-27800($17)
	move	$11,$18
	daddu	$2,$2,$sp
	move	$21,$0
	ld	$2,0($2)
	li	$9,1024			# 0x400
	ld	$7,120($2)
	.align	3
.L823:
	dext	$2,$11,0,32
	dlsa	$2,$2,$10,1
	lhu	$6,0($2)
	addiu	$12,$6,128
.L822:
	addiu	$8,$6,4
	move	$4,$6
.L821:
	dext	$2,$4,0,32
	addiu	$4,$4,1
	dlsa	$5,$2,$7,1
	dlsa	$3,$2,$sp,3
	lh	$2,0($5)
	mult	$2,$2
	mflo	$2
	mfhi	$5
	dins	$2,$5,32,32
	dsll	$2,$2,11
	sd	$2,8192($3)
	bne	$8,$4,.L821
	daddu	$21,$21,$2

	addiu	$6,$6,32
	bne	$6,$12,.L822
	nop

	addiu	$11,$11,16
	bne	$11,$9,.L823
	li	$2,38152			# 0x9508

	b	.L1079
	daddu	$2,$2,$sp

.L826:
	li	$4,37928			# 0x9428
	li	$6,37760			# 0x9380
	daddu	$4,$4,$sp
	daddu	$6,$6,$sp
	ld	$4,0($4)
	ld	$6,0($6)
	addiu	$5,$4,1
	movz	$4,$5,$6
	li	$5,37928			# 0x9428
	daddu	$5,$5,$sp
	sd	$4,0($5)
	li	$5,38192			# 0x9530
	.align	3
.L1071:
	dlsa	$13,$13,$2,1
	daddu	$5,$5,$sp
	li	$4,37960			# 0x9448
	ld	$5,0($5)
	daddu	$4,$4,$sp
	li	$6,37904			# 0x9410
	daddu	$6,$6,$sp
	ld	$4,0($4)
	daddiu	$20,$10,30
	move	$19,$0
	li	$14,15			# 0xf
	dlsa	$11,$11,$5,3
	li	$5,1			# 0x1
	dsll	$3,$5,$3
	li	$5,38080			# 0x94c0
	lhu	$4,0($4)
	daddu	$5,$5,$sp
	sd	$3,0($5)
	li	$3,38184			# 0x9528
	li	$5,37928			# 0x9428
	daddu	$3,$3,$sp
	daddu	$5,$5,$sp
	ld	$3,0($3)
	move	$24,$4
	ld	$5,0($5)
	move	$2,$3
	sd	$0,0($3)
	sd	$0,8($3)
	sll	$5,$5,2
	sd	$0,16($3)
	li	$3,37952			# 0x9440
	sd	$0,24($2)
	daddu	$3,$3,$sp
	sd	$0,32($2)
	li	$2,38048			# 0x94a0
	daddu	$2,$2,$sp
	ld	$3,0($3)
	sd	$0,0($2)
	li	$2,38040			# 0x9498
	daddu	$2,$2,$sp
	sd	$5,0($6)
	li	$5,38000			# 0x9470
	sd	$0,0($2)
	li	$2,38016			# 0x9480
	addiu	$8,$3,15
	daddu	$2,$2,$sp
	li	$3,37776			# 0x9390
	ld	$2,0($2)
	daddu	$3,$3,$sp
	daddu	$5,$5,$sp
	ld	$5,0($5)
	li	$6,37784			# 0x9398
	daddu	$6,$6,$sp
	ld	$2,128($2)
	sd	$5,0($6)
	sd	$2,0($3)
	li	$2,38088			# 0x94c8
	li	$3,37912			# 0x9418
	daddu	$2,$2,$sp
	daddu	$3,$3,$sp
	sd	$0,0($2)
	li	$2,38032			# 0x9490
	daddu	$2,$2,$sp
	sd	$0,0($2)
	ld	$2,0($11)
	sd	$2,0($3)
	li	$2,37872			# 0x93f0
	li	$3,38144			# 0x9500
	daddu	$2,$2,$sp
	daddu	$3,$3,$sp
	sd	$0,0($2)
	li	$2,37920			# 0x9420
	daddu	$2,$2,$sp
	sd	$0,0($2)
	li	$2,3			# 0x3
	sd	$2,0($3)
	li	$2,37936			# 0x9430
	li	$3,37760			# 0x9380
	daddu	$2,$2,$sp
	daddu	$3,$3,$sp
	sd	$0,0($2)
	li	$2,37864			# 0x93e8
	daddu	$2,$2,$sp
	sd	$0,0($2)
	li	$2,1			# 0x1
	sd	$2,0($3)
	li	$2,37792			# 0x93a0
	daddu	$2,$2,$sp
	b	.L887
	sd	$18,0($2)

	.align	3
.L1053:
	dext	$7,$5,0,32
	dlsa	$2,$7,$sp,3
	sd	$3,8192($2)
.L837:
	daddu	$21,$21,$3
	beq	$5,$0,.L838
	move	$2,$0

	li	$5,37912			# 0x9418
	lhu	$2,0($20)
	daddu	$5,$5,$sp
	ld	$5,0($5)
	sll	$2,$2,2
	dsrl	$2,$5,$2
	li	$5,37816			# 0x93b8
	daddu	$5,$5,$sp
	andi	$2,$2,0xf
	ld	$5,0($5)
	addu	$2,$2,$5
.L838:
	li	$5,37784			# 0x9398
	daddu	$5,$5,$sp
	ld	$5,0($5)
	sltu	$5,$5,$8
	beq	$5,$0,.L839
	li	$5,37904			# 0x9410

	dext	$4,$8,0,32
	daddu	$22,$22,$3
	dlsa	$4,$4,$sp,3
	move	$3,$19
	move	$2,$0
	sd	$0,16384($4)
	sd	$0,0($4)
.L840:
	addiu	$14,$14,-1
	li	$4,-1			# 0xffffffffffffffff
	daddiu	$13,$13,-2
	addiu	$8,$8,-1
	beq	$14,$4,.L1052
	daddiu	$20,$20,-2

.L959:
	move	$19,$3
.L887:
	li	$2,37768			# 0x9388
	lhu	$5,30($13)
	daddu	$2,$2,$sp
	ld	$2,0($2)
	dext	$15,$5,0,32
	dsll	$4,$15,1
	and	$9,$2,$8
	li	$2,37792			# 0x93a0
	daddu	$2,$2,$sp
	ld	$2,0($2)
	daddu	$3,$2,$4
	li	$2,37776			# 0x9390
	lh	$6,0($3)
	daddu	$2,$2,$sp
	li	$3,37808			# 0x93b0
	ld	$2,0($2)
	daddu	$3,$3,$sp
	ld	$3,0($3)
	mult	$6,$6
	move	$12,$6
	daddu	$2,$2,$4
	lh	$11,0($2)
	daddu	$4,$3,$4
	lh	$10,0($4)
	subu	$11,$11,$6
	mflo	$3
	mfhi	$2
	dins	$3,$2,32,32
	beq	$9,$0,.L1053
	dsll	$3,$3,11

	li	$2,37880			# 0x93f8
	dext	$7,$5,0,32
	daddu	$2,$2,$sp
	dlsa	$25,$7,$sp,3
	ld	$2,0($2)
	gsdmultu	$2,$11,$2
	dsra	$2,$2,5
	dsubu	$3,$3,$2
	b	.L837
	sd	$3,8192($25)

	.align	3
.L839:
	li	$25,37760			# 0x9380
	daddu	$5,$5,$sp
	daddu	$25,$25,$sp
	ld	$25,0($25)
	li	$16,37824			# 0x93c0
	ld	$5,0($5)
	daddu	$16,$16,$sp
	ld	$16,0($16)
	addu	$5,$5,$25
	andi	$25,$24,0x1
	dext	$5,$5,0,32
	srl	$24,$24,1
	daddiu	$5,$5,54
	bne	$25,$0,.L841
	dlsa	$5,$5,$16,3

	li	$4,37848			# 0x93d8
	dext	$2,$2,0,32
	lw	$9,0($5)
	daddu	$4,$4,$sp
	dsll	$7,$7,2
	ld	$4,0($4)
	daddu	$10,$sp,$7
	addiu	$14,$14,-1
	daddiu	$13,$13,-2
	daddiu	$20,$20,-2
	dlsa	$2,$2,$4,2
	dext	$4,$8,0,32
	lw	$6,224($2)
	dlsa	$4,$4,$sp,3
	addiu	$8,$8,-1
	lw	$5,392($2)
	li	$2,37832			# 0x93c8
	daddu	$2,$2,$sp
	ld	$2,0($2)
	subu	$5,$5,$6
	sw	$5,24576($10)
	daddu	$7,$2,$7
	li	$2,37800			# 0x93a8
	daddu	$2,$2,$sp
	sw	$9,-32768($7)
	ld	$2,0($2)
	gsdmultu	$2,$6,$2
	dsra	$2,$2,8
	daddu	$5,$2,$3
	sd	$2,0($4)
	daddu	$3,$2,$19
	sd	$5,16384($4)
	li	$4,-1			# 0xffffffffffffffff
	bne	$14,$4,.L959
	daddu	$22,$22,$5

.L1052:
	li	$4,38088			# 0x94c8
	daddu	$4,$4,$sp
	ld	$4,0($4)
	bne	$4,$0,.L1054
	li	$4,37832			# 0x93c8

.L888:
	li	$4,37832			# 0x93c8
	daddu	$4,$4,$sp
	ld	$8,0($4)
	li	$4,37968			# 0x9450
	daddu	$4,$4,$sp
	ld	$4,0($4)
	sd	$3,-27816($8)
	sd	$2,-27808($8)
	sd	$0,0($4)
	li	$4,37896			# 0x9408
	daddu	$4,$4,$sp
	ld	$4,0($4)
	beq	$4,$0,.L835
	nop

	li	$5,38152			# 0x9508
	daddu	$5,$5,$sp
	ld	$5,0($5)
	beq	$4,$5,.L835
	li	$4,37888			# 0x9400

	li	$6,38080			# 0x94c0
	daddu	$4,$4,$sp
	li	$7,38128			# 0x94f0
	ld	$5,0($4)
	li	$4,38120			# 0x94e8
	daddu	$6,$6,$sp
	daddu	$4,$4,$sp
	daddu	$7,$7,$sp
	ld	$6,0($6)
	ld	$4,0($4)
	ld	$7,0($7)
	dsrl	$4,$5,$4
	and	$5,$5,$6
	sll	$4,$4,0
	srl	$6,$4,7
	and	$4,$7,$4
	li	$7,38136			# 0x94f8
	daddu	$7,$7,$sp
	ld	$7,0($7)
	and	$6,$6,$7
	or	$4,$6,$4
	li	$6,37848			# 0x93d8
	daddu	$6,$6,$sp
	ld	$6,0($6)
	dlsa	$6,$4,$6,3
	lw	$7,208($6)
	li	$6,37800			# 0x93a8
	daddu	$6,$6,$sp
	ld	$6,0($6)
	gsdmultu	$7,$7,$6
	beq	$5,$0,.L890
	dsra	$7,$7,8

	lw	$5,-27840($8)
	bne	$5,$0,.L891
	nop

	dsubu	$22,$22,$2
	move	$3,$19
	sd	$19,-27816($8)
.L891:
	li	$2,37848			# 0x93d8
	daddu	$2,$2,$sp
	ld	$2,0($2)
	dlsa	$4,$4,$2,3
	li	$2,37832			# 0x93c8
	daddu	$2,$2,$sp
	lw	$4,212($4)
	ld	$8,0($2)
	daddu	$2,$22,$7
	ld	$5,-27824($8)
	ld	$6,-27832($8)
	daddu	$2,$2,$5
	li	$5,37800			# 0x93a8
	daddu	$5,$5,$sp
	dsubu	$2,$2,$6
	ld	$5,0($5)
	dsubu	$2,$2,$3
	li	$3,37968			# 0x9450
	daddu	$3,$3,$sp
	gsdmultu	$4,$4,$5
	ld	$5,0($3)
	dsra	$4,$4,8
	daddu	$22,$22,$4
	slt	$3,$2,$22
	beq	$3,$0,.L835
	sd	$4,0($5)

	li	$3,38016			# 0x9480
	daddu	$3,$3,$sp
	ld	$3,0($3)
	lw	$3,112($3)
	slt	$3,$3,2
	bne	$3,$0,.L835
	li	$3,37952			# 0x9440

	li	$6,38080			# 0x94c0
	ld	$4,-27800($8)
	daddu	$6,$6,$sp
	daddu	$3,$3,$sp
	sd	$7,0($5)
	ldc1	$f0,0($6)
	li	$6,37888			# 0x9400
	ld	$3,0($3)
	move	$22,$2
	daddu	$6,$6,$sp
	ldc1	$f1,0($6)
	li	$6,37888			# 0x9400
	dext	$3,$3,0,32
	daddu	$6,$6,$sp
	dlsa	$2,$3,$4,1
	li	$4,37808			# 0x93b0
	pandn	$f0,$f0,$f1
	lhu	$3,0($2)
	daddu	$4,$4,$sp
	move	$2,$3
	daddiu	$5,$2,32
	sdc1	$f0,0($6)
	ld	$6,0($4)
	daddiu	$4,$2,64
	daddiu	$2,$2,96
	dlsa	$3,$3,$6,1
	dlsa	$5,$5,$6,1
	dlsa	$4,$4,$6,1
	dlsa	$2,$2,$6,1
	sb	$0,0($3)
	sb	$0,1($3)
	sb	$0,2($3)
	sb	$0,3($3)
	sb	$0,4($3)
	sb	$0,5($3)
	sb	$0,6($3)
	sb	$0,7($3)
	sb	$0,0($5)
	sb	$0,1($5)
	sb	$0,2($5)
	sb	$0,3($5)
	sb	$0,4($5)
	sb	$0,5($5)
	sb	$0,6($5)
	sb	$0,7($5)
	sb	$0,0($4)
	sb	$0,1($4)
	sb	$0,2($4)
	sb	$0,3($4)
	sb	$0,4($4)
	sb	$0,5($4)
	sb	$0,6($4)
	sb	$0,7($4)
	sb	$0,0($2)
	sb	$0,1($2)
	sb	$0,2($2)
	sb	$0,3($2)
	sb	$0,4($2)
	sb	$0,5($2)
	sb	$0,6($2)
	b	.L835
	sb	$0,7($2)

	.align	3
.L841:
	li	$16,37872			# 0x93f0
	li	$17,37920			# 0x9420
	daddu	$16,$16,$sp
	daddu	$17,$17,$sp
	ld	$16,0($16)
	li	$23,37992			# 0x9468
	ld	$17,0($17)
	daddu	$23,$23,$sp
	subu	$16,$0,$16
	sra	$18,$16,31
	addiu	$17,$17,-8
	srl	$17,$17,31
	addiu	$16,$18,1
	lsa	$16,$16,$17,1
	li	$18,37864			# 0x93e8
	li	$17,37928			# 0x9428
	daddu	$18,$18,$sp
	daddu	$17,$17,$sp
	ld	$18,0($18)
	andi	$fp,$16,0x1
	ld	$17,0($17)
	sd	$18,0($23)
	li	$23,217			# 0xd9
	addu	$18,$18,$17
	sll	$17,$16,1
	srl	$17,$23,$17
	li	$23,37824			# 0x93c0
	daddu	$23,$23,$sp
	dext	$18,$18,0,32
	ld	$23,0($23)
	daddiu	$18,$18,78
	andi	$17,$17,0x3
	dlsa	$18,$18,$23,3
	li	$23,37976			# 0x9458
	daddu	$23,$23,$sp
	sd	$18,0($23)
	move	$18,$17
	li	$17,37840			# 0x93d0
	daddu	$17,$17,$sp
	sd	$18,0($17)
	beq	$fp,$0,.L842
	move	$17,$0

	lw	$17,4($5)
.L842:
	li	$18,3			# 0x3
	bne	$16,$18,.L1074
	li	$18,37856			# 0x93e0

	li	$16,37976			# 0x9458
	daddu	$16,$16,$sp
	ld	$16,0($16)
	lw	$16,4($16)
	addu	$17,$16,$17
.L1074:
	dext	$16,$8,0,32
	daddu	$18,$18,$sp
	sd	$16,0($18)
	dlsa	$18,$16,$sp,3
	move	$16,$17
	li	$17,37984			# 0x9460
	daddu	$17,$17,$sp
	sd	$16,0($17)
	li	$16,37944			# 0x9438
	daddu	$16,$16,$sp
	ld	$16,0($16)
	sd	$16,16384($18)
	li	$16,38000			# 0x9470
	daddu	$16,$16,$sp
	ld	$16,0($16)
	beq	$16,$8,.L1055
	sltu	$23,$10,3

	li	$16,37848			# 0x93d8
	dext	$2,$2,0,32
	daddu	$16,$16,$sp
	ld	$16,0($16)
	dlsa	$2,$2,$16,2
	li	$16,37944			# 0x9438
	daddu	$16,$16,$sp
	lw	$17,224($2)
	beq	$23,$0,.L846
	ld	$16,0($16)

	li	$16,37800			# 0x93a8
	daddu	$16,$16,$sp
	ld	$16,0($16)
	gsdmultu	$23,$17,$16
	dsra	$23,$23,8
	daddu	$16,$23,$3
	sd	$23,0($18)
	sd	$16,16384($18)
.L846:
	lw	$2,392($2)
	dlsa	$3,$7,$sp,2
	subu	$17,$2,$17
	sw	$17,24576($3)
.L845:
	li	$3,38072			# 0x94b8
	daddu	$3,$3,$sp
	ld	$3,0($3)
	dlsa	$15,$15,$3,2
	li	$3,38024			# 0x9488
	daddu	$3,$3,$sp
	lw	$17,0($15)
	ld	$3,0($3)
	sll	$17,$17,$3
	li	$3,38064			# 0x94b0
	mul	$18,$17,$10
	daddu	$3,$3,$sp
	ld	$3,0($3)
	addu	$15,$18,$3
	li	$3,1			# 0x1
	beq	$10,$3,.L1056
	nop

	beq	$10,$0,.L851
	li	$3,37840			# 0x93d0

	li	$18,38168			# 0x9518
	daddu	$3,$3,$sp
	daddu	$18,$18,$sp
	ld	$3,0($3)
	subu	$25,$10,$3
	addiu	$3,$10,-1
	sd	$3,0($18)
	addiu	$18,$25,-1
	bltz	$25,.L1057
	move	$23,$18

	li	$3,37936			# 0x9430
	daddu	$3,$3,$sp
	ld	$fp,0($3)
	srl	$25,$25,$fp
	sltu	$3,$25,3
	beq	$3,$0,.L856
	nop

	addiu	$3,$fp,1
	addu	$25,$3,$25
	sll	$25,$25,15
.L857:
	li	$3,37984			# 0x9460
	daddu	$3,$3,$sp
	ld	$3,0($3)
	addu	$25,$3,$25
	li	$3,32768			# 0x8000
	bltz	$23,.L1058
	addu	$25,$3,$25

.L859:
	li	$3,37936			# 0x9430
	daddu	$3,$3,$sp
	ld	$23,0($3)
	srl	$18,$18,$23
	sltu	$3,$18,3
	beq	$3,$0,.L862
	nop

	addiu	$3,$23,1
	addu	$18,$3,$18
	sll	$18,$18,15
.L863:
	li	$3,37984			# 0x9460
	daddu	$3,$3,$sp
	ld	$3,0($3)
	addu	$18,$3,$18
.L930:
	li	$23,32768			# 0x8000
	li	$fp,38104			# 0x94d8
	addu	$23,$2,$23
	daddu	$fp,$fp,$sp
	ld	$fp,0($fp)
	addu	$18,$23,$18
	li	$23,37800			# 0x93a8
	sra	$3,$12,31
	daddu	$23,$23,$sp
	subu	$17,$15,$17
	ld	$23,0($23)
	xor	$12,$3,$12
	subu	$12,$12,$3
	srl	$17,$17,$fp
	srl	$15,$15,$fp
	addu	$25,$2,$25
	subu	$fp,$12,$15
	dext	$25,$25,0,32
	subu	$12,$12,$17
	dext	$18,$18,0,32
	gsdmultu	$25,$25,$23
	gsdmultu	$fp,$fp,$fp
	gsdmultu	$18,$18,$23
	gsdmultu	$12,$12,$12
	dsra	$25,$25,8
	dsll	$fp,$fp,11
	dsra	$18,$18,8
	daddu	$25,$25,$fp
	dsll	$12,$12,11
	beq	$9,$0,.L865
	daddu	$18,$18,$12

	xor	$11,$3,$11
	srl	$3,$6,31
	addu	$3,$11,$3
	addu	$17,$3,$17
	addu	$15,$3,$15
	sra	$3,$17,31
	sra	$6,$15,31
	xor	$17,$3,$17
	xor	$15,$6,$15
	subu	$17,$17,$3
	li	$3,37880			# 0x93f8
	daddu	$3,$3,$sp
	subu	$15,$15,$6
	ld	$3,0($3)
	gsdmultu	$15,$15,$3
	gsdmultu	$17,$17,$3
	dsra	$15,$15,5
	dsra	$17,$17,5
	dsubu	$25,$25,$15
	dsubu	$18,$18,$17
.L865:
	slt	$3,$25,$16
	beq	$3,$0,.L952
	li	$9,37800			# 0x93a8

	dext	$3,$2,0,32
	daddu	$9,$9,$sp
	li	$6,37856			# 0x93e0
	ld	$9,0($9)
	daddu	$6,$6,$sp
	move	$16,$25
	ld	$6,0($6)
	gsdmultu	$3,$3,$9
	dlsa	$6,$6,$sp,3
	sd	$25,16384($6)
	dsra	$3,$3,8
	sd	$3,0($6)
.L866:
	slt	$3,$18,$16
	beq	$3,$0,.L867
	seh	$9,$10

	li	$3,37800			# 0x93a8
	dext	$2,$2,0,32
	daddu	$3,$3,$sp
	ld	$3,0($3)
	gsdmultu	$2,$2,$3
	li	$3,38168			# 0x9518
	daddu	$3,$3,$sp
	ld	$6,0($3)
	li	$3,37856			# 0x93e0
	daddu	$3,$3,$sp
	ld	$3,0($3)
	subu	$25,$0,$6
	dsra	$2,$2,8
	seh	$9,$6
	slt	$25,$25,0
	dlsa	$3,$3,$sp,3
	move	$10,$6
	sd	$18,16384($3)
	sd	$2,0($3)
.L852:
	li	$3,37920			# 0x9420
	sh	$9,0($4)
	li	$4,37920			# 0x9420
	daddu	$3,$3,$sp
	daddu	$4,$4,$sp
	ld	$3,0($3)
	addu	$3,$3,$25
	sd	$3,0($4)
	li	$3,38096			# 0x94d0
	daddu	$3,$3,$sp
	ld	$3,0($3)
	ld	$3,56($3)
	ld	$3,8($3)
	lbu	$3,27($3)
	beq	$3,$0,.L869
	daddu	$22,$22,$18

.L931:
	li	$3,37840			# 0x93d0
	daddu	$3,$3,$sp
	ld	$3,0($3)
	subu	$3,$10,$3
	addiu	$12,$3,-1
	slt	$4,$12,-2
	beq	$4,$0,.L870
	move	$15,$12

	li	$3,37976			# 0x9458
	lw	$4,4($5)
	move	$6,$0
	daddu	$3,$3,$sp
	lw	$11,0($5)
	ld	$3,0($3)
	lw	$17,0($3)
	addu	$4,$4,$17
.L871:
	li	$5,37832			# 0x93c8
	dsll	$3,$7,2
	daddu	$5,$5,$sp
	subu	$4,$4,$11
	ld	$5,0($5)
	subu	$6,$6,$11
	daddu	$5,$5,$3
	daddu	$3,$sp,$3
	sw	$4,-32768($5)
	sw	$6,28672($3)
.L883:
	li	$3,37840			# 0x93d0
	daddu	$3,$3,$sp
	ld	$3,0($3)
	sltu	$17,$10,$3
	bne	$17,$0,.L884
	li	$3,37936			# 0x9430

	daddu	$3,$3,$sp
	ld	$4,0($3)
	sltu	$3,$4,4
	beq	$3,$0,.L884
	li	$3,38144			# 0x9500

	daddu	$3,$3,$sp
	ld	$5,0($3)
	sltu	$3,$5,$10
	beq	$3,$0,.L884
	addiu	$3,$4,1

	li	$4,37936			# 0x9430
	daddu	$4,$4,$sp
	sd	$3,0($4)
	li	$4,38144			# 0x9500
	sll	$3,$5,1
	daddu	$4,$4,$sp
	sd	$3,0($4)
	.align	3
.L884:
	sltu	$10,$10,2
	bne	$10,$0,.L885
	li	$4,37872			# 0x93f0

	li	$5,37872			# 0x93f0
	daddu	$4,$4,$sp
	daddu	$5,$5,$sp
	ld	$4,0($4)
	li	$3,37864			# 0x93e8
	daddu	$3,$3,$sp
	ld	$3,0($3)
	addiu	$4,$4,1
	sd	$4,0($5)
	li	$4,37760			# 0x9380
	daddu	$4,$4,$sp
	addiu	$3,$3,-2
	sd	$0,0($4)
	li	$4,37992			# 0x9468
	srl	$3,$3,31
	daddu	$4,$4,$sp
	ld	$4,0($4)
	addu	$3,$3,$4
	li	$4,37864			# 0x93e8
	daddu	$4,$4,$sp
	sd	$3,0($4)
.L886:
	beq	$9,$0,.L840
	daddu	$3,$19,$2

	li	$5,37888			# 0x9400
	li	$6,38080			# 0x94c0
	daddu	$5,$5,$sp
	daddu	$6,$6,$sp
	ld	$6,0($6)
	li	$4,37856			# 0x93e0
	dlsa	$7,$7,$sp,3
	ld	$5,0($5)
	daddu	$4,$4,$sp
	ld	$4,0($4)
	or	$5,$5,$6
	li	$6,37888			# 0x9400
	daddu	$6,$6,$sp
	dlsa	$4,$4,$sp,3
	sd	$5,0($6)
	li	$5,38048			# 0x94a0
	li	$6,38048			# 0x94a0
	daddu	$5,$5,$sp
	daddu	$6,$6,$sp
	ld	$4,16384($4)
	ld	$5,0($5)
	dsubu	$4,$4,$2
	addu	$5,$5,$14
	sd	$5,0($6)
	li	$6,1			# 0x1
	ld	$5,8192($7)
	li	$7,38088			# 0x94c8
	daddu	$7,$7,$sp
	sd	$6,0($7)
	li	$6,38032			# 0x9490
	daddu	$6,$6,$sp
	ld	$6,0($6)
	daddu	$4,$6,$4
	li	$6,38032			# 0x9490
	daddu	$6,$6,$sp
	sd	$4,0($6)
	li	$4,38040			# 0x9498
	daddu	$4,$4,$sp
	ld	$4,0($4)
	daddu	$4,$4,$5
	li	$5,38040			# 0x9498
	daddu	$5,$5,$sp
	b	.L840
	sd	$4,0($5)

	.align	3
.L851:
	li	$2,37856			# 0x93e0
	daddu	$22,$22,$16
	sh	$0,0($4)
	daddu	$2,$2,$sp
	move	$25,$0
	ld	$2,0($2)
	move	$9,$0
	move	$10,$0
	dlsa	$2,$2,$sp,3
	ld	$2,0($2)
.L869:
	li	$4,37832			# 0x93c8
	lw	$5,0($5)
	dsll	$3,$7,2
	daddu	$4,$4,$sp
	ld	$4,0($4)
	daddu	$4,$4,$3
	daddu	$3,$sp,$3
	sw	$0,28672($3)
	b	.L883
	sw	$5,-32768($4)

	.align	3
.L885:
	li	$3,37760			# 0x9380
	daddu	$3,$3,$sp
	ld	$4,0($3)
	addiu	$3,$4,-1
	addiu	$5,$4,1
	sltu	$3,$3,2
	and	$25,$3,$25
	li	$3,37760			# 0x9380
	movn	$4,$5,$25
	daddu	$3,$3,$sp
	b	.L886
	sd	$4,0($3)

	.align	3
.L1056:
	beq	$fp,$0,.L848
	li	$3,37936			# 0x9430

	lw	$3,0($5)
	li	$17,32768			# 0x8000
	addu	$3,$3,$17
.L849:
	li	$18,38104			# 0x94d8
	sra	$17,$12,31
	daddu	$18,$18,$sp
	xor	$12,$17,$12
	ld	$18,0($18)
	addu	$3,$2,$3
	subu	$12,$12,$17
	dext	$3,$3,0,32
	srl	$15,$15,$18
	li	$18,37800			# 0x93a8
	daddu	$18,$18,$sp
	subu	$12,$12,$15
	ld	$18,0($18)
	gsdmultu	$12,$12,$12
	gsdmultu	$3,$3,$18
	dsll	$12,$12,11
	dsra	$3,$3,8
	beq	$9,$0,.L850
	daddu	$18,$3,$12

	srl	$6,$6,31
	xor	$11,$17,$11
	addu	$11,$11,$6
	li	$6,37880			# 0x93f8
	addu	$15,$11,$15
	daddu	$6,$6,$sp
	sra	$3,$15,31
	ld	$6,0($6)
	xor	$15,$3,$15
	subu	$3,$15,$3
	gsdmultu	$3,$3,$6
	dsra	$3,$3,5
	dsubu	$18,$18,$3
.L850:
	slt	$3,$18,$16
	beq	$3,$0,.L851
	li	$3,37800			# 0x93a8

	dext	$2,$2,0,32
	daddu	$3,$3,$sp
	li	$9,1			# 0x1
	ld	$3,0($3)
	gsdmultu	$2,$2,$3
	li	$3,37856			# 0x93e0
	daddu	$3,$3,$sp
	ld	$3,0($3)
	dsra	$2,$2,8
	dlsa	$3,$3,$sp,3
	sd	$18,16384($3)
	b	.L852
	sd	$2,0($3)

	.align	3
.L1055:
	li	$2,37944			# 0x9438
	daddu	$2,$2,$sp
	ld	$16,0($2)
	dlsa	$2,$7,$sp,2
	sw	$0,24576($2)
	b	.L845
	move	$2,$0

	.align	3
.L870:
	li	$4,37936			# 0x9430
	li	$16,38200			# 0x9538
	daddu	$4,$4,$sp
	daddu	$16,$16,$sp
	ld	$11,0($4)
	addiu	$4,$12,1
	ld	$16,0($16)
	dext	$6,$11,0,32
	daddu	$6,$16,$6
	addiu	$16,$12,2
	bltz	$12,.L872
	lbu	$6,0($6)

	addiu	$3,$3,1
	slt	$3,$6,$3
	bne	$3,$0,.L1075
	li	$3,-1			# 0xffffffffffffffff

	addiu	$3,$11,1
	srl	$4,$4,$11
	addu	$4,$4,$3
	move	$6,$11
	addiu	$4,$4,-8
	sra	$5,$4,31
	and	$11,$5,$4
	li	$4,-1			# 0xffffffffffffffff
	addiu	$11,$11,8
	beq	$10,$4,.L954
	sll	$11,$11,15

	srl	$4,$16,$6
	move	$6,$0
	addu	$4,$4,$3
	addiu	$4,$4,-8
	sra	$5,$4,31
	and	$4,$5,$4
	li	$5,1			# 0x1
	addiu	$4,$4,8
	beq	$10,$5,.L871
	sll	$4,$4,15

	li	$5,37936			# 0x9430
	daddu	$5,$5,$sp
	ld	$5,0($5)
	srl	$12,$12,$5
	addu	$3,$12,$3
	addiu	$3,$3,-8
	sra	$5,$3,31
	and	$6,$5,$3
	addiu	$6,$6,8
	b	.L871
	sll	$6,$6,15

	.align	3
.L1046:
	daddu	$4,$4,$sp
	b	.L1043
	ld	$4,0($4)

	.align	3
.L872:
	li	$3,-1			# 0xffffffffffffffff
	.align	3
.L1075:
	beq	$4,$3,.L1059
	move	$23,$6

	li	$3,37984			# 0x9460
	daddu	$3,$3,$sp
	ld	$11,0($3)
	sltu	$3,$23,$4
	bne	$3,$0,.L1060
	move	$6,$11

.L876:
	li	$3,37936			# 0x9430
	daddu	$3,$3,$sp
	ld	$11,0($3)
	srl	$3,$4,$11
	addu	$3,$3,$11
	addiu	$3,$3,-7
	sra	$4,$3,31
	and	$11,$4,$3
	addiu	$11,$11,8
	sll	$11,$11,15
	addu	$11,$11,$6
.L877:
	li	$3,-1			# 0xffffffffffffffff
	bne	$10,$3,.L934
	nop

	bltz	$15,.L881
	move	$4,$0

	li	$3,37936			# 0x9430
	daddu	$3,$3,$sp
	ld	$3,0($3)
	addiu	$3,$3,1
.L879:
	sltu	$5,$23,$12
	beq	$5,$0,.L1076
	li	$5,37936			# 0x9430

	subu	$5,$12,$23
	li	$6,37984			# 0x9460
	clz	$5,$5
	daddu	$6,$6,$sp
	xori	$5,$5,0x1f
	ld	$6,0($6)
	addiu	$12,$23,1
	sll	$5,$5,1
	addiu	$5,$5,1
	sll	$5,$5,15
	addu	$5,$5,$6
	li	$6,37984			# 0x9460
	daddu	$6,$6,$sp
	sd	$5,0($6)
	li	$5,37936			# 0x9430
.L1076:
	daddu	$5,$5,$sp
	ld	$5,0($5)
	srl	$12,$12,$5
	addu	$12,$3,$12
	addiu	$5,$12,-8
	sra	$3,$5,31
	and	$6,$3,$5
	li	$3,37984			# 0x9460
	daddu	$3,$3,$sp
	addiu	$6,$6,8
	ld	$3,0($3)
	sll	$6,$6,15
	b	.L871
	addu	$6,$6,$3

	.align	3
.L848:
	li	$17,32768			# 0x8000
	daddu	$3,$3,$sp
	ld	$3,0($3)
	addiu	$3,$3,1
	sll	$3,$3,15
	b	.L849
	addu	$3,$3,$17

	.align	3
.L867:
	li	$2,38096			# 0x94d0
	daddu	$2,$2,$sp
	sh	$9,0($4)
	daddu	$22,$22,$16
	ld	$2,0($2)
	ld	$3,56($2)
	li	$2,37856			# 0x93e0
	daddu	$2,$2,$sp
	ld	$2,0($2)
	ld	$3,8($3)
	dlsa	$2,$2,$sp,3
	lbu	$3,27($3)
	bne	$3,$0,.L1061
	ld	$2,0($2)

	li	$3,37920			# 0x9420
	subu	$25,$0,$10
	daddu	$3,$3,$sp
	slt	$25,$25,0
	ld	$3,0($3)
	li	$4,37920			# 0x9420
	daddu	$4,$4,$sp
	addu	$3,$3,$25
	b	.L869
	sd	$3,0($4)

	.align	3
.L952:
	b	.L866
	move	$10,$0

	.align	3
.L890:
	li	$4,37968			# 0x9450
	daddu	$2,$22,$7
	daddu	$4,$4,$sp
	dsubu	$22,$2,$3
	ld	$4,0($4)
	b	.L835
	sd	$7,0($4)

	.align	3
.L1057:
	li	$3,2			# 0x2
	beq	$10,$3,.L1062
	li	$3,32768			# 0x8000

	lw	$25,0($5)
	bgez	$23,.L859
	addu	$25,$3,$25

.L1058:
	addiu	$3,$10,-1
	li	$18,2			# 0x2
	beq	$3,$18,.L1063
	nop

	b	.L930
	lw	$18,0($5)

	.align	3
.L946:
	li	$2,38208			# 0x9540
	li	$8,4			# 0x4
	daddu	$2,$2,$sp
	li	$13,20			# 0x14
	ld	$2,0($2)
	dlsa	$11,$11,$2,4
	li	$2,37848			# 0x93d8
	daddu	$2,$2,$sp
	ld	$9,0($2)
	li	$2,37800			# 0x93a8
	daddu	$2,$2,$sp
	ld	$24,0($2)
	li	$2,37952			# 0x9440
	daddu	$2,$2,$sp
	ld	$16,0($2)
.L830:
	addiu	$6,$8,-4
.L834:
	dext	$2,$6,0,32
	addu	$4,$12,$6
	dlsa	$2,$2,$10,1
	dext	$4,$4,0,32
	lhu	$3,0($2)
	dlsa	$2,$4,$18,1
	addu	$5,$16,$6
	lh	$2,0($2)
	dext	$5,$5,0,32
	dlsa	$7,$4,$sp,3
	dlsa	$5,$5,$sp,3
	dlsa	$4,$4,$sp,2
	daddu	$3,$11,$3
	addiu	$6,$6,1
	lbu	$3,0($3)
	mult	$2,$2
	addu	$3,$3,$15
	dext	$3,$3,0,32
	dlsa	$3,$3,$9,2
	lw	$19,224($3)
	mfhi	$17
	mflo	$2
	dins	$2,$17,32,32
	lw	$17,392($3)
	gsdmultu	$3,$19,$24
	dsll	$2,$2,11
	daddu	$21,$21,$2
	daddu	$22,$22,$2
	sd	$2,8192($7)
	sd	$2,16384($5)
	subu	$2,$17,$19
	sw	$2,24576($4)
	dsra	$2,$3,8
	bne	$8,$6,.L834
	sd	$2,0($5)

	addiu	$8,$8,4
	bne	$8,$13,.L830
	addiu	$12,$12,28

	b	.L1067
	li	$3,37760			# 0x9380

	.align	3
.L856:
	li	$fp,3			# 0x3
	beq	$25,$fp,.L858
	li	$3,4			# 0x4

	addiu	$3,$25,-2
	clz	$3,$3
	xori	$3,$3,0x1f
	sll	$3,$3,1
	addiu	$3,$3,4
.L858:
	li	$25,37936			# 0x9430
	daddu	$25,$25,$sp
	ld	$25,0($25)
	addu	$25,$25,$3
	b	.L857
	sll	$25,$25,15

	.align	3
.L862:
	li	$23,3			# 0x3
	beq	$18,$23,.L864
	li	$3,4			# 0x4

	addiu	$3,$18,-2
	clz	$3,$3
	xori	$3,$3,0x1f
	sll	$3,$3,1
	addiu	$3,$3,4
.L864:
	li	$18,37936			# 0x9430
	daddu	$18,$18,$sp
	ld	$18,0($18)
	addu	$18,$18,$3
	b	.L863
	sll	$18,$18,15

	.align	3
.L1063:
	li	$18,37976			# 0x9458
	lw	$3,4($5)
	daddu	$18,$18,$sp
	ld	$18,0($18)
	lw	$18,0($18)
	b	.L930
	addu	$18,$18,$3

	.align	3
.L1059:
	li	$3,2			# 0x2
	bne	$10,$3,.L1035
	li	$3,37976			# 0x9458

	daddu	$3,$3,$sp
	ld	$3,0($3)
	lw	$11,0($3)
	lw	$3,4($5)
	addu	$11,$11,$3
	.align	3
.L934:
	li	$4,37984			# 0x9460
	move	$3,$16
	daddu	$4,$4,$sp
	ld	$6,0($4)
	sltu	$4,$23,$16
	beq	$4,$0,.L878
	move	$17,$6

	subu	$17,$16,$23
	addiu	$3,$23,1
	clz	$17,$17
	xori	$17,$17,0x1f
	sll	$17,$17,1
	addiu	$17,$17,1
	sll	$17,$17,15
	addu	$17,$17,$6
.L878:
	li	$4,37936			# 0x9430
	addiu	$18,$10,-1
	daddu	$4,$4,$sp
	move	$6,$0
	ld	$4,0($4)
	srl	$16,$3,$4
	addiu	$3,$4,1
	addu	$16,$16,$3
	addiu	$16,$16,-8
	sra	$4,$16,31
	and	$4,$4,$16
	addiu	$4,$4,8
	sll	$4,$4,15
	beq	$18,$0,.L871
	addu	$4,$4,$17

	bgez	$15,.L879
	nop

	li	$3,2			# 0x2
	bne	$18,$3,.L881
	li	$3,37976			# 0x9458

	daddu	$3,$3,$sp
	ld	$3,0($3)
	lw	$6,0($3)
	lw	$3,4($5)
	b	.L871
	addu	$6,$6,$3

	.align	3
.L1062:
	li	$3,37976			# 0x9458
	lw	$25,4($5)
	li	$fp,32768			# 0x8000
	daddu	$3,$3,$sp
	ld	$3,0($3)
	addu	$25,$25,$fp
	lw	$3,0($3)
	bgez	$18,.L859
	addu	$25,$25,$3

	b	.L930
	lw	$18,0($5)

.L1060:
	subu	$6,$4,$23
	addiu	$4,$23,1
	clz	$6,$6
	xori	$6,$6,0x1f
	sll	$6,$6,1
	addiu	$6,$6,1
	sll	$6,$6,15
	b	.L876
	addu	$6,$6,$11

.L1047:
	bne	$3,$0,.L1077
	li	$2,38232			# 0x9558

	li	$2,37848			# 0x93d8
	daddu	$2,$2,$sp
	ld	$2,0($2)
	lw	$24,936($2)
	b	.L1045
	lw	$8,940($2)

.L1035:
	b	.L877
	lw	$11,0($5)

.L1051:
	li	$4,38016			# 0x9480
	dlsa	$3,$3,$5,1
	daddu	$4,$4,$sp
	lhu	$12,0($3)
	ld	$4,0($4)
	dext	$3,$12,0,32
	ld	$15,120($4)
	dlsa	$4,$3,$fp,1
	lh	$8,0($4)
	sra	$4,$8,31
	xor	$7,$4,$8
	subu	$7,$7,$4
	xori	$7,$7,0x1
	sltu	$7,$7,1
	and	$7,$7,$18
	bne	$18,$0,.L914
	sll	$7,$7,17

	addiu	$3,$22,15
	li	$9,15			# 0xf
	dlsa	$3,$3,$5,1
	lhu	$12,0($3)
	dext	$3,$12,0,32
	dlsa	$4,$3,$fp,1
	lh	$8,0($4)
	sra	$4,$8,31
	daddu	$10,$9,$16
.L1078:
	li	$6,37776			# 0x9390
	dlsa	$5,$10,$5,1
	daddu	$6,$6,$sp
	daddiu	$11,$5,-2
	li	$5,37784			# 0x9398
	sd	$0,0($6)
	daddu	$5,$5,$sp
	li	$6,37760			# 0x9380
	ld	$24,0($5)
	li	$5,37792			# 0x93a0
	daddu	$6,$6,$sp
	daddu	$5,$5,$sp
	sd	$0,0($6)
	li	$25,-1			# 0xffffffffffffffff
	sd	$20,0($5)
	li	$5,38064			# 0x94b0
	move	$13,$12
	daddu	$5,$5,$sp
	ld	$16,0($5)
	li	$5,37800			# 0x93a8
	daddu	$5,$5,$sp
	ld	$18,0($5)
	li	$5,37808			# 0x93b0
	daddu	$5,$5,$sp
	sd	$22,0($5)
	li	$5,38024			# 0x9488
	daddu	$5,$5,$sp
	ld	$22,0($5)
	li	$5,37816			# 0x93b8
	daddu	$5,$5,$sp
	sd	$23,0($5)
	li	$5,38072			# 0x94b8
	daddu	$5,$5,$sp
	ld	$23,0($5)
	b	.L924
	move	$5,$3

	.align	3
.L1065:
	dext	$8,$13,0,32
	addu	$5,$3,$12
	dsll	$8,$8,2
	srl	$5,$5,$19
	daddu	$20,$17,$8
	subu	$3,$12,$3
	lw	$20,-32768($20)
	subu	$5,$10,$5
	srl	$3,$3,$19
	subu	$3,$10,$3
	gsdmultu	$5,$5,$5
	gsdmultu	$3,$3,$3
	daddu	$8,$sp,$8
	gsdmultu	$20,$20,$18
	lw	$10,28672($8)
	dext	$7,$7,0,32
	dsubu	$5,$5,$4
	dsubu	$3,$3,$4
	dsll	$5,$5,11
	dsra	$20,$20,8
	li	$4,1			# 0x1
	dsll	$3,$3,11
	beq	$6,$4,.L1064
	daddu	$20,$5,$20

	gsdmultu	$4,$10,$18
	dsra	$4,$4,8
	daddu	$3,$4,$3
	dsubu	$7,$3,$7
.L936:
	slt	$3,$20,$7
	li	$8,1			# 0x1
	movz	$8,$21,$3
	movz	$20,$7,$3
.L920:
	slt	$3,$20,$24
.L1080:
	beq	$3,$0,.L921
	li	$4,37776			# 0x9390

	seb	$3,$8
	daddu	$4,$4,$sp
	sll	$6,$6,16
	sd	$3,0($4)
	li	$4,37760			# 0x9380
	addu	$3,$6,$13
	daddu	$4,$4,$sp
	move	$24,$20
	sd	$3,0($4)
.L921:
	addiu	$9,$9,-1
	beq	$9,$25,.L923
	move	$7,$0

	lhu	$13,0($11)
	daddiu	$11,$11,-2
	dext	$5,$13,0,32
	dlsa	$3,$5,$fp,1
	lh	$8,0($3)
	sra	$4,$8,31
.L924:
	dlsa	$3,$5,$23,2
	xor	$6,$4,$8
	lw	$3,0($3)
	subu	$6,$6,$4
	dlsa	$5,$5,$15,1
	lh	$5,0($5)
	sll	$3,$3,$22
	mul	$4,$3,$6
	addu	$12,$4,$16
	sra	$4,$5,31
	xor	$10,$4,$5
	subu	$10,$10,$4
	srl	$4,$12,$19
	subu	$4,$10,$4
	bne	$8,$0,.L1065
	gsdmultu	$4,$4,$4

	xor	$5,$14,$5
	bgez	$5,.L970
	nop

	slt	$5,$9,$2
	bne	$5,$0,.L921
	nop

.L970:
	dext	$7,$13,0,32
	addu	$3,$16,$3
	dsll	$7,$7,2
	srl	$3,$3,$19
	daddu	$5,$17,$7
	daddu	$7,$sp,$7
	lw	$5,-32768($5)
	subu	$3,$10,$3
	li	$10,32768			# 0x8000
	lw	$7,24576($7)
	gsdmultu	$3,$3,$3
	li	$8,1			# 0x1
	addu	$5,$5,$10
	addu	$5,$5,$7
	gsdmultu	$5,$5,$18
	dsubu	$3,$3,$4
	dsll	$3,$3,11
	dsra	$5,$5,8
	b	.L920
	daddu	$20,$5,$3

.L954:
	li	$5,37936			# 0x9430
	move	$4,$0
	daddu	$5,$5,$sp
	ld	$5,0($5)
	srl	$12,$12,$5
	addu	$3,$12,$3
	addiu	$3,$3,-8
	sra	$5,$3,31
	and	$6,$5,$3
	addiu	$6,$6,8
	b	.L871
	sll	$6,$6,15

.L881:
	b	.L871
	lw	$6,0($5)

.L1064:
	lw	$4,24576($8)
	li	$5,32768			# 0x8000
	addu	$4,$4,$5
	subu	$4,$10,$4
	gsdmultu	$4,$4,$18
	dsra	$4,$4,8
	daddu	$3,$4,$3
	bne	$2,$9,.L936
	dsubu	$7,$3,$7

	slt	$7,$20,$7
	beq	$7,$0,.L921
	li	$8,1			# 0x1

	b	.L1080
	slt	$3,$20,$24

.L923:
	li	$2,37792			# 0x93a0
	daddu	$2,$2,$sp
	ld	$20,0($2)
	li	$2,37808			# 0x93b0
	daddu	$2,$2,$sp
	ld	$22,0($2)
	li	$2,37816			# 0x93b8
	daddu	$2,$2,$sp
	ld	$23,0($2)
	li	$2,37760			# 0x9380
	daddu	$2,$2,$sp
	ld	$2,0($2)
	dext	$4,$2,16,16
	andi	$2,$2,0xffff
	dsll	$2,$2,1
	xori	$6,$4,0x1
	move	$3,$4
	sltu	$5,$4,32767
	daddu	$15,$15,$2
	sltu	$4,$3,1
	sltu	$6,$6,1
	bne	$5,$0,.L925
	daddu	$2,$fp,$2

	subu	$4,$4,$6
	li	$5,-1			# 0xffffffffffffffff
.L916:
	li	$6,37768			# 0x9388
	lh	$3,0($15)
	move	$18,$0
	daddu	$6,$6,$sp
	ld	$6,0($6)
	sra	$3,$3,31
	addu	$4,$6,$4
	li	$6,37768			# 0x9388
	daddu	$6,$6,$sp
	sd	$4,0($6)
	lhu	$4,0($2)
	subu	$4,$4,$3
	xor	$3,$3,$5
	addu	$3,$4,$3
	b	.L913
	sh	$3,0($2)

.L942:
	b	.L817
	move	$21,$0

.L943:
	li	$2,37888			# 0x9400
	move	$20,$21
	daddu	$2,$2,$sp
	b	.L824
	sd	$0,0($2)

.L944:
	li	$2,37928			# 0x9428
	daddu	$2,$2,$sp
	b	.L825
	sd	$0,0($2)

.L914:
	bgez	$9,.L1078
	daddu	$10,$9,$16

	move	$2,$fp
	move	$5,$0
	b	.L916
	li	$4,1			# 0x1

.L1048:
	li	$2,38000			# 0x9470
	li	$8,16			# 0x10
	daddu	$2,$2,$sp
	move	$17,$0
	ld	$10,0($2)
	b	.L894
	move	$16,$0

.L1049:
	b	.L894
	move	$16,$0

.L925:
	li	$3,37776			# 0x9390
	daddu	$3,$3,$sp
	ld	$5,0($3)
	addiu	$3,$5,1
	seh	$5,$5
	sltu	$3,$3,1
	and	$6,$3,$6
	b	.L916
	subu	$4,$4,$6

.L1061:
	beq	$10,$0,.L953
	li	$3,37920			# 0x9420

	subu	$25,$0,$10
	daddu	$3,$3,$sp
	slt	$25,$25,0
	ld	$3,0($3)
	li	$4,37920			# 0x9420
	daddu	$4,$4,$sp
	addu	$3,$3,$25
	b	.L931
	sd	$3,0($4)

.L1054:
	li	$5,38032			# 0x9490
	daddu	$4,$4,$sp
	daddu	$5,$5,$sp
	ld	$4,0($4)
	ld	$5,0($5)
	sd	$5,-27832($4)
	li	$5,38040			# 0x9498
	daddu	$5,$5,$sp
	ld	$5,0($5)
	sd	$5,-27824($4)
	li	$5,38048			# 0x94a0
	daddu	$5,$5,$sp
	ld	$5,0($5)
	b	.L888
	sw	$5,-27840($4)

.L953:
	move	$25,$0
	b	.L869
	move	$9,$0

	.set	macro
	.set	reorder
	.end	_ZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.size	_ZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjb, .-_ZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.text
	.align	2
	.align	3
	.globl	_ZN4x2655QuantC2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655QuantC2Ev
	.type	_ZN4x2655QuantC2Ev, @function
_ZN4x2655QuantC2Ev:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,2147418112			# 0x7fff0000
	sd	$0,120($4)
	ori	$2,$2,0xffff
	sd	$0,128($4)
	sw	$2,24($4)
	sw	$2,56($4)
	sw	$2,88($4)
	sd	$0,136($4)
	sd	$0,152($4)
	jr	$31
	sd	$0,144($4)

	.set	macro
	.set	reorder
	.end	_ZN4x2655QuantC2Ev
	.size	_ZN4x2655QuantC2Ev, .-_ZN4x2655QuantC2Ev
	.globl	_ZN4x2655QuantC1Ev
	_ZN4x2655QuantC1Ev = _ZN4x2655QuantC2Ev
	.align	2
	.align	3
	.globl	_ZN4x2655Quant4initEdRKNS_11ScalingListERNS_7EntropyE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Quant4initEdRKNS_11ScalingListERNS_7EntropyE
	.type	_ZN4x2655Quant4initEdRKNS_11ScalingListERNS_7EntropyE, @function
_ZN4x2655Quant4initEdRKNS_11ScalingListERNS_7EntropyE:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655Quant4initEdRKNS_11ScalingListERNS_7EntropyE)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655Quant4initEdRKNS_11ScalingListERNS_7EntropyE)))
	li	$4,4096			# 0x1000
	sd	$31,24($sp)
	ld	$2,%got_page(.LC0)($28)
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	sd	$7,8($16)
	ldc1	$f0,%got_ofst(.LC0)($2)
	sd	$6,0($16)
	mul.d	$f13,$f13,$f0
	trunc.w.d $f0,$f13
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	swc1	$f0,116($16)

	li	$4,2048			# 0x800
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	daddiu	$3,$2,2048
	sd	$3,128($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	sd	$2,120($16)

	ld	$3,120($16)
	beq	$3,$0,.L1085
	sd	$2,136($16)

	ld	$31,24($sp)
	sltu	$2,$0,$2
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L1085:
	ld	$31,24($sp)
	move	$2,$0
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2655Quant4initEdRKNS_11ScalingListERNS_7EntropyE
	.size	_ZN4x2655Quant4initEdRKNS_11ScalingListERNS_7EntropyE, .-_ZN4x2655Quant4initEdRKNS_11ScalingListERNS_7EntropyE
	.align	2
	.align	3
	.globl	_ZN4x2655Quant19allocNoiseReductionERK10x265_param
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Quant19allocNoiseReductionERK10x265_param
	.type	_ZN4x2655Quant19allocNoiseReductionERK10x265_param, @function
_ZN4x2655Quant19allocNoiseReductionERK10x265_param:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$17,8($sp)
	move	$17,$4
	lw	$4,4($5)
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655Quant19allocNoiseReductionERK10x265_param)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	move	$16,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655Quant19allocNoiseReductionERK10x265_param)))
	dlsa	$4,$4,$4,1
	sd	$31,24($sp)
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	dsll	$2,$4,10
	daddu	$4,$4,$2
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	dsll	$4,$4,5

	move	$3,$0
	beq	$2,$0,.L1088
	sd	$2,152($17)

	lw	$6,4($16)
	move	$4,$2
	move	$5,$0
	ld	$25,%call16(memset)($28)
	dlsa	$6,$6,$6,1
	dsll	$2,$6,10
	daddu	$6,$6,$2
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dsll	$6,$6,5

	li	$3,1			# 0x1
.L1088:
	ld	$31,24($sp)
	move	$2,$3
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2655Quant19allocNoiseReductionERK10x265_param
	.size	_ZN4x2655Quant19allocNoiseReductionERK10x265_param, .-_ZN4x2655Quant19allocNoiseReductionERK10x265_param
	.align	2
	.align	3
	.globl	_ZN4x2655QuantD2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655QuantD2Ev
	.type	_ZN4x2655QuantD2Ev, @function
_ZN4x2655QuantD2Ev:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655QuantD2Ev)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655QuantD2Ev)))
	ld	$4,152($4)
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	sd	$31,24($sp)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	nop

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,120($16)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,136($16)

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2655QuantD2Ev
	.size	_ZN4x2655QuantD2Ev, .-_ZN4x2655QuantD2Ev
	.globl	_ZN4x2655QuantD1Ev
	_ZN4x2655QuantD1Ev = _ZN4x2655QuantD2Ev
	.align	2
	.align	3
	.globl	_ZN4x2655Quant11setChromaQPEiNS_8TextTypeEi
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Quant11setChromaQPEiNS_8TextTypeEi
	.type	_ZN4x2655Quant11setChromaQPEiNS_8TextTypeEi, @function
_ZN4x2655Quant11setChromaQPEiNS_8TextTypeEi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$10,%hi(%neg(%gp_rel(_ZN4x2655Quant11setChromaQPEiNS_8TextTypeEi)))
	daddu	$10,$10,$25
	bltz	$5,.L1100
	daddiu	$10,$10,%lo(%neg(%gp_rel(_ZN4x2655Quant11setChromaQPEiNS_8TextTypeEi)))

	slt	$2,$5,57
	bne	$2,$0,.L1104
	slt	$2,$5,30

	li	$2,1			# 0x1
	beq	$7,$2,.L1105
	li	$5,57			# 0x39

	slt	$2,$5,52
.L1106:
	li	$3,51			# 0x33
	movz	$5,$3,$2
.L1096:
	dsll	$6,$6,5
	daddu	$4,$4,$6
	lw	$2,24($4)
	beq	$2,$5,.L1107
	dext	$8,$5,0,32

	ld	$6,%got_page(.LC0)($10)
	dsll	$9,$5,3
	dlsa	$3,$8,$8,2
	ld	$7,%got_disp(_ZN4x26516x265_lambda2_tabE)($10)
	dlsa	$3,$3,$3,4
	dsll	$2,$3,8
	ldc1	$f3,%got_ofst(.LC0)($6)
	ld	$6,%got_disp(_ZN4x26515x265_lambda_tabE)($10)
	daddu	$3,$3,$2
	ld	$2,%got_page(.LC1)($10)
	ldxc1	$f1,$7($9)
	sw	$5,24($4)
	ldxc1	$f0,$6($9)
	ldc1	$f2,%got_ofst(.LC1)($2)
	dsll	$2,$3,16
	daddu	$2,$3,$2
	dlsa	$2,$2,$8,1
	madd.d	$f1,$f2,$f1,$f3
	madd.d	$f0,$f2,$f0,$f3
	dext	$2,$2,34,30
	lsa	$3,$2,$2,1
	sw	$2,20($4)
	sll	$2,$3,1
	subu	$5,$5,$2
	sw	$5,16($4)
	trunc.l.d $f1,$f1
	trunc.w.d $f0,$f0
	sdc1	$f1,32($4)
	swc1	$f0,40($4)
.L1107:
	jr	$31
	nop

	.align	3
.L1104:
	bne	$2,$0,.L1096
	li	$2,1			# 0x1

	bne	$7,$2,.L1106
	slt	$2,$5,52

.L1105:
	ld	$2,%got_disp(_ZN4x26513g_chromaScaleE)($10)
	daddu	$5,$2,$5
	b	.L1096
	lbu	$5,0($5)

	.align	3
.L1100:
	b	.L1096
	move	$5,$0

	.set	macro
	.set	reorder
	.end	_ZN4x2655Quant11setChromaQPEiNS_8TextTypeEi
	.size	_ZN4x2655Quant11setChromaQPEiNS_8TextTypeEi, .-_ZN4x2655Quant11setChromaQPEiNS_8TextTypeEi
	.align	2
	.align	3
	.globl	_ZN4x2655Quant13setQPforQuantERKNS_6CUDataEi
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Quant13setQPforQuantERKNS_6CUDataEi
	.type	_ZN4x2655Quant13setQPforQuantERKNS_6CUDataEi, @function
_ZN4x2655Quant13setQPforQuantERKNS_6CUDataEi:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	ld	$3,152($4)
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655Quant13setQPforQuantERKNS_6CUDataEi)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	beq	$3,$0,.L1109
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655Quant13setQPforQuantERKNS_6CUDataEi)))

	ld	$2,48($5)
	lw	$2,44($2)
	dlsa	$2,$2,$2,1
	dsll	$7,$2,10
	daddu	$2,$2,$7
	dsll	$2,$2,5
	daddu	$3,$3,$2
.L1109:
	lw	$2,24($4)
	beq	$2,$6,.L1110
	sd	$3,144($4)

	dlsa	$2,$6,$6,2
	ld	$7,%got_disp(_ZN4x26516x265_lambda2_tabE)($28)
	dsll	$8,$6,3
	dsll	$3,$2,5
	sra	$9,$6,31
	daddu	$2,$2,$3
	ld	$3,%got_page(.LC0)($28)
	dlsa	$2,$2,$6,1
	ldxc1	$f1,$7($8)
	ld	$7,%got_page(.LC1)($28)
	sw	$6,24($4)
	ldc1	$f3,%got_ofst(.LC0)($3)
	dsll	$3,$2,5
	daddu	$2,$2,$3
	ld	$3,%got_disp(_ZN4x26515x265_lambda_tabE)($28)
	ldc1	$f2,%got_ofst(.LC1)($7)
	ldxc1	$f0,$3($8)
	madd.d	$f1,$f2,$f1,$f3
	dsll	$3,$2,15
	dsubu	$3,$3,$2
	dlsa	$3,$3,$6,1
	madd.d	$f0,$f2,$f0,$f3
	dsra	$3,$3,32
	subu	$2,$3,$9
	lsa	$3,$2,$2,1
	sw	$2,20($4)
	trunc.l.d $f1,$f1
	sll	$2,$3,1
	subu	$2,$6,$2
	sw	$2,16($4)
	trunc.w.d $f0,$f0
	sdc1	$f1,32($4)
	swc1	$f0,40($4)
.L1110:
	ld	$2,48($5)
	ld	$2,16($2)
	lw	$2,212($2)
	sw	$2,112($4)
	lw	$7,116($5)
	bne	$7,$0,.L1116
	ld	$31,8($sp)

	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L1116:
	ld	$2,56($5)
	move	$13,$5
	move	$12,$6
	ld	$25,%got_disp(_ZN4x2655Quant11setChromaQPEiNS_8TextTypeEi)($28)
	li	$6,1			# 0x1
	move	$11,$4
	ld	$3,8($2)
	lw	$5,2272($2)
	lw	$2,4($3)
	addu	$2,$2,$12
	.reloc	1f,R_MIPS_JALR,_ZN4x2655Quant11setChromaQPEiNS_8TextTypeEi
1:	jalr	$25
	addu	$5,$2,$5

	ld	$31,8($sp)
	li	$6,2			# 0x2
	ld	$2,56($13)
	move	$4,$11
	ld	$28,0($sp)
	lw	$7,116($13)
	ld	$3,8($2)
	lw	$5,2276($2)
	lw	$2,8($3)
	daddiu	$sp,$sp,16
	addu	$12,$2,$12
	.reloc	1f,R_MIPS_JALR,_ZN4x2655Quant11setChromaQPEiNS_8TextTypeEi
1:	jr	$25
	addu	$5,$12,$5

	.set	macro
	.set	reorder
	.end	_ZN4x2655Quant13setQPforQuantERKNS_6CUDataEi
	.size	_ZN4x2655Quant13setQPforQuantERKNS_6CUDataEi, .-_ZN4x2655Quant13setQPforQuantERKNS_6CUDataEi
	.align	2
	.align	3
	.globl	_ZN4x2655Quant16signBitHidingHDQEPsPijRKNS_25TUEntropyCodingParametersEj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Quant16signBitHidingHDQEPsPijRKNS_25TUEntropyCodingParametersEj
	.type	_ZN4x2655Quant16signBitHidingHDQEPsPijRKNS_25TUEntropyCodingParametersEj, @function
_ZN4x2655Quant16signBitHidingHDQEPsPijRKNS_25TUEntropyCodingParametersEj:
	.frame	$sp,464,$31		# vars= 368, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-464
	lw	$2,16($8)
	li	$11,1			# 0x1
	sd	$28,440($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655Quant16signBitHidingHDQEPsPijRKNS_25TUEntropyCodingParametersEj)))
	sll	$11,$11,$9
	daddu	$28,$28,$25
	sd	$18,392($sp)
	move	$9,$7
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655Quant16signBitHidingHDQEPsPijRKNS_25TUEntropyCodingParametersEj)))
	ld	$18,0($8)
	dsll	$2,$2,5
	ld	$3,%got_disp(_ZN4x26510primitivesE)($28)
	ld	$10,%got_disp(_ZN4x2659g_scan4x4E)($28)
	sd	$20,408($sp)
	daddiu	$20,$sp,256
	ld	$25,5968($3)
	move	$8,$20
	sd	$21,416($sp)
	daddu	$10,$10,$2
	move	$21,$7
	sd	$19,400($sp)
	move	$7,$sp
	move	$19,$6
	sd	$4,320($sp)
	daddiu	$6,$sp,128
	move	$4,$18
	sd	$17,384($sp)
	move	$17,$5
	sd	$31,456($sp)
	sd	$fp,448($sp)
	sd	$23,432($sp)
	sd	$22,424($sp)
	jalr	$25
	sd	$16,376($sp)

	sra	$3,$2,4
	nor	$13,$0,$2
	dlsa	$5,$3,$sp,1
	andi	$13,$13,0xf
	lhu	$2,0($5)
	sll	$2,$2,$13
	bltz	$3,.L1134
	sh	$2,0($5)

	move	$22,$3
	daddu	$8,$20,$3
	sw	$3,328($sp)
	addiu	$15,$3,1
	daddiu	$3,$18,-2
	sd	$13,352($sp)
	sd	$3,336($sp)
	li	$3,2147418112			# 0x7fff0000
	move	$2,$21
	ori	$3,$3,0xffff
	move	$9,$0
	li	$21,31			# 0x1f
	sd	$3,344($sp)
	li	$16,1			# 0x1
	b	.L1133
	daddiu	$fp,$18,2

	.align	3
.L1119:
	addiu	$9,$9,1
	daddiu	$8,$8,-1
	beq	$15,$9,.L1118
	daddiu	$5,$5,-2

.L1133:
	lbu	$3,0($8)
	beq	$3,$0,.L1119
	nop

	lhu	$3,0($5)
	subu	$6,$0,$3
	clz	$12,$3
	and	$6,$6,$3
	xori	$12,$12,0x10
	clz	$6,$6
	move	$13,$12
	subu	$6,$21,$6
	xori	$6,$6,0xf
	subu	$4,$6,$12
	slt	$4,$4,4
	bne	$4,$0,.L1119
	move	$11,$6

	subu	$10,$22,$9
	slt	$14,$6,$12
	sll	$4,$10,4
	addu	$7,$4,$12
	dlsa	$7,$7,$18,1
	lhu	$7,0($7)
	dlsa	$7,$7,$17,1
	lh	$7,0($7)
	bne	$14,$0,.L1135
	slt	$24,$7,1

	subu	$6,$6,$12
	daddiu	$12,$4,1
	dext	$6,$6,0,32
	daddu	$12,$12,$13
	daddu	$6,$6,$13
	dlsa	$12,$12,$18,1
	daddu	$6,$6,$4
	move	$13,$0
	b	.L1122
	dlsa	$6,$6,$fp,1

	.align	3
.L1121:
	lhu	$7,0($12)
	daddiu	$12,$12,2
	dlsa	$7,$7,$17,1
	lh	$7,0($7)
.L1122:
	bne	$6,$12,.L1121
	addu	$13,$7,$13

	andi	$13,$13,0x1
.L1120:
	beq	$24,$13,.L1119
	lw	$6,328($sp)

	beq	$10,$6,.L1145
	ld	$6,352($sp)

	li	$11,15			# 0xf
.L1123:
	ld	$6,320($sp)
	daddu	$4,$11,$4
	dsll	$11,$11,1
	dsll	$4,$4,1
	move	$10,$0
	ld	$12,344($sp)
	li	$13,-1			# 0xffffffffffffffff
	ld	$25,120($6)
	ld	$6,336($sp)
	daddu	$6,$6,$4
	daddu	$4,$18,$4
	b	.L1129
	dsubu	$11,$6,$11

	.align	3
.L1147:
	dext	$14,$7,0,32
	dlsa	$6,$14,$19,2
	lw	$6,0($6)
	blez	$6,.L1125
	nop

	subu	$6,$0,$6
	li	$20,1			# 0x1
.L1126:
	slt	$14,$6,$12
.L1150:
	beq	$14,$0,.L1127
	nop

	move	$13,$7
	move	$10,$20
	move	$12,$6
.L1127:
	daddiu	$4,$4,-2
.L1149:
	beq	$4,$11,.L1146
	dext	$3,$3,1,31

.L1129:
	andi	$6,$3,0x1
	bne	$6,$0,.L1147
	lhu	$7,0($4)

	bne	$3,$0,.L1128
	dlsa	$6,$7,$19,2

	dext	$14,$7,0,32
	dlsa	$6,$14,$25,1
	lh	$6,0($6)
	srl	$6,$6,31
	bne	$6,$24,.L1127
	dlsa	$14,$14,$19,2

	li	$20,1			# 0x1
	lw	$6,0($14)
	b	.L1126
	subu	$6,$0,$6

	.align	3
.L1134:
	move	$2,$21
.L1118:
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

	.align	3
.L1128:
	li	$20,1			# 0x1
	lw	$6,0($6)
	b	.L1126
	subu	$6,$0,$6

	.align	3
.L1125:
	bne	$3,$16,.L1126
	li	$20,-1			# 0xffffffffffffffff

	dlsa	$14,$14,$17,1
	lh	$14,0($14)
	sra	$23,$14,31
	xor	$14,$23,$14
	subu	$14,$14,$23
	bne	$14,$16,.L1150
	slt	$14,$6,$12

	b	.L1149
	daddiu	$4,$4,-2

	.align	3
.L1146:
	dsll	$13,$13,1
	li	$11,65534			# 0xfffe
	daddu	$6,$17,$13
	lh	$7,0($6)
	andi	$4,$7,0xffff
	addiu	$3,$4,32767
	andi	$3,$3,0xffff
	sltu	$3,$3,$11
	bne	$3,$0,.L1148
	sra	$11,$7,31

.L1151:
	xor	$3,$11,$7
	subu	$3,$3,$11
	bne	$3,$16,.L1132
	li	$10,-1			# 0xffffffffffffffff

	b	.L1132
	addiu	$2,$2,-1

	.align	3
.L1148:
	bne	$7,$0,.L1131
	li	$3,-1			# 0xffffffffffffffff

	addiu	$2,$2,1
	seh	$10,$10
.L1132:
	daddu	$25,$25,$13
	lh	$3,0($25)
	sra	$3,$3,31
	xor	$10,$3,$10
	subu	$4,$4,$3
	addu	$10,$10,$4
	b	.L1119
	sh	$10,0($6)

	.align	3
.L1131:
	beq	$10,$3,.L1151
	sra	$11,$7,31

	b	.L1132
	seh	$10,$10

	.align	3
.L1135:
	b	.L1120
	move	$13,$0

.L1145:
	b	.L1123
	srl	$3,$3,$6

	.set	macro
	.set	reorder
	.end	_ZN4x2655Quant16signBitHidingHDQEPsPijRKNS_25TUEntropyCodingParametersEj
	.size	_ZN4x2655Quant16signBitHidingHDQEPsPijRKNS_25TUEntropyCodingParametersEj, .-_ZN4x2655Quant16signBitHidingHDQEPsPijRKNS_25TUEntropyCodingParametersEj
	.align	2
	.align	3
	.globl	_ZN4x2655Quant12transformNxNERKNS_6CUDataEPKhjPKsjPsjNS_8TextTypeEjb
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Quant12transformNxNERKNS_6CUDataEPKhjPKsjPsjNS_8TextTypeEjb
	.type	_ZN4x2655Quant12transformNxNERKNS_6CUDataEPKhjPKsjPsjNS_8TextTypeEjb, @function
_ZN4x2655Quant12transformNxNERKNS_6CUDataEPKhjPKsjPsjNS_8TextTypeEjb:
	.frame	$sp,4272,$31		# vars= 4176, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-4272
	move	$12,$6
	sd	$fp,4256($sp)
	dext	$6,$9,0,32
	sd	$28,4248($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655Quant12transformNxNERKNS_6CUDataEPKhjPKsjPsjNS_8TextTypeEjb)))
	sd	$23,4240($sp)
	daddu	$28,$28,$25
	sd	$21,4224($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655Quant12transformNxNERKNS_6CUDataEPKhjPKsjPsjNS_8TextTypeEjb)))
	sd	$20,4216($sp)
	addiu	$20,$11,-2
	sd	$17,4192($sp)
	move	$17,$10
	sd	$31,4264($sp)
	sd	$22,4232($sp)
	sd	$19,4208($sp)
	sd	$18,4200($sp)
	sd	$16,4184($sp)
	ld	$3,160($5)
	lw	$23,4272($sp)
	lw	$fp,4280($sp)
	lbu	$3,0($3)
	beq	$3,$0,.L1153
	lbu	$21,4288($sp)

	dext	$3,$20,0,32
	move	$5,$8
	dsll	$2,$3,5
	dsubu	$2,$2,$3
	ld	$3,%got_disp(_ZN4x26510primitivesE)($28)
	dlsa	$2,$2,$3,4
	ld	$25,3264($2)
	jalr	$25
	move	$4,$10

.L1172:
	ld	$31,4264($sp)
.L1193:
	ld	$fp,4256($sp)
	ld	$28,4248($sp)
	ld	$23,4240($sp)
	ld	$22,4232($sp)
	ld	$21,4224($sp)
	ld	$20,4216($sp)
	ld	$19,4208($sp)
	ld	$18,4200($sp)
	ld	$17,4192($sp)
	ld	$16,4184($sp)
	jr	$31
	daddiu	$sp,$sp,4272

	.align	3
.L1153:
	lw	$3,116($4)
	li	$19,7			# 0x7
	move	$16,$5
	move	$18,$4
	beq	$3,$0,.L1155
	subu	$19,$19,$11

	bne	$23,$0,.L1155
	nop

	bne	$21,$0,.L1194
	ld	$3,%got_disp(_ZN4x26510primitivesE)($28)

	ld	$3,192($5)
	dext	$4,$fp,0,32
	li	$21,1			# 0x1
	daddu	$3,$3,$4
	lbu	$2,0($3)
	beq	$20,$0,.L1168
	sd	$2,4160($sp)

.L1160:
	ld	$3,%got_disp(_ZN4x26510primitivesE)($28)
.L1195:
	dext	$22,$20,0,32
	move	$4,$8
	dsll	$9,$22,5
	ld	$5,120($18)
	dsubu	$8,$9,$22
	sd	$11,4152($sp)
	dlsa	$8,$8,$3,4
	sd	$7,4144($sp)
	ld	$25,3200($8)
	sd	$12,4136($sp)
	jalr	$25
	sd	$3,4128($sp)

	ld	$11,4152($sp)
	ld	$7,4144($sp)
	ld	$12,4136($sp)
	ld	$3,4128($sp)
.L1161:
	beq	$21,$0,.L1162
	dsll	$8,$22,5

	ld	$4,136($18)
	li	$9,1			# 0x1
	dsubu	$8,$8,$22
	sll	$9,$9,$11
	sd	$11,4152($sp)
	dlsa	$8,$8,$3,4
	move	$6,$12
	sd	$3,4144($sp)
	ld	$25,3320($8)
	move	$5,$9
	dext	$7,$7,0,32
	sd	$8,4136($sp)
	jalr	$25
	sw	$9,4128($sp)

	ld	$8,4136($sp)
	lw	$9,4128($sp)
	ld	$5,128($18)
	ld	$25,3200($8)
	ld	$4,136($18)
	jalr	$25
	move	$6,$9

	ld	$11,4152($sp)
	ld	$3,4144($sp)
.L1162:
	ld	$4,144($18)
	beq	$4,$0,.L1159
	li	$8,131072			# 0x20000

	daddu	$4,$4,$8
	sd	$8,4128($sp)
	ld	$6,-32704($4)
	beq	$6,$0,.L1159
	ld	$2,4160($sp)

	sltu	$7,$0,$23
	ld	$5,-32696($4)
	ld	$25,5728($3)
	xori	$9,$2,0x2
	lsa	$2,$7,$20,2
	ld	$4,120($18)
	sltu	$20,$0,$9
	li	$7,1			# 0x1
	sd	$3,4144($sp)
	lsa	$20,$20,$2,3
	sll	$2,$11,1
	sd	$11,4136($sp)
	dsll	$10,$20,11
	dsll	$9,$20,12
	sll	$7,$7,$2
	daddu	$6,$6,$10
	jalr	$25
	daddu	$5,$5,$9

	ld	$2,144($18)
	ld	$8,4128($sp)
	ld	$3,4144($sp)
	ld	$11,4136($sp)
	daddu	$8,$2,$8
	ld	$2,-32688($8)
	dlsa	$20,$20,$2,2
	lw	$2,0($20)
	addiu	$2,$2,1
	b	.L1159
	sw	$2,0($20)

	.align	3
.L1155:
	beq	$21,$0,.L1158
	ld	$3,%got_disp(_ZN4x26510primitivesE)($28)

.L1194:
	dext	$22,$20,0,32
	move	$7,$19
	dsll	$2,$22,5
	ld	$4,120($18)
	move	$5,$8
	dsubu	$2,$2,$22
	sd	$11,4136($sp)
	dlsa	$2,$2,$3,4
	sd	$3,4128($sp)
	ld	$25,3280($2)
	jalr	$25
	move	$21,$0

	ld	$3,4128($sp)
	ld	$11,4136($sp)
.L1159:
	lw	$9,112($18)
	beq	$9,$0,.L1163
	dext	$6,$fp,0,32

	ld	$2,%got_disp(_ZN4x2655Quant13rdoQuant_funcE)($28)
	dlsa	$22,$22,$2,4
	ld	$2,8($22)
	ld	$25,0($22)
	dsra	$4,$2,1
	andi	$2,$2,0x1
	beq	$2,$0,.L1164
	daddu	$4,$18,$4

	ld	$2,0($4)
	daddu	$25,$2,$25
	ld	$25,0($25)
.L1164:
	move	$9,$21
	move	$8,$fp
	move	$7,$23
	move	$6,$17
	jalr	$25
	move	$5,$16

	b	.L1193
	ld	$31,4264($sp)

	.align	3
.L1163:
	ld	$7,192($16)
	move	$2,$23
	dsll	$4,$2,5
	sll	$10,$11,1
	ld	$25,5696($3)
	daddu	$4,$18,$4
	li	$3,3			# 0x3
	ld	$13,56($16)
	daddu	$6,$7,$6
	lw	$12,16($4)
	dlsa	$22,$22,$22,3
	lbu	$14,0($6)
	move	$7,$17
	move	$6,$sp
	lw	$8,20($4)
	li	$4,1			# 0x1
	sll	$10,$4,$10
	ld	$5,0($18)
	xori	$4,$14,0x2
	lw	$13,2264($13)
	li	$14,85			# 0x55
	movn	$9,$3,$4
	addiu	$8,$8,14
	ld	$4,120($18)
	addu	$2,$23,$9
	addu	$8,$8,$19
	sd	$11,4136($sp)
	dlsa	$2,$2,$2,1
	xori	$3,$13,0x2
	dsll	$2,$2,1
	li	$13,171			# 0xab
	dlsa	$2,$22,$2,2
	addiu	$9,$8,-9
	movn	$13,$14,$3
	daddu	$2,$2,$12
	dlsa	$2,$2,$5,3
	sll	$9,$13,$9
	jalr	$25
	ld	$5,288($2)

	sltu	$3,$2,2
	bne	$3,$0,.L1172
	sd	$2,4128($sp)

	ld	$3,56($16)
	ld	$3,8($3)
	lbu	$3,27($3)
	beq	$3,$0,.L1172
	ld	$11,4136($sp)

	ld	$25,%call16(_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb)($28)
	daddiu	$19,$sp,4096
	move	$7,$11
	move	$6,$fp
	move	$5,$19
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb
1:	jalr	$25
	sltu	$8,$23,1

	ld	$11,4136($sp)
	move	$8,$19
	ld	$2,4128($sp)
	move	$6,$sp
	move	$5,$17
	ld	$25,%got_disp(_ZN4x2655Quant16signBitHidingHDQEPsPijRKNS_25TUEntropyCodingParametersEj)($28)
	move	$4,$18
	move	$9,$11
	.reloc	1f,R_MIPS_JALR,_ZN4x2655Quant16signBitHidingHDQEPsPijRKNS_25TUEntropyCodingParametersEj
1:	jalr	$25
	move	$7,$2

	b	.L1193
	ld	$31,4264($sp)

.L1158:
	ld	$3,192($16)
	dext	$4,$fp,0,32
	daddu	$3,$3,$4
	lbu	$2,0($3)
	bne	$20,$0,.L1160
	sd	$2,4160($sp)

	bne	$23,$0,.L1195
	ld	$3,%got_disp(_ZN4x26510primitivesE)($28)

.L1168:
	ld	$2,4160($sp)
	li	$3,2			# 0x2
	bne	$2,$3,.L1160
	ld	$3,%got_disp(_ZN4x26510primitivesE)($28)

	move	$4,$8
	move	$22,$0
	ld	$5,120($18)
	sd	$11,4152($sp)
	ld	$25,5680($3)
	sd	$7,4144($sp)
	sd	$12,4136($sp)
	jalr	$25
	sd	$3,4128($sp)

	ld	$3,4128($sp)
	ld	$12,4136($sp)
	ld	$7,4144($sp)
	b	.L1161
	ld	$11,4152($sp)

	.set	macro
	.set	reorder
	.end	_ZN4x2655Quant12transformNxNERKNS_6CUDataEPKhjPKsjPsjNS_8TextTypeEjb
	.size	_ZN4x2655Quant12transformNxNERKNS_6CUDataEPKhjPKsjPsjNS_8TextTypeEjb, .-_ZN4x2655Quant12transformNxNERKNS_6CUDataEPKhjPKsjPsjNS_8TextTypeEjb
	.align	2
	.align	3
	.globl	_ZN4x2655Quant14ssimDistortionERKNS_6CUDataEPKhjS5_ljNS_8TextTypeEj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Quant14ssimDistortionERKNS_6CUDataEPKhjS5_ljNS_8TextTypeEj
	.type	_ZN4x2655Quant14ssimDistortionERKNS_6CUDataEPKhjS5_ljNS_8TextTypeEj, @function
_ZN4x2655Quant14ssimDistortionERKNS_6CUDataEPKhjS5_ljNS_8TextTypeEj:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x107f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$13,1			# 0x1
	daddiu	$sp,$sp,-64
	sll	$13,$13,$10
	sd	$28,56($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655Quant14ssimDistortionERKNS_6CUDataEPKhjS5_ljNS_8TextTypeEj)))
	sll	$2,$13,$10
	daddu	$28,$28,$25
	sd	$22,48($sp)
	lsa	$15,$2,$2,1
	dsra	$3,$13,2
	sd	$21,40($sp)
	lsa	$15,$15,$2,2
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655Quant14ssimDistortionERKNS_6CUDataEPKhjS5_ljNS_8TextTypeEj)))
	sd	$19,24($sp)
	gsmultu	$10,$3,$3
	sll	$15,$15,5
	sd	$18,16($sp)
	sd	$17,8($sp)
	blez	$13,.L1197
	sd	$16,0($sp)

	addiu	$20,$13,-1
	move	$25,$13
	dext	$20,$20,2,30
	dsll	$21,$9,2
	dsll	$20,$20,2
	sll	$14,$7,2
	move	$17,$8
	move	$19,$0
	move	$18,$0
	move	$4,$0
	daddiu	$20,$20,4
	.align	3
.L1199:
	daddu	$16,$20,$17
	move	$3,$17
	move	$24,$19
	.align	3
.L1198:
	dext	$12,$24,0,32
	lbu	$22,0($3)
	daddiu	$3,$3,4
	daddu	$12,$6,$12
	addiu	$24,$24,4
	lbu	$2,0($12)
	subu	$2,$2,$22
	gsmultu	$2,$2,$2
	bne	$16,$3,.L1198
	daddu	$4,$4,$2

	addiu	$18,$18,4
	daddu	$17,$17,$21
	slt	$2,$18,$13
	bne	$2,$0,.L1199
	addu	$19,$14,$19

	move	$20,$0
	move	$12,$0
	move	$17,$0
	.align	3
.L1202:
	addu	$19,$25,$20
	move	$16,$8
	move	$3,$20
	.align	3
.L1200:
	dext	$24,$3,0,32
	lbu	$18,0($16)
	addiu	$3,$3,1
	daddu	$24,$6,$24
	daddiu	$16,$16,1
	lbu	$2,0($24)
	subu	$2,$2,$18
	gsmultu	$2,$2,$2
	bne	$19,$3,.L1200
	daddu	$17,$17,$2

	addiu	$12,$12,1
	addu	$20,$7,$20
	bne	$13,$12,.L1202
	daddu	$8,$8,$9

	addiu	$16,$12,-1
	move	$24,$12
	srl	$16,$16,2
	dsubu	$17,$17,$4
	sll	$16,$16,2
	move	$13,$0
	move	$25,$0
	move	$9,$0
	addiu	$16,$16,4
	.align	3
.L1205:
	addu	$8,$16,$13
	move	$3,$13
	.align	3
.L1203:
	dext	$2,$3,0,32
	addiu	$3,$3,4
	daddu	$2,$6,$2
	lbu	$2,0($2)
	gsdmultu	$2,$2,$2
	bne	$8,$3,.L1203
	daddu	$9,$9,$2

	addiu	$25,$25,4
	slt	$2,$25,$12
	bne	$2,$0,.L1205
	addu	$13,$14,$13

	dlsa	$15,$9,$15,1
	move	$14,$0
	gsddivu	$25,$15,$10
	teq	$10,$0,7
	move	$8,$0
	move	$15,$0
	.align	3
.L1207:
	addu	$13,$24,$14
	move	$3,$14
	.align	3
.L1206:
	dext	$2,$3,0,32
	addiu	$3,$3,1
	daddu	$2,$6,$2
	lbu	$2,0($2)
	gsdmultu	$2,$2,$2
	bne	$13,$3,.L1206
	daddu	$8,$8,$2

	addiu	$15,$15,1
	bne	$12,$15,.L1207
	addu	$14,$7,$14

	dsubu	$8,$8,$9
	bltz	$8,.L1209
	dmtc1	$8,$f0

	cvt.d.l	$f1,$f0
.L1208:
	li	$2,196608			# 0x30000
	ori	$2,$2,0x99bb
	daddu	$8,$8,$2
.L1212:
	lwu	$3,64($sp)
	ld	$2,136($5)
	daddu	$2,$2,$3
	lb	$3,0($2)
	ld	$2,%got_page(.LC4)($28)
	mtc1	$3,$f0
	ldc1	$f2,%got_ofst(.LC4)($2)
	ld	$2,%got_page(.LC2)($28)
	ldc1	$f4,%got_ofst(.LC2)($2)
	ld	$2,%got_page(.LC3)($28)
	cvt.d.w	$f0,$f0
	ldc1	$f3,%got_ofst(.LC3)($2)
	madd.d	$f0,$f3,$f0,$f4
	mul.d	$f0,$f0,$f1
	c.le.d	$fcc0,$f2,$f0
	bc1t	$fcc0,.L1210
	li	$3,1			# 0x1

	trunc.l.d $f0,$f0
	dmfc1	$2,$f0
.L1211:
	dlsa	$5,$11,$5,3
	daddu	$8,$2,$8
	ld	$28,56($sp)
	ld	$3,448($5)
	gsddivu	$6,$8,$10
	teq	$10,$0,7
	ld	$2,472($5)
	ld	$22,48($sp)
	gsdmultu	$17,$17,$3
	ld	$21,40($sp)
	gsdmultu	$4,$4,$2
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$16,0($sp)
	gsddivu	$2,$17,$6
	teq	$6,$0,7
	ld	$17,8($sp)
	daddiu	$sp,$sp,64
	gsddivu	$3,$4,$25
	teq	$25,$0,7
	jr	$31
	daddu	$2,$2,$3

	.align	3
.L1210:
	sub.d	$f0,$f0,$f2
	dsll	$3,$3,63
	trunc.l.d $f0,$f0
	dmfc1	$2,$f0
	b	.L1211
	or	$2,$2,$3

.L1209:
	andi	$2,$8,0x1
	dsrl	$3,$8,1
	or	$2,$2,$3
	dmtc1	$2,$f0
	cvt.d.l	$f1,$f0
	b	.L1208
	add.d	$f1,$f1,$f1

.L1197:
	li	$8,196608			# 0x30000
	gsddivu	$25,$15,$10
	teq	$10,$0,7
	dmtc1	$0,$f1
	move	$17,$0
	ori	$8,$8,0x99bb
	b	.L1212
	move	$4,$0

	.set	macro
	.set	reorder
	.end	_ZN4x2655Quant14ssimDistortionERKNS_6CUDataEPKhjS5_ljNS_8TextTypeEj
	.size	_ZN4x2655Quant14ssimDistortionERKNS_6CUDataEPKhjS5_ljNS_8TextTypeEj, .-_ZN4x2655Quant14ssimDistortionERKNS_6CUDataEPKhjS5_ljNS_8TextTypeEj
	.align	2
	.align	3
	.globl	_ZN4x2655Quant15invtransformNxNERKNS_6CUDataEPsjPKsjNS_8TextTypeEbbj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Quant15invtransformNxNERKNS_6CUDataEPsjPKsjNS_8TextTypeEbbj
	.type	_ZN4x2655Quant15invtransformNxNERKNS_6CUDataEPsjPKsjNS_8TextTypeEbbj, @function
_ZN4x2655Quant15invtransformNxNERKNS_6CUDataEPsjPKsjNS_8TextTypeEbbj:
	.frame	$sp,112,$31		# vars= 16, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$fp,96($sp)
	move	$fp,$6
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655Quant15invtransformNxNERKNS_6CUDataEPsjPKsjNS_8TextTypeEbbj)))
	sd	$23,80($sp)
	daddu	$28,$28,$25
	sd	$22,72($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655Quant15invtransformNxNERKNS_6CUDataEPsjPKsjNS_8TextTypeEbbj)))
	sd	$20,56($sp)
	dext	$20,$7,0,32
	sd	$16,24($sp)
	addiu	$16,$9,-2
	sd	$31,104($sp)
	sd	$21,64($sp)
	sd	$19,48($sp)
	sd	$18,40($sp)
	sd	$17,32($sp)
	ld	$2,160($5)
	lbu	$22,112($sp)
	lbu	$2,0($2)
	beq	$2,$0,.L1222
	lw	$23,120($sp)

	dext	$3,$16,0,32
	ld	$31,104($sp)
	move	$6,$20
	dsll	$2,$3,5
	ld	$23,80($sp)
	move	$4,$fp
	dsubu	$2,$2,$3
	ld	$3,%got_disp(_ZN4x26510primitivesE)($28)
	move	$7,$0
	ld	$fp,96($sp)
	move	$5,$8
	ld	$28,88($sp)
	dlsa	$2,$2,$3,4
	ld	$22,72($sp)
	ld	$21,64($sp)
	ld	$20,56($sp)
	ld	$19,48($sp)
	ld	$18,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	ld	$25,3296($2)
	jr	$25
	daddiu	$sp,$sp,112

	.align	3
.L1222:
	ld	$3,0($4)
	move	$21,$4
	move	$4,$10
	sd	$10,8($sp)
	li	$10,7			# 0x7
	move	$17,$8
	subu	$18,$10,$9
	dsll	$2,$4,5
	sd	$11,0($sp)
	lbu	$12,2592($3)
	sll	$9,$9,1
	li	$8,6			# 0x6
	li	$6,1			# 0x1
	daddu	$2,$21,$2
	ld	$5,120($21)
	sll	$6,$6,$9
	subu	$8,$8,$18
	lw	$11,16($2)
	move	$9,$8
	lw	$2,20($2)
	bne	$12,$0,.L1236
	move	$7,$6

	ld	$3,%got_disp(_ZN4x26511ScalingList16s_invQuantScalesE)($28)
	move	$4,$17
	ld	$19,%got_disp(_ZN4x26510primitivesE)($28)
	dlsa	$11,$11,$3,2
	lw	$7,0($11)
	ld	$25,5720($19)
	jalr	$25
	sll	$7,$7,$2

.L1225:
	beq	$22,$0,.L1226
	ld	$4,120($21)

	dext	$16,$16,0,32
	ld	$31,104($sp)
	move	$7,$18
	dsll	$3,$16,5
	ld	$28,88($sp)
	move	$6,$20
	dsubu	$3,$3,$16
	ld	$23,80($sp)
	move	$5,$4
	dlsa	$3,$3,$19,4
	ld	$22,72($sp)
	move	$4,$fp
	ld	$21,64($sp)
	ld	$fp,96($sp)
	ld	$20,56($sp)
	ld	$19,48($sp)
	ld	$18,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	ld	$25,3304($3)
	jr	$25
	daddiu	$sp,$sp,112

	.align	3
.L1226:
	bne	$16,$0,.L1238
	li	$2,1			# 0x1

	ld	$2,8($sp)
	bne	$2,$0,.L1238
	li	$2,1			# 0x1

	ld	$2,0($sp)
	beq	$2,$0,.L1227
	li	$2,1			# 0x1

	ld	$25,5688($19)
	move	$6,$20
	move	$5,$fp
.L1235:
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
	jr	$25
	daddiu	$sp,$sp,112

	.align	3
.L1236:
	ld	$8,0($sp)
	addiu	$6,$4,3
	ld	$19,%got_disp(_ZN4x26510primitivesE)($28)
	movz	$4,$6,$8
	dext	$6,$16,0,32
	dlsa	$4,$4,$4,1
	dlsa	$6,$6,$6,3
	ld	$25,5712($19)
	dsll	$4,$4,1
	move	$8,$2
	dlsa	$4,$6,$4,2
	move	$6,$5
	daddu	$11,$4,$11
	move	$4,$17
	dlsa	$3,$11,$3,3
	jalr	$25
	ld	$5,1440($3)

	b	.L1225
	nop

	.align	3
.L1227:
	.align	3
.L1238:
	beq	$23,$2,.L1237
	dext	$3,$16,0,32

.L1239:
	move	$6,$20
	dsll	$16,$3,5
	move	$5,$fp
	dsubu	$3,$16,$3
	dlsa	$3,$3,$19,4
	b	.L1235
	ld	$25,3208($3)

.L1237:
	lh	$2,0($17)
	beq	$2,$0,.L1239
	nop

	lh	$6,0($4)
	dext	$16,$16,0,32
	move	$5,$20
	dsll	$3,$16,5
	ld	$31,104($sp)
	move	$4,$fp
	dsubu	$3,$3,$16
	ld	$fp,96($sp)
	addiu	$6,$6,1
	dlsa	$3,$3,$19,4
	ld	$28,88($sp)
	sra	$6,$6,1
	ld	$23,80($sp)
	ld	$22,72($sp)
	addiu	$6,$6,32
	ld	$21,64($sp)
	sra	$6,$6,6
	ld	$20,56($sp)
	seh	$6,$6
	ld	$19,48($sp)
	ld	$18,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	ld	$25,3256($3)
	jr	$25
	daddiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	_ZN4x2655Quant15invtransformNxNERKNS_6CUDataEPsjPKsjNS_8TextTypeEbbj
	.size	_ZN4x2655Quant15invtransformNxNERKNS_6CUDataEPsjPKsjNS_8TextTypeEbbj, .-_ZN4x2655Quant15invtransformNxNERKNS_6CUDataEPsjPKsjNS_8TextTypeEbbj
	.align	2
	.align	3
	.globl	_ZN4x2655Quant12getSigCtxIncEjjjjbj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Quant12getSigCtxIncEjjjjbj
	.type	_ZN4x2655Quant12getSigCtxIncEjjjjbj, @function
_ZN4x2655Quant12getSigCtxIncEjjjjbj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$7,$0,.L1254
	move	$2,$0

	lui	$12,%hi(%neg(%gp_rel(_ZN4x2655Quant12getSigCtxIncEjjjjbj)))
	li	$2,2			# 0x2
	daddu	$12,$12,$25
	beq	$5,$2,.L1253
	daddiu	$12,$12,%lo(%neg(%gp_rel(_ZN4x2655Quant12getSigCtxIncEjjjjbj)))

	ld	$11,%got_page(_ZZN4x2655Quant12getSigCtxIncEjjjjbjE9table_cnt)($12)
	srl	$5,$7,$5
	dext	$10,$4,0,32
	andi	$3,$7,0x3
	andi	$4,$5,0x3
	dlsa	$3,$10,$3,2
	move	$10,$4
	daddiu	$4,$11,%got_ofst(_ZZN4x2655Quant12getSigCtxIncEjjjjbjE9table_cnt)
	dlsa	$4,$3,$4,2
	daddu	$4,$4,$10
	lbu	$2,0($4)
	beq	$8,$0,.L1254
	addu	$2,$2,$9

	addiu	$6,$6,-1
	and	$7,$6,$7
	or	$5,$7,$5
	sltu	$5,$5,4
	bne	$5,$0,.L1254
	nop

	jr	$31
	addiu	$2,$2,3

.L1254:
	jr	$31
	nop

	.align	3
.L1253:
	ld	$2,%got_page(_ZZN4x2655Quant12getSigCtxIncEjjjjbjE9ctxIndMap)($12)
	dext	$7,$7,0,32
	daddiu	$2,$2,%got_ofst(_ZZN4x2655Quant12getSigCtxIncEjjjjbjE9ctxIndMap)
	daddu	$7,$7,$2
	jr	$31
	lbu	$2,0($7)

	.set	macro
	.set	reorder
	.end	_ZN4x2655Quant12getSigCtxIncEjjjjbj
	.size	_ZN4x2655Quant12getSigCtxIncEjjjjbj, .-_ZN4x2655Quant12getSigCtxIncEjjjjbj
	.weak	_ZZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64
	.section	.rodata._ZZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64,"aG",@progbits,_ZZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64,comdat
	.align	3
	.type	_ZZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64, @object
	.size	_ZZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64, 32
_ZZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64:
	.dword	4296081682
	.dword	286335522
	.dword	5066626891382802
	.dword	2459565876494606882
	.weak	_ZZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt
	.section	.rodata._ZZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt,"aG",@progbits,_ZZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt,comdat
	.align	3
	.type	_ZZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt, @object
	.size	_ZZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt, 80
_ZZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt:
	.byte	2
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	1
	.byte	4
	.byte	5
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	6
	.byte	8
	.byte	8
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.weak	_ZZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64
	.section	.rodata._ZZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64,"aG",@progbits,_ZZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64,comdat
	.align	3
	.type	_ZZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64, @object
	.size	_ZZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64, 32
_ZZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64:
	.dword	4296081682
	.dword	286335522
	.dword	5066626891382802
	.dword	2459565876494606882
	.weak	_ZZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt
	.section	.rodata._ZZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt,"aG",@progbits,_ZZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt,comdat
	.align	3
	.type	_ZZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt, @object
	.size	_ZZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt, 80
_ZZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt:
	.byte	2
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	1
	.byte	4
	.byte	5
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	6
	.byte	8
	.byte	8
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.weak	_ZZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64
	.section	.rodata._ZZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64,"aG",@progbits,_ZZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64,comdat
	.align	3
	.type	_ZZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64, @object
	.size	_ZZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64, 32
_ZZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE11table_cnt64:
	.dword	4296081682
	.dword	286335522
	.dword	5066626891382802
	.dword	2459565876494606882
	.weak	_ZZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt
	.section	.rodata._ZZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt,"aG",@progbits,_ZZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt,comdat
	.align	3
	.type	_ZZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt, @object
	.size	_ZZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt, 80
_ZZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt:
	.byte	2
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	1
	.byte	4
	.byte	5
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	6
	.byte	8
	.byte	8
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.weak	_ZZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt
	.section	.rodata._ZZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt,"aG",@progbits,_ZZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt,comdat
	.align	3
	.type	_ZZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt, @object
	.size	_ZZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt, 80
_ZZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjbE9table_cnt:
	.byte	2
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	1
	.byte	4
	.byte	5
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	6
	.byte	8
	.byte	8
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.rdata
	.align	3
	.type	_ZZN4x2655Quant12getSigCtxIncEjjjjbjE9table_cnt, @object
	.size	_ZZN4x2655Quant12getSigCtxIncEjjjjbjE9table_cnt, 64
_ZZN4x2655Quant12getSigCtxIncEjjjjbjE9table_cnt:
	.byte	2
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.align	3
	.type	_ZZN4x2655Quant12getSigCtxIncEjjjjbjE9ctxIndMap, @object
	.size	_ZZN4x2655Quant12getSigCtxIncEjjjjbjE9ctxIndMap, 16
_ZZN4x2655Quant12getSigCtxIncEjjjjbjE9ctxIndMap:
	.byte	0
	.byte	1
	.byte	4
	.byte	5
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	6
	.byte	8
	.byte	8
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.globl	_ZN4x2655Quant13rdoQuant_funcE
	.section	.data.rel.local,"aw",@progbits
	.align	3
	.type	_ZN4x2655Quant13rdoQuant_funcE, @object
	.size	_ZN4x2655Quant13rdoQuant_funcE, 64
_ZN4x2655Quant13rdoQuant_funcE:
	.dword	_ZN4x2655Quant8rdoQuantILj2EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.dword	0
	.dword	_ZN4x2655Quant8rdoQuantILj3EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.dword	0
	.dword	_ZN4x2655Quant8rdoQuantILj4EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.dword	0
	.dword	_ZN4x2655Quant8rdoQuantILj5EEEjRKNS_6CUDataEPsNS_8TextTypeEjb
	.dword	0
	.rdata
	.align	3
	.type	_ZN4x265L6ctxCbfE, @object
	.size	_ZN4x265L6ctxCbfE, 60
_ZN4x265L6ctxCbfE:
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC0:
	.word	0
	.word	1081081856
	.align	3
.LC1:
	.word	0
	.word	1071644672
	.align	3
.LC2:
	.word	1202590843
	.word	1064598241
	.align	3
.LC3:
	.word	0
	.word	1072693248
	.align	3
.LC4:
	.word	0
	.word	1138753536
	.ident	"GCC: (GNU) 7.3.0"
