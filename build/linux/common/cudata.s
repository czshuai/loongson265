	.file	1 "cudata.cpp"
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
	.ent	_ZL6bcast1Phh
	.type	_ZL6bcast1Phh, @function
_ZL6bcast1Phh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	sb	$5,0($4)

	.set	macro
	.set	reorder
	.end	_ZL6bcast1Phh
	.size	_ZL6bcast1Phh, .-_ZL6bcast1Phh
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL5copy4PhS_
	.type	_ZL5copy4PhS_, @function
_ZL5copy4PhS_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($5)
	jr	$31
	sw	$2,0($4)

	.set	macro
	.set	reorder
	.end	_ZL5copy4PhS_
	.size	_ZL5copy4PhS_, .-_ZL5copy4PhS_
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL6bcast4Phh
	.type	_ZL6bcast4Phh, @function
_ZL6bcast4Phh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$2,$5,8
	addu	$5,$2,$5
	sll	$2,$5,16
	addu	$5,$5,$2
	jr	$31
	sw	$5,0($4)

	.set	macro
	.set	reorder
	.end	_ZL6bcast4Phh
	.size	_ZL6bcast4Phh, .-_ZL6bcast4Phh
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL6copy16PhS_
	.type	_ZL6copy16PhS_, @function
_ZL6copy16PhS_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,0($5)
	sd	$2,0($4)
	ld	$2,8($5)
	jr	$31
	sd	$2,8($4)

	.set	macro
	.set	reorder
	.end	_ZL6copy16PhS_
	.size	_ZL6copy16PhS_, .-_ZL6copy16PhS_
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL7bcast16Phh
	.type	_ZL7bcast16Phh, @function
_ZL7bcast16Phh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$2,$5,8
	daddu	$5,$2,$5
	dsll	$2,$5,16
	daddu	$5,$5,$2
	dsll	$2,$5,32
	daddu	$5,$5,$2
	sd	$5,0($4)
	jr	$31
	sd	$5,8($4)

	.set	macro
	.set	reorder
	.end	_ZL7bcast16Phh
	.size	_ZL7bcast16Phh, .-_ZL7bcast16Phh
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL6copy64PhS_
	.type	_ZL6copy64PhS_, @function
_ZL6copy64PhS_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,0($5)
	sd	$2,0($4)
	ld	$2,8($5)
	sd	$2,8($4)
	ld	$2,16($5)
	sd	$2,16($4)
	ld	$2,24($5)
	sd	$2,24($4)
	ld	$2,32($5)
	sd	$2,32($4)
	ld	$2,40($5)
	sd	$2,40($4)
	ld	$2,48($5)
	sd	$2,48($4)
	ld	$2,56($5)
	jr	$31
	sd	$2,56($4)

	.set	macro
	.set	reorder
	.end	_ZL6copy64PhS_
	.size	_ZL6copy64PhS_, .-_ZL6copy64PhS_
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL7bcast64Phh
	.type	_ZL7bcast64Phh, @function
_ZL7bcast64Phh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dsll	$2,$5,8
	daddu	$5,$2,$5
	dsll	$2,$5,16
	daddu	$5,$5,$2
	dsll	$2,$5,32
	daddu	$5,$5,$2
	sd	$5,0($4)
	sd	$5,8($4)
	sd	$5,16($4)
	sd	$5,24($4)
	sd	$5,32($4)
	sd	$5,40($4)
	sd	$5,48($4)
	jr	$31
	sd	$5,56($4)

	.set	macro
	.set	reorder
	.end	_ZL7bcast64Phh
	.size	_ZL7bcast64Phh, .-_ZL7bcast64Phh
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL8bcast256Phh
	.type	_ZL8bcast256Phh, @function
_ZL8bcast256Phh:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL8bcast256Phh)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL8bcast256Phh)))
	ld	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	li	$6,256			# 0x100

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZL8bcast256Phh
	.size	_ZL8bcast256Phh, .-_ZL8bcast256Phh
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL7copy256PhS_
	.type	_ZL7copy256PhS_, @function
_ZL7copy256PhS_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$8,$5,256
.L19:
	ldl	$7,7($5)
	ldl	$6,15($5)
	ldl	$3,23($5)
	ldl	$2,31($5)
	ldr	$7,0($5)
	ldr	$6,8($5)
	ldr	$2,24($5)
	ldr	$3,16($5)
	daddiu	$5,$5,32
	sdl	$7,7($4)
	sdr	$7,0($4)
	sdl	$6,15($4)
	sdr	$6,8($4)
	sdl	$3,23($4)
	sdr	$3,16($4)
	sdl	$2,31($4)
	sdr	$2,24($4)
	bne	$5,$8,.L19
	daddiu	$4,$4,32

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZL7copy256PhS_
	.size	_ZL7copy256PhS_, .-_ZL7copy256PhS_
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8
	.type	_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8, @function
_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dlsa	$4,$6,$4,3
	dext	$5,$5,0,32
	ld	$2,376($4)
	dlsa	$2,$5,$2,2
	lw	$2,0($2)
	sw	$2,0($7)
	ld	$2,168($4)
	daddu	$5,$2,$5
	lb	$2,0($5)
	jr	$31
	sw	$2,4($7)

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8
	.size	_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8, .-_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8
	.align	2
	.align	3
	.globl	_ZN4x2656CUDataC2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656CUDataC2Ev
	.type	_ZN4x2656CUDataC2Ev, @function
_ZN4x2656CUDataC2Ev:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	li	$6,496			# 0x1f0
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656CUDataC2Ev)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656CUDataC2Ev)))
	ld	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN4x2656CUDataC2Ev
	.size	_ZN4x2656CUDataC2Ev, .-_ZN4x2656CUDataC2Ev
	.globl	_ZN4x2656CUDataC1Ev
	_ZN4x2656CUDataC1Ev = _ZN4x2656CUDataC2Ev
	.align	2
	.align	3
	.globl	_ZN4x2656CUData10initializeERKNS_13CUDataMemPoolEjRK10x265_parami
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656CUData10initializeERKNS_13CUDataMemPoolEjRK10x265_parami
	.type	_ZN4x2656CUData10initializeERKNS_13CUDataMemPoolEjRK10x265_parami, @function
_ZN4x2656CUData10initializeERKNS_13CUDataMemPoolEjRK10x265_parami:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$15,60($7)
	daddiu	$sp,$sp,-16
	sll	$11,$6,1
	ld	$10,0($4)
	move	$2,$8
	sd	$28,8($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656CUData10initializeERKNS_13CUDataMemPoolEjRK10x265_parami)))
	xori	$24,$15,0x1
	addiu	$13,$15,-1
	sw	$15,116($4)
	sltu	$24,$24,1
	sltu	$13,$13,2
	sw	$24,124($4)
	daddu	$28,$28,$25
	sw	$13,120($4)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656CUData10initializeERKNS_13CUDataMemPoolEjRK10x265_parami)))
	lw	$3,808($7)
	srl	$3,$3,$11
	beq	$10,$0,.L40
	sw	$3,112($4)

.L27:
	li	$9,16			# 0x10
.L43:
	beq	$3,$9,.L32
	sltu	$8,$3,17

	bne	$8,$0,.L41
	li	$8,64			# 0x40

	beq	$3,$8,.L35
	li	$8,256			# 0x100

	bne	$3,$8,.L31
	ld	$8,%got_page(_ZL7copy256PhS_)($28)

	daddiu	$8,$8,%got_ofst(_ZL7copy256PhS_)
	sd	$8,64($4)
	ld	$8,%got_page(_ZL8bcast256Phh)($28)
	daddiu	$8,$8,%got_ofst(_ZL8bcast256Phh)
	sd	$8,72($4)
	ld	$8,%got_page(_ZL6copy64PhS_)($28)
	daddiu	$8,$8,%got_ofst(_ZL6copy64PhS_)
	sd	$8,80($4)
	ld	$8,%got_page(_ZL7bcast64Phh)($28)
	daddiu	$8,$8,%got_ofst(_ZL7bcast64Phh)
	sd	$8,88($4)
.L31:
	move	$8,$2
	dext	$2,$3,0,32
	ld	$14,0($5)
	gsmultu	$3,$3,$8
	dsll	$10,$2,2
	sll	$9,$3,2
	dext	$11,$3,0,32
	dext	$12,$9,0,32
	dsll	$11,$11,2
	beq	$15,$0,.L42
	dsll	$12,$12,2

.L37:
	lsa	$9,$3,$3,1
	addu	$13,$13,$24
	sll	$9,$9,3
	subu	$9,$9,$3
	dext	$9,$9,0,32
	daddu	$9,$14,$9
	daddu	$3,$9,$2
	sd	$9,136($4)
	daddu	$9,$3,$2
	sd	$3,144($4)
	daddu	$3,$9,$2
	sd	$9,152($4)
	daddu	$9,$3,$2
	sd	$3,160($4)
	daddu	$3,$9,$2
	sd	$9,168($4)
	daddu	$9,$3,$2
	sd	$3,176($4)
	daddu	$3,$9,$2
	sd	$9,184($4)
	daddu	$9,$3,$2
	sd	$3,192($4)
	daddu	$3,$9,$2
	sd	$9,200($4)
	daddu	$9,$3,$2
	sd	$3,216($4)
	daddu	$3,$9,$2
	sd	$9,224($4)
	daddu	$9,$3,$2
	sd	$3,208($4)
	daddu	$3,$9,$2
	sd	$9,232($4)
	daddu	$9,$3,$2
	sd	$3,240($4)
	daddu	$3,$9,$2
	sd	$9,248($4)
	daddu	$9,$3,$2
	sd	$3,256($4)
	daddu	$3,$9,$2
	sd	$9,264($4)
	daddu	$9,$3,$2
	sd	$3,272($4)
	daddu	$3,$9,$2
	sd	$9,280($4)
	daddu	$9,$3,$2
	sd	$3,288($4)
	daddu	$3,$9,$2
	sd	$9,296($4)
	daddu	$2,$3,$2
	sd	$3,304($4)
	sd	$2,312($4)
	ld	$2,16($5)
	daddu	$2,$2,$12
	daddu	$3,$2,$10
	sd	$2,376($4)
	daddu	$2,$3,$10
	sd	$3,384($4)
	daddu	$10,$2,$10
	sd	$2,392($4)
	sd	$10,400($4)
	ld	$2,24($5)
	daddu	$11,$2,$11
	sd	$11,320($4)
	lw	$3,180($7)
	ld	$7,8($5)
	srl	$6,$3,$6
	gsmultu	$6,$6,$6
	srl	$3,$6,$13
	dext	$5,$6,0,32
	lsa	$6,$3,$6,1
	dext	$3,$3,0,32
	gsmultu	$2,$6,$8
	daddu	$3,$5,$3
	dext	$2,$2,0,32
	dlsa	$2,$2,$7,1
	dlsa	$5,$5,$2,1
	dlsa	$3,$3,$2,1
	sd	$2,328($4)
	ld	$28,8($sp)
	daddiu	$sp,$sp,16
	sd	$5,336($4)
	sd	$3,344($4)
	sd	$0,472($4)
	sd	$0,448($4)
	sd	$0,480($4)
	sd	$0,456($4)
	sd	$0,488($4)
	jr	$31
	sd	$0,464($4)

	.align	3
.L35:
	ld	$8,%got_page(_ZL6copy64PhS_)($28)
	daddiu	$8,$8,%got_ofst(_ZL6copy64PhS_)
	sd	$8,64($4)
	ld	$8,%got_page(_ZL7bcast64Phh)($28)
	daddiu	$8,$8,%got_ofst(_ZL7bcast64Phh)
	sd	$8,72($4)
	ld	$8,%got_page(_ZL6copy16PhS_)($28)
	daddiu	$8,$8,%got_ofst(_ZL6copy16PhS_)
	sd	$8,80($4)
	ld	$8,%got_page(_ZL7bcast16Phh)($28)
	daddiu	$8,$8,%got_ofst(_ZL7bcast16Phh)
	sd	$8,88($4)
	move	$8,$2
	dext	$2,$3,0,32
	gsmultu	$3,$3,$8
	ld	$14,0($5)
	dsll	$10,$2,2
	sll	$9,$3,2
	dext	$11,$3,0,32
	dext	$12,$9,0,32
	dsll	$11,$11,2
	bne	$15,$0,.L37
	dsll	$12,$12,2

.L42:
	addu	$9,$9,$3
	sll	$9,$9,2
	subu	$3,$9,$3
	dext	$3,$3,0,32
	daddu	$3,$14,$3
	daddu	$13,$3,$2
	sd	$3,136($4)
	daddu	$9,$13,$2
	sd	$13,144($4)
	daddu	$3,$9,$2
	sd	$9,152($4)
	daddu	$9,$3,$2
	sd	$3,160($4)
	daddu	$3,$9,$2
	sd	$9,168($4)
	daddu	$9,$3,$2
	sd	$3,176($4)
	daddu	$3,$9,$2
	sd	$9,184($4)
	daddu	$9,$3,$2
	sd	$3,192($4)
	daddu	$3,$9,$2
	sd	$9,200($4)
	daddu	$9,$3,$2
	sd	$3,216($4)
	daddu	$3,$9,$2
	sd	$9,224($4)
	daddu	$9,$3,$2
	sd	$3,208($4)
	daddu	$3,$9,$2
	sd	$9,232($4)
	daddu	$9,$3,$2
	sd	$3,240($4)
	daddu	$3,$9,$2
	sd	$9,248($4)
	daddu	$9,$3,$2
	sd	$3,256($4)
	daddu	$3,$9,$2
	sd	$9,264($4)
	daddu	$2,$3,$2
	sd	$3,288($4)
	sd	$2,312($4)
	ld	$2,16($5)
	daddu	$2,$2,$12
	daddu	$3,$2,$10
	sd	$2,376($4)
	daddu	$2,$3,$10
	sd	$3,384($4)
	daddu	$10,$2,$10
	sd	$2,392($4)
	sd	$10,400($4)
	ld	$2,24($5)
	daddu	$11,$2,$11
	sd	$11,320($4)
	lw	$3,180($7)
	ld	$5,8($5)
	sd	$0,344($4)
	srl	$6,$3,$6
	sd	$0,336($4)
	gsmultu	$6,$6,$6
	sd	$0,304($4)
	gsmultu	$2,$6,$8
	dext	$2,$2,0,32
	dlsa	$2,$2,$5,1
	sd	$2,328($4)
	sd	$0,296($4)
	ld	$28,8($sp)
	daddiu	$sp,$sp,16
	sd	$0,280($4)
	sd	$0,272($4)
	sd	$0,472($4)
	jr	$31
	sd	$0,448($4)

	.align	3
.L41:
	li	$8,4			# 0x4
	bne	$3,$8,.L31
	ld	$8,%got_page(_ZL5copy4PhS_)($28)

	sd	$0,80($4)
	sd	$0,88($4)
	daddiu	$8,$8,%got_ofst(_ZL5copy4PhS_)
	sd	$8,64($4)
	ld	$8,%got_page(_ZL6bcast4Phh)($28)
	daddiu	$8,$8,%got_ofst(_ZL6bcast4Phh)
	b	.L31
	sd	$8,72($4)

	.align	3
.L40:
	lw	$10,804($7)
	li	$8,1			# 0x1
	li	$9,5			# 0x5
	sll	$8,$8,$10
	sw	$8,40($4)
	lw	$8,796($7)
	beq	$8,$9,.L28
	li	$9,6			# 0x6

	beq	$8,$9,.L29
	li	$9,4			# 0x4

	bne	$8,$9,.L43
	li	$9,16			# 0x10

	ld	$8,%got_page(_ZL7bcast16Phh)($28)
	sd	$0,24($4)
	sd	$0,32($4)
	daddiu	$8,$8,%got_ofst(_ZL7bcast16Phh)
	sd	$8,0($4)
	ld	$8,%got_page(_ZL6bcast4Phh)($28)
	daddiu	$8,$8,%got_ofst(_ZL6bcast4Phh)
	sd	$8,8($4)
	ld	$8,%got_page(_ZL6bcast1Phh)($28)
	daddiu	$8,$8,%got_ofst(_ZL6bcast1Phh)
	b	.L43
	sd	$8,16($4)

	.align	3
.L32:
	ld	$8,%got_page(_ZL6copy16PhS_)($28)
	daddiu	$8,$8,%got_ofst(_ZL6copy16PhS_)
	sd	$8,64($4)
	ld	$8,%got_page(_ZL7bcast16Phh)($28)
	daddiu	$8,$8,%got_ofst(_ZL7bcast16Phh)
	sd	$8,72($4)
	ld	$8,%got_page(_ZL5copy4PhS_)($28)
	daddiu	$8,$8,%got_ofst(_ZL5copy4PhS_)
	sd	$8,80($4)
	ld	$8,%got_page(_ZL6bcast4Phh)($28)
	daddiu	$8,$8,%got_ofst(_ZL6bcast4Phh)
	b	.L31
	sd	$8,88($4)

	.align	3
.L29:
	ld	$8,%got_page(_ZL8bcast256Phh)($28)
	daddiu	$8,$8,%got_ofst(_ZL8bcast256Phh)
	sd	$8,0($4)
	ld	$8,%got_page(_ZL7bcast64Phh)($28)
	daddiu	$8,$8,%got_ofst(_ZL7bcast64Phh)
	sd	$8,8($4)
	ld	$8,%got_page(_ZL7bcast16Phh)($28)
	daddiu	$8,$8,%got_ofst(_ZL7bcast16Phh)
	sd	$8,16($4)
	ld	$8,%got_page(_ZL6bcast4Phh)($28)
	daddiu	$8,$8,%got_ofst(_ZL6bcast4Phh)
	sd	$8,24($4)
	ld	$8,%got_page(_ZL6bcast1Phh)($28)
	daddiu	$8,$8,%got_ofst(_ZL6bcast1Phh)
	b	.L27
	sd	$8,32($4)

	.align	3
.L28:
	ld	$8,%got_page(_ZL7bcast64Phh)($28)
	sd	$0,32($4)
	daddiu	$8,$8,%got_ofst(_ZL7bcast64Phh)
	sd	$8,0($4)
	ld	$8,%got_page(_ZL7bcast16Phh)($28)
	daddiu	$8,$8,%got_ofst(_ZL7bcast16Phh)
	sd	$8,8($4)
	ld	$8,%got_page(_ZL6bcast4Phh)($28)
	daddiu	$8,$8,%got_ofst(_ZL6bcast4Phh)
	sd	$8,16($4)
	ld	$8,%got_page(_ZL6bcast1Phh)($28)
	daddiu	$8,$8,%got_ofst(_ZL6bcast1Phh)
	b	.L27
	sd	$8,24($4)

	.set	macro
	.set	reorder
	.end	_ZN4x2656CUData10initializeERKNS_13CUDataMemPoolEjRK10x265_parami
	.size	_ZN4x2656CUData10initializeERKNS_13CUDataMemPoolEjRK10x265_parami, .-_ZN4x2656CUData10initializeERKNS_13CUDataMemPoolEjRK10x265_parami
	.align	2
	.align	3
	.globl	_ZN4x2656CUData7initCTUERKNS_5FrameEjijjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656CUData7initCTUERKNS_5FrameEjijjj
	.type	_ZN4x2656CUData7initCTUERKNS_5FrameEjijjj, @function
_ZN4x2656CUData7initCTUERKNS_5FrameEjijjj:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656CUData7initCTUERKNS_5FrameEjijjj)))
	sd	$17,8($sp)
	daddu	$28,$28,$25
	move	$17,$5
	sd	$16,0($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656CUData7initCTUERKNS_5FrameEjijjj)))
	ld	$3,0($5)
	andi	$5,$7,0xff
	ld	$25,72($4)
	ld	$4,136($4)
	sd	$3,48($16)
	ld	$2,0($3)
	sw	$6,96($16)
	sd	$2,56($16)
	ld	$11,0($2)
	ld	$7,2472($2)
	lw	$12,44($11)
	lw	$11,796($7)
	gsmodu	$7,$6,$12
	teq	$12,$0,7
	sll	$7,$7,$11
	sw	$7,104($16)
	ld	$7,0($2)
	ld	$2,2472($2)
	lw	$11,44($7)
	lw	$7,796($2)
	sw	$0,100($16)
	gsdivu	$2,$6,$11
	teq	$11,$0,7
	sll	$2,$2,$7
	sw	$2,108($16)
	ld	$2,16($3)
	lw	$2,808($2)
	sb	$8,128($16)
	sb	$9,129($16)
	sb	$10,130($16)
	jalr	$25
	sw	$2,112($16)

	ld	$2,56($16)
	ld	$25,72($16)
	ld	$4,144($16)
	ld	$2,2472($2)
	jalr	$25
	lbu	$5,796($2)

	ld	$25,72($16)
	li	$5,255			# 0xff
	jalr	$25
	ld	$4,152($16)

	ld	$25,72($16)
	li	$5,255			# 0xff
	jalr	$25
	ld	$4,312($16)

	ld	$2,0($17)
	ld	$25,72($16)
	ld	$4,160($16)
	ld	$2,16($2)
	jalr	$25
	lbu	$5,376($2)

	ld	$3,56($16)
	li	$2,2			# 0x2
	lw	$3,2264($3)
	beq	$3,$2,.L45
	li	$5,255			# 0xff

	ld	$25,72($16)
	jalr	$25
	ld	$4,168($16)

	ld	$25,72($16)
	li	$5,255			# 0xff
	jalr	$25
	ld	$4,176($16)

.L45:
	ld	$2,17200($17)
	li	$7,12			# 0xc
	li	$3,16			# 0x10
	lw	$6,112($16)
	move	$5,$0
	ld	$25,%call16(memset)($28)
	lw	$2,60($2)
	ld	$4,184($16)
	movz	$3,$7,$2
	gsmultu	$6,$6,$3
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dext	$6,$6,0,32

	daddiu	$2,$16,352
	daddiu	$4,$16,373
	li	$3,-1			# 0xffffffffffffffff
	.align	3
.L47:
	sb	$3,0($2)
	daddiu	$2,$2,1
	bne	$2,$4,.L47
	nop

	ld	$3,56($16)
	sb	$0,44($16)
	lw	$2,96($16)
	ld	$3,0($3)
	lw	$3,44($3)
	gsmodu	$4,$2,$3
	teq	$3,$0,7
	beq	$4,$0,.L48
	move	$5,$0

	ld	$7,48($16)
	addiu	$5,$2,-1
	dext	$6,$5,0,32
	dsll	$5,$6,5
	ld	$7,88($7)
	dsubu	$5,$5,$6
	dlsa	$5,$5,$7,4
.L48:
	sltu	$6,$2,$3
	bne	$6,$0,.L51
	sd	$5,432($16)

	lbu	$6,128($16)
	bne	$6,$0,.L51
	subu	$2,$2,$3

	ld	$7,48($16)
	dext	$8,$2,0,32
	dsll	$6,$8,5
	ld	$9,88($7)
	dsubu	$6,$6,$8
	dlsa	$6,$6,$9,4
	beq	$5,$0,.L52
	sd	$6,424($16)

	beq	$6,$0,.L50
	addiu	$5,$2,-1

	ld	$8,88($7)
	dext	$5,$5,0,32
	dsll	$6,$5,5
	dsubu	$5,$6,$5
	dlsa	$5,$5,$8,4
	sd	$5,408($16)
.L53:
	addiu	$3,$3,-1
	sltu	$3,$4,$3
	beq	$3,$0,.L65
	addiu	$2,$2,1

	ld	$4,88($7)
	move	$5,$0
	dext	$2,$2,0,32
	lwu	$6,112($16)
	dsll	$3,$2,5
	ld	$25,%call16(memset)($28)
	dsubu	$2,$3,$2
	dlsa	$2,$2,$4,4
	ld	$4,320($16)
	dsll	$6,$6,2
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sd	$2,416($16)

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L51:
	sd	$0,424($16)
.L50:
	sd	$0,408($16)
.L65:
	lwu	$6,112($16)
.L66:
	move	$2,$0
	move	$5,$0
	ld	$25,%call16(memset)($28)
	ld	$4,320($16)
	dsll	$6,$6,2
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sd	$2,416($16)

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

.L52:
	bne	$6,$0,.L53
	sd	$0,408($16)

	b	.L66
	lwu	$6,112($16)

	.set	macro
	.set	reorder
	.end	_ZN4x2656CUData7initCTUERKNS_5FrameEjijjj
	.size	_ZN4x2656CUData7initCTUERKNS_5FrameEjijjj, .-_ZN4x2656CUData7initCTUERKNS_5FrameEjijjj
	.align	2
	.align	3
	.globl	_ZN4x2656CUData9initSubCUERKS0_RKNS_6CUGeomEi
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656CUData9initSubCUERKS0_RKNS_6CUGeomEi
	.type	_ZN4x2656CUData9initSubCUERKS0_RKNS_6CUGeomEi, @function
_ZN4x2656CUData9initSubCUERKS0_RKNS_6CUGeomEi:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,8($6)
	daddiu	$sp,$sp,-48
	sd	$17,16($sp)
	move	$17,$5
	andi	$5,$7,0xff
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656CUData9initSubCUERKS0_RKNS_6CUGeomEi)))
	sd	$18,24($sp)
	daddu	$28,$28,$25
	move	$18,$6
	sd	$16,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656CUData9initSubCUERKS0_RKNS_6CUGeomEi)))
	move	$16,$4
	sw	$2,100($4)
	ld	$2,48($17)
	ld	$3,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	sd	$2,48($4)
	ld	$2,56($17)
	sd	$2,56($4)
	lw	$2,96($17)
	sw	$2,96($4)
	lwu	$2,8($6)
	lw	$4,104($17)
	daddu	$3,$3,$2
	lbu	$2,0($3)
	ld	$3,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	addu	$2,$2,$4
	sw	$2,104($16)
	lwu	$2,8($6)
	lw	$4,108($17)
	daddu	$3,$3,$2
	lbu	$2,0($3)
	addu	$2,$2,$4
	sw	$2,108($16)
	ld	$2,432($17)
	sd	$2,432($16)
	ld	$2,424($17)
	sd	$2,424($16)
	ld	$2,408($17)
	sd	$2,408($16)
	ld	$2,416($17)
	sd	$2,416($16)
	lbu	$2,128($17)
	sb	$2,128($16)
	lbu	$2,129($17)
	ld	$25,72($16)
	ld	$4,136($16)
	sb	$2,129($16)
	lbu	$2,130($17)
	sb	$2,130($16)
	ld	$2,448($17)
	sd	$2,448($16)
	ld	$2,472($17)
	sd	$2,472($16)
	ld	$2,456($17)
	sd	$2,456($16)
	ld	$2,480($17)
	sd	$2,480($16)
	ld	$2,464($17)
	sd	$2,464($16)
	ld	$2,488($17)
	jalr	$25
	sd	$2,488($16)

	ld	$25,72($16)
	lbu	$5,0($18)
	jalr	$25
	ld	$4,144($16)

	ld	$25,72($16)
	li	$5,255			# 0xff
	jalr	$25
	ld	$4,152($16)

	ld	$25,72($16)
	li	$5,255			# 0xff
	jalr	$25
	ld	$4,312($16)

	ld	$2,48($16)
	ld	$25,72($16)
	ld	$4,160($16)
	ld	$2,16($2)
	jalr	$25
	lbu	$5,376($2)

	ld	$25,72($16)
	li	$5,255			# 0xff
	jalr	$25
	ld	$4,168($16)

	ld	$25,72($16)
	li	$5,255			# 0xff
	jalr	$25
	ld	$4,176($16)

	ld	$25,72($16)
	lbu	$5,20($18)
	jalr	$25
	ld	$4,184($16)

	lw	$2,116($17)
	li	$7,11			# 0xb
	lw	$6,112($16)
	li	$3,15			# 0xf
	move	$5,$0
	ld	$25,%call16(memset)($28)
	movz	$3,$7,$2
	ld	$4,192($16)
	gsmultu	$6,$6,$3
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dext	$6,$6,0,32

	lwu	$6,112($16)
	move	$5,$0
	ld	$25,%call16(memset)($28)
	ld	$4,320($16)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dsll	$6,$6,2

	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN4x2656CUData9initSubCUERKS0_RKNS_6CUGeomEi
	.size	_ZN4x2656CUData9initSubCUERKS0_RKNS_6CUGeomEi, .-_ZN4x2656CUData9initSubCUERKS0_RKNS_6CUGeomEi
	.align	2
	.align	3
	.globl	_ZN4x2656CUData12copyPartFromERKS0_RKNS_6CUGeomEj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656CUData12copyPartFromERKS0_RKNS_6CUGeomEj
	.type	_ZN4x2656CUData12copyPartFromERKS0_RKNS_6CUGeomEj, @function
_ZN4x2656CUData12copyPartFromERKS0_RKNS_6CUGeomEj:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	lw	$2,12($6)
	sd	$31,56($sp)
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656CUData12copyPartFromERKS0_RKNS_6CUGeomEj)))
	sd	$21,40($sp)
	gsmultu	$2,$2,$7
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656CUData12copyPartFromERKS0_RKNS_6CUGeomEj)))
	move	$21,$7
	sd	$19,24($sp)
	move	$19,$6
	sd	$18,16($sp)
	sd	$17,8($sp)
	move	$17,$5
	sd	$16,0($sp)
	move	$16,$4
	dext	$18,$2,0,32
	lbu	$3,128($5)
	dsll	$20,$18,2
	ld	$4,136($4)
	ld	$25,80($16)
	sb	$3,128($16)
	lbu	$3,130($5)
	daddu	$4,$4,$18
	sb	$3,130($16)
	jalr	$25
	ld	$5,136($5)

	ld	$4,144($16)
	ld	$25,80($16)
	ld	$5,144($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,152($16)
	ld	$25,80($16)
	ld	$5,152($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,160($16)
	ld	$25,80($16)
	ld	$5,160($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,168($16)
	ld	$25,80($16)
	ld	$5,168($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,176($16)
	ld	$25,80($16)
	ld	$5,176($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,184($16)
	ld	$25,80($16)
	ld	$5,184($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,192($16)
	ld	$25,80($16)
	ld	$5,192($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,200($16)
	ld	$25,80($16)
	ld	$5,200($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,208($16)
	ld	$25,80($16)
	ld	$5,208($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,232($16)
	ld	$25,80($16)
	ld	$5,232($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,240($16)
	ld	$25,80($16)
	ld	$5,240($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,248($16)
	ld	$25,80($16)
	ld	$5,248($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,256($16)
	ld	$25,80($16)
	ld	$5,256($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,264($16)
	ld	$25,80($16)
	ld	$5,264($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,288($16)
	ld	$25,80($16)
	ld	$5,288($17)
	jalr	$25
	daddu	$4,$4,$18

	lwu	$6,12($19)
	ld	$4,376($16)
	ld	$25,%call16(memcpy)($28)
	ld	$5,376($17)
	dsll	$6,$6,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$4,$20

	lwu	$6,12($19)
	ld	$4,384($16)
	ld	$25,%call16(memcpy)($28)
	ld	$5,384($17)
	dsll	$6,$6,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$4,$20

	lwu	$6,12($19)
	ld	$4,392($16)
	ld	$25,%call16(memcpy)($28)
	ld	$5,392($17)
	dsll	$6,$6,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$4,$20

	lwu	$6,12($19)
	ld	$4,400($16)
	ld	$25,%call16(memcpy)($28)
	ld	$5,400($17)
	dsll	$6,$6,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$4,$20

	lwu	$6,12($19)
	ld	$4,320($16)
	ld	$25,%call16(memcpy)($28)
	ld	$5,320($17)
	dsll	$6,$6,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$4,$20

	ld	$2,56($16)
	lw	$7,20($19)
	li	$19,1			# 0x1
	ld	$3,328($16)
	ld	$2,2472($2)
	ld	$25,%call16(memcpy)($28)
	ld	$5,328($17)
	lw	$2,796($2)
	subu	$2,$2,$7
	sll	$2,$2,1
	sll	$19,$19,$2
	sll	$21,$21,$2
	dext	$4,$21,0,32
	dext	$6,$19,0,32
	dsll	$6,$6,1
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dlsa	$4,$4,$3,1

	lw	$2,116($17)
	beq	$2,$0,.L77
	ld	$31,56($sp)

	ld	$4,272($16)
	ld	$25,80($16)
	ld	$5,272($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,280($16)
	ld	$25,80($16)
	ld	$5,280($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,296($16)
	ld	$25,80($16)
	ld	$5,296($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,304($16)
	ld	$25,80($16)
	ld	$5,304($17)
	jalr	$25
	daddu	$4,$4,$18

	ld	$4,312($16)
	ld	$25,80($16)
	ld	$5,312($17)
	jalr	$25
	daddu	$4,$4,$18

	lw	$3,124($16)
	lw	$2,120($16)
	ld	$4,336($16)
	ld	$25,%call16(memcpy)($28)
	addu	$2,$2,$3
	ld	$5,336($17)
	srl	$18,$21,$2
	srl	$19,$19,$2
	dext	$18,$18,0,32
	dext	$19,$19,0,32
	dsll	$18,$18,1
	dsll	$19,$19,1
	move	$6,$19
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$4,$18

	ld	$4,344($16)
	move	$6,$19
	ld	$25,%call16(memcpy)($28)
	ld	$5,344($17)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$4,$18

	ld	$31,56($sp)
.L77:
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
	.end	_ZN4x2656CUData12copyPartFromERKS0_RKNS_6CUGeomEj
	.size	_ZN4x2656CUData12copyPartFromERKS0_RKNS_6CUGeomEj, .-_ZN4x2656CUData12copyPartFromERKS0_RKNS_6CUGeomEj
	.align	2
	.align	3
	.globl	_ZN4x2656CUData12setEmptyPartERKNS_6CUGeomEj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656CUData12setEmptyPartERKNS_6CUGeomEj
	.type	_ZN4x2656CUData12setEmptyPartERKNS_6CUGeomEj, @function
_ZN4x2656CUData12setEmptyPartERKNS_6CUGeomEj:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$16,8($sp)
	lw	$16,12($5)
	sd	$18,24($sp)
	move	$18,$5
	sd	$17,16($sp)
	move	$17,$4
	gsmultu	$16,$16,$6
	sd	$31,40($sp)
	ld	$4,184($4)
	ld	$25,88($17)
	lbu	$5,20($5)
	dext	$16,$16,0,32
	jalr	$25
	daddu	$4,$4,$16

	ld	$4,144($17)
	ld	$25,88($17)
	lbu	$5,0($18)
	ld	$31,40($sp)
	daddu	$4,$4,$16
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$25
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN4x2656CUData12setEmptyPartERKNS_6CUGeomEj
	.size	_ZN4x2656CUData12setEmptyPartERKNS_6CUGeomEj, .-_ZN4x2656CUData12setEmptyPartERKNS_6CUGeomEj
	.align	2
	.align	3
	.globl	_ZN4x2656CUData14initLosslessCUERKS0_RKNS_6CUGeomE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656CUData14initLosslessCUERKS0_RKNS_6CUGeomE
	.type	_ZN4x2656CUData14initLosslessCUERKS0_RKNS_6CUGeomE, @function
_ZN4x2656CUData14initLosslessCUERKS0_RKNS_6CUGeomE:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$31,24($sp)
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656CUData14initLosslessCUERKS0_RKNS_6CUGeomE)))
	sd	$17,8($sp)
	daddu	$28,$28,$25
	move	$17,$5
	sd	$16,0($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656CUData14initLosslessCUERKS0_RKNS_6CUGeomE)))
	ld	$2,48($5)
	ld	$4,136($4)
	ld	$25,%call16(memcpy)($28)
	sd	$2,48($16)
	ld	$2,56($5)
	sd	$2,56($16)
	lw	$2,96($5)
	sw	$2,96($16)
	lw	$2,104($5)
	sw	$2,104($16)
	lw	$2,108($5)
	sw	$2,108($16)
	ld	$2,432($5)
	sd	$2,432($16)
	ld	$2,424($5)
	sd	$2,424($16)
	ld	$2,408($5)
	sd	$2,408($16)
	ld	$2,416($5)
	sd	$2,416($16)
	lw	$2,8($6)
	sw	$2,100($16)
	lw	$2,12($6)
	lsa	$6,$2,$2,1
	sw	$2,112($16)
	sll	$6,$6,3
	ld	$5,136($5)
	subu	$6,$6,$2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dext	$6,$6,0,32

	lwu	$6,112($16)
	ld	$5,376($17)
	ld	$25,%call16(memcpy)($28)
	ld	$4,376($16)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

	lwu	$6,112($16)
	ld	$5,384($17)
	ld	$25,%call16(memcpy)($28)
	ld	$4,384($16)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

	lwu	$6,112($16)
	ld	$5,392($17)
	ld	$25,%call16(memcpy)($28)
	ld	$4,392($16)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

	lwu	$6,112($16)
	ld	$5,400($17)
	ld	$25,%call16(memcpy)($28)
	ld	$4,400($16)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

	lwu	$6,112($16)
	ld	$5,320($17)
	ld	$25,%call16(memcpy)($28)
	ld	$4,320($16)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

	ld	$25,72($16)
	li	$5,1			# 0x1
	jalr	$25
	ld	$4,160($16)

	ld	$2,192($17)
	ld	$25,72($16)
	ld	$4,192($16)
	lbu	$5,0($2)
	jalr	$25
	andi	$5,$5,0x3

	ld	$25,72($16)
	move	$5,$0
	jalr	$25
	ld	$4,256($16)

	ld	$25,72($16)
	move	$5,$0
	jalr	$25
	ld	$4,288($16)

	ld	$25,72($16)
	move	$5,$0
	jalr	$25
	ld	$4,264($16)

	lw	$2,116($17)
	beq	$2,$0,.L80
	li	$5,255			# 0xff

	ld	$25,72($16)
	jalr	$25
	ld	$4,312($16)

	ld	$25,72($16)
	move	$5,$0
	jalr	$25
	ld	$4,296($16)

	ld	$25,72($16)
	move	$5,$0
	jalr	$25
	ld	$4,304($16)

	ld	$4,272($16)
	ld	$25,72($16)
	jalr	$25
	move	$5,$0

	ld	$25,72($16)
	move	$5,$0
	ld	$4,280($16)
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$25
	daddiu	$sp,$sp,32

	.align	3
.L80:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2656CUData14initLosslessCUERKS0_RKNS_6CUGeomE
	.size	_ZN4x2656CUData14initLosslessCUERKS0_RKNS_6CUGeomE, .-_ZN4x2656CUData14initLosslessCUERKS0_RKNS_6CUGeomE
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData9copyToPicEj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData9copyToPicEj
	.type	_ZNK4x2656CUData9copyToPicEj, @function
_ZNK4x2656CUData9copyToPicEj:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$31,40($sp)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2656CUData9copyToPicEj)))
	sd	$19,24($sp)
	daddu	$28,$28,$25
	move	$19,$5
	sd	$18,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2656CUData9copyToPicEj)))
	sd	$17,8($sp)
	sd	$16,0($sp)
	move	$16,$4
	ld	$4,48($4)
	lwu	$2,96($16)
	lwu	$3,100($16)
	ld	$4,88($4)
	dsll	$17,$2,5
	ld	$25,64($16)
	dsubu	$17,$17,$2
	ld	$5,136($16)
	dlsa	$17,$17,$4,4
	ld	$4,136($17)
	jalr	$25
	daddu	$4,$4,$3

	lwu	$2,100($16)
	ld	$4,144($17)
	ld	$25,64($16)
	ld	$5,144($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,152($17)
	ld	$25,64($16)
	ld	$5,152($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,160($17)
	ld	$25,64($16)
	ld	$5,160($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,168($17)
	ld	$25,64($16)
	ld	$5,168($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,176($17)
	ld	$25,64($16)
	ld	$5,176($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,184($17)
	ld	$25,64($16)
	ld	$5,184($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,192($17)
	ld	$25,64($16)
	ld	$5,192($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,200($17)
	ld	$25,64($16)
	ld	$5,200($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,208($17)
	ld	$25,64($16)
	ld	$5,208($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,232($17)
	ld	$25,64($16)
	ld	$5,232($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,240($17)
	ld	$25,64($16)
	ld	$5,240($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,248($17)
	ld	$25,64($16)
	ld	$5,248($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,256($17)
	ld	$25,64($16)
	ld	$5,256($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,264($17)
	ld	$25,64($16)
	ld	$5,264($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,288($17)
	ld	$25,64($16)
	ld	$5,288($16)
	jalr	$25
	daddu	$4,$4,$2

	ld	$2,376($17)
	lwu	$4,100($16)
	lwu	$6,112($16)
	ld	$25,%call16(memcpy)($28)
	ld	$5,376($16)
	dlsa	$4,$4,$2,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

	ld	$2,384($17)
	lwu	$4,100($16)
	lwu	$6,112($16)
	ld	$25,%call16(memcpy)($28)
	ld	$5,384($16)
	dlsa	$4,$4,$2,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

	ld	$2,392($17)
	lwu	$4,100($16)
	lwu	$6,112($16)
	ld	$25,%call16(memcpy)($28)
	ld	$5,392($16)
	dlsa	$4,$4,$2,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

	ld	$2,400($17)
	lwu	$4,100($16)
	lwu	$6,112($16)
	ld	$25,%call16(memcpy)($28)
	ld	$5,400($16)
	dlsa	$4,$4,$2,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

	ld	$2,320($17)
	lwu	$4,100($16)
	lwu	$6,112($16)
	ld	$25,%call16(memcpy)($28)
	ld	$5,320($16)
	dlsa	$4,$4,$2,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,2

	ld	$2,56($16)
	lw	$18,100($16)
	ld	$3,328($17)
	ld	$2,2472($2)
	ld	$25,%call16(memcpy)($28)
	sll	$18,$18,4
	ld	$5,328($16)
	dext	$4,$18,0,32
	lw	$2,796($2)
	dlsa	$4,$4,$3,1
	subu	$2,$2,$19
	li	$19,1			# 0x1
	sll	$2,$2,1
	sll	$19,$19,$2
	dext	$6,$19,0,32
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,1

	lw	$2,116($17)
	beq	$2,$0,.L89
	ld	$31,40($sp)

	lwu	$2,100($16)
	ld	$4,272($17)
	ld	$25,64($16)
	ld	$5,272($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,280($17)
	ld	$25,64($16)
	ld	$5,280($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,296($17)
	ld	$25,64($16)
	ld	$5,296($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,304($17)
	ld	$25,64($16)
	ld	$5,304($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,312($17)
	ld	$25,64($16)
	ld	$5,312($16)
	jalr	$25
	daddu	$4,$4,$2

	lw	$3,124($16)
	lw	$2,120($16)
	ld	$4,336($17)
	ld	$25,%call16(memcpy)($28)
	addu	$2,$2,$3
	ld	$5,336($16)
	srl	$18,$18,$2
	srl	$19,$19,$2
	dext	$18,$18,0,32
	dext	$19,$19,0,32
	dsll	$18,$18,1
	dsll	$19,$19,1
	move	$6,$19
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$4,$18

	ld	$4,344($17)
	move	$6,$19
	ld	$25,%call16(memcpy)($28)
	ld	$5,344($16)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$4,$18

	ld	$31,40($sp)
.L89:
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData9copyToPicEj
	.size	_ZNK4x2656CUData9copyToPicEj, .-_ZNK4x2656CUData9copyToPicEj
	.align	2
	.align	3
	.globl	_ZN4x2656CUData11copyFromPicERKS0_RKNS_6CUGeomEib
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656CUData11copyFromPicERKS0_RKNS_6CUGeomEib
	.type	_ZN4x2656CUData11copyFromPicERKS0_RKNS_6CUGeomEib, @function
_ZN4x2656CUData11copyFromPicERKS0_RKNS_6CUGeomEib:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656CUData11copyFromPicERKS0_RKNS_6CUGeomEib)))
	sd	$18,24($sp)
	daddu	$28,$28,$25
	move	$18,$7
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656CUData11copyFromPicERKS0_RKNS_6CUGeomEib)))
	move	$17,$5
	sd	$16,8($sp)
	move	$16,$4
	sd	$31,40($sp)
	ld	$2,48($5)
	ld	$3,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	ld	$25,64($4)
	sd	$2,48($4)
	ld	$2,56($5)
	sd	$2,56($4)
	lw	$2,96($5)
	sw	$2,96($4)
	lwu	$2,8($6)
	lw	$4,104($5)
	daddu	$3,$3,$2
	lbu	$2,0($3)
	ld	$3,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	addu	$2,$2,$4
	sw	$2,104($16)
	lwu	$2,8($6)
	lw	$4,108($5)
	daddu	$3,$3,$2
	lbu	$2,0($3)
	addu	$2,$2,$4
	sw	$2,108($16)
	lw	$2,8($6)
	sw	$2,100($16)
	lw	$3,12($6)
	beq	$8,$0,.L91
	sw	$3,112($16)

	ld	$5,136($5)
	dext	$2,$2,0,32
	ld	$4,136($16)
	jalr	$25
	daddu	$5,$5,$2

	ld	$25,64($16)
	lw	$2,100($16)
.L91:
	ld	$5,144($17)
	dext	$2,$2,0,32
	ld	$4,144($16)
	jalr	$25
	daddu	$5,$5,$2

	lwu	$2,100($16)
	ld	$5,152($17)
	ld	$25,64($16)
	ld	$4,152($16)
	jalr	$25
	daddu	$5,$5,$2

	lwu	$2,100($16)
	ld	$5,160($17)
	ld	$25,64($16)
	ld	$4,160($16)
	jalr	$25
	daddu	$5,$5,$2

	lwu	$2,100($16)
	ld	$5,168($17)
	ld	$25,64($16)
	ld	$4,168($16)
	jalr	$25
	daddu	$5,$5,$2

	lwu	$2,100($16)
	ld	$5,176($17)
	ld	$25,64($16)
	ld	$4,176($16)
	jalr	$25
	daddu	$5,$5,$2

	lwu	$2,100($16)
	ld	$5,184($17)
	ld	$25,64($16)
	ld	$4,184($16)
	jalr	$25
	daddu	$5,$5,$2

	lwu	$3,100($16)
	ld	$2,192($17)
	ld	$25,72($16)
	ld	$4,192($16)
	daddu	$2,$2,$3
	lbu	$5,0($2)
	jalr	$25
	andi	$5,$5,0x3

	lwu	$2,100($16)
	ld	$5,200($17)
	ld	$25,64($16)
	ld	$4,200($16)
	jalr	$25
	daddu	$5,$5,$2

	lwu	$2,100($16)
	ld	$5,208($17)
	ld	$25,64($16)
	ld	$4,208($16)
	jalr	$25
	daddu	$5,$5,$2

	lwu	$2,100($16)
	ld	$5,232($17)
	ld	$25,64($16)
	ld	$4,232($16)
	jalr	$25
	daddu	$5,$5,$2

	lwu	$2,100($16)
	ld	$5,240($17)
	ld	$25,64($16)
	ld	$4,240($16)
	jalr	$25
	daddu	$5,$5,$2

	lwu	$2,100($16)
	ld	$5,248($17)
	ld	$25,64($16)
	ld	$4,248($16)
	jalr	$25
	daddu	$5,$5,$2

	lwu	$2,100($16)
	ld	$5,312($17)
	ld	$25,64($16)
	ld	$4,312($16)
	jalr	$25
	daddu	$5,$5,$2

	ld	$2,376($17)
	lwu	$6,112($16)
	lwu	$5,100($16)
	ld	$25,%call16(memcpy)($28)
	ld	$4,376($16)
	dsll	$6,$6,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dlsa	$5,$5,$2,2

	ld	$2,384($17)
	lwu	$6,112($16)
	lwu	$5,100($16)
	ld	$25,%call16(memcpy)($28)
	ld	$4,384($16)
	dsll	$6,$6,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dlsa	$5,$5,$2,2

	ld	$2,392($17)
	lwu	$6,112($16)
	lwu	$5,100($16)
	ld	$25,%call16(memcpy)($28)
	ld	$4,392($16)
	dsll	$6,$6,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dlsa	$5,$5,$2,2

	ld	$2,400($17)
	lwu	$6,112($16)
	lwu	$5,100($16)
	ld	$25,%call16(memcpy)($28)
	ld	$4,400($16)
	dsll	$6,$6,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dlsa	$5,$5,$2,2

	ld	$2,320($17)
	lwu	$6,112($16)
	lwu	$5,100($16)
	ld	$25,%call16(memcpy)($28)
	ld	$4,320($16)
	dsll	$6,$6,2
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dlsa	$5,$5,$2,2

	ld	$25,72($16)
	move	$5,$0
	jalr	$25
	ld	$4,256($16)

	ld	$25,72($16)
	move	$5,$0
	jalr	$25
	ld	$4,264($16)

	ld	$25,72($16)
	move	$5,$0
	jalr	$25
	ld	$4,288($16)

	beq	$18,$0,.L90
	move	$5,$0

	ld	$25,72($16)
	jalr	$25
	ld	$4,272($16)

	ld	$25,72($16)
	move	$5,$0
	jalr	$25
	ld	$4,280($16)

	ld	$4,296($16)
	ld	$25,72($16)
	jalr	$25
	move	$5,$0

	ld	$25,72($16)
	move	$5,$0
	ld	$4,304($16)
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$25
	daddiu	$sp,$sp,48

	.align	3
.L90:
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN4x2656CUData11copyFromPicERKS0_RKNS_6CUGeomEib
	.size	_ZN4x2656CUData11copyFromPicERKS0_RKNS_6CUGeomEib, .-_ZN4x2656CUData11copyFromPicERKS0_RKNS_6CUGeomEib
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData9updatePicEji
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData9updatePicEji
	.type	_ZNK4x2656CUData9updatePicEji, @function
_ZNK4x2656CUData9updatePicEji:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$31,56($sp)
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2656CUData9updatePicEji)))
	sd	$20,40($sp)
	daddu	$28,$28,$25
	move	$20,$6
	sd	$19,32($sp)
	move	$19,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2656CUData9updatePicEji)))
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	move	$16,$4
	ld	$4,48($4)
	lwu	$3,96($16)
	lwu	$2,100($16)
	ld	$4,88($4)
	dsll	$17,$3,5
	ld	$25,64($16)
	dsubu	$17,$17,$3
	ld	$5,136($16)
	dlsa	$17,$17,$4,4
	ld	$4,136($17)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,264($17)
	ld	$25,64($16)
	ld	$5,264($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,192($17)
	ld	$25,64($16)
	ld	$5,192($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,256($17)
	ld	$25,64($16)
	ld	$5,256($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,288($17)
	ld	$25,64($16)
	ld	$5,288($16)
	jalr	$25
	daddu	$4,$4,$2

	ld	$2,56($16)
	lw	$18,100($16)
	ld	$3,328($17)
	ld	$2,2472($2)
	ld	$25,%call16(memcpy)($28)
	sll	$18,$18,4
	ld	$5,328($16)
	dext	$4,$18,0,32
	lw	$2,796($2)
	dlsa	$4,$4,$3,1
	subu	$2,$2,$19
	li	$19,1			# 0x1
	sll	$2,$2,1
	sll	$19,$19,$2
	dext	$6,$19,0,32
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	dsll	$6,$6,1

	lw	$2,116($17)
	beq	$2,$0,.L106
	ld	$31,56($sp)

	beq	$20,$0,.L106
	nop

	lwu	$2,100($16)
	ld	$4,272($17)
	ld	$25,64($16)
	ld	$5,272($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,280($17)
	ld	$25,64($16)
	ld	$5,280($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,296($17)
	ld	$25,64($16)
	ld	$5,296($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,304($17)
	ld	$25,64($16)
	ld	$5,304($16)
	jalr	$25
	daddu	$4,$4,$2

	lwu	$2,100($16)
	ld	$4,312($17)
	ld	$25,64($16)
	ld	$5,312($16)
	jalr	$25
	daddu	$4,$4,$2

	lw	$3,124($16)
	lw	$2,120($16)
	ld	$4,336($17)
	ld	$25,%call16(memcpy)($28)
	addu	$2,$2,$3
	ld	$5,336($16)
	srl	$18,$18,$2
	srl	$19,$19,$2
	dext	$18,$18,0,32
	dext	$19,$19,0,32
	dsll	$18,$18,1
	dsll	$19,$19,1
	move	$6,$19
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$4,$18

	ld	$4,344($17)
	move	$6,$19
	ld	$25,%call16(memcpy)($28)
	ld	$5,344($16)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$4,$18

	ld	$31,56($sp)
.L106:
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
	.end	_ZNK4x2656CUData9updatePicEji
	.size	_ZNK4x2656CUData9updatePicEji, .-_ZNK4x2656CUData9updatePicEji
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData9getPULeftERjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData9getPULeftERjj
	.type	_ZNK4x2656CUData9getPULeftERjj, @function
_ZNK4x2656CUData9getPULeftERjj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$8,%hi(%neg(%gp_rel(_ZNK4x2656CUData9getPULeftERjj)))
	dext	$6,$6,0,32
	daddu	$8,$8,$25
	daddiu	$8,$8,%lo(%neg(%gp_rel(_ZNK4x2656CUData9getPULeftERjj)))
	ld	$3,%got_disp(_ZN4x26515g_zscanToRasterE)($8)
	dlsa	$6,$6,$3,2
	lw	$2,0($6)
	andi	$7,$2,0xf
	beq	$7,$0,.L108
	move	$6,$2

	lwu	$7,100($4)
	addiu	$2,$2,-1
	dext	$2,$2,0,32
	dlsa	$3,$7,$3,2
	ld	$7,%got_disp(_ZN4x26515g_rasterToZscanE)($8)
	lw	$3,0($3)
	dlsa	$2,$2,$7,2
	lw	$7,0($2)
	xor	$2,$3,$6
	andi	$2,$2,0xf
	bne	$2,$0,.L109
	sw	$7,0($5)

	ld	$2,48($4)
	lwu	$4,96($4)
	ld	$3,88($2)
	dsll	$2,$4,5
	dsubu	$4,$2,$4
	jr	$31
	dlsa	$2,$4,$3,4

	.align	3
.L108:
	lw	$3,40($4)
	addiu	$3,$3,-1
	addu	$2,$3,$2
	ld	$3,%got_disp(_ZN4x26515g_rasterToZscanE)($8)
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	lw	$2,0($2)
	sw	$2,0($5)
	jr	$31
	ld	$2,432($4)

	.align	3
.L109:
	lw	$3,100($4)
	move	$2,$4
	subu	$7,$7,$3
	jr	$31
	sw	$7,0($5)

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData9getPULeftERjj
	.size	_ZNK4x2656CUData9getPULeftERjj, .-_ZNK4x2656CUData9getPULeftERjj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData10getPUAboveERjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData10getPUAboveERjj
	.type	_ZNK4x2656CUData10getPUAboveERjj, @function
_ZNK4x2656CUData10getPUAboveERjj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$8,%hi(%neg(%gp_rel(_ZNK4x2656CUData10getPUAboveERjj)))
	dext	$6,$6,0,32
	daddu	$8,$8,$25
	daddiu	$8,$8,%lo(%neg(%gp_rel(_ZNK4x2656CUData10getPUAboveERjj)))
	ld	$3,%got_disp(_ZN4x26515g_zscanToRasterE)($8)
	dlsa	$6,$6,$3,2
	lw	$2,0($6)
	slt	$7,$2,16
	bne	$7,$0,.L113
	move	$6,$2

	lwu	$7,100($4)
	addiu	$2,$2,-16
	dext	$2,$2,0,32
	dlsa	$3,$7,$3,2
	ld	$7,%got_disp(_ZN4x26515g_rasterToZscanE)($8)
	lw	$3,0($3)
	dlsa	$2,$2,$7,2
	lw	$7,0($2)
	xor	$2,$3,$6
	slt	$2,$2,16
	beq	$2,$0,.L114
	sw	$7,0($5)

	ld	$2,48($4)
	lwu	$4,96($4)
	ld	$3,88($2)
	dsll	$2,$4,5
	dsubu	$4,$2,$4
	jr	$31
	dlsa	$2,$4,$3,4

	.align	3
.L113:
	lw	$3,40($4)
	addiu	$3,$3,-1
	lsa	$2,$3,$2,4
	ld	$3,%got_disp(_ZN4x26515g_rasterToZscanE)($8)
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	lw	$2,0($2)
	sw	$2,0($5)
	jr	$31
	ld	$2,424($4)

	.align	3
.L114:
	lw	$3,100($4)
	move	$2,$4
	subu	$7,$7,$3
	jr	$31
	sw	$7,0($5)

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData10getPUAboveERjj
	.size	_ZNK4x2656CUData10getPUAboveERjj, .-_ZNK4x2656CUData10getPUAboveERjj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData14getPUAboveLeftERjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData14getPUAboveLeftERjj
	.type	_ZNK4x2656CUData14getPUAboveLeftERjj, @function
_ZNK4x2656CUData14getPUAboveLeftERjj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$8,%hi(%neg(%gp_rel(_ZNK4x2656CUData14getPUAboveLeftERjj)))
	dext	$6,$6,0,32
	daddu	$8,$8,$25
	daddiu	$8,$8,%lo(%neg(%gp_rel(_ZNK4x2656CUData14getPUAboveLeftERjj)))
	ld	$7,%got_disp(_ZN4x26515g_zscanToRasterE)($8)
	dlsa	$6,$6,$7,2
	lw	$2,0($6)
	andi	$6,$2,0xf
	beq	$6,$0,.L118
	move	$3,$2

	slt	$6,$2,16
	bne	$6,$0,.L119
	nop

	lwu	$6,100($4)
	addiu	$2,$2,-17
	dext	$2,$2,0,32
	dlsa	$7,$6,$7,2
	lw	$6,0($7)
	ld	$7,%got_disp(_ZN4x26515g_rasterToZscanE)($8)
	xor	$3,$6,$3
	dlsa	$2,$2,$7,2
	lw	$7,0($2)
	andi	$2,$3,0xf
	beq	$2,$0,.L124
	sw	$7,0($5)

	slt	$3,$3,16
	bne	$3,$0,.L124
	nop

	lw	$3,100($4)
	move	$2,$4
	subu	$7,$7,$3
	jr	$31
	sw	$7,0($5)

	.align	3
.L118:
	slt	$3,$2,16
	beq	$3,$0,.L126
	nop

	ld	$2,48($4)
	ld	$2,16($2)
	lw	$2,808($2)
	addiu	$2,$2,-1
	sw	$2,0($5)
	jr	$31
	ld	$2,408($4)

	.align	3
.L126:
	lw	$3,40($4)
	addiu	$3,$3,-17
	addu	$2,$3,$2
	ld	$3,%got_disp(_ZN4x26515g_rasterToZscanE)($8)
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	lw	$2,0($2)
	sw	$2,0($5)
	jr	$31
	ld	$2,432($4)

	.align	3
.L119:
	lw	$3,40($4)
	lsa	$2,$3,$2,4
	ld	$3,%got_disp(_ZN4x26515g_rasterToZscanE)($8)
	addiu	$2,$2,-17
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	lw	$2,0($2)
	sw	$2,0($5)
	jr	$31
	ld	$2,424($4)

	.align	3
.L124:
	ld	$2,48($4)
	lwu	$4,96($4)
	ld	$3,88($2)
	dsll	$2,$4,5
	dsubu	$4,$2,$4
	jr	$31
	dlsa	$2,$4,$3,4

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData14getPUAboveLeftERjj
	.size	_ZNK4x2656CUData14getPUAboveLeftERjj, .-_ZNK4x2656CUData14getPUAboveLeftERjj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData15getPUAboveRightERjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData15getPUAboveRightERjj
	.type	_ZNK4x2656CUData15getPUAboveRightERjj, @function
_ZNK4x2656CUData15getPUAboveRightERjj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$11,%hi(%neg(%gp_rel(_ZNK4x2656CUData15getPUAboveRightERjj)))
	ld	$3,48($4)
	dext	$7,$6,0,32
	daddu	$11,$11,$25
	lwu	$8,96($4)
	daddiu	$11,$11,%lo(%neg(%gp_rel(_ZNK4x2656CUData15getPUAboveRightERjj)))
	ld	$9,56($4)
	ld	$2,%got_disp(_ZN4x26513g_zscanToPelXE)($11)
	ld	$10,88($3)
	dsll	$3,$8,5
	dsubu	$3,$3,$8
	ld	$9,0($9)
	daddu	$2,$2,$7
	dlsa	$3,$3,$10,4
	lbu	$2,0($2)
	lw	$8,104($3)
	lw	$3,36($9)
	addiu	$2,$2,4
	addu	$2,$2,$8
	sltu	$2,$2,$3
	beq	$2,$0,.L135
	ld	$9,%got_disp(_ZN4x26515g_zscanToRasterE)($11)

	lw	$2,40($4)
	dlsa	$7,$7,$9,2
	lw	$3,0($7)
	addiu	$2,$2,-1
	andi	$8,$3,0xf
	slt	$8,$8,$2
	beq	$8,$0,.L129
	move	$7,$3

	slt	$8,$3,16
	bne	$8,$0,.L130
	nop

	ld	$2,%got_disp(_ZN4x26515g_rasterToZscanE)($11)
	addiu	$3,$3,-15
	dext	$3,$3,0,32
	dlsa	$3,$3,$2,2
	lw	$3,0($3)
	sltu	$6,$3,$6
	beq	$6,$0,.L135
	nop

	lwu	$6,100($4)
	ld	$2,144($4)
	dlsa	$9,$6,$9,2
	lbu	$2,0($2)
	lw	$6,0($9)
	addiu	$8,$2,-2
	li	$2,1			# 0x1
	sll	$2,$2,$8
	addiu	$6,$6,-1
	addu	$2,$2,$6
	xor	$7,$2,$7
	andi	$2,$7,0xf
	beq	$2,$0,.L136
	sw	$3,0($5)

	slt	$7,$7,16
	bne	$7,$0,.L136
	nop

	lw	$6,100($4)
	move	$2,$4
	subu	$3,$3,$6
	jr	$31
	sw	$3,0($5)

	.align	3
.L129:
	slt	$7,$3,16
	beq	$7,$0,.L135
	ld	$3,%got_disp(_ZN4x26515g_rasterToZscanE)($11)

	sll	$2,$2,4
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	lw	$2,0($2)
	sw	$2,0($5)
	jr	$31
	ld	$2,416($4)

	.align	3
.L130:
	addiu	$3,$3,1
	lsa	$2,$2,$3,4
	ld	$3,%got_disp(_ZN4x26515g_rasterToZscanE)($11)
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	lw	$2,0($2)
	sw	$2,0($5)
	jr	$31
	ld	$2,424($4)

	.align	3
.L136:
	ld	$2,48($4)
	lwu	$4,96($4)
	ld	$3,88($2)
	dsll	$2,$4,5
	dsubu	$4,$2,$4
	jr	$31
	dlsa	$2,$4,$3,4

	.align	3
.L135:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData15getPUAboveRightERjj
	.size	_ZNK4x2656CUData15getPUAboveRightERjj, .-_ZNK4x2656CUData15getPUAboveRightERjj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData14getPUBelowLeftERjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData14getPUBelowLeftERjj
	.type	_ZNK4x2656CUData14getPUBelowLeftERjj, @function
_ZNK4x2656CUData14getPUBelowLeftERjj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$11,%hi(%neg(%gp_rel(_ZNK4x2656CUData14getPUBelowLeftERjj)))
	ld	$3,48($4)
	dext	$7,$6,0,32
	daddu	$11,$11,$25
	lwu	$8,96($4)
	daddiu	$11,$11,%lo(%neg(%gp_rel(_ZNK4x2656CUData14getPUBelowLeftERjj)))
	ld	$9,56($4)
	ld	$2,%got_disp(_ZN4x26513g_zscanToPelYE)($11)
	ld	$10,88($3)
	dsll	$3,$8,5
	dsubu	$3,$3,$8
	ld	$9,0($9)
	daddu	$2,$2,$7
	dlsa	$3,$3,$10,4
	lbu	$2,0($2)
	lw	$8,108($3)
	lw	$3,40($9)
	addiu	$2,$2,4
	addu	$2,$2,$8
	sltu	$2,$2,$3
	beq	$2,$0,.L145
	ld	$9,%got_disp(_ZN4x26515g_zscanToRasterE)($11)

	lw	$8,40($4)
	dlsa	$7,$7,$9,2
	lw	$2,0($7)
	addiu	$3,$8,-1
	sra	$10,$2,4
	slt	$3,$10,$3
	beq	$3,$0,.L145
	move	$7,$2

	andi	$3,$2,0xf
	beq	$3,$0,.L140
	addiu	$2,$2,15

	ld	$3,%got_disp(_ZN4x26515g_rasterToZscanE)($11)
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	lw	$3,0($2)
	sltu	$6,$3,$6
	beq	$6,$0,.L145
	nop

	ld	$2,144($4)
	lwu	$6,100($4)
	lbu	$2,0($2)
	dlsa	$9,$6,$9,2
	lw	$8,0($9)
	addiu	$6,$2,-2
	li	$2,1			# 0x1
	sll	$2,$2,$6
	lsa	$2,$2,$8,4
	addiu	$2,$2,-16
	xor	$2,$2,$7
	andi	$6,$2,0xf
	beq	$6,$0,.L146
	sw	$3,0($5)

	slt	$2,$2,16
	bne	$2,$0,.L146
	nop

	lw	$6,100($4)
	move	$2,$4
	subu	$3,$3,$6
	jr	$31
	sw	$3,0($5)

	.align	3
.L140:
	ld	$3,%got_disp(_ZN4x26515g_rasterToZscanE)($11)
	addu	$2,$2,$8
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	lw	$2,0($2)
	sw	$2,0($5)
	jr	$31
	ld	$2,432($4)

	.align	3
.L145:
	jr	$31
	move	$2,$0

	.align	3
.L146:
	ld	$2,48($4)
	lwu	$4,96($4)
	ld	$3,88($2)
	dsll	$2,$4,5
	dsubu	$4,$2,$4
	jr	$31
	dlsa	$2,$4,$3,4

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData14getPUBelowLeftERjj
	.size	_ZNK4x2656CUData14getPUBelowLeftERjj, .-_ZNK4x2656CUData14getPUBelowLeftERjj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData17getPUBelowLeftAdiERjjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData17getPUBelowLeftAdiERjjj
	.type	_ZNK4x2656CUData17getPUBelowLeftAdiERjjj, @function
_ZNK4x2656CUData17getPUBelowLeftAdiERjjj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$12,%hi(%neg(%gp_rel(_ZNK4x2656CUData17getPUBelowLeftAdiERjjj)))
	ld	$3,48($4)
	dext	$8,$6,0,32
	daddu	$12,$12,$25
	lwu	$9,96($4)
	daddiu	$12,$12,%lo(%neg(%gp_rel(_ZNK4x2656CUData17getPUBelowLeftAdiERjjj)))
	ld	$10,56($4)
	ld	$2,%got_disp(_ZN4x26513g_zscanToPelYE)($12)
	ld	$11,88($3)
	dsll	$3,$9,5
	dsubu	$3,$3,$9
	ld	$10,0($10)
	daddu	$2,$2,$8
	dlsa	$3,$3,$11,4
	lbu	$2,0($2)
	lw	$9,108($3)
	lw	$3,40($10)
	lsa	$2,$7,$2,2
	addu	$2,$2,$9
	sltu	$2,$2,$3
	beq	$2,$0,.L155
	ld	$10,%got_disp(_ZN4x26515g_zscanToRasterE)($12)

	lw	$3,40($4)
	dlsa	$8,$8,$10,2
	lw	$2,0($8)
	subu	$8,$3,$7
	sra	$11,$2,4
	slt	$8,$11,$8
	beq	$8,$0,.L155
	move	$9,$2

	lsa	$7,$7,$2,4
	andi	$8,$2,0xf
	beq	$8,$0,.L150
	addiu	$7,$7,-1

	ld	$2,%got_disp(_ZN4x26515g_rasterToZscanE)($12)
	dext	$7,$7,0,32
	dlsa	$7,$7,$2,2
	lw	$3,0($7)
	sltu	$6,$3,$6
	beq	$6,$0,.L155
	nop

	ld	$2,144($4)
	lwu	$6,100($4)
	lbu	$2,0($2)
	dlsa	$10,$6,$10,2
	lw	$7,0($10)
	addiu	$6,$2,-2
	li	$2,1			# 0x1
	sll	$2,$2,$6
	lsa	$2,$2,$7,4
	addiu	$2,$2,-16
	xor	$2,$2,$9
	andi	$6,$2,0xf
	beq	$6,$0,.L156
	sw	$3,0($5)

	slt	$2,$2,16
	bne	$2,$0,.L156
	nop

	lw	$6,100($4)
	move	$2,$4
	subu	$3,$3,$6
	jr	$31
	sw	$3,0($5)

	.align	3
.L150:
	addu	$7,$3,$7
	ld	$3,%got_disp(_ZN4x26515g_rasterToZscanE)($12)
	dext	$7,$7,0,32
	dlsa	$7,$7,$3,2
	lw	$2,0($7)
	sw	$2,0($5)
	jr	$31
	ld	$2,432($4)

	.align	3
.L155:
	jr	$31
	move	$2,$0

	.align	3
.L156:
	ld	$2,48($4)
	lwu	$4,96($4)
	ld	$3,88($2)
	dsll	$2,$4,5
	dsubu	$4,$2,$4
	jr	$31
	dlsa	$2,$4,$3,4

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData17getPUBelowLeftAdiERjjj
	.size	_ZNK4x2656CUData17getPUBelowLeftAdiERjjj, .-_ZNK4x2656CUData17getPUBelowLeftAdiERjjj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData18getPUAboveRightAdiERjjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData18getPUAboveRightAdiERjjj
	.type	_ZNK4x2656CUData18getPUAboveRightAdiERjjj, @function
_ZNK4x2656CUData18getPUAboveRightAdiERjjj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$12,%hi(%neg(%gp_rel(_ZNK4x2656CUData18getPUAboveRightAdiERjjj)))
	ld	$3,48($4)
	dext	$8,$6,0,32
	daddu	$12,$12,$25
	lwu	$9,96($4)
	daddiu	$12,$12,%lo(%neg(%gp_rel(_ZNK4x2656CUData18getPUAboveRightAdiERjjj)))
	ld	$10,56($4)
	ld	$2,%got_disp(_ZN4x26513g_zscanToPelXE)($12)
	ld	$11,88($3)
	dsll	$3,$9,5
	dsubu	$3,$3,$9
	ld	$10,0($10)
	daddu	$2,$2,$8
	dlsa	$3,$3,$11,4
	lbu	$2,0($2)
	lw	$9,104($3)
	lw	$3,36($10)
	lsa	$2,$7,$2,2
	addu	$2,$2,$9
	sltu	$2,$2,$3
	beq	$2,$0,.L166
	ld	$10,%got_disp(_ZN4x26515g_zscanToRasterE)($12)

	lw	$2,40($4)
	dlsa	$8,$8,$10,2
	lw	$9,0($8)
	subu	$8,$2,$7
	andi	$11,$9,0xf
	slt	$8,$11,$8
	beq	$8,$0,.L160
	move	$3,$9

	slt	$8,$9,16
	bne	$8,$0,.L161
	addiu	$2,$2,-1

	addiu	$2,$7,-16
	addu	$9,$2,$9
	ld	$2,%got_disp(_ZN4x26515g_rasterToZscanE)($12)
	dext	$9,$9,0,32
	dlsa	$9,$9,$2,2
	lw	$7,0($9)
	sltu	$6,$7,$6
	beq	$6,$0,.L166
	nop

	lwu	$6,100($4)
	ld	$2,144($4)
	dlsa	$10,$6,$10,2
	lbu	$2,0($2)
	lw	$6,0($10)
	addiu	$8,$2,-2
	li	$2,1			# 0x1
	sll	$2,$2,$8
	addiu	$6,$6,-1
	addu	$2,$2,$6
	xor	$3,$2,$3
	andi	$2,$3,0xf
	beq	$2,$0,.L167
	sw	$7,0($5)

	slt	$3,$3,16
	bne	$3,$0,.L167
	nop

	lw	$3,100($4)
	move	$2,$4
	subu	$7,$7,$3
	jr	$31
	sw	$7,0($5)

	.align	3
.L160:
	slt	$3,$9,16
	beq	$3,$0,.L166
	ld	$3,%got_disp(_ZN4x26515g_rasterToZscanE)($12)

	lsa	$2,$2,$7,4
	addiu	$2,$2,-17
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	lw	$2,0($2)
	sw	$2,0($5)
	jr	$31
	ld	$2,416($4)

	.align	3
.L161:
	addu	$7,$7,$9
	ld	$3,%got_disp(_ZN4x26515g_rasterToZscanE)($12)
	lsa	$2,$2,$7,4
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	lw	$2,0($2)
	sw	$2,0($5)
	jr	$31
	ld	$2,424($4)

	.align	3
.L167:
	ld	$2,48($4)
	lwu	$4,96($4)
	ld	$3,88($2)
	dsll	$2,$4,5
	dsubu	$4,$2,$4
	jr	$31
	dlsa	$2,$4,$3,4

	.align	3
.L166:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData18getPUAboveRightAdiERjjj
	.size	_ZNK4x2656CUData18getPUAboveRightAdiERjjj, .-_ZNK4x2656CUData18getPUAboveRightAdiERjjj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData14getQpMinCuLeftERjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData14getQpMinCuLeftERjj
	.type	_ZNK4x2656CUData14getQpMinCuLeftERjj, @function
_ZNK4x2656CUData14getQpMinCuLeftERjj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,48($4)
	lui	$7,%hi(%neg(%gp_rel(_ZNK4x2656CUData14getQpMinCuLeftERjj)))
	ld	$3,56($4)
	daddu	$7,$7,$25
	daddiu	$7,$7,%lo(%neg(%gp_rel(_ZNK4x2656CUData14getQpMinCuLeftERjj)))
	ld	$2,16($2)
	ld	$3,8($3)
	lw	$2,804($2)
	lw	$3,0($3)
	subu	$2,$2,$3
	sll	$3,$2,1
	li	$2,255			# 0xff
	sll	$2,$2,$3
	and	$6,$2,$6
	ld	$2,%got_disp(_ZN4x26515g_zscanToRasterE)($7)
	dext	$6,$6,0,32
	dlsa	$6,$6,$2,2
	lw	$2,0($6)
	andi	$3,$2,0xf
	beq	$3,$0,.L171
	ld	$3,%got_disp(_ZN4x26515g_rasterToZscanE)($7)

	addiu	$2,$2,-1
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	lw	$2,0($2)
	sw	$2,0($5)
	ld	$2,48($4)
	lwu	$3,96($4)
	ld	$4,88($2)
	dsll	$2,$3,5
	dsubu	$2,$2,$3
	jr	$31
	dlsa	$2,$2,$4,4

	.align	3
.L171:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData14getQpMinCuLeftERjj
	.size	_ZNK4x2656CUData14getQpMinCuLeftERjj, .-_ZNK4x2656CUData14getQpMinCuLeftERjj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData15getQpMinCuAboveERjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData15getQpMinCuAboveERjj
	.type	_ZNK4x2656CUData15getQpMinCuAboveERjj, @function
_ZNK4x2656CUData15getQpMinCuAboveERjj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,48($4)
	lui	$7,%hi(%neg(%gp_rel(_ZNK4x2656CUData15getQpMinCuAboveERjj)))
	ld	$3,56($4)
	daddu	$7,$7,$25
	daddiu	$7,$7,%lo(%neg(%gp_rel(_ZNK4x2656CUData15getQpMinCuAboveERjj)))
	ld	$2,16($2)
	ld	$3,8($3)
	lw	$2,804($2)
	lw	$3,0($3)
	subu	$2,$2,$3
	sll	$3,$2,1
	li	$2,255			# 0xff
	sll	$2,$2,$3
	and	$6,$2,$6
	ld	$2,%got_disp(_ZN4x26515g_zscanToRasterE)($7)
	dext	$6,$6,0,32
	dlsa	$6,$6,$2,2
	lw	$2,0($6)
	slt	$3,$2,16
	bne	$3,$0,.L175
	ld	$3,%got_disp(_ZN4x26515g_rasterToZscanE)($7)

	addiu	$2,$2,-16
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	lw	$2,0($2)
	sw	$2,0($5)
	ld	$2,48($4)
	lwu	$3,96($4)
	ld	$4,88($2)
	dsll	$2,$3,5
	dsubu	$2,$2,$3
	jr	$31
	dlsa	$2,$2,$4,4

	.align	3
.L175:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData15getQpMinCuAboveERjj
	.size	_ZNK4x2656CUData15getQpMinCuAboveERjj, .-_ZNK4x2656CUData15getQpMinCuAboveERjj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData19getLastValidPartIdxEi
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData19getLastValidPartIdxEi
	.type	_ZNK4x2656CUData19getLastValidPartIdxEi, @function
_ZNK4x2656CUData19getLastValidPartIdxEi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$5,$5,-1
	bltz	$5,.L182
	move	$2,$5

	ld	$6,192($4)
	daddu	$3,$6,$2
	lbu	$3,0($3)
	bne	$3,$0,.L182
	nop

	ld	$7,184($4)
	b	.L179
	lw	$4,112($4)

	.align	3
.L180:
	daddu	$3,$6,$2
	lbu	$3,0($3)
	bne	$3,$0,.L182
	nop

.L179:
	daddu	$5,$7,$5
	lbu	$5,0($5)
	sll	$5,$5,1
	srl	$5,$4,$5
	subu	$5,$2,$5
	bgez	$5,.L180
	move	$2,$5

.L182:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData19getLastValidPartIdxEi
	.size	_ZNK4x2656CUData19getLastValidPartIdxEi, .-_ZNK4x2656CUData19getLastValidPartIdxEi
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData14getLastCodedQPEj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData14getLastCodedQPEj
	.type	_ZNK4x2656CUData14getLastCodedQPEj, @function
_ZNK4x2656CUData14getLastCodedQPEj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$3,$5
	li	$10,255			# 0xff
	.align	3
.L184:
	ld	$9,48($4)
	ld	$13,56($4)
	ld	$11,16($9)
	ld	$12,8($13)
	lw	$5,804($11)
	lw	$2,0($12)
	subu	$5,$5,$2
	sll	$5,$5,1
	sll	$5,$10,$5
	and	$5,$5,$3
	addiu	$5,$5,-1
	bltz	$5,.L185
	move	$2,$5

	ld	$6,192($4)
	daddu	$3,$6,$2
	lbu	$3,0($3)
	bne	$3,$0,.L186
	nop

	ld	$8,184($4)
	b	.L187
	lw	$7,112($4)

	.align	3
.L204:
	daddu	$3,$6,$2
	lbu	$3,0($3)
	bne	$3,$0,.L186
	nop

.L187:
	daddu	$5,$8,$5
	lbu	$5,0($5)
	sll	$5,$5,1
	srl	$5,$7,$5
	subu	$5,$2,$5
	bgez	$5,.L204
	move	$2,$5

.L185:
	lw	$3,100($4)
	beq	$3,$0,.L208
	lw	$4,96($4)

	dext	$4,$4,0,32
	ld	$5,88($9)
	dsll	$2,$4,5
	dsubu	$4,$2,$4
	b	.L184
	dlsa	$4,$4,$5,4

	.align	3
.L186:
	ld	$2,136($4)
	daddu	$5,$2,$5
	jr	$31
	lb	$2,0($5)

	.align	3
.L208:
	beq	$4,$0,.L190
	nop

	lbu	$2,26($12)
	beq	$2,$0,.L191
	nop

	ld	$2,0($13)
	lw	$3,44($2)
	gsmodu	$2,$4,$3
	teq	$3,$0,7
	beq	$2,$0,.L190
	nop

.L191:
	addiu	$4,$4,-1
	ld	$5,88($9)
	dext	$2,$4,0,32
	lw	$3,808($11)
	dsll	$4,$2,5
	dsubu	$4,$4,$2
	b	.L184
	dlsa	$4,$4,$5,4

.L190:
	jr	$31
	lb	$2,2268($13)

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData14getLastCodedQPEj
	.size	_ZNK4x2656CUData14getLastCodedQPEj, .-_ZNK4x2656CUData14getLastCodedQPEj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData8getRefQPEj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData8getRefQPEj
	.type	_ZNK4x2656CUData8getRefQPEj, @function
_ZNK4x2656CUData8getRefQPEj:
	.frame	$sp,64,$31		# vars= 16, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	move	$24,$4
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2656CUData8getRefQPEj)))
	daddu	$28,$28,$25
	sd	$17,32($sp)
	move	$17,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2656CUData8getRefQPEj)))
	sd	$31,56($sp)
	move	$5,$sp
	sd	$18,40($sp)
	sd	$16,24($sp)
	lw	$6,100($4)
	ld	$25,%got_disp(_ZNK4x2656CUData14getQpMinCuLeftERjj)($28)
	sw	$0,0($sp)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14getQpMinCuLeftERjj
1:	jalr	$25
	addu	$6,$6,$17

	ld	$5,56($24)
	ld	$6,48($24)
	lw	$3,100($24)
	ld	$7,8($5)
	ld	$4,16($6)
	addu	$5,$3,$17
	lw	$3,0($7)
	lw	$4,804($4)
	subu	$3,$4,$3
	sll	$4,$3,1
	li	$3,255			# 0xff
	sll	$3,$3,$4
	ld	$4,%got_disp(_ZN4x26515g_zscanToRasterE)($28)
	and	$3,$3,$5
	dext	$3,$3,0,32
	dlsa	$3,$3,$4,2
	lw	$3,0($3)
	slt	$4,$3,16
	bne	$4,$0,.L215
	addiu	$3,$3,-16

	lwu	$4,96($24)
	ld	$5,88($6)
	dext	$3,$3,0,32
	ld	$6,%got_disp(_ZN4x26515g_rasterToZscanE)($28)
	dsll	$16,$4,5
	dsubu	$16,$16,$4
	dlsa	$3,$3,$6,2
	dlsa	$16,$16,$5,4
	beq	$2,$0,.L211
	lw	$18,0($3)

.L217:
	lwu	$3,0($sp)
	ld	$2,136($2)
	daddu	$2,$2,$3
	beq	$16,$0,.L213
	lb	$15,0($2)

.L218:
	ld	$2,136($16)
	dext	$18,$18,0,32
	ld	$31,56($sp)
	ld	$28,48($sp)
	daddu	$18,$2,$18
	ld	$17,32($sp)
	lb	$2,0($18)
	ld	$16,24($sp)
	ld	$18,40($sp)
	daddiu	$sp,$sp,64
	addu	$2,$15,$2
	addiu	$2,$2,1
	ext	$2,$2,1,8
	jr	$31
	seb	$2,$2

	.align	3
.L215:
	move	$18,$0
	bne	$2,$0,.L217
	move	$16,$0

.L211:
	ld	$25,%got_disp(_ZNK4x2656CUData14getLastCodedQPEj)($28)
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14getLastCodedQPEj
1:	jalr	$25
	move	$4,$24

	bne	$16,$0,.L218
	move	$15,$2

.L213:
	ld	$25,%got_disp(_ZNK4x2656CUData14getLastCodedQPEj)($28)
	move	$5,$17
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14getLastCodedQPEj
1:	jalr	$25
	move	$4,$24

	ld	$31,56($sp)
	addu	$2,$15,$2
	ld	$28,48($sp)
	addiu	$2,$2,1
	ld	$18,40($sp)
	ext	$2,$2,1,8
	ld	$17,32($sp)
	ld	$16,24($sp)
	seb	$2,$2
	jr	$31
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData8getRefQPEj
	.size	_ZNK4x2656CUData8getRefQPEj, .-_ZNK4x2656CUData8getRefQPEj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData19getAllowedChromaDirEjPj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData19getAllowedChromaDirEjPj
	.type	_ZNK4x2656CUData19getAllowedChromaDirEjPj, @function
_ZNK4x2656CUData19getAllowedChromaDirEjPj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,36			# 0x24
	li	$3,26			# 0x1a
	sw	$0,0($6)
	li	$7,10			# 0xa
	li	$8,1			# 0x1
	sw	$3,4($6)
	sw	$7,8($6)
	dext	$5,$5,0,32
	sw	$8,12($6)
	sw	$2,16($6)
	ld	$2,152($4)
	daddu	$5,$2,$5
	lbu	$2,0($5)
	beq	$2,$0,.L222
	nop

	beq	$3,$2,.L223
	nop

	beq	$7,$2,.L224
	nop

	beq	$8,$2,.L226
	li	$2,3			# 0x3

	jr	$31
	nop

	.align	3
.L226:
.L220:
	dlsa	$6,$2,$6,2
	li	$2,34			# 0x22
	jr	$31
	sw	$2,0($6)

	.align	3
.L222:
	b	.L220
	move	$2,$0

	.align	3
.L223:
	b	.L220
	li	$2,1			# 0x1

	.align	3
.L224:
	b	.L220
	li	$2,2			# 0x2

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData19getAllowedChromaDirEjPj
	.size	_ZNK4x2656CUData19getAllowedChromaDirEjPj, .-_ZNK4x2656CUData19getAllowedChromaDirEjPj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData24getIntraDirLumaPredictorEjPj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData24getIntraDirLumaPredictorEjPj
	.type	_ZNK4x2656CUData24getIntraDirLumaPredictorEjPj, @function
_ZNK4x2656CUData24getIntraDirLumaPredictorEjPj:
	.frame	$sp,32,$31		# vars= 16, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$11,$5
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2656CUData24getIntraDirLumaPredictorEjPj)))
	move	$9,$6
	daddu	$28,$28,$25
	sd	$31,24($sp)
	move	$5,$sp
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2656CUData24getIntraDirLumaPredictorEjPj)))
	lw	$2,100($4)
	move	$10,$4
	ld	$25,%got_disp(_ZNK4x2656CUData9getPULeftERjj)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData9getPULeftERjj
1:	jalr	$25
	addu	$6,$2,$11

	beq	$2,$0,.L230
	li	$5,2			# 0x2

	lwu	$4,0($sp)
	ld	$3,192($2)
	lw	$6,100($10)
	daddu	$3,$3,$4
	lbu	$13,0($3)
	addu	$11,$6,$11
	ld	$3,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	dext	$7,$11,0,32
	move	$6,$11
	daddu	$3,$3,$7
	beq	$13,$5,.L260
	lbu	$3,0($3)

.L231:
	beq	$3,$0,.L233
	ld	$25,%got_disp(_ZNK4x2656CUData10getPUAboveERjj)($28)

	move	$5,$sp
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getPUAboveERjj
1:	jalr	$25
	move	$4,$10

	beq	$2,$0,.L233
	li	$5,2			# 0x2

	lwu	$4,0($sp)
	ld	$3,192($2)
	daddu	$3,$3,$4
	lbu	$3,0($3)
	beq	$3,$5,.L261
	li	$3,1			# 0x1

.L233:
	ld	$31,24($sp)
	li	$2,1			# 0x1
.L263:
	li	$3,26			# 0x1a
	sw	$2,4($9)
	li	$2,1			# 0x1
	ld	$28,16($sp)
	sw	$0,0($9)
	sw	$3,8($9)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L260:
	ld	$2,152($2)
	daddu	$4,$2,$4
	lbu	$2,0($4)
	bne	$3,$0,.L232
	move	$12,$2

.L259:
	li	$2,1			# 0x1
	beq	$12,$2,.L263
	ld	$31,24($sp)

	sw	$12,0($9)
	beq	$12,$0,.L242
	sw	$2,4($9)

	ld	$31,24($sp)
.L264:
	li	$2,2			# 0x2
	ld	$28,16($sp)
	sw	$0,8($9)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L230:
	lw	$6,100($10)
	ld	$2,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	addu	$6,$6,$11
	dext	$3,$6,0,32
	daddu	$2,$2,$3
	b	.L231
	lbu	$3,0($2)

	.align	3
.L242:
	li	$2,26			# 0x1a
	sw	$2,8($9)
	li	$2,2			# 0x2
.L262:
	ld	$31,24($sp)
	ld	$28,16($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L261:
	ld	$2,152($2)
	daddu	$4,$2,$4
	lbu	$2,0($4)
	beq	$2,$3,.L233
	li	$12,1			# 0x1

	sw	$3,0($9)
	sw	$2,4($9)
.L245:
	bne	$2,$0,.L264
	ld	$31,24($sp)

.L241:
	addu	$2,$2,$12
	sltu	$2,$2,2
	bne	$2,$0,.L242
	li	$2,1			# 0x1

	sw	$2,8($9)
	b	.L262
	li	$2,2			# 0x2

.L232:
	ld	$25,%got_disp(_ZNK4x2656CUData10getPUAboveERjj)($28)
	move	$5,$sp
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getPUAboveERjj
1:	jalr	$25
	move	$4,$10

	beq	$2,$0,.L259
	lwu	$4,0($sp)

	ld	$3,192($2)
	daddu	$3,$3,$4
	lbu	$3,0($3)
	bne	$3,$13,.L259
	nop

	ld	$2,152($2)
	daddu	$2,$2,$4
	lbu	$3,0($2)
	move	$2,$3
	bne	$12,$2,.L240
	nop

	sltu	$3,$3,2
	bne	$3,$0,.L233
	addiu	$3,$2,-1

	ld	$31,24($sp)
	addiu	$4,$2,29
	andi	$2,$4,0x1f
	andi	$3,$3,0x1f
	ld	$28,16($sp)
	addiu	$2,$2,2
	addiu	$3,$3,2
	sw	$12,0($9)
	sw	$2,4($9)
	li	$2,1			# 0x1
	sw	$3,8($9)
	jr	$31
	daddiu	$sp,$sp,32

.L240:
	sw	$12,0($9)
	beq	$12,$0,.L241
	sw	$3,4($9)

	b	.L245
	nop

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData24getIntraDirLumaPredictorEjPj
	.size	_ZNK4x2656CUData24getIntraDirLumaPredictorEjPj, .-_ZNK4x2656CUData24getIntraDirLumaPredictorEjPj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData15getCtxSplitFlagEjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData15getCtxSplitFlagEjj
	.type	_ZNK4x2656CUData15getCtxSplitFlagEjj, @function
_ZNK4x2656CUData15getCtxSplitFlagEjj:
	.frame	$sp,32,$31		# vars= 16, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$11,$5
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2656CUData15getCtxSplitFlagEjj)))
	move	$12,$6
	daddu	$28,$28,$25
	sd	$31,24($sp)
	move	$5,$sp
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2656CUData15getCtxSplitFlagEjj)))
	lw	$2,100($4)
	move	$10,$4
	ld	$25,%got_disp(_ZNK4x2656CUData9getPULeftERjj)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData9getPULeftERjj
1:	jalr	$25
	addu	$6,$2,$11

	beq	$2,$0,.L268
	lwu	$3,0($sp)

	ld	$2,184($2)
	daddu	$2,$2,$3
	lbu	$9,0($2)
	sltu	$9,$12,$9
.L266:
	lw	$6,100($10)
	move	$5,$sp
	move	$4,$10
	ld	$25,%got_disp(_ZNK4x2656CUData10getPUAboveERjj)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getPUAboveERjj
1:	jalr	$25
	addu	$6,$6,$11

	beq	$2,$0,.L267
	lwu	$3,0($sp)

	ld	$2,184($2)
	daddu	$2,$2,$3
	lbu	$6,0($2)
	sltu	$6,$12,$6
	addu	$9,$6,$9
.L267:
	ld	$31,24($sp)
	move	$2,$9
	ld	$28,16($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L268:
	b	.L266
	move	$9,$0

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData15getCtxSplitFlagEjj
	.size	_ZNK4x2656CUData15getCtxSplitFlagEjj, .-_ZNK4x2656CUData15getCtxSplitFlagEjj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData22getIntraTUQtDepthRangeEPjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData22getIntraTUQtDepthRangeEPjj
	.type	_ZNK4x2656CUData22getIntraTUQtDepthRangeEPjj, @function
_ZNK4x2656CUData22getIntraTUQtDepthRangeEPjj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$7,56($4)
	dext	$6,$6,0,32
	ld	$2,200($4)
	ld	$3,144($4)
	ld	$7,0($7)
	daddu	$3,$3,$6
	daddu	$6,$2,$6
	lw	$7,80($7)
	lbu	$2,0($6)
	lbu	$3,0($3)
	sw	$7,0($5)
	ld	$6,56($4)
	sltu	$2,$2,1
	ld	$6,0($6)
	lw	$6,76($6)
	sw	$6,4($5)
	ld	$4,56($4)
	ld	$4,0($4)
	lw	$4,88($4)
	subu	$3,$3,$4
	addu	$2,$2,$3
	sltu	$3,$2,$7
	movn	$2,$7,$3
	sltu	$3,$6,$2
	movn	$2,$6,$3
	jr	$31
	sw	$2,0($5)

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData22getIntraTUQtDepthRangeEPjj
	.size	_ZNK4x2656CUData22getIntraTUQtDepthRangeEPjj, .-_ZNK4x2656CUData22getIntraTUQtDepthRangeEPjj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData22getInterTUQtDepthRangeEPjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData22getInterTUQtDepthRangeEPjj
	.type	_ZNK4x2656CUData22getInterTUQtDepthRangeEPjj, @function
_ZNK4x2656CUData22getInterTUQtDepthRangeEPjj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,56($4)
	dext	$6,$6,0,32
	li	$9,1			# 0x1
	ld	$3,144($4)
	ld	$8,0($2)
	daddu	$3,$3,$6
	lbu	$2,0($3)
	lw	$3,84($8)
	bne	$3,$9,.L276
	move	$7,$0

	ld	$7,200($4)
	daddu	$6,$7,$6
	lbu	$7,0($6)
	sltu	$7,$0,$7
.L276:
	lw	$6,80($8)
	subu	$2,$2,$3
	addiu	$2,$2,1
	subu	$2,$2,$7
	sw	$6,0($5)
	sltu	$3,$2,$6
	ld	$4,56($4)
	movn	$2,$6,$3
	ld	$3,0($4)
	lw	$4,76($3)
	sltu	$3,$4,$2
	sw	$4,4($5)
	movn	$2,$4,$3
	jr	$31
	sw	$2,0($5)

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData22getInterTUQtDepthRangeEPjj
	.size	_ZNK4x2656CUData22getInterTUQtDepthRangeEPjj, .-_ZNK4x2656CUData22getInterTUQtDepthRangeEPjj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData14getCtxSkipFlagEj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData14getCtxSkipFlagEj
	.type	_ZNK4x2656CUData14getCtxSkipFlagEj, @function
_ZNK4x2656CUData14getCtxSkipFlagEj:
	.frame	$sp,32,$31		# vars= 16, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$11,$5
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2656CUData14getCtxSkipFlagEj)))
	move	$5,$sp
	daddu	$28,$28,$25
	sd	$31,24($sp)
	move	$10,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2656CUData14getCtxSkipFlagEj)))
	lw	$6,100($4)
	ld	$25,%got_disp(_ZNK4x2656CUData9getPULeftERjj)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData9getPULeftERjj
1:	jalr	$25
	addu	$6,$6,$11

	beq	$2,$0,.L283
	lwu	$3,0($sp)

	ld	$2,192($2)
	daddu	$2,$2,$3
	lbu	$9,0($2)
	xori	$9,$9,0x5
	sltu	$9,$9,1
.L281:
	lw	$6,100($10)
	move	$5,$sp
	move	$4,$10
	ld	$25,%got_disp(_ZNK4x2656CUData10getPUAboveERjj)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getPUAboveERjj
1:	jalr	$25
	addu	$6,$6,$11

	beq	$2,$0,.L282
	lwu	$3,0($sp)

	ld	$2,192($2)
	daddu	$2,$2,$3
	lbu	$2,0($2)
	xori	$2,$2,0x5
	sltu	$2,$2,1
	addu	$9,$2,$9
.L282:
	ld	$31,24($sp)
	move	$2,$9
	ld	$28,16($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L283:
	b	.L281
	move	$9,$0

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData14getCtxSkipFlagEj
	.size	_ZNK4x2656CUData14getCtxSkipFlagEj, .-_ZNK4x2656CUData14getCtxSkipFlagEj
	.align	2
	.align	3
	.globl	_ZN4x2656CUData11setQPSubCUsEajj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656CUData11setQPSubCUsEajj
	.type	_ZN4x2656CUData11setQPSubCUsEajj, @function
_ZN4x2656CUData11setQPSubCUsEajj:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	dext	$3,$6,0,32
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656CUData11setQPSubCUsEajj)))
	sd	$19,24($sp)
	daddu	$28,$28,$25
	move	$19,$5
	sd	$18,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656CUData11setQPSubCUsEajj)))
	sd	$31,72($sp)
	sd	$23,56($sp)
	sd	$22,48($sp)
	sd	$21,40($sp)
	sd	$20,32($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	ld	$2,184($4)
	daddu	$2,$2,$3
	lbu	$2,0($2)
	sltu	$2,$7,$2
	beq	$2,$0,.L289
	move	$18,$4

	ld	$3,48($4)
	sll	$2,$7,1
	move	$23,$6
	ld	$21,%got_disp(_ZN4x2656CUData11setQPSubCUsEajj)($28)
	addiu	$16,$7,1
	move	$17,$0
	li	$22,4			# 0x4
	ld	$3,16($3)
	lw	$20,808($3)
	srl	$20,$20,$2
	dext	$20,$20,2,30
.L292:
	mul	$2,$20,$17
	move	$7,$16
	move	$5,$19
	move	$4,$18
	move	$25,$21
	addiu	$17,$17,1
	.reloc	1f,R_MIPS_JALR,_ZN4x2656CUData11setQPSubCUsEajj
1:	jalr	$25
	addu	$6,$2,$23

	bne	$2,$0,.L300
	ld	$31,72($sp)

	bne	$17,$22,.L292
	nop

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
.L289:
	ld	$2,288($4)
	daddu	$2,$2,$3
	lbu	$2,0($2)
	bne	$2,$0,.L300
	ld	$31,72($sp)

	lw	$2,116($4)
	bne	$2,$0,.L299
	nop

.L294:
	dext	$7,$7,0,32
	ld	$4,136($18)
	andi	$5,$19,0x00ff
	dlsa	$7,$7,$18,3
	ld	$25,0($7)
	jalr	$25
	daddu	$4,$4,$3

	ld	$31,72($sp)
	move	$2,$0
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
.L299:
	ld	$2,296($4)
	daddu	$2,$2,$3
	lbu	$2,0($2)
	bne	$2,$0,.L300
	ld	$31,72($sp)

	ld	$2,304($4)
	daddu	$2,$2,$3
	lbu	$2,0($2)
	beq	$2,$0,.L294
	nop

.L300:
	li	$2,1			# 0x1
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
	.end	_ZN4x2656CUData11setQPSubCUsEajj
	.size	_ZN4x2656CUData11setQPSubCUsEajj, .-_ZN4x2656CUData11setQPSubCUsEajj
	.align	2
	.align	3
	.globl	_ZN4x2656CUData13setPUInterDirEhjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656CUData13setPUInterDirEhjj
	.type	_ZN4x2656CUData13setPUInterDirEhjj, @function
_ZN4x2656CUData13setPUInterDirEhjj:
	.frame	$sp,96,$31		# vars= 16, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$28,80($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656CUData13setPUInterDirEhjj)))
	sd	$19,40($sp)
	daddu	$28,$28,$25
	sd	$18,32($sp)
	dext	$18,$6,0,32
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656CUData13setPUInterDirEhjj)))
	sd	$31,88($sp)
	sd	$23,72($sp)
	sd	$22,64($sp)
	sd	$21,56($sp)
	sd	$20,48($sp)
	sd	$17,24($sp)
	sd	$16,16($sp)
	ld	$2,200($4)
	lw	$3,112($4)
	daddu	$2,$2,$18
	lbu	$6,0($2)
	sltu	$6,$6,8
	beq	$6,$0,.L301
	dext	$19,$3,2,30

	move	$17,$4
	ld	$4,%got_page(.L304)($28)
	lbu	$2,0($2)
	sd	$5,0($sp)
	daddiu	$4,$4,%got_ofst(.L304)
	dlsa	$2,$2,$4,3
	ld	$2,0($2)
	daddu	$2,$2,$28
	jr	$2
	ld	$4,232($17)

	.rdata
	.align	3
	.align	2
.L304:
	.gpdword	.L303
	.gpdword	.L305
	.gpdword	.L306
	.gpdword	.L307
	.gpdword	.L308
	.gpdword	.L309
	.gpdword	.L310
	.gpdword	.L311
	.text
	.align	3
.L311:
	dext	$6,$3,4,28
	dext	$16,$3,3,29
	ld	$25,%call16(memset)($28)
	dext	$20,$6,0,32
	dlsa	$21,$19,$18,1
	beq	$7,$0,.L322
	daddu	$4,$4,$18

	ld	$2,0($sp)
	move	$6,$20
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$2

	ld	$2,232($17)
	daddu	$4,$18,$16
	ld	$3,0($sp)
	move	$6,$20
	ld	$25,%call16(memset)($28)
	daddu	$4,$2,$4
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$3

	ld	$4,232($17)
	move	$6,$20
.L318:
	ld	$2,0($sp)
	daddu	$4,$4,$21
	daddu	$16,$16,$21
	ld	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$2

	ld	$4,232($17)
	move	$6,$20
	ld	$2,0($sp)
	ld	$25,%call16(memset)($28)
	daddu	$4,$4,$16
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$2

.L301:
	ld	$31,88($sp)
.L323:
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
.L310:
	dext	$2,$3,3,29
	dlsa	$22,$19,$18,1
	ld	$25,%call16(memset)($28)
	daddu	$23,$18,$2
	daddu	$21,$2,$22
	ld	$2,0($sp)
	dext	$3,$3,4,28
	daddu	$4,$4,$18
	dext	$20,$3,0,32
	move	$6,$20
	bne	$7,$0,.L314
	move	$5,$2

	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	nop

	ld	$4,232($17)
	move	$6,$20
	ld	$2,0($sp)
	ld	$25,%call16(memset)($28)
	daddu	$4,$4,$23
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$2

	ld	$4,232($17)
	move	$6,$20
	ld	$2,0($sp)
	ld	$25,%call16(memset)($28)
	daddu	$4,$4,$22
	move	$5,$2
.L321:
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	nop

	ld	$4,232($17)
	move	$6,$20
.L319:
	ld	$25,%call16(memset)($28)
.L320:
	ld	$2,0($sp)
	daddu	$4,$4,$21
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$2

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
.L303:
	dsll	$6,$19,2
.L317:
	ld	$2,0($sp)
	daddu	$4,$4,$18
	ld	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$2

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
.L305:
	b	.L317
	dsll	$6,$19,1

	.align	3
.L306:
	ld	$2,0($sp)
	dext	$20,$19,0,32
	daddu	$4,$4,$18
	ld	$25,%call16(memset)($28)
	move	$6,$20
	dlsa	$18,$19,$18,1
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$2

	ld	$4,232($17)
	move	$6,$20
	ld	$2,0($sp)
	ld	$25,%call16(memset)($28)
	daddu	$4,$4,$18
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$2

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
.L307:
	b	.L317
	move	$6,$19

	.align	3
.L308:
	ld	$2,0($sp)
	dext	$16,$3,3,29
	daddu	$21,$19,$18
	dext	$20,$16,0,32
	daddu	$4,$4,$18
	ld	$25,%call16(memset)($28)
	move	$6,$20
	beq	$7,$0,.L321
	move	$5,$2

	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	nop

	lsa	$6,$19,$16,1
	ld	$4,232($17)
	ld	$25,%call16(memset)($28)
	b	.L320
	dext	$6,$6,0,32

	.align	3
.L309:
	dext	$3,$3,3,29
	daddu	$20,$19,$18
	dext	$16,$3,0,32
	bne	$7,$0,.L313
	daddu	$4,$4,$18

	ld	$2,0($sp)
	sll	$19,$19,1
	ld	$25,%call16(memset)($28)
	addu	$3,$19,$3
	daddu	$19,$19,$20
	dext	$6,$3,0,32
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$2

	ld	$4,232($17)
	move	$6,$16
	ld	$2,0($sp)
	ld	$25,%call16(memset)($28)
	daddu	$4,$4,$19
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$2

	b	.L323
	ld	$31,88($sp)

	.align	3
.L314:
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	daddu	$19,$19,$3

	ld	$4,232($17)
	move	$6,$19
	ld	$2,0($sp)
	ld	$25,%call16(memset)($28)
	daddu	$4,$4,$23
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$2

	ld	$4,232($17)
	move	$6,$20
	ld	$2,0($sp)
	ld	$25,%call16(memset)($28)
	daddu	$4,$4,$22
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$2

	ld	$4,232($17)
	b	.L319
	move	$6,$19

	.align	3
.L313:
	ld	$2,0($sp)
	move	$6,$16
	ld	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$2

	ld	$4,232($17)
	move	$6,$16
	ld	$2,0($sp)
	ld	$25,%call16(memset)($28)
	daddu	$4,$4,$20
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$2

	b	.L323
	ld	$31,88($sp)

	.align	3
.L322:
	ld	$2,0($sp)
	daddu	$22,$19,$6
	daddu	$16,$19,$16
	move	$6,$22
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$2

	ld	$2,232($17)
	daddu	$4,$18,$16
	ld	$3,0($sp)
	move	$6,$20
	ld	$25,%call16(memset)($28)
	daddu	$4,$2,$4
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$3

	ld	$4,232($17)
	b	.L318
	move	$6,$22

	.set	macro
	.set	reorder
	.end	_ZN4x2656CUData13setPUInterDirEhjj
	.size	_ZN4x2656CUData13setPUInterDirEhjj, .-_ZN4x2656CUData13setPUInterDirEhjj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData19getPartIndexAndSizeEjRjRiS2_
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData19getPartIndexAndSizeEjRjRiS2_
	.type	_ZNK4x2656CUData19getPartIndexAndSizeEjRjRiS2_, @function
_ZNK4x2656CUData19getPartIndexAndSizeEjRjRiS2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$3,200($4)
	lui	$12,%hi(%neg(%gp_rel(_ZNK4x2656CUData19getPartIndexAndSizeEjRjRiS2_)))
	dext	$10,$5,0,32
	ld	$2,144($4)
	daddu	$12,$12,$25
	daddiu	$12,$12,%lo(%neg(%gp_rel(_ZNK4x2656CUData19getPartIndexAndSizeEjRjRiS2_)))
	lbu	$5,0($3)
	ld	$9,%got_page(_ZN4x265L9partTableE)($12)
	lbu	$2,0($2)
	ld	$11,%got_page(_ZN4x265L13partAddrTableE)($12)
	move	$3,$5
	dlsa	$5,$3,$10,2
	daddiu	$3,$9,%got_ofst(_ZN4x265L9partTableE)
	move	$10,$2
	dlsa	$3,$5,$3,3
	daddiu	$2,$11,%got_ofst(_ZN4x265L13partAddrTableE)
	dlsa	$5,$5,$2,2
	lw	$2,0($3)
	lw	$3,0($5)
	sra	$5,$2,4
	andi	$2,$2,0xf
	sll	$5,$5,$10
	sll	$2,$2,$10
	sra	$2,$2,2
	sra	$5,$5,2
	sw	$5,0($7)
	sw	$2,0($8)
	lw	$2,112($4)
	gsmultu	$3,$3,$2
	srl	$3,$3,4
	jr	$31
	sw	$3,0($6)

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData19getPartIndexAndSizeEjRjRiS2_
	.size	_ZNK4x2656CUData19getPartIndexAndSizeEjRjRiS2_, .-_ZNK4x2656CUData19getPartIndexAndSizeEjRjRiS2_
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE
	.type	_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE, @function
_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,.L327
	move	$4,$5

	lui	$3,%hi(%neg(%gp_rel(_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE)))
	move	$5,$6
	daddu	$3,$3,$25
	move	$6,$7
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE)))
	ld	$25,%got_page(_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8)($3)
	daddiu	$25,$25,%got_ofst(_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8
1:	jr	$25
	move	$7,$8

	.align	3
.L327:
	li	$2,-1			# 0xffffffffffffffff
	sw	$0,0($8)
	jr	$31
	sw	$2,4($8)

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE
	.size	_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE, .-_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData21deriveLeftRightTopIdxEjRjS1_
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData21deriveLeftRightTopIdxEjRjS1_
	.type	_ZNK4x2656CUData21deriveLeftRightTopIdxEjRjS1_, @function
_ZNK4x2656CUData21deriveLeftRightTopIdxEjRjS1_:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	lui	$10,%hi(%neg(%gp_rel(_ZNK4x2656CUData21deriveLeftRightTopIdxEjRjS1_)))
	daddu	$10,$10,$25
	sd	$28,8($sp)
	lw	$2,100($4)
	daddiu	$10,$10,%lo(%neg(%gp_rel(_ZNK4x2656CUData21deriveLeftRightTopIdxEjRjS1_)))
	ld	$8,%got_disp(_ZN4x26515g_zscanToRasterE)($10)
	sw	$2,0($6)
	dext	$2,$2,0,32
	ld	$3,144($4)
	dlsa	$2,$2,$8,2
	lw	$2,0($2)
	lbu	$8,0($3)
	addiu	$3,$2,-1
	li	$2,1			# 0x1
	addiu	$8,$8,-2
	sll	$2,$2,$8
	addu	$2,$2,$3
	ld	$3,%got_disp(_ZN4x26515g_rasterToZscanE)($10)
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	lw	$8,0($2)
	sw	$8,0($7)
	ld	$3,200($4)
	lbu	$2,0($3)
	sltu	$2,$2,8
	beq	$2,$0,.L331
	nop

	lbu	$2,0($3)
	ld	$3,%got_page(.L334)($10)
	daddiu	$3,$3,%got_ofst(.L334)
	dlsa	$2,$2,$3,3
	ld	$2,0($2)
	daddu	$2,$2,$10
	jr	$2
	nop

	.rdata
	.align	3
	.align	2
.L334:
	.gpdword	.L331
	.gpdword	.L333
	.gpdword	.L335
	.gpdword	.L336
	.gpdword	.L337
	.gpdword	.L338
	.gpdword	.L339
	.gpdword	.L340
	.text
	.align	3
.L340:
	lw	$2,112($4)
	beq	$5,$0,.L349
	dext	$3,$2,4,28

	lw	$8,0($6)
	srl	$2,$2,2
	li	$9,1			# 0x1
	addu	$2,$2,$3
	move	$3,$0
	addu	$2,$8,$2
	sw	$2,0($6)
	beq	$5,$9,.L349
	lw	$8,0($7)

	lw	$3,112($4)
	dext	$3,$3,4,28
	.align	3
.L349:
	subu	$8,$8,$3
	sw	$8,0($7)
.L331:
	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L339:
	lw	$2,112($4)
	beq	$5,$0,.L346
	dext	$3,$2,4,28

	lw	$8,0($6)
	li	$9,1			# 0x1
	move	$2,$0
	addu	$3,$8,$3
	sw	$3,0($6)
	bne	$5,$9,.L369
	lw	$8,0($7)

	subu	$2,$8,$2
	sw	$2,0($7)
.L372:
	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L333:
	beq	$5,$0,.L345
	move	$2,$0

	lw	$3,112($4)
	lw	$2,0($6)
	srl	$3,$3,1
	addu	$2,$2,$3
	sw	$2,0($6)
	lw	$2,112($4)
	lw	$8,0($7)
	dext	$2,$2,1,31
.L345:
	addu	$8,$2,$8
	sw	$8,0($7)
.L371:
	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L335:
	lw	$2,112($4)
	beq	$5,$0,.L343
	dext	$2,$2,2,30

	lw	$3,0($6)
	li	$9,1			# 0x1
	addu	$3,$3,$2
	move	$2,$0
	sw	$3,0($6)
	bne	$5,$9,.L370
	lw	$8,0($7)

.L343:
	subu	$8,$8,$2
	sw	$8,0($7)
.L373:
	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L337:
	beq	$5,$0,.L345
	move	$2,$0

	lw	$3,112($4)
	lw	$2,0($6)
	srl	$3,$3,3
	addu	$2,$2,$3
	sw	$2,0($6)
	lw	$2,112($4)
	lw	$8,0($7)
	dext	$2,$2,3,29
	addu	$8,$2,$8
	b	.L371
	sw	$8,0($7)

	.align	3
.L336:
	lw	$3,112($4)
	addiu	$8,$5,-1
	lw	$2,0($6)
	ld	$28,8($sp)
	srl	$3,$3,2
	mul	$9,$3,$5
	addu	$5,$9,$2
	sw	$5,0($6)
	lw	$2,112($4)
	daddiu	$sp,$sp,16
	lw	$3,0($7)
	srl	$2,$2,2
	mul	$4,$2,$8
	addu	$2,$4,$3
	jr	$31
	sw	$2,0($7)

	.align	3
.L338:
	beq	$5,$0,.L345
	move	$2,$0

	lw	$2,112($4)
	lw	$3,0($6)
	srl	$5,$2,1
	srl	$2,$2,3
	addu	$2,$5,$2
	addu	$2,$3,$2
	sw	$2,0($6)
	lw	$3,112($4)
	lw	$8,0($7)
	srl	$2,$3,1
	srl	$3,$3,3
	addu	$2,$2,$3
	addu	$8,$2,$8
	b	.L371
	sw	$8,0($7)

	.align	3
.L369:
	lw	$2,112($4)
	dext	$3,$2,4,28
.L346:
	srl	$2,$2,2
	addu	$2,$2,$3
	subu	$2,$8,$2
	b	.L372
	sw	$2,0($7)

	.align	3
.L370:
	lw	$2,112($4)
	dext	$2,$2,2,30
	subu	$8,$8,$2
	b	.L373
	sw	$8,0($7)

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData21deriveLeftRightTopIdxEjRjS1_
	.size	_ZNK4x2656CUData21deriveLeftRightTopIdxEjRjS1_, .-_ZNK4x2656CUData21deriveLeftRightTopIdxEjRjS1_
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData19deriveLeftBottomIdxEj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData19deriveLeftBottomIdxEj
	.type	_ZNK4x2656CUData19deriveLeftBottomIdxEj, @function
_ZNK4x2656CUData19deriveLeftBottomIdxEj:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	lui	$9,%hi(%neg(%gp_rel(_ZNK4x2656CUData19deriveLeftBottomIdxEj)))
	daddu	$9,$9,$25
	sd	$28,8($sp)
	ld	$2,144($4)
	daddiu	$9,$9,%lo(%neg(%gp_rel(_ZNK4x2656CUData19deriveLeftBottomIdxEj)))
	ld	$6,%got_disp(_ZN4x26515g_zscanToRasterE)($9)
	lwu	$3,100($4)
	lbu	$2,0($2)
	ld	$7,200($4)
	dlsa	$3,$3,$6,2
	lw	$8,0($3)
	addiu	$6,$2,-3
	li	$2,1			# 0x1
	sll	$2,$2,$6
	lbu	$3,0($7)
	addiu	$2,$2,-1
	ld	$6,%got_disp(_ZN4x26515g_rasterToZscanE)($9)
	lsa	$2,$2,$8,4
	dext	$2,$2,0,32
	sltu	$3,$3,8
	dlsa	$2,$2,$6,2
	beq	$3,$0,.L375
	lw	$2,0($2)

	ld	$6,%got_page(.L377)($9)
	lbu	$3,0($7)
	daddiu	$6,$6,%got_ofst(.L377)
	dlsa	$3,$3,$6,3
	ld	$3,0($3)
	daddu	$3,$3,$9
	jr	$3
	nop

	.rdata
	.align	3
	.align	2
.L377:
	.gpdword	.L404
	.gpdword	.L378
	.gpdword	.L379
	.gpdword	.L380
	.gpdword	.L381
	.gpdword	.L382
	.gpdword	.L383
	.gpdword	.L384
	.text
	.align	3
.L383:
	lw	$3,112($4)
	beq	$5,$0,.L392
	dext	$4,$3,1,31

	srl	$3,$3,4
	addu	$4,$3,$4
.L392:
	addu	$2,$4,$2
.L375:
	ld	$28,8($sp)
.L407:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L378:
	beq	$5,$0,.L407
	ld	$28,8($sp)

.L404:
	lw	$3,112($4)
	ld	$28,8($sp)
	daddiu	$sp,$sp,16
	srl	$3,$3,1
	jr	$31
	addu	$2,$3,$2

	.align	3
.L379:
	lw	$4,112($4)
	beq	$5,$0,.L393
	dext	$3,$4,1,31

	srl	$3,$4,2
	lsa	$3,$3,$3,1
.L393:
	addu	$2,$3,$2
.L406:
	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L380:
	lw	$3,112($4)
	ld	$28,8($sp)
	daddiu	$sp,$sp,16
	srl	$3,$3,2
	mul	$4,$3,$5
	jr	$31
	addu	$2,$4,$2

	.align	3
.L381:
	bne	$5,$0,.L405
	lw	$3,112($4)

	sra	$3,$3,3
	subu	$3,$0,$3
	b	.L406
	addu	$2,$3,$2

	.align	3
.L382:
	bne	$5,$0,.L405
	lw	$3,112($4)

	srl	$4,$3,2
	srl	$3,$3,3
	addu	$3,$4,$3
	b	.L406
	addu	$2,$3,$2

	.align	3
.L384:
	lw	$4,112($4)
	beq	$5,$0,.L393
	dext	$3,$4,1,31

	srl	$5,$4,2
	srl	$4,$4,4
	addu	$3,$5,$3
	addu	$3,$3,$4
	b	.L406
	addu	$2,$3,$2

	.align	3
.L405:
	dext	$3,$3,1,31
	b	.L406
	addu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData19deriveLeftBottomIdxEj
	.size	_ZNK4x2656CUData19deriveLeftBottomIdxEj, .-_ZNK4x2656CUData19deriveLeftBottomIdxEj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData20deriveRightBottomIdxEj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData20deriveRightBottomIdxEj
	.type	_ZNK4x2656CUData20deriveRightBottomIdxEj, @function
_ZNK4x2656CUData20deriveRightBottomIdxEj:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$10,%hi(%neg(%gp_rel(_ZNK4x2656CUData20deriveRightBottomIdxEj)))
	daddiu	$sp,$sp,-16
	daddu	$10,$10,$25
	sd	$28,8($sp)
	li	$2,1			# 0x1
	daddiu	$10,$10,%lo(%neg(%gp_rel(_ZNK4x2656CUData20deriveRightBottomIdxEj)))
	ld	$3,144($4)
	ld	$7,%got_disp(_ZN4x26515g_zscanToRasterE)($10)
	lwu	$6,100($4)
	lbu	$3,0($3)
	ld	$9,200($4)
	dlsa	$6,$6,$7,2
	lw	$6,0($6)
	addiu	$8,$3,-2
	addiu	$3,$3,-3
	sll	$8,$2,$8
	sll	$2,$2,$3
	lbu	$7,0($9)
	addiu	$2,$2,-1
	addiu	$6,$6,-1
	addu	$3,$6,$8
	sltu	$6,$7,8
	lsa	$2,$2,$3,4
	ld	$3,%got_disp(_ZN4x26515g_rasterToZscanE)($10)
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	beq	$6,$0,.L409
	lw	$2,0($2)

	ld	$6,%got_page(.L411)($10)
	lbu	$3,0($9)
	daddiu	$6,$6,%got_ofst(.L411)
	dlsa	$3,$3,$6,3
	ld	$3,0($3)
	daddu	$3,$3,$10
	jr	$3
	nop

	.rdata
	.align	3
	.align	2
.L411:
	.gpdword	.L434
	.gpdword	.L412
	.gpdword	.L413
	.gpdword	.L414
	.gpdword	.L415
	.gpdword	.L416
	.gpdword	.L417
	.gpdword	.L418
	.text
	.align	3
.L412:
	beq	$5,$0,.L438
	ld	$28,8($sp)

.L434:
	lw	$3,112($4)
	srl	$3,$3,1
	addu	$2,$3,$2
.L409:
	ld	$28,8($sp)
.L438:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L413:
	lw	$4,112($4)
	ld	$28,8($sp)
	daddiu	$sp,$sp,16
	dext	$3,$4,2,30
	dext	$4,$4,1,31
	movn	$3,$4,$5
	jr	$31
	addu	$2,$3,$2

	.align	3
.L414:
	lw	$3,112($4)
	addiu	$5,$5,-1
	ld	$28,8($sp)
	daddiu	$sp,$sp,16
	srl	$3,$3,2
	mul	$4,$3,$5
	jr	$31
	addu	$2,$4,$2

	.align	3
.L415:
	bne	$5,$0,.L436
	lw	$3,112($4)

	sra	$3,$3,3
	subu	$3,$0,$3
.L429:
	addu	$2,$3,$2
.L437:
	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L416:
	bne	$5,$0,.L436
	lw	$3,112($4)

	srl	$4,$3,2
	srl	$3,$3,3
	addu	$3,$4,$3
	b	.L437
	addu	$2,$3,$2

	.align	3
.L417:
	bne	$5,$0,.L436
	lw	$3,112($4)

	srl	$4,$3,3
	srl	$3,$3,4
	addu	$3,$4,$3
	b	.L437
	addu	$2,$3,$2

	.align	3
.L418:
	lw	$4,112($4)
	bne	$5,$0,.L429
	dext	$3,$4,1,31

	srl	$3,$4,2
	srl	$5,$4,3
	addu	$3,$3,$5
	srl	$4,$4,4
	addu	$3,$3,$4
	b	.L437
	addu	$2,$3,$2

	.align	3
.L436:
	dext	$3,$3,1,31
	b	.L437
	addu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData20deriveRightBottomIdxEj
	.size	_ZNK4x2656CUData20deriveRightBottomIdxEj, .-_ZNK4x2656CUData20deriveRightBottomIdxEj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData14hasEqualMotionEjRKS0_j
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData14hasEqualMotionEjRKS0_j
	.type	_ZNK4x2656CUData14hasEqualMotionEjRKS0_j, @function
_ZNK4x2656CUData14hasEqualMotionEjRKS0_j:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$8,232($4)
	dext	$5,$5,0,32
	dext	$7,$7,0,32
	ld	$3,232($6)
	daddu	$8,$8,$5
	daddu	$3,$3,$7
	lbu	$8,0($8)
	lbu	$3,0($3)
	beq	$3,$8,.L451
	move	$2,$0

	jr	$31
	nop

	.align	3
.L451:
	dsll	$12,$5,2
	dsll	$11,$7,2
	daddiu	$4,$4,168
	daddiu	$6,$6,168
	move	$3,$0
	li	$10,1			# 0x1
.L442:
	sra	$2,$8,$3
	andi	$2,$2,0x1
	beq	$2,$0,.L441
	nop

	ld	$9,208($4)
	ld	$2,208($6)
	daddu	$9,$9,$12
	daddu	$2,$2,$11
	lw	$9,0($9)
	lw	$2,0($2)
	bne	$9,$2,.L445
	nop

	ld	$9,0($4)
	ld	$2,0($6)
	daddu	$9,$9,$5
	daddu	$2,$2,$7
	lb	$9,0($9)
	lb	$2,0($2)
	bne	$9,$2,.L445
	nop

.L441:
	daddiu	$4,$4,8
	bne	$3,$10,.L446
	daddiu	$6,$6,8

	jr	$31
	li	$2,1			# 0x1

	.align	3
.L446:
	b	.L442
	li	$3,1			# 0x1

	.align	3
.L445:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData14hasEqualMotionEjRKS0_j
	.size	_ZNK4x2656CUData14hasEqualMotionEjRKS0_j, .-_ZNK4x2656CUData14hasEqualMotionEjRKS0_j
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData19getInterNeighbourMVEPNS_16InterNeighbourMVEjNS_7MVP_DIRE
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData19getInterNeighbourMVEPNS_16InterNeighbourMVEjNS_7MVP_DIRE
	.type	_ZNK4x2656CUData19getInterNeighbourMVEPNS_16InterNeighbourMVEjNS_7MVP_DIRE, @function
_ZNK4x2656CUData19getInterNeighbourMVEPNS_16InterNeighbourMVEjNS_7MVP_DIRE:
	.frame	$sp,32,$31		# vars= 16, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sltu	$2,$7,5
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2656CUData19getInterNeighbourMVEPNS_16InterNeighbourMVEjNS_7MVP_DIRE)))
	move	$12,$5
	daddu	$28,$28,$25
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2656CUData19getInterNeighbourMVEPNS_16InterNeighbourMVEjNS_7MVP_DIRE)))
	beq	$2,$0,.L455
	sw	$0,0($sp)

	ld	$2,%got_page(.L457)($28)
	dext	$7,$7,0,32
	daddiu	$2,$2,%got_ofst(.L457)
	dlsa	$7,$7,$2,3
	ld	$2,0($7)
	daddu	$2,$2,$28
	jr	$2
	move	$5,$sp

	.rdata
	.align	3
	.align	2
.L457:
	.gpdword	.L456
	.gpdword	.L458
	.gpdword	.L459
	.gpdword	.L460
	.gpdword	.L461
	.text
	.align	3
.L455:
	ld	$31,24($sp)
	.align	3
.L468:
	li	$2,-1			# 0xffffffffffffffff
	ld	$28,16($sp)
	sw	$2,16($12)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L460:
	ld	$25,%got_disp(_ZNK4x2656CUData14getPUBelowLeftERjj)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14getPUBelowLeftERjj
1:	jalr	$25
	nop

.L463:
	beq	$2,$0,.L468
	ld	$31,24($sp)

	lwu	$3,0($sp)
	ld	$5,376($2)
	dsll	$6,$3,2
	ld	$28,16($sp)
	daddu	$5,$5,$6
	lw	$4,0($5)
	sw	$4,0($12)
	ld	$5,168($2)
	daddu	$5,$5,$3
	lb	$4,0($5)
	sh	$4,16($12)
	ld	$4,384($2)
	daddu	$4,$4,$6
	lw	$4,0($4)
	sw	$4,4($12)
	ld	$2,176($2)
	daddu	$2,$2,$3
	lb	$2,0($2)
	sh	$2,18($12)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L461:
	ld	$25,%got_disp(_ZNK4x2656CUData14getPUAboveLeftERjj)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14getPUAboveLeftERjj
1:	jalr	$25
	nop

	b	.L463
	nop

	.align	3
.L456:
	ld	$25,%got_disp(_ZNK4x2656CUData9getPULeftERjj)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData9getPULeftERjj
1:	jalr	$25
	nop

	b	.L463
	nop

	.align	3
.L458:
	ld	$25,%got_disp(_ZNK4x2656CUData10getPUAboveERjj)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getPUAboveERjj
1:	jalr	$25
	nop

	b	.L463
	nop

	.align	3
.L459:
	ld	$25,%got_disp(_ZNK4x2656CUData15getPUAboveRightERjj)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData15getPUAboveRightERjj
1:	jalr	$25
	nop

	b	.L463
	nop

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData19getInterNeighbourMVEPNS_16InterNeighbourMVEjNS_7MVP_DIRE
	.size	_ZNK4x2656CUData19getInterNeighbourMVEPNS_16InterNeighbourMVEjNS_7MVP_DIRE, .-_ZNK4x2656CUData19getInterNeighbourMVEPNS_16InterNeighbourMVEjNS_7MVP_DIRE
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData6clipMvERNS_2MVE
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData6clipMvERNS_2MVE
	.type	_ZNK4x2656CUData6clipMvERNS_2MVE, @function
_ZNK4x2656CUData6clipMvERNS_2MVE:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,48($4)
	li	$6,7			# 0x7
	ld	$3,56($4)
	lw	$9,104($4)
	ld	$2,16($2)
	ld	$7,0($3)
	lw	$3,108($4)
	addiu	$4,$9,-1
	lw	$2,180($2)
	lw	$11,40($7)
	lhu	$10,0($5)
	subu	$6,$6,$3
	addiu	$8,$2,8
	addu	$4,$4,$8
	addu	$6,$6,$11
	sll	$4,$4,2
	seh	$11,$10
	subu	$4,$0,$4
	sll	$6,$6,2
	seh	$2,$4
	slt	$2,$2,$11
	beq	$2,$0,.L470
	seh	$6,$6

	move	$4,$10
.L470:
	lw	$10,36($7)
	li	$7,7			# 0x7
	seh	$2,$4
	subu	$7,$7,$9
	addu	$7,$7,$10
	sll	$7,$7,2
	seh	$9,$7
	slt	$2,$9,$2
	beq	$2,$0,.L475
	addiu	$2,$3,-1

	move	$4,$7
.L475:
	lhu	$7,2($5)
	addu	$2,$2,$8
	sh	$4,0($5)
	sll	$2,$2,2
	subu	$2,$0,$2
	seh	$4,$7
	seh	$3,$2
	slt	$3,$3,$4
	beq	$3,$0,.L476
	seh	$3,$2

	move	$2,$7
	seh	$3,$2
.L476:
	slt	$3,$6,$3
	beq	$3,$0,.L473
	nop

	move	$2,$6
.L473:
	jr	$31
	sh	$2,2($5)

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData6clipMvERNS_2MVE
	.size	_ZNK4x2656CUData6clipMvERNS_2MVE, .-_ZNK4x2656CUData6clipMvERNS_2MVE
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData12getDirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData12getDirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj
	.type	_ZNK4x2656CUData12getDirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj, @function
_ZNK4x2656CUData12getDirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dext	$3,$7,0,32
	ld	$9,56($4)
	dext	$8,$8,0,32
	dlsa	$4,$3,$6,1
	dlsa	$2,$3,$3,4
	lh	$4,16($4)
	daddu	$8,$2,$8
	dlsa	$8,$8,$9,2
	bltz	$4,.L478
	lw	$8,2304($8)

	daddu	$2,$2,$4
	dlsa	$2,$2,$9,2
	lw	$2,2304($2)
	beq	$2,$8,.L484
	dlsa	$3,$3,$6,2

.L478:
	sltu	$3,$7,1
	daddiu	$2,$3,8
	dlsa	$2,$2,$6,1
	lh	$2,0($2)
	bltz	$2,.L481
	dlsa	$4,$3,$2,4

	daddu	$4,$4,$3
	dlsa	$4,$4,$9,2
	lw	$4,2304($4)
	beq	$4,$8,.L479
	move	$2,$0

	jr	$31
	nop

	.align	3
.L481:
	jr	$31
	move	$2,$0

	.align	3
.L479:
	dlsa	$3,$3,$6,2
	.align	3
.L484:
	li	$2,1			# 0x1
	lw	$3,0($3)
	jr	$31
	sw	$3,0($5)

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData12getDirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj
	.size	_ZNK4x2656CUData12getDirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj, .-_ZNK4x2656CUData12getDirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData15getCollocatedMVEiiPNS_16InterNeighbourMVE
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData15getCollocatedMVEiiPNS_16InterNeighbourMVE
	.type	_ZNK4x2656CUData15getCollocatedMVEiiPNS_16InterNeighbourMVE, @function
_ZNK4x2656CUData15getCollocatedMVEiiPNS_16InterNeighbourMVE:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$8,56($4)
	lw	$3,2264($8)
	bne	$3,$0,.L486
	move	$2,$0

	lbu	$2,2450($8)
	xori	$2,$2,0x1
.L486:
	lwu	$11,2292($8)
	dlsa	$3,$2,$2,4
	dext	$10,$5,0,32
	dsll	$9,$10,5
	dsubu	$9,$9,$10
	daddu	$3,$3,$11
	dlsa	$3,$3,$8,3
	ld	$3,16($3)
	ld	$3,0($3)
	ld	$3,88($3)
	dlsa	$3,$9,$3,4
	ld	$8,192($3)
	daddu	$9,$8,$6
	lbu	$9,0($9)
	bne	$9,$0,.L499
	move	$2,$0

.L501:
	jr	$31
	nop

	.align	3
.L499:
	andi	$6,$6,0xf0
	li	$9,2			# 0x2
	daddu	$8,$8,$6
	lbu	$8,0($8)
	beq	$8,$9,.L501
	dsll	$14,$6,2

	move	$8,$7
	daddiu	$10,$7,16
	move	$12,$0
	li	$13,1			# 0x1
.L490:
	sw	$5,8($8)
	ld	$9,56($4)
	lbu	$11,2448($9)
	bne	$11,$0,.L488
	move	$2,$12

	lbu	$2,2450($9)
.L488:
	dlsa	$9,$2,$3,3
	ld	$9,168($9)
	daddu	$9,$9,$6
	lb	$11,0($9)
	bgez	$11,.L500
	sll	$9,$2,4

	xori	$2,$2,0x1
	dlsa	$9,$2,$3,3
	ld	$9,168($9)
	daddu	$9,$9,$6
	lb	$11,0($9)
	sll	$9,$2,4
.L500:
	daddiu	$10,$10,2
	dlsa	$2,$2,$3,3
	or	$9,$9,$11
	sh	$9,-2($10)
	daddiu	$8,$8,4
	ld	$2,376($2)
	daddu	$2,$2,$14
	lw	$2,0($2)
	bne	$12,$13,.L495
	sw	$2,-4($8)

	lw	$2,16($7)
	addiu	$2,$2,1
	jr	$31
	sltu	$2,$0,$2

	.align	3
.L495:
	b	.L490
	li	$12,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData15getCollocatedMVEiiPNS_16InterNeighbourMVE
	.size	_ZNK4x2656CUData15getCollocatedMVEiiPNS_16InterNeighbourMVE, .-_ZNK4x2656CUData15getCollocatedMVEiiPNS_16InterNeighbourMVE
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData16scaleMvByPOCDistERKNS_2MVEiiii
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData16scaleMvByPOCDistERKNS_2MVEiiii
	.type	_ZNK4x2656CUData16scaleMvByPOCDistERKNS_2MVEiiii, @function
_ZNK4x2656CUData16scaleMvByPOCDistERKNS_2MVEiiii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	subu	$8,$8,$9
	subu	$6,$6,$7
	beq	$8,$6,.L525
	nop

	slt	$2,$6,-128
	beq	$2,$0,.L526
	slt	$2,$6,127

	slt	$2,$8,-128
	bne	$2,$0,.L527
	li	$6,-128			# 0xffffffffffffff80

.L511:
	slt	$2,$8,127
	bne	$2,$0,.L528
	li	$7,129			# 0x81

	gsmultu	$6,$6,$7
.L530:
	addiu	$6,$6,32
	sra	$6,$6,6
	slt	$2,$6,-4096
	beq	$2,$0,.L531
	slt	$3,$6,4095

.L516:
	li	$6,-4096			# 0xfffffffffffff000
.L507:
	lh	$3,0($5)
	li	$7,-32768			# 0xffffffffffff8000
	gsmultu	$3,$3,$6
	addiu	$4,$3,127
	srl	$3,$3,31
	addu	$3,$4,$3
	sra	$3,$3,8
	slt	$4,$3,-32768
	bne	$4,$0,.L508
	lh	$2,2($5)

	slt	$7,$3,32767
	li	$4,32767			# 0x7fff
	seh	$3,$3
	movn	$4,$3,$7
	move	$7,$4
.L508:
	gsmultu	$6,$2,$6
	addiu	$2,$6,127
	srl	$6,$6,31
	addu	$6,$2,$6
	sra	$6,$6,8
	slt	$2,$6,-32768
	bne	$2,$0,.L509
	li	$4,-32768			# 0xffffffffffff8000

	slt	$4,$6,32767
	li	$2,32767			# 0x7fff
	seh	$6,$6
	movn	$2,$6,$4
	move	$4,$2
.L509:
	move	$2,$0
	ins	$2,$7,0,16
	jr	$31
	ins	$2,$4,16,16

	.align	3
.L526:
	beq	$2,$0,.L513
	slt	$2,$8,-128

	beq	$2,$0,.L511
	li	$7,-128			# 0xffffffffffffff80

	gsmultu	$6,$6,$7
	addiu	$6,$6,32
	sra	$6,$6,6
	slt	$2,$6,-4096
	bne	$2,$0,.L516
	slt	$3,$6,4095

.L531:
	li	$2,4095			# 0xfff
	b	.L507
	movz	$6,$2,$3

	.align	3
.L525:
	jr	$31
	lw	$2,0($5)

	.align	3
.L528:
	srl	$2,$8,31
	addu	$2,$2,$8
	sra	$3,$2,31
	sra	$2,$2,1
	xor	$2,$3,$2
	subu	$2,$2,$3
	addiu	$2,$2,16384
	gsdiv	$7,$2,$8
	teq	$8,$0,7
	b	.L530
	gsmultu	$6,$6,$7

	.align	3
.L513:
	beq	$2,$0,.L511
	li	$6,127			# 0x7f

.L527:
	subu	$6,$0,$6
	sll	$6,$6,7
	b	.L507
	sra	$6,$6,6

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData16scaleMvByPOCDistERKNS_2MVEiiii
	.size	_ZNK4x2656CUData16scaleMvByPOCDistERKNS_2MVEiiii, .-_ZNK4x2656CUData16scaleMvByPOCDistERKNS_2MVEiiii
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData14getIndirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData14getIndirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj
	.type	_ZNK4x2656CUData14getIndirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj, @function
_ZNK4x2656CUData14getIndirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj:
	.frame	$sp,32,$31		# vars= 16, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	dext	$2,$7,0,32
	dlsa	$3,$2,$6,1
	lh	$3,16($3)
	bgez	$3,.L535
	sltu	$7,$7,1

	daddiu	$3,$7,8
	dlsa	$3,$3,$6,1
	lh	$3,0($3)
	bgez	$3,.L533
	move	$9,$0

	jr	$31
	move	$2,$9

	.align	3
.L535:
	move	$7,$2
.L533:
	daddiu	$sp,$sp,-32
	ld	$9,56($4)
	move	$11,$5
	sd	$28,16($sp)
	dlsa	$5,$7,$7,4
	dlsa	$2,$2,$2,4
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2656CUData14getIndirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj)))
	dext	$8,$8,0,32
	sd	$31,24($sp)
	daddu	$8,$2,$8
	daddu	$28,$28,$25
	daddu	$3,$5,$3
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2656CUData14getIndirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj)))
	dlsa	$2,$7,$6,2
	dlsa	$3,$3,$9,2
	ld	$25,%got_disp(_ZNK4x2656CUData16scaleMvByPOCDistERKNS_2MVEiiii)($28)
	dlsa	$6,$8,$9,2
	lw	$8,2280($9)
	move	$5,$sp
	lw	$7,2304($6)
	lw	$9,2304($3)
	lw	$2,0($2)
	move	$6,$8
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData16scaleMvByPOCDistERKNS_2MVEiiii
1:	jalr	$25
	sw	$2,0($sp)

	li	$9,1			# 0x1
	ld	$31,24($sp)
	sw	$2,0($11)
	move	$2,$9
	ld	$28,16($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData14getIndirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj
	.size	_ZNK4x2656CUData14getIndirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj, .-_ZNK4x2656CUData14getIndirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData6getPMVEPNS_16InterNeighbourMVEjjPNS_2MVES4_
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData6getPMVEPNS_16InterNeighbourMVEjjPNS_2MVES4_
	.type	_ZNK4x2656CUData6getPMVEPNS_16InterNeighbourMVEjjPNS_2MVES4_, @function
_ZNK4x2656CUData6getPMVEPNS_16InterNeighbourMVEjjPNS_2MVES4_:
	.frame	$sp,192,$31		# vars= 96, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-192
	dext	$24,$6,0,32
	sd	$fp,176($sp)
	move	$12,$5
	dext	$fp,$7,0,32
	sd	$28,168($sp)
	dlsa	$3,$24,$24,4
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2656CUData6getPMVEPNS_16InterNeighbourMVEjjPNS_2MVES4_)))
	sd	$21,144($sp)
	daddu	$28,$28,$25
	move	$13,$6
	sd	$19,128($sp)
	dlsa	$19,$24,$5,1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2656CUData6getPMVEPNS_16InterNeighbourMVEjjPNS_2MVES4_)))
	sd	$18,120($sp)
	move	$21,$8
	move	$18,$9
	sd	$17,112($sp)
	move	$17,$7
	sd	$16,104($sp)
	move	$16,$4
	sd	$31,184($sp)
	sd	$23,160($sp)
	sd	$22,152($sp)
	sd	$20,136($sp)
	ld	$2,56($4)
	daddu	$4,$3,$fp
	lh	$5,76($19)
	dlsa	$4,$4,$2,2
	bltz	$5,.L541
	lw	$4,2304($4)

	daddu	$3,$3,$5
	dlsa	$3,$3,$2,2
	lw	$3,2304($3)
	beq	$3,$4,.L576
	move	$5,$24

.L541:
	sltu	$5,$13,1
	daddiu	$3,$5,8
	dlsa	$3,$3,$12,1
	lh	$3,60($3)
	bltz	$3,.L577
	dlsa	$3,$5,$3,4

	daddu	$3,$3,$5
	dlsa	$3,$3,$2,2
	lw	$3,2304($3)
	beq	$3,$4,.L542
	move	$23,$0

.L543:
	lh	$5,16($19)
	bltz	$5,.L544
	sb	$23,59($sp)

	dlsa	$3,$24,$24,4
	daddu	$3,$3,$5
	dlsa	$3,$3,$2,2
	lw	$3,2304($3)
	beq	$3,$4,.L579
	dext	$5,$13,0,32

.L544:
	sltu	$5,$13,1
	daddiu	$3,$5,8
	dlsa	$3,$3,$12,1
	lh	$3,0($3)
	bltz	$3,.L580
	dlsa	$3,$5,$3,4

	daddu	$3,$3,$5
	dlsa	$3,$3,$2,2
	lw	$3,2304($3)
	beq	$3,$4,.L545
	move	$14,$0

.L546:
	lh	$5,56($19)
	bltz	$5,.L547
	sb	$14,56($sp)

	dlsa	$3,$24,$24,4
	daddu	$3,$3,$5
	dlsa	$3,$3,$2,2
	lw	$3,2304($3)
	beq	$3,$4,.L582
	dext	$5,$13,0,32

.L547:
	sltu	$5,$13,1
	daddiu	$3,$5,8
	dlsa	$3,$3,$12,1
	lh	$3,40($3)
	bltz	$3,.L583
	dlsa	$3,$5,$3,4

	daddu	$3,$3,$5
	dlsa	$3,$3,$2,2
	lw	$3,2304($3)
	beq	$3,$4,.L548
	move	$22,$0

.L549:
	lh	$5,36($19)
	bltz	$5,.L550
	sb	$22,58($sp)

	dlsa	$3,$24,$24,4
	daddu	$3,$3,$5
	dlsa	$3,$3,$2,2
	lw	$3,2304($3)
	beq	$3,$4,.L585
	dext	$6,$13,0,32

.L550:
	sltu	$6,$13,1
	daddiu	$3,$6,8
	dlsa	$3,$3,$12,1
	lh	$3,20($3)
	bltz	$3,.L586
	dlsa	$5,$6,$3,4

	daddu	$5,$5,$6
	dlsa	$5,$5,$2,2
	lw	$5,2304($5)
	beq	$5,$4,.L551
	move	$3,$0

.L552:
	lh	$6,96($19)
	bltz	$6,.L553
	sb	$3,57($sp)

	dlsa	$5,$24,$24,4
	daddu	$5,$5,$6
	dlsa	$5,$5,$2,2
	lw	$5,2304($5)
	beq	$5,$4,.L588
	dext	$6,$13,0,32

.L553:
	sltu	$6,$13,1
	daddiu	$5,$6,8
	dlsa	$5,$5,$12,1
	lh	$5,80($5)
	bltz	$5,.L589
	dlsa	$5,$6,$5,4

	daddu	$5,$5,$6
	dlsa	$2,$5,$2,2
	lw	$2,2304($2)
	beq	$2,$4,.L554
	move	$10,$0

.L555:
	ld	$20,%got_disp(_ZNK4x2656CUData14getIndirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj)($28)
	move	$7,$13
	daddiu	$6,$12,60
	move	$8,$17
	move	$4,$16
	sd	$3,88($sp)
	daddiu	$5,$sp,12
	sb	$10,60($sp)
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14getIndirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj
1:	jalr	$25
	sd	$10,80($sp)

	move	$8,$17
	move	$7,$13
	move	$6,$12
	sb	$2,51($sp)
	move	$4,$16
	move	$5,$sp
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14getIndirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj
1:	jalr	$25
	sd	$2,72($sp)

	move	$8,$17
	move	$7,$13
	daddiu	$6,$12,40
	sb	$2,48($sp)
	move	$4,$16
	daddiu	$5,$sp,8
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14getIndirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj
1:	jalr	$25
	move	$15,$2

	move	$8,$17
	move	$7,$13
	daddiu	$6,$12,20
	sb	$2,50($sp)
	move	$4,$16
	daddiu	$5,$sp,4
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14getIndirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj
1:	jalr	$25
	sd	$2,64($sp)

	move	$8,$17
	move	$7,$13
	daddiu	$6,$12,80
	sb	$2,49($sp)
	daddiu	$5,$sp,16
	move	$4,$16
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14getIndirectPMVERNS_2MVEPNS_16InterNeighbourMVEjj
1:	jalr	$25
	move	$17,$2

	ld	$9,64($sp)
	sb	$2,52($sp)
	ld	$11,72($sp)
	ld	$10,80($sp)
	beq	$23,$0,.L556
	ld	$3,88($sp)

	lw	$5,36($sp)
	li	$4,1			# 0x1
	sw	$5,0($21)
.L557:
	beq	$22,$0,.L560
	lw	$5,32($sp)

	dlsa	$3,$4,$21,2
	addiu	$11,$4,1
	sw	$5,0($3)
.L561:
	beq	$4,$0,.L618
	nop

.L563:
	daddiu	$2,$sp,57
.L626:
	daddiu	$5,$sp,49
	move	$4,$sp
	daddiu	$3,$sp,24
	daddiu	$7,$sp,61
	beq	$14,$0,.L566
	move	$13,$0

	lw	$6,0($3)
.L624:
	beq	$6,$0,.L566
	dlsa	$8,$13,$18,2

	addiu	$13,$13,1
	sw	$6,0($8)
.L566:
	beq	$15,$0,.L567
	nop

	lw	$6,0($4)
	beq	$6,$0,.L567
	dlsa	$8,$13,$18,2

	addiu	$13,$13,1
	sw	$6,0($8)
.L567:
	daddiu	$4,$4,4
	beq	$7,$2,.L568
	daddiu	$3,$3,4

	lbu	$14,0($2)
	daddiu	$5,$5,1
	daddiu	$2,$2,1
	beq	$14,$0,.L566
	lbu	$15,-1($5)

	b	.L624
	lw	$6,0($3)

	.align	3
.L568:
	li	$2,2			# 0x2
	bne	$11,$2,.L570
	nop

	lw	$11,0($21)
	lw	$3,4($21)
	xor	$11,$11,$3
	sltu	$11,$11,1
	subu	$11,$2,$11
.L570:
	ld	$2,56($16)
	ld	$3,0($2)
	lbu	$3,10107($3)
	beq	$3,$0,.L571
	slt	$3,$11,2

	bne	$3,$0,.L620
	li	$4,-1			# 0xffffffffffffffff

.L572:
	ld	$31,184($sp)
.L625:
	move	$2,$13
	ld	$fp,176($sp)
	ld	$28,168($sp)
	ld	$23,160($sp)
	ld	$22,152($sp)
	ld	$21,144($sp)
	ld	$20,136($sp)
	ld	$19,128($sp)
	ld	$18,120($sp)
	ld	$17,112($sp)
	ld	$16,104($sp)
	jr	$31
	daddiu	$sp,$sp,192

	.align	3
.L620:
	lh	$5,116($19)
	beq	$5,$4,.L573
	move	$3,$5

	lw	$7,2264($2)
	dlsa	$6,$24,$12,2
	move	$4,$0
	bne	$7,$0,.L574
	lw	$6,108($6)

	lbu	$4,2450($2)
	xori	$4,$4,0x1
.L574:
	lwu	$9,2292($2)
	dlsa	$4,$4,$4,4
	dsra	$3,$3,4
	ld	$7,48($16)
	andi	$5,$5,0xf
	dlsa	$3,$3,$3,4
	dext	$6,$6,0,32
	daddu	$3,$3,$5
	daddu	$4,$4,$9
	dsll	$8,$6,5
	dlsa	$4,$4,$2,3
	ld	$10,16($7)
	dsubu	$8,$8,$6
	ld	$7,16($4)
	dlsa	$4,$24,$24,4
	dlsa	$14,$11,$21,2
	daddu	$fp,$4,$fp
	lw	$6,2280($2)
	dlsa	$18,$13,$18,2
	dlsa	$2,$fp,$2,2
	lw	$4,780($10)
	addiu	$11,$11,1
	ld	$5,0($7)
	addiu	$13,$13,1
	lw	$7,2304($2)
	ld	$2,88($5)
	dlsa	$2,$8,$2,4
	ld	$2,56($2)
	dlsa	$3,$3,$2,2
	lw	$8,2280($2)
	beq	$4,$0,.L575
	lw	$9,2304($3)

	lw	$3,364($10)
	li	$2,1			# 0x1
	beq	$3,$2,.L621
	nop

.L575:
	ld	$25,%got_disp(_ZNK4x2656CUData16scaleMvByPOCDistERKNS_2MVEiiii)($28)
.L627:
	daddiu	$5,$12,100
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData16scaleMvByPOCDistERKNS_2MVEiiii
1:	jalr	$25
	dlsa	$5,$24,$5,2

	sw	$2,0($14)
	sw	$2,0($18)
	.align	3
.L571:
	slt	$2,$11,2
	beq	$2,$0,.L625
	ld	$31,184($sp)

.L573:
	dlsa	$21,$11,$21,2
	li	$2,1			# 0x1
	beq	$11,$2,.L572
	sw	$0,0($21)

	ld	$31,184($sp)
	move	$2,$13
	sw	$0,4($21)
	ld	$fp,176($sp)
	ld	$28,168($sp)
	ld	$23,160($sp)
	ld	$22,152($sp)
	ld	$21,144($sp)
	ld	$20,136($sp)
	ld	$19,128($sp)
	ld	$18,120($sp)
	ld	$17,112($sp)
	ld	$16,104($sp)
	jr	$31
	daddiu	$sp,$sp,192

	.align	3
.L560:
	beq	$3,$0,.L562
	lw	$5,28($sp)

	dlsa	$3,$4,$21,2
	addiu	$11,$4,1
	bne	$4,$0,.L563
	sw	$5,0($3)

.L618:
	bne	$9,$0,.L622
	nop

	beq	$17,$0,.L565
	lw	$3,4($sp)

	dlsa	$2,$11,$21,2
	addiu	$11,$11,1
	b	.L563
	sw	$3,0($2)

	.align	3
.L556:
	beq	$14,$0,.L558
	lw	$5,24($sp)

	li	$4,1			# 0x1
	b	.L557
	sw	$5,0($21)

	.align	3
.L558:
	bne	$11,$0,.L623
	lw	$5,12($sp)

	beq	$15,$0,.L557
	move	$4,$0

	lw	$5,0($sp)
	li	$4,1			# 0x1
	b	.L557
	sw	$5,0($21)

	.align	3
.L562:
	beq	$10,$0,.L561
	move	$11,$4

	lw	$5,40($sp)
	dlsa	$3,$4,$21,2
	addiu	$11,$4,1
	b	.L561
	sw	$5,0($3)

	.align	3
.L585:
.L551:
	dlsa	$6,$6,$12,2
	li	$3,1			# 0x1
	lw	$5,20($6)
	b	.L552
	sw	$5,28($sp)

	.align	3
.L579:
.L545:
	dlsa	$5,$5,$12,2
	li	$14,1			# 0x1
	lw	$3,0($5)
	b	.L546
	sw	$3,24($sp)

	.align	3
.L589:
	b	.L555
	move	$10,$0

	.align	3
.L583:
	b	.L549
	move	$22,$0

	.align	3
.L577:
	b	.L543
	move	$23,$0

	.align	3
.L586:
	b	.L552
	move	$3,$0

	.align	3
.L580:
	b	.L546
	move	$14,$0

	.align	3
.L622:
	lw	$3,8($sp)
	dlsa	$2,$11,$21,2
	addiu	$11,$11,1
	b	.L563
	sw	$3,0($2)

	.align	3
.L623:
	li	$4,1			# 0x1
	b	.L557
	sw	$5,0($21)

	.align	3
.L565:
	beq	$2,$0,.L626
	daddiu	$2,$sp,57

	lw	$3,16($sp)
	dlsa	$2,$11,$21,2
	addiu	$11,$11,1
	b	.L563
	sw	$3,0($2)

.L582:
.L548:
	dlsa	$5,$5,$12,2
	li	$22,1			# 0x1
	lw	$3,40($5)
	b	.L549
	sw	$3,32($sp)

.L576:
.L542:
	dlsa	$5,$5,$12,2
	li	$23,1			# 0x1
	lw	$3,60($5)
	b	.L543
	sw	$3,36($sp)

.L588:
.L554:
	dlsa	$6,$6,$12,2
	li	$10,1			# 0x1
	lw	$2,80($6)
	b	.L555
	sw	$2,40($sp)

.L621:
	ld	$2,144($16)
	lbu	$2,0($2)
	sltu	$2,$2,4
	beq	$2,$0,.L627
	ld	$25,%got_disp(_ZNK4x2656CUData16scaleMvByPOCDistERKNS_2MVEiiii)($28)

	li	$2,1073741824			# 0x40000000
	addiu	$2,$2,16384
	sw	$2,0($14)
	b	.L571
	sw	$2,0($18)

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData6getPMVEPNS_16InterNeighbourMVEjjPNS_2MVES4_
	.size	_ZNK4x2656CUData6getPMVEPNS_16InterNeighbourMVEjjPNS_2MVES4_, .-_ZNK4x2656CUData6getPMVEPNS_16InterNeighbourMVEjjPNS_2MVES4_
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData9getColMVPERNS_2MVERiiii
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData9getColMVPERNS_2MVERiiii
	.type	_ZNK4x2656CUData9getColMVPERNS_2MVERiiii, @function
_ZNK4x2656CUData9getColMVPERNS_2MVERiiii:
	.frame	$sp,32,$31		# vars= 16, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$3,56($4)
	lw	$10,2264($3)
	bne	$10,$0,.L629
	move	$2,$0

	lbu	$2,2450($3)
	xori	$2,$2,0x1
.L629:
	lwu	$12,2292($3)
	dlsa	$2,$2,$2,4
	dext	$8,$8,0,32
	dsll	$10,$8,5
	dsubu	$8,$10,$8
	daddu	$2,$2,$12
	dlsa	$2,$2,$3,3
	ld	$2,16($2)
	ld	$2,0($2)
	ld	$2,88($2)
	dlsa	$8,$8,$2,4
	ld	$2,192($8)
	daddu	$10,$2,$9
	lbu	$10,0($10)
	beq	$10,$0,.L641
	move	$11,$0

	andi	$10,$9,0xf0
	li	$9,2			# 0x2
	daddu	$2,$2,$10
	lbu	$2,0($2)
	beq	$2,$9,.L641
	nop

	lbu	$9,2448($3)
	beq	$9,$0,.L643
	move	$2,$7

.L631:
	dlsa	$9,$2,$8,3
	ld	$9,168($9)
	daddu	$9,$9,$10
	lb	$9,0($9)
	bgez	$9,.L632
	nop

	sltu	$2,$2,1
	daddiu	$9,$2,20
	dlsa	$9,$9,$8,3
	ld	$9,8($9)
	daddu	$9,$9,$10
	lb	$9,0($9)
	bltz	$9,.L637
	move	$11,$0

.L632:
	daddiu	$sp,$sp,-32
	lw	$13,0($6)
	dlsa	$7,$7,$7,4
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2656CUData9getColMVPERNS_2MVERiiii)))
	move	$12,$5
	sd	$31,24($sp)
	daddu	$28,$28,$25
	move	$5,$sp
	ld	$11,56($8)
	dlsa	$8,$2,$8,3
	dlsa	$2,$2,$2,4
	ld	$6,376($8)
	daddu	$2,$2,$9
	daddu	$7,$7,$13
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2656CUData9getColMVPERNS_2MVERiiii)))
	dlsa	$7,$7,$3,2
	dlsa	$2,$2,$11,2
	lw	$8,2280($11)
	dlsa	$10,$10,$6,2
	lw	$9,2304($2)
	ld	$25,%got_disp(_ZNK4x2656CUData16scaleMvByPOCDistERKNS_2MVEiiii)($28)
	lw	$2,0($10)
	lw	$6,2280($3)
	lw	$7,2304($7)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData16scaleMvByPOCDistERKNS_2MVEiiii
1:	jalr	$25
	sw	$2,0($sp)

	ld	$31,24($sp)
	li	$11,1			# 0x1
	sw	$2,0($12)
	move	$2,$11
	ld	$28,16($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L637:
.L641:
	jr	$31
	move	$2,$11

	.align	3
.L643:
	b	.L631
	lbu	$2,2450($3)

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData9getColMVPERNS_2MVERiiii
	.size	_ZNK4x2656CUData9getColMVPERNS_2MVERiiii, .-_ZNK4x2656CUData9getColMVPERNS_2MVERiiii
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData15deriveCenterIdxEj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData15deriveCenterIdxEj
	.type	_ZNK4x2656CUData15deriveCenterIdxEj, @function
_ZNK4x2656CUData15deriveCenterIdxEj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,200($4)
	lui	$11,%hi(%neg(%gp_rel(_ZNK4x2656CUData15deriveCenterIdxEj)))
	dext	$7,$5,0,32
	daddu	$11,$11,$25
	ld	$3,144($4)
	daddiu	$11,$11,%lo(%neg(%gp_rel(_ZNK4x2656CUData15deriveCenterIdxEj)))
	lw	$10,112($4)
	lbu	$5,0($2)
	ld	$6,%got_page(_ZN4x265L13partAddrTableE)($11)
	lw	$9,100($4)
	move	$2,$5
	ld	$8,%got_page(_ZN4x265L9partTableE)($11)
	dlsa	$5,$2,$7,2
	daddiu	$4,$6,%got_ofst(_ZN4x265L13partAddrTableE)
	lbu	$7,0($3)
	dlsa	$4,$5,$4,2
	lw	$3,0($4)
	daddiu	$2,$8,%got_ofst(_ZN4x265L9partTableE)
	dlsa	$5,$5,$2,3
	lw	$2,0($5)
	gsmultu	$3,$3,$10
	ld	$5,%got_disp(_ZN4x26515g_zscanToRasterE)($11)
	sra	$4,$2,4
	andi	$2,$2,0xf
	sll	$4,$4,$7
	sll	$2,$2,$7
	sra	$4,$4,5
	sra	$2,$2,5
	srl	$3,$3,4
	addu	$3,$3,$9
	dext	$3,$3,0,32
	dlsa	$3,$3,$5,2
	lw	$3,0($3)
	addu	$3,$4,$3
	lsa	$2,$2,$3,4
	ld	$3,%got_disp(_ZN4x26515g_rasterToZscanE)($11)
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	jr	$31
	lw	$2,0($2)

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData15deriveCenterIdxEj
	.size	_ZNK4x2656CUData15deriveCenterIdxEj, .-_ZNK4x2656CUData15deriveCenterIdxEj
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData14getNeighbourMVEjjPNS_16InterNeighbourMVE
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData14getNeighbourMVEjjPNS_16InterNeighbourMVE
	.type	_ZNK4x2656CUData14getNeighbourMVEjjPNS_16InterNeighbourMVE, @function
_ZNK4x2656CUData14getNeighbourMVEjjPNS_16InterNeighbourMVE:
	.frame	$sp,80,$31		# vars= 32, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	li	$2,-1			# 0xffffffffffffffff
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2656CUData14getNeighbourMVEjjPNS_16InterNeighbourMVE)))
	move	$24,$4
	daddu	$28,$28,$25
	sd	$31,72($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2656CUData14getNeighbourMVEjjPNS_16InterNeighbourMVE)))
	sd	$17,48($sp)
	move	$17,$5
	ld	$25,%got_disp(_ZNK4x2656CUData19deriveLeftBottomIdxEj)($28)
	ld	$14,%got_disp(_ZNK4x2656CUData19getInterNeighbourMVEPNS_16InterNeighbourMVEjNS_7MVP_DIRE)($28)
	sd	$16,40($sp)
	move	$16,$7
	sd	$18,56($sp)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData19deriveLeftBottomIdxEj
1:	jalr	$25
	sw	$2,116($7)

	move	$5,$17
	ld	$25,%got_disp(_ZNK4x2656CUData21deriveLeftRightTopIdxEjRjS1_)($28)
	move	$4,$24
	move	$7,$sp
	daddiu	$6,$sp,4
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData21deriveLeftRightTopIdxEjRjS1_
1:	jalr	$25
	sd	$2,16($sp)

	ld	$2,16($sp)
	li	$7,3			# 0x3
	move	$4,$24
	move	$25,$14
	daddiu	$5,$16,60
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData19getInterNeighbourMVEPNS_16InterNeighbourMVEjNS_7MVP_DIRE
1:	jalr	$25
	move	$6,$2

	ld	$2,16($sp)
	move	$5,$16
	move	$4,$24
	move	$25,$14
	move	$7,$0
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData19getInterNeighbourMVEPNS_16InterNeighbourMVEjNS_7MVP_DIRE
1:	jalr	$25
	move	$6,$2

	lw	$6,0($sp)
	li	$7,2			# 0x2
	move	$4,$24
	move	$25,$14
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData19getInterNeighbourMVEPNS_16InterNeighbourMVEjNS_7MVP_DIRE
1:	jalr	$25
	daddiu	$5,$16,40

	lw	$6,0($sp)
	li	$7,1			# 0x1
	move	$4,$24
	move	$25,$14
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData19getInterNeighbourMVEPNS_16InterNeighbourMVEjNS_7MVP_DIRE
1:	jalr	$25
	daddiu	$5,$16,20

	lw	$6,4($sp)
	li	$7,4			# 0x4
	daddiu	$5,$16,80
	move	$25,$14
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData19getInterNeighbourMVEPNS_16InterNeighbourMVEjNS_7MVP_DIRE
1:	jalr	$25
	move	$4,$24

	ld	$2,56($24)
	ld	$11,0($2)
	lbu	$2,10107($11)
	beq	$2,$0,.L646
	ld	$25,%got_disp(_ZNK4x2656CUData20deriveRightBottomIdxEj)($28)

	move	$5,$17
	move	$4,$24
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData20deriveRightBottomIdxEj
1:	jalr	$25
	daddiu	$16,$16,100

	lw	$7,96($24)
	dext	$2,$2,0,32
	ld	$3,48($24)
	lw	$6,36($11)
	dext	$5,$7,0,32
	ld	$3,88($3)
	dsll	$4,$5,5
	dsubu	$4,$4,$5
	ld	$5,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	dlsa	$4,$4,$3,4
	daddu	$5,$5,$2
	lw	$3,104($4)
	lbu	$5,0($5)
	addiu	$3,$3,4
	addu	$3,$3,$5
	sltu	$3,$3,$6
	beq	$3,$0,.L664
	move	$12,$7

	lw	$3,108($4)
	ld	$4,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	lw	$5,40($11)
	addiu	$3,$3,4
	daddu	$4,$4,$2
	lbu	$4,0($4)
	addu	$3,$3,$4
	sltu	$3,$3,$5
	beq	$3,$0,.L664
	ld	$3,%got_disp(_ZN4x26515g_zscanToRasterE)($28)

	lw	$6,40($24)
	dlsa	$2,$2,$3,2
	lw	$2,0($2)
	addiu	$4,$6,-1
	move	$3,$2
	andi	$5,$2,0xf
	dsra	$3,$3,4
	slt	$5,$5,$4
	bne	$5,$0,.L663
	slt	$3,$3,$4

	beq	$3,$0,.L650
	ld	$18,%got_disp(_ZNK4x2656CUData15getCollocatedMVEiiPNS_16InterNeighbourMVE)($28)

	subu	$2,$2,$6
	addiu	$12,$7,1
.L660:
	ld	$3,%got_disp(_ZN4x26515g_rasterToZscanE)($28)
	addiu	$2,$2,17
	dext	$2,$2,0,32
	dlsa	$2,$2,$3,2
	bgez	$12,.L655
	lw	$6,0($2)

	move	$12,$7
	.align	3
.L664:
	ld	$18,%got_disp(_ZNK4x2656CUData15getCollocatedMVEiiPNS_16InterNeighbourMVE)($28)
.L650:
	ld	$25,%got_disp(_ZNK4x2656CUData15deriveCenterIdxEj)($28)
	move	$4,$24
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData15deriveCenterIdxEj
1:	jalr	$25
	move	$5,$17

	move	$7,$16
	move	$5,$12
	move	$6,$2
	move	$25,$18
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData15getCollocatedMVEiiPNS_16InterNeighbourMVE
1:	jalr	$25
	move	$4,$24

.L646:
	ld	$31,72($sp)
.L665:
	ld	$28,64($sp)
	ld	$18,56($sp)
	ld	$17,48($sp)
	ld	$16,40($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.align	3
.L663:
	bne	$3,$0,.L660
	move	$12,$7

	b	.L650
	ld	$18,%got_disp(_ZNK4x2656CUData15getCollocatedMVEiiPNS_16InterNeighbourMVE)($28)

	.align	3
.L655:
	ld	$18,%got_disp(_ZNK4x2656CUData15getCollocatedMVEiiPNS_16InterNeighbourMVE)($28)
	move	$7,$16
	move	$5,$12
	move	$25,$18
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData15getCollocatedMVEiiPNS_16InterNeighbourMVE
1:	jalr	$25
	move	$4,$24

	bne	$2,$0,.L665
	ld	$31,72($sp)

	b	.L650
	lw	$12,96($24)

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData14getNeighbourMVEjjPNS_16InterNeighbourMVE
	.size	_ZNK4x2656CUData14getNeighbourMVEjjPNS_16InterNeighbourMVE, .-_ZNK4x2656CUData14getNeighbourMVEjjPNS_16InterNeighbourMVE
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData23getInterMergeCandidatesEjjPA2_NS_7MVFieldEPh
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData23getInterMergeCandidatesEjjPA2_NS_7MVFieldEPh
	.type	_ZNK4x2656CUData23getInterMergeCandidatesEjjPA2_NS_7MVFieldEPh, @function
_ZNK4x2656CUData23getInterMergeCandidatesEjjPA2_NS_7MVFieldEPh:
	.frame	$sp,224,$31		# vars= 128, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-224
	move	$10,$5
	sd	$fp,208($sp)
	move	$fp,$4
	move	$24,$7
	sd	$28,200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2656CUData23getInterMergeCandidatesEjjPA2_NS_7MVFieldEPh)))
	move	$14,$8
	sd	$20,168($sp)
	daddu	$28,$28,$25
	move	$20,$6
	sd	$19,160($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2656CUData23getInterMergeCandidatesEjjPA2_NS_7MVFieldEPh)))
	sd	$18,152($sp)
	sd	$31,216($sp)
	sd	$23,192($sp)
	sd	$22,184($sp)
	sd	$21,176($sp)
	sd	$17,144($sp)
	sd	$16,136($sp)
	ld	$2,56($4)
	lw	$4,100($4)
	lw	$18,2440($2)
	addu	$3,$4,$5
	lw	$19,2264($2)
	beq	$18,$0,.L667
	sd	$3,48($sp)

	addiu	$4,$18,-1
	daddiu	$5,$7,16
	dext	$4,$4,0,32
	move	$2,$7
	dlsa	$5,$4,$5,4
	li	$4,-1			# 0xffffffffffffffff
	.align	3
.L668:
	sw	$0,0($2)
	daddiu	$2,$2,16
	sw	$0,-8($2)
	sw	$4,-12($2)
	bne	$5,$2,.L668
	sw	$4,-4($2)

.L667:
	ld	$11,200($fp)
	dext	$8,$20,0,32
	move	$5,$20
	ld	$6,144($fp)
	move	$4,$fp
	ld	$7,%got_page(_ZN4x265L9partTableE)($28)
	lbu	$2,0($11)
	lbu	$16,0($6)
	ld	$25,%got_disp(_ZNK4x2656CUData19deriveLeftBottomIdxEj)($28)
	move	$6,$2
	dlsa	$2,$6,$8,2
	daddiu	$6,$7,%got_ofst(_ZN4x265L9partTableE)
	dlsa	$2,$2,$6,3
	move	$7,$16
	lw	$6,0($2)
	lw	$16,4($2)
	sra	$2,$6,4
	andi	$6,$6,0xf
	sll	$2,$2,$7
	sll	$6,$6,$7
	sra	$17,$16,4
	andi	$16,$16,0xf
	sll	$12,$16,$7
	sra	$21,$2,2
	sra	$2,$6,2
	sll	$17,$17,$7
	sd	$12,64($sp)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData19deriveLeftBottomIdxEj
1:	jalr	$25
	sd	$2,88($sp)

	daddiu	$5,$sp,16
	dext	$10,$10,0,32
	ld	$25,%got_disp(_ZNK4x2656CUData9getPULeftERjj)($28)
	move	$6,$2
	daddu	$11,$11,$10
	sd	$2,72($sp)
	move	$4,$fp
	lbu	$11,0($11)
	dsra	$2,$12,2
	dsra	$22,$17,2
	sw	$0,16($sp)
	sd	$2,56($sp)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData9getPULeftERjj
1:	jalr	$25
	move	$12,$11

	beq	$2,$0,.L720
	move	$23,$2

	addiu	$2,$22,-1
	sra	$4,$17,4
	sra	$2,$2,2
	beq	$4,$2,.L798
	ld	$3,56($sp)

	li	$2,1			# 0x1
.L831:
	beq	$20,$2,.L799
	lw	$5,16($sp)

	ld	$2,192($23)
	dext	$8,$5,0,32
	daddu	$2,$2,$8
	lbu	$2,0($2)
	andi	$2,$2,0x1
	bne	$2,$0,.L800
	nop

.L720:
	move	$15,$0
.L820:
	sd	$0,80($sp)
.L669:
	ld	$25,%got_disp(_ZNK4x2656CUData21deriveLeftRightTopIdxEjRjS1_)($28)
	move	$5,$20
	move	$4,$fp
	daddiu	$7,$sp,20
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData21deriveLeftRightTopIdxEjRjS1_
1:	jalr	$25
	daddiu	$6,$sp,24

	lw	$6,20($sp)
	daddiu	$5,$sp,12
	ld	$25,%got_disp(_ZNK4x2656CUData10getPUAboveERjj)($28)
	move	$4,$fp
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getPUAboveERjj
1:	jalr	$25
	sw	$0,12($sp)

	beq	$2,$0,.L725
	move	$16,$2

	addu	$2,$21,$22
	sra	$4,$17,4
	addiu	$2,$2,-1
	sra	$2,$2,2
	beq	$4,$2,.L801
	ld	$2,56($sp)

	li	$2,1			# 0x1
.L832:
	beq	$20,$2,.L802
	lw	$8,12($sp)

	ld	$2,192($16)
	dext	$9,$8,0,32
	daddu	$2,$2,$9
	lbu	$2,0($2)
	andi	$2,$2,0x1
	bne	$2,$0,.L803
	ld	$2,80($sp)

.L725:
	sd	$0,96($sp)
.L674:
	lw	$6,20($sp)
	daddiu	$5,$sp,8
	move	$4,$fp
	ld	$25,%got_disp(_ZNK4x2656CUData15getPUAboveRightERjj)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData15getPUAboveRightERjj
1:	jalr	$25
	sw	$0,8($sp)

	beq	$2,$0,.L679
	move	$8,$2

	addu	$2,$21,$22
	sra	$4,$17,4
	sra	$2,$2,2
	beq	$2,$4,.L804
	lw	$9,8($sp)

	ld	$2,192($8)
	dext	$10,$9,0,32
	daddu	$2,$2,$10
	lbu	$2,0($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L828
	ld	$6,72($sp)

	ld	$2,96($sp)
.L817:
	beq	$2,$0,.L681
	lw	$5,12($sp)

	move	$7,$9
	move	$6,$8
	ld	$25,%got_disp(_ZNK4x2656CUData14hasEqualMotionEjRKS0_j)($28)
	move	$4,$16
	sd	$10,120($sp)
	sd	$9,112($sp)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14hasEqualMotionEjRKS0_j
1:	jalr	$25
	sd	$8,104($sp)

	ld	$8,104($sp)
	ld	$9,112($sp)
	beq	$2,$0,.L681
	ld	$10,120($sp)

	.align	3
.L679:
	ld	$6,72($sp)
	.align	3
.L828:
	daddiu	$5,$sp,4
	move	$4,$fp
	ld	$25,%got_disp(_ZNK4x2656CUData14getPUBelowLeftERjj)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14getPUBelowLeftERjj
1:	jalr	$25
	sw	$0,4($sp)

	beq	$2,$0,.L683
	move	$21,$2

	addiu	$2,$22,-1
	sra	$4,$17,4
	sra	$2,$2,2
	beq	$2,$4,.L805
	ld	$2,88($sp)

	lw	$8,4($sp)
.L833:
	ld	$2,192($21)
	dext	$9,$8,0,32
	daddu	$2,$2,$9
	lbu	$2,0($2)
	andi	$2,$2,0x1
	bne	$2,$0,.L806
	ld	$2,80($sp)

.L683:
	ld	$6,48($sp)
.L829:
	move	$5,$sp
	move	$4,$fp
	ld	$25,%got_disp(_ZNK4x2656CUData14getPUAboveLeftERjj)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14getPUAboveLeftERjj
1:	jalr	$25
	sw	$0,0($sp)

	beq	$2,$0,.L688
	move	$21,$2

	addiu	$22,$22,-1
	sra	$17,$17,4
	sra	$22,$22,2
	beq	$22,$17,.L807
	ld	$2,56($sp)

.L690:
	lw	$22,0($sp)
	ld	$2,192($21)
	dext	$17,$22,0,32
	daddu	$2,$2,$17
	lbu	$2,0($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L688
	ld	$2,80($sp)

	bne	$2,$0,.L808
	lw	$5,16($sp)

	ld	$2,96($sp)
.L827:
	beq	$2,$0,.L692
	lw	$5,12($sp)

	move	$7,$22
	move	$6,$21
	ld	$25,%got_disp(_ZNK4x2656CUData14hasEqualMotionEjRKS0_j)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14hasEqualMotionEjRKS0_j
1:	jalr	$25
	move	$4,$16

	bne	$2,$0,.L688
	nop

.L692:
	ld	$4,232($21)
	dext	$2,$15,0,32
	move	$6,$0
	ld	$25,%got_page(_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8)($28)
	dlsa	$8,$2,$24,4
	move	$5,$22
	daddu	$2,$14,$2
	move	$7,$8
	daddu	$17,$4,$17
	move	$4,$21
	lbu	$9,0($17)
	daddiu	$25,$25,%got_ofst(_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8
1:	jalr	$25
	sb	$9,0($2)

	bne	$19,$0,.L693
	lw	$5,0($sp)

	daddiu	$7,$8,8
	li	$6,1			# 0x1
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8
1:	jalr	$25
	move	$4,$21

.L693:
	addiu	$15,$15,1
	bne	$18,$15,.L688
	ld	$31,216($sp)

	b	.L835
	move	$2,$18

	.align	3
.L803:
	.align	3
.L819:
	beq	$2,$0,.L677
	lw	$5,16($sp)

	move	$7,$8
	move	$6,$16
	ld	$25,%got_disp(_ZNK4x2656CUData14hasEqualMotionEjRKS0_j)($28)
	move	$4,$23
	sd	$9,112($sp)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14hasEqualMotionEjRKS0_j
1:	jalr	$25
	sd	$8,104($sp)

	ld	$8,104($sp)
	sd	$2,96($sp)
	bne	$2,$0,.L674
	ld	$9,112($sp)

.L677:
	ld	$4,232($16)
	dext	$2,$15,0,32
	move	$5,$8
	ld	$25,%got_page(_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8)($28)
	dlsa	$10,$2,$24,4
	move	$6,$0
	daddu	$2,$14,$2
	move	$7,$10
	daddu	$9,$4,$9
	move	$4,$16
	lbu	$8,0($9)
	daddiu	$25,$25,%got_ofst(_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8
1:	jalr	$25
	sb	$8,0($2)

	beq	$19,$0,.L809
	lw	$5,12($sp)

	addiu	$2,$15,1
.L825:
	beq	$18,$2,.L728
	move	$15,$2

	li	$2,1			# 0x1
	b	.L674
	sd	$2,96($sp)

	.align	3
.L806:
	beq	$2,$0,.L686
	lw	$5,16($sp)

	move	$7,$8
	move	$6,$21
	ld	$25,%got_disp(_ZNK4x2656CUData14hasEqualMotionEjRKS0_j)($28)
	move	$4,$23
	sd	$9,88($sp)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14hasEqualMotionEjRKS0_j
1:	jalr	$25
	sd	$8,72($sp)

	ld	$8,72($sp)
	bne	$2,$0,.L683
	ld	$9,88($sp)

.L686:
	ld	$4,232($21)
	dext	$2,$15,0,32
	move	$5,$8
	ld	$25,%got_page(_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8)($28)
	dlsa	$10,$2,$24,4
	move	$6,$0
	daddu	$2,$14,$2
	move	$7,$10
	daddu	$9,$4,$9
	move	$4,$21
	lbu	$8,0($9)
	daddiu	$25,$25,%got_ofst(_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8
1:	jalr	$25
	sb	$8,0($2)

	beq	$19,$0,.L810
	lw	$5,4($sp)

	addiu	$2,$15,1
.L826:
	beq	$18,$2,.L728
	move	$15,$2

	li	$2,4			# 0x4
	bne	$2,$15,.L829
	ld	$6,48($sp)

.L688:
	ld	$9,56($fp)
.L821:
	ld	$11,0($9)
	lbu	$2,10107($11)
	beq	$2,$0,.L694
	ld	$25,%got_disp(_ZNK4x2656CUData20deriveRightBottomIdxEj)($28)

	move	$5,$20
	move	$4,$fp
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData20deriveRightBottomIdxEj
1:	jalr	$25
	li	$16,-1			# 0xffffffffffffffff

	lw	$7,96($fp)
	ld	$4,48($fp)
	dext	$2,$2,0,32
	lw	$8,36($11)
	dext	$6,$7,0,32
	ld	$4,88($4)
	dsll	$5,$6,5
	dsubu	$5,$5,$6
	ld	$6,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	dlsa	$5,$5,$4,4
	daddu	$6,$6,$2
	lw	$4,104($5)
	lbu	$6,0($6)
	addiu	$4,$4,4
	addu	$4,$4,$6
	sltu	$4,$4,$8
	beq	$4,$0,.L695
	nop

	lw	$4,108($5)
	ld	$5,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	lw	$6,40($11)
	addiu	$4,$4,4
	daddu	$5,$5,$2
	lbu	$5,0($5)
	addu	$4,$4,$5
	sltu	$4,$4,$6
	beq	$4,$0,.L695
	ld	$4,%got_disp(_ZN4x26515g_zscanToRasterE)($28)

	lw	$9,40($fp)
	dlsa	$2,$2,$4,2
	lw	$2,0($2)
	addiu	$8,$9,-1
	move	$4,$2
	andi	$6,$2,0xf
	dsra	$4,$4,4
	slt	$6,$6,$8
	beq	$6,$0,.L696
	slt	$4,$4,$8

	beq	$4,$0,.L697
	nop

	addiu	$2,$2,17
	move	$16,$7
.L796:
	ld	$4,%got_disp(_ZN4x26515g_rasterToZscanE)($28)
	dext	$2,$2,0,32
	dlsa	$2,$2,$4,2
	lw	$2,0($2)
	sd	$2,48($sp)
.L695:
	ld	$2,%got_disp(_ZNK4x2656CUData9getColMVPERNS_2MVERiiii)($28)
	sltu	$3,$19,1
	move	$22,$0
	ld	$4,%got_disp(_ZNK4x2656CUData15deriveCenterIdxEj)($28)
	daddiu	$3,$3,1
	move	$21,$0
	daddiu	$23,$sp,32
	sd	$3,64($sp)
	sd	$2,56($sp)
	dext	$2,$15,0,32
	dlsa	$17,$2,$24,4
	sd	$2,80($sp)
	sd	$4,72($sp)
	sw	$0,0($sp)
.L703:
	ld	$2,48($sp)
	move	$7,$22
	move	$8,$16
	move	$5,$23
	move	$4,$fp
	move	$6,$sp
	bltz	$16,.L702
	move	$9,$2

	ld	$25,56($sp)
	jalr	$25
	nop

	beq	$2,$0,.L830
	ld	$25,72($sp)

	li	$3,1			# 0x1
.L823:
	sll	$2,$3,$22
	or	$21,$2,$21
	lw	$2,32($sp)
	sw	$2,0($17)
	lw	$2,0($sp)
	sw	$2,4($17)
	ld	$2,48($fp)
	ld	$2,16($2)
	lw	$4,780($2)
	beq	$4,$0,.L701
	nop

	lw	$2,364($2)
	beq	$2,$3,.L811
	nop

	.align	3
.L701:
	ld	$2,64($sp)
	.align	3
.L834:
	addiu	$22,$22,1
	bne	$2,$22,.L703
	daddiu	$17,$17,8

	beq	$21,$0,.L704
	ld	$2,80($sp)

	addiu	$15,$15,1
	daddu	$22,$14,$2
	beq	$18,$15,.L735
	sb	$21,0($22)

.L704:
	ld	$9,56($fp)
.L694:
	bne	$19,$0,.L705
	addiu	$10,$15,-1

	gsmultu	$10,$10,$15
	beq	$10,$0,.L706
	nop

	li	$7,11993088			# 0xb70000
	li	$5,15532032			# 0xed0000
	move	$8,$0
	daddiu	$7,$7,13857
	ori	$5,$5,0xc984
	b	.L709
	li	$11,3			# 0x3

	.align	3
.L708:
	lw	$4,0($4)
	addiu	$15,$15,1
	sw	$25,4($13)
	sw	$4,0($13)
	lw	$2,8($2)
	sw	$6,12($13)
	sw	$2,8($13)
	beq	$18,$15,.L735
	sb	$11,0($12)

	ld	$9,56($fp)
.L707:
	beq	$10,$8,.L706
	nop

.L709:
	andi	$4,$5,0x3
	andi	$2,$7,0x3
	daddu	$6,$14,$4
	daddu	$12,$14,$2
	lbu	$6,0($6)
	srl	$5,$5,2
	srl	$7,$7,2
	andi	$6,$6,0x1
	beq	$6,$0,.L707
	addiu	$8,$8,1

	lbu	$6,0($12)
	dext	$12,$15,0,32
	dlsa	$4,$4,$24,4
	dlsa	$13,$12,$24,4
	dlsa	$2,$2,$24,4
	andi	$6,$6,0x2
	beq	$6,$0,.L707
	daddu	$12,$14,$12

	lw	$25,4($4)
	lw	$6,12($2)
	dlsa	$17,$25,$9,2
	dlsa	$16,$6,$9,2
	lw	$17,2304($17)
	lw	$16,2372($16)
	bne	$17,$16,.L708
	nop

	lw	$17,8($2)
	lw	$16,0($4)
	bne	$17,$16,.L708
	nop

	bne	$10,$8,.L709
	nop

	.align	3
.L706:
	lw	$2,2300($9)
	lw	$3,2296($9)
	slt	$5,$2,$3
	movz	$2,$3,$5
	b	.L713
	move	$5,$2

	.align	3
.L804:
	ld	$2,56($sp)
	ld	$3,64($sp)
	addiu	$2,$2,-1
	sra	$4,$3,4
	sra	$2,$2,2
	beq	$2,$4,.L679
	dext	$10,$9,0,32

	ld	$2,192($8)
	daddu	$2,$2,$10
	lbu	$2,0($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L828
	ld	$6,72($sp)

	b	.L817
	ld	$2,96($sp)

	.align	3
.L799:
	li	$2,2			# 0x2
	beq	$12,$2,.L720
	addiu	$2,$11,-6

	sltu	$2,$2,2
	bne	$2,$0,.L720
	lw	$5,16($sp)

	ld	$2,192($23)
	dext	$8,$5,0,32
	daddu	$2,$2,$8
	lbu	$2,0($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L820
	move	$15,$0

	b	.L818
	ld	$2,232($23)

	.align	3
.L802:
	beq	$12,$2,.L725
	addiu	$11,$11,-4

	sltu	$11,$11,2
	bne	$11,$0,.L725
	lw	$8,12($sp)

	ld	$2,192($16)
	dext	$9,$8,0,32
	daddu	$2,$2,$9
	lbu	$2,0($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L725
	ld	$2,80($sp)

	b	.L819
	nop

	.align	3
.L681:
	ld	$4,232($8)
	dext	$2,$15,0,32
	move	$5,$9
	ld	$25,%got_page(_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8)($28)
	dlsa	$11,$2,$24,4
	move	$6,$0
	daddu	$2,$14,$2
	move	$7,$11
	sd	$8,104($sp)
	daddu	$10,$4,$10
	move	$4,$8
	lbu	$9,0($10)
	daddiu	$25,$25,%got_ofst(_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8
1:	jalr	$25
	sb	$9,0($2)

	beq	$19,$0,.L813
	ld	$8,104($sp)

	addiu	$2,$15,1
.L822:
	bne	$18,$2,.L679
	move	$15,$2

.L728:
	move	$18,$2
.L735:
	ld	$31,216($sp)
	move	$2,$18
.L835:
	ld	$fp,208($sp)
	ld	$28,200($sp)
	ld	$23,192($sp)
	ld	$22,184($sp)
	ld	$21,176($sp)
	ld	$20,168($sp)
	ld	$19,160($sp)
	ld	$18,152($sp)
	ld	$17,144($sp)
	ld	$16,136($sp)
	jr	$31
	daddiu	$sp,$sp,224

	.align	3
.L798:
	ld	$2,88($sp)
	addu	$2,$2,$3
	ld	$3,64($sp)
	addiu	$2,$2,-1
	sra	$2,$2,2
	sra	$4,$3,4
	bne	$4,$2,.L831
	li	$2,1			# 0x1

	b	.L820
	move	$15,$0

	.align	3
.L801:
	ld	$3,64($sp)
	addiu	$2,$2,-1
	sra	$4,$3,4
	sra	$2,$2,2
	bne	$4,$2,.L832
	li	$2,1			# 0x1

	b	.L674
	sd	$0,96($sp)

	.align	3
.L805:
	ld	$3,56($sp)
	addu	$9,$2,$3
	ld	$2,64($sp)
	sra	$9,$9,2
	sra	$2,$2,4
	bne	$2,$9,.L833
	lw	$8,4($sp)

	ld	$6,48($sp)
	move	$4,$fp
	move	$5,$sp
	ld	$25,%got_disp(_ZNK4x2656CUData14getPUAboveLeftERjj)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14getPUAboveLeftERjj
1:	jalr	$25
	sw	$0,0($sp)

	ld	$3,56($sp)
	move	$21,$2
	beq	$2,$0,.L688
	addiu	$4,$3,-1

.L714:
	sra	$4,$4,2
	bne	$4,$9,.L690
	nop

	b	.L821
	ld	$9,56($fp)

	.align	3
.L800:
	ld	$2,232($23)
	.align	3
.L818:
	move	$7,$24
	move	$6,$0
	ld	$25,%got_page(_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8)($28)
	move	$4,$23
	daddu	$8,$2,$8
	lbu	$2,0($8)
	daddiu	$25,$25,%got_ofst(_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8
1:	jalr	$25
	sb	$2,0($14)

	beq	$19,$0,.L814
	lw	$5,16($sp)

	li	$2,1			# 0x1
.L824:
	beq	$18,$2,.L735
	li	$2,1			# 0x1

	li	$15,1			# 0x1
	b	.L669
	sd	$2,80($sp)

	.align	3
.L813:
	lw	$5,8($sp)
	daddiu	$7,$11,8
	li	$6,1			# 0x1
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8
1:	jalr	$25
	move	$4,$8

	b	.L822
	addiu	$2,$15,1

	.align	3
.L702:
	ld	$25,72($sp)
	.align	3
.L830:
	move	$5,$20
	jalr	$25
	move	$4,$fp

	lw	$8,96($fp)
	move	$7,$22
	ld	$25,56($sp)
	move	$6,$sp
	move	$9,$2
	move	$5,$23
	jalr	$25
	move	$4,$fp

	beq	$2,$0,.L834
	ld	$2,64($sp)

	b	.L823
	li	$3,1			# 0x1

	.align	3
.L705:
	lw	$5,2296($9)
.L713:
	sltu	$2,$15,$18
	beq	$2,$0,.L733
	addiu	$4,$18,-1

	dext	$2,$15,0,32
	subu	$4,$4,$15
	daddiu	$3,$24,16
	dext	$4,$4,0,32
	addiu	$5,$5,-1
	daddu	$4,$4,$2
	daddu	$14,$14,$2
	dlsa	$24,$2,$24,4
	dlsa	$4,$4,$3,4
	move	$2,$0
	move	$3,$0
	li	$7,1			# 0x1
	li	$8,3			# 0x3
	b	.L710
	move	$6,$5

	.align	3
.L815:
	addiu	$2,$2,1
	addiu	$3,$3,1
.L712:
	daddiu	$24,$24,16
	beq	$4,$24,.L735
	daddiu	$14,$14,1

.L710:
	sb	$7,0($14)
	sw	$2,4($24)
	bne	$19,$0,.L711
	sw	$0,0($24)

	sb	$8,0($14)
	sw	$2,12($24)
	sw	$0,8($24)
.L711:
	bne	$3,$6,.L815
	nop

	move	$3,$5
	b	.L712
	move	$2,$0

	.align	3
.L733:
	b	.L735
	move	$18,$15

	.align	3
.L811:
	ld	$2,144($fp)
	lbu	$2,0($2)
	sltu	$2,$2,4
	beq	$2,$0,.L834
	ld	$2,64($sp)

	li	$2,16384			# 0x4000
	sh	$2,0($17)
	b	.L701
	sh	$2,2($17)

	.align	3
.L814:
	daddiu	$7,$24,8
	li	$6,1			# 0x1
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8
1:	jalr	$25
	move	$4,$23

	b	.L824
	li	$2,1			# 0x1

	.align	3
.L809:
	daddiu	$7,$10,8
	li	$6,1			# 0x1
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8
1:	jalr	$25
	move	$4,$16

	b	.L825
	addiu	$2,$15,1

.L810:
	daddiu	$7,$10,8
	li	$6,1			# 0x1
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData10getMvFieldEPKS0_jiRNS_7MVFieldE.part.8
1:	jalr	$25
	move	$4,$21

	b	.L826
	addiu	$2,$15,1

.L696:
	beq	$4,$0,.L695
	sd	$0,48($sp)

	subu	$2,$2,$9
	addiu	$16,$7,1
	b	.L796
	addiu	$2,$2,17

.L808:
	move	$7,$22
	move	$6,$21
	ld	$25,%got_disp(_ZNK4x2656CUData14hasEqualMotionEjRKS0_j)($28)
	.reloc	1f,R_MIPS_JALR,_ZNK4x2656CUData14hasEqualMotionEjRKS0_j
1:	jalr	$25
	move	$4,$23

	bne	$2,$0,.L688
	ld	$2,96($sp)

	b	.L827
	nop

.L697:
	addiu	$2,$2,1
	b	.L796
	and	$2,$2,$8

.L807:
	addiu	$4,$2,-1
	ld	$2,64($sp)
	b	.L714
	dsra	$9,$2,4

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData23getInterMergeCandidatesEjjPA2_NS_7MVFieldEPh
	.size	_ZNK4x2656CUData23getInterMergeCandidatesEjjPA2_NS_7MVFieldEPh, .-_ZNK4x2656CUData23getInterMergeCandidatesEjjPA2_NS_7MVFieldEPh
	.align	2
	.align	3
	.globl	_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb
	.type	_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb, @function
_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,192($4)
	dext	$10,$6,0,32
	lui	$14,%hi(%neg(%gp_rel(_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb)))
	daddu	$14,$14,$25
	li	$3,2			# 0x2
	daddiu	$14,$14,%lo(%neg(%gp_rel(_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb)))
	daddu	$2,$2,$10
	lbu	$2,0($2)
	beq	$2,$3,.L859
	addiu	$9,$7,-2

.L837:
	ld	$3,%got_disp(_ZN4x26513g_scanOrderCGE)($14)
	move	$2,$0
	dext	$9,$9,0,32
	ld	$4,%got_disp(_ZN4x26511g_scanOrderE)($14)
	dlsa	$2,$2,$9,2
	li	$6,2			# 0x2
	dsll	$2,$2,3
	move	$10,$0
	sw	$0,16($5)
	daddu	$4,$4,$2
	daddu	$2,$3,$2
	ld	$2,0($2)
	ld	$3,0($4)
	sd	$2,8($5)
	beq	$7,$6,.L860
	sd	$3,0($5)

.L846:
	li	$2,3			# 0x3
	beq	$7,$2,.L861
	li	$3,21			# 0x15

	li	$2,12			# 0xc
	movz	$3,$2,$8
	jr	$31
	sw	$3,20($5)

	.align	3
.L861:
	beq	$10,$0,.L849
	li	$2,9			# 0x9

	li	$3,15			# 0xf
	movn	$2,$3,$8
.L849:
	jr	$31
	sw	$2,20($5)

	.align	3
.L859:
	lw	$3,120($4)
	li	$11,3			# 0x3
	bne	$8,$0,.L862
	subu	$12,$11,$3

	ld	$3,312($4)
	li	$13,36			# 0x24
	daddu	$3,$3,$10
	lbu	$3,0($3)
	beq	$3,$13,.L863
	nop

.L841:
	sltu	$2,$12,$7
	bne	$2,$0,.L837
	nop

.L839:
	addiu	$2,$3,-22
	sltu	$2,$2,9
.L866:
	bne	$2,$0,.L851
	li	$10,1			# 0x1

	addiu	$3,$3,-6
	li	$2,2			# 0x2
	sltu	$3,$3,9
	movz	$2,$0,$3
	move	$10,$2
	sw	$10,16($5)
.L864:
	ld	$3,%got_disp(_ZN4x26513g_scanOrderCGE)($14)
	dext	$9,$9,0,32
	li	$6,2			# 0x2
	ld	$4,%got_disp(_ZN4x26511g_scanOrderE)($14)
	dlsa	$2,$2,$9,2
	dsll	$2,$2,3
	daddu	$4,$4,$2
	daddu	$2,$3,$2
	ld	$2,0($2)
	ld	$3,0($4)
	sd	$2,8($5)
	bne	$7,$6,.L846
	sd	$3,0($5)

.L860:
	jr	$31
	sw	$0,20($5)

	.align	3
.L862:
	ld	$3,152($4)
	sltu	$2,$12,$7
	daddu	$10,$3,$10
	beq	$2,$0,.L839
	lbu	$3,0($10)

	bne	$7,$11,.L837
	addiu	$2,$3,-22

	b	.L866
	sltu	$2,$2,9

	.align	3
.L851:
	li	$2,1			# 0x1
	b	.L864
	sw	$10,16($5)

	.align	3
.L863:
	lw	$13,116($4)
	beq	$13,$11,.L842
	ld	$3,152($4)

	andi	$6,$6,0xfc
	daddu	$6,$3,$6
	bne	$13,$2,.L841
	lbu	$3,0($6)

	ld	$2,%got_disp(_ZN4x26533g_chroma422IntraAngleMappingTableE)($14)
	daddu	$3,$2,$3
	b	.L841
	lbu	$3,0($3)

	.align	3
.L842:
	daddu	$10,$3,$10
	b	.L841
	lbu	$3,0($10)

	.set	macro
	.set	reorder
	.end	_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb
	.size	_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb, .-_ZNK4x2656CUData28getTUEntropyCodingParametersERNS_25TUEntropyCodingParametersEjjb
	.align	2
	.align	3
	.globl	_ZN4x2656CUData12calcCTUGeomsEjjjjPNS_6CUGeomE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656CUData12calcCTUGeomsEjjjjPNS_6CUGeomE
	.type	_ZN4x2656CUData12calcCTUGeomsEjjjjPNS_6CUGeomE, @function
_ZN4x2656CUData12calcCTUGeomsEjjjjPNS_6CUGeomE:
	.frame	$sp,144,$31		# vars= 64, regs= 10/0, args= 0, gp= 0
	.mask	0x50ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-144
	dext	$6,$6,0,32
	sd	$28,128($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656CUData12calcCTUGeomsEjjjjPNS_6CUGeomE)))
	dext	$7,$7,0,32
	daddu	$28,$28,$25
	sd	$5,24($sp)
	li	$5,1			# 0x1
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656CUData12calcCTUGeomsEjjjjPNS_6CUGeomE)))
	sd	$fp,136($sp)
	ld	$2,%got_disp(_ZN4x26510g_log2SizeE)($28)
	sd	$23,120($sp)
	sd	$22,112($sp)
	daddu	$6,$2,$6
	daddu	$2,$2,$7
	sd	$21,104($sp)
	lbu	$24,0($6)
	lbu	$3,0($2)
	sd	$20,96($sp)
	addiu	$2,$24,-2
	sd	$19,88($sp)
	sll	$2,$2,1
	move	$6,$3
	sd	$18,80($sp)
	sll	$2,$5,$2
	sltu	$3,$24,$3
	sd	$17,72($sp)
	sd	$16,64($sp)
	sd	$6,32($sp)
	bne	$3,$0,.L867
	sd	$2,40($sp)

	ld	$fp,%got_disp(_ZN4x26514g_depthScanIdxE)($28)
	move	$23,$8
	move	$16,$0
	move	$20,$0
	sw	$6,8($sp)
	daddiu	$2,$fp,32
	sd	$2,48($sp)
	.align	3
.L873:
	ld	$2,32($sp)
	li	$3,1			# 0x1
	sll	$19,$3,$16
	sll	$15,$3,$24
	sll	$18,$19,$16
	xor	$2,$24,$2
	addu	$18,$18,$20
	beq	$19,$0,.L869
	sltu	$2,$2,1

	addiu	$3,$19,-1
	subu	$2,$0,$2
	ld	$22,%got_disp(_ZN4x26514g_depthScanIdxE)($28)
	dext	$3,$3,0,32
	andi	$25,$2,0x8
	dsll	$2,$3,5
	ld	$3,40($sp)
	sll	$17,$16,1
	move	$21,$0
	srl	$17,$3,$17
	ld	$3,48($sp)
	daddu	$2,$2,$3
	sd	$2,16($sp)
	.align	3
.L872:
	ld	$3,24($sp)
	addu	$2,$15,$21
	dext	$13,$21,3,29
	move	$12,$22
	move	$10,$0
	move	$11,$0
	dsll	$13,$13,3
	sltu	$2,$3,$2
	sltu	$14,$21,$3
	subu	$2,$0,$2
	andi	$2,$2,0x14
	move	$3,$2
	b	.L871
	sd	$3,0($sp)

	.align	3
.L886:
	addu	$5,$15,$10
	sltu	$8,$4,$5
	beq	$24,$2,.L876
	li	$5,2			# 0x2

	ld	$6,0($sp)
	li	$2,20			# 0x14
	movn	$6,$2,$8
	move	$8,$6
	.align	3
.L870:
	dext	$6,$10,3,29
	dext	$2,$3,0,32
	daddu	$6,$13,$6
	dsll	$9,$2,3
	dlsa	$6,$6,$fp,2
	dsubu	$2,$9,$2
	lw	$6,0($6)
	or	$5,$5,$8
	dlsa	$2,$2,$23,2
	subu	$7,$7,$3
	or	$5,$5,$25
	sw	$24,0($2)
	addiu	$11,$11,1
	sw	$7,4($2)
	daddiu	$12,$12,4
	sll	$6,$6,2
	sw	$17,12($2)
	addu	$10,$15,$10
	sw	$6,8($2)
	sw	$16,20($2)
	sw	$3,24($2)
	beq	$19,$11,.L885
	sw	$5,16($2)

.L871:
	lw	$3,0($12)
	sltu	$2,$10,$4
	move	$8,$0
	move	$5,$0
	lsa	$7,$3,$18,2
	beq	$2,$0,.L870
	addu	$3,$3,$20

	bne	$14,$0,.L886
	lw	$2,8($sp)

	b	.L870
	nop

	.align	3
.L885:
	ld	$2,16($sp)
	daddiu	$22,$22,32
	bne	$2,$22,.L872
	addu	$21,$15,$21

.L869:
	ld	$2,32($sp)
	addiu	$24,$24,-1
	addiu	$16,$16,1
	sltu	$2,$24,$2
	beq	$2,$0,.L873
	move	$20,$18

.L867:
	ld	$fp,136($sp)
	ld	$28,128($sp)
	ld	$23,120($sp)
	ld	$22,112($sp)
	ld	$21,104($sp)
	ld	$20,96($sp)
	ld	$19,88($sp)
	ld	$18,80($sp)
	ld	$17,72($sp)
	ld	$16,64($sp)
	jr	$31
	daddiu	$sp,$sp,144

	.align	3
.L876:
	b	.L870
	move	$8,$0

	.set	macro
	.set	reorder
	.end	_ZN4x2656CUData12calcCTUGeomsEjjjjPNS_6CUGeomE
	.size	_ZN4x2656CUData12calcCTUGeomsEjjjjPNS_6CUGeomE, .-_ZN4x2656CUData12calcCTUGeomsEjjjjPNS_6CUGeomE
	.section	.text._ZN4x2656CUData8setAllPUINS_2MVEEEvPT_RKS3_ii,"axG",@progbits,_ZN4x2656CUData8setAllPUINS_2MVEEEvPT_RKS3_ii,comdat
	.align	2
	.align	3
	.weak	_ZN4x2656CUData8setAllPUINS_2MVEEEvPT_RKS3_ii
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656CUData8setAllPUINS_2MVEEEvPT_RKS3_ii
	.type	_ZN4x2656CUData8setAllPUINS_2MVEEEvPT_RKS3_ii, @function
_ZN4x2656CUData8setAllPUINS_2MVEEEvPT_RKS3_ii:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,200($4)
	dlsa	$5,$7,$5,2
	daddu	$7,$2,$7
	lbu	$3,0($7)
	sltu	$3,$3,8
	beq	$3,$0,.L931
	lw	$9,112($4)

	lui	$12,%hi(%neg(%gp_rel(_ZN4x2656CUData8setAllPUINS_2MVEEEvPT_RKS3_ii)))
	daddiu	$sp,$sp,-16
	daddu	$12,$12,$25
	sd	$28,8($sp)
	daddiu	$12,$12,%lo(%neg(%gp_rel(_ZN4x2656CUData8setAllPUINS_2MVEEEvPT_RKS3_ii)))
	lbu	$3,0($7)
	ld	$4,%got_page(.L890)($12)
	daddiu	$4,$4,%got_ofst(.L890)
	dlsa	$3,$3,$4,3
	ld	$3,0($3)
	daddu	$3,$3,$12
	jr	$3
	move	$2,$9

	.section	.rodata._ZN4x2656CUData8setAllPUINS_2MVEEEvPT_RKS3_ii,"aG",@progbits,_ZN4x2656CUData8setAllPUINS_2MVEEEvPT_RKS3_ii,comdat
	.align	3
	.align	2
.L890:
	.gpdword	.L889
	.gpdword	.L891
	.gpdword	.L892
	.gpdword	.L887
	.gpdword	.L893
	.gpdword	.L894
	.gpdword	.L895
	.gpdword	.L896
	.section	.text._ZN4x2656CUData8setAllPUINS_2MVEEEvPT_RKS3_ii,"axG",@progbits,_ZN4x2656CUData8setAllPUINS_2MVEEEvPT_RKS3_ii,comdat
	.align	3
.L893:
	dsra	$7,$2,2
	dsra	$2,$2,3
	bne	$8,$0,.L902
	dsll	$3,$7,2

	blez	$2,.L887
	addiu	$7,$2,-1

	daddu	$2,$5,$3
	dext	$7,$7,0,32
	dlsa	$3,$7,$5,2
	daddiu	$3,$3,4
	.align	3
.L903:
	lw	$4,0($6)
	daddiu	$5,$5,4
	daddiu	$2,$2,4
	sw	$4,-4($5)
	lw	$4,0($6)
	bne	$3,$5,.L903
	sw	$4,-4($2)

.L887:
	ld	$28,8($sp)
.L930:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L896:
	dsra	$11,$2,2
	sra	$3,$2,3
	dsll	$9,$11,1
	move	$10,$3
	dsll	$4,$9,2
	bne	$8,$0,.L917
	dsra	$7,$2,4

	addu	$8,$7,$11
	blez	$8,.L918
	nop

	addiu	$8,$8,-1
	daddiu	$9,$5,4
	dext	$10,$8,0,32
	daddu	$4,$5,$4
	move	$8,$5
	dlsa	$9,$10,$9,2
	.align	3
.L919:
	lw	$10,0($6)
	daddiu	$8,$8,4
	daddiu	$4,$4,4
	sw	$10,-4($8)
	lw	$10,0($6)
	bne	$8,$9,.L919
	sw	$10,-4($4)

.L918:
	daddu	$2,$2,$3
	daddu	$3,$11,$3
	dsubu	$2,$2,$11
	dsll	$3,$3,2
	blez	$7,.L887
	dsll	$2,$2,2

	daddiu	$8,$3,4
	addiu	$4,$7,-1
	dext	$4,$4,0,32
	daddu	$7,$5,$8
	daddu	$3,$5,$3
	dlsa	$4,$4,$7,2
	daddu	$5,$5,$2
	.align	3
.L920:
	lw	$2,0($6)
	daddiu	$3,$3,4
	daddiu	$5,$5,4
	sw	$2,-4($3)
	lw	$2,0($6)
	bne	$3,$4,.L920
	sw	$2,-4($5)

	b	.L930
	ld	$28,8($sp)

	.align	3
.L889:
	blez	$9,.L930
	ld	$28,8($sp)

	addiu	$2,$9,-1
	dext	$2,$2,0,32
	dlsa	$2,$2,$5,2
	daddiu	$2,$2,4
	.align	3
.L899:
	lw	$3,0($6)
	daddiu	$5,$5,4
	bne	$2,$5,.L899
	sw	$3,-4($5)

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L891:
	dsra	$2,$2,1
	blez	$2,.L930
	ld	$28,8($sp)

	addiu	$2,$2,-1
	dext	$2,$2,0,32
	dlsa	$2,$2,$5,2
	daddiu	$2,$2,4
	.align	3
.L900:
	lw	$3,0($6)
	daddiu	$5,$5,4
	bne	$2,$5,.L900
	sw	$3,-4($5)

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L892:
	dsra	$2,$2,2
	blez	$2,.L930
	ld	$28,8($sp)

	addiu	$3,$2,-1
	dlsa	$2,$2,$5,3
	dext	$3,$3,0,32
	dlsa	$3,$3,$5,2
	daddiu	$3,$3,4
	.align	3
.L901:
	lw	$4,0($6)
	daddiu	$5,$5,4
	daddiu	$2,$2,4
	sw	$4,-4($5)
	lw	$4,0($6)
	bne	$3,$5,.L901
	sw	$4,-4($2)

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L894:
	dsra	$3,$2,2
	bne	$8,$0,.L907
	dsra	$4,$2,3

	lsa	$7,$3,$4,1
	blez	$7,.L908
	nop

	addiu	$7,$7,-1
	daddiu	$8,$5,4
	dext	$9,$7,0,32
	move	$7,$5
	dlsa	$8,$9,$8,2
	.align	3
.L909:
	lw	$9,0($6)
	daddiu	$7,$7,4
	bne	$8,$7,.L909
	sw	$9,-4($7)

.L908:
	subu	$2,$2,$3
	blez	$4,.L887
	dsll	$2,$2,2

	daddiu	$3,$2,4
	addiu	$4,$4,-1
	daddu	$3,$5,$3
	dext	$4,$4,0,32
	daddu	$5,$5,$2
	dlsa	$2,$4,$3,2
	.align	3
.L910:
	lw	$3,0($6)
	daddiu	$5,$5,4
	bne	$2,$5,.L910
	sw	$3,-4($5)

	b	.L930
	ld	$28,8($sp)

	.align	3
.L895:
	dsra	$10,$2,2
	dsra	$7,$2,3
	dsll	$3,$10,1
	dsll	$9,$7,2
	daddu	$7,$7,$3
	dsra	$2,$2,4
	dsll	$3,$3,2
	bne	$8,$0,.L912
	dsll	$7,$7,2

	blez	$2,.L887
	daddu	$7,$5,$7

	addiu	$4,$2,-1
	daddu	$3,$5,$3
	dext	$4,$4,0,32
	daddu	$2,$5,$9
	dlsa	$4,$4,$5,2
	daddiu	$4,$4,4
	.align	3
.L913:
	lw	$8,0($6)
	daddiu	$5,$5,4
	daddiu	$3,$3,4
	daddiu	$2,$2,4
	daddiu	$7,$7,4
	sw	$8,-4($5)
	lw	$8,0($6)
	sw	$8,-4($3)
	lw	$8,0($6)
	sw	$8,-4($2)
	lw	$8,0($6)
	bne	$4,$5,.L913
	sw	$8,-4($7)

	b	.L930
	ld	$28,8($sp)

	.align	3
.L907:
	blez	$4,.L887
	dsll	$2,$3,2

	addiu	$3,$4,-1
	daddu	$2,$5,$2
	dext	$3,$3,0,32
	dlsa	$3,$3,$5,2
	daddiu	$3,$3,4
	.align	3
.L911:
	lw	$4,0($6)
	daddiu	$5,$5,4
	daddiu	$2,$2,4
	sw	$4,-4($5)
	lw	$4,0($6)
	bne	$3,$5,.L911
	sw	$4,-4($2)

	b	.L930
	ld	$28,8($sp)

.L931:
	jr	$31
	nop

	.align	3
.L902:
	blez	$2,.L904
	nop

	addiu	$8,$2,-1
	move	$4,$5
	dext	$8,$8,0,32
	dlsa	$8,$8,$5,2
	daddiu	$8,$8,4
	.align	3
.L905:
	lw	$9,0($6)
	daddiu	$4,$4,4
	bne	$8,$4,.L905
	sw	$9,-4($4)

.L904:
	lsa	$7,$7,$2,1
	blez	$7,.L930
	ld	$28,8($sp)

	daddiu	$4,$3,4
	addiu	$2,$7,-1
	daddu	$4,$5,$4
	dext	$2,$2,0,32
	daddu	$5,$5,$3
	dlsa	$2,$2,$4,2
	.align	3
.L906:
	lw	$3,0($6)
	daddiu	$5,$5,4
	bne	$2,$5,.L906
	sw	$3,-4($5)

	b	.L930
	ld	$28,8($sp)

	.align	3
.L917:
	daddu	$9,$10,$9
	dsll	$8,$10,2
	blez	$7,.L887
	dsll	$9,$9,2

	addiu	$7,$7,-1
	daddu	$2,$5,$4
	dext	$7,$7,0,32
	daddu	$8,$5,$8
	dlsa	$7,$7,$5,2
	daddu	$3,$5,$9
	daddiu	$4,$7,4
	.align	3
.L921:
	lw	$7,0($6)
	daddiu	$5,$5,4
	daddiu	$8,$8,4
	daddiu	$2,$2,4
	daddiu	$3,$3,4
	sw	$7,-4($5)
	lw	$7,0($6)
	sw	$7,-4($8)
	lw	$7,0($6)
	sw	$7,-4($2)
	lw	$7,0($6)
	bne	$5,$4,.L921
	sw	$7,-4($3)

	b	.L930
	ld	$28,8($sp)

	.align	3
.L912:
	blez	$2,.L914
	nop

	addiu	$8,$2,-1
	move	$4,$5
	dext	$8,$8,0,32
	daddu	$3,$5,$3
	dlsa	$8,$8,$5,2
	daddiu	$8,$8,4
	.align	3
.L915:
	lw	$11,0($6)
	daddiu	$4,$4,4
	daddiu	$3,$3,4
	sw	$11,-4($4)
	lw	$11,0($6)
	bne	$4,$8,.L915
	sw	$11,-4($3)

.L914:
	addu	$2,$10,$2
	blez	$2,.L930
	ld	$28,8($sp)

	daddiu	$3,$9,4
	addiu	$2,$2,-1
	daddu	$4,$5,$3
	dext	$3,$2,0,32
	dlsa	$3,$3,$4,2
	daddu	$2,$5,$9
	daddu	$5,$5,$7
	.align	3
.L916:
	lw	$4,0($6)
	daddiu	$2,$2,4
	daddiu	$5,$5,4
	sw	$4,-4($2)
	lw	$4,0($6)
	bne	$3,$2,.L916
	sw	$4,-4($5)

	b	.L930
	ld	$28,8($sp)

	.set	macro
	.set	reorder
	.end	_ZN4x2656CUData8setAllPUINS_2MVEEEvPT_RKS3_ii
	.size	_ZN4x2656CUData8setAllPUINS_2MVEEEvPT_RKS3_ii, .-_ZN4x2656CUData8setAllPUINS_2MVEEEvPT_RKS3_ii
	.text
	.align	2
	.align	3
	.globl	_ZN4x2656CUData7setPUMvEiRKNS_2MVEii
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656CUData7setPUMvEiRKNS_2MVEii
	.type	_ZN4x2656CUData7setPUMvEiRKNS_2MVEii, @function
_ZN4x2656CUData7setPUMvEiRKNS_2MVEii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi(%neg(%gp_rel(_ZN4x2656CUData7setPUMvEiRKNS_2MVEii)))
	dlsa	$5,$5,$4,3
	daddu	$2,$2,$25
	daddiu	$2,$2,%lo(%neg(%gp_rel(_ZN4x2656CUData7setPUMvEiRKNS_2MVEii)))
	ld	$25,%got_disp(_ZN4x2656CUData8setAllPUINS_2MVEEEvPT_RKS3_ii)($2)
	.reloc	1f,R_MIPS_JALR,_ZN4x2656CUData8setAllPUINS_2MVEEEvPT_RKS3_ii
1:	jr	$25
	ld	$5,376($5)

	.set	macro
	.set	reorder
	.end	_ZN4x2656CUData7setPUMvEiRKNS_2MVEii
	.size	_ZN4x2656CUData7setPUMvEiRKNS_2MVEii, .-_ZN4x2656CUData7setPUMvEiRKNS_2MVEii
	.section	.text._ZN4x2656CUData8setAllPUIaEEvPT_RKS2_ii,"axG",@progbits,_ZN4x2656CUData8setAllPUIaEEvPT_RKS2_ii,comdat
	.align	2
	.align	3
	.weak	_ZN4x2656CUData8setAllPUIaEEvPT_RKS2_ii
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656CUData8setAllPUIaEEvPT_RKS2_ii
	.type	_ZN4x2656CUData8setAllPUIaEEvPT_RKS2_ii, @function
_ZN4x2656CUData8setAllPUIaEEvPT_RKS2_ii:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,200($4)
	daddu	$5,$5,$7
	daddu	$7,$2,$7
	lbu	$3,0($7)
	sltu	$3,$3,8
	beq	$3,$0,.L979
	lw	$9,112($4)

	lui	$12,%hi(%neg(%gp_rel(_ZN4x2656CUData8setAllPUIaEEvPT_RKS2_ii)))
	daddiu	$sp,$sp,-16
	daddu	$12,$12,$25
	sd	$28,8($sp)
	daddiu	$12,$12,%lo(%neg(%gp_rel(_ZN4x2656CUData8setAllPUIaEEvPT_RKS2_ii)))
	lbu	$3,0($7)
	ld	$4,%got_page(.L937)($12)
	daddiu	$4,$4,%got_ofst(.L937)
	dlsa	$3,$3,$4,3
	ld	$3,0($3)
	daddu	$3,$3,$12
	jr	$3
	move	$2,$9

	.section	.rodata._ZN4x2656CUData8setAllPUIaEEvPT_RKS2_ii,"aG",@progbits,_ZN4x2656CUData8setAllPUIaEEvPT_RKS2_ii,comdat
	.align	3
	.align	2
.L937:
	.gpdword	.L936
	.gpdword	.L938
	.gpdword	.L939
	.gpdword	.L934
	.gpdword	.L940
	.gpdword	.L941
	.gpdword	.L942
	.gpdword	.L943
	.section	.text._ZN4x2656CUData8setAllPUIaEEvPT_RKS2_ii,"axG",@progbits,_ZN4x2656CUData8setAllPUIaEEvPT_RKS2_ii,comdat
	.align	3
.L940:
	sra	$3,$2,2
	dsra	$2,$2,3
	bne	$8,$0,.L949
	move	$4,$3

	blez	$2,.L978
	ld	$28,8($sp)

	addiu	$2,$2,-1
	dext	$3,$2,0,32
	daddu	$2,$5,$4
	daddu	$3,$5,$3
	daddiu	$3,$3,1
	.align	3
.L950:
	lb	$4,0($6)
	daddiu	$5,$5,1
	daddiu	$2,$2,1
	sb	$4,-1($5)
	lb	$4,0($6)
	bne	$5,$3,.L950
	sb	$4,-1($2)

.L934:
	ld	$28,8($sp)
.L978:
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L943:
	dsra	$11,$2,2
	dsra	$3,$2,3
	dsll	$4,$11,1
	bne	$8,$0,.L964
	dsra	$9,$2,4

	addu	$7,$11,$9
	blez	$7,.L965
	nop

	addiu	$7,$7,-1
	daddiu	$10,$5,1
	dext	$8,$7,0,32
	daddu	$4,$5,$4
	move	$7,$5
	daddu	$10,$10,$8
	.align	3
.L966:
	lb	$8,0($6)
	daddiu	$7,$7,1
	daddiu	$4,$4,1
	sb	$8,-1($7)
	lb	$8,0($6)
	bne	$7,$10,.L966
	sb	$8,-1($4)

.L965:
	daddu	$2,$2,$3
	daddu	$3,$11,$3
	blez	$9,.L934
	dsubu	$2,$2,$11

	daddiu	$4,$3,1
	addiu	$9,$9,-1
	daddu	$4,$5,$4
	dext	$9,$9,0,32
	daddu	$3,$5,$3
	daddu	$9,$4,$9
	daddu	$5,$5,$2
	.align	3
.L967:
	lb	$2,0($6)
	daddiu	$3,$3,1
	daddiu	$5,$5,1
	sb	$2,-1($3)
	lb	$2,0($6)
	bne	$3,$9,.L967
	sb	$2,-1($5)

	b	.L978
	ld	$28,8($sp)

	.align	3
.L936:
	blez	$9,.L978
	ld	$28,8($sp)

	addiu	$2,$9,-1
	dext	$2,$2,0,32
	daddiu	$2,$2,1
	daddu	$2,$5,$2
	.align	3
.L946:
	lb	$3,0($6)
	daddiu	$5,$5,1
	bne	$2,$5,.L946
	sb	$3,-1($5)

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L938:
	dsra	$2,$2,1
	blez	$2,.L978
	ld	$28,8($sp)

	addiu	$2,$2,-1
	dext	$2,$2,0,32
	daddu	$2,$5,$2
	daddiu	$2,$2,1
	.align	3
.L947:
	lb	$3,0($6)
	daddiu	$5,$5,1
	bne	$2,$5,.L947
	sb	$3,-1($5)

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L939:
	dsra	$2,$2,2
	blez	$2,.L978
	ld	$28,8($sp)

	addiu	$3,$2,-1
	dlsa	$2,$2,$5,1
	dext	$3,$3,0,32
	daddu	$3,$5,$3
	daddiu	$3,$3,1
	.align	3
.L948:
	lb	$4,0($6)
	daddiu	$5,$5,1
	daddiu	$2,$2,1
	sb	$4,-1($5)
	lb	$4,0($6)
	bne	$3,$5,.L948
	sb	$4,-1($2)

	ld	$28,8($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.align	3
.L941:
	dsra	$3,$2,2
	bne	$8,$0,.L954
	dsra	$7,$2,3

	lsa	$4,$3,$7,1
	blez	$4,.L955
	nop

	addiu	$4,$4,-1
	daddiu	$8,$5,1
	dext	$9,$4,0,32
	move	$4,$5
	daddu	$8,$9,$8
	.align	3
.L956:
	lb	$9,0($6)
	daddiu	$4,$4,1
	bne	$8,$4,.L956
	sb	$9,-1($4)

.L955:
	blez	$7,.L934
	subu	$2,$2,$3

	daddiu	$3,$2,1
	addiu	$7,$7,-1
	daddu	$3,$5,$3
	dext	$7,$7,0,32
	daddu	$5,$5,$2
	daddu	$7,$3,$7
	.align	3
.L957:
	lb	$2,0($6)
	daddiu	$5,$5,1
	bne	$7,$5,.L957
	sb	$2,-1($5)

	b	.L978
	ld	$28,8($sp)

	.align	3
.L942:
	dsra	$11,$2,2
	dsra	$9,$2,3
	dsll	$3,$11,1
	dsra	$2,$2,4
	bne	$8,$0,.L959
	daddu	$4,$3,$9

	blez	$2,.L934
	daddu	$8,$5,$9

	addiu	$2,$2,-1
	daddu	$3,$5,$3
	dext	$7,$2,0,32
	daddu	$7,$5,$7
	daddu	$2,$5,$4
	daddiu	$4,$7,1
	.align	3
.L960:
	lb	$7,0($6)
	daddiu	$5,$5,1
	daddiu	$3,$3,1
	daddiu	$8,$8,1
	daddiu	$2,$2,1
	sb	$7,-1($5)
	lb	$7,0($6)
	sb	$7,-1($3)
	lb	$7,0($6)
	sb	$7,-1($8)
	lb	$7,0($6)
	bne	$5,$4,.L960
	sb	$7,-1($2)

	b	.L978
	ld	$28,8($sp)

	.align	3
.L954:
	blez	$7,.L934
	addiu	$7,$7,-1

	daddu	$2,$5,$3
	dext	$7,$7,0,32
	daddu	$3,$5,$7
	daddiu	$3,$3,1
	.align	3
.L958:
	lb	$4,0($6)
	daddiu	$5,$5,1
	daddiu	$2,$2,1
	sb	$4,-1($5)
	lb	$4,0($6)
	bne	$3,$5,.L958
	sb	$4,-1($2)

	b	.L978
	ld	$28,8($sp)

.L979:
	jr	$31
	nop

	.align	3
.L949:
	blez	$2,.L951
	nop

	addiu	$8,$2,-1
	move	$7,$5
	dext	$8,$8,0,32
	daddu	$8,$8,$5
	daddiu	$8,$8,1
	.align	3
.L952:
	lb	$9,0($6)
	daddiu	$7,$7,1
	bne	$8,$7,.L952
	sb	$9,-1($7)

.L951:
	lsa	$2,$4,$2,1
	blez	$2,.L978
	ld	$28,8($sp)

	daddiu	$4,$3,1
	addiu	$2,$2,-1
	daddu	$4,$5,$4
	dext	$2,$2,0,32
	daddu	$5,$5,$3
	daddu	$2,$4,$2
	.align	3
.L953:
	lb	$3,0($6)
	daddiu	$5,$5,1
	bne	$2,$5,.L953
	sb	$3,-1($5)

	b	.L978
	ld	$28,8($sp)

	.align	3
.L964:
	blez	$9,.L934
	daddu	$8,$4,$3

	addiu	$7,$9,-1
	daddu	$2,$5,$3
	dext	$7,$7,0,32
	daddu	$3,$5,$4
	daddu	$7,$5,$7
	daddu	$8,$5,$8
	daddiu	$4,$7,1
	.align	3
.L968:
	lb	$7,0($6)
	daddiu	$5,$5,1
	daddiu	$2,$2,1
	daddiu	$3,$3,1
	daddiu	$8,$8,1
	sb	$7,-1($5)
	lb	$7,0($6)
	sb	$7,-1($2)
	lb	$7,0($6)
	sb	$7,-1($3)
	lb	$7,0($6)
	bne	$5,$4,.L968
	sb	$7,-1($8)

	b	.L978
	ld	$28,8($sp)

	.align	3
.L959:
	blez	$2,.L961
	daddu	$3,$5,$3

	addiu	$8,$2,-1
	move	$7,$5
	dext	$8,$8,0,32
	daddu	$8,$8,$5
	daddiu	$8,$8,1
	.align	3
.L962:
	lb	$10,0($6)
	daddiu	$7,$7,1
	daddiu	$3,$3,1
	sb	$10,-1($7)
	lb	$10,0($6)
	bne	$7,$8,.L962
	sb	$10,-1($3)

.L961:
	addu	$3,$2,$11
	blez	$3,.L978
	ld	$28,8($sp)

	daddu	$2,$5,$4
	addiu	$3,$3,-1
	daddiu	$4,$2,1
	dext	$3,$3,0,32
	daddu	$5,$5,$9
	b	.L963
	daddu	$3,$4,$3

	.align	3
.L977:
	daddiu	$4,$4,1
.L963:
	lb	$7,0($6)
	daddiu	$5,$5,1
	sb	$7,-1($5)
	lb	$7,0($6)
	sb	$7,0($2)
	bne	$4,$3,.L977
	move	$2,$4

	b	.L978
	ld	$28,8($sp)

	.set	macro
	.set	reorder
	.end	_ZN4x2656CUData8setAllPUIaEEvPT_RKS2_ii
	.size	_ZN4x2656CUData8setAllPUIaEEvPT_RKS2_ii, .-_ZN4x2656CUData8setAllPUIaEEvPT_RKS2_ii
	.text
	.align	2
	.align	3
	.globl	_ZN4x2656CUData11setPURefIdxEiaii
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656CUData11setPURefIdxEiaii
	.type	_ZN4x2656CUData11setPURefIdxEiaii, @function
_ZN4x2656CUData11setPURefIdxEiaii:
	.frame	$sp,32,$31		# vars= 16, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	dlsa	$5,$5,$4,3
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656CUData11setPURefIdxEiaii)))
	daddu	$28,$28,$25
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656CUData11setPURefIdxEiaii)))
	ld	$5,168($5)
	ld	$25,%got_disp(_ZN4x2656CUData8setAllPUIaEEvPT_RKS2_ii)($28)
	sb	$6,0($sp)
	.reloc	1f,R_MIPS_JALR,_ZN4x2656CUData8setAllPUIaEEvPT_RKS2_ii
1:	jalr	$25
	move	$6,$sp

	ld	$31,24($sp)
	ld	$28,16($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2656CUData11setPURefIdxEiaii
	.size	_ZN4x2656CUData11setPURefIdxEiaii, .-_ZN4x2656CUData11setPURefIdxEiaii
	.rdata
	.align	3
	.type	_ZN4x265L13partAddrTableE, @object
	.size	_ZN4x265L13partAddrTableE, 128
_ZN4x265L13partAddrTableE:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	8
	.word	8
	.word	8
	.word	0
	.word	4
	.word	4
	.word	4
	.word	0
	.word	4
	.word	8
	.word	12
	.word	0
	.word	2
	.word	2
	.word	2
	.word	0
	.word	10
	.word	10
	.word	10
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	5
	.word	5
	.word	5
	.align	3
	.type	_ZN4x265L9partTableE, @object
	.size	_ZN4x265L9partTableE, 256
_ZN4x265L9partTableE:
	.word	68
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	66
	.word	0
	.word	66
	.word	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	36
	.word	0
	.word	36
	.word	32
	.word	0
	.word	0
	.word	0
	.word	0
	.word	34
	.word	0
	.word	34
	.word	32
	.word	34
	.word	2
	.word	34
	.word	34
	.word	65
	.word	0
	.word	67
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	67
	.word	0
	.word	65
	.word	3
	.word	0
	.word	0
	.word	0
	.word	0
	.word	20
	.word	0
	.word	52
	.word	16
	.word	0
	.word	0
	.word	0
	.word	0
	.word	52
	.word	0
	.word	20
	.word	48
	.word	0
	.word	0
	.word	0
	.word	0
	.ident	"GCC: (GNU) 7.3.0"
