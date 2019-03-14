	.file	1 "shortyuv.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.align	3
	.globl	_ZN4x2658ShortYuvC2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2658ShortYuvC2Ev
	.type	_ZN4x2658ShortYuvC2Ev, @function
_ZN4x2658ShortYuvC2Ev:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sd	$0,0($4)
	sd	$0,8($4)
	jr	$31
	sd	$0,16($4)

	.set	macro
	.set	reorder
	.end	_ZN4x2658ShortYuvC2Ev
	.size	_ZN4x2658ShortYuvC2Ev, .-_ZN4x2658ShortYuvC2Ev
	.globl	_ZN4x2658ShortYuvC1Ev
	_ZN4x2658ShortYuvC1Ev = _ZN4x2658ShortYuvC2Ev
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
	.globl	_ZN4x2658ShortYuv6createEji
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2658ShortYuv6createEji
	.type	_ZN4x2658ShortYuv6createEji, @function
_ZN4x2658ShortYuv6createEji:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	addiu	$3,$6,-1
	sd	$18,24($sp)
	gsmultu	$18,$5,$5
	xori	$2,$6,0x1
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2658ShortYuv6createEji)))
	sltu	$3,$3,2
	daddu	$28,$28,$25
	sltu	$2,$2,1
	sd	$16,8($sp)
	sd	$31,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2658ShortYuv6createEji)))
	move	$16,$4
	sd	$20,40($sp)
	sd	$19,32($sp)
	dext	$18,$18,0,32
	sd	$17,16($sp)
	sw	$6,32($4)
	sw	$5,24($4)
	sw	$3,36($4)
	beq	$6,$0,.L5
	sw	$2,40($4)

	addu	$2,$3,$2
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	srl	$5,$5,$3
	dsrl	$17,$18,$2
	sw	$5,28($4)
	dlsa	$19,$17,$18,1
	dsll	$20,$19,1
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$20

	move	$8,$20
	beq	$2,$0,.L10
	sd	$2,0($16)

	ld	$31,56($sp)
	dsubu	$17,$19,$17
	dlsa	$18,$18,$2,1
	dlsa	$17,$17,$2,1
	sd	$18,8($16)
	li	$2,1			# 0x1
	sd	$17,16($16)
	ld	$28,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L5:
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	dsll	$18,$18,1
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$18

	beq	$2,$0,.L11
	sd	$2,0($16)

	ld	$31,56($sp)
	li	$2,1			# 0x1
	sd	$0,16($16)
	sd	$0,8($16)
	ld	$28,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L11:
	move	$8,$18
.L10:
	ld	$7,%got_page(.LC0)($28)
	move	$6,$0
	move	$4,$0
	ld	$5,%got_page(.LC1)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$7,%got_ofst(.LC0)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC1)

	ld	$31,56($sp)
	move	$2,$0
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
	.end	_ZN4x2658ShortYuv6createEji
	.size	_ZN4x2658ShortYuv6createEji, .-_ZN4x2658ShortYuv6createEji
	.align	2
	.align	3
	.globl	_ZN4x2658ShortYuv7destroyEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2658ShortYuv7destroyEv
	.type	_ZN4x2658ShortYuv7destroyEv, @function
_ZN4x2658ShortYuv7destroyEv:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	ld	$4,0($4)
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2658ShortYuv7destroyEv)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2658ShortYuv7destroyEv)))
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	nop

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN4x2658ShortYuv7destroyEv
	.size	_ZN4x2658ShortYuv7destroyEv, .-_ZN4x2658ShortYuv7destroyEv
	.align	2
	.align	3
	.globl	_ZN4x2658ShortYuv5clearEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2658ShortYuv5clearEv
	.type	_ZN4x2658ShortYuv5clearEv, @function
_ZN4x2658ShortYuv5clearEv:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$6,24($4)
	daddiu	$sp,$sp,-32
	move	$5,$0
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2658ShortYuv5clearEv)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	move	$16,$4
	gsmultu	$6,$6,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2658ShortYuv5clearEv)))
	ld	$4,0($4)
	ld	$25,%call16(memset)($28)
	sd	$31,24($sp)
	dext	$6,$6,0,32
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dsll	$6,$6,1

	lw	$6,28($16)
	move	$5,$0
	ld	$25,%call16(memset)($28)
	ld	$4,8($16)
	gsmultu	$6,$6,$6
	dext	$6,$6,0,32
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dsll	$6,$6,1

	lw	$6,28($16)
	move	$5,$0
	ld	$25,%call16(memset)($28)
	ld	$4,16($16)
	gsmultu	$6,$6,$6
	dext	$6,$6,0,32
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dsll	$6,$6,1

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2658ShortYuv5clearEv
	.size	_ZN4x2658ShortYuv5clearEv, .-_ZN4x2658ShortYuv5clearEv
	.align	2
	.align	3
	.globl	_ZN4x2658ShortYuv8subtractERKNS_3YuvES3_ji
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2658ShortYuv8subtractERKNS_3YuvES3_ji
	.type	_ZN4x2658ShortYuv8subtractERKNS_3YuvES3_ji, @function
_ZN4x2658ShortYuv8subtractERKNS_3YuvES3_ji:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	lwu	$9,24($6)
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2658ShortYuv8subtractERKNS_3YuvES3_ji)))
	daddu	$28,$28,$25
	sd	$20,32($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2658ShortYuv8subtractERKNS_3YuvES3_ji)))
	sd	$17,8($sp)
	addiu	$17,$7,-2
	ld	$20,%got_disp(_ZN4x26510primitivesE)($28)
	dsll	$2,$17,5
	dsubu	$2,$2,$17
	sd	$18,16($sp)
	move	$18,$5
	sd	$16,0($sp)
	move	$16,$4
	dlsa	$2,$2,$20,4
	sd	$21,40($sp)
	move	$21,$8
	sd	$19,24($sp)
	move	$19,$6
	ld	$7,0($6)
	ld	$4,0($4)
	lwu	$5,24($16)
	ld	$25,3240($2)
	lwu	$8,24($18)
	ld	$6,0($18)
	sd	$31,56($sp)
	jalr	$25
	nop

	lw	$3,32($16)
	beq	$3,$0,.L25
	ld	$31,56($sp)

	beq	$21,$0,.L25
	dlsa	$2,$3,$3,3

	dsll	$17,$17,6
	lwu	$9,28($19)
	dlsa	$2,$2,$3,4
	lwu	$8,28($18)
	dlsa	$2,$2,$17,4
	ld	$7,8($19)
	daddu	$2,$20,$2
	ld	$6,8($18)
	lwu	$5,28($16)
	ld	$25,8152($2)
	jalr	$25
	ld	$4,8($16)

	lw	$3,32($16)
	lwu	$9,28($19)
	lwu	$8,28($18)
	dlsa	$2,$3,$3,3
	ld	$7,16($19)
	dlsa	$2,$2,$3,4
	ld	$6,16($18)
	dlsa	$17,$2,$17,4
	lwu	$5,28($16)
	daddu	$20,$20,$17
	ld	$4,16($16)
	ld	$25,8152($20)
	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$25
	daddiu	$sp,$sp,64

	.align	3
.L25:
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
	.end	_ZN4x2658ShortYuv8subtractERKNS_3YuvES3_ji
	.size	_ZN4x2658ShortYuv8subtractERKNS_3YuvES3_ji, .-_ZN4x2658ShortYuv8subtractERKNS_3YuvES3_ji
	.align	2
	.align	3
	.globl	_ZNK4x2658ShortYuv18copyPartToPartLumaERS0_jj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2658ShortYuv18copyPartToPartLumaERS0_jj
	.type	_ZNK4x2658ShortYuv18copyPartToPartLumaERS0_jj, @function
_ZNK4x2658ShortYuv18copyPartToPartLumaERS0_jj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$13,%hi(%neg(%gp_rel(_ZNK4x2658ShortYuv18copyPartToPartLumaERS0_jj)))
	lw	$2,24($5)
	move	$11,$5
	daddu	$13,$13,$25
	dext	$6,$6,0,32
	lw	$3,24($4)
	daddiu	$13,$13,%lo(%neg(%gp_rel(_ZNK4x2658ShortYuv18copyPartToPartLumaERS0_jj)))
	addiu	$7,$7,-2
	ld	$5,%got_disp(_ZN4x26513g_zscanToPelXE)($13)
	dext	$7,$7,0,32
	ld	$9,%got_disp(_ZN4x26513g_zscanToPelYE)($13)
	dsll	$8,$7,5
	dsubu	$8,$8,$7
	dext	$7,$3,0,32
	daddu	$9,$9,$6
	daddu	$6,$5,$6
	lbu	$10,0($9)
	dext	$5,$2,0,32
	lbu	$9,0($6)
	ld	$6,0($4)
	move	$4,$9
	ld	$9,%got_disp(_ZN4x26510primitivesE)($13)
	move	$12,$4
	ld	$4,0($11)
	mul	$11,$3,$10
	mtlo	$12
	madd	$2,$10
	dlsa	$8,$8,$9,4
	ld	$25,3328($8)
	mflo	$2
	dlsa	$4,$2,$4,1
	addu	$3,$11,$12
	jr	$25
	dlsa	$6,$3,$6,1

	.set	macro
	.set	reorder
	.end	_ZNK4x2658ShortYuv18copyPartToPartLumaERS0_jj
	.size	_ZNK4x2658ShortYuv18copyPartToPartLumaERS0_jj, .-_ZNK4x2658ShortYuv18copyPartToPartLumaERS0_jj
	.align	2
	.align	3
	.globl	_ZNK4x2658ShortYuv18copyPartToPartLumaERNS_3YuvEjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2658ShortYuv18copyPartToPartLumaERNS_3YuvEjj
	.type	_ZNK4x2658ShortYuv18copyPartToPartLumaERNS_3YuvEjj, @function
_ZNK4x2658ShortYuv18copyPartToPartLumaERNS_3YuvEjj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$13,%hi(%neg(%gp_rel(_ZNK4x2658ShortYuv18copyPartToPartLumaERNS_3YuvEjj)))
	lw	$2,24($5)
	move	$11,$5
	daddu	$13,$13,$25
	dext	$6,$6,0,32
	lw	$3,24($4)
	daddiu	$13,$13,%lo(%neg(%gp_rel(_ZNK4x2658ShortYuv18copyPartToPartLumaERNS_3YuvEjj)))
	addiu	$7,$7,-2
	ld	$5,%got_disp(_ZN4x26513g_zscanToPelXE)($13)
	dext	$7,$7,0,32
	ld	$9,%got_disp(_ZN4x26513g_zscanToPelYE)($13)
	dsll	$8,$7,5
	dsubu	$8,$8,$7
	dext	$7,$3,0,32
	daddu	$9,$9,$6
	daddu	$6,$5,$6
	lbu	$10,0($9)
	dext	$5,$2,0,32
	lbu	$9,0($6)
	ld	$6,0($4)
	move	$4,$9
	ld	$9,%got_disp(_ZN4x26510primitivesE)($13)
	move	$12,$4
	ld	$4,0($11)
	mul	$11,$3,$10
	mtlo	$12
	madd	$2,$10
	dlsa	$8,$8,$9,4
	ld	$25,3312($8)
	mflo	$2
	daddu	$4,$4,$2
	addu	$3,$11,$12
	jr	$25
	dlsa	$6,$3,$6,1

	.set	macro
	.set	reorder
	.end	_ZNK4x2658ShortYuv18copyPartToPartLumaERNS_3YuvEjj
	.size	_ZNK4x2658ShortYuv18copyPartToPartLumaERNS_3YuvEjj, .-_ZNK4x2658ShortYuv18copyPartToPartLumaERNS_3YuvEjj
	.align	2
	.align	3
	.globl	_ZNK4x2658ShortYuv20copyPartToPartChromaERS0_jj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2658ShortYuv20copyPartToPartChromaERS0_jj
	.type	_ZNK4x2658ShortYuv20copyPartToPartChromaERS0_jj, @function
_ZNK4x2658ShortYuv20copyPartToPartChromaERS0_jj:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	dext	$6,$6,0,32
	lw	$8,40($4)
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2658ShortYuv20copyPartToPartChromaERS0_jj)))
	daddu	$28,$28,$25
	sd	$18,16($sp)
	move	$18,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2658ShortYuv20copyPartToPartChromaERS0_jj)))
	sd	$16,0($sp)
	move	$16,$4
	ld	$2,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	ld	$3,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	lw	$5,36($4)
	sd	$17,8($sp)
	addiu	$17,$7,-2
	daddu	$3,$3,$6
	daddu	$6,$2,$6
	lw	$7,28($16)
	lbu	$4,0($3)
	daddiu	$17,$17,32
	lbu	$3,0($6)
	dsll	$17,$17,6
	lw	$2,36($18)
	sra	$5,$4,$5
	lw	$6,40($18)
	sra	$8,$3,$8
	lw	$11,28($18)
	sra	$2,$4,$2
	mul	$4,$8,$7
	lw	$10,32($16)
	dext	$7,$7,0,32
	sra	$3,$3,$6
	mtlo	$2
	sd	$19,24($sp)
	madd	$3,$11
	ld	$19,%got_disp(_ZN4x26510primitivesE)($28)
	dlsa	$9,$10,$10,3
	ld	$6,8($16)
	dlsa	$9,$9,$10,4
	sd	$21,40($sp)
	dlsa	$9,$9,$17,4
	sd	$20,32($sp)
	daddu	$9,$19,$9
	ld	$21,16($16)
	ld	$20,16($18)
	ld	$25,6136($9)
	mflo	$2
	sd	$31,56($sp)
	dsll	$2,$2,1
	daddu	$20,$20,$2
	addu	$8,$4,$5
	ld	$4,8($18)
	dext	$5,$11,0,32
	dsll	$3,$8,1
	daddu	$6,$6,$3
	daddu	$21,$21,$3
	jalr	$25
	daddu	$4,$4,$2

	lw	$8,32($16)
	move	$6,$21
	lwu	$7,28($16)
	move	$4,$20
	lwu	$5,28($18)
	dlsa	$2,$8,$8,3
	ld	$31,56($sp)
	dlsa	$2,$2,$8,4
	ld	$28,48($sp)
	dlsa	$17,$2,$17,4
	ld	$21,40($sp)
	daddu	$17,$19,$17
	ld	$20,32($sp)
	ld	$25,6136($17)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$25
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	_ZNK4x2658ShortYuv20copyPartToPartChromaERS0_jj
	.size	_ZNK4x2658ShortYuv20copyPartToPartChromaERS0_jj, .-_ZNK4x2658ShortYuv20copyPartToPartChromaERS0_jj
	.align	2
	.align	3
	.globl	_ZNK4x2658ShortYuv20copyPartToPartChromaERNS_3YuvEjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2658ShortYuv20copyPartToPartChromaERNS_3YuvEjj
	.type	_ZNK4x2658ShortYuv20copyPartToPartChromaERNS_3YuvEjj, @function
_ZNK4x2658ShortYuv20copyPartToPartChromaERNS_3YuvEjj:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	dext	$6,$6,0,32
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2658ShortYuv20copyPartToPartChromaERNS_3YuvEjj)))
	addiu	$7,$7,-2
	daddu	$28,$28,$25
	sd	$16,0($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2658ShortYuv20copyPartToPartChromaERNS_3YuvEjj)))
	sd	$18,16($sp)
	dsll	$18,$7,6
	ld	$3,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	ld	$2,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	sd	$17,8($sp)
	move	$17,$5
	daddu	$3,$3,$6
	lw	$7,36($16)
	lbu	$5,0($3)
	daddu	$6,$2,$6
	lbu	$3,0($6)
	lw	$4,40($4)
	lw	$8,28($16)
	sra	$6,$5,$7
	mtlo	$6
	lw	$9,32($16)
	sra	$4,$3,$4
	lw	$11,44($17)
	madd	$4,$8
	lw	$10,28($17)
	dext	$7,$8,0,32
	dlsa	$8,$9,$9,3
	sd	$19,24($sp)
	sra	$3,$3,$11
	ld	$19,%got_disp(_ZN4x26510primitivesE)($28)
	dlsa	$8,$8,$9,4
	lw	$2,40($17)
	dlsa	$8,$8,$18,4
	ld	$6,8($16)
	daddu	$8,$19,$8
	ld	$4,8($17)
	sd	$21,40($sp)
	sra	$2,$5,$2
	mflo	$12
	mul	$9,$3,$10
	sd	$20,32($sp)
	dext	$5,$10,0,32
	ld	$21,16($16)
	move	$3,$12
	ld	$20,16($17)
	dsll	$3,$3,1
	ld	$25,8176($8)
	daddu	$6,$6,$3
	sd	$31,56($sp)
	daddu	$21,$21,$3
	addu	$2,$9,$2
	daddu	$4,$4,$2
	jalr	$25
	daddu	$20,$20,$2

	lw	$8,32($16)
	move	$6,$21
	lwu	$7,28($16)
	move	$4,$20
	lwu	$5,28($17)
	dlsa	$2,$8,$8,3
	ld	$31,56($sp)
	dlsa	$2,$2,$8,4
	ld	$28,48($sp)
	dlsa	$2,$2,$18,4
	ld	$21,40($sp)
	daddu	$2,$19,$2
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	ld	$25,8176($2)
	jr	$25
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	_ZNK4x2658ShortYuv20copyPartToPartChromaERNS_3YuvEjj
	.size	_ZNK4x2658ShortYuv20copyPartToPartChromaERNS_3YuvEjj, .-_ZNK4x2658ShortYuv20copyPartToPartChromaERNS_3YuvEjj
	.ident	"GCC: (GNU) 7.3.0"
