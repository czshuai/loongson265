	.file	1 "bitstream.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.section	.text._ZN4x2659Bitstream9resetBitsEv,"axG",@progbits,_ZN4x2659Bitstream9resetBitsEv,comdat
	.align	2
	.align	3
	.weak	_ZN4x2659Bitstream9resetBitsEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659Bitstream9resetBitsEv
	.type	_ZN4x2659Bitstream9resetBitsEv, @function
_ZN4x2659Bitstream9resetBitsEv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sw	$0,20($4)
	sw	$0,24($4)
	jr	$31
	sb	$0,28($4)

	.set	macro
	.set	reorder
	.end	_ZN4x2659Bitstream9resetBitsEv
	.size	_ZN4x2659Bitstream9resetBitsEv, .-_ZN4x2659Bitstream9resetBitsEv
	.section	.text._ZNK4x2659Bitstream22getNumberOfWrittenBitsEv,"axG",@progbits,_ZNK4x2659Bitstream22getNumberOfWrittenBitsEv,comdat
	.align	2
	.align	3
	.weak	_ZNK4x2659Bitstream22getNumberOfWrittenBitsEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2659Bitstream22getNumberOfWrittenBitsEv
	.type	_ZNK4x2659Bitstream22getNumberOfWrittenBitsEv, @function
_ZNK4x2659Bitstream22getNumberOfWrittenBitsEv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,20($4)
	lw	$3,24($4)
	jr	$31
	lsa	$2,$2,$3,3

	.set	macro
	.set	reorder
	.end	_ZNK4x2659Bitstream22getNumberOfWrittenBitsEv
	.size	_ZNK4x2659Bitstream22getNumberOfWrittenBitsEv, .-_ZNK4x2659Bitstream22getNumberOfWrittenBitsEv
	.text
	.align	2
	.align	3
	.globl	_ZN4x2659Bitstream13writeAlignOneEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659Bitstream13writeAlignOneEv
	.type	_ZN4x2659Bitstream13writeAlignOneEv, @function
_ZN4x2659Bitstream13writeAlignOneEv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$6,24($4)
	li	$5,1			# 0x1
	ld	$2,0($4)
	subu	$6,$0,$6
	andi	$6,$6,0x7
	ld	$25,0($2)
	sll	$5,$5,$6
	jr	$25
	addiu	$5,$5,-1

	.set	macro
	.set	reorder
	.end	_ZN4x2659Bitstream13writeAlignOneEv
	.size	_ZN4x2659Bitstream13writeAlignOneEv, .-_ZN4x2659Bitstream13writeAlignOneEv
	.section	.text._ZN4x2659BitstreamD2Ev,"axG",@progbits,_ZN4x2659BitstreamD5Ev,comdat
	.align	2
	.align	3
	.weak	_ZN4x2659BitstreamD2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659BitstreamD2Ev
	.type	_ZN4x2659BitstreamD2Ev, @function
_ZN4x2659BitstreamD2Ev:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$3,$4
	ld	$4,8($4)
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659BitstreamD2Ev)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659BitstreamD2Ev)))
	ld	$2,%got_disp(_ZTVN4x2659BitstreamE)($28)
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	daddiu	$2,$2,16
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	sd	$2,0($3)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN4x2659BitstreamD2Ev
	.size	_ZN4x2659BitstreamD2Ev, .-_ZN4x2659BitstreamD2Ev
	.weak	_ZN4x2659BitstreamD1Ev
	_ZN4x2659BitstreamD1Ev = _ZN4x2659BitstreamD2Ev
	.section	.text._ZN4x2659BitstreamD0Ev,"axG",@progbits,_ZN4x2659BitstreamD5Ev,comdat
	.align	2
	.align	3
	.weak	_ZN4x2659BitstreamD0Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659BitstreamD0Ev
	.type	_ZN4x2659BitstreamD0Ev, @function
_ZN4x2659BitstreamD0Ev:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659BitstreamD0Ev)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659BitstreamD0Ev)))
	ld	$4,8($4)
	ld	$2,%got_disp(_ZTVN4x2659BitstreamE)($28)
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	sd	$31,24($sp)
	daddiu	$2,$2,16
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	sd	$2,0($16)

	ld	$25,%call16(_ZdlPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZdlPv
1:	jalr	$25
	move	$4,$16

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2659BitstreamD0Ev
	.size	_ZN4x2659BitstreamD0Ev, .-_ZN4x2659BitstreamD0Ev
	.text
	.align	2
	.align	3
	.globl	_ZN4x2659BitstreamC2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659BitstreamC2Ev
	.type	_ZN4x2659BitstreamC2Ev, @function
_ZN4x2659BitstreamC2Ev:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659BitstreamC2Ev)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659BitstreamC2Ev)))
	li	$4,1000			# 0x3e8
	sd	$31,24($sp)
	ld	$2,%got_disp(_ZTVN4x2659BitstreamE)($28)
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	daddiu	$2,$2,16
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	sd	$2,0($16)

	sw	$0,24($16)
	sb	$0,28($16)
	ld	$31,24($sp)
	sd	$2,8($16)
	li	$2,1000			# 0x3e8
	sd	$2,16($16)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2659BitstreamC2Ev
	.size	_ZN4x2659BitstreamC2Ev, .-_ZN4x2659BitstreamC2Ev
	.globl	_ZN4x2659BitstreamC1Ev
	_ZN4x2659BitstreamC1Ev = _ZN4x2659BitstreamC2Ev
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.ascii	"Unable to realloc bitstream buffer\000"
	.align	3
.LC1:
	.ascii	"x265\000"
	.text
	.align	2
	.align	3
	.globl	_ZN4x2659Bitstream9push_backEh
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659Bitstream9push_backEh
	.type	_ZN4x2659Bitstream9push_backEh, @function
_ZN4x2659Bitstream9push_backEh:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$17,16($sp)
	ld	$17,8($4)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659Bitstream9push_backEh)))
	daddu	$28,$28,$25
	sd	$31,40($sp)
	sd	$18,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659Bitstream9push_backEh)))
	beq	$17,$0,.L14
	sd	$16,8($sp)

	lw	$2,20($4)
	move	$16,$4
	lw	$4,16($4)
	sltu	$3,$2,$4
	beq	$3,$0,.L22
	move	$18,$5

.L16:
	dext	$3,$2,0,32
	addiu	$2,$2,1
	daddu	$17,$17,$3
	sw	$2,20($16)
	sb	$18,0($17)
.L14:
	ld	$31,40($sp)
.L23:
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.align	3
.L22:
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	sll	$4,$4,1
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	dext	$4,$4,0,32

	beq	$2,$0,.L17
	move	$17,$2

	ld	$25,%call16(memcpy)($28)
	move	$4,$2
	lwu	$6,20($16)
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	ld	$5,8($16)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,8($16)

	lw	$3,16($16)
	sd	$17,8($16)
	lw	$2,20($16)
	sll	$3,$3,1
	b	.L16
	sw	$3,16($16)

	.align	3
.L17:
	ld	$7,%got_page(.LC0)($28)
	move	$6,$0
	move	$4,$0
	ld	$5,%got_page(.LC1)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$7,%got_ofst(.LC0)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC1)

	b	.L23
	ld	$31,40($sp)

	.set	macro
	.set	reorder
	.end	_ZN4x2659Bitstream9push_backEh
	.size	_ZN4x2659Bitstream9push_backEh, .-_ZN4x2659Bitstream9push_backEh
	.align	2
	.align	3
	.globl	_ZN4x2659Bitstream5writeEjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659Bitstream5writeEjj
	.type	_ZN4x2659Bitstream5writeEjj, @function
_ZN4x2659Bitstream5writeEjj:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$7,24($4)
	daddiu	$sp,$sp,-64
	sd	$19,32($sp)
	sd	$16,8($sp)
	li	$16,8			# 0x8
	addu	$7,$7,$6
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659Bitstream5writeEjj)))
	andi	$19,$7,0x7
	daddu	$28,$28,$25
	sd	$17,16($sp)
	subu	$16,$16,$19
	dext	$7,$7,3,29
	sd	$31,56($sp)
	sll	$16,$5,$16
	sd	$20,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659Bitstream5writeEjj)))
	sd	$18,24($sp)
	move	$17,$4
	andi	$16,$16,0x00ff
	beq	$7,$0,.L25
	lbu	$3,28($4)

	subu	$18,$6,$19
	li	$6,-8			# 0xfffffffffffffff8
	and	$18,$18,$6
	srl	$5,$5,$19
	sll	$18,$3,$18
	li	$2,2			# 0x2
	beq	$7,$2,.L39
	or	$18,$18,$5

	sltu	$2,$7,3
	bne	$2,$0,.L40
	li	$2,3			# 0x3

	beq	$7,$2,.L41
	li	$2,4			# 0x4

	bne	$7,$2,.L26
	ld	$20,%got_disp(_ZN4x2659Bitstream9push_backEh)($28)

	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZN4x2659Bitstream9push_backEh
1:	jalr	$25
	dext	$5,$18,24,8

.L30:
	dext	$5,$18,16,8
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZN4x2659Bitstream9push_backEh
1:	jalr	$25
	move	$4,$17

.L27:
	dext	$5,$18,8,8
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZN4x2659Bitstream9push_backEh
1:	jalr	$25
	move	$4,$17

.L29:
	andi	$5,$18,0x00ff
	move	$25,$20
	.reloc	1f,R_MIPS_JALR,_ZN4x2659Bitstream9push_backEh
1:	jalr	$25
	move	$4,$17

.L26:
	sb	$16,28($17)
	sw	$19,24($17)
.L42:
	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L25:
	or	$16,$16,$3
	sw	$19,24($4)
	sb	$16,28($4)
	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L41:
	b	.L30
	ld	$20,%got_disp(_ZN4x2659Bitstream9push_backEh)($28)

	.align	3
.L39:
	b	.L27
	ld	$20,%got_disp(_ZN4x2659Bitstream9push_backEh)($28)

	.align	3
.L40:
	li	$2,1			# 0x1
	beq	$7,$2,.L29
	ld	$20,%got_disp(_ZN4x2659Bitstream9push_backEh)($28)

	sb	$16,28($17)
	b	.L42
	sw	$19,24($17)

	.set	macro
	.set	reorder
	.end	_ZN4x2659Bitstream5writeEjj
	.size	_ZN4x2659Bitstream5writeEjj, .-_ZN4x2659Bitstream5writeEjj
	.align	2
	.align	3
	.globl	_ZN4x2659Bitstream9writeByteEj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659Bitstream9writeByteEj
	.type	_ZN4x2659Bitstream9writeByteEj, @function
_ZN4x2659Bitstream9writeByteEj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi(%neg(%gp_rel(_ZN4x2659Bitstream9writeByteEj)))
	daddu	$2,$2,$25
	daddiu	$2,$2,%lo(%neg(%gp_rel(_ZN4x2659Bitstream9writeByteEj)))
	ld	$25,%got_disp(_ZN4x2659Bitstream9push_backEh)($2)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659Bitstream9push_backEh
1:	jr	$25
	andi	$5,$5,0xff

	.set	macro
	.set	reorder
	.end	_ZN4x2659Bitstream9writeByteEj
	.size	_ZN4x2659Bitstream9writeByteEj, .-_ZN4x2659Bitstream9writeByteEj
	.align	2
	.align	3
	.globl	_ZN4x2659Bitstream14writeAlignZeroEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659Bitstream14writeAlignZeroEv
	.type	_ZN4x2659Bitstream14writeAlignZeroEv, @function
_ZN4x2659Bitstream14writeAlignZeroEv:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$3,24($4)
	bne	$3,$0,.L54
	nop

	jr	$31
	nop

	.align	3
.L54:
	daddiu	$sp,$sp,-32
	lbu	$5,28($4)
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659Bitstream14writeAlignZeroEv)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659Bitstream14writeAlignZeroEv)))
	sd	$31,24($sp)
	ld	$25,%got_disp(_ZN4x2659Bitstream9push_backEh)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659Bitstream9push_backEh
1:	jalr	$25
	move	$16,$4

	sb	$0,28($16)
	ld	$31,24($sp)
	sw	$0,24($16)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2659Bitstream14writeAlignZeroEv
	.size	_ZN4x2659Bitstream14writeAlignZeroEv, .-_ZN4x2659Bitstream14writeAlignZeroEv
	.align	2
	.align	3
	.globl	_ZN4x2659Bitstream18writeByteAlignmentEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659Bitstream18writeByteAlignmentEv
	.type	_ZN4x2659Bitstream18writeByteAlignmentEv, @function
_ZN4x2659Bitstream18writeByteAlignmentEv:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,0($4)
	daddiu	$sp,$sp,-32
	li	$6,1			# 0x1
	sd	$16,8($sp)
	li	$5,1			# 0x1
	sd	$31,24($sp)
	ld	$25,0($2)
	jalr	$25
	move	$16,$4

	ld	$2,0($16)
	move	$4,$16
	ld	$31,24($sp)
	ld	$16,8($sp)
	ld	$25,40($2)
	jr	$25
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2659Bitstream18writeByteAlignmentEv
	.size	_ZN4x2659Bitstream18writeByteAlignmentEv, .-_ZN4x2659Bitstream18writeByteAlignmentEv
	.align	2
	.align	3
	.globl	_ZN4x26519SyntaxElementWriter9writeUvlcEj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26519SyntaxElementWriter9writeUvlcEj
	.type	_ZN4x26519SyntaxElementWriter9writeUvlcEj, @function
_ZN4x26519SyntaxElementWriter9writeUvlcEj:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$18,24($sp)
	move	$18,$4
	sd	$17,16($sp)
	addiu	$17,$5,1
	ld	$4,0($4)
	clz	$2,$17
	xori	$2,$2,0x1f
	sd	$16,8($sp)
	move	$6,$2
	sll	$16,$2,1
	sd	$31,40($sp)
	ld	$2,0($4)
	ld	$25,0($2)
	jalr	$25
	move	$5,$0

	ld	$4,0($18)
	addiu	$6,$16,2
	ld	$31,40($sp)
	move	$5,$17
	dext	$6,$6,1,31
	ld	$18,24($sp)
	ld	$2,0($4)
	ld	$17,16($sp)
	ld	$16,8($sp)
	ld	$25,0($2)
	jr	$25
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN4x26519SyntaxElementWriter9writeUvlcEj
	.size	_ZN4x26519SyntaxElementWriter9writeUvlcEj, .-_ZN4x26519SyntaxElementWriter9writeUvlcEj
	.weak	_ZTSN4x26512BitInterfaceE
	.section	.rodata._ZTSN4x26512BitInterfaceE,"aG",@progbits,_ZTSN4x26512BitInterfaceE,comdat
	.align	3
	.type	_ZTSN4x26512BitInterfaceE, @object
	.size	_ZTSN4x26512BitInterfaceE, 22
_ZTSN4x26512BitInterfaceE:
	.ascii	"N4x26512BitInterfaceE\000"
	.weak	_ZTIN4x26512BitInterfaceE
	.section	.data.rel.ro._ZTIN4x26512BitInterfaceE,"awG",@progbits,_ZTIN4x26512BitInterfaceE,comdat
	.align	3
	.type	_ZTIN4x26512BitInterfaceE, @object
	.size	_ZTIN4x26512BitInterfaceE, 16
_ZTIN4x26512BitInterfaceE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN4x26512BitInterfaceE
	.weak	_ZTSN4x2659BitstreamE
	.section	.rodata._ZTSN4x2659BitstreamE,"aG",@progbits,_ZTSN4x2659BitstreamE,comdat
	.align	3
	.type	_ZTSN4x2659BitstreamE, @object
	.size	_ZTSN4x2659BitstreamE, 18
_ZTSN4x2659BitstreamE:
	.ascii	"N4x2659BitstreamE\000"
	.weak	_ZTIN4x2659BitstreamE
	.section	.data.rel.ro._ZTIN4x2659BitstreamE,"awG",@progbits,_ZTIN4x2659BitstreamE,comdat
	.align	3
	.type	_ZTIN4x2659BitstreamE, @object
	.size	_ZTIN4x2659BitstreamE, 24
_ZTIN4x2659BitstreamE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN4x2659BitstreamE
	.dword	_ZTIN4x26512BitInterfaceE
	.weak	_ZTVN4x2659BitstreamE
	.section	.data.rel.ro.local._ZTVN4x2659BitstreamE,"awG",@progbits,_ZTVN4x2659BitstreamE,comdat
	.align	3
	.type	_ZTVN4x2659BitstreamE, @object
	.size	_ZTVN4x2659BitstreamE, 80
_ZTVN4x2659BitstreamE:
	.dword	0
	.dword	_ZTIN4x2659BitstreamE
	.dword	_ZN4x2659Bitstream5writeEjj
	.dword	_ZN4x2659Bitstream9writeByteEj
	.dword	_ZN4x2659Bitstream9resetBitsEv
	.dword	_ZNK4x2659Bitstream22getNumberOfWrittenBitsEv
	.dword	_ZN4x2659Bitstream13writeAlignOneEv
	.dword	_ZN4x2659Bitstream14writeAlignZeroEv
	.dword	_ZN4x2659BitstreamD1Ev
	.dword	_ZN4x2659BitstreamD0Ev
	.ident	"GCC: (GNU) 7.3.0"
