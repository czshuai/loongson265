	.file	1 "slice.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.align	3
	.globl	_ZN4x2655Slice13setRefPicListERNS_7PicListE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Slice13setRefPicListERNS_7PicListE
	.type	_ZN4x2655Slice13setRefPicListERNS_7PicListE, @function
_ZN4x2655Slice13setRefPicListERNS_7PicListE:
	.frame	$sp,608,$31		# vars= 528, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-608
	lw	$10,2264($4)
	li	$2,2			# 0x2
	sd	$28,592($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655Slice13setRefPicListERNS_7PicListE)))
	daddu	$28,$28,$25
	sd	$16,536($sp)
	move	$16,$4
	sd	$31,600($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655Slice13setRefPicListERNS_7PicListE)))
	sd	$22,584($sp)
	sd	$21,576($sp)
	sd	$20,568($sp)
	sd	$19,560($sp)
	sd	$18,552($sp)
	beq	$10,$2,.L69
	sd	$17,544($sp)

	lw	$3,2108($4)
	blez	$3,.L70
	move	$20,$5

	daddiu	$19,$4,2244
	daddiu	$21,$4,2180
	move	$18,$0
	b	.L10
	move	$17,$0

	.align	3
.L8:
	slt	$2,$18,$3
	beq	$2,$0,.L71
	daddiu	$21,$21,4

.L10:
	lbu	$2,0($19)
	addiu	$18,$18,1
	beq	$2,$0,.L8
	daddiu	$19,$19,1

	lw	$2,0($21)
	move	$4,$20
	daddiu	$21,$21,4
	lw	$5,2280($16)
	ld	$25,%call16(_ZN4x2657PicList6getPOCEi)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2657PicList6getPOCEi
1:	jalr	$25
	addu	$5,$5,$2

	lw	$3,2108($16)
	dlsa	$4,$17,$sp,3
	sd	$2,400($4)
	slt	$2,$18,$3
	bne	$2,$0,.L10
	addiu	$17,$17,1

.L71:
	lw	$4,2112($16)
	addu	$3,$4,$3
	slt	$3,$18,$3
	beq	$3,$0,.L72
	move	$6,$17

.L7:
	daddiu	$19,$18,2244
	daddiu	$21,$18,545
	daddu	$19,$16,$19
	dlsa	$21,$21,$16,2
	b	.L13
	move	$22,$0

	.align	3
.L11:
	lw	$2,2108($16)
	addu	$2,$2,$4
	slt	$2,$18,$2
	beq	$2,$0,.L73
	daddiu	$21,$21,4

.L13:
	lbu	$2,0($19)
	addiu	$18,$18,1
	beq	$2,$0,.L11
	daddiu	$19,$19,1

	lw	$2,0($21)
	move	$4,$20
	daddiu	$21,$21,4
	lw	$5,2280($16)
	ld	$25,%call16(_ZN4x2657PicList6getPOCEi)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2657PicList6getPOCEi
1:	jalr	$25
	addu	$5,$5,$2

	dlsa	$3,$22,$sp,3
	lw	$4,2112($16)
	sd	$2,272($3)
	lw	$2,2108($16)
	addu	$2,$2,$4
	slt	$2,$18,$2
	bne	$2,$0,.L13
	addiu	$22,$22,1

.L73:
	addu	$6,$22,$17
	beq	$17,$0,.L19
	move	$9,$0

.L14:
	daddiu	$4,$sp,400
	daddiu	$3,$sp,136
	move	$2,$0
	.align	3
.L20:
	ld	$7,0($4)
	addiu	$2,$2,1
	daddiu	$3,$3,8
	slt	$5,$2,$17
	daddiu	$4,$4,8
	bne	$5,$0,.L20
	sd	$7,-8($3)

	move	$9,$17
.L19:
	beq	$22,$0,.L74
	addiu	$4,$22,-1

	daddiu	$3,$sp,144
	dext	$5,$4,0,32
	daddiu	$8,$sp,272
	daddu	$7,$17,$5
	daddiu	$2,$sp,136
	dlsa	$7,$7,$3,3
	dlsa	$2,$17,$2,3
	move	$3,$8
	.align	3
.L22:
	ld	$4,0($3)
	daddiu	$2,$2,8
	daddiu	$3,$3,8
	bne	$2,$7,.L22
	sd	$4,-8($2)

	lw	$10,2264($16)
	bne	$10,$0,.L16
	daddiu	$2,$8,8

	move	$3,$sp
	b	.L25
	dlsa	$4,$5,$2,3

	.align	3
.L75:
	daddiu	$2,$2,8
.L25:
	ld	$5,0($8)
	daddiu	$3,$3,8
	move	$8,$2
	bne	$2,$4,.L75
	sd	$5,-8($3)

.L24:
	beq	$9,$0,.L15
	nop

	addiu	$4,$9,-1
	daddiu	$5,$sp,8
	dext	$4,$4,0,32
	daddiu	$3,$sp,400
	daddu	$4,$4,$22
	dlsa	$2,$22,$sp,3
	dlsa	$4,$4,$5,3
	.align	3
.L26:
	ld	$5,0($3)
	daddiu	$2,$2,8
	daddiu	$3,$3,8
	bne	$2,$4,.L26
	sd	$5,-8($2)

.L15:
	lw	$7,2296($16)
	blez	$7,.L38
	move	$9,$7

	move	$10,$0
	daddiu	$4,$16,16
.L81:
	move	$3,$0
	.align	3
.L27:
	gsmod	$2,$3,$6
	teq	$6,$0,7
	dlsa	$2,$2,$sp,3
	addiu	$3,$3,1
	ld	$2,136($2)
	daddiu	$4,$4,8
	slt	$5,$3,$7
	bne	$5,$0,.L27
	sd	$2,-8($4)

	bne	$10,$0,.L79
	ld	$25,%call16(memset)($28)

	lw	$8,2300($16)
	blez	$8,.L29
	move	$9,$7

.L42:
	daddiu	$4,$16,152
	move	$3,$0
	move	$5,$4
	.align	3
.L36:
	gsmod	$2,$3,$6
	teq	$6,$0,7
	dlsa	$2,$2,$sp,3
	daddiu	$5,$5,8
	ld	$2,0($2)
	addiu	$3,$3,1
	bne	$3,$8,.L36
	sd	$2,-8($5)

	blez	$7,.L80
	move	$2,$4

.L40:
	daddiu	$5,$16,16
	daddiu	$4,$16,2304
	move	$2,$0
	.align	3
.L33:
	ld	$7,0($5)
	addiu	$2,$2,1
	daddiu	$4,$4,4
	slt	$6,$2,$9
	daddiu	$5,$5,8
	lw	$7,24($7)
	bne	$6,$0,.L33
	sw	$7,-4($4)

	blez	$3,.L77
	ld	$31,600($sp)

	daddiu	$4,$16,152
	move	$2,$4
.L80:
	daddiu	$16,$16,2372
	move	$4,$0
	.align	3
.L34:
	ld	$6,0($2)
	addiu	$4,$4,1
	daddiu	$16,$16,4
	slt	$5,$4,$3
	daddiu	$2,$2,8
	lw	$6,24($6)
	bne	$5,$0,.L34
	sw	$6,-4($16)

	ld	$31,600($sp)
.L77:
	ld	$28,592($sp)
.L82:
	ld	$22,584($sp)
	ld	$21,576($sp)
	ld	$20,568($sp)
	ld	$19,560($sp)
	ld	$18,552($sp)
	ld	$17,544($sp)
	ld	$16,536($sp)
	jr	$31
	daddiu	$sp,$sp,608

.L76:
	beq	$10,$0,.L15
	move	$6,$0

	.align	3
.L16:
	lw	$7,2296($16)
	.align	3
.L78:
	bgtz	$7,.L81
	daddiu	$4,$16,16

	ld	$25,%call16(memset)($28)
	.align	3
.L79:
	li	$6,136			# 0x88
	move	$5,$0
	daddiu	$4,$16,152
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sw	$0,2300($16)

	lw	$9,2296($16)
.L29:
	blez	$9,.L77
	ld	$31,600($sp)

	b	.L40
	lw	$3,2300($16)

	.align	3
.L69:
	ld	$25,%call16(memset)($28)
	li	$6,272			# 0x110
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	daddiu	$4,$4,16

	ld	$25,%call16(memset)($28)
	daddiu	$4,$16,288
	li	$6,272			# 0x110
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	ld	$25,%call16(memset)($28)
	daddiu	$4,$16,2304
	li	$6,136			# 0x88
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	ld	$31,600($sp)
	sd	$0,2296($16)
	ld	$28,592($sp)
	ld	$22,584($sp)
	ld	$21,576($sp)
	ld	$20,568($sp)
	ld	$19,560($sp)
	ld	$18,552($sp)
	ld	$17,544($sp)
	ld	$16,536($sp)
	jr	$31
	daddiu	$sp,$sp,608

	.align	3
.L70:
	lw	$4,2112($4)
	addu	$3,$4,$3
	blez	$3,.L76
	move	$17,$0

	b	.L7
	move	$18,$0

	.align	3
.L38:
	lw	$8,2300($16)
	bgtz	$8,.L42
	ld	$31,600($sp)

	b	.L82
	ld	$28,592($sp)

	.align	3
.L72:
	bne	$17,$0,.L14
	move	$22,$0

	lw	$10,2264($16)
	beq	$10,$0,.L15
	nop

	b	.L78
	lw	$7,2296($16)

	.align	3
.L74:
	lw	$10,2264($16)
	beq	$10,$0,.L24
	nop

	b	.L78
	lw	$7,2296($16)

	.set	macro
	.set	reorder
	.end	_ZN4x2655Slice13setRefPicListERNS_7PicListE
	.size	_ZN4x2655Slice13setRefPicListERNS_7PicListE, .-_ZN4x2655Slice13setRefPicListERNS_7PicListE
	.align	2
	.align	3
	.globl	_ZN4x2655Slice14disableWeightsEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Slice14disableWeightsEv
	.type	_ZN4x2655Slice14disableWeightsEv, @function
_ZN4x2655Slice14disableWeightsEv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,1			# 0x1
	daddiu	$2,$4,560
	daddiu	$5,$4,1328
	.align	3
.L84:
	sb	$0,12($2)
	daddiu	$2,$2,48
	sw	$0,-48($2)
	sw	$3,-44($2)
	sw	$0,-40($2)
	sb	$0,-20($2)
	sw	$0,-32($2)
	sw	$3,-28($2)
	sw	$0,-24($2)
	sb	$0,-4($2)
	sw	$0,-16($2)
	sw	$3,-12($2)
	bne	$2,$5,.L84
	sw	$0,-8($2)

	daddiu	$4,$4,2096
	li	$3,1			# 0x1
	.align	3
.L85:
	sb	$0,12($2)
	daddiu	$2,$2,48
	sw	$0,-48($2)
	sw	$3,-44($2)
	sw	$0,-40($2)
	sb	$0,-20($2)
	sw	$0,-32($2)
	sw	$3,-28($2)
	sw	$0,-24($2)
	sb	$0,-4($2)
	sw	$0,-16($2)
	sw	$3,-12($2)
	bne	$4,$2,.L85
	sw	$0,-8($2)

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x2655Slice14disableWeightsEv
	.size	_ZN4x2655Slice14disableWeightsEv, .-_ZN4x2655Slice14disableWeightsEv
	.align	2
	.align	3
	.globl	_ZN4x2653RPS12sortDeltaPOCEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2653RPS12sortDeltaPOCEv
	.type	_ZN4x2653RPS12sortDeltaPOCEv, @function
_ZN4x2653RPS12sortDeltaPOCEv:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x10030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$17,16($sp)
	lw	$17,0($4)
	slt	$2,$17,2
	bne	$2,$0,.L90
	sd	$16,8($sp)

	move	$15,$4
	move	$24,$4
	li	$14,4			# 0x4
	move	$13,$0
	li	$12,1			# 0x1
	move	$11,$0
	move	$16,$0
	addiu	$17,$17,-1
	.align	3
.L93:
	lw	$10,80($15)
	daddiu	$2,$15,-4
	dsll	$9,$11,2
	lbu	$25,141($24)
	dsubu	$9,$2,$9
	move	$6,$24
	move	$2,$15
	.align	3
.L92:
	lw	$7,76($2)
	daddu	$5,$2,$13
	dsubu	$3,$6,$11
	daddu	$5,$5,$14
	slt	$8,$10,$7
	beq	$8,$0,.L91
	daddu	$3,$3,$12

	lbu	$8,140($6)
	sw	$7,76($5)
	sb	$8,140($3)
	sw	$10,76($2)
	sb	$25,140($6)
.L91:
	daddiu	$2,$2,-4
	bne	$2,$9,.L92
	daddiu	$6,$6,-1

	addiu	$16,$16,1
	daddiu	$11,$11,1
	daddiu	$12,$12,1
	daddiu	$15,$15,4
	daddiu	$24,$24,1
	daddiu	$13,$13,-4
	bne	$16,$17,.L93
	daddiu	$14,$14,4

.L90:
	lw	$3,4($4)
	dsra	$2,$3,1
	blez	$2,.L89
	addiu	$7,$3,-1

	addiu	$6,$2,-1
	daddiu	$8,$4,80
	dext	$6,$6,0,32
	daddiu	$2,$4,76
	daddiu	$5,$4,140
	dlsa	$3,$7,$4,2
	dlsa	$6,$6,$8,2
	daddu	$4,$4,$7
	.align	3
.L95:
	daddiu	$2,$2,4
	daddiu	$5,$5,1
	lw	$10,76($3)
	daddiu	$4,$4,-1
	lw	$8,-4($2)
	daddiu	$3,$3,-4
	lbu	$7,-1($5)
	lbu	$9,141($4)
	sw	$10,-4($2)
	sb	$9,-1($5)
	sw	$8,80($3)
	bne	$2,$6,.L95
	sb	$7,141($4)

.L89:
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2653RPS12sortDeltaPOCEv
	.size	_ZN4x2653RPS12sortDeltaPOCEv, .-_ZN4x2653RPS12sortDeltaPOCEv
	.align	2
	.align	3
	.globl	_ZNK4x2655Slice14realEndAddressEj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2655Slice14realEndAddressEj
	.type	_ZNK4x2655Slice14realEndAddressEj, @function
_ZNK4x2655Slice14realEndAddressEj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$3,$5,-1
	ld	$5,2472($4)
	lui	$13,%hi(%neg(%gp_rel(_ZNK4x2655Slice14realEndAddressEj)))
	ld	$4,0($4)
	daddu	$13,$13,$25
	daddiu	$13,$13,%lo(%neg(%gp_rel(_ZNK4x2655Slice14realEndAddressEj)))
	lw	$9,180($5)
	lw	$11,44($4)
	lw	$2,808($5)
	lw	$6,36($4)
	ld	$8,%got_disp(_ZN4x26513g_zscanToPelXE)($13)
	gsdivu	$10,$3,$2
	teq	$2,$0,7
	gsmodu	$5,$3,$2
	teq	$2,$0,7
	gsmodu	$12,$10,$11
	teq	$11,$0,7
	lw	$3,40($4)
	gsdivu	$4,$10,$11
	teq	$11,$0,7
	mul	$11,$12,$9
	ld	$7,%got_disp(_ZN4x26513g_zscanToPelYE)($13)
	subu	$6,$6,$11
	mul	$11,$4,$9
	subu	$9,$3,$11
	.align	3
.L103:
	dext	$3,$5,0,32
	daddu	$4,$8,$3
	lbu	$4,0($4)
	sltu	$4,$4,$6
	beq	$4,$0,.L101
	daddu	$3,$7,$3

	lbu	$3,0($3)
	sltu	$3,$3,$9
	bne	$3,$0,.L102
	nop

.L101:
	b	.L103
	addiu	$5,$5,-1

	.align	3
.L102:
	addiu	$5,$5,1
	bne	$2,$5,.L106
	mul	$3,$2,$10

	addiu	$10,$10,1
	move	$5,$0
	mul	$3,$2,$10
.L106:
	jr	$31
	addu	$2,$3,$5

	.set	macro
	.set	reorder
	.end	_ZNK4x2655Slice14realEndAddressEj
	.size	_ZNK4x2655Slice14realEndAddressEj, .-_ZNK4x2655Slice14realEndAddressEj
	.ident	"GCC: (GNU) 7.3.0"
