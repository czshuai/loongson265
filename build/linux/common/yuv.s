	.file	1 "yuv.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.align	3
	.globl	_ZN4x2653YuvC2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2653YuvC2Ev
	.type	_ZN4x2653YuvC2Ev, @function
_ZN4x2653YuvC2Ev:
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
	.end	_ZN4x2653YuvC2Ev
	.size	_ZN4x2653YuvC2Ev, .-_ZN4x2653YuvC2Ev
	.globl	_ZN4x2653YuvC1Ev
	_ZN4x2653YuvC1Ev = _ZN4x2653YuvC2Ev
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
	.globl	_ZN4x2653Yuv6createEji
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2653Yuv6createEji
	.type	_ZN4x2653Yuv6createEji, @function
_ZN4x2653Yuv6createEji:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sra	$2,$5,2
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2653Yuv6createEji)))
	addiu	$2,$2,-1
	daddu	$28,$28,$25
	sd	$16,0($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2653Yuv6createEji)))
	sd	$31,40($sp)
	lsa	$2,$2,$2,4
	sd	$19,24($sp)
	addiu	$9,$6,-1
	xori	$8,$6,0x1
	sd	$18,16($sp)
	sltu	$9,$9,2
	sltu	$8,$8,1
	sd	$17,8($sp)
	move	$3,$16
	daddiu	$7,$16,1536
	sw	$6,36($4)
	ld	$4,%got_disp(_ZN4x26521lumaPartitionMapTableE)($28)
	sw	$9,40($16)
	sw	$8,44($16)
	daddu	$4,$4,$2
	sw	$5,24($16)
	move	$2,$16
	lbu	$4,0($4)
	sw	$4,32($16)
	daddiu	$4,$2,96
	.align	3
.L5:
	sd	$0,48($2)
	daddiu	$2,$2,8
	bne	$2,$4,.L5
	nop

	bne	$2,$7,.L5
	daddiu	$4,$2,96

	daddiu	$4,$3,96
	.align	3
.L9:
	sd	$0,1584($3)
	daddiu	$3,$3,8
	bne	$3,$4,.L9
	nop

	bne	$3,$2,.L9
	daddiu	$4,$3,96

	bne	$6,$0,.L12
	gsmultu	$17,$5,$5

	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	addiu	$17,$17,8
	dext	$17,$17,0,32
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$17

	move	$8,$17
	beq	$2,$0,.L18
	sd	$2,0($16)

	ld	$31,40($sp)
	li	$2,1			# 0x1
	sd	$0,16($16)
	sd	$0,8($16)
	sw	$0,28($16)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

.L12:
	addu	$8,$9,$8
	dext	$17,$17,0,32
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	dsrl	$18,$17,$8
	daddiu	$8,$17,8
	dlsa	$19,$18,$8,1
	srl	$5,$5,$9
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	sw	$5,28($16)

	beq	$2,$0,.L19
	sd	$2,0($16)

	ld	$31,40($sp)
	daddu	$18,$17,$18
	daddu	$17,$2,$17
	daddu	$18,$2,$18
	sd	$17,8($16)
	li	$2,1			# 0x1
	sd	$18,16($16)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

.L19:
	move	$8,$19
.L18:
	ld	$7,%got_page(.LC0)($28)
	move	$6,$0
	move	$4,$0
	ld	$5,%got_page(.LC1)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$7,%got_ofst(.LC0)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC1)

	ld	$31,40($sp)
	move	$2,$0
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN4x2653Yuv6createEji
	.size	_ZN4x2653Yuv6createEji, .-_ZN4x2653Yuv6createEji
	.align	2
	.align	3
	.globl	_ZN4x2653Yuv7destroyEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2653Yuv7destroyEv
	.type	_ZN4x2653Yuv7destroyEv, @function
_ZN4x2653Yuv7destroyEv:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	ld	$4,0($4)
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2653Yuv7destroyEv)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2653Yuv7destroyEv)))
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
	.end	_ZN4x2653Yuv7destroyEv
	.size	_ZN4x2653Yuv7destroyEv, .-_ZN4x2653Yuv7destroyEv
	.align	2
	.align	3
	.globl	_ZNK4x2653Yuv12copyToPicYuvERNS_6PicYuvEjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2653Yuv12copyToPicYuvERNS_6PicYuvEjj
	.type	_ZNK4x2653Yuv12copyToPicYuvERNS_6PicYuvEjj, @function
_ZNK4x2653Yuv12copyToPicYuvERNS_6PicYuvEjj:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	lw	$8,32($4)
	dext	$6,$6,0,32
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2653Yuv12copyToPicYuvERNS_6PicYuvEjj)))
	dext	$7,$7,0,32
	ld	$3,88($5)
	daddu	$28,$28,$25
	sd	$17,16($sp)
	move	$17,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2653Yuv12copyToPicYuvERNS_6PicYuvEjj)))
	ld	$5,104($5)
	dsll	$2,$8,5
	sd	$20,40($sp)
	dsll	$20,$6,3
	dsubu	$2,$2,$8
	sd	$19,32($sp)
	dsll	$19,$7,3
	daddu	$3,$3,$20
	sd	$18,24($sp)
	daddu	$5,$5,$19
	ld	$18,%got_disp(_ZN4x26510primitivesE)($28)
	ld	$8,0($5)
	ld	$3,0($3)
	sd	$16,8($sp)
	dlsa	$2,$2,$18,4
	move	$16,$4
	ld	$4,24($17)
	lwu	$7,24($16)
	daddu	$3,$3,$8
	ld	$25,3336($2)
	ld	$6,0($16)
	ld	$5,56($17)
	sd	$31,56($sp)
	jalr	$25
	daddu	$4,$4,$3

	lw	$4,36($16)
	beq	$4,$0,.L22
	dlsa	$2,$4,$4,3

	lw	$3,32($16)
	ld	$6,96($17)
	dlsa	$2,$2,$4,4
	ld	$7,112($17)
	daddiu	$3,$3,32
	ld	$4,32($17)
	daddu	$20,$6,$20
	dsll	$3,$3,6
	ld	$9,40($17)
	daddu	$19,$7,$19
	ld	$8,0($20)
	dlsa	$2,$2,$3,4
	ld	$3,0($19)
	daddu	$2,$18,$2
	lwu	$7,28($16)
	ld	$6,8($16)
	ld	$5,64($17)
	daddu	$3,$8,$3
	ld	$25,6144($2)
	daddu	$4,$4,$3
	jalr	$25
	daddu	$19,$9,$3

	lw	$5,36($16)
	move	$4,$19
	lw	$3,32($16)
	lwu	$7,28($16)
	dlsa	$2,$5,$5,3
	ld	$6,16($16)
	daddiu	$3,$3,32
	dlsa	$2,$2,$5,4
	ld	$31,56($sp)
	dsll	$3,$3,6
	ld	$5,64($17)
	dlsa	$2,$2,$3,4
	ld	$28,48($sp)
	daddu	$18,$18,$2
	ld	$20,40($sp)
	ld	$25,6144($18)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$25
	daddiu	$sp,$sp,64

	.align	3
.L22:
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
	.end	_ZNK4x2653Yuv12copyToPicYuvERNS_6PicYuvEjj
	.size	_ZNK4x2653Yuv12copyToPicYuvERNS_6PicYuvEjj, .-_ZNK4x2653Yuv12copyToPicYuvERNS_6PicYuvEjj
	.align	2
	.align	3
	.globl	_ZN4x2653Yuv14copyFromPicYuvERKNS_6PicYuvEjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2653Yuv14copyFromPicYuvERKNS_6PicYuvEjj
	.type	_ZN4x2653Yuv14copyFromPicYuvERKNS_6PicYuvEjj, @function
_ZN4x2653Yuv14copyFromPicYuvERKNS_6PicYuvEjj:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	dext	$6,$6,0,32
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2653Yuv14copyFromPicYuvERKNS_6PicYuvEjj)))
	dext	$7,$7,0,32
	sd	$17,16($sp)
	move	$17,$5
	daddu	$28,$28,$25
	lw	$5,32($4)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2653Yuv14copyFromPicYuvERKNS_6PicYuvEjj)))
	sd	$16,8($sp)
	move	$16,$4
	ld	$3,88($17)
	ld	$4,104($17)
	dsll	$2,$5,5
	sd	$20,40($sp)
	dsll	$20,$6,3
	dsubu	$2,$2,$5
	sd	$19,32($sp)
	dsll	$19,$7,3
	daddu	$3,$3,$20
	sd	$18,24($sp)
	daddu	$4,$4,$19
	ld	$18,%got_disp(_ZN4x26510primitivesE)($28)
	ld	$8,0($4)
	ld	$3,0($3)
	ld	$6,24($17)
	dlsa	$2,$2,$18,4
	ld	$4,0($16)
	ld	$7,56($17)
	daddu	$3,$3,$8
	ld	$25,3336($2)
	lwu	$5,24($16)
	sd	$31,56($sp)
	jalr	$25
	daddu	$6,$6,$3

	lw	$4,36($16)
	beq	$4,$0,.L25
	dlsa	$2,$4,$4,3

	lw	$3,32($16)
	ld	$5,96($17)
	dlsa	$2,$2,$4,4
	ld	$7,112($17)
	daddiu	$3,$3,32
	ld	$6,32($17)
	daddu	$20,$5,$20
	dsll	$3,$3,6
	ld	$9,40($17)
	daddu	$19,$7,$19
	ld	$8,0($20)
	dlsa	$2,$2,$3,4
	ld	$3,0($19)
	daddu	$2,$18,$2
	ld	$7,64($17)
	lwu	$5,28($16)
	ld	$4,8($16)
	daddu	$3,$8,$3
	ld	$25,6144($2)
	daddu	$6,$6,$3
	jalr	$25
	daddu	$19,$9,$3

	lw	$4,36($16)
	move	$6,$19
	lw	$3,32($16)
	ld	$7,64($17)
	dlsa	$2,$4,$4,3
	lwu	$5,28($16)
	daddiu	$3,$3,32
	dlsa	$2,$2,$4,4
	ld	$31,56($sp)
	dsll	$3,$3,6
	ld	$4,16($16)
	dlsa	$2,$2,$3,4
	ld	$28,48($sp)
	daddu	$18,$18,$2
	ld	$20,40($sp)
	ld	$25,6144($18)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$25
	daddiu	$sp,$sp,64

	.align	3
.L25:
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
	.end	_ZN4x2653Yuv14copyFromPicYuvERKNS_6PicYuvEjj
	.size	_ZN4x2653Yuv14copyFromPicYuvERKNS_6PicYuvEjj, .-_ZN4x2653Yuv14copyFromPicYuvERKNS_6PicYuvEjj
	.align	2
	.align	3
	.globl	_ZN4x2653Yuv11copyFromYuvERKS0_
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2653Yuv11copyFromYuvERKS0_
	.type	_ZN4x2653Yuv11copyFromYuvERKS0_, @function
_ZN4x2653Yuv11copyFromYuvERKS0_:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	lw	$3,32($4)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2653Yuv11copyFromYuvERKS0_)))
	daddu	$28,$28,$25
	sd	$18,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2653Yuv11copyFromYuvERKS0_)))
	dsll	$2,$3,5
	sd	$17,16($sp)
	ld	$18,%got_disp(_ZN4x26510primitivesE)($28)
	dsubu	$2,$2,$3
	move	$17,$5
	sd	$16,8($sp)
	move	$16,$4
	lwu	$7,24($5)
	dlsa	$2,$2,$18,4
	ld	$6,0($5)
	ld	$25,3336($2)
	lwu	$5,24($4)
	ld	$4,0($4)
	sd	$31,40($sp)
	jalr	$25
	nop

	lw	$4,36($16)
	beq	$4,$0,.L28
	dlsa	$2,$4,$4,3

	lw	$3,32($16)
	dlsa	$2,$2,$4,4
	lwu	$7,28($17)
	ld	$6,8($17)
	daddiu	$3,$3,32
	lwu	$5,28($16)
	dsll	$3,$3,6
	dlsa	$2,$2,$3,4
	daddu	$2,$18,$2
	ld	$25,6144($2)
	jalr	$25
	ld	$4,8($16)

	lw	$4,36($16)
	lw	$3,32($16)
	lwu	$7,28($17)
	dlsa	$2,$4,$4,3
	ld	$6,16($17)
	daddiu	$3,$3,32
	dlsa	$2,$2,$4,4
	lwu	$5,28($16)
	dsll	$3,$3,6
	ld	$4,16($16)
	dlsa	$2,$2,$3,4
	ld	$31,40($sp)
	daddu	$18,$18,$2
	ld	$28,32($sp)
	ld	$25,6144($18)
	ld	$17,16($sp)
	ld	$18,24($sp)
	ld	$16,8($sp)
	jr	$25
	daddiu	$sp,$sp,48

	.align	3
.L28:
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN4x2653Yuv11copyFromYuvERKS0_
	.size	_ZN4x2653Yuv11copyFromYuvERKS0_, .-_ZN4x2653Yuv11copyFromYuvERKS0_
	.align	2
	.align	3
	.globl	_ZN4x2653Yuv13copyPUFromYuvERKS0_jib
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2653Yuv13copyPUFromYuvERKS0_jib
	.type	_ZN4x2653Yuv13copyPUFromYuvERKS0_jib, @function
_ZN4x2653Yuv13copyPUFromYuvERKS0_jib:
	.frame	$sp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	lw	$2,24($5)
	dext	$6,$6,0,32
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2653Yuv13copyPUFromYuvERKS0_jib)))
	dsll	$3,$7,7
	daddu	$28,$28,$25
	sd	$18,24($sp)
	move	$18,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2653Yuv13copyPUFromYuvERKS0_jib)))
	sd	$17,16($sp)
	move	$17,$4
	ld	$5,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	ld	$4,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	sd	$20,40($sp)
	daddu	$5,$5,$6
	ld	$20,%got_disp(_ZN4x26510primitivesE)($28)
	daddu	$6,$4,$6
	sd	$16,8($sp)
	lbu	$16,0($6)
	daddu	$3,$20,$3
	sd	$21,48($sp)
	ld	$25,112($3)
	mul	$3,$16,$2
	lbu	$21,0($5)
	ld	$6,0($18)
	lwu	$5,24($17)
	ld	$4,0($17)
	sd	$19,32($sp)
	move	$19,$7
	dext	$7,$2,0,32
	sd	$22,56($sp)
	move	$22,$8
	sd	$31,72($sp)
	addu	$2,$3,$21
	jalr	$25
	daddu	$6,$6,$2

	beq	$22,$0,.L31
	dlsa	$19,$19,$19,2

	lw	$3,44($18)
	lw	$2,40($18)
	dsll	$19,$19,4
	lw	$7,28($18)
	sra	$16,$16,$3
	lw	$4,36($17)
	sra	$21,$21,$2
	ld	$6,8($18)
	mul	$2,$16,$7
	ld	$3,16($18)
	dext	$7,$7,0,32
	lwu	$5,28($17)
	addu	$16,$2,$21
	dlsa	$2,$4,$4,3
	dlsa	$2,$2,$4,4
	ld	$4,8($17)
	daddu	$6,$6,$16
	dlsa	$2,$2,$19,4
	daddu	$2,$20,$2
	ld	$25,6200($2)
	jalr	$25
	daddu	$16,$3,$16

	lw	$3,36($17)
	move	$6,$16
	lwu	$7,28($18)
	lwu	$5,28($17)
	dlsa	$2,$3,$3,3
	ld	$4,16($17)
	dlsa	$2,$2,$3,4
	ld	$31,72($sp)
	dlsa	$19,$2,$19,4
	ld	$28,64($sp)
	daddu	$2,$20,$19
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	ld	$25,6200($2)
	jr	$25
	daddiu	$sp,$sp,80

	.align	3
.L31:
	ld	$31,72($sp)
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

	.set	macro
	.set	reorder
	.end	_ZN4x2653Yuv13copyPUFromYuvERKS0_jib
	.size	_ZN4x2653Yuv13copyPUFromYuvERKS0_jib, .-_ZN4x2653Yuv13copyPUFromYuvERKS0_jib
	.align	2
	.align	3
	.globl	_ZNK4x2653Yuv13copyToPartYuvERS0_j
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2653Yuv13copyToPartYuvERS0_j
	.type	_ZNK4x2653Yuv13copyToPartYuvERS0_j, @function
_ZNK4x2653Yuv13copyToPartYuvERS0_j:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	lw	$2,24($5)
	dext	$6,$6,0,32
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2653Yuv13copyToPartYuvERS0_j)))
	daddu	$28,$28,$25
	lw	$7,32($4)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2653Yuv13copyToPartYuvERS0_j)))
	sd	$18,24($sp)
	move	$18,$5
	sd	$16,8($sp)
	move	$16,$4
	ld	$5,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	dsll	$3,$7,5
	ld	$4,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	dsubu	$3,$3,$7
	sd	$17,16($sp)
	daddu	$5,$5,$6
	sd	$19,32($sp)
	daddu	$6,$4,$6
	ld	$19,%got_disp(_ZN4x26510primitivesE)($28)
	lbu	$17,0($6)
	sd	$20,40($sp)
	lbu	$20,0($5)
	dlsa	$3,$3,$19,4
	dext	$5,$2,0,32
	mul	$6,$17,$2
	ld	$4,0($18)
	ld	$25,3336($3)
	lwu	$7,24($16)
	sd	$31,56($sp)
	addu	$2,$6,$20
	ld	$6,0($16)
	jalr	$25
	daddu	$4,$4,$2

	lw	$3,36($16)
	beq	$3,$0,.L34
	dlsa	$2,$3,$3,3

	lw	$6,44($18)
	lw	$5,28($18)
	dlsa	$2,$2,$3,4
	lw	$3,32($16)
	sra	$17,$17,$6
	lw	$4,40($18)
	mul	$6,$17,$5
	ld	$8,16($18)
	dext	$5,$5,0,32
	daddiu	$3,$3,32
	lwu	$7,28($16)
	dsll	$3,$3,6
	sra	$20,$20,$4
	ld	$4,8($18)
	dlsa	$2,$2,$3,4
	daddu	$2,$19,$2
	ld	$25,6144($2)
	addu	$17,$6,$20
	ld	$6,8($16)
	daddu	$4,$4,$17
	jalr	$25
	daddu	$17,$8,$17

	lw	$5,36($16)
	move	$4,$17
	lw	$3,32($16)
	lwu	$7,28($16)
	dlsa	$2,$5,$5,3
	ld	$6,16($16)
	daddiu	$3,$3,32
	dlsa	$2,$2,$5,4
	ld	$31,56($sp)
	dsll	$3,$3,6
	lwu	$5,28($18)
	dlsa	$2,$2,$3,4
	ld	$28,48($sp)
	daddu	$19,$19,$2
	ld	$20,40($sp)
	ld	$25,6144($19)
	ld	$18,24($sp)
	ld	$19,32($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$25
	daddiu	$sp,$sp,64

	.align	3
.L34:
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
	.end	_ZNK4x2653Yuv13copyToPartYuvERS0_j
	.size	_ZNK4x2653Yuv13copyToPartYuvERS0_j, .-_ZNK4x2653Yuv13copyToPartYuvERS0_j
	.align	2
	.align	3
	.globl	_ZNK4x2653Yuv13copyPartToYuvERS0_j
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2653Yuv13copyPartToYuvERS0_j
	.type	_ZNK4x2653Yuv13copyPartToYuvERS0_j, @function
_ZNK4x2653Yuv13copyPartToYuvERS0_j:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	lw	$2,24($4)
	dext	$6,$6,0,32
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2653Yuv13copyPartToYuvERS0_j)))
	daddu	$28,$28,$25
	sd	$17,16($sp)
	move	$17,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2653Yuv13copyPartToYuvERS0_j)))
	sd	$16,8($sp)
	move	$16,$4
	ld	$5,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	dext	$7,$2,0,32
	ld	$4,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	sd	$18,24($sp)
	daddu	$5,$5,$6
	lw	$8,32($17)
	daddu	$6,$4,$6
	sd	$19,32($sp)
	lbu	$18,0($6)
	ld	$19,%got_disp(_ZN4x26510primitivesE)($28)
	dsll	$3,$8,5
	sd	$20,40($sp)
	dsubu	$3,$3,$8
	mul	$4,$18,$2
	lbu	$20,0($5)
	dlsa	$3,$3,$19,4
	ld	$6,0($16)
	ld	$25,3336($3)
	lwu	$5,24($17)
	sd	$31,56($sp)
	addu	$2,$4,$20
	ld	$4,0($17)
	jalr	$25
	daddu	$6,$6,$2

	lw	$3,36($16)
	beq	$3,$0,.L37
	dlsa	$2,$3,$3,3

	lw	$5,44($16)
	lw	$4,40($16)
	dlsa	$2,$2,$3,4
	lw	$7,28($16)
	sra	$18,$18,$5
	lw	$3,32($17)
	sra	$20,$20,$4
	ld	$6,8($16)
	mul	$4,$18,$7
	ld	$8,16($16)
	dext	$7,$7,0,32
	daddiu	$3,$3,32
	lwu	$5,28($17)
	dsll	$3,$3,6
	dlsa	$2,$2,$3,4
	daddu	$2,$19,$2
	ld	$25,6144($2)
	addu	$18,$4,$20
	ld	$4,8($17)
	daddu	$6,$6,$18
	ld	$20,16($17)
	jalr	$25
	daddu	$18,$8,$18

	lw	$8,36($16)
	move	$6,$18
	lw	$3,32($17)
	move	$4,$20
	lwu	$7,28($16)
	dlsa	$2,$8,$8,3
	lwu	$5,28($17)
	daddiu	$3,$3,32
	dlsa	$2,$2,$8,4
	ld	$31,56($sp)
	dsll	$3,$3,6
	ld	$28,48($sp)
	dlsa	$2,$2,$3,4
	ld	$20,40($sp)
	daddu	$19,$19,$2
	ld	$18,24($sp)
	ld	$25,6144($19)
	ld	$17,16($sp)
	ld	$19,32($sp)
	ld	$16,8($sp)
	jr	$25
	daddiu	$sp,$sp,64

	.align	3
.L37:
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
	.end	_ZNK4x2653Yuv13copyPartToYuvERS0_j
	.size	_ZNK4x2653Yuv13copyPartToYuvERS0_j, .-_ZNK4x2653Yuv13copyPartToYuvERS0_j
	.align	2
	.align	3
	.globl	_ZN4x2653Yuv7addClipERKS0_RKNS_8ShortYuvEji
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2653Yuv7addClipERKS0_RKNS_8ShortYuvEji
	.type	_ZN4x2653Yuv7addClipERKS0_RKNS_8ShortYuvEji, @function
_ZN4x2653Yuv7addClipERKS0_RKNS_8ShortYuvEji:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	addiu	$7,$7,-2
	lwu	$9,24($6)
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2653Yuv7addClipERKS0_RKNS_8ShortYuvEji)))
	daddu	$28,$28,$25
	sd	$19,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2653Yuv7addClipERKS0_RKNS_8ShortYuvEji)))
	sd	$17,8($sp)
	dext	$17,$7,0,32
	ld	$19,%got_disp(_ZN4x26510primitivesE)($28)
	dsll	$2,$17,5
	dsubu	$2,$2,$17
	sd	$18,16($sp)
	move	$18,$5
	sd	$16,0($sp)
	move	$16,$4
	dlsa	$2,$2,$19,4
	sd	$21,40($sp)
	move	$21,$8
	sd	$20,32($sp)
	move	$20,$6
	ld	$25,3248($2)
	ld	$7,0($6)
	ld	$4,0($4)
	lwu	$5,24($16)
	lwu	$8,24($18)
	ld	$6,0($18)
	sd	$31,56($sp)
	jalr	$25
	nop

	lw	$2,36($16)
	bne	$2,$0,.L44
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

	.align	3
.L44:
	ld	$4,8($16)
	lwu	$5,28($16)
	ld	$6,8($18)
	beq	$21,$0,.L42
	lwu	$8,28($18)

	dlsa	$3,$2,$2,3
	dsll	$17,$17,6
	lwu	$9,28($20)
	dlsa	$2,$3,$2,4
	dlsa	$2,$2,$17,4
	daddu	$2,$19,$2
	ld	$25,8160($2)
	jalr	$25
	ld	$7,8($20)

	lw	$3,36($16)
	lwu	$9,28($20)
	lwu	$8,28($18)
	dlsa	$2,$3,$3,3
	ld	$7,16($20)
	dlsa	$2,$2,$3,4
	ld	$6,16($18)
	dlsa	$17,$2,$17,4
	lwu	$5,28($16)
	daddu	$19,$19,$17
	ld	$4,16($16)
	ld	$25,8160($19)
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
.L42:
	lw	$9,32($16)
	dlsa	$3,$2,$2,3
	dlsa	$2,$3,$2,4
	daddiu	$3,$9,32
	dsll	$3,$3,6
	dlsa	$2,$2,$3,4
	daddu	$2,$19,$2
	ld	$25,6144($2)
	jalr	$25
	move	$7,$8

	lw	$3,36($16)
	lw	$2,32($16)
	lwu	$7,28($18)
	dlsa	$17,$3,$3,3
	ld	$6,16($18)
	daddiu	$2,$2,32
	dlsa	$17,$17,$3,4
	lwu	$5,28($16)
	dsll	$2,$2,6
	ld	$4,16($16)
	dlsa	$17,$17,$2,4
	ld	$31,56($sp)
	daddu	$19,$19,$17
	ld	$28,48($sp)
	ld	$25,6144($19)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$25
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	_ZN4x2653Yuv7addClipERKS0_RKNS_8ShortYuvEji
	.size	_ZN4x2653Yuv7addClipERKS0_RKNS_8ShortYuvEji, .-_ZN4x2653Yuv7addClipERKS0_RKNS_8ShortYuvEji
	.align	2
	.align	3
	.globl	_ZN4x2653Yuv6addAvgERKNS_8ShortYuvES3_jjjbb
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2653Yuv6addAvgERKNS_8ShortYuvES3_jjjbb
	.type	_ZN4x2653Yuv6addAvgERKNS_8ShortYuvES3_jjjbb, @function
_ZN4x2653Yuv6addAvgERKNS_8ShortYuvES3_jjjbb:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sra	$9,$9,2
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2653Yuv6addAvgERKNS_8ShortYuvES3_jjjbb)))
	sra	$8,$8,2
	daddu	$28,$28,$25
	lsa	$8,$8,$9,4
	sd	$21,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2653Yuv6addAvgERKNS_8ShortYuvES3_jjjbb)))
	addiu	$8,$8,-17
	sd	$20,32($sp)
	ld	$9,%got_disp(_ZN4x26521lumaPartitionMapTableE)($28)
	move	$20,$7
	move	$21,$11
	sd	$19,24($sp)
	move	$19,$6
	sd	$18,16($sp)
	move	$18,$5
	daddu	$8,$9,$8
	sd	$17,8($sp)
	move	$17,$4
	sd	$31,72($sp)
	sd	$23,56($sp)
	sd	$22,48($sp)
	sd	$16,0($sp)
	beq	$10,$0,.L46
	lbu	$16,0($8)

	ld	$4,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	dext	$6,$7,0,32
	dsll	$11,$16,7
	lw	$12,24($5)
	ld	$5,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	daddu	$4,$4,$6
	lw	$9,24($17)
	lbu	$3,0($4)
	dext	$7,$12,0,32
	daddu	$5,$5,$6
	lw	$2,24($19)
	lbu	$10,0($5)
	move	$4,$3
	ld	$3,%got_disp(_ZN4x26510primitivesE)($28)
	move	$14,$4
	ld	$5,0($19)
	dext	$8,$2,0,32
	mul	$4,$9,$10
	ld	$13,0($17)
	dext	$9,$9,0,32
	daddu	$3,$3,$11
	ld	$25,104($3)
	mul	$11,$2,$10
	mtlo	$14
	addu	$6,$4,$14
	ld	$4,0($18)
	madd	$12,$10
	daddu	$6,$13,$6
	addu	$2,$11,$14
	dlsa	$5,$2,$5,1
	mflo	$2
	jalr	$25
	dlsa	$4,$2,$4,1

.L46:
	beq	$21,$0,.L45
	ld	$3,%got_disp(_ZN4x26513g_zscanToPelYE)($28)

	dext	$7,$20,0,32
	dlsa	$16,$16,$16,2
	ld	$4,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	dsll	$16,$16,4
	lw	$2,40($18)
	lw	$10,36($18)
	daddu	$4,$4,$7
	daddu	$7,$3,$7
	lw	$12,36($19)
	lbu	$5,0($7)
	lbu	$4,0($4)
	lw	$7,28($18)
	lw	$3,40($19)
	lw	$24,28($19)
	sra	$6,$4,$10
	sra	$12,$4,$12
	sra	$10,$5,$2
	lw	$11,44($17)
	mul	$8,$10,$7
	sra	$3,$5,$3
	mtlo	$12
	lw	$13,28($17)
	madd	$3,$24
	lw	$2,40($17)
	dext	$7,$7,0,32
	sra	$11,$5,$11
	lw	$15,36($17)
	ld	$20,%got_disp(_ZN4x26510primitivesE)($28)
	dext	$9,$13,0,32
	sra	$14,$4,$2
	ld	$5,8($19)
	dlsa	$2,$15,$15,3
	ld	$4,8($18)
	dlsa	$2,$2,$15,4
	ld	$21,16($18)
	dlsa	$2,$2,$16,4
	ld	$22,16($19)
	mflo	$12
	daddu	$2,$20,$2
	ld	$23,16($17)
	ld	$25,6192($2)
	mul	$3,$11,$13
	addu	$10,$8,$6
	ld	$6,8($17)
	dext	$8,$24,0,32
	dsll	$10,$10,1
	daddu	$4,$4,$10
	daddu	$21,$21,$10
	addu	$2,$3,$14
	move	$3,$12
	dsll	$3,$3,1
	daddu	$6,$6,$2
	daddu	$5,$5,$3
	daddu	$23,$23,$2
	jalr	$25
	daddu	$22,$22,$3

	lw	$11,36($17)
	move	$6,$23
	lwu	$9,28($17)
	move	$5,$22
	move	$4,$21
	lwu	$8,28($19)
	dlsa	$2,$11,$11,3
	lwu	$7,28($18)
	dlsa	$2,$2,$11,4
	ld	$31,72($sp)
	dlsa	$16,$2,$16,4
	ld	$28,64($sp)
	daddu	$16,$20,$16
	ld	$23,56($sp)
	ld	$25,6192($16)
	ld	$22,48($sp)
	ld	$21,40($sp)
	ld	$20,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$25
	daddiu	$sp,$sp,80

	.align	3
.L45:
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

	.set	macro
	.set	reorder
	.end	_ZN4x2653Yuv6addAvgERKNS_8ShortYuvES3_jjjbb
	.size	_ZN4x2653Yuv6addAvgERKNS_8ShortYuvES3_jjjbb, .-_ZN4x2653Yuv6addAvgERKNS_8ShortYuvES3_jjjbb
	.align	2
	.align	3
	.globl	_ZNK4x2653Yuv18copyPartToPartLumaERS0_jj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2653Yuv18copyPartToPartLumaERS0_jj
	.type	_ZNK4x2653Yuv18copyPartToPartLumaERS0_jj, @function
_ZNK4x2653Yuv18copyPartToPartLumaERS0_jj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$13,%hi(%neg(%gp_rel(_ZNK4x2653Yuv18copyPartToPartLumaERS0_jj)))
	lw	$2,24($5)
	move	$11,$5
	daddu	$13,$13,$25
	dext	$6,$6,0,32
	lw	$3,24($4)
	daddiu	$13,$13,%lo(%neg(%gp_rel(_ZNK4x2653Yuv18copyPartToPartLumaERS0_jj)))
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
	ld	$25,3336($8)
	mflo	$2
	daddu	$4,$4,$2
	addu	$3,$11,$12
	jr	$25
	daddu	$6,$6,$3

	.set	macro
	.set	reorder
	.end	_ZNK4x2653Yuv18copyPartToPartLumaERS0_jj
	.size	_ZNK4x2653Yuv18copyPartToPartLumaERS0_jj, .-_ZNK4x2653Yuv18copyPartToPartLumaERS0_jj
	.align	2
	.align	3
	.globl	_ZNK4x2653Yuv20copyPartToPartChromaERS0_jj
	.set	nomips16
	.set	nomicromips
	.ent	_ZNK4x2653Yuv20copyPartToPartChromaERS0_jj
	.type	_ZNK4x2653Yuv20copyPartToPartChromaERS0_jj, @function
_ZNK4x2653Yuv20copyPartToPartChromaERS0_jj:
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 0, gp= 0
	.mask	0x903f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	dext	$6,$6,0,32
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZNK4x2653Yuv20copyPartToPartChromaERS0_jj)))
	daddu	$28,$28,$25
	sd	$17,8($sp)
	move	$17,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZNK4x2653Yuv20copyPartToPartChromaERS0_jj)))
	sd	$18,16($sp)
	move	$18,$5
	ld	$3,%got_disp(_ZN4x26513g_zscanToPelXE)($28)
	ld	$2,%got_disp(_ZN4x26513g_zscanToPelYE)($28)
	lw	$8,40($17)
	daddu	$3,$3,$6
	lw	$4,44($4)
	lbu	$5,0($3)
	daddu	$6,$2,$6
	lbu	$3,0($6)
	sd	$16,0($sp)
	addiu	$16,$7,-2
	lw	$9,44($18)
	sra	$6,$5,$8
	dext	$16,$16,0,32
	lw	$7,28($17)
	sra	$4,$3,$4
	mtlo	$6
	sd	$19,24($sp)
	daddiu	$16,$16,32
	sra	$3,$3,$9
	lw	$9,36($17)
	dsll	$16,$16,6
	madd	$4,$7
	ld	$19,%got_disp(_ZN4x26510primitivesE)($28)
	dext	$7,$7,0,32
	lw	$10,28($18)
	dlsa	$8,$9,$9,3
	lw	$2,40($18)
	dlsa	$8,$8,$9,4
	ld	$6,8($17)
	dlsa	$8,$8,$16,4
	ld	$4,8($18)
	daddu	$8,$19,$8
	sd	$21,40($sp)
	ld	$25,6144($8)
	sra	$2,$5,$2
	mflo	$11
	mul	$8,$3,$10
	sd	$20,32($sp)
	dext	$5,$10,0,32
	ld	$21,16($17)
	move	$3,$11
	ld	$20,16($18)
	daddu	$6,$6,$3
	sd	$31,56($sp)
	daddu	$21,$21,$3
	addu	$2,$8,$2
	daddu	$4,$4,$2
	jalr	$25
	daddu	$20,$20,$2

	lw	$8,36($17)
	move	$6,$21
	lwu	$7,28($17)
	move	$4,$20
	lwu	$5,28($18)
	dlsa	$2,$8,$8,3
	ld	$31,56($sp)
	dlsa	$2,$2,$8,4
	ld	$28,48($sp)
	dlsa	$16,$2,$16,4
	ld	$21,40($sp)
	daddu	$16,$19,$16
	ld	$20,32($sp)
	ld	$25,6144($16)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$25
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	_ZNK4x2653Yuv20copyPartToPartChromaERS0_jj
	.size	_ZNK4x2653Yuv20copyPartToPartChromaERS0_jj, .-_ZNK4x2653Yuv20copyPartToPartChromaERS0_jj
	.ident	"GCC: (GNU) 7.3.0"
