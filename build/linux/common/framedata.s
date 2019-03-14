	.file	1 "framedata.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.align	3
	.globl	_ZN4x2659FrameDataC2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659FrameDataC2Ev
	.type	_ZN4x2659FrameDataC2Ev, @function
_ZN4x2659FrameDataC2Ev:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	li	$6,1480			# 0x5c8
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659FrameDataC2Ev)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659FrameDataC2Ev)))
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
	.end	_ZN4x2659FrameDataC2Ev
	.size	_ZN4x2659FrameDataC2Ev, .-_ZN4x2659FrameDataC2Ev
	.globl	_ZN4x2659FrameDataC1Ev
	_ZN4x2659FrameDataC1Ev = _ZN4x2659FrameDataC2Ev
	.align	2
	.align	3
	.globl	_ZN4x2659FrameData6reinitERKNS_3SPSE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659FrameData6reinitERKNS_3SPSE
	.type	_ZN4x2659FrameData6reinitERKNS_3SPSE, @function
_ZN4x2659FrameData6reinitERKNS_3SPSE:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	lwu	$6,52($5)
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659FrameData6reinitERKNS_3SPSE)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659FrameData6reinitERKNS_3SPSE)))
	ld	$4,112($4)
	dlsa	$6,$6,$6,3
	ld	$25,%call16(memset)($28)
	dsll	$6,$6,3
	sd	$17,8($sp)
	move	$17,$5
	sd	$31,24($sp)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	lwu	$2,48($17)
	move	$5,$0
	ld	$25,%call16(memset)($28)
	ld	$4,120($16)
	dsll	$6,$2,3
	dsubu	$6,$6,$2
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dsll	$6,$6,3

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2659FrameData6reinitERKNS_3SPSE
	.size	_ZN4x2659FrameData6reinitERKNS_3SPSE, .-_ZN4x2659FrameData6reinitERKNS_3SPSE
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
	.globl	_ZN4x2659FrameData6createERK10x265_paramRKNS_3SPSEi
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659FrameData6createERK10x265_paramRKNS_3SPSEi
	.type	_ZN4x2659FrameData6createERK10x265_paramRKNS_3SPSEi, @function
_ZN4x2659FrameData6createERK10x265_paramRKNS_3SPSEi:
	.frame	$sp,80,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0x90ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659FrameData6createERK10x265_paramRKNS_3SPSEi)))
	daddu	$28,$28,$25
	sd	$17,8($sp)
	move	$17,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659FrameData6createERK10x265_paramRKNS_3SPSEi)))
	li	$4,2480			# 0x9b0
	sd	$31,72($sp)
	ld	$25,%call16(_Znwm)($28)
	sd	$23,56($sp)
	sd	$22,48($sp)
	move	$22,$7
	sd	$21,40($sp)
	sd	$19,24($sp)
	move	$19,$5
	sd	$18,16($sp)
	move	$18,$6
	sd	$16,0($sp)
	sd	$20,32($sp)
	.reloc	1f,R_MIPS_JALR,_Znwm
1:	jalr	$25
	sd	$5,16($17)

	li	$6,64			# 0x40
	ld	$25,%call16(memset)($28)
	move	$5,$0
	daddiu	$4,$2,2180
	move	$16,$2
	sw	$0,2104($2)
	sw	$0,2108($2)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sw	$0,2112($2)

	daddiu	$4,$16,2116
	ld	$25,%call16(memset)($28)
	li	$6,64			# 0x40
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	ld	$25,%call16(memset)($28)
	daddiu	$4,$16,2244
	li	$6,16			# 0x10
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	ld	$25,%call16(memset)($28)
	daddiu	$4,$16,16
	li	$6,272			# 0x110
	move	$5,$0
	sw	$0,2284($16)
	li	$2,1			# 0x1
	sd	$0,2296($16)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sb	$2,2449($16)

	daddiu	$4,$16,288
	ld	$25,%call16(memset)($28)
	li	$6,272			# 0x110
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	ld	$25,%call16(memset)($28)
	li	$6,136			# 0x88
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	daddiu	$4,$16,2304

	ld	$25,%call16(_ZN4x2655Slice14disableWeightsEv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2655Slice14disableWeightsEv
1:	jalr	$25
	move	$4,$16

	lwu	$3,52($18)
	li	$2,1			# 0x1
	ld	$25,%call16(_Znam)($28)
	sw	$2,2456($16)
	dsll	$4,$3,5
	sw	$2,2460($16)
	li	$2,-1			# 0xffffffffffffffff
	dsubu	$4,$4,$3
	sw	$0,2452($16)
	dsll	$4,$4,4
	sw	$2,2288($16)
	sd	$0,2272($16)
	.reloc	1f,R_MIPS_JALR,_Znam
1:	jalr	$25
	sd	$16,0($17)

	lw	$16,52($18)
	dext	$21,$16,0,32
	beq	$21,$0,.L7
	move	$23,$2

	move	$20,$2
	move	$16,$0
	ld	$25,%call16(_ZN4x2656CUDataC1Ev)($28)
	.align	3
.L45:
	move	$4,$20
	daddiu	$16,$16,1
	.reloc	1f,R_MIPS_JALR,_ZN4x2656CUDataC1Ev
1:	jalr	$25
	daddiu	$20,$20,496

	bne	$21,$16,.L45
	ld	$25,%call16(_ZN4x2656CUDataC1Ev)($28)

	lw	$16,52($18)
.L7:
	lw	$2,496($19)
	li	$3,-1			# 0xffffffffffffffff
	sd	$23,88($17)
	sw	$22,1280($17)
	beq	$2,$0,.L9
	sw	$3,104($17)

	daddiu	$2,$18,112
	sd	$2,96($17)
.L9:
	lw	$2,180($19)
	daddiu	$20,$17,56
	lw	$3,60($19)
	lw	$21,808($19)
	bne	$3,$0,.L10
	gsmultu	$2,$2,$2

	gsmultu	$22,$16,$2
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	dext	$22,$22,0,32
	dsll	$22,$22,1
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$22

	beq	$2,$0,.L40
	sd	$2,64($17)

.L11:
	gsmultu	$16,$16,$21
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	lsa	$21,$16,$16,1
	sll	$21,$21,3
	subu	$21,$21,$16
	dext	$21,$21,0,32
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$21

	beq	$2,$0,.L16
	sd	$2,56($17)

	sll	$21,$16,2
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	dext	$21,$21,0,32
	dsll	$21,$21,2
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$21

	beq	$2,$0,.L16
	sd	$2,72($17)

	ld	$25,%call16(memset)($28)
	move	$4,$2
	move	$6,$21
	move	$5,$0
	dext	$16,$16,0,32
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dsll	$16,$16,2

	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$16

	beq	$2,$0,.L41
	sd	$2,80($17)

	lw	$2,52($18)
	beq	$2,$0,.L46
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)

	move	$16,$0
.L48:
	dext	$3,$16,0,32
	.align	3
.L47:
	ld	$4,88($17)
	move	$8,$16
	dsll	$2,$3,5
	ld	$25,%call16(_ZN4x2656CUData10initializeERKNS_13CUDataMemPoolEjRK10x265_parami)($28)
	move	$7,$19
	dsubu	$2,$2,$3
	move	$6,$0
	dlsa	$4,$2,$4,4
	.reloc	1f,R_MIPS_JALR,_ZN4x2656CUData10initializeERKNS_13CUDataMemPoolEjRK10x265_parami
1:	jalr	$25
	move	$5,$20

	lw	$2,52($18)
	addiu	$16,$16,1
	sltu	$3,$16,$2
	bne	$3,$0,.L47
	dext	$3,$16,0,32

	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	dext	$2,$2,0,32
	dlsa	$2,$2,$2,3
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	dsll	$4,$2,3

	beq	$2,$0,.L18
	sd	$2,112($17)

.L44:
	lwu	$6,52($18)
	move	$4,$2
	move	$5,$0
	ld	$25,%call16(memset)($28)
	dlsa	$6,$6,$6,3
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dsll	$6,$6,3

	lwu	$2,48($18)
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	dsll	$4,$2,3
	dsubu	$4,$4,$2
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	dsll	$4,$4,3

	beq	$2,$0,.L42
	sd	$2,120($17)

	ld	$25,%got_disp(_ZN4x2659FrameData6reinitERKNS_3SPSE)($28)
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,_ZN4x2659FrameData6reinitERKNS_3SPSE
1:	jalr	$25
	move	$5,$18

	daddiu	$2,$17,1288
	daddiu	$17,$17,1384
	.align	3
.L22:
	sd	$0,96($2)
	daddiu	$2,$2,8
	bne	$17,$2,.L22
	sd	$0,-8($2)

	ld	$31,72($sp)
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

	.align	3
.L10:
	addiu	$22,$3,-1
	xori	$3,$3,0x1
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	sltu	$3,$3,1
	sltu	$22,$22,2
	addu	$22,$22,$3
	srl	$22,$2,$22
	lsa	$22,$22,$2,1
	gsmultu	$22,$22,$16
	dext	$22,$22,0,32
	dsll	$22,$22,1
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$22

	bne	$2,$0,.L11
	sd	$2,64($17)

.L40:
	b	.L36
	move	$8,$22

	.align	3
.L16:
	move	$8,$21
.L36:
	ld	$7,%got_page(.LC0)($28)
	move	$6,$0
	move	$4,$0
	ld	$5,%got_page(.LC1)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$7,%got_ofst(.LC0)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC1)

	lw	$2,52($18)
	bne	$2,$0,.L48
	move	$16,$0

	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
.L46:
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	move	$4,$0

	bne	$2,$0,.L44
	sd	$2,112($17)

	.align	3
.L18:
	lwu	$8,52($18)
	move	$6,$0
	move	$4,$0
	ld	$7,%got_page(.LC0)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	dlsa	$8,$8,$8,3
	dsll	$8,$8,3
	daddiu	$7,$7,%got_ofst(.LC0)
.L37:
	ld	$5,%got_page(.LC1)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC1)

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
.L42:
	lwu	$2,48($18)
	move	$6,$0
	move	$4,$0
	ld	$7,%got_page(.LC0)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	dsll	$8,$2,3
	dsubu	$8,$8,$2
	daddiu	$7,$7,%got_ofst(.LC0)
	b	.L37
	dsll	$8,$8,3

	.align	3
.L41:
	b	.L36
	move	$8,$16

	.set	macro
	.set	reorder
	.end	_ZN4x2659FrameData6createERK10x265_paramRKNS_3SPSEi
	.size	_ZN4x2659FrameData6createERK10x265_paramRKNS_3SPSEi, .-_ZN4x2659FrameData6createERK10x265_paramRKNS_3SPSEi
	.align	2
	.align	3
	.globl	_ZN4x2659FrameData7destroyEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659FrameData7destroyEv
	.type	_ZN4x2659FrameData7destroyEv, @function
_ZN4x2659FrameData7destroyEv:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$18,24($sp)
	move	$18,$4
	ld	$4,88($4)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659FrameData7destroyEv)))
	daddu	$28,$28,$25
	sd	$31,40($sp)
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659FrameData7destroyEv)))
	beq	$4,$0,.L50
	sd	$16,8($sp)

	ld	$25,%call16(_ZdaPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZdaPv
1:	jalr	$25
	nop

.L50:
	ld	$25,%call16(_ZdlPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZdlPv
1:	jalr	$25
	ld	$4,0($18)

	ld	$16,8($18)
	beq	$16,$0,.L77
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)

	ld	$4,0($16)
	beq	$4,$0,.L52
	ld	$25,%call16(_ZdaPv)($28)

	.reloc	1f,R_MIPS_JALR,_ZdaPv
1:	jalr	$25
	nop

.L52:
	ld	$4,8($16)
	beq	$4,$0,.L53
	ld	$25,%call16(_ZdaPv)($28)

	.reloc	1f,R_MIPS_JALR,_ZdaPv
1:	jalr	$25
	nop

.L53:
	ld	$4,16($16)
	beq	$4,$0,.L54
	nop

	ld	$25,%call16(_ZdaPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZdaPv
1:	jalr	$25
	nop

.L54:
	ld	$25,%call16(_ZdlPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZdlPv
1:	jalr	$25
	move	$4,$16

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
.L77:
	daddiu	$16,$18,1384
	daddiu	$17,$18,1480
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,64($18)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,72($18)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,56($18)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,80($18)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,112($18)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,120($18)

	.align	3
.L56:
	ld	$4,0($16)
	beq	$4,$0,.L55
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)

	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	nop

	sd	$0,0($16)
.L55:
	daddiu	$16,$16,8
	bne	$16,$17,.L56
	ld	$31,40($sp)

	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN4x2659FrameData7destroyEv
	.size	_ZN4x2659FrameData7destroyEv, .-_ZN4x2659FrameData7destroyEv
	.ident	"GCC: (GNU) 7.3.0"
