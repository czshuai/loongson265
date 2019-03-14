	.file	1 "deblock.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.align	3
	.globl	_ZN4x2657Deblock21setEdgefilterMultipleEjiihPhj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657Deblock21setEdgefilterMultipleEjiihPhj
	.type	_ZN4x2657Deblock21setEdgefilterMultipleEjiihPhj, @function
_ZN4x2657Deblock21setEdgefilterMultipleEjiihPhj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$9,$0,.L18
	lui	$12,%hi(%neg(%gp_rel(_ZN4x2657Deblock21setEdgefilterMultipleEjiihPhj)))

	dext	$4,$4,0,32
	daddu	$12,$12,$25
	move	$10,$0
	daddiu	$12,$12,%lo(%neg(%gp_rel(_ZN4x2657Deblock21setEdgefilterMultipleEjiihPhj)))
	ld	$2,%got_disp(_ZN4x26515g_zscanToRasterE)($12)
	ld	$11,%got_disp(_ZN4x26515g_rasterToZscanE)($12)
	dlsa	$4,$4,$2,2
	lw	$2,0($4)
	addu	$4,$6,$2
	b	.L5
	lsa	$6,$6,$2,4

	.align	3
.L16:
	lw	$2,0($3)
	addiu	$10,$10,1
	dext	$2,$2,0,32
	daddu	$2,$8,$2
	beq	$9,$10,.L18
	sb	$7,0($2)

.L5:
	lsa	$2,$10,$4,4
	addu	$3,$6,$10
	dext	$2,$2,0,32
	dext	$3,$3,0,32
	dlsa	$2,$2,$11,2
	bne	$5,$0,.L16
	dlsa	$3,$3,$11,2

	lw	$2,0($2)
	addiu	$10,$10,1
	dext	$2,$2,0,32
	daddu	$2,$8,$2
	bne	$9,$10,.L5
	sb	$7,0($2)

.L18:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x2657Deblock21setEdgefilterMultipleEjiihPhj
	.size	_ZN4x2657Deblock21setEdgefilterMultipleEjiihPhj, .-_ZN4x2657Deblock21setEdgefilterMultipleEjiihPhj
	.align	2
	.align	3
	.globl	_ZN4x2657Deblock15setEdgefilterTUEPKNS_6CUDataEjjiPh
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657Deblock15setEdgefilterTUEPKNS_6CUDataEjjiPh
	.type	_ZN4x2657Deblock15setEdgefilterTUEPKNS_6CUDataEjjiPh, @function
_ZN4x2657Deblock15setEdgefilterTUEPKNS_6CUDataEjjiPh:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	dext	$3,$5,0,32
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2657Deblock15setEdgefilterTUEPKNS_6CUDataEjjiPh)))
	sd	$21,40($sp)
	move	$21,$4
	daddu	$28,$28,$25
	sd	$18,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2657Deblock15setEdgefilterTUEPKNS_6CUDataEjjiPh)))
	move	$18,$8
	sd	$17,8($sp)
	move	$17,$7
	sd	$31,72($sp)
	sd	$23,56($sp)
	sd	$22,48($sp)
	sd	$20,32($sp)
	sd	$19,24($sp)
	sd	$16,0($sp)
	ld	$4,256($4)
	ld	$2,144($21)
	daddu	$4,$4,$3
	daddu	$2,$2,$3
	lbu	$4,0($4)
	lbu	$2,0($2)
	sltu	$4,$6,$4
	beq	$4,$0,.L20
	subu	$2,$2,$6

	sll	$2,$2,1
	ld	$22,%got_disp(_ZN4x2657Deblock15setEdgefilterTUEPKNS_6CUDataEjjiPh)($28)
	li	$23,1			# 0x1
	addiu	$2,$2,-6
	move	$16,$5
	addiu	$20,$6,1
	sll	$23,$23,$2
	li	$19,4			# 0x4
	move	$5,$16
.L35:
	move	$8,$18
	move	$7,$17
	move	$6,$20
	move	$4,$21
	move	$25,$22
	addiu	$19,$19,-1
	.reloc	1f,R_MIPS_JALR,_ZN4x2657Deblock15setEdgefilterTUEPKNS_6CUDataEjjiPh
1:	jalr	$25
	addu	$16,$23,$16

	bne	$19,$0,.L35
	move	$5,$16

.L19:
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

	.align	3
.L20:
	addiu	$2,$2,-2
	li	$7,1			# 0x1
	sll	$7,$7,$2
	beq	$7,$0,.L19
	ld	$2,%got_disp(_ZN4x26515g_zscanToRasterE)($28)

	move	$4,$0
	li	$8,2			# 0x2
	ld	$6,%got_disp(_ZN4x26515g_rasterToZscanE)($28)
	dlsa	$3,$3,$2,2
	b	.L25
	lw	$5,0($3)

	.align	3
.L34:
	lw	$2,0($3)
.L24:
	dext	$2,$2,0,32
	addiu	$4,$4,1
	daddu	$2,$18,$2
	beq	$7,$4,.L19
	sb	$8,0($2)

.L25:
	lsa	$2,$4,$5,4
	addu	$3,$5,$4
	dext	$2,$2,0,32
	dext	$3,$3,0,32
	dlsa	$2,$2,$6,2
	bne	$17,$0,.L34
	dlsa	$3,$3,$6,2

	b	.L24
	lw	$2,0($2)

	.set	macro
	.set	reorder
	.end	_ZN4x2657Deblock15setEdgefilterTUEPKNS_6CUDataEjjiPh
	.size	_ZN4x2657Deblock15setEdgefilterTUEPKNS_6CUDataEjjiPh, .-_ZN4x2657Deblock15setEdgefilterTUEPKNS_6CUDataEjjiPh
	.align	2
	.align	3
	.globl	_ZN4x2657Deblock15setEdgefilterPUEPKNS_6CUDataEjiPhj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657Deblock15setEdgefilterPUEPKNS_6CUDataEjiPhj
	.type	_ZN4x2657Deblock15setEdgefilterPUEPKNS_6CUDataEjiPhj, @function
_ZN4x2657Deblock15setEdgefilterPUEPKNS_6CUDataEjiPhj:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,200($4)
	dext	$5,$5,0,32
	dext	$10,$8,1,31
	daddu	$2,$2,$5
	lbu	$3,0($2)
	sltu	$3,$3,8
	beq	$3,$0,.L85
	dext	$4,$8,2,30

	lui	$12,%hi(%neg(%gp_rel(_ZN4x2657Deblock15setEdgefilterPUEPKNS_6CUDataEjiPhj)))
	daddiu	$sp,$sp,-16
	daddu	$12,$12,$25
	sd	$28,8($sp)
	daddiu	$12,$12,%lo(%neg(%gp_rel(_ZN4x2657Deblock15setEdgefilterPUEPKNS_6CUDataEjiPhj)))
	lbu	$2,0($2)
	ld	$3,%got_page(.L39)($12)
	daddiu	$3,$3,%got_ofst(.L39)
	dlsa	$2,$2,$3,3
	ld	$2,0($2)
	daddu	$2,$2,$12
	jr	$2
	nop

	.rdata
	.align	3
	.align	2
.L39:
	.gpdword	.L36
	.gpdword	.L38
	.gpdword	.L40
	.gpdword	.L41
	.gpdword	.L42
	.gpdword	.L43
	.gpdword	.L44
	.gpdword	.L45
	.text
	.align	3
.L38:
	li	$2,1			# 0x1
	beq	$6,$2,.L82
	nop

.L36:
	ld	$28,8($sp)
.L84:
.L86:
.L87:
.L88:
.L89:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L45:
	bne	$6,$0,.L84
	ld	$28,8($sp)

	beq	$8,$0,.L84
	ld	$2,%got_disp(_ZN4x26515g_zscanToRasterE)($12)

	li	$3,1			# 0x1
	ld	$9,%got_disp(_ZN4x26515g_rasterToZscanE)($12)
	dlsa	$5,$5,$2,2
	lw	$2,0($5)
	addu	$2,$2,$8
	subu	$4,$2,$4
	lsa	$8,$8,$4,4
	.align	3
.L56:
	dext	$2,$4,0,32
	addiu	$4,$4,16
	dlsa	$2,$2,$9,2
	lwu	$2,0($2)
	daddu	$2,$7,$2
	bne	$8,$4,.L56
	sb	$3,0($2)

	b	.L84
	ld	$28,8($sp)

	.align	3
.L40:
	bne	$6,$0,.L84
	ld	$28,8($sp)

	beq	$8,$0,.L86
	ld	$2,%got_disp(_ZN4x26515g_zscanToRasterE)($12)

	li	$3,1			# 0x1
	ld	$9,%got_disp(_ZN4x26515g_rasterToZscanE)($12)
	dlsa	$5,$5,$2,2
	lw	$2,0($5)
	addu	$4,$2,$10
	lsa	$8,$8,$4,4
	.align	3
.L49:
	dext	$2,$4,0,32
	addiu	$4,$4,16
	dlsa	$2,$2,$9,2
	lwu	$2,0($2)
	daddu	$2,$7,$2
	bne	$8,$4,.L49
	sb	$3,0($2)

	b	.L84
	ld	$28,8($sp)

	.align	3
.L41:
	beq	$8,$0,.L36
	ld	$4,%got_disp(_ZN4x26515g_zscanToRasterE)($12)

	move	$3,$0
	li	$11,1			# 0x1
	ld	$9,%got_disp(_ZN4x26515g_rasterToZscanE)($12)
	dlsa	$5,$5,$4,2
	lw	$5,0($5)
	addu	$4,$10,$5
	b	.L52
	lsa	$5,$10,$5,4

	.align	3
.L83:
	addu	$2,$5,$3
	dext	$2,$2,0,32
	dlsa	$2,$2,$9,2
	lw	$2,0($2)
.L51:
	dext	$2,$2,0,32
	addiu	$3,$3,1
	daddu	$2,$7,$2
	beq	$8,$3,.L36
	sb	$11,0($2)

.L52:
	bne	$6,$0,.L83
	lsa	$2,$3,$4,4

	dext	$2,$2,0,32
	dlsa	$2,$2,$9,2
	b	.L51
	lw	$2,0($2)

	.align	3
.L42:
	li	$2,1			# 0x1
	bne	$6,$2,.L84
	ld	$28,8($sp)

	beq	$8,$0,.L87
	ld	$2,%got_disp(_ZN4x26515g_zscanToRasterE)($12)

	li	$3,1			# 0x1
	ld	$9,%got_disp(_ZN4x26515g_rasterToZscanE)($12)
	dlsa	$5,$5,$2,2
	lw	$2,0($5)
	lsa	$4,$4,$2,4
	addu	$8,$8,$4
	.align	3
.L53:
	dext	$2,$4,0,32
	addiu	$4,$4,1
	dlsa	$2,$2,$9,2
	lwu	$2,0($2)
	daddu	$2,$7,$2
	bne	$8,$4,.L53
	sb	$3,0($2)

	b	.L84
	ld	$28,8($sp)

	.align	3
.L43:
	li	$2,1			# 0x1
	bne	$6,$2,.L84
	ld	$28,8($sp)

	beq	$8,$0,.L88
	subu	$4,$8,$4

	ld	$2,%got_disp(_ZN4x26515g_zscanToRasterE)($12)
	li	$3,1			# 0x1
	ld	$9,%got_disp(_ZN4x26515g_rasterToZscanE)($12)
	dlsa	$5,$5,$2,2
	lw	$2,0($5)
	lsa	$4,$4,$2,4
	addu	$8,$8,$4
	.align	3
.L55:
	dext	$2,$4,0,32
	addiu	$4,$4,1
	dlsa	$2,$2,$9,2
	lwu	$2,0($2)
	daddu	$2,$7,$2
	bne	$8,$4,.L55
	sb	$3,0($2)

	b	.L84
	ld	$28,8($sp)

	.align	3
.L44:
	bne	$6,$0,.L84
	ld	$28,8($sp)

	beq	$8,$0,.L89
	ld	$2,%got_disp(_ZN4x26515g_zscanToRasterE)($12)

	li	$3,1			# 0x1
	ld	$9,%got_disp(_ZN4x26515g_rasterToZscanE)($12)
	dlsa	$5,$5,$2,2
	lw	$2,0($5)
	addu	$4,$2,$4
	lsa	$8,$8,$4,4
	.align	3
.L54:
	dext	$2,$4,0,32
	addiu	$4,$4,16
	dlsa	$2,$2,$9,2
	lwu	$2,0($2)
	daddu	$2,$7,$2
	bne	$8,$4,.L54
	sb	$3,0($2)

	b	.L84
	ld	$28,8($sp)

.L85:
	jr	$31
	nop

	.align	3
.L82:
	beq	$8,$0,.L36
	move	$4,$10

	ld	$2,%got_disp(_ZN4x26515g_zscanToRasterE)($12)
	li	$3,1			# 0x1
	ld	$9,%got_disp(_ZN4x26515g_rasterToZscanE)($12)
	dlsa	$5,$5,$2,2
	lw	$10,0($5)
	lsa	$4,$4,$10,4
	addu	$8,$8,$4
	.align	3
.L48:
	dext	$2,$4,0,32
	addiu	$4,$4,1
	dlsa	$2,$2,$9,2
	lwu	$2,0($2)
	daddu	$2,$7,$2
	bne	$8,$4,.L48
	sb	$3,0($2)

	b	.L84
	ld	$28,8($sp)

	.set	macro
	.set	reorder
	.end	_ZN4x2657Deblock15setEdgefilterPUEPKNS_6CUDataEjiPhj
	.size	_ZN4x2657Deblock15setEdgefilterPUEPKNS_6CUDataEjiPhj, .-_ZN4x2657Deblock15setEdgefilterPUEPKNS_6CUDataEjiPhj
	.align	2
	.align	3
	.globl	_ZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKh
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKh
	.type	_ZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKh, @function
_ZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKh:
	.frame	$sp,64,$31		# vars= 16, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKh)))
	daddu	$28,$28,$25
	sd	$19,40($sp)
	move	$19,$7
	sd	$17,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKh)))
	move	$17,$4
	sd	$16,16($sp)
	move	$16,$6
	sd	$31,56($sp)
	bne	$5,$0,.L91
	sd	$18,32($sp)

	ld	$25,%call16(_ZNK4x2656CUData9getPULeftERjj)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData9getPULeftERjj
1:	jalr	$25
	move	$5,$sp

	move	$18,$2
.L92:
	lwu	$4,0($sp)
	li	$3,2			# 0x2
	ld	$2,192($18)
	daddu	$2,$2,$4
	lbu	$2,0($2)
	beq	$2,$3,.L117
	dext	$16,$16,0,32

	ld	$2,192($17)
	daddu	$2,$2,$16
	lbu	$2,0($2)
	beq	$2,$3,.L117
	daddu	$19,$19,$16

	lbu	$2,0($19)
	sltu	$2,$2,2
	bne	$2,$0,.L94
	nop

	ld	$2,288($17)
	ld	$3,256($17)
	daddu	$2,$2,$16
	daddu	$3,$3,$16
	lbu	$2,0($2)
	lbu	$3,0($3)
	sra	$2,$2,$3
	andi	$2,$2,0x1
	bne	$2,$0,.L117
	li	$2,1			# 0x1

	ld	$2,256($18)
	ld	$3,288($18)
	daddu	$3,$3,$4
	daddu	$4,$2,$4
	lbu	$2,0($3)
	lbu	$3,0($4)
	sra	$2,$2,$3
	andi	$2,$2,0x1
	bne	$2,$0,.L117
	li	$2,1			# 0x1

.L94:
	ld	$19,%got_page(_ZGVZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv)($28)
	lbu	$2,%got_ofst(_ZGVZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv)($19)
	sync
	andi	$2,$2,0x00ff
	beq	$2,$0,.L126
	ld	$25,%call16(__cxa_guard_acquire)($28)

.L98:
	lwu	$2,0($sp)
.L132:
	ld	$4,168($18)
	ld	$3,168($17)
	ld	$9,56($18)
	daddu	$4,$4,$2
	ld	$5,56($17)
	lb	$4,0($4)
	daddu	$3,$3,$16
	lb	$3,0($3)
	dlsa	$4,$4,$9,3
	ld	$4,16($4)
	dlsa	$3,$3,$5,3
	beq	$4,$0,.L113
	ld	$10,16($3)

	ld	$3,376($18)
	dlsa	$11,$2,$3,2
.L100:
	beq	$10,$0,.L114
	ld	$3,%got_page(_ZZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv)($28)

	ld	$3,376($17)
	dlsa	$8,$16,$3,2
.L101:
	lw	$3,2264($5)
	li	$7,1			# 0x1
	beq	$3,$7,.L127
	nop

.L102:
	ld	$7,176($18)
	ld	$3,176($17)
	daddu	$7,$7,$2
	lb	$6,0($7)
	daddu	$3,$3,$16
	lb	$3,0($3)
	dlsa	$6,$6,$9,3
	ld	$6,152($6)
	dlsa	$5,$3,$5,3
	beq	$6,$0,.L128
	ld	$3,152($5)

	ld	$5,384($18)
	dlsa	$7,$2,$5,2
.L105:
	beq	$3,$0,.L115
	nop

	ld	$5,384($17)
	dlsa	$16,$16,$5,2
.L106:
	beq	$4,$10,.L129
	nop

	bne	$4,$3,.L117
	li	$2,1			# 0x1

	beq	$10,$6,.L130
	nop

	.align	3
.L96:
	li	$2,1			# 0x1
.L117:
	ld	$31,56($sp)
.L133:
	ld	$28,48($sp)
	ld	$19,40($sp)
	ld	$18,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L91:
	ld	$25,%call16(_ZNK4x2656CUData10getPUAboveERjj)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getPUAboveERjj
1:	jalr	$25
	move	$5,$sp

	b	.L92
	move	$18,$2

	.align	3
.L127:
	lw	$6,2264($9)
	bne	$6,$3,.L102
	nop

	bne	$4,$10,.L117
	li	$2,1			# 0x1

	lh	$3,0($11)
	lh	$2,0($8)
	subu	$2,$2,$3
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	slt	$2,$2,4
	beq	$2,$0,.L96
	nop

	lh	$2,2($8)
	lh	$3,2($11)
.L124:
	subu	$2,$2,$3
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	slt	$2,$2,4
	b	.L117
	sltu	$2,$2,1

	.align	3
.L126:
	.reloc	1f,R_MIPS_JALR,__cxa_guard_acquire
1:	jalr	$25
	daddiu	$4,$19,%got_ofst(_ZGVZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv)

	beq	$2,$0,.L98
	ld	$25,%call16(__cxa_guard_release)($28)

	daddiu	$4,$19,%got_ofst(_ZGVZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv)
	ld	$2,%got_page(_ZZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv)($28)
	.reloc	1f,R_MIPS_JALR,__cxa_guard_release
1:	jalr	$25
	sw	$0,%got_ofst(_ZZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv)($2)

	b	.L132
	lwu	$2,0($sp)

	.align	3
.L128:
	ld	$2,%got_page(_ZZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv)($28)
	b	.L105
	daddiu	$7,$2,%got_ofst(_ZZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv)

	.align	3
.L114:
	b	.L101
	daddiu	$8,$3,%got_ofst(_ZZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv)

	.align	3
.L113:
	ld	$3,%got_page(_ZZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv)($28)
	b	.L100
	daddiu	$11,$3,%got_ofst(_ZZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv)

	.align	3
.L129:
	bne	$6,$3,.L117
	li	$2,1			# 0x1

	bne	$4,$6,.L131
	lh	$5,0($11)

	lh	$4,0($8)
	subu	$2,$4,$5
	sra	$6,$2,31
	xor	$2,$6,$2
	subu	$2,$2,$6
	slt	$2,$2,4
	beq	$2,$0,.L110
	lh	$3,0($16)

	lh	$6,2($11)
	lh	$2,2($8)
	subu	$2,$2,$6
	sra	$6,$2,31
	xor	$2,$6,$2
	subu	$2,$2,$6
	slt	$2,$2,4
	beq	$2,$0,.L110
	nop

	lh	$2,0($7)
	subu	$2,$3,$2
	sra	$6,$2,31
	xor	$2,$6,$2
	subu	$2,$2,$6
	slt	$2,$2,4
	beq	$2,$0,.L110
	nop

	lh	$9,2($7)
	lh	$6,2($16)
	subu	$6,$6,$9
	sra	$9,$6,31
	xor	$6,$9,$6
	subu	$6,$6,$9
	slt	$6,$6,4
	bne	$6,$0,.L117
	move	$2,$0

	.align	3
.L110:
	subu	$3,$3,$5
	sra	$2,$3,31
	xor	$3,$2,$3
	subu	$3,$3,$2
	slt	$3,$3,4
	beq	$3,$0,.L117
	li	$2,1			# 0x1

	lh	$3,2($11)
	lh	$2,2($16)
	subu	$2,$2,$3
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	slt	$2,$2,4
	beq	$2,$0,.L117
	li	$2,1			# 0x1

	lh	$2,0($7)
	subu	$4,$4,$2
	sra	$3,$4,31
	xor	$2,$3,$4
	subu	$2,$2,$3
	slt	$2,$2,4
	beq	$2,$0,.L117
	li	$2,1			# 0x1

	lh	$3,2($7)
	lh	$2,2($8)
	subu	$2,$2,$3
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	slt	$2,$2,4
	beq	$2,$0,.L96
	move	$2,$0

	b	.L133
	ld	$31,56($sp)

	.align	3
.L115:
	ld	$16,%got_page(_ZZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv)($28)
	b	.L106
	daddiu	$16,$16,%got_ofst(_ZZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv)

	.align	3
.L130:
	lh	$2,0($11)
	lh	$3,0($16)
	subu	$3,$3,$2
	sra	$2,$3,31
	xor	$3,$2,$3
	subu	$3,$3,$2
	slt	$3,$3,4
	beq	$3,$0,.L117
	li	$2,1			# 0x1

	lh	$3,2($11)
	lh	$2,2($16)
	subu	$2,$2,$3
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	slt	$2,$2,4
	beq	$2,$0,.L117
	li	$2,1			# 0x1

	lh	$3,0($7)
	lh	$2,0($8)
	subu	$2,$2,$3
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	slt	$2,$2,4
	beq	$2,$0,.L96
	nop

	lh	$2,2($8)
	b	.L124
	lh	$3,2($7)

	.align	3
.L131:
	lh	$2,0($8)
	subu	$2,$2,$5
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	slt	$2,$2,4
	beq	$2,$0,.L117
	li	$2,1			# 0x1

	lh	$3,2($11)
	lh	$2,2($8)
	subu	$2,$2,$3
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	slt	$2,$2,4
	beq	$2,$0,.L117
	li	$2,1			# 0x1

	lh	$3,0($7)
	lh	$2,0($16)
	subu	$2,$2,$3
	sra	$3,$2,31
	xor	$2,$3,$2
	subu	$2,$2,$3
	slt	$2,$2,4
	beq	$2,$0,.L96
	nop

	lh	$2,2($16)
	b	.L124
	lh	$3,2($7)

	.set	macro
	.set	reorder
	.end	_ZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKh
	.size	_ZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKh, .-_ZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKh
	.align	2
	.align	3
	.globl	_ZN4x2657Deblock14edgeFilterLumaEPKNS_6CUDataEjjiiPKh
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657Deblock14edgeFilterLumaEPKNS_6CUDataEjjiiPKh
	.type	_ZN4x2657Deblock14edgeFilterLumaEPKNS_6CUDataEjjiiPKh, @function
_ZN4x2657Deblock14edgeFilterLumaEPKNS_6CUDataEjjiiPKh:
	.frame	$sp,336,$31		# vars= 240, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-336
	dext	$5,$5,0,32
	sd	$28,312($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2657Deblock14edgeFilterLumaEPKNS_6CUDataEjjiiPKh)))
	sll	$14,$8,2
	sd	$23,304($sp)
	daddu	$28,$28,$25
	sd	$31,328($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2657Deblock14edgeFilterLumaEPKNS_6CUDataEjjiiPKh)))
	sd	$fp,320($sp)
	sd	$22,296($sp)
	sd	$21,288($sp)
	sd	$20,280($sp)
	sd	$19,272($sp)
	sd	$18,264($sp)
	sd	$17,256($sp)
	sd	$16,248($sp)
	ld	$2,48($4)
	ld	$13,56($4)
	lwu	$10,96($4)
	ld	$3,32($2)
	ld	$11,8($13)
	ld	$15,88($3)
	ld	$12,104($3)
	ld	$2,24($3)
	dlsa	$10,$10,$15,3
	lw	$24,12($11)
	dlsa	$12,$5,$12,3
	ld	$10,0($10)
	ld	$15,0($12)
	lw	$12,16($11)
	sll	$24,$24,1
	ld	$23,56($3)
	daddu	$3,$10,$15
	lbu	$10,24($11)
	daddu	$2,$2,$3
	sll	$3,$12,1
	sd	$24,128($sp)
	sd	$23,96($sp)
	sd	$10,120($sp)
	bne	$7,$0,.L135
	sd	$3,200($sp)

	li	$3,1			# 0x1
	daddu	$2,$2,$14
	sd	$3,96($sp)
.L136:
	ld	$3,0($13)
	lw	$3,60($3)
	srl	$3,$3,$6
	beq	$3,$0,.L134
	sd	$3,64($sp)

	ld	$6,96($sp)
	move	$16,$2
	dsll	$22,$23,2
	sd	$9,88($sp)
	move	$20,$0
	sd	$4,32($sp)
	dlsa	$4,$23,$23,1
	dsll	$3,$6,2
	sd	$4,224($sp)
	dsubu	$10,$0,$6
	dsubu	$9,$6,$3
	dlsa	$21,$10,$2,1
	sd	$7,72($sp)
	daddu	$3,$9,$4
	ld	$4,%got_disp(_ZN4x26515g_rasterToZscanE)($28)
	dsll	$11,$6,1
	daddu	$fp,$2,$3
	sd	$9,56($sp)
	sd	$10,136($sp)
	sd	$4,80($sp)
	ld	$4,%got_disp(_ZN4x26515g_zscanToRasterE)($28)
	sd	$11,24($sp)
	dlsa	$5,$5,$4,2
	daddiu	$4,$7,750
	lw	$12,0($5)
	daddu	$5,$6,$3
	daddu	$6,$11,$6
	daddu	$2,$2,$5
	sll	$7,$8,4
	sd	$6,208($sp)
	sd	$2,16($sp)
	li	$2,-1			# 0xffffffffffffffff
	dsll	$6,$10,2
	sd	$2,48($sp)
	sd	$2,40($sp)
	dsubu	$2,$0,$9
	sd	$2,144($sp)
	ld	$2,%got_disp(_ZN4x26510primitivesE)($28)
	sd	$12,184($sp)
	sd	$7,176($sp)
	dlsa	$2,$4,$2,3
	sd	$6,216($sp)
	sd	$2,232($sp)
	addu	$2,$8,$12
	sw	$2,192($sp)
	.align	3
.L153:
	ld	$2,72($sp)
	beq	$2,$0,.L138
	lw	$2,192($sp)

	ld	$3,184($sp)
	ld	$2,176($sp)
	addu	$2,$2,$3
	ld	$3,80($sp)
	addu	$2,$2,$20
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	lw	$6,0($2)
	ld	$2,88($sp)
	dext	$18,$6,0,32
	daddu	$2,$2,$18
	lbu	$17,0($2)
	beq	$17,$0,.L152
	ld	$25,%call16(_ZNK4x2656CUData10getPUAboveERjj)($28)

	move	$5,$sp
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getPUAboveERjj
1:	jalr	$25
	ld	$4,32($sp)

	ld	$3,120($sp)
.L192:
	beq	$3,$0,.L142
	lwu	$4,0($sp)

	ld	$3,32($sp)
	ld	$5,160($2)
	ld	$3,160($3)
	daddu	$5,$5,$4
	lbu	$5,0($5)
	daddu	$3,$3,$18
	lbu	$3,0($3)
	addiu	$5,$5,-1
	sd	$5,40($sp)
	addiu	$3,$3,-1
	sd	$3,48($sp)
	or	$3,$5,$3
	beq	$3,$0,.L154
	nop

.L142:
	ld	$3,32($sp)
	ld	$2,136($2)
	ld	$3,136($3)
	daddu	$2,$2,$4
	lb	$2,0($2)
	daddu	$18,$3,$18
	lb	$12,0($18)
	addu	$12,$12,$2
	ld	$2,128($sp)
	addiu	$12,$12,1
	sra	$12,$12,1
	addu	$2,$2,$12
	bltz	$2,.L155
	slt	$3,$2,51

	beq	$3,$0,.L143
	li	$13,64			# 0x40

	ld	$3,%got_disp(_ZN4x2657Deblock11s_betaTableE)($28)
	daddu	$2,$3,$2
	lbu	$13,0($2)
.L143:
	ld	$18,144($sp)
	ld	$7,56($sp)
	ld	$9,96($sp)
	ld	$15,136($sp)
	daddu	$8,$fp,$18
	dsubu	$14,$fp,$7
	daddu	$11,$16,$7
	ld	$7,16($sp)
	daddu	$24,$9,$fp
	daddu	$10,$16,$9
	lbu	$5,0($21)
	daddu	$4,$16,$15
	daddu	$14,$14,$15
	lbu	$15,0($8)
	ld	$8,24($sp)
	daddu	$3,$24,$18
	daddu	$24,$9,$24
	lbu	$6,0($10)
	daddu	$24,$24,$18
	sll	$9,$5,1
	lbu	$7,0($7)
	lbu	$3,0($3)
	daddu	$25,$16,$8
	lbu	$18,0($fp)
	sll	$8,$6,1
	lbu	$2,0($16)
	sll	$7,$7,1
	lbu	$11,0($11)
	sll	$3,$3,1
	lbu	$25,0($25)
	subu	$7,$18,$7
	subu	$3,$15,$3
	lbu	$24,0($24)
	subu	$8,$2,$8
	lbu	$4,0($4)
	subu	$11,$11,$9
	lbu	$14,0($14)
	addu	$8,$8,$25
	addu	$3,$3,$24
	sra	$18,$8,31
	addu	$11,$11,$4
	sra	$24,$3,31
	addu	$7,$7,$14
	sra	$19,$11,31
	sra	$25,$7,31
	xor	$11,$19,$11
	xor	$7,$25,$7
	xor	$3,$24,$3
	xor	$8,$18,$8
	subu	$19,$11,$19
	subu	$3,$3,$24
	subu	$8,$8,$18
	subu	$7,$7,$25
	addu	$24,$8,$19
	addu	$25,$3,$7
	addu	$11,$24,$25
	slt	$11,$11,$13
	beq	$11,$0,.L152
	move	$9,$16

	ld	$11,200($sp)
	lsa	$17,$17,$11,1
	addiu	$17,$17,-2
	addu	$12,$17,$12
	bltz	$12,.L157
	slt	$17,$12,53

	beq	$17,$0,.L144
	li	$11,24			# 0x18

	ld	$11,%got_disp(_ZN4x2657Deblock9s_tcTableE)($28)
	daddu	$12,$11,$12
	lbu	$11,0($12)
.L144:
	sra	$12,$13,2
	sll	$24,$24,1
	slt	$24,$24,$12
	beq	$24,$0,.L191
	sll	$25,$25,1

	slt	$25,$25,$12
	beq	$25,$0,.L145
	sll	$12,$11,2

	ld	$12,216($sp)
	sra	$17,$13,3
	move	$18,$17
	sd	$18,104($sp)
	daddu	$25,$16,$12
	ld	$12,208($sp)
	daddu	$24,$16,$12
	lbu	$12,0($25)
	lbu	$24,0($24)
	subu	$12,$12,$4
	sra	$18,$12,31
	subu	$24,$24,$2
	sra	$17,$24,31
	xor	$12,$18,$12
	subu	$12,$12,$18
	xor	$24,$17,$24
	ld	$18,104($sp)
	subu	$24,$24,$17
	addu	$12,$12,$24
	slt	$12,$12,$18
	bne	$12,$0,.L187
	subu	$24,$4,$2

	.align	3
.L191:
	sll	$12,$11,2
.L145:
	sra	$14,$13,1
.L194:
	addu	$3,$3,$8
	ld	$8,40($sp)
	addu	$13,$14,$13
	addu	$7,$7,$19
	sd	$20,152($sp)
	dsrl	$13,$13,3
	addu	$24,$12,$11
	sd	$fp,160($sp)
	slt	$7,$7,$13
	slt	$3,$3,$13
	sd	$16,168($sp)
	movz	$8,$0,$7
	ld	$7,24($sp)
	sra	$15,$11,1
	sll	$24,$24,1
	move	$14,$21
	sd	$8,104($sp)
	li	$13,4			# 0x4
	subu	$25,$0,$11
	dsubu	$12,$10,$7
	ld	$7,48($sp)
	li	$17,255			# 0xff
	subu	$18,$0,$15
	movz	$7,$0,$3
	sd	$7,112($sp)
.L151:
	subu	$3,$6,$5
	subu	$7,$2,$4
	sll	$8,$3,2
	lsa	$7,$7,$7,3
	subu	$3,$3,$8
	addiu	$13,$13,-1
	addu	$7,$7,$3
	addiu	$7,$7,8
	sra	$7,$7,4
	sra	$16,$7,31
	slt	$3,$25,$7
	move	$8,$7
	xor	$7,$16,$7
	movz	$8,$25,$3
	subu	$7,$7,$16
	move	$3,$8
	slt	$7,$7,$24
	slt	$8,$11,$8
	beq	$7,$0,.L148
	movn	$3,$11,$8

	ld	$7,56($sp)
	daddu	$fp,$9,$7
	ld	$7,24($sp)
	daddu	$20,$9,$7
	ld	$7,40($sp)
	and	$8,$3,$7
	ld	$7,48($sp)
	addu	$8,$8,$4
	slt	$19,$8,256
	movz	$8,$17,$19
	and	$7,$3,$7
	subu	$7,$2,$7
	slt	$16,$7,256
	movz	$7,$17,$16
	slt	$16,$8,0
	movn	$8,$0,$16
	slt	$16,$7,0
	movn	$7,$0,$16
	sb	$8,0($12)
	sb	$7,0($9)
	ld	$7,104($sp)
	beq	$7,$0,.L149
	nop

	lbu	$7,0($fp)
	addu	$4,$7,$4
	addiu	$4,$4,1
	sra	$4,$4,1
	subu	$4,$4,$5
	addu	$4,$4,$3
	sra	$4,$4,1
	slt	$7,$4,$18
	movn	$4,$18,$7
	slt	$7,$15,$4
	movn	$4,$15,$7
	addu	$5,$4,$5
	slt	$4,$5,256
	movz	$5,$17,$4
	slt	$4,$5,0
	movn	$5,$0,$4
	sb	$5,0($14)
.L149:
	ld	$4,112($sp)
	beq	$4,$0,.L148
	nop

	lbu	$4,0($20)
	addu	$2,$4,$2
	addiu	$2,$2,1
	sra	$2,$2,1
	subu	$2,$2,$6
	subu	$3,$2,$3
	sra	$3,$3,1
	slt	$2,$3,$18
	movn	$3,$18,$2
	slt	$2,$15,$3
	movn	$3,$15,$2
	addu	$6,$3,$6
	slt	$2,$6,256
	movz	$6,$17,$2
	slt	$2,$6,0
	movn	$6,$0,$2
	sb	$6,0($10)
.L148:
	daddu	$9,$9,$23
	daddu	$10,$10,$23
	daddu	$12,$12,$23
	beq	$13,$0,.L188
	daddu	$14,$14,$23

	lbu	$2,0($9)
	lbu	$4,0($12)
	lbu	$6,0($10)
	b	.L151
	lbu	$5,0($14)

	.align	3
.L187:
	sll	$12,$11,2
	sra	$18,$24,31
	addu	$17,$12,$11
	addiu	$17,$17,1
	xor	$24,$18,$24
	dsrl	$17,$17,1
	subu	$24,$24,$18
	slt	$24,$24,$17
	beq	$24,$0,.L145
	sd	$17,112($sp)

	ld	$24,224($sp)
	daddu	$25,$25,$24
	daddu	$17,$24,$16
	ld	$24,208($sp)
	daddu	$17,$17,$24
	lbu	$24,0($25)
	lbu	$25,0($17)
	subu	$24,$24,$14
	subu	$25,$25,$15
	sra	$18,$24,31
	sra	$17,$25,31
	xor	$24,$18,$24
	xor	$25,$17,$25
	subu	$24,$24,$18
	subu	$25,$25,$17
	addu	$24,$24,$25
	ld	$25,104($sp)
	slt	$24,$24,$25
	beq	$24,$0,.L145
	subu	$14,$14,$15

	ld	$17,112($sp)
	sra	$24,$14,31
	xor	$14,$24,$14
	subu	$14,$14,$24
	slt	$14,$14,$17
	beq	$14,$0,.L194
	sra	$14,$13,1

	ld	$2,232($sp)
	sll	$11,$11,1
	move	$5,$23
	ld	$6,96($sp)
	move	$4,$16
	ld	$25,8($2)
	ld	$2,48($sp)
	and	$8,$2,$11
	ld	$2,40($sp)
	jalr	$25
	and	$7,$2,$11

	.align	3
.L152:
	ld	$2,16($sp)
	addiu	$20,$20,1
	daddu	$21,$21,$22
	daddu	$16,$16,$22
	daddu	$2,$2,$22
	sd	$2,16($sp)
	ld	$2,64($sp)
	bne	$2,$20,.L153
	daddu	$fp,$fp,$22

.L134:
	ld	$31,328($sp)
.L193:
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
.L138:
	ld	$3,80($sp)
	lsa	$2,$20,$2,4
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	lw	$6,0($2)
	ld	$2,88($sp)
	dext	$18,$6,0,32
	daddu	$2,$2,$18
	lbu	$17,0($2)
	beq	$17,$0,.L152
	ld	$25,%call16(_ZNK4x2656CUData9getPULeftERjj)($28)

	move	$5,$sp
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData9getPULeftERjj
1:	jalr	$25
	ld	$4,32($sp)

	b	.L192
	ld	$3,120($sp)

	.align	3
.L188:
	ld	$2,16($sp)
	daddu	$21,$21,$22
	ld	$20,152($sp)
	ld	$fp,160($sp)
	daddu	$2,$2,$22
	ld	$16,168($sp)
	sd	$2,16($sp)
	addiu	$20,$20,1
	ld	$2,64($sp)
	daddu	$fp,$fp,$22
	bne	$2,$20,.L153
	daddu	$16,$16,$22

	b	.L193
	ld	$31,328($sp)

	.align	3
.L155:
	b	.L143
	move	$13,$0

	.align	3
.L157:
	b	.L144
	move	$11,$0

	.align	3
.L154:
	ld	$2,16($sp)
	addiu	$20,$20,1
	daddu	$21,$21,$22
	sd	$0,48($sp)
	daddu	$16,$16,$22
	sd	$0,40($sp)
	daddu	$2,$2,$22
	sd	$2,16($sp)
	ld	$2,64($sp)
	bne	$2,$20,.L153
	daddu	$fp,$fp,$22

	b	.L193
	ld	$31,328($sp)

	.align	3
.L135:
	ld	$3,96($sp)
	li	$23,1			# 0x1
	gsdmultu	$14,$14,$3
	b	.L136
	daddu	$2,$2,$14

	.set	macro
	.set	reorder
	.end	_ZN4x2657Deblock14edgeFilterLumaEPKNS_6CUDataEjjiiPKh
	.size	_ZN4x2657Deblock14edgeFilterLumaEPKNS_6CUDataEjjiiPKh, .-_ZN4x2657Deblock14edgeFilterLumaEPKNS_6CUDataEjjiiPKh
	.align	2
	.align	3
	.globl	_ZN4x2657Deblock16edgeFilterChromaEPKNS_6CUDataEjjiiPKh
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657Deblock16edgeFilterChromaEPKNS_6CUDataEjjiiPKh
	.type	_ZN4x2657Deblock16edgeFilterChromaEPKNS_6CUDataEjjiiPKh, @function
_ZN4x2657Deblock16edgeFilterChromaEPKNS_6CUDataEjjiiPKh:
	.frame	$sp,304,$31		# vars= 208, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-304
	dext	$5,$5,0,32
	sd	$28,280($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2657Deblock16edgeFilterChromaEPKNS_6CUDataEjjiiPKh)))
	sd	$31,296($sp)
	daddu	$28,$28,$25
	sd	$fp,288($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2657Deblock16edgeFilterChromaEPKNS_6CUDataEjjiiPKh)))
	sd	$23,272($sp)
	sd	$22,264($sp)
	sd	$21,256($sp)
	sd	$20,248($sp)
	sd	$19,240($sp)
	sd	$18,232($sp)
	sd	$17,224($sp)
	sd	$16,216($sp)
	ld	$3,48($4)
	ld	$11,56($4)
	lw	$10,116($4)
	ld	$3,32($3)
	ld	$14,8($11)
	lwu	$2,96($4)
	ld	$12,96($3)
	sd	$10,176($sp)
	ld	$10,112($3)
	lw	$13,16($14)
	dlsa	$2,$2,$12,3
	ld	$12,0($2)
	dlsa	$10,$5,$10,3
	ld	$15,64($3)
	ld	$2,0($10)
	sll	$10,$13,1
	sd	$10,112($sp)
	lbu	$10,24($14)
	sd	$14,184($sp)
	daddu	$2,$12,$2
	sd	$15,96($sp)
	sd	$10,88($sp)
	lw	$14,124($4)
	bne	$7,$0,.L196
	lw	$10,120($4)

	li	$12,2			# 0x2
	li	$13,1			# 0x1
	sd	$15,104($sp)
	subu	$12,$12,$10
	move	$10,$14
	sd	$13,96($sp)
	sll	$12,$8,$12
	daddu	$2,$12,$2
.L197:
	ld	$12,0($11)
	addu	$6,$10,$6
	ld	$11,32($3)
	ld	$3,40($3)
	lw	$19,60($12)
	daddu	$11,$11,$2
	daddu	$2,$3,$2
	sd	$11,0($sp)
	srl	$19,$19,$6
	beq	$19,$0,.L195
	sd	$2,8($sp)

	sll	$2,$8,4
	move	$18,$4
	sd	$9,80($sp)
	sd	$2,120($sp)
	daddiu	$4,$7,752
	move	$21,$0
	ld	$2,%got_disp(_ZN4x26515g_rasterToZscanE)($28)
	move	$20,$0
	move	$22,$0
	sd	$7,72($sp)
	move	$23,$0
	li	$16,-1			# 0xffffffffffffffff
	daddiu	$fp,$sp,16
	sd	$2,64($sp)
	li	$2,1			# 0x1
	sll	$2,$2,$10
	sd	$2,56($sp)
	li	$2,16			# 0x10
	sll	$2,$2,$10
	sd	$2,48($sp)
	ld	$2,%got_disp(_ZN4x26515g_zscanToRasterE)($28)
	dlsa	$5,$5,$2,2
	ld	$2,104($sp)
	lw	$3,0($5)
	dsll	$2,$2,2
	sd	$2,40($sp)
	li	$2,-1			# 0xffffffffffffffff
	sd	$2,32($sp)
	ld	$2,%got_disp(_ZN4x26510primitivesE)($28)
	sd	$3,128($sp)
	dlsa	$2,$4,$2,3
	sd	$2,144($sp)
	addu	$2,$8,$3
	b	.L211
	sw	$2,136($sp)

	.align	3
.L228:
	ld	$2,120($sp)
	addu	$2,$2,$3
	ld	$3,64($sp)
	addu	$2,$2,$21
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	lw	$6,0($2)
	ld	$2,80($sp)
	dext	$17,$6,0,32
	daddu	$2,$2,$17
	lbu	$2,0($2)
	sltu	$2,$2,2
	bne	$2,$0,.L210
	ld	$25,%call16(_ZNK4x2656CUData10getPUAboveERjj)($28)

	move	$5,$fp
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getPUAboveERjj
1:	jalr	$25
	move	$4,$18

	ld	$3,88($sp)
.L230:
	beq	$3,$0,.L203
	lwu	$6,16($sp)

	ld	$5,160($2)
	ld	$4,160($18)
	daddu	$5,$5,$6
	lbu	$5,0($5)
	daddu	$4,$4,$17
	beq	$5,$0,.L226
	lbu	$4,0($4)

	move	$16,$0
	beq	$4,$0,.L227
	sd	$0,32($sp)

.L210:
	ld	$2,56($sp)
	addiu	$22,$22,1
	addu	$21,$2,$21
	ld	$2,48($sp)
	addu	$20,$2,$20
	ld	$2,40($sp)
	beq	$19,$22,.L195
	daddu	$23,$23,$2

.L211:
	ld	$2,72($sp)
	bne	$2,$0,.L228
	ld	$3,128($sp)

	lw	$2,136($sp)
	ld	$3,64($sp)
	addu	$2,$2,$20
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	lw	$6,0($2)
	ld	$2,80($sp)
	dext	$17,$6,0,32
	daddu	$2,$2,$17
	lbu	$2,0($2)
	sltu	$2,$2,2
	bne	$2,$0,.L210
	ld	$25,%call16(_ZNK4x2656CUData9getPULeftERjj)($28)

	move	$5,$fp
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData9getPULeftERjj
1:	jalr	$25
	move	$4,$18

	b	.L230
	ld	$3,88($sp)

	.align	3
.L226:
	sltu	$16,$4,1
	li	$3,-1			# 0xffffffffffffffff
	dsubu	$16,$0,$16
	sd	$3,32($sp)
.L203:
	ld	$4,136($18)
	move	$13,$sp
	ld	$2,136($2)
	ld	$3,184($sp)
	daddu	$17,$4,$17
	sd	$19,160($sp)
	move	$19,$fp
	daddu	$6,$2,$6
	lb	$17,0($17)
	daddiu	$15,$3,4
	lb	$2,0($6)
	ld	$3,%got_disp(_ZN4x26513g_chromaScaleE)($28)
	move	$fp,$15
	sd	$18,168($sp)
	move	$18,$23
	move	$23,$13
	addu	$17,$17,$2
	sd	$3,192($sp)
	addiu	$17,$17,1
	ld	$3,%got_disp(_ZN4x2657Deblock9s_tcTableE)($28)
	sra	$17,$17,1
	sd	$3,152($sp)
.L209:
	lw	$2,0($fp)
	addu	$2,$2,$17
	slt	$4,$2,30
	bne	$4,$0,.L231
	ld	$3,112($sp)

	slt	$4,$2,52
	li	$5,51			# 0x33
	ld	$3,176($sp)
	movn	$5,$2,$4
	move	$4,$5
	li	$5,1			# 0x1
	beq	$3,$5,.L229
	ld	$3,192($sp)

	move	$2,$4
.L206:
	ld	$3,112($sp)
.L231:
	addiu	$2,$2,2
	addu	$2,$2,$3
	bltz	$2,.L212
	li	$7,24			# 0x18

	ld	$3,152($sp)
	daddu	$4,$3,$2
	slt	$2,$2,53
	beq	$2,$0,.L232
	ld	$2,144($sp)

	lbu	$7,0($4)
.L208:
	ld	$2,144($sp)
.L232:
	move	$9,$16
	daddiu	$23,$23,8
	ld	$4,-8($23)
	daddiu	$fp,$fp,4
	ld	$8,32($sp)
	ld	$25,8($2)
	ld	$6,96($sp)
	daddu	$4,$4,$18
	jalr	$25
	ld	$5,104($sp)

	bne	$19,$23,.L209
	ld	$2,56($sp)

	move	$fp,$19
	move	$23,$18
	ld	$19,160($sp)
	addiu	$22,$22,1
	ld	$18,168($sp)
	addu	$21,$2,$21
	ld	$2,48($sp)
	addu	$20,$2,$20
	ld	$2,40($sp)
	bne	$19,$22,.L211
	daddu	$23,$23,$2

.L195:
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
.L212:
	b	.L208
	move	$7,$0

	.align	3
.L196:
	ld	$12,96($sp)
	li	$13,2			# 0x2
	subu	$13,$13,$14
	li	$14,1			# 0x1
	sd	$14,104($sp)
	gsdmultu	$12,$8,$12
	dsll	$12,$12,$13
	b	.L197
	daddu	$2,$12,$2

	.align	3
.L229:
	daddu	$2,$3,$2
	b	.L206
	lbu	$2,0($2)

.L227:
	b	.L203
	li	$16,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	_ZN4x2657Deblock16edgeFilterChromaEPKNS_6CUDataEjjiiPKh
	.size	_ZN4x2657Deblock16edgeFilterChromaEPKNS_6CUDataEjjiiPKh, .-_ZN4x2657Deblock16edgeFilterChromaEPKNS_6CUDataEjjiiPKh
	.align	2
	.align	3
	.globl	_ZN4x2657Deblock9deblockCUEPKNS_6CUDataERKNS_6CUGeomEiPh
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657Deblock9deblockCUEPKNS_6CUDataERKNS_6CUGeomEiPh
	.type	_ZN4x2657Deblock9deblockCUEPKNS_6CUDataERKNS_6CUGeomEiPh, @function
_ZN4x2657Deblock9deblockCUEPKNS_6CUDataERKNS_6CUGeomEiPh:
	.frame	$sp,144,$31		# vars= 48, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-144
	sd	$23,112($sp)
	lw	$23,8($5)
	sd	$28,120($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2657Deblock9deblockCUEPKNS_6CUDataERKNS_6CUGeomEiPh)))
	sd	$22,104($sp)
	daddu	$28,$28,$25
	sd	$31,136($sp)
	dext	$22,$23,0,32
	sd	$fp,128($sp)
	sd	$21,96($sp)
	sd	$20,88($sp)
	sd	$19,80($sp)
	sd	$18,72($sp)
	sd	$17,64($sp)
	sd	$16,56($sp)
	ld	$2,192($4)
	daddu	$2,$2,$22
	lbu	$2,0($2)
	beq	$2,$0,.L233
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2657Deblock9deblockCUEPKNS_6CUDataERKNS_6CUGeomEiPh)))

	ld	$2,184($4)
	move	$20,$4
	move	$16,$6
	lw	$19,20($5)
	move	$17,$7
	daddu	$2,$2,$22
	lbu	$2,0($2)
	sltu	$2,$19,$2
	beq	$2,$0,.L235
	move	$21,$5

	ld	$22,%got_disp(_ZN4x2657Deblock9deblockCUEPKNS_6CUDataERKNS_6CUGeomEiPh)($28)
	move	$18,$0
	li	$19,4			# 0x4
.L237:
	lwu	$5,4($21)
	daddu	$2,$5,$18
	dsll	$5,$2,3
	dsubu	$5,$5,$2
	dlsa	$5,$5,$21,2
	lw	$2,16($5)
	andi	$2,$2,0x2
	bne	$2,$0,.L283
	daddiu	$18,$18,1

.L236:
	bne	$18,$19,.L237
	nop

.L233:
	ld	$31,136($sp)
.L287:
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

	.align	3
.L283:
	move	$7,$17
	move	$6,$16
	move	$25,$22
	.reloc	1f,R_MIPS_JALR,_ZN4x2657Deblock9deblockCUEPKNS_6CUDataERKNS_6CUGeomEiPh
1:	jalr	$25
	move	$4,$20

	b	.L236
	nop

	.align	3
.L235:
	lw	$18,0($5)
	move	$5,$23
	ld	$25,%got_disp(_ZN4x2657Deblock15setEdgefilterPUEPKNS_6CUDataEjiPhj)($28)
	addiu	$2,$18,-2
	li	$18,1			# 0x1
	sll	$18,$18,$2
	.reloc	1f,R_MIPS_JALR,_ZN4x2657Deblock15setEdgefilterPUEPKNS_6CUDataEjiPhj
1:	jalr	$25
	move	$8,$18

	ld	$25,%got_disp(_ZN4x2657Deblock15setEdgefilterTUEPKNS_6CUDataEjjiPh)($28)
	move	$5,$23
	move	$8,$7
	move	$4,$20
	move	$7,$6
	.reloc	1f,R_MIPS_JALR,_ZN4x2657Deblock15setEdgefilterTUEPKNS_6CUDataEjjiPh
1:	jalr	$25
	move	$6,$0

	bne	$16,$0,.L238
	move	$2,$0

	ld	$4,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	lw	$5,104($20)
	daddu	$4,$4,$22
	lbu	$3,0($4)
	addu	$3,$3,$5
	bne	$3,$0,.L281
	ld	$25,%call16(_ZNK4x2656CUData9getPULeftERjj)($28)

.L239:
	beq	$18,$0,.L242
	ld	$3,%got_disp(_ZN4x26515g_zscanToRasterE)($28)

	move	$4,$0
	ld	$7,%got_disp(_ZN4x26515g_rasterToZscanE)($28)
	dlsa	$3,$22,$3,2
	b	.L245
	lw	$5,0($3)

	.align	3
.L285:
	lw	$3,0($6)
	addiu	$4,$4,1
	dext	$3,$3,0,32
	daddu	$3,$17,$3
	beq	$18,$4,.L242
	sb	$2,0($3)

.L245:
	lsa	$3,$4,$5,4
	addu	$6,$5,$4
	dext	$3,$3,0,32
	dext	$6,$6,0,32
	dlsa	$3,$3,$7,2
	bne	$16,$0,.L285
	dlsa	$6,$6,$7,2

	lw	$3,0($3)
	addiu	$4,$4,1
	dext	$3,$3,0,32
	daddu	$3,$17,$3
	bne	$18,$4,.L245
	sb	$2,0($3)

.L242:
	lw	$3,12($21)
	addu	$3,$3,$23
	sltu	$2,$23,$3
	beq	$2,$0,.L246
	ld	$2,%got_disp(_ZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKh)($28)

	li	$8,1			# 0x1
	daddu	$fp,$17,$22
	sll	$8,$8,$16
	move	$21,$23
	b	.L248
	sd	$2,32($sp)

	.align	3
.L247:
	addiu	$21,$21,1
	beq	$21,$3,.L246
	daddiu	$fp,$fp,1

.L248:
	and	$2,$8,$21
	bne	$2,$0,.L247
	nop

	lbu	$2,0($fp)
	beq	$2,$0,.L247
	ld	$25,32($sp)

	move	$6,$21
	move	$7,$17
	move	$5,$16
	move	$4,$20
	sw	$3,24($sp)
	sd	$8,16($sp)
	addiu	$21,$21,1
	jalr	$25
	daddiu	$fp,$fp,1

	lw	$3,24($sp)
	sb	$2,-1($fp)
	bne	$21,$3,.L248
	ld	$8,16($sp)

	.align	3
.L246:
	bne	$16,$0,.L249
	nop

	lw	$3,120($20)
	ld	$2,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
.L282:
	daddu	$22,$2,$22
	li	$21,8			# 0x8
	lbu	$22,0($22)
	sll	$21,$21,$3
	sra	$21,$21,2
	addiu	$21,$21,-1
	beq	$18,$0,.L233
	dsrl	$22,$22,2

	ld	$2,%got_disp(_ZN4x2657Deblock14edgeFilterLumaEPKNS_6CUDataEjjiiPKh)($28)
	move	$fp,$0
	sd	$2,16($sp)
	ld	$2,%got_disp(_ZN4x2657Deblock16edgeFilterChromaEPKNS_6CUDataEjjiiPKh)($28)
	b	.L252
	sd	$2,24($sp)

	.align	3
.L251:
	addiu	$fp,$fp,2
	.align	3
.L286:
	sltu	$2,$fp,$18
	beq	$2,$0,.L287
	ld	$31,136($sp)

.L252:
	ld	$25,16($sp)
	move	$9,$17
	move	$8,$fp
	move	$7,$16
	move	$6,$19
	move	$5,$23
	jalr	$25
	move	$4,$20

	addu	$2,$fp,$22
	and	$2,$2,$21
	bne	$2,$0,.L251
	nop

	lw	$2,116($20)
	beq	$2,$0,.L251
	ld	$25,24($sp)

	move	$8,$fp
	move	$9,$17
	move	$7,$16
	move	$6,$19
	move	$5,$23
	jalr	$25
	move	$4,$20

	b	.L286
	addiu	$fp,$fp,2

	.align	3
.L249:
	lw	$3,124($20)
	b	.L282
	ld	$2,%got_disp(_ZN4x26513g_zscanToPelYE)($28)

	.align	3
.L238:
	ld	$4,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	lw	$5,108($20)
	daddu	$4,$4,$22
	lbu	$3,0($4)
	addu	$3,$3,$5
	beq	$3,$0,.L239
	ld	$25,%call16(_ZNK4x2656CUData10getPUAboveERjj)($28)

.L281:
	move	$6,$23
	move	$5,$sp
	jalr	$25
	move	$4,$20

	sltu	$2,$0,$2
	b	.L239
	dsll	$2,$2,1

	.set	macro
	.set	reorder
	.end	_ZN4x2657Deblock9deblockCUEPKNS_6CUDataERKNS_6CUGeomEiPh
	.size	_ZN4x2657Deblock9deblockCUEPKNS_6CUDataERKNS_6CUGeomEiPh, .-_ZN4x2657Deblock9deblockCUEPKNS_6CUDataERKNS_6CUGeomEiPh
	.align	2
	.align	3
	.globl	_ZN4x2657Deblock10deblockCTUEPKNS_6CUDataERKNS_6CUGeomEi
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657Deblock10deblockCTUEPKNS_6CUDataERKNS_6CUGeomEi
	.type	_ZN4x2657Deblock10deblockCTUEPKNS_6CUDataERKNS_6CUGeomEi, @function
_ZN4x2657Deblock10deblockCTUEPKNS_6CUDataERKNS_6CUGeomEi:
	.frame	$sp,304,$31		# vars= 256, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-304
	sd	$28,288($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2657Deblock10deblockCTUEPKNS_6CUDataERKNS_6CUGeomEi)))
	daddu	$28,$28,$25
	sd	$18,280($sp)
	move	$18,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2657Deblock10deblockCTUEPKNS_6CUDataERKNS_6CUGeomEi)))
	lwu	$6,12($5)
	ld	$25,%call16(memset)($28)
	sd	$17,272($sp)
	move	$17,$4
	move	$4,$sp
	sd	$16,264($sp)
	move	$16,$5
	sd	$31,296($sp)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	move	$7,$sp
	ld	$25,%got_disp(_ZN4x2657Deblock9deblockCUEPKNS_6CUDataERKNS_6CUGeomEiPh)($28)
	move	$6,$18
	move	$5,$16
	.reloc	1f,R_MIPS_JALR,_ZN4x2657Deblock9deblockCUEPKNS_6CUDataERKNS_6CUGeomEiPh
1:	jalr	$25
	move	$4,$17

	ld	$31,296($sp)
	ld	$28,288($sp)
	ld	$18,280($sp)
	ld	$17,272($sp)
	ld	$16,264($sp)
	jr	$31
	daddiu	$sp,$sp,304

	.set	macro
	.set	reorder
	.end	_ZN4x2657Deblock10deblockCTUEPKNS_6CUDataERKNS_6CUGeomEi
	.size	_ZN4x2657Deblock10deblockCTUEPKNS_6CUDataERKNS_6CUGeomEi, .-_ZN4x2657Deblock10deblockCTUEPKNS_6CUDataERKNS_6CUGeomEi
	.globl	_ZN4x2657Deblock11s_betaTableE
	.rdata
	.align	3
	.type	_ZN4x2657Deblock11s_betaTableE, @object
	.size	_ZN4x2657Deblock11s_betaTableE, 52
_ZN4x2657Deblock11s_betaTableE:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	20
	.byte	22
	.byte	24
	.byte	26
	.byte	28
	.byte	30
	.byte	32
	.byte	34
	.byte	36
	.byte	38
	.byte	40
	.byte	42
	.byte	44
	.byte	46
	.byte	48
	.byte	50
	.byte	52
	.byte	54
	.byte	56
	.byte	58
	.byte	60
	.byte	62
	.byte	64
	.globl	_ZN4x2657Deblock9s_tcTableE
	.align	3
	.type	_ZN4x2657Deblock9s_tcTableE, @object
	.size	_ZN4x2657Deblock9s_tcTableE, 54
_ZN4x2657Deblock9s_tcTableE:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	13
	.byte	14
	.byte	16
	.byte	18
	.byte	20
	.byte	22
	.byte	24
	.local	_ZGVZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv
	.comm	_ZGVZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv,8,8
	.local	_ZZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv
	.comm	_ZZN4x2657Deblock19getBoundaryStrengthEPKNS_6CUDataEijPKhE6zeroMv,4,8
	.ident	"GCC: (GNU) 7.3.0"
