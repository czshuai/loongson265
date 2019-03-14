	.file	1 "lowres.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
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
	.globl	_ZN4x2656Lowres6createEPNS_6PicYuvEibj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656Lowres6createEPNS_6PicYuvEibj
	.type	_ZN4x2656Lowres6createEPNS_6PicYuvEibj, @function
_ZN4x2656Lowres6createEPNS_6PicYuvEibj:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	lw	$2,48($5)
	sd	$17,16($sp)
	lw	$17,120($5)
	lw	$3,52($5)
	dext	$2,$2,1,31
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656Lowres6createEPNS_6PicYuvEibj)))
	sd	$19,32($sp)
	lsa	$19,$17,$2,1
	daddu	$28,$28,$25
	sd	$16,8($sp)
	move	$16,$4
	li	$4,1			# 0x1
	sd	$18,24($sp)
	dext	$3,$3,1,31
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656Lowres6createEPNS_6PicYuvEibj)))
	sd	$31,88($sp)
	move	$18,$8
	sd	$fp,80($sp)
	sd	$23,64($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sb	$4,65($16)
	andi	$4,$19,0x1f
	dext	$19,$19,0,32
	sw	$6,14252($16)
	sw	$2,176($16)
	beq	$4,$0,.L50
	sw	$3,180($16)

	dsubu	$19,$19,$4
	daddiu	$19,$19,32
.L50:
	addiu	$2,$2,7
	addiu	$3,$3,7
	sd	$19,72($16)
	sra	$2,$2,3
	sra	$3,$3,3
	gsmultu	$4,$2,$3
	dsll	$9,$2,1
	sw	$2,11216($16)
	dsll	$6,$3,1
	li	$8,8			# 0x8
	sw	$3,11220($16)
	sw	$9,11224($16)
	sw	$6,11228($16)
	move	$21,$4
	bne	$18,$8,.L4
	move	$23,$4

	gsmultu	$9,$9,$6
	move	$23,$9
.L4:
	sll	$2,$2,3
	dsll	$20,$3,3
	lw	$22,124($5)
	sw	$2,176($16)
	beq	$7,$0,.L17
	sw	$20,180($16)

	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	dsll	$fp,$23,3
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$fp

	beq	$2,$0,.L44
	sd	$2,14256($16)

	ld	$25,%call16(memset)($28)
	move	$4,$2
	move	$6,$fp
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$fp

	beq	$2,$0,.L44
	sd	$2,14272($16)

	ld	$25,%call16(memset)($28)
	move	$4,$2
	move	$6,$fp
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dsll	$23,$23,2

	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$23

	beq	$2,$0,.L52
	sd	$2,14280($16)

	ld	$25,%call16(memset)($28)
	move	$4,$2
	move	$6,$23
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$fp

	beq	$2,$0,.L44
	sd	$2,14264($16)

	ld	$25,%call16(memset)($28)
	move	$4,$2
	move	$6,$fp
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$23

	beq	$2,$0,.L52
	sd	$2,14296($16)

	ld	$25,%call16(memset)($28)
	move	$6,$23
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$4,$2

	li	$2,8			# 0x8
	beq	$18,$2,.L56
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)

	.align	3
.L17:
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	.align	3
.L58:
	dsll	$18,$21,1
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$18

	beq	$2,$0,.L54
	sd	$2,14360($16)

	lsa	$20,$22,$20,1
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	dext	$20,$20,0,32
	gsdmultu	$20,$20,$19
	dsll	$23,$20,2
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$23

	beq	$2,$0,.L52
	sd	$2,136($16)

	ld	$25,%call16(memset)($28)
	move	$6,$23
	move	$4,$2
	move	$5,$0
	dext	$22,$22,0,32
	gsdmultu	$19,$22,$19
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dext	$17,$17,0,32

	ld	$2,136($16)
	dsll	$23,$21,2
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	move	$4,$23
	daddu	$5,$2,$20
	daddu	$3,$5,$20
	daddu	$17,$19,$17
	sd	$5,144($16)
	daddu	$20,$3,$20
	daddu	$6,$5,$17
	sd	$3,152($16)
	daddu	$2,$2,$17
	daddu	$5,$3,$17
	sd	$20,160($16)
	daddu	$17,$20,$17
	sd	$2,24($16)
	sd	$6,32($16)
	sd	$5,40($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	sd	$17,48($16)

	beq	$2,$0,.L52
	sd	$2,8048($16)

	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$21

	move	$8,$21
	beq	$2,$0,.L51
	sd	$2,8056($16)

	lw	$2,14252($16)
	slt	$2,$2,-1
	bne	$2,$0,.L24
	daddiu	$20,$16,5384

	move	$21,$0
	move	$17,$20
.L59:
	b	.L29
	move	$19,$0

	.align	3
.L27:
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	daddiu	$17,$17,8

	beq	$2,$0,.L54
	sd	$2,2688($17)

	lw	$3,14252($16)
	addiu	$2,$3,1
	slt	$4,$2,$19
	bne	$4,$0,.L57
	nop

.L29:
	lwu	$4,11220($16)
	addiu	$19,$19,1
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	dsll	$4,$4,2

	move	$4,$18
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	bne	$2,$0,.L27
	sd	$2,0($17)

	lwu	$8,11220($16)
	move	$6,$0
	move	$4,$0
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	b	.L53
	dsll	$8,$8,2

	.align	3
.L54:
	move	$8,$18
.L51:
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	move	$6,$0
	move	$4,$0
.L53:
	ld	$7,%got_page(.LC0)($28)
	ld	$5,%got_page(.LC1)($28)
	daddiu	$7,$7,%got_ofst(.LC0)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC1)

	move	$2,$0
.L9:
	ld	$31,88($sp)
	ld	$fp,80($sp)
	ld	$28,72($sp)
	ld	$23,64($sp)
	ld	$22,56($sp)
	ld	$21,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,96

	.align	3
.L44:
	b	.L51
	move	$8,$fp

	.align	3
.L57:
	addiu	$21,$21,1
	slt	$2,$2,$21
	bne	$2,$0,.L30
	daddiu	$20,$20,144

	slt	$2,$3,-1
	beq	$2,$0,.L59
	move	$17,$20

.L30:
	daddiu	$17,$16,10672
	bgez	$3,.L36
	move	$18,$0

	b	.L9
	li	$2,1			# 0x1

	.align	3
.L32:
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	nop

	move	$4,$23
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	beq	$2,$0,.L52
	sd	$2,408($17)

	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	nop

	move	$4,$23
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	beq	$2,$0,.L52
	sd	$2,0($17)

	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	daddiu	$17,$17,8

	beq	$2,$0,.L52
	sd	$2,128($17)

	lw	$2,14252($16)
	slt	$2,$2,$18
	bne	$2,$0,.L9
	li	$2,1			# 0x1

.L36:
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	move	$4,$23
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	addiu	$18,$18,1

	move	$4,$23
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	bne	$2,$0,.L32
	sd	$2,272($17)

	.align	3
.L52:
	b	.L51
	move	$8,$23

	.align	3
.L56:
	dsll	$18,$21,2
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$18

	beq	$2,$0,.L54
	sd	$2,14288($16)

	ld	$25,%call16(memset)($28)
	move	$6,$18
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$4,$2

	b	.L58
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)

.L24:
	b	.L9
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN4x2656Lowres6createEPNS_6PicYuvEibj
	.size	_ZN4x2656Lowres6createEPNS_6PicYuvEibj, .-_ZN4x2656Lowres6createEPNS_6PicYuvEibj
	.align	2
	.align	3
	.globl	_ZN4x2656Lowres7destroyEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656Lowres7destroyEv
	.type	_ZN4x2656Lowres7destroyEv, @function
_ZN4x2656Lowres7destroyEv:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656Lowres7destroyEv)))
	daddu	$28,$28,$25
	sd	$18,24($sp)
	move	$18,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656Lowres7destroyEv)))
	ld	$4,136($4)
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	sd	$31,56($sp)
	sd	$20,40($sp)
	sd	$19,32($sp)
	sd	$17,16($sp)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	sd	$16,8($sp)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,8048($18)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,8056($18)

	lw	$2,14252($18)
	slt	$2,$2,-1
	bne	$2,$0,.L61
	daddiu	$20,$18,5384

	move	$19,$0
	move	$16,$20
	.align	3
.L74:
	move	$17,$0
	.align	3
.L64:
	ld	$4,0($16)
	daddiu	$16,$16,8
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	addiu	$17,$17,1

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,2688($16)

	lw	$3,14252($18)
	addiu	$2,$3,1
	slt	$4,$2,$17
	beq	$4,$0,.L64
	nop

	addiu	$19,$19,1
	slt	$2,$2,$19
	bne	$2,$0,.L65
	daddiu	$20,$20,144

	slt	$2,$3,-1
	beq	$2,$0,.L74
	move	$16,$20

.L65:
	daddiu	$16,$18,10672
	bltz	$3,.L61
	move	$17,$0

	.align	3
.L67:
	ld	$4,272($16)
	daddiu	$16,$16,8
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	addiu	$17,$17,1

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,400($16)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,-8($16)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,128($16)

	lw	$2,14252($18)
	slt	$2,$2,$17
	beq	$2,$0,.L67
	nop

.L61:
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,14256($18)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,14272($18)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,14280($18)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,14264($18)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,14360($18)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,14296($18)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,14288($18)

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
	.end	_ZN4x2656Lowres7destroyEv
	.size	_ZN4x2656Lowres7destroyEv, .-_ZN4x2656Lowres7destroyEv
	.align	2
	.align	3
	.globl	_ZN4x2656Lowres4initEPNS_6PicYuvEi
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656Lowres4initEPNS_6PicYuvEi
	.type	_ZN4x2656Lowres4initEPNS_6PicYuvEi, @function
_ZN4x2656Lowres4initEPNS_6PicYuvEi:
	.frame	$sp,48,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656Lowres4initEPNS_6PicYuvEi)))
	daddu	$28,$28,$25
	sd	$31,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656Lowres4initEPNS_6PicYuvEi)))
	sd	$17,24($sp)
	move	$17,$5
	ld	$25,%call16(memset)($28)
	li	$5,-1			# 0xffffffffffffffff
	sd	$16,16($sp)
	move	$16,$4
	daddiu	$4,$4,200
	sw	$6,-32($4)
	li	$6,2592			# 0xa20
	sb	$0,190($16)
	sb	$0,189($16)
	sw	$0,184($16)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sw	$0,14248($16)

	li	$6,144			# 0x90
	ld	$25,%call16(memset)($28)
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	daddiu	$4,$16,14368

	ld	$2,14256($16)
	beq	$2,$0,.L76
	nop

	ld	$2,14280($16)
	beq	$2,$0,.L76
	ld	$25,%call16(memset)($28)

	li	$6,2592			# 0xa20
	li	$5,-1			# 0xffffffffffffffff
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	daddiu	$4,$16,2792

.L76:
	lw	$4,14252($16)
	addiu	$6,$4,1
	bltz	$6,.L77
	move	$5,$6

	slt	$2,$4,-1
	daddiu	$10,$16,5384
	move	$9,$0
	bne	$2,$0,.L81
	li	$8,-1			# 0xffffffffffffffff

	.align	3
.L107:
	move	$3,$10
	move	$2,$0
	.align	3
.L80:
	ld	$4,0($3)
	addiu	$2,$2,1
	daddiu	$3,$3,8
	sw	$8,0($4)
	lw	$4,14252($16)
	addiu	$6,$4,1
	slt	$7,$6,$2
	beq	$7,$0,.L80
	move	$5,$6

	addiu	$9,$9,1
	slt	$2,$6,$9
	bne	$2,$0,.L81
	daddiu	$10,$10,144

	slt	$2,$4,-1
	beq	$2,$0,.L107
	nop

.L81:
	bltz	$4,.L86
	nop

	daddiu	$3,$16,10952
.L109:
	daddiu	$2,$16,10944
	dlsa	$4,$4,$3,3
	li	$3,32767			# 0x7fff
	.align	3
.L87:
	ld	$7,0($2)
	daddiu	$2,$2,8
	ld	$6,128($2)
	sh	$3,0($7)
	bne	$2,$4,.L87
	sh	$3,0($6)

.L86:
	bltz	$5,.L84
	daddiu	$3,$16,7980

	daddiu	$2,$16,7976
	dlsa	$5,$5,$3,2
	.align	3
.L88:
	sw	$0,0($2)
	daddiu	$2,$2,4
	bne	$2,$5,.L88
	nop

.L84:
	ld	$2,184($17)
.L108:
	lw	$2,460($2)
	beq	$2,$0,.L89
	daddiu	$2,$16,11232

	daddiu	$3,$16,12236
	.align	3
.L90:
	sw	$0,0($2)
	daddiu	$2,$2,4
	bne	$2,$3,.L90
	nop

.L89:
	ld	$3,%got_disp(_ZN4x26510primitivesE)($28)
	lw	$2,180($16)
	lw	$11,176($16)
	ld	$10,72($16)
	ld	$25,5880($3)
	ld	$9,56($17)
	ld	$8,48($16)
	ld	$7,40($16)
	ld	$6,32($16)
	ld	$5,24($16)
	ld	$4,24($17)
	jalr	$25
	sd	$2,0($sp)

	lw	$9,124($17)
	ld	$25,%call16(_ZN4x26515extendPicBorderEPhliiii)($28)
	lw	$8,120($17)
	lw	$7,180($16)
	lw	$6,176($16)
	ld	$5,72($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x26515extendPicBorderEPhliiii
1:	jalr	$25
	ld	$4,24($16)

	lw	$9,124($17)
	ld	$25,%call16(_ZN4x26515extendPicBorderEPhliiii)($28)
	lw	$8,120($17)
	lw	$7,180($16)
	lw	$6,176($16)
	ld	$5,72($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x26515extendPicBorderEPhliiii
1:	jalr	$25
	ld	$4,32($16)

	lw	$9,124($17)
	ld	$25,%call16(_ZN4x26515extendPicBorderEPhliiii)($28)
	lw	$8,120($17)
	lw	$7,180($16)
	lw	$6,176($16)
	ld	$5,72($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x26515extendPicBorderEPhliiii
1:	jalr	$25
	ld	$4,40($16)

	lw	$9,124($17)
	ld	$25,%call16(_ZN4x26515extendPicBorderEPhliiii)($28)
	lw	$8,120($17)
	lw	$7,180($16)
	lw	$6,176($16)
	ld	$5,72($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x26515extendPicBorderEPhliiii
1:	jalr	$25
	ld	$4,48($16)

	ld	$2,24($16)
	ld	$31,40($sp)
	ld	$28,32($sp)
	sd	$2,0($16)
	ld	$17,24($sp)
	ld	$16,16($sp)
	jr	$31
	daddiu	$sp,$sp,48

.L77:
	bgez	$4,.L109
	daddiu	$3,$16,10952

	b	.L108
	ld	$2,184($17)

	.set	macro
	.set	reorder
	.end	_ZN4x2656Lowres4initEPNS_6PicYuvEi
	.size	_ZN4x2656Lowres4initEPNS_6PicYuvEi, .-_ZN4x2656Lowres4initEPNS_6PicYuvEi
	.ident	"GCC: (GNU) 7.3.0"
