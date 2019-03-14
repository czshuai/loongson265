	.file	1 "frame.cpp"
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
	.ascii	"fatal: unable to initialize conditional variable\012\000"
	.align	3
.LC1:
	.ascii	"x265\000"
	.text
	.align	2
	.align	3
	.globl	_ZN4x2655FrameC2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655FrameC2Ev
	.type	_ZN4x2655FrameC2Ev, @function
_ZN4x2655FrameC2Ev:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	li	$6,136			# 0x88
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655FrameC2Ev)))
	move	$5,$0
	daddu	$28,$28,$25
	sd	$19,24($sp)
	daddiu	$19,$4,72
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655FrameC2Ev)))
	sd	$17,8($sp)
	move	$17,$4
	ld	$25,%call16(memset)($28)
	move	$4,$19
	sd	$18,16($sp)
	daddiu	$18,$17,17032
	sd	$16,0($sp)
	sd	$31,40($sp)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	daddiu	$16,$17,14584

	ld	$25,%call16(memset)($28)
	.align	3
.L15:
	move	$4,$16
	li	$6,136			# 0x88
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	daddiu	$16,$16,136

	bne	$18,$16,.L15
	ld	$25,%call16(memset)($28)

	ld	$25,%call16(pthread_mutex_init)($28)
	move	$5,$0
	daddiu	$4,$17,17064
	.reloc	1f,R_MIPS_JALR,pthread_mutex_init
1:	jalr	$25
	sw	$0,17152($17)

	bne	$2,$0,.L16
	ld	$7,%got_page(.LC0)($28)

	ld	$25,%call16(pthread_cond_init)($28)
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,pthread_cond_init
1:	jalr	$25
	daddiu	$4,$17,17104

	beq	$2,$0,.L4
	ld	$7,%got_page(.LC0)($28)

.L16:
	move	$6,$0
	move	$4,$0
	ld	$5,%got_page(.LC1)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$7,%got_ofst(.LC0)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC1)

.L4:
	ld	$25,%call16(pthread_mutex_init)($28)
	move	$5,$0
	daddiu	$4,$17,20384
	.reloc	1f,R_MIPS_JALR,pthread_mutex_init
1:	jalr	$25
	sw	$0,20472($17)

	bne	$2,$0,.L17
	ld	$7,%got_page(.LC0)($28)

	ld	$25,%call16(pthread_cond_init)($28)
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,pthread_cond_init
1:	jalr	$25
	daddiu	$4,$17,20424

	beq	$2,$0,.L7
	ld	$7,%got_page(.LC0)($28)

.L17:
	move	$6,$0
	move	$4,$0
	ld	$5,%got_page(.LC1)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$7,%got_ofst(.LC0)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC1)

.L7:
	ld	$25,%call16(pthread_mutex_init)($28)
	move	$5,$0
	daddiu	$4,$17,20488
	.reloc	1f,R_MIPS_JALR,pthread_mutex_init
1:	jalr	$25
	sw	$0,20576($17)

	bne	$2,$0,.L18
	ld	$7,%got_page(.LC0)($28)

	ld	$25,%call16(pthread_cond_init)($28)
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,pthread_cond_init
1:	jalr	$25
	daddiu	$4,$17,20528

	beq	$2,$0,.L10
	ld	$7,%got_page(.LC0)($28)

.L18:
	move	$6,$0
	move	$4,$0
	ld	$5,%got_page(.LC1)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$7,%got_ofst(.LC0)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC1)

.L10:
	ld	$25,%call16(memset)($28)
	move	$4,$19
	li	$6,16960			# 0x4240
	move	$5,$0
	sb	$0,17033($17)
	sb	$0,17032($17)
	sd	$0,17160($17)
	sd	$0,17168($17)
	sw	$0,17180($17)
	sd	$0,0($17)
	sd	$0,8($17)
	sd	$0,17040($17)
	sd	$0,17184($17)
	sd	$0,17192($17)
	sd	$0,17200($17)
	sw	$0,17048($17)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sd	$0,17056($17)

	sd	$0,20376($17)
	sd	$0,20592($17)
	sb	$0,17034($17)
	sd	$0,20480($17)
	sd	$0,20584($17)
	sd	$0,20600($17)
	sd	$0,20608($17)
	sd	$0,20616($17)
	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN4x2655FrameC2Ev
	.size	_ZN4x2655FrameC2Ev, .-_ZN4x2655FrameC2Ev
	.globl	_ZN4x2655FrameC1Ev
	_ZN4x2655FrameC1Ev = _ZN4x2655FrameC2Ev
	.section	.rodata.str1.8
	.align	3
.LC2:
	.ascii	"malloc of size %d failed\012\000"
	.text
	.align	2
	.align	3
	.globl	_ZN4x2655Frame6createEP10x265_paramPf
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Frame6createEP10x265_paramPf
	.type	_ZN4x2655Frame6createEP10x265_paramPf, @function
_ZN4x2655Frame6createEP10x265_paramPf:
	.frame	$sp,112,$31		# vars= 16, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655Frame6createEP10x265_paramPf)))
	daddu	$28,$28,$25
	sd	$16,24($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655Frame6createEP10x265_paramPf)))
	li	$4,192			# 0xc0
	sd	$31,104($sp)
	ld	$25,%call16(_Znwm)($28)
	sd	$20,56($sp)
	move	$20,$6
	sd	$18,40($sp)
	sd	$17,32($sp)
	move	$17,$5
	sd	$fp,96($sp)
	sd	$23,80($sp)
	sd	$22,72($sp)
	sd	$21,64($sp)
	.reloc	1f,R_MIPS_JALR,_Znwm
1:	jalr	$25
	sd	$19,48($sp)

	ld	$25,%call16(_ZN4x2656PicYuvC1Ev)($28)
	move	$4,$2
	.reloc	1f,R_MIPS_JALR,_ZN4x2656PicYuvC1Ev
1:	jalr	$25
	move	$18,$2

	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	li	$4,296			# 0x128
	sd	$18,16($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	sd	$17,17200($16)

	beq	$2,$0,.L20
	sd	$2,20376($16)

	ld	$25,%call16(memset)($28)
	li	$6,296			# 0x128
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$4,$2

	lw	$2,772($17)
	bne	$2,$0,.L77
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)

.L22:
	lw	$3,856($17)
	li	$2,1			# 0x1
	beq	$3,$2,.L78
	move	$7,$0

	ld	$2,17200($16)
	move	$5,$17
	ld	$25,%call16(_ZN4x2656PicYuv6createEP10x265_parambPh)($28)
	ld	$4,16($16)
	lw	$6,860($2)
	.reloc	1f,R_MIPS_JALR,_ZN4x2656PicYuv6createEP10x265_parambPh
1:	jalr	$25
	sltu	$6,$0,$6

	beq	$2,$0,.L76
	nop

.L37:
	lw	$3,444($17)
	daddiu	$4,$16,72
	ld	$5,16($16)
	beq	$3,$0,.L79
	lw	$6,148($17)

	ld	$25,%call16(_ZN4x2656Lowres6createEPNS_6PicYuvEibj)($28)
	move	$7,$2
	.reloc	1f,R_MIPS_JALR,_ZN4x2656Lowres6createEPNS_6PicYuvEibj
1:	jalr	$25
	lw	$8,556($17)

	beq	$2,$0,.L76
	move	$19,$2

.L83:
	ld	$3,16($16)
	li	$2,22347776			# 0x1550000
	li	$4,-1			# 0xffffffffffffffff
	lw	$6,180($17)
	daddiu	$2,$2,21845
	dsll	$2,$2,16
	lw	$5,52($3)
	daddiu	$2,$2,21845
	addiu	$3,$6,-1
	dsll	$2,$2,16
	daddiu	$2,$2,21846
	addu	$3,$3,$5
	gsdivu	$5,$3,$6
	teq	$6,$0,7
	move	$21,$5
	sltu	$2,$21,$2
	beq	$2,$0,.L40
	sw	$5,17176($16)

	dlsa	$4,$21,$21,1
	dsll	$4,$4,5
	daddiu	$4,$4,8
.L40:
	ld	$25,%call16(_Znam)($28)
	.reloc	1f,R_MIPS_JALR,_Znam
1:	jalr	$25
	daddiu	$18,$21,-1

	sd	$21,0($2)
	daddiu	$2,$2,8
	bltz	$18,.L41
	sd	$2,0($sp)

	ld	$22,%got_page(.LC0)($28)
	move	$fp,$2
	li	$23,-1			# 0xffffffffffffffff
	ld	$21,%got_page(.LC1)($28)
	daddiu	$22,$22,%got_ofst(.LC0)
	daddiu	$21,$21,%got_ofst(.LC1)
	.align	3
.L45:
	ld	$25,%call16(pthread_mutex_init)($28)
	move	$4,$fp
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,pthread_mutex_init
1:	jalr	$25
	sw	$0,88($fp)

	daddiu	$4,$fp,40
	bne	$2,$0,.L44
	ld	$25,%call16(pthread_cond_init)($28)

	.reloc	1f,R_MIPS_JALR,pthread_cond_init
1:	jalr	$25
	move	$5,$0

	beq	$2,$0,.L43
	nop

.L44:
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	move	$7,$22
	move	$6,$0
	move	$5,$21
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	move	$4,$0

.L43:
	daddiu	$18,$18,-1
	bne	$18,$23,.L45
	daddiu	$fp,$fp,96

.L41:
	li	$2,22347776			# 0x1550000
	lw	$21,17176($16)
	li	$4,-1			# 0xffffffffffffffff
	daddiu	$2,$2,21845
	ld	$3,0($sp)
	dsll	$2,$2,16
	daddiu	$2,$2,21845
	dsll	$2,$2,16
	daddiu	$2,$2,21846
	sltu	$2,$21,$2
	beq	$2,$0,.L46
	sd	$3,17160($16)

	dlsa	$4,$21,$21,1
	dsll	$4,$4,5
	daddiu	$4,$4,8
.L46:
	ld	$25,%call16(_Znam)($28)
	.reloc	1f,R_MIPS_JALR,_Znam
1:	jalr	$25
	daddiu	$18,$21,-1

	sd	$21,0($2)
	daddiu	$2,$2,8
	bltz	$18,.L47
	sd	$2,0($sp)

	ld	$22,%got_page(.LC0)($28)
	move	$fp,$2
	li	$23,-1			# 0xffffffffffffffff
	ld	$21,%got_page(.LC1)($28)
	daddiu	$22,$22,%got_ofst(.LC0)
	daddiu	$21,$21,%got_ofst(.LC1)
	.align	3
.L51:
	ld	$25,%call16(pthread_mutex_init)($28)
	move	$4,$fp
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,pthread_mutex_init
1:	jalr	$25
	sw	$0,88($fp)

	daddiu	$4,$fp,40
	bne	$2,$0,.L50
	ld	$25,%call16(pthread_cond_init)($28)

	.reloc	1f,R_MIPS_JALR,pthread_cond_init
1:	jalr	$25
	move	$5,$0

	beq	$2,$0,.L49
	nop

.L50:
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	move	$7,$22
	move	$6,$0
	move	$5,$21
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	move	$4,$0

.L49:
	daddiu	$18,$18,-1
	bne	$18,$23,.L51
	daddiu	$fp,$fp,96

.L47:
	ld	$2,0($sp)
	beq	$20,$0,.L23
	sd	$2,17168($16)

	lw	$3,556($17)
	li	$2,8			# 0x8
	beq	$3,$2,.L80
	nop

	lw	$2,11288($16)
	lw	$4,11292($16)
	gsmultu	$2,$2,$4
.L53:
	li	$3,1			# 0x1
	ld	$25,%call16(_Znam)($28)
	dsll	$4,$2,2
	dsll	$3,$3,61
	daddiu	$3,$3,-1
	sltu	$2,$2,$3
	li	$3,-1			# 0xffffffffffffffff
	.reloc	1f,R_MIPS_JALR,_Znam
1:	jalr	$25
	movz	$4,$3,$2

	sd	$2,17040($16)
	move	$2,$19
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

	.align	3
.L20:
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	li	$8,296			# 0x128
	move	$6,$0
	move	$4,$0
.L75:
	ld	$7,%got_page(.LC2)($28)
	ld	$5,%got_page(.LC1)($28)
	daddiu	$7,$7,%got_ofst(.LC2)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC1)

.L76:
	move	$19,$0
.L23:
	ld	$31,104($sp)
	move	$2,$19
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

	.align	3
.L77:
	ld	$4,17200($16)
	lw	$3,180($17)
	lw	$18,72($4)
	lw	$2,76($4)
	addiu	$3,$3,-1
	lw	$4,796($4)
	addu	$18,$18,$3
	addu	$2,$2,$3
	srl	$2,$2,$4
	srl	$18,$18,$4
	gsmultu	$18,$18,$2
	dext	$19,$18,0,32
	dsll	$19,$19,3
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$19

	beq	$2,$0,.L70
	sd	$2,20600($16)

	ld	$25,%call16(memset)($28)
	move	$4,$2
	move	$6,$19
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$19

	beq	$2,$0,.L70
	sd	$2,20608($16)

	ld	$25,%call16(memset)($28)
	move	$4,$2
	move	$6,$19
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$19

	beq	$2,$0,.L70
	sd	$2,20616($16)

	ld	$25,%call16(memset)($28)
	move	$6,$19
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$4,$2

	beq	$18,$0,.L22
	nop

	addiu	$19,$18,-1
	move	$18,$0
	dext	$19,$19,0,32
	daddiu	$19,$19,1
	b	.L35
	dsll	$19,$19,3

	.align	3
.L82:
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	lwu	$6,808($17)

	ld	$21,20608($16)
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	lwu	$4,808($17)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	daddu	$21,$21,$18

	move	$5,$0
	sd	$2,0($21)
	ld	$2,20608($16)
	daddu	$2,$2,$18
	ld	$4,0($2)
	beq	$4,$0,.L72
	ld	$25,%call16(memset)($28)

	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	lwu	$6,808($17)

	lwu	$4,808($17)
	ld	$21,20616($16)
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	dsll	$4,$4,2
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	daddu	$21,$21,$18

	move	$5,$0
	ld	$25,%call16(memset)($28)
	sd	$2,0($21)
	ld	$2,20616($16)
	daddu	$2,$2,$18
	ld	$4,0($2)
	beq	$4,$0,.L81
	daddiu	$18,$18,8

	lwu	$6,808($17)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dsll	$6,$6,2

	beq	$18,$19,.L22
	nop

.L35:
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	ld	$21,20600($16)
	lwu	$4,808($17)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	daddu	$21,$21,$18

	move	$5,$0
	sd	$2,0($21)
	ld	$2,20600($16)
	daddu	$2,$2,$18
	ld	$4,0($2)
	bne	$4,$0,.L82
	ld	$25,%call16(memset)($28)

.L72:
	move	$6,$0
	move	$4,$0
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	b	.L75
	lwu	$8,808($17)

	.align	3
.L78:
	ld	$2,17200($16)
	move	$5,$17
	sd	$0,17248($16)
	sd	$0,17264($16)
	sd	$0,17256($16)
	sd	$0,20368($16)
	lw	$6,860($2)
	ld	$25,%call16(_ZN4x2656PicYuv6createEP10x265_parambPh)($28)
	ld	$4,16($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x2656PicYuv6createEP10x265_parambPh
1:	jalr	$25
	sltu	$6,$0,$6

	bne	$2,$0,.L37
	nop

	b	.L23
	move	$19,$0

	.align	3
.L79:
	lw	$2,728($17)
	ld	$25,%call16(_ZN4x2656Lowres6createEPNS_6PicYuvEibj)($28)
	lw	$8,556($17)
	sltu	$2,$0,$2
	.reloc	1f,R_MIPS_JALR,_ZN4x2656Lowres6createEPNS_6PicYuvEibj
1:	jalr	$25
	move	$7,$2

	bne	$2,$0,.L83
	move	$19,$2

	b	.L23
	move	$19,$0

	.align	3
.L70:
	move	$8,$19
	move	$6,$0
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	b	.L75
	move	$4,$0

	.align	3
.L80:
	lw	$2,11296($16)
	lw	$3,11300($16)
	b	.L53
	gsmultu	$2,$2,$3

	.align	3
.L81:
	lwu	$8,808($17)
	move	$6,$0
	move	$4,$0
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	b	.L75
	dsll	$8,$8,2

	.set	macro
	.set	reorder
	.end	_ZN4x2655Frame6createEP10x265_paramPf
	.size	_ZN4x2655Frame6createEP10x265_paramPf, .-_ZN4x2655Frame6createEP10x265_paramPf
	.align	2
	.align	3
	.globl	_ZN4x2655Frame15allocEncodeDataEP10x265_paramRKNS_3SPSE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Frame15allocEncodeDataEP10x265_paramRKNS_3SPSE
	.type	_ZN4x2655Frame15allocEncodeDataEP10x265_paramRKNS_3SPSE, @function
_ZN4x2655Frame15allocEncodeDataEP10x265_paramRKNS_3SPSE:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655Frame15allocEncodeDataEP10x265_paramRKNS_3SPSE)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655Frame15allocEncodeDataEP10x265_paramRKNS_3SPSE)))
	li	$4,1480			# 0x5c8
	sd	$31,56($sp)
	ld	$25,%call16(_Znwm)($28)
	sd	$19,32($sp)
	move	$19,$6
	sd	$18,24($sp)
	move	$18,$5
	sd	$17,16($sp)
	.reloc	1f,R_MIPS_JALR,_Znwm
1:	jalr	$25
	sd	$20,40($sp)

	ld	$25,%call16(_ZN4x2659FrameDataC1Ev)($28)
	move	$4,$2
	.reloc	1f,R_MIPS_JALR,_ZN4x2659FrameDataC1Ev
1:	jalr	$25
	move	$17,$2

	ld	$25,%call16(_Znwm)($28)
	li	$4,192			# 0xc0
	.reloc	1f,R_MIPS_JALR,_Znwm
1:	jalr	$25
	sd	$17,0($16)

	ld	$25,%call16(_ZN4x2656PicYuvC1Ev)($28)
	move	$4,$2
	.reloc	1f,R_MIPS_JALR,_ZN4x2656PicYuvC1Ev
1:	jalr	$25
	move	$17,$2

	ld	$2,0($16)
	move	$6,$19
	sd	$17,8($16)
	move	$5,$18
	sd	$18,17200($16)
	sd	$17,32($2)
	ld	$2,16($16)
	ld	$25,%call16(_ZN4x2659FrameData6createERK10x265_paramRKNS_3SPSEi)($28)
	ld	$4,0($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659FrameData6createERK10x265_paramRKNS_3SPSEi
1:	jalr	$25
	lw	$7,72($2)

	bne	$2,$0,.L85
	ld	$25,%call16(_ZN4x2656PicYuv6createEP10x265_parambPh)($28)

.L87:
	move	$17,$0
.L86:
	ld	$31,56($sp)
	move	$2,$17
	ld	$28,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L85:
	move	$7,$0
	li	$6,1			# 0x1
	ld	$4,8($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x2656PicYuv6createEP10x265_parambPh
1:	jalr	$25
	move	$5,$18

	beq	$2,$0,.L87
	move	$17,$2

	lw	$6,180($18)
	move	$5,$0
	lw	$20,48($19)
	ld	$2,8($16)
	ld	$25,%call16(memset)($28)
	gsmultu	$20,$20,$6
	ld	$6,56($2)
	ld	$4,24($2)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	gsdmultu	$6,$20,$6

	ld	$3,8($16)
	ld	$5,0($19)
	ld	$4,16($19)
	lw	$2,60($18)
	sd	$5,88($3)
	ld	$3,8($16)
	beq	$2,$0,.L86
	sd	$4,104($3)

	ld	$3,8($16)
	move	$5,$0
	ld	$25,%call16(memset)($28)
	lw	$2,80($3)
	ld	$6,64($3)
	ld	$4,32($3)
	sra	$2,$20,$2
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	gsdmultu	$6,$2,$6

	ld	$2,8($16)
	move	$5,$0
	ld	$25,%call16(memset)($28)
	lw	$3,80($2)
	ld	$6,64($2)
	ld	$4,40($2)
	sra	$20,$20,$3
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	gsdmultu	$6,$20,$6

	ld	$2,8($16)
	ld	$4,8($19)
	ld	$3,24($19)
	sd	$4,96($2)
	ld	$2,8($16)
	b	.L86
	sd	$3,112($2)

	.set	macro
	.set	reorder
	.end	_ZN4x2655Frame15allocEncodeDataEP10x265_paramRKNS_3SPSE
	.size	_ZN4x2655Frame15allocEncodeDataEP10x265_paramRKNS_3SPSE, .-_ZN4x2655Frame15allocEncodeDataEP10x265_paramRKNS_3SPSE
	.align	2
	.align	3
	.globl	_ZN4x2655Frame6reinitERKNS_3SPSE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Frame6reinitERKNS_3SPSE
	.type	_ZN4x2655Frame6reinitERKNS_3SPSE, @function
_ZN4x2655Frame6reinitERKNS_3SPSE:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	move	$2,$4
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655Frame6reinitERKNS_3SPSE)))
	sd	$31,8($sp)
	daddu	$28,$28,$25
	ld	$4,0($4)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655Frame6reinitERKNS_3SPSE)))
	ld	$25,%call16(_ZN4x2659FrameData6reinitERKNS_3SPSE)($28)
	sb	$0,17033($2)
	ld	$3,32($4)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659FrameData6reinitERKNS_3SPSE
1:	jalr	$25
	sd	$3,8($2)

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN4x2655Frame6reinitERKNS_3SPSE
	.size	_ZN4x2655Frame6reinitERKNS_3SPSE, .-_ZN4x2655Frame6reinitERKNS_3SPSE
	.align	2
	.align	3
	.globl	_ZN4x2655Frame7destroyEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2655Frame7destroyEv
	.type	_ZN4x2655Frame7destroyEv, @function
_ZN4x2655Frame7destroyEv:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2655Frame7destroyEv)))
	sd	$16,0($sp)
	move	$16,$4
	daddu	$28,$28,$25
	sd	$31,40($sp)
	sd	$19,24($sp)
	sd	$18,16($sp)
	sd	$17,8($sp)
	ld	$4,0($4)
	beq	$4,$0,.L98
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2655Frame7destroyEv)))

	ld	$25,%call16(_ZN4x2659FrameData7destroyEv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659FrameData7destroyEv
1:	jalr	$25
	nop

	ld	$25,%call16(_ZdlPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZdlPv
1:	jalr	$25
	ld	$4,0($16)

	sd	$0,0($16)
.L98:
	ld	$4,16($16)
	beq	$4,$0,.L99
	nop

	ld	$2,17200($16)
	lw	$2,860($2)
	bne	$2,$0,.L156
	ld	$25,%call16(_ZN4x2656PicYuv7destroyEv)($28)

.L100:
	ld	$25,%call16(_ZdlPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZdlPv
1:	jalr	$25
	nop

	sd	$0,16($16)
.L99:
	ld	$4,8($16)
	beq	$4,$0,.L101
	ld	$25,%call16(_ZN4x2656PicYuv7destroyEv)($28)

	.reloc	1f,R_MIPS_JALR,_ZN4x2656PicYuv7destroyEv
1:	jalr	$25
	nop

	ld	$25,%call16(_ZdlPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZdlPv
1:	jalr	$25
	ld	$4,8($16)

	sd	$0,8($16)
.L101:
	ld	$2,17160($16)
	beq	$2,$0,.L102
	nop

	ld	$4,-8($2)
	dlsa	$4,$4,$4,1
	dsll	$4,$4,5
	daddu	$4,$2,$4
	beq	$2,$4,.L157
	ld	$25,%call16(_ZdaPv)($28)

	daddiu	$17,$4,-96
	ld	$25,%call16(pthread_cond_destroy)($28)
	.align	3
.L158:
	daddiu	$4,$17,40
	.reloc	1f,R_MIPS_JALR,pthread_cond_destroy
1:	jalr	$25
	move	$18,$17

	ld	$25,%call16(pthread_mutex_destroy)($28)
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,pthread_mutex_destroy
1:	jalr	$25
	daddiu	$17,$17,-96

	ld	$4,17160($16)
	bne	$4,$18,.L158
	ld	$25,%call16(pthread_cond_destroy)($28)

	ld	$25,%call16(_ZdaPv)($28)
.L157:
	.reloc	1f,R_MIPS_JALR,_ZdaPv
1:	jalr	$25
	daddiu	$4,$4,-8

	sd	$0,17160($16)
.L102:
	ld	$2,17168($16)
	beq	$2,$0,.L105
	nop

	ld	$4,-8($2)
	dlsa	$4,$4,$4,1
	dsll	$4,$4,5
	daddu	$4,$2,$4
	beq	$2,$4,.L159
	ld	$25,%call16(_ZdaPv)($28)

	daddiu	$17,$4,-96
	ld	$25,%call16(pthread_cond_destroy)($28)
	.align	3
.L160:
	daddiu	$4,$17,40
	.reloc	1f,R_MIPS_JALR,pthread_cond_destroy
1:	jalr	$25
	move	$18,$17

	ld	$25,%call16(pthread_mutex_destroy)($28)
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,pthread_mutex_destroy
1:	jalr	$25
	daddiu	$17,$17,-96

	ld	$4,17168($16)
	bne	$4,$18,.L160
	ld	$25,%call16(pthread_cond_destroy)($28)

	ld	$25,%call16(_ZdaPv)($28)
.L159:
	.reloc	1f,R_MIPS_JALR,_ZdaPv
1:	jalr	$25
	daddiu	$4,$4,-8

	sd	$0,17168($16)
.L105:
	ld	$4,17040($16)
	beq	$4,$0,.L108
	ld	$25,%call16(_ZdaPv)($28)

	.reloc	1f,R_MIPS_JALR,_ZdaPv
1:	jalr	$25
	nop

.L108:
	lw	$2,17048($16)
	beq	$2,$0,.L110
	nop

	blez	$2,.L111
	ld	$3,17056($16)

	move	$18,$0
	move	$17,$0
	daddu	$2,$3,$18
	.align	3
.L161:
	ld	$25,%call16(_ZdaPv)($28)
	addiu	$17,$17,1
	ld	$4,8($2)
	beq	$4,$0,.L112
	daddiu	$18,$18,16

	.reloc	1f,R_MIPS_JALR,_ZdaPv
1:	jalr	$25
	nop

	ld	$3,17056($16)
.L112:
	lw	$2,17048($16)
	slt	$2,$17,$2
	bne	$2,$0,.L161
	daddu	$2,$3,$18

.L111:
	beq	$3,$0,.L110
	ld	$25,%call16(_ZdaPv)($28)

	.reloc	1f,R_MIPS_JALR,_ZdaPv
1:	jalr	$25
	move	$4,$3

.L110:
	ld	$2,20480($16)
	beq	$2,$0,.L162
	ld	$25,%call16(_ZN4x2656Lowres7destroyEv)($28)

	ld	$5,17200($16)
	lw	$4,180($5)
	lw	$19,72($5)
	lw	$3,76($5)
	lw	$5,796($5)
	addiu	$4,$4,-1
	addu	$19,$19,$4
	addu	$3,$3,$4
	srl	$19,$19,$5
	srl	$3,$3,$5
	gsmultu	$19,$19,$3
	beq	$19,$0,.L116
	addiu	$19,$19,-1

	move	$17,$0
	dext	$19,$19,0,32
	move	$18,$0
	b	.L118
	dsll	$19,$19,3

	.align	3
.L117:
	daddiu	$17,$17,8
.L118:
	ld	$2,0($2)
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	daddu	$2,$2,$18
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,264($2)

	ld	$2,20480($16)
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	ld	$2,0($2)
	daddu	$2,$2,$18
	daddiu	$18,$18,272
	sd	$0,264($2)
	ld	$2,20600($16)
	daddu	$2,$2,$17
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,0($2)

	ld	$2,20600($16)
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	daddu	$2,$2,$17
	sd	$0,0($2)
	ld	$2,20608($16)
	daddu	$2,$2,$17
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,0($2)

	ld	$2,20608($16)
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	daddu	$2,$2,$17
	sd	$0,0($2)
	ld	$2,20616($16)
	daddu	$2,$2,$17
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,0($2)

	ld	$2,20616($16)
	daddu	$2,$2,$17
	sd	$0,0($2)
	bne	$19,$17,.L117
	ld	$2,20480($16)

.L116:
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,0($2)

	ld	$2,20480($16)
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	sd	$0,0($2)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,20480($16)

	ld	$4,20584($16)
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	sd	$0,20480($16)

	ld	$4,20600($16)
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	sd	$0,20584($16)

	ld	$4,20608($16)
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	sd	$0,20600($16)

	ld	$4,20616($16)
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	sd	$0,20608($16)

	sd	$0,20616($16)
	ld	$25,%call16(_ZN4x2656Lowres7destroyEv)($28)
.L162:
	.reloc	1f,R_MIPS_JALR,_ZN4x2656Lowres7destroyEv
1:	jalr	$25
	daddiu	$4,$16,72

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,20376($16)

	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.align	3
.L156:
	.reloc	1f,R_MIPS_JALR,_ZN4x2656PicYuv7destroyEv
1:	jalr	$25
	nop

	b	.L100
	ld	$4,16($16)

	.set	macro
	.set	reorder
	.end	_ZN4x2655Frame7destroyEv
	.size	_ZN4x2655Frame7destroyEv, .-_ZN4x2655Frame7destroyEv
	.ident	"GCC: (GNU) 7.3.0"
