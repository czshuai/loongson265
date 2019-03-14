	.file	1 "picyuv.cpp"
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
	.ent	_ZN4x265L9md5_blockILj1EEEvRNS_10MD5ContextEPKhj
	.type	_ZN4x265L9md5_blockILj1EEEvRNS_10MD5ContextEPKhj, @function
_ZN4x265L9md5_blockILj1EEEvRNS_10MD5ContextEPKhj:
	.frame	$sp,80,$31		# vars= 64, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x265L9md5_blockILj1EEEvRNS_10MD5ContextEPKhj)))
	daddu	$28,$28,$25
	sd	$31,72($sp)
	bne	$6,$0,.L10
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x265L9md5_blockILj1EEEvRNS_10MD5ContextEPKhj)))

	ld	$25,%call16(_ZN4x2659MD5UpdateEPNS_10MD5ContextEPhj)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659MD5UpdateEPNS_10MD5ContextEPhj
1:	jalr	$25
	move	$5,$sp

	ld	$31,72($sp)
	ld	$28,64($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.align	3
.L10:
	addiu	$2,$6,-1
	daddiu	$7,$5,1
	dext	$2,$2,0,32
	move	$3,$sp
	daddu	$2,$2,$7
.L3:
	lbu	$7,0($5)
	daddiu	$3,$3,1
	daddiu	$5,$5,1
	bne	$5,$2,.L3
	sb	$7,-1($3)

	ld	$25,%call16(_ZN4x2659MD5UpdateEPNS_10MD5ContextEPhj)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659MD5UpdateEPNS_10MD5ContextEPhj
1:	jalr	$25
	move	$5,$sp

	ld	$31,72($sp)
	ld	$28,64($sp)
	jr	$31
	daddiu	$sp,$sp,80

	.set	macro
	.set	reorder
	.end	_ZN4x265L9md5_blockILj1EEEvRNS_10MD5ContextEPKhj
	.size	_ZN4x265L9md5_blockILj1EEEvRNS_10MD5ContextEPKhj, .-_ZN4x265L9md5_blockILj1EEEvRNS_10MD5ContextEPKhj
	.align	2
	.align	3
	.globl	_ZN4x2656PicYuvC2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656PicYuvC2Ev
	.type	_ZN4x2656PicYuvC2Ev, @function
_ZN4x2656PicYuvC2Ev:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,-256			# 0xffffffffffffff00
	sd	$0,0($4)
	sd	$0,8($4)
	sd	$0,16($4)
	sd	$0,24($4)
	sd	$0,32($4)
	sd	$0,40($4)
	sd	$0,88($4)
	sd	$0,96($4)
	sd	$0,104($4)
	sd	$0,112($4)
	sd	$0,176($4)
	sh	$2,136($4)
	sd	$0,144($4)
	sh	$2,152($4)
	sd	$0,160($4)
	sh	$2,168($4)
	sd	$0,56($4)
	sd	$0,64($4)
	sw	$0,76($4)
	jr	$31
	sw	$0,80($4)

	.set	macro
	.set	reorder
	.end	_ZN4x2656PicYuvC2Ev
	.size	_ZN4x2656PicYuvC2Ev, .-_ZN4x2656PicYuvC2Ev
	.globl	_ZN4x2656PicYuvC1Ev
	_ZN4x2656PicYuvC1Ev = _ZN4x2656PicYuvC2Ev
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.ascii	"malloc of size %d failed\012\000"
	.align	3
.LC1:
	.ascii	"x265\000"
	.text
	.align	2
	.align	3
	.globl	_ZN4x2656PicYuv6createEP10x265_parambPh
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656PicYuv6createEP10x265_parambPh
	.type	_ZN4x2656PicYuv6createEP10x265_parambPh, @function
_ZN4x2656PicYuv6createEP10x265_parambPh:
	.frame	$sp,64,$31		# vars= 16, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,180($5)
	daddiu	$sp,$sp,-64
	lw	$10,72($5)
	sd	$16,16($sp)
	move	$16,$4
	addiu	$8,$2,32
	addiu	$3,$2,-1
	sd	$18,32($sp)
	sll	$4,$8,1
	lw	$18,60($5)
	addu	$11,$10,$3
	mtlo	$4
	lw	$9,76($5)
	sd	$19,40($sp)
	gsdivu	$19,$11,$2
	teq	$2,$0,7
	madd	$2,$19
	addiu	$4,$18,-1
	sd	$28,48($sp)
	addu	$3,$9,$3
	sd	$17,24($sp)
	sltu	$4,$4,2
	sd	$31,56($sp)
	sd	$5,184($16)
	gsdivu	$5,$3,$2
	teq	$2,$0,7
	xori	$3,$18,0x1
	sw	$4,76($16)
	addiu	$4,$2,16
	sltu	$3,$3,1
	sw	$10,48($16)
	gsmultu	$2,$5,$2
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656PicYuv6createEP10x265_parambPh)))
	sw	$3,80($16)
	mflo	$3
	daddu	$28,$28,$25
	sw	$9,52($16)
	dext	$3,$3,0,32
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656PicYuv6createEP10x265_parambPh)))
	sw	$18,72($16)
	sw	$8,120($16)
	sw	$4,124($16)
	sd	$3,56($16)
	beq	$7,$0,.L14
	move	$17,$2

	sd	$7,24($16)
.L15:
	bne	$18,$0,.L29
	li	$2,1			# 0x1

	sd	$0,16($16)
	sd	$0,8($16)
	sd	$0,40($16)
	sd	$0,32($16)
.L17:
	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$19,40($sp)
	ld	$18,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L29:
	ld	$3,184($16)
	lw	$8,76($16)
	lw	$4,120($16)
	lw	$3,180($3)
	lw	$5,124($16)
	lw	$7,80($16)
	gsmultu	$19,$3,$19
	sw	$4,128($16)
	srl	$3,$5,$7
	sw	$3,132($16)
	srl	$19,$19,$8
	lsa	$4,$4,$19,1
	dext	$5,$4,0,32
	beq	$6,$0,.L17
	sd	$5,64($16)

	sra	$7,$17,$7
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	lsa	$3,$3,$7,1
	sd	$6,0($sp)
	multu	$3,$4
	mflo	$4
	mfhi	$2
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	dins	$4,$2,32,32

	ld	$6,0($sp)
	beq	$2,$0,.L30
	sd	$2,8($16)

	lw	$3,80($16)
	lw	$2,132($16)
	ld	$4,64($16)
	sra	$3,$17,$3
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	lsa	$2,$2,$3,1
	sd	$6,0($sp)
	dext	$2,$2,0,32
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	gsdmultu	$4,$2,$4

	ld	$6,0($sp)
	move	$4,$2
	beq	$2,$0,.L31
	sd	$2,16($16)

	lwu	$3,132($16)
	move	$2,$6
	ld	$7,64($16)
	lwu	$6,128($16)
	ld	$5,8($16)
	gsdmultu	$3,$3,$7
	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$19,40($sp)
	ld	$18,32($sp)
	ld	$17,24($sp)
	daddu	$3,$3,$6
	daddu	$5,$5,$3
	daddu	$3,$4,$3
	sd	$5,32($16)
	sd	$3,40($16)
	ld	$16,16($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L14:
	beq	$6,$0,.L15
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)

	lsa	$4,$4,$2,1
	mflo	$2
	multu	$4,$2
	sd	$6,0($sp)
	mflo	$4
	mfhi	$2
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	dins	$4,$2,32,32

	ld	$6,0($sp)
	beq	$2,$0,.L32
	sd	$2,0($16)

	lwu	$3,124($16)
	ld	$5,56($16)
	lwu	$4,120($16)
	gsdmultu	$3,$3,$5
	daddu	$3,$3,$4
	daddu	$2,$2,$3
	b	.L15
	sd	$2,24($16)

	.align	3
.L30:
	lw	$3,80($16)
	move	$6,$0
	move	$4,$0
	lw	$2,132($16)
	ld	$8,64($16)
	sra	$17,$17,$3
.L27:
	lsa	$2,$2,$17,1
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	dext	$2,$2,0,32
	gsdmultu	$8,$2,$8
.L28:
	ld	$7,%got_page(.LC0)($28)
	ld	$5,%got_page(.LC1)($28)
	daddiu	$7,$7,%got_ofst(.LC0)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC1)

	b	.L17
	move	$2,$0

	.align	3
.L31:
	lw	$3,80($16)
	move	$6,$0
	lw	$2,132($16)
	ld	$8,64($16)
	sra	$17,$17,$3
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	lsa	$17,$2,$17,1
	dext	$17,$17,0,32
	b	.L28
	gsdmultu	$8,$17,$8

	.align	3
.L32:
	lw	$2,124($16)
	move	$6,$0
	move	$4,$0
	b	.L27
	ld	$8,56($16)

	.set	macro
	.set	reorder
	.end	_ZN4x2656PicYuv6createEP10x265_parambPh
	.size	_ZN4x2656PicYuv6createEP10x265_parambPh, .-_ZN4x2656PicYuv6createEP10x265_parambPh
	.align	2
	.align	3
	.globl	_ZN4x2656PicYuv13getLumaBufLenEjjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656PicYuv13getLumaBufLenEjjj
	.type	_ZN4x2656PicYuv13getLumaBufLenEjjj, @function
_ZN4x2656PicYuv13getLumaBufLenEjjj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$3,184($4)
	addiu	$9,$7,-1
	addiu	$2,$5,-1
	addiu	$8,$6,-1
	sw	$6,52($4)
	sltu	$6,$9,2
	sw	$5,48($4)
	xori	$5,$7,0x1
	lw	$3,180($3)
	sltu	$5,$5,1
	sw	$6,76($4)
	sw	$5,80($4)
	addu	$6,$2,$3
	addiu	$9,$3,32
	sw	$7,72($4)
	gsdivu	$2,$6,$3
	teq	$3,$0,7
	mul	$6,$2,$3
	addiu	$5,$3,16
	sll	$7,$9,1
	addu	$8,$8,$3
	sw	$5,124($4)
	sw	$9,120($4)
	addu	$2,$6,$7
	sll	$6,$5,1
	gsdivu	$5,$8,$3
	teq	$3,$0,7
	mul	$7,$5,$3
	dext	$5,$2,0,32
	sd	$5,56($4)
	addu	$3,$7,$6
	jr	$31
	gsmultu	$2,$3,$2

	.set	macro
	.set	reorder
	.end	_ZN4x2656PicYuv13getLumaBufLenEjjj
	.size	_ZN4x2656PicYuv13getLumaBufLenEjjj, .-_ZN4x2656PicYuv13getLumaBufLenEjjj
	.align	2
	.align	3
	.globl	_ZN4x2656PicYuv13createOffsetsERKNS_3SPSE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656PicYuv13createOffsetsERKNS_3SPSE
	.type	_ZN4x2656PicYuv13createOffsetsERKNS_3SPSE, @function
_ZN4x2656PicYuv13createOffsetsERKNS_3SPSE:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$18,24($sp)
	move	$18,$5
	sd	$17,16($sp)
	move	$17,$4
	lw	$4,44($5)
	lw	$5,48($5)
	ld	$2,184($17)
	sd	$16,8($sp)
	gsmultu	$4,$4,$5
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656PicYuv13createOffsetsERKNS_3SPSE)))
	lw	$16,804($2)
	daddu	$28,$28,$25
	lw	$3,72($17)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656PicYuv13createOffsetsERKNS_3SPSE)))
	sd	$31,40($sp)
	sll	$2,$16,1
	li	$16,1			# 0x1
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	dext	$4,$4,0,32
	sll	$16,$16,$2
	beq	$3,$0,.L36
	dsll	$4,$4,3

	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	nop

	beq	$2,$0,.L80
	sd	$2,88($17)

	lw	$4,44($18)
	lw	$2,48($18)
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	gsmultu	$4,$4,$2
	dext	$4,$4,0,32
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	dsll	$4,$4,3

	beq	$2,$0,.L80
	sd	$2,96($17)

	lw	$3,48($18)
	beq	$3,$0,.L40
	addiu	$25,$3,-1

	lw	$24,44($18)
	move	$9,$0
	dext	$25,$25,0,32
	daddiu	$25,$25,1
	move	$12,$24
	.align	3
.L43:
	beq	$24,$0,.L41
	nop

	ld	$3,184($17)
	subu	$6,$12,$24
	move	$8,$0
	lw	$10,80($17)
	move	$7,$0
	lw	$13,76($17)
	lw	$11,180($3)
	ld	$15,88($17)
	srl	$10,$11,$10
	dext	$14,$11,0,32
	dext	$10,$10,0,32
	srl	$13,$11,$13
	.align	3
.L42:
	ld	$4,56($17)
	dext	$5,$6,0,32
	dext	$18,$7,0,32
	dsll	$5,$5,3
	dext	$31,$8,0,32
	daddu	$3,$15,$5
	addiu	$6,$6,1
	gsdmultu	$4,$9,$4
	daddu	$5,$2,$5
	addu	$7,$11,$7
	addu	$8,$13,$8
	gsdmultu	$4,$4,$14
	daddu	$4,$4,$18
	sd	$4,0($3)
	ld	$3,64($17)
	gsdmultu	$3,$9,$3
	gsdmultu	$3,$3,$10
	daddu	$3,$3,$31
	bne	$12,$6,.L42
	sd	$3,0($5)

.L41:
	daddiu	$9,$9,1
	bne	$25,$9,.L43
	addu	$12,$24,$12

.L40:
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	dext	$18,$16,0,32
	dsll	$18,$18,3
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$18

	beq	$2,$0,.L81
	sd	$2,104($17)

	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$18

	beq	$2,$0,.L81
	sd	$2,112($17)

	beq	$16,$0,.L82
	ld	$31,40($sp)

	ld	$5,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	addiu	$3,$16,-1
	lw	$12,80($17)
	dext	$3,$3,0,32
	lw	$11,76($17)
	ld	$7,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	daddiu	$10,$5,1
	ld	$6,104($17)
	daddu	$10,$10,$3
	.align	3
.L47:
	lbu	$3,0($7)
	daddiu	$5,$5,1
	daddiu	$6,$6,8
	ld	$9,56($17)
	daddiu	$2,$2,8
	daddiu	$7,$7,1
	lbu	$8,-1($5)
	dsra	$4,$3,$12
	gsdmultu	$3,$3,$9
	dsra	$9,$8,$11
	daddu	$3,$3,$8
	sd	$3,-8($6)
	ld	$3,64($17)
	gsdmultu	$3,$4,$3
	daddu	$3,$3,$9
	bne	$5,$10,.L47
	sd	$3,-8($2)

.L46:
	ld	$31,40($sp)
.L82:
	li	$2,1			# 0x1
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.align	3
.L36:
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	nop

	beq	$2,$0,.L80
	sd	$2,88($17)

	lw	$3,48($18)
	beq	$3,$0,.L49
	addiu	$13,$3,-1

	lw	$12,44($18)
	move	$8,$0
	dext	$13,$13,0,32
	daddiu	$13,$13,1
	move	$9,$12
	.align	3
.L52:
	beq	$12,$0,.L50
	nop

	ld	$3,184($17)
	subu	$4,$9,$12
	move	$6,$0
	lw	$10,180($3)
	dext	$11,$10,0,32
	.align	3
.L51:
	ld	$3,56($17)
	dext	$5,$4,0,32
	dext	$7,$6,0,32
	dlsa	$5,$5,$2,3
	addiu	$4,$4,1
	addu	$6,$6,$10
	gsdmultu	$3,$8,$3
	gsdmultu	$3,$3,$11
	daddu	$3,$3,$7
	bne	$9,$4,.L51
	sd	$3,0($5)

.L50:
	daddiu	$8,$8,1
	bne	$13,$8,.L52
	addu	$9,$12,$9

.L49:
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	dext	$18,$16,0,32
	dsll	$18,$18,3
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$18

	beq	$2,$0,.L81
	sd	$2,104($17)

	beq	$16,$0,.L46
	ld	$4,%got_disp(_ZN4x26513g_zscanToPelXE)($28)

	addiu	$16,$16,-1
	ld	$5,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	dext	$16,$16,0,32
	daddiu	$3,$4,1
	daddu	$16,$3,$16
	.align	3
.L54:
	lbu	$3,0($5)
	daddiu	$4,$4,1
	daddiu	$2,$2,8
	ld	$7,56($17)
	daddiu	$5,$5,1
	lbu	$6,-1($4)
	gsdmultu	$3,$3,$7
	daddu	$3,$3,$6
	bne	$16,$4,.L54
	sd	$3,-8($2)

	b	.L82
	ld	$31,40($sp)

	.align	3
.L80:
	lw	$2,48($18)
	move	$6,$0
	move	$4,$0
	lw	$8,44($18)
	ld	$7,%got_page(.LC0)($28)
	ld	$5,%got_page(.LC1)($28)
	gsmultu	$8,$8,$2
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$7,%got_ofst(.LC0)
	daddiu	$5,$5,%got_ofst(.LC1)
	dext	$8,$8,0,32
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	dsll	$8,$8,3

	ld	$31,40($sp)
	move	$2,$0
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.align	3
.L81:
	ld	$7,%got_page(.LC0)($28)
	move	$8,$18
	move	$6,$0
	ld	$5,%got_page(.LC1)($28)
	move	$4,$0
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$7,%got_ofst(.LC0)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC1)

	ld	$31,40($sp)
	move	$2,$0
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN4x2656PicYuv13createOffsetsERKNS_3SPSE
	.size	_ZN4x2656PicYuv13createOffsetsERKNS_3SPSE, .-_ZN4x2656PicYuv13createOffsetsERKNS_3SPSE
	.align	2
	.align	3
	.globl	_ZN4x2656PicYuv7destroyEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656PicYuv7destroyEv
	.type	_ZN4x2656PicYuv7destroyEv, @function
_ZN4x2656PicYuv7destroyEv:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656PicYuv7destroyEv)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656PicYuv7destroyEv)))
	ld	$4,0($4)
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	sd	$31,24($sp)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	nop

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,8($16)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,16($16)

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2656PicYuv7destroyEv
	.size	_ZN4x2656PicYuv7destroyEv, .-_ZN4x2656PicYuv7destroyEv
	.align	2
	.align	3
	.globl	_ZN4x2656PicYuv15copyFromPictureERK12x265_pictureRK10x265_paramii
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656PicYuv15copyFromPictureERK12x265_pictureRK10x265_paramii
	.type	_ZN4x2656PicYuv15copyFromPictureERK12x265_pictureRK10x265_paramii, @function
_ZN4x2656PicYuv15copyFromPictureERK12x265_pictureRK10x265_paramii:
	.frame	$sp,144,$31		# vars= 48, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-144
	move	$3,$7
	lw	$2,52($4)
	sd	$7,8($sp)
	lw	$7,48($4)
	sd	$28,120($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656PicYuv15copyFromPictureERK12x265_pictureRK10x265_paramii)))
	sd	$23,112($sp)
	daddu	$28,$28,$25
	subu	$23,$7,$3
	sd	$fp,128($sp)
	move	$fp,$5
	sd	$16,56($sp)
	andi	$5,$23,0xf
	move	$16,$4
	subu	$4,$2,$8
	sd	$22,104($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656PicYuv15copyFromPictureERK12x265_pictureRK10x265_paramii)))
	sd	$17,64($sp)
	move	$22,$4
	move	$17,$23
	sd	$31,136($sp)
	sd	$21,96($sp)
	sd	$20,88($sp)
	sd	$19,80($sp)
	sd	$18,72($sp)
	sd	$8,16($sp)
	beq	$5,$0,.L86
	sd	$6,0($sp)

	li	$12,16			# 0x10
	subu	$3,$12,$5
	sd	$3,8($sp)
.L86:
	andi	$4,$4,0xf
	beq	$4,$0,.L178
	ld	$3,8($sp)

	li	$5,16			# 0x10
	subu	$3,$5,$4
	sd	$3,16($sp)
	ld	$3,8($sp)
.L178:
	ld	$4,184($16)
	lw	$5,72($fp)
	addiu	$19,$3,1
	ld	$3,16($sp)
	lw	$4,860($4)
	ld	$13,24($fp)
	addiu	$3,$3,1
	sw	$5,72($16)
	beq	$4,$0,.L88
	sd	$3,24($sp)

	lw	$4,60($fp)
	li	$2,8			# 0x8
	beq	$4,$2,.L171
	ld	$14,24($16)

	addiu	$2,$4,-8
	lw	$5,48($fp)
	slt	$4,$4,9
	sra	$10,$2,31
	ld	$20,%got_disp(_ZN4x26510primitivesE)($28)
	li	$11,255			# 0xff
	xor	$2,$10,$2
	move	$9,$22
	ld	$7,56($16)
	subu	$10,$2,$10
	move	$8,$17
	move	$2,$10
	move	$6,$14
	dsrl	$5,$5,1
	beq	$4,$0,.L172
	sd	$2,32($sp)

	ld	$25,5936($20)
	jalr	$25
	move	$4,$13

	ld	$2,0($sp)
	ld	$21,32($16)
	lw	$4,60($2)
	bne	$4,$0,.L98
	ld	$18,40($16)

.L170:
	lw	$2,52($16)
	lw	$7,48($16)
	ld	$3,0($sp)
	ld	$13,24($16)
	gsmultu	$2,$2,$7
	lw	$11,44($3)
	dext	$2,$2,0,32
	dmtc1	$2,$f0
	bgtz	$22,.L173
	cvt.d.l	$f0,$f0

.L100:
	slt	$11,$11,2
	bne	$11,$0,.L120
	sd	$0,144($16)

	ld	$2,0($sp)
	lw	$2,60($2)
	bne	$2,$0,.L142
	nop

.L120:
	ld	$4,56($16)
	addiu	$2,$22,-1
	.align	3
.L177:
	ld	$7,24($16)
	gsdmultu	$2,$2,$4
	daddu	$fp,$7,$2
	ld	$2,24($sp)
	blez	$2,.L125
	ld	$2,16($sp)

	li	$20,1			# 0x1
	sd	$17,8($sp)
	dext	$23,$2,0,32
	addu	$2,$17,$19
	daddiu	$23,$23,2
	move	$17,$fp
	b	.L126
	move	$fp,$2

	.align	3
.L174:
	ld	$4,56($16)
.L126:
	gsdmultu	$4,$20,$4
	ld	$25,%call16(memcpy)($28)
	move	$6,$fp
	move	$5,$17
	daddiu	$20,$20,1
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$17,$4

	bne	$23,$20,.L174
	nop

	ld	$17,8($sp)
.L125:
	ld	$2,0($sp)
	lw	$2,60($2)
	beq	$2,$0,.L179
	ld	$31,136($sp)

	lw	$6,80($16)
	sra	$3,$22,$6
	blez	$3,.L128
	nop

	lw	$2,76($16)
	move	$5,$0
	.align	3
.L132:
	sra	$3,$19,$2
	blez	$3,.L129
	move	$3,$0

	.align	3
.L130:
	sra	$2,$17,$2
	daddu	$4,$21,$2
	addu	$2,$2,$3
	lbu	$4,-1($4)
	daddu	$2,$21,$2
	sb	$4,0($2)
	lw	$2,76($16)
	sra	$2,$17,$2
	daddu	$4,$18,$2
	addu	$2,$2,$3
	lbu	$4,-1($4)
	daddu	$2,$18,$2
	addiu	$3,$3,1
	sb	$4,0($2)
	lw	$2,76($16)
	sra	$4,$19,$2
	slt	$4,$3,$4
	bne	$4,$0,.L130
	nop

	lw	$6,80($16)
.L129:
	ld	$4,64($16)
	addiu	$5,$5,1
	sra	$3,$22,$6
	slt	$7,$5,$3
	daddu	$21,$21,$4
	bne	$7,$0,.L132
	daddu	$18,$18,$4

.L131:
	addiu	$2,$3,-1
	ld	$20,24($sp)
	gsdmultu	$2,$2,$4
	ld	$22,32($16)
	ld	$18,40($16)
	sra	$6,$20,$6
	daddu	$22,$22,$2
	blez	$6,.L85
	daddu	$18,$18,$2

	addu	$17,$17,$19
	li	$21,1			# 0x1
	b	.L133
	li	$19,1			# 0x1

	.align	3
.L175:
	ld	$4,64($16)
.L133:
	gsdmultu	$4,$19,$4
	lw	$6,76($16)
	move	$5,$22
	ld	$25,%call16(memcpy)($28)
	addiu	$21,$21,1
	sra	$6,$17,$6
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$22,$4

	ld	$4,64($16)
	move	$5,$18
	lw	$6,76($16)
	ld	$25,%call16(memcpy)($28)
	gsdmultu	$4,$19,$4
	daddiu	$19,$19,1
	sra	$6,$17,$6
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	daddu	$4,$18,$4

	lw	$2,80($16)
	sra	$2,$20,$2
	slt	$2,$2,$21
	beq	$2,$0,.L175
	nop

.L85:
	ld	$31,136($sp)
.L179:
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
.L88:
	ld	$21,32($fp)
	ld	$18,40($fp)
	sd	$13,24($16)
	sd	$21,32($16)
	sd	$18,40($16)
.L95:
	gsmultu	$2,$2,$7
	ld	$3,0($sp)
	lw	$11,44($3)
	dext	$2,$2,0,32
	dmtc1	$2,$f0
	blez	$22,.L100
	cvt.d.l	$f0,$f0

.L173:
	ld	$9,56($16)
.L134:
	addiu	$24,$23,-1
	move	$14,$13
	dext	$24,$24,0,32
	move	$15,$0
	move	$6,$0
	daddiu	$24,$24,1
	.align	3
.L106:
	blez	$17,.L101
	move	$2,$14

	lbu	$5,136($16)
	daddu	$8,$24,$14
	lbu	$4,137($16)
	.align	3
.L104:
	lbu	$3,0($2)
	sltu	$7,$3,$5
	beq	$7,$0,.L102
	nop

	move	$3,$5
.L102:
	sb	$3,136($16)
	andi	$5,$3,0x00ff
	lbu	$3,0($2)
	sltu	$7,$4,$3
	beq	$7,$0,.L103
	nop

	move	$3,$4
.L103:
	daddiu	$2,$2,1
	sb	$3,137($16)
	andi	$4,$3,0x00ff
	lbu	$3,-1($2)
	bne	$8,$2,.L104
	daddu	$6,$6,$3

.L101:
	addiu	$15,$15,1
	slt	$2,$15,$22
	bne	$2,$0,.L106
	daddu	$14,$14,$9

	bltz	$6,.L139
	andi	$2,$6,0x1

	dmtc1	$6,$f1
	cvt.d.l	$f1,$f1
.L138:
	div.d	$f0,$f1,$f0
	slt	$11,$11,2
	bne	$11,$0,.L141
	sdc1	$f0,144($16)

	ld	$2,0($sp)
	lw	$2,60($2)
	beq	$2,$0,.L107
	nop

.L142:
	lw	$3,80($16)
	lw	$2,76($16)
	sra	$3,$22,$3
	sd	$3,32($sp)
	blez	$3,.L144
	sra	$10,$17,$2

	addiu	$2,$10,-1
	ld	$20,64($16)
	move	$fp,$18
	dext	$2,$2,0,32
	sd	$13,40($sp)
	move	$25,$21
	daddiu	$2,$2,1
	move	$23,$0
	move	$9,$0
	move	$11,$0
	move	$12,$3
	move	$13,$2
	.align	3
.L115:
	blez	$10,.L109
	nop

	lbu	$8,152($16)
	move	$2,$25
	move	$3,$fp
	lbu	$7,153($16)
	daddu	$24,$13,$25
	lbu	$6,168($16)
	lbu	$5,169($16)
	.align	3
.L114:
	lbu	$4,0($2)
	sltu	$14,$4,$8
	beq	$14,$0,.L110
	nop

	move	$4,$8
.L110:
	sb	$4,152($16)
	andi	$8,$4,0x00ff
	lbu	$4,0($2)
	sltu	$14,$7,$4
	beq	$14,$0,.L111
	nop

	move	$4,$7
.L111:
	sb	$4,153($16)
	andi	$7,$4,0x00ff
	daddiu	$2,$2,1
	lbu	$4,0($3)
	lbu	$15,-1($2)
	sltu	$14,$4,$6
	beq	$14,$0,.L112
	daddu	$11,$11,$15

	move	$4,$6
.L112:
	sb	$4,168($16)
	andi	$6,$4,0x00ff
	lbu	$4,0($3)
	sltu	$14,$5,$4
	beq	$14,$0,.L113
	nop

	move	$4,$5
.L113:
	daddiu	$3,$3,1
	sb	$4,169($16)
	andi	$5,$4,0x00ff
	lbu	$4,-1($3)
	bne	$24,$2,.L114
	daddu	$9,$9,$4

.L109:
	addiu	$23,$23,1
	daddu	$25,$25,$20
	bne	$23,$12,.L115
	daddu	$fp,$fp,$20

	bltz	$11,.L117
	ld	$13,40($sp)

	dmtc1	$11,$f0
	bltz	$9,.L119
	cvt.d.l	$f2,$f0

.L176:
	dmtc1	$9,$f0
	cvt.d.l	$f1,$f0
.L108:
	ld	$2,32($sp)
	gsmultu	$2,$2,$10
	mtc1	$2,$f0
	cvt.d.w	$f0,$f0
	div.d	$f2,$f2,$f0
	div.d	$f0,$f1,$f0
	sdc1	$f2,160($16)
	sdc1	$f0,176($16)
.L107:
	blez	$22,.L120
	nop

.L141:
	ld	$3,8($sp)
	daddiu	$2,$17,1
	move	$6,$0
	daddiu	$7,$17,-1
	dext	$3,$3,0,32
	daddu	$12,$2,$3
	.align	3
.L124:
	blez	$19,.L121
	daddu	$2,$13,$17

	daddu	$5,$13,$7
	daddu	$4,$13,$12
	.align	3
.L122:
	lbu	$3,0($5)
	daddiu	$2,$2,1
	bne	$4,$2,.L122
	sb	$3,-1($2)

.L121:
	ld	$4,56($16)
	addiu	$6,$6,1
	slt	$2,$6,$22
	bne	$2,$0,.L124
	daddu	$13,$13,$4

	b	.L177
	addiu	$2,$22,-1

.L139:
	dsrl	$6,$6,1
	or	$2,$2,$6
	dmtc1	$2,$f1
	cvt.d.l	$f1,$f1
	b	.L138
	add.d	$f1,$f1,$f1

.L171:
	blez	$22,.L90
	move	$20,$13

	move	$18,$0
	.align	3
.L92:
	ld	$25,%call16(memcpy)($28)
	move	$5,$20
	move	$4,$14
	move	$6,$17
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	addiu	$18,$18,1

	ld	$9,56($16)
	move	$14,$2
	lw	$2,48($fp)
	daddu	$14,$14,$9
	bne	$22,$18,.L92
	daddu	$20,$20,$2

	ld	$2,0($sp)
	ld	$18,40($16)
	lw	$2,60($2)
	bne	$2,$0,.L135
	ld	$21,32($16)

	lw	$2,48($16)
	lw	$3,52($16)
	ld	$4,0($sp)
	ld	$13,24($16)
	gsmultu	$2,$2,$3
	lw	$11,44($4)
	dext	$2,$2,0,32
	dmtc1	$2,$f0
	b	.L134
	cvt.d.l	$f0,$f0

.L172:
	ld	$25,5928($20)
	jalr	$25
	move	$4,$13

	ld	$2,0($sp)
	ld	$21,32($16)
	lw	$4,60($2)
	beq	$4,$0,.L170
	ld	$18,40($16)

.L98:
	lw	$6,60($fp)
	lw	$5,52($fp)
	lw	$8,76($16)
	lw	$9,80($16)
	slt	$6,$6,9
	ld	$13,40($fp)
	dsrl	$5,$5,1
	ld	$4,32($fp)
	sra	$8,$17,$8
	ld	$7,64($16)
	sra	$9,$22,$9
	bne	$6,$0,.L99
	sd	$13,40($sp)

	move	$6,$21
	ld	$21,32($sp)
	li	$11,255			# 0xff
	ld	$25,5928($20)
	jalr	$25
	move	$10,$21

	ld	$13,40($sp)
	move	$6,$18
	lw	$9,80($16)
	li	$11,255			# 0xff
	move	$10,$21
	lw	$8,76($16)
	lw	$5,56($fp)
	move	$4,$13
	ld	$25,5928($20)
.L169:
	ld	$7,64($16)
	sra	$9,$22,$9
	sra	$8,$17,$8
	jalr	$25
	dsrl	$5,$5,1

.L168:
	lw	$2,52($16)
	lw	$7,48($16)
	ld	$13,24($16)
	ld	$21,32($16)
	b	.L95
	ld	$18,40($16)

.L117:
	andi	$2,$11,0x1
	dsrl	$11,$11,1
	or	$2,$2,$11
	dmtc1	$2,$f0
	cvt.d.l	$f2,$f0
	bgez	$9,.L176
	add.d	$f2,$f2,$f2

.L119:
	andi	$2,$9,0x1
	dsrl	$9,$9,1
	or	$2,$2,$9
	dmtc1	$2,$f0
	cvt.d.l	$f1,$f0
	b	.L108
	add.d	$f1,$f1,$f1

.L128:
	b	.L131
	ld	$4,64($16)

.L135:
	lw	$2,80($16)
	move	$8,$0
	ld	$7,32($fp)
	sra	$2,$22,$2
	blez	$2,.L170
	ld	$20,40($fp)

	sd	$23,32($sp)
	move	$23,$fp
	move	$fp,$7
	sd	$19,40($sp)
	move	$19,$8
	.align	3
.L94:
	lw	$6,76($16)
	move	$5,$fp
	move	$4,$21
	ld	$25,%call16(memcpy)($28)
	addiu	$19,$19,1
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	sra	$6,$17,$6

	lw	$6,76($16)
	move	$5,$20
	ld	$25,%call16(memcpy)($28)
	move	$4,$18
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	sra	$6,$17,$6

	lw	$2,80($16)
	ld	$3,64($16)
	lw	$5,52($23)
	lw	$4,56($23)
	sra	$2,$22,$2
	slt	$2,$19,$2
	daddu	$21,$21,$3
	daddu	$18,$18,$3
	daddu	$fp,$fp,$5
	bne	$2,$0,.L94
	daddu	$20,$20,$4

	ld	$23,32($sp)
	b	.L168
	ld	$19,40($sp)

.L99:
	move	$6,$21
	ld	$21,32($sp)
	li	$11,255			# 0xff
	ld	$25,5936($20)
	jalr	$25
	move	$10,$21

	ld	$13,40($sp)
	move	$6,$18
	lw	$9,80($16)
	li	$11,255			# 0xff
	move	$10,$21
	lw	$8,76($16)
	lw	$5,56($fp)
	move	$4,$13
	b	.L169
	ld	$25,5936($20)

.L144:
	dmtc1	$0,$f1
	b	.L108
	mov.d	$f2,$f1

.L90:
	ld	$2,0($sp)
	ld	$21,32($16)
	lw	$2,60($2)
	bne	$2,$0,.L135
	ld	$18,40($16)

	ld	$2,0($sp)
	move	$13,$14
	b	.L100
	lw	$11,44($2)

	.set	macro
	.set	reorder
	.end	_ZN4x2656PicYuv15copyFromPictureERK12x265_pictureRK10x265_paramii
	.size	_ZN4x2656PicYuv15copyFromPictureERK12x265_pictureRK10x265_paramii, .-_ZN4x2656PicYuv15copyFromPictureERK12x265_pictureRK10x265_paramii
	.align	2
	.align	3
	.globl	_ZN4x2659updateCRCEPKhRjjjl
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659updateCRCEPKhRjjjl
	.type	_ZN4x2659updateCRCEPKhRjjjl, @function
_ZN4x2659updateCRCEPKhRjjjl:
	.frame	$sp,16,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x10000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	beq	$6,$0,.L180
	nop

	addiu	$24,$7,-1
	move	$15,$0
	dext	$24,$24,0,32
	li	$13,-1			# 0xffffffffffffffff
	daddiu	$24,$24,1
	.align	3
.L185:
	beq	$7,$0,.L182
	nop

	lw	$2,0($5)
	daddu	$14,$24,$4
	move	$12,$4
	.align	3
.L184:
	li	$10,7			# 0x7
	.align	3
.L183:
	lbu	$9,0($12)
	ext	$11,$2,15,1
	sll	$3,$11,7
	addu	$3,$3,$11
	sra	$9,$9,$10
	sll	$3,$3,5
	andi	$9,$9,0x1
	addu	$3,$3,$11
	lsa	$2,$2,$9,1
	addiu	$10,$10,-1
	andi	$2,$2,0xffff
	xor	$2,$2,$3
	bne	$10,$13,.L183
	sw	$2,0($5)

	daddiu	$12,$12,1
	bne	$14,$12,.L184
	nop

.L182:
	addiu	$15,$15,1
	bne	$6,$15,.L185
	daddu	$4,$4,$8

.L180:
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN4x2659updateCRCEPKhRjjjl
	.size	_ZN4x2659updateCRCEPKhRjjjl, .-_ZN4x2659updateCRCEPKhRjjjl
	.align	2
	.align	3
	.globl	_ZN4x2659crcFinishERjPh
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659crcFinishERjPh
	.type	_ZN4x2659crcFinishERjPh, @function
_ZN4x2659crcFinishERjPh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,0($4)
	li	$7,16			# 0x10
	.align	3
.L197:
	ext	$6,$2,15,1
	sll	$2,$2,1
	sll	$3,$6,7
	andi	$2,$2,0xffff
	addu	$3,$3,$6
	addiu	$7,$7,-1
	sll	$3,$3,5
	addu	$3,$3,$6
	bne	$7,$0,.L197
	xor	$2,$3,$2

	srl	$3,$2,8
	sw	$2,0($4)
	sb	$3,0($5)
	lw	$2,0($4)
	jr	$31
	sb	$2,1($5)

	.set	macro
	.set	reorder
	.end	_ZN4x2659crcFinishERjPh
	.size	_ZN4x2659crcFinishERjPh, .-_ZN4x2659crcFinishERjPh
	.align	2
	.align	3
	.globl	_ZN4x26514updateChecksumEPKhRjjjlij
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26514updateChecksumEPKhRjjjlij
	.type	_ZN4x26514updateChecksumEPKhRjjjlij, @function
_ZN4x26514updateChecksumEPKhRjjjlij:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	gsmultu	$9,$9,$10
	addu	$6,$6,$9
	sltu	$2,$9,$6
	beq	$2,$0,.L211
	dext	$2,$9,0,32

	gsdmultu	$2,$2,$8
	daddu	$4,$4,$2
	.align	3
.L204:
	beq	$7,$0,.L202
	nop

	srl	$13,$9,8
	lw	$12,0($5)
	move	$11,$4
	xor	$13,$13,$9
	move	$3,$0
	andi	$13,$13,0x00ff
	.align	3
.L203:
	lbu	$14,0($11)
	srl	$2,$3,8
	xor	$15,$3,$13
	xor	$2,$2,$15
	addiu	$3,$3,1
	daddiu	$11,$11,1
	xor	$2,$2,$14
	andi	$2,$2,0x00ff
	addu	$12,$2,$12
	bne	$7,$3,.L203
	sw	$12,0($5)

.L202:
	addiu	$9,$9,1
	bne	$9,$6,.L204
	daddu	$4,$4,$8

.L211:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x26514updateChecksumEPKhRjjjlij
	.size	_ZN4x26514updateChecksumEPKhRjjjlij, .-_ZN4x26514updateChecksumEPKhRjjjlij
	.align	2
	.align	3
	.globl	_ZN4x26514checksumFinishEjPh
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26514checksumFinishEjPh
	.type	_ZN4x26514checksumFinishEjPh, @function
_ZN4x26514checksumFinishEjPh:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	srl	$3,$4,24
	srl	$2,$4,16
	sb	$4,3($5)
	srl	$4,$4,8
	sb	$3,0($5)
	sb	$2,1($5)
	jr	$31
	sb	$4,2($5)

	.set	macro
	.set	reorder
	.end	_ZN4x26514checksumFinishEjPh
	.size	_ZN4x26514checksumFinishEjPh, .-_ZN4x26514checksumFinishEjPh
	.align	2
	.align	3
	.globl	_ZN4x26514updateMD5PlaneERNS_10MD5ContextEPKhjjl
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26514updateMD5PlaneERNS_10MD5ContextEPKhjjl
	.type	_ZN4x26514updateMD5PlaneERNS_10MD5ContextEPKhjjl, @function
_ZN4x26514updateMD5PlaneERNS_10MD5ContextEPKhjjl:
	.frame	$sp,112,$31		# vars= 16, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26514updateMD5PlaneERNS_10MD5ContextEPKhjjl)))
	sd	$22,72($sp)
	daddu	$28,$28,$25
	andi	$22,$6,0x1f
	sd	$17,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26514updateMD5PlaneERNS_10MD5ContextEPKhjjl)))
	subu	$17,$6,$22
	sd	$31,104($sp)
	sd	$fp,96($sp)
	sd	$23,80($sp)
	sd	$21,64($sp)
	sd	$20,56($sp)
	sd	$19,48($sp)
	sd	$18,40($sp)
	beq	$7,$0,.L214
	sd	$16,24($sp)

	ld	$19,%got_page(_ZN4x265L9md5_blockILj1EEEvRNS_10MD5ContextEPKhj)($28)
	dext	$2,$17,0,32
	move	$fp,$8
	daddu	$2,$5,$2
	move	$20,$5
	sd	$7,8($sp)
	move	$18,$4
	move	$16,$0
	sd	$2,0($sp)
	move	$21,$0
	daddiu	$19,$19,%got_ofst(_ZN4x265L9md5_blockILj1EEEvRNS_10MD5ContextEPKhj)
	.align	3
.L218:
	beq	$17,$0,.L228
	ld	$2,0($sp)

	move	$23,$0
	dext	$5,$23,0,32
	.align	3
.L229:
	li	$6,32			# 0x20
	daddu	$5,$5,$16
	move	$4,$18
	daddu	$5,$20,$5
	move	$25,$19
	.reloc	1f,R_MIPS_JALR,_ZN4x265L9md5_blockILj1EEEvRNS_10MD5ContextEPKhj
1:	jalr	$25
	addiu	$23,$23,32

	sltu	$3,$23,$17
	bne	$3,$0,.L229
	dext	$5,$23,0,32

	ld	$2,0($sp)
.L228:
	move	$6,$22
	move	$4,$18
	move	$25,$19
	addiu	$21,$21,1
	daddu	$5,$2,$16
	.reloc	1f,R_MIPS_JALR,_ZN4x265L9md5_blockILj1EEEvRNS_10MD5ContextEPKhj
1:	jalr	$25
	daddu	$16,$16,$fp

	ld	$2,8($sp)
	bne	$2,$21,.L218
	nop

.L214:
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
	jr	$31
	daddiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	_ZN4x26514updateMD5PlaneERNS_10MD5ContextEPKhjjl
	.size	_ZN4x26514updateMD5PlaneERNS_10MD5ContextEPKhjjl, .-_ZN4x26514updateMD5PlaneERNS_10MD5ContextEPKhjjl
	.ident	"GCC: (GNU) 7.3.0"
