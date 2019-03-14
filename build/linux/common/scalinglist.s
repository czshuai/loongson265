	.file	1 "scalinglist.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.align	3
	.globl	_ZN4x26511ScalingListC2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26511ScalingListC2Ev
	.type	_ZN4x26511ScalingListC2Ev, @function
_ZN4x26511ScalingListC2Ev:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	li	$6,1152			# 0x480
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26511ScalingListC2Ev)))
	move	$5,$0
	daddu	$28,$28,$25
	sd	$16,8($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26511ScalingListC2Ev)))
	sd	$31,24($sp)
	ld	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	daddiu	$4,$4,288

	ld	$25,%call16(memset)($28)
	daddiu	$4,$16,1440
	li	$6,1152			# 0x480
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	ld	$25,%call16(memset)($28)
	daddiu	$4,$16,96
	li	$6,192			# 0xc0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x26511ScalingListC2Ev
	.size	_ZN4x26511ScalingListC2Ev, .-_ZN4x26511ScalingListC2Ev
	.globl	_ZN4x26511ScalingListC1Ev
	_ZN4x26511ScalingListC1Ev = _ZN4x26511ScalingListC2Ev
	.align	2
	.align	3
	.globl	_ZN4x26511ScalingList4initEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26511ScalingList4initEv
	.type	_ZN4x26511ScalingList4initEv, @function
_ZN4x26511ScalingList4initEv:
	.frame	$sp,112,$31		# vars= 16, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	daddiu	$3,$4,1776
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26511ScalingList4initEv)))
	li	$2,16			# 0x10
	daddu	$28,$28,$25
	sd	$22,72($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26511ScalingList4initEv)))
	sd	$23,80($sp)
	li	$23,1			# 0x1
	ld	$22,%got_disp(_ZN4x26511ScalingList16s_numCoefPerSizeE)($28)
	sd	$21,64($sp)
	move	$21,$4
	sd	$20,56($sp)
	daddiu	$20,$4,624
	sd	$31,104($sp)
	sd	$fp,96($sp)
	sd	$19,48($sp)
	sd	$18,40($sp)
	sd	$17,32($sp)
	sd	$16,24($sp)
	sd	$3,0($sp)
.L9:
	slt	$19,$2,65
	li	$3,64			# 0x40
	movn	$3,$2,$19
	dsll	$16,$2,2
	move	$19,$3
	daddiu	$17,$20,-288
	move	$18,$21
	dsll	$19,$19,2
	.align	3
.L7:
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	daddiu	$fp,$17,-48

	sltu	$4,$0,$2
	sd	$2,96($18)
	b	.L6
	and	$23,$23,$4

	.align	3
.L5:
	daddiu	$fp,$fp,8
	beq	$fp,$17,.L15
	nop

.L6:
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$16

	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	sd	$2,0($fp)

	ld	$4,0($fp)
	sd	$2,1152($fp)
	bne	$4,$0,.L5
	movz	$23,$0,$2

	daddiu	$fp,$fp,8
	bne	$fp,$17,.L6
	move	$23,$0

.L15:
	daddiu	$17,$fp,48
	bne	$17,$20,.L7
	daddiu	$18,$18,8

	ld	$2,0($sp)
	daddiu	$20,$fp,336
	daddiu	$22,$22,4
	beq	$20,$2,.L8
	daddiu	$21,$21,48

	b	.L9
	lw	$2,0($22)

.L8:
	ld	$31,104($sp)
	move	$2,$23
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
	.end	_ZN4x26511ScalingList4initEv
	.size	_ZN4x26511ScalingList4initEv, .-_ZN4x26511ScalingList4initEv
	.align	2
	.align	3
	.globl	_ZN4x26511ScalingListD2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26511ScalingListD2Ev
	.type	_ZN4x26511ScalingListD2Ev, @function
_ZN4x26511ScalingListD2Ev:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26511ScalingListD2Ev)))
	daddu	$28,$28,$25
	sd	$21,40($sp)
	daddiu	$21,$4,1728
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26511ScalingListD2Ev)))
	move	$20,$4
	sd	$19,24($sp)
	daddiu	$19,$4,576
	sd	$31,56($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
.L19:
	daddiu	$16,$19,-288
	move	$18,$20
	.align	3
.L18:
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	daddiu	$17,$16,48
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,96($18)

	.align	3
.L17:
	ld	$4,0($16)
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	daddiu	$16,$16,8

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,1144($16)

	bne	$16,$17,.L17
	nop

	bne	$16,$19,.L18
	daddiu	$18,$18,8

	daddiu	$19,$16,288
	bne	$19,$21,.L19
	daddiu	$20,$20,48

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
	.end	_ZN4x26511ScalingListD2Ev
	.size	_ZN4x26511ScalingListD2Ev, .-_ZN4x26511ScalingListD2Ev
	.globl	_ZN4x26511ScalingListD1Ev
	_ZN4x26511ScalingListD1Ev = _ZN4x26511ScalingListD2Ev
	.align	2
	.align	3
	.globl	_ZNK4x26511ScalingList13checkPredModeEii
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x26511ScalingList13checkPredModeEii
	.type	_ZNK4x26511ScalingList13checkPredModeEii, @function
_ZNK4x26511ScalingList13checkPredModeEii:
	.frame	$sp,128,$31		# vars= 32, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-128
	sd	$28,104($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x26511ScalingList13checkPredModeEii)))
	daddu	$28,$28,$25
	sd	$31,120($sp)
	sd	$fp,112($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x26511ScalingList13checkPredModeEii)))
	sd	$23,96($sp)
	sd	$22,88($sp)
	sd	$21,80($sp)
	sd	$20,72($sp)
	sd	$19,64($sp)
	sd	$18,56($sp)
	sd	$17,48($sp)
	bltz	$6,.L36
	sd	$16,40($sp)

	ld	$2,%got_page(_ZN12_GLOBAL__N_1L20quantIntraDefault8x8E)($28)
	dlsa	$3,$5,$5,1
	move	$16,$6
	dsll	$3,$3,1
	ld	$9,%got_disp(_ZN4x26511ScalingList16s_numCoefPerSizeE)($28)
	move	$fp,$6
	daddu	$17,$6,$3
	daddiu	$3,$3,12
	sd	$5,0($sp)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L20quantIntraDefault8x8E)
	dlsa	$22,$17,$4,2
	sd	$2,8($sp)
	daddu	$3,$3,$6
	daddiu	$17,$17,12
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L20quantInterDefault8x8E)($28)
	slt	$18,$5,2
	dlsa	$20,$3,$4,3
	dlsa	$17,$17,$4,3
	dlsa	$23,$5,$9,2
	li	$19,64			# 0x40
	move	$21,$22
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L20quantInterDefault8x8E)
	sd	$2,16($sp)
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L17quantTSDefault4x4E)($28)
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L17quantTSDefault4x4E)
	b	.L35
	sd	$2,24($sp)

	.align	3
.L26:
	beq	$16,$fp,.L49
	ld	$4,0($17)

	ld	$5,0($20)
.L32:
	lw	$2,0($23)
	ld	$25,%call16(memcmp)($28)
	slt	$6,$2,65
	movz	$2,$19,$6
	move	$6,$2
	.reloc	1f,R_MIPS_JALR,memcmp
1:	jalr	$25
	dsll	$6,$6,2

	beq	$2,$0,.L25
	li	$2,-1			# 0xffffffffffffffff

	addiu	$fp,$fp,-1
	daddiu	$22,$22,-4
	beq	$fp,$2,.L36
	daddiu	$20,$20,-8

.L35:
	beq	$18,$0,.L26
	nop

.L51:
	lw	$4,0($21)
	lw	$2,0($22)
	beq	$4,$2,.L26
	li	$2,-1			# 0xffffffffffffffff

	addiu	$fp,$fp,-1
	daddiu	$22,$22,-4
	bne	$fp,$2,.L51
	daddiu	$20,$20,-8

	.align	3
.L36:
	li	$fp,-1			# 0xffffffffffffffff
.L25:
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

.L49:
	ld	$2,0($sp)
	li	$3,1			# 0x1
	beq	$2,$3,.L33
	nop

	bne	$18,$0,.L50
	ld	$3,0($sp)

	li	$2,2			# 0x2
	beq	$3,$2,.L33
	li	$2,3			# 0x3

	bne	$3,$2,.L29
	ld	$2,8($sp)

	ld	$5,16($sp)
	b	.L32
	movz	$5,$2,$fp

.L33:
	ld	$2,16($sp)
	slt	$5,$fp,3
	ld	$3,8($sp)
	movn	$2,$3,$5
	b	.L32
	move	$5,$2

.L50:
	beq	$2,$0,.L32
	ld	$5,24($sp)

.L29:
	b	.L32
	move	$5,$0

	.set	macro
	.set	reorder
	.end	_ZNK4x26511ScalingList13checkPredModeEii
	.size	_ZNK4x26511ScalingList13checkPredModeEii, .-_ZNK4x26511ScalingList13checkPredModeEii
	.align	2
	.align	3
	.globl	_ZNK4x26511ScalingList23checkDefaultScalingListEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x26511ScalingList23checkDefaultScalingListEv
	.type	_ZNK4x26511ScalingList23checkDefaultScalingListEv, @function
_ZNK4x26511ScalingList23checkDefaultScalingListEv:
	.frame	$sp,144,$31		# vars= 48, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-144
	li	$2,16			# 0x10
	sd	$28,120($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x26511ScalingList23checkDefaultScalingListEv)))
	daddu	$28,$28,$25
	sd	$21,96($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x26511ScalingList23checkDefaultScalingListEv)))
	sd	$fp,128($sp)
	move	$fp,$0
	ld	$3,%got_disp(_ZN4x26511ScalingList16s_numCoefPerSizeE)($28)
	ld	$21,%got_page(_ZN12_GLOBAL__N_1L20quantInterDefault8x8E)($28)
	sd	$20,88($sp)
	li	$20,3			# 0x3
	sd	$3,40($sp)
	ld	$3,%got_page(_ZN12_GLOBAL__N_1L20quantIntraDefault8x8E)($28)
	sd	$19,80($sp)
	li	$19,6			# 0x6
	sd	$18,72($sp)
	move	$18,$0
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_1L20quantIntraDefault8x8E)
	sd	$17,64($sp)
	li	$17,2			# 0x2
	sd	$3,24($sp)
	daddiu	$3,$21,%got_ofst(_ZN12_GLOBAL__N_1L20quantInterDefault8x8E)
	sd	$3,0($sp)
	ld	$3,%got_page(_ZN12_GLOBAL__N_1L17quantTSDefault4x4E)($28)
	sd	$31,136($sp)
	sd	$23,112($sp)
	daddiu	$3,$3,%got_ofst(_ZN12_GLOBAL__N_1L17quantTSDefault4x4E)
	sd	$22,104($sp)
	sd	$16,56($sp)
	sd	$4,8($sp)
	sd	$4,16($sp)
	sd	$3,32($sp)
.L66:
	slt	$16,$2,65
	li	$3,64			# 0x40
	ld	$21,16($sp)
	movn	$3,$2,$16
	ld	$22,8($sp)
	move	$23,$0
	move	$16,$3
	dsll	$16,$16,2
	.align	3
.L53:
	beq	$fp,$17,.L55
	ld	$4,96($22)

	beq	$fp,$20,.L56
	li	$2,1			# 0x1

	beq	$fp,$2,.L88
	ld	$25,%call16(memcmp)($28)

	ld	$5,32($sp)
	.reloc	1f,R_MIPS_JALR,memcmp
1:	jalr	$25
	move	$6,$16

	beq	$2,$0,.L62
	nop

.L63:
	addiu	$23,$23,1
	daddiu	$22,$22,8
	bne	$23,$19,.L53
	daddiu	$21,$21,4

	ld	$4,8($sp)
.L90:
	addiu	$fp,$fp,1
	li	$2,4			# 0x4
	ld	$3,40($sp)
	daddiu	$4,$4,48
	sd	$4,8($sp)
	daddiu	$3,$3,4
	ld	$4,16($sp)
	sd	$3,40($sp)
	daddiu	$4,$4,24
	beq	$fp,$2,.L65
	sd	$4,16($sp)

	b	.L66
	lw	$2,0($3)

	.align	3
.L88:
	ld	$3,0($sp)
	slt	$5,$23,3
	move	$6,$16
	ld	$2,24($sp)
	movz	$2,$3,$5
	.reloc	1f,R_MIPS_JALR,memcmp
1:	jalr	$25
	move	$5,$2

	bne	$2,$0,.L63
	nop

.L62:
	addiu	$23,$23,1
	addiu	$18,$18,1
	daddiu	$22,$22,8
	bne	$23,$19,.L53
	daddiu	$21,$21,4

	b	.L90
	ld	$4,8($sp)

	.align	3
.L56:
	beq	$23,$0,.L61
	ld	$5,0($sp)

.L59:
	ld	$25,%call16(memcmp)($28)
	.reloc	1f,R_MIPS_JALR,memcmp
1:	jalr	$25
	move	$6,$16

	bne	$2,$0,.L63
	nop

.L67:
	lw	$2,0($21)
	li	$3,16			# 0x10
	beq	$2,$3,.L62
	nop

	addiu	$23,$23,1
	daddiu	$22,$22,8
	bne	$23,$19,.L53
	daddiu	$21,$21,4

	b	.L90
	ld	$4,8($sp)

	.align	3
.L55:
	ld	$2,0($sp)
	slt	$5,$23,3
	ld	$3,24($sp)
	movn	$2,$3,$5
	b	.L59
	move	$5,$2

	.align	3
.L65:
	ld	$31,136($sp)
	xori	$2,$18,0x14
	ld	$fp,128($sp)
	sltu	$2,$0,$2
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
.L61:
	ld	$25,%call16(memcmp)($28)
	move	$6,$16
	.reloc	1f,R_MIPS_JALR,memcmp
1:	jalr	$25
	ld	$5,24($sp)

	beq	$2,$0,.L67
	nop

	daddiu	$22,$22,8
	daddiu	$21,$21,4
	b	.L53
	li	$23,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZNK4x26511ScalingList23checkDefaultScalingListEv
	.size	_ZNK4x26511ScalingList23checkDefaultScalingListEv, .-_ZNK4x26511ScalingList23checkDefaultScalingListEv
	.align	2
	.align	3
	.globl	_ZNK4x26511ScalingList28getScalingListDefaultAddressEii
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x26511ScalingList28getScalingListDefaultAddressEii
	.type	_ZNK4x26511ScalingList28getScalingListDefaultAddressEii, @function
_ZNK4x26511ScalingList28getScalingListDefaultAddressEii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$3,%hi(%neg(%gp_rel(_ZNK4x26511ScalingList28getScalingListDefaultAddressEii)))
	slt	$2,$5,3
	daddu	$3,$3,$25
	beq	$2,$0,.L93
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZNK4x26511ScalingList28getScalingListDefaultAddressEii)))

	bgtz	$5,.L94
	nop

	bne	$5,$0,.L92
	nop

	ld	$2,%got_page(_ZN12_GLOBAL__N_1L17quantTSDefault4x4E)($3)
	jr	$31
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L17quantTSDefault4x4E)

	.align	3
.L94:
	slt	$6,$6,3
	bne	$6,$0,.L101
	nop

.L99:
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L20quantInterDefault8x8E)($3)
	jr	$31
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L20quantInterDefault8x8E)

	.align	3
.L93:
	li	$2,3			# 0x3
	bne	$5,$2,.L92
	nop

	bgtz	$6,.L99
	nop

.L101:
	ld	$2,%got_page(_ZN12_GLOBAL__N_1L20quantIntraDefault8x8E)($3)
	jr	$31
	daddiu	$2,$2,%got_ofst(_ZN12_GLOBAL__N_1L20quantIntraDefault8x8E)

	.align	3
.L92:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZNK4x26511ScalingList28getScalingListDefaultAddressEii
	.size	_ZNK4x26511ScalingList28getScalingListDefaultAddressEii, .-_ZNK4x26511ScalingList28getScalingListDefaultAddressEii
	.align	2
	.align	3
	.globl	_ZN4x26511ScalingList19processDefaultMarixEii
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26511ScalingList19processDefaultMarixEii
	.type	_ZN4x26511ScalingList19processDefaultMarixEii, @function
_ZN4x26511ScalingList19processDefaultMarixEii:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	slt	$3,$5,3
	sd	$16,0($sp)
	dsll	$16,$5,1
	daddu	$2,$16,$5
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26511ScalingList19processDefaultMarixEii)))
	dlsa	$2,$2,$6,1
	daddu	$28,$28,$25
	sd	$19,24($sp)
	dlsa	$2,$2,$4,3
	sd	$18,16($sp)
	move	$19,$4
	sd	$17,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26511ScalingList19processDefaultMarixEii)))
	move	$17,$5
	sd	$31,40($sp)
	move	$18,$6
	beq	$3,$0,.L104
	ld	$4,96($2)

	bgtz	$5,.L105
	slt	$2,$6,3

	bne	$5,$0,.L106
	move	$5,$0

	ld	$5,%got_page(_ZN12_GLOBAL__N_1L17quantTSDefault4x4E)($28)
	daddiu	$5,$5,%got_ofst(_ZN12_GLOBAL__N_1L17quantTSDefault4x4E)
.L106:
	ld	$2,%got_disp(_ZN4x26511ScalingList16s_numCoefPerSizeE)($28)
	li	$3,64			# 0x40
	ld	$25,%call16(memcpy)($28)
	dlsa	$2,$17,$2,2
	lw	$2,0($2)
	slt	$6,$2,65
	movn	$3,$2,$6
	move	$6,$3
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

	daddu	$4,$16,$17
	ld	$31,40($sp)
	dlsa	$4,$4,$18,1
	li	$2,16			# 0x10
	ld	$28,32($sp)
	dlsa	$4,$4,$19,2
	ld	$18,16($sp)
	ld	$19,24($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	sw	$2,0($4)
	jr	$31
	daddiu	$sp,$sp,48

	.align	3
.L105:
	beq	$2,$0,.L112
	nop

.L110:
	ld	$5,%got_page(_ZN12_GLOBAL__N_1L20quantIntraDefault8x8E)($28)
	b	.L106
	daddiu	$5,$5,%got_ofst(_ZN12_GLOBAL__N_1L20quantIntraDefault8x8E)

	.align	3
.L104:
	li	$2,3			# 0x3
	bne	$5,$2,.L103
	nop

	blez	$6,.L110
	nop

.L112:
	ld	$5,%got_page(_ZN12_GLOBAL__N_1L20quantInterDefault8x8E)($28)
	b	.L106
	daddiu	$5,$5,%got_ofst(_ZN12_GLOBAL__N_1L20quantInterDefault8x8E)

	.align	3
.L103:
	b	.L106
	move	$5,$0

	.set	macro
	.set	reorder
	.end	_ZN4x26511ScalingList19processDefaultMarixEii
	.size	_ZN4x26511ScalingList19processDefaultMarixEii, .-_ZN4x26511ScalingList19processDefaultMarixEii
	.align	2
	.align	3
	.globl	_ZN4x26511ScalingList21setDefaultScalingListEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26511ScalingList21setDefaultScalingListEv
	.type	_ZN4x26511ScalingList21setDefaultScalingListEv, @function
_ZN4x26511ScalingList21setDefaultScalingListEv:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26511ScalingList21setDefaultScalingListEv)))
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26511ScalingList21setDefaultScalingListEv)))
	sd	$21,40($sp)
	li	$21,4			# 0x4
	ld	$20,%got_disp(_ZN4x26511ScalingList19processDefaultMarixEii)($28)
	sd	$19,24($sp)
	li	$19,6			# 0x6
	sd	$18,16($sp)
	move	$18,$4
	sd	$17,8($sp)
	move	$17,$0
	sd	$31,56($sp)
	sd	$16,0($sp)
	move	$16,$0
.L120:
	move	$6,$16
	.align	3
.L119:
	move	$5,$17
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZN4x26511ScalingList19processDefaultMarixEii
1:	jalr	$25
	move	$4,$18

	addiu	$16,$16,1
	bne	$16,$19,.L119
	move	$6,$16

	addiu	$17,$17,1
	bne	$17,$21,.L120
	move	$16,$0

	ld	$31,56($sp)
	li	$2,1			# 0x1
	sb	$0,2593($18)
	sb	$2,2592($18)
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
	.end	_ZN4x26511ScalingList21setDefaultScalingListEv
	.size	_ZN4x26511ScalingList21setDefaultScalingListEv, .-_ZN4x26511ScalingList21setDefaultScalingListEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.ascii	"r\000"
	.align	3
.LC1:
	.ascii	"can't open scaling list file %s\012\000"
	.align	3
.LC2:
	.ascii	"x265\000"
	.align	3
.LC3:
	.ascii	"can't read matrix from %s\012\000"
	.align	3
.LC4:
	.ascii	"%d,\000"
	.align	3
.LC5:
	.ascii	"can't read DC from %s\012\000"
	.text
	.align	2
	.align	3
	.globl	_ZN4x26511ScalingList16parseScalingListEPKc
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26511ScalingList16parseScalingListEPKc
	.type	_ZN4x26511ScalingList16parseScalingListEPKc, @function
_ZN4x26511ScalingList16parseScalingListEPKc:
	.frame	$sp,1232,$31		# vars= 1136, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-1232
	sd	$28,1208($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26511ScalingList16parseScalingListEPKc)))
	daddu	$28,$28,$25
	sd	$5,1056($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26511ScalingList16parseScalingListEPKc)))
	sd	$4,1048($sp)
	move	$4,$5
	ld	$5,%got_page(.LC0)($28)
	ld	$25,%call16(fopen)($28)
	sd	$31,1224($sp)
	daddiu	$5,$5,%got_ofst(.LC0)
	sd	$fp,1216($sp)
	sd	$23,1200($sp)
	sd	$22,1192($sp)
	sd	$21,1184($sp)
	sd	$20,1176($sp)
	sd	$19,1168($sp)
	sd	$18,1160($sp)
	sd	$17,1152($sp)
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	sd	$16,1144($sp)

	beq	$2,$0,.L160
	move	$16,$2

	move	$4,$2
	ld	$2,%got_disp(_ZN4x26511ScalingList16s_numCoefPerSizeE)($28)
	ld	$20,%got_page(.LC4)($28)
	move	$6,$0
	move	$5,$0
	ld	$25,%call16(fseek)($28)
	daddiu	$fp,$sp,1024
	li	$18,16			# 0x10
	sd	$2,1112($sp)
	ld	$2,%got_disp(_ZN4x26511ScalingList10MatrixTypeE)($28)
	daddiu	$20,$20,%got_ofst(.LC4)
	.reloc	1f,R_MIPS_JALR,fseek
1:	jalr	$25
	sd	$2,1088($sp)

	sd	$0,1096($sp)
	sd	$0,1072($sp)
	sd	$0,1080($sp)
.L146:
	ld	$5,1080($sp)
	slt	$3,$18,65
	li	$2,64			# 0x40
	movn	$2,$18,$3
	move	$21,$0
	move	$3,$2
	dlsa	$2,$5,$5,1
	move	$4,$3
	dsll	$2,$2,1
	sd	$4,1040($sp)
	sd	$2,1064($sp)
	slt	$2,$5,2
	sw	$2,1120($sp)
	ld	$2,1064($sp)
.L170:
	dsll	$3,$21,2
	ld	$4,1048($sp)
	daddu	$17,$3,$21
	sd	$3,1104($sp)
	daddu	$2,$2,$21
	dlsa	$2,$2,$4,3
	ld	$19,96($2)
	ld	$2,1072($sp)
	dlsa	$17,$17,$2,2
	ld	$2,1088($sp)
	daddu	$17,$2,$17
	ld	$25,%call16(fgets)($28)
.L169:
	li	$5,1024			# 0x400
	move	$6,$16
	.reloc	1f,R_MIPS_JALR,fgets
1:	jalr	$25
	move	$4,$sp

	move	$5,$17
	beq	$2,$0,.L126
	ld	$25,%call16(strstr)($28)

	.reloc	1f,R_MIPS_JALR,strstr
1:	jalr	$25
	move	$4,$sp

	beq	$2,$0,.L161
	ld	$25,%call16(feof)($28)

.L125:
	blez	$18,.L128
	move	$22,$19

	move	$17,$0
	b	.L130
	li	$23,1			# 0x1

	.align	3
.L129:
	lw	$2,1024($sp)
	daddiu	$22,$22,4
	beq	$4,$0,.L128
	sw	$2,-4($22)

.L130:
	ld	$25,%call16(fscanf)($28)
	move	$4,$16
	move	$6,$fp
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,fscanf
1:	jalr	$25
	addiu	$17,$17,1

	ld	$3,1040($sp)
	beq	$2,$23,.L129
	slt	$4,$17,$3

.L126:
	ld	$7,%got_page(.LC3)($28)
	move	$6,$0
	move	$4,$0
	ld	$8,1056($sp)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$7,%got_ofst(.LC3)
.L158:
	ld	$5,%got_page(.LC2)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC2)

	ld	$31,1224($sp)
.L168:
	li	$2,1			# 0x1
	ld	$fp,1216($sp)
	ld	$28,1208($sp)
	ld	$23,1200($sp)
	ld	$22,1192($sp)
	ld	$21,1184($sp)
	ld	$20,1176($sp)
	ld	$19,1168($sp)
	ld	$18,1160($sp)
	ld	$17,1152($sp)
	ld	$16,1144($sp)
	jr	$31
	daddiu	$sp,$sp,1232

	.align	3
.L161:
	.reloc	1f,R_MIPS_JALR,feof
1:	jalr	$25
	move	$4,$16

	move	$5,$17
	bne	$2,$0,.L126
	ld	$25,%call16(strstr)($28)

	.reloc	1f,R_MIPS_JALR,strstr
1:	jalr	$25
	move	$4,$sp

	beq	$2,$0,.L169
	ld	$25,%call16(fgets)($28)

	b	.L125
	nop

	.align	3
.L160:
	ld	$7,%got_page(.LC1)($28)
	move	$6,$0
	move	$4,$0
	ld	$8,1056($sp)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	b	.L158
	daddiu	$7,$7,%got_ofst(.LC1)

	.align	3
.L128:
	ld	$2,1064($sp)
	ld	$4,1048($sp)
	lw	$3,0($19)
	daddu	$2,$2,$21
	dlsa	$2,$2,$4,2
	sw	$3,0($2)
	lw	$2,1120($sp)
	bne	$2,$0,.L131
	ld	$2,1104($sp)

	daddu	$17,$2,$21
	ld	$2,1096($sp)
	dlsa	$17,$17,$21,1
	dlsa	$17,$17,$2,1
	ld	$2,%got_disp(_ZN4x26511ScalingList13MatrixType_DCE)($28)
	daddu	$17,$2,$17
.L136:
	ld	$25,%call16(fgets)($28)
	li	$5,1024			# 0x400
	move	$6,$16
	.reloc	1f,R_MIPS_JALR,fgets
1:	jalr	$25
	move	$4,$sp

	move	$5,$17
	beq	$2,$0,.L135
	ld	$25,%call16(strstr)($28)

	.reloc	1f,R_MIPS_JALR,strstr
1:	jalr	$25
	move	$4,$sp

	beq	$2,$0,.L162
	ld	$25,%call16(feof)($28)

	ld	$25,%call16(fscanf)($28)
.L167:
	move	$6,$fp
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,fscanf
1:	jalr	$25
	move	$4,$16

	li	$3,1			# 0x1
	bne	$2,$3,.L126
	ld	$2,1064($sp)

	li	$3,3			# 0x3
	ld	$4,1048($sp)
	daddu	$2,$2,$21
	dlsa	$2,$2,$4,2
	lw	$4,1024($sp)
	sw	$4,0($2)
	ld	$2,1080($sp)
	beq	$2,$3,.L138
	nop

.L131:
	li	$2,1			# 0x1
.L138:
	addu	$21,$2,$21
	slt	$2,$21,6
	bne	$2,$0,.L170
	ld	$2,1064($sp)

	ld	$3,1080($sp)
	li	$2,3			# 0x3
	beq	$3,$2,.L164
	addiu	$3,$3,1

	ld	$2,1112($sp)
	daddiu	$2,$2,4
	lw	$18,0($2)
	sd	$2,1112($sp)
	ld	$2,1072($sp)
	sd	$3,1080($sp)
	daddiu	$2,$2,120
	sd	$2,1072($sp)
	ld	$2,1096($sp)
	daddiu	$2,$2,264
	b	.L146
	sd	$2,1096($sp)

	.align	3
.L162:
	.reloc	1f,R_MIPS_JALR,feof
1:	jalr	$25
	move	$4,$16

	move	$5,$17
	bne	$2,$0,.L135
	ld	$25,%call16(strstr)($28)

	.reloc	1f,R_MIPS_JALR,strstr
1:	jalr	$25
	move	$4,$sp

	beq	$2,$0,.L136
	nop

	b	.L167
	ld	$25,%call16(fscanf)($28)

	.align	3
.L135:
	ld	$7,%got_page(.LC5)($28)
	move	$6,$0
	move	$4,$0
	ld	$5,%got_page(.LC2)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	ld	$8,1056($sp)
	daddiu	$7,$7,%got_ofst(.LC5)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC2)

	b	.L168
	ld	$31,1224($sp)

.L164:
	li	$2,1			# 0x1
	li	$7,3			# 0x3
	b	.L145
	li	$6,6			# 0x6

.L141:
	daddiu	$2,$2,1
	beq	$2,$6,.L165
	ld	$25,%call16(fclose)($28)

.L145:
	sll	$4,$2,0
	gsmod	$3,$4,$7
	teq	$7,$0,7
	beq	$3,$0,.L141
	ld	$3,1048($sp)

	move	$5,$0
	dlsa	$3,$2,$3,3
	ld	$4,192($3)
	b	.L143
	ld	$3,240($3)

.L166:
	lw	$8,0($4)
	daddiu	$3,$3,4
	daddiu	$4,$4,4
	sw	$8,-4($3)
.L143:
	ld	$8,1040($sp)
	slt	$8,$5,$8
	bne	$8,$0,.L166
	addiu	$5,$5,1

	ld	$3,1048($sp)
	dlsa	$3,$2,$3,2
	lw	$4,48($3)
	b	.L141
	sw	$4,72($3)

	.align	3
.L165:
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	move	$4,$16

	ld	$4,1048($sp)
	li	$3,1			# 0x1
	ld	$31,1224($sp)
	move	$2,$0
	ld	$fp,1216($sp)
	ld	$28,1208($sp)
	ld	$23,1200($sp)
	ld	$22,1192($sp)
	ld	$21,1184($sp)
	ld	$20,1176($sp)
	ld	$19,1168($sp)
	ld	$18,1160($sp)
	ld	$17,1152($sp)
	ld	$16,1144($sp)
	sb	$3,2592($4)
	sb	$3,2593($4)
	jr	$31
	daddiu	$sp,$sp,1232

	.set	macro
	.set	reorder
	.end	_ZN4x26511ScalingList16parseScalingListEPKc
	.size	_ZN4x26511ScalingList16parseScalingListEPKc, .-_ZN4x26511ScalingList16parseScalingListEPKc
	.align	2
	.align	3
	.globl	_ZN4x26511ScalingList18setupQuantMatricesEi
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26511ScalingList18setupQuantMatricesEi
	.type	_ZN4x26511ScalingList18setupQuantMatricesEi, @function
_ZN4x26511ScalingList18setupQuantMatricesEi:
	.frame	$sp,176,$31		# vars= 96, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-176
	daddiu	$2,$4,48
	sd	$28,160($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26511ScalingList18setupQuantMatricesEi)))
	daddu	$28,$28,$25
	sd	$2,48($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26511ScalingList18setupQuantMatricesEi)))
	sd	$22,144($sp)
	ld	$2,%got_disp(_ZN4x26511ScalingList16s_numCoefPerSizeE)($28)
	lbu	$22,2592($4)
	sd	$fp,168($sp)
	sd	$2,80($sp)
	daddiu	$2,$4,288
	sd	$2,72($sp)
	li	$2,2			# 0x2
	sd	$2,56($sp)
	li	$2,16			# 0x10
	sd	$2,0($sp)
	ld	$2,%got_disp(_ZN4x26511ScalingList13s_quantScalesE)($28)
	sd	$23,152($sp)
	move	$23,$4
	sd	$21,136($sp)
	daddiu	$fp,$2,24
	sd	$20,128($sp)
	sd	$19,120($sp)
	sd	$18,112($sp)
	sd	$17,104($sp)
	sd	$16,96($sp)
	sd	$5,8($sp)
	sd	$4,64($sp)
.L186:
	ld	$3,56($sp)
	li	$2,1			# 0x1
	ld	$4,72($sp)
	sll	$16,$2,$3
	ld	$2,0($sp)
	slt	$25,$16,9
	sd	$4,16($sp)
	move	$13,$16
	ld	$4,64($sp)
	addiu	$3,$2,-1
	li	$2,8			# 0x8
	movn	$2,$16,$25
	dext	$3,$3,0,32
	move	$25,$2
	ld	$2,48($sp)
	dsll	$3,$3,2
	daddiu	$3,$3,4
	sd	$4,24($sp)
	sd	$3,40($sp)
	daddiu	$2,$2,-48
	sd	$2,32($sp)
	gsdiv	$2,$16,$25
	teq	$25,$0,7
	slt	$20,$2,2
	ld	$3,32($sp)
	.align	3
.L198:
	ld	$4,24($sp)
	ld	$17,16($sp)
	ld	$3,96($3)
	lw	$21,0($4)
	ld	$18,%got_disp(_ZN4x26511ScalingList13s_quantScalesE)($28)
	ld	$19,%got_disp(_ZN4x26511ScalingList16s_invQuantScalesE)($28)
	.align	3
.L183:
	ld	$12,0($17)
	beq	$22,$0,.L172
	ld	$14,1152($17)

	ld	$4,8($sp)
	li	$5,3			# 0x3
	beq	$4,$5,.L196
	nop

.L173:
	lw	$9,0($18)
	move	$11,$0
	move	$10,$0
	sll	$9,$9,4
	.align	3
.L176:
	gsdiv	$7,$10,$2
	teq	$2,$0,7
	gsmultu	$7,$7,$25
	dlsa	$6,$11,$12,2
	move	$4,$0
	.align	3
.L175:
	gsdiv	$5,$4,$2
	teq	$2,$0,7
	addu	$5,$5,$7
	daddiu	$6,$6,4
	dlsa	$5,$5,$3,2
	addiu	$4,$4,1
	lw	$8,0($5)
	gsdiv	$5,$9,$8
	teq	$8,$0,7
	bne	$13,$4,.L175
	sw	$5,-4($6)

	addiu	$10,$10,1
	bne	$4,$10,.L176
	addu	$11,$16,$11

	bne	$20,$0,.L177
	nop

	gsdiv	$5,$9,$21
	teq	$21,$0,7
	sw	$5,0($12)
.L177:
	lw	$9,0($19)
	move	$11,$0
	move	$10,$0
	.align	3
.L179:
	gsdiv	$8,$10,$2
	teq	$2,$0,7
	gsmultu	$8,$8,$25
	dlsa	$7,$11,$14,2
	move	$6,$0
	.align	3
.L178:
	gsdiv	$5,$6,$2
	teq	$2,$0,7
	addu	$5,$5,$8
	daddiu	$7,$7,4
	dlsa	$5,$5,$3,2
	addiu	$6,$6,1
	lw	$5,0($5)
	gsmultu	$5,$5,$9
	bne	$6,$4,.L178
	sw	$5,-4($7)

	addiu	$10,$10,1
	bne	$10,$4,.L179
	addu	$11,$16,$11

	bne	$20,$0,.L181
	gsmultu	$9,$9,$21

	sw	$9,0($14)
.L181:
	daddiu	$18,$18,4
.L197:
	daddiu	$17,$17,8
	bne	$fp,$18,.L183
	daddiu	$19,$19,4

	ld	$4,24($sp)
	ld	$3,32($sp)
	daddiu	$4,$4,4
	sd	$4,24($sp)
	daddiu	$3,$3,8
	ld	$4,16($sp)
	sd	$3,32($sp)
	daddiu	$4,$4,48
	sd	$4,16($sp)
	ld	$4,48($sp)
	bne	$3,$4,.L198
	ld	$3,32($sp)

	daddiu	$3,$4,48
	ld	$2,80($sp)
	li	$4,5			# 0x5
	sd	$3,48($sp)
	ld	$3,64($sp)
	daddiu	$2,$2,4
	sd	$2,80($sp)
	daddiu	$3,$3,24
	sd	$3,64($sp)
	ld	$3,72($sp)
	daddiu	$3,$3,288
	sd	$3,72($sp)
	ld	$3,56($sp)
	beq	$3,$4,.L171
	ld	$21,136($sp)

	lw	$2,0($2)
	sd	$2,0($sp)
	addiu	$2,$3,1
	b	.L186
	sd	$2,56($sp)

	.align	3
.L172:
	ld	$4,0($sp)
	blez	$4,.L181
	nop

	ld	$4,40($sp)
	lw	$6,0($18)
	lw	$5,0($19)
	daddu	$4,$12,$4
	.align	3
.L182:
	sw	$6,0($12)
	daddiu	$14,$14,4
	daddiu	$12,$12,4
	bne	$4,$12,.L182
	sw	$5,-4($14)

	b	.L197
	daddiu	$18,$18,4

.L196:
	ld	$4,200($23)
	ld	$11,248($23)
	ld	$10,208($23)
	ld	$9,256($23)
	daddiu	$24,$4,256
	ld	$8,224($23)
	ld	$7,272($23)
	ld	$6,232($23)
	ld	$5,280($23)
	.align	3
.L174:
	lw	$15,0($4)
	daddiu	$11,$11,4
	daddiu	$10,$10,4
	daddiu	$9,$9,4
	daddiu	$8,$8,4
	daddiu	$7,$7,4
	daddiu	$6,$6,4
	sw	$15,-4($11)
	daddiu	$5,$5,4
	daddiu	$4,$4,4
	lw	$15,-4($10)
	sw	$15,-4($9)
	lw	$15,-4($8)
	sw	$15,-4($7)
	lw	$15,-4($6)
	bne	$24,$4,.L174
	sw	$15,-4($5)

	lw	$7,52($23)
	lw	$6,56($23)
	lw	$5,64($23)
	lw	$4,68($23)
	sw	$7,76($23)
	sw	$6,80($23)
	sw	$5,88($23)
	b	.L173
	sw	$4,92($23)

.L171:
	ld	$fp,168($sp)
	ld	$28,160($sp)
	ld	$23,152($sp)
	ld	$22,144($sp)
	ld	$20,128($sp)
	ld	$19,120($sp)
	ld	$18,112($sp)
	ld	$17,104($sp)
	ld	$16,96($sp)
	jr	$31
	daddiu	$sp,$sp,176

	.set	macro
	.set	reorder
	.end	_ZN4x26511ScalingList18setupQuantMatricesEi
	.size	_ZN4x26511ScalingList18setupQuantMatricesEi, .-_ZN4x26511ScalingList18setupQuantMatricesEi
	.align	2
	.align	3
	.globl	_ZN4x26511ScalingList21processScalingListEncEPiS1_iiiiii
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26511ScalingList21processScalingListEncEPiS1_iiiiii
	.type	_ZN4x26511ScalingList21processScalingListEncEPiS1_iiiiii, @function
_ZN4x26511ScalingList21processScalingListEncEPiS1_iiiiii:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$8,.L200
	nop

	move	$24,$9
	move	$15,$0
	move	$14,$0
	.align	3
.L203:
	blez	$9,.L201
	nop

	gsdiv	$13,$14,$10
	teq	$10,$0,7
	gsmultu	$13,$13,$11
	dlsa	$4,$15,$6,2
	move	$3,$0
	.align	3
.L202:
	gsdiv	$2,$3,$10
	teq	$10,$0,7
	addu	$2,$2,$13
	daddiu	$4,$4,4
	dlsa	$2,$2,$5,2
	addiu	$3,$3,1
	lw	$12,0($2)
	gsdiv	$2,$7,$12
	teq	$12,$0,7
	bne	$9,$3,.L202
	sw	$2,-4($4)

.L201:
	addiu	$14,$14,1
	bne	$8,$14,.L203
	addu	$15,$24,$15

.L200:
	slt	$10,$10,2
	bne	$10,$0,.L211
	nop

	daddiu	$sp,$sp,-16
	lw	$3,16($sp)
	daddiu	$sp,$sp,16
	gsdiv	$2,$7,$3
	teq	$3,$0,7
	jr	$31
	sw	$2,0($6)

.L211:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x26511ScalingList21processScalingListEncEPiS1_iiiiii
	.size	_ZN4x26511ScalingList21processScalingListEncEPiS1_iiiiii, .-_ZN4x26511ScalingList21processScalingListEncEPiS1_iiiiii
	.align	2
	.align	3
	.globl	_ZN4x26511ScalingList21processScalingListDecEPiS1_iiiiii
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26511ScalingList21processScalingListDecEPiS1_iiiiii
	.type	_ZN4x26511ScalingList21processScalingListDecEPiS1_iiiiii, @function
_ZN4x26511ScalingList21processScalingListDecEPiS1_iiiiii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	blez	$8,.L213
	nop

	move	$15,$9
	move	$14,$0
	move	$13,$0
	.align	3
.L216:
	blez	$9,.L214
	nop

	gsdiv	$12,$13,$10
	teq	$10,$0,7
	gsmultu	$12,$12,$11
	dlsa	$4,$14,$6,2
	move	$3,$0
	.align	3
.L215:
	gsdiv	$2,$3,$10
	teq	$10,$0,7
	addu	$2,$2,$12
	daddiu	$4,$4,4
	dlsa	$2,$2,$5,2
	addiu	$3,$3,1
	lw	$2,0($2)
	gsmultu	$2,$2,$7
	bne	$9,$3,.L215
	sw	$2,-4($4)

.L214:
	addiu	$13,$13,1
	bne	$8,$13,.L216
	addu	$14,$15,$14

.L213:
	slt	$10,$10,2
	bne	$10,$0,.L224
	lw	$2,0($sp)

	gsmultu	$7,$7,$2
	jr	$31
	sw	$7,0($6)

.L224:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x26511ScalingList21processScalingListDecEPiS1_iiiiii
	.size	_ZN4x26511ScalingList21processScalingListDecEPiS1_iiiiii, .-_ZN4x26511ScalingList21processScalingListDecEPiS1_iiiiii
	.globl	_ZN4x26511ScalingList16s_invQuantScalesE
	.rdata
	.align	3
	.type	_ZN4x26511ScalingList16s_invQuantScalesE, @object
	.size	_ZN4x26511ScalingList16s_invQuantScalesE, 24
_ZN4x26511ScalingList16s_invQuantScalesE:
	.word	40
	.word	45
	.word	51
	.word	57
	.word	64
	.word	72
	.globl	_ZN4x26511ScalingList13s_quantScalesE
	.align	3
	.type	_ZN4x26511ScalingList13s_quantScalesE, @object
	.size	_ZN4x26511ScalingList13s_quantScalesE, 24
_ZN4x26511ScalingList13s_quantScalesE:
	.word	26214
	.word	23302
	.word	20560
	.word	18396
	.word	16384
	.word	14564
	.globl	_ZN4x26511ScalingList16s_numCoefPerSizeE
	.align	3
	.type	_ZN4x26511ScalingList16s_numCoefPerSizeE, @object
	.size	_ZN4x26511ScalingList16s_numCoefPerSizeE, 16
_ZN4x26511ScalingList16s_numCoefPerSizeE:
	.word	16
	.word	64
	.word	256
	.word	1024
	.globl	_ZN4x26511ScalingList13MatrixType_DCE
	.align	3
	.type	_ZN4x26511ScalingList13MatrixType_DCE, @object
	.size	_ZN4x26511ScalingList13MatrixType_DCE, 1056
_ZN4x26511ScalingList13MatrixType_DCE:
	.space	264
	.space	264
	.ascii	"INTRA16X16_LUMA_DC\000"
	.space	3
	.ascii	"INTRA16X16_CHROMAU_DC\000"
	.ascii	"INTRA16X16_CHROMAV_DC\000"
	.ascii	"INTER16X16_LUMA_DC\000"
	.space	3
	.ascii	"INTER16X16_CHROMAU_DC\000"
	.ascii	"INTER16X16_CHROMAV_DC\000"
	.space	132
	.ascii	"INTRA32X32_LUMA_DC\000"
	.space	3
	.ascii	"\000"
	.space	21
	.ascii	"\000"
	.space	21
	.ascii	"INTER32X32_LUMA_DC\000"
	.space	3
	.ascii	"\000"
	.space	21
	.ascii	"\000"
	.space	21
	.space	132
	.globl	_ZN4x26511ScalingList10MatrixTypeE
	.align	3
	.type	_ZN4x26511ScalingList10MatrixTypeE, @object
	.size	_ZN4x26511ScalingList10MatrixTypeE, 480
_ZN4x26511ScalingList10MatrixTypeE:
	.ascii	"INTRA4X4_LUMA\000"
	.space	6
	.ascii	"INTRA4X4_CHROMAU\000"
	.space	3
	.ascii	"INTRA4X4_CHROMAV\000"
	.space	3
	.ascii	"INTER4X4_LUMA\000"
	.space	6
	.ascii	"INTER4X4_CHROMAU\000"
	.space	3
	.ascii	"INTER4X4_CHROMAV\000"
	.space	3
	.ascii	"INTRA8X8_LUMA\000"
	.space	6
	.ascii	"INTRA8X8_CHROMAU\000"
	.space	3
	.ascii	"INTRA8X8_CHROMAV\000"
	.space	3
	.ascii	"INTER8X8_LUMA\000"
	.space	6
	.ascii	"INTER8X8_CHROMAU\000"
	.space	3
	.ascii	"INTER8X8_CHROMAV\000"
	.space	3
	.ascii	"INTRA16X16_LUMA\000"
	.space	4
	.ascii	"INTRA16X16_CHROMAU\000"
	.space	1
	.ascii	"INTRA16X16_CHROMAV\000"
	.space	1
	.ascii	"INTER16X16_LUMA\000"
	.space	4
	.ascii	"INTER16X16_CHROMAU\000"
	.space	1
	.ascii	"INTER16X16_CHROMAV\000"
	.space	1
	.ascii	"INTRA32X32_LUMA\000"
	.space	4
	.ascii	"\000"
	.space	19
	.ascii	"\000"
	.space	19
	.ascii	"INTER32X32_LUMA\000"
	.space	4
	.ascii	"\000"
	.space	19
	.ascii	"\000"
	.space	19
	.data
	.align	3
	.type	_ZN12_GLOBAL__N_1L20quantInterDefault8x8E, @object
	.size	_ZN12_GLOBAL__N_1L20quantInterDefault8x8E, 256
_ZN12_GLOBAL__N_1L20quantInterDefault8x8E:
	.word	16
	.word	16
	.word	16
	.word	16
	.word	17
	.word	18
	.word	20
	.word	24
	.word	16
	.word	16
	.word	16
	.word	17
	.word	18
	.word	20
	.word	24
	.word	25
	.word	16
	.word	16
	.word	17
	.word	18
	.word	20
	.word	24
	.word	25
	.word	28
	.word	16
	.word	17
	.word	18
	.word	20
	.word	24
	.word	25
	.word	28
	.word	33
	.word	17
	.word	18
	.word	20
	.word	24
	.word	25
	.word	28
	.word	33
	.word	41
	.word	18
	.word	20
	.word	24
	.word	25
	.word	28
	.word	33
	.word	41
	.word	54
	.word	20
	.word	24
	.word	25
	.word	28
	.word	33
	.word	41
	.word	54
	.word	71
	.word	24
	.word	25
	.word	28
	.word	33
	.word	41
	.word	54
	.word	71
	.word	91
	.align	3
	.type	_ZN12_GLOBAL__N_1L20quantIntraDefault8x8E, @object
	.size	_ZN12_GLOBAL__N_1L20quantIntraDefault8x8E, 256
_ZN12_GLOBAL__N_1L20quantIntraDefault8x8E:
	.word	16
	.word	16
	.word	16
	.word	16
	.word	17
	.word	18
	.word	21
	.word	24
	.word	16
	.word	16
	.word	16
	.word	16
	.word	17
	.word	19
	.word	22
	.word	25
	.word	16
	.word	16
	.word	17
	.word	18
	.word	20
	.word	22
	.word	25
	.word	29
	.word	16
	.word	16
	.word	18
	.word	21
	.word	24
	.word	27
	.word	31
	.word	36
	.word	17
	.word	17
	.word	20
	.word	24
	.word	30
	.word	35
	.word	41
	.word	47
	.word	18
	.word	19
	.word	22
	.word	27
	.word	35
	.word	44
	.word	54
	.word	65
	.word	21
	.word	22
	.word	25
	.word	31
	.word	41
	.word	54
	.word	70
	.word	88
	.word	24
	.word	25
	.word	29
	.word	36
	.word	47
	.word	65
	.word	88
	.word	115
	.align	3
	.type	_ZN12_GLOBAL__N_1L17quantTSDefault4x4E, @object
	.size	_ZN12_GLOBAL__N_1L17quantTSDefault4x4E, 64
_ZN12_GLOBAL__N_1L17quantTSDefault4x4E:
	.word	16
	.word	16
	.word	16
	.word	16
	.word	16
	.word	16
	.word	16
	.word	16
	.word	16
	.word	16
	.word	16
	.word	16
	.word	16
	.word	16
	.word	16
	.word	16
	.ident	"GCC: (GNU) 7.3.0"
