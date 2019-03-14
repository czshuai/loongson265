	.file	1 "threadpool.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.section	.text._ZN4x26512WorkerThreadD2Ev,"axG",@progbits,_ZN4x26512WorkerThreadD5Ev,comdat
	.align	2
	.align	3
	.weak	_ZN4x26512WorkerThreadD2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26512WorkerThreadD2Ev
	.type	_ZN4x26512WorkerThreadD2Ev, @function
_ZN4x26512WorkerThreadD2Ev:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26512WorkerThreadD2Ev)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26512WorkerThreadD2Ev)))
	daddiu	$4,$4,72
	sd	$31,24($sp)
	ld	$2,%got_disp(_ZTVN4x26512WorkerThreadE)($28)
	ld	$25,%call16(pthread_cond_destroy)($28)
	sd	$17,8($sp)
	daddiu	$17,$16,32
	daddiu	$2,$2,16
	.reloc	1f,R_MIPS_JALR,pthread_cond_destroy
1:	jalr	$25
	sd	$2,0($16)

	ld	$25,%call16(pthread_mutex_destroy)($28)
	.reloc	1f,R_MIPS_JALR,pthread_mutex_destroy
1:	jalr	$25
	move	$4,$17

	ld	$25,%call16(_ZN4x2656ThreadD2Ev)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2656ThreadD2Ev
1:	jalr	$25
	move	$4,$16

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x26512WorkerThreadD2Ev
	.size	_ZN4x26512WorkerThreadD2Ev, .-_ZN4x26512WorkerThreadD2Ev
	.weak	_ZN4x26512WorkerThreadD1Ev
	_ZN4x26512WorkerThreadD1Ev = _ZN4x26512WorkerThreadD2Ev
	.text
	.align	2
	.align	3
	.globl	_ZN4x26512WorkerThread10threadMainEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26512WorkerThread10threadMainEv
	.type	_ZN4x26512WorkerThread10threadMainEv, @function
_ZN4x26512WorkerThread10threadMainEv:
	.frame	$sp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26512WorkerThread10threadMainEv)))
	daddu	$28,$28,$25
	sd	$20,40($sp)
	move	$20,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26512WorkerThread10threadMainEv)))
	li	$4,10			# 0xa
	sd	$18,24($sp)
	ld	$25,%call16(nice)($28)
	li	$18,1			# 0x1
	sd	$31,72($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$19,32($sp)
	sd	$17,16($sp)
	.reloc	1f,R_MIPS_JALR,nice
1:	jalr	$25
	sd	$16,8($sp)

	ld	$2,16($20)
	lw	$3,24($20)
	ld	$2,32($2)
	sll	$18,$18,$3
	ld	$2,0($2)
	sd	$0,136($20)
	sd	$2,128($20)
	.set	noat
	sync
1:
	ll	$1,16($2)
	or	$1,$1,$18
	sc	$1,16($2)
	beq	$1,$0,1b
	nop
	sync
	.set	at
	ld	$2,16($20)
	.set	noat
	sync
1:
	ll	$1,0($2)
	or	$1,$1,$18
	sc	$1,0($2)
	beq	$1,$0,1b
	nop
	sync
	.set	at
	ld	$25,%call16(pthread_mutex_lock)($28)
	daddiu	$16,$20,32
	.reloc	1f,R_MIPS_JALR,pthread_mutex_lock
1:	jalr	$25
	move	$4,$16

	lw	$2,120($20)
	bne	$2,$0,.L5
	daddiu	$17,$20,72

	ld	$25,%call16(pthread_cond_wait)($28)
	.align	3
.L42:
	move	$5,$16
	.reloc	1f,R_MIPS_JALR,pthread_cond_wait
1:	jalr	$25
	move	$4,$17

	lw	$2,120($20)
	beq	$2,$0,.L42
	ld	$25,%call16(pthread_cond_wait)($28)

.L5:
	ld	$25,%call16(pthread_mutex_unlock)($28)
	addiu	$2,$2,-1
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,pthread_mutex_unlock
1:	jalr	$25
	sw	$2,120($20)

	ld	$2,16($20)
	lbu	$3,24($2)
	beq	$3,$0,.L7
	li	$17,-1			# 0xffffffffffffffff

	nor	$19,$0,$18
	.align	3
.L19:
	ld	$4,136($20)
	beq	$4,$0,.L8
	lw	$5,24($20)

	ld	$2,0($4)
	ld	$25,0($2)
	jalr	$25
	nop

	ld	$21,136($20)
	ld	$25,%call16(pthread_mutex_lock)($28)
	daddiu	$22,$21,48
	.reloc	1f,R_MIPS_JALR,pthread_mutex_lock
1:	jalr	$25
	move	$4,$22

	lw	$2,136($21)
	daddiu	$4,$21,88
	ld	$25,%call16(pthread_cond_broadcast)($28)
	addiu	$2,$2,1
	.reloc	1f,R_MIPS_JALR,pthread_cond_broadcast
1:	jalr	$25
	sw	$2,136($21)

	ld	$25,%call16(pthread_mutex_unlock)($28)
	.reloc	1f,R_MIPS_JALR,pthread_mutex_unlock
1:	jalr	$25
	move	$4,$22

	lw	$5,24($20)
	sd	$0,136($20)
.L8:
	ld	$4,128($20)
	ld	$2,0($4)
	ld	$25,16($2)
	jalr	$25
	nop

	ld	$9,128($20)
	lbu	$11,28($9)
	bne	$11,$0,.L10
	ld	$2,16($20)

	.align	3
.L40:
	lw	$8,4($2)
	blez	$8,.L11
	li	$7,11			# 0xb

.L12:
	ld	$10,32($2)
	li	$6,-1			# 0xffffffffffffffff
	move	$2,$0
	move	$3,$10
	.align	3
.L15:
	ld	$4,0($3)
	lbu	$5,28($4)
	beq	$5,$0,.L14
	daddiu	$3,$3,8

	lw	$4,24($4)
	slt	$5,$4,$7
	movn	$6,$2,$5
	movn	$7,$4,$5
.L14:
	addiu	$2,$2,1
	slt	$4,$2,$8
	bne	$4,$0,.L15
	nop

	beq	$6,$17,.L22
	dsll	$6,$6,3

	daddu	$10,$10,$6
	ld	$4,0($10)
	beq	$9,$4,.L16
	nop

	.set	noat
	sync
1:
	ll	$1,16($9)
	and	$1,$1,$19
	sc	$1,16($9)
	beq	$1,$0,1b
	nop
	sync
	.set	at
	ld	$2,16($20)
	ld	$2,32($2)
	daddu	$6,$2,$6
	ld	$2,0($6)
	sd	$2,128($20)
	.set	noat
	sync
1:
	ll	$1,16($2)
	or	$1,$1,$18
	sc	$1,16($2)
	beq	$1,$0,1b
	nop
	sync
	.set	at
	ld	$4,128($20)
	lbu	$11,28($4)
.L16:
	beq	$11,$0,.L39
	nop

	lw	$5,24($20)
.L41:
	ld	$2,0($4)
	ld	$25,16($2)
	jalr	$25
	nop

	ld	$9,128($20)
	lbu	$11,28($9)
	beq	$11,$0,.L40
	ld	$2,16($20)

.L10:
	lw	$8,4($2)
	bgtz	$8,.L12
	lw	$7,24($9)

	move	$4,$9
	b	.L41
	lw	$5,24($20)

	.align	3
.L39:
	ld	$2,16($20)
.L11:
	.set	noat
	sync
1:
	ll	$1,0($2)
	or	$1,$1,$18
	sc	$1,0($2)
	beq	$1,$0,1b
	nop
	sync
	.set	at
	ld	$25,%call16(pthread_mutex_lock)($28)
	.reloc	1f,R_MIPS_JALR,pthread_mutex_lock
1:	jalr	$25
	move	$4,$16

	lw	$2,120($20)
	bne	$2,$0,.L43
	ld	$25,%call16(pthread_mutex_unlock)($28)

	daddiu	$21,$20,72
	ld	$25,%call16(pthread_cond_wait)($28)
	.align	3
.L44:
	move	$5,$16
	.reloc	1f,R_MIPS_JALR,pthread_cond_wait
1:	jalr	$25
	move	$4,$21

	lw	$2,120($20)
	beq	$2,$0,.L44
	ld	$25,%call16(pthread_cond_wait)($28)

	ld	$25,%call16(pthread_mutex_unlock)($28)
.L43:
	addiu	$2,$2,-1
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,pthread_mutex_unlock
1:	jalr	$25
	sw	$2,120($20)

	ld	$2,16($20)
	lbu	$3,24($2)
	bne	$3,$0,.L19
	nop

.L7:
	.set	noat
	sync
1:
	ll	$1,0($2)
	or	$1,$1,$18
	sc	$1,0($2)
	beq	$1,$0,1b
	nop
	sync
	.set	at
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

	.align	3
.L22:
	b	.L16
	move	$4,$9

	.set	macro
	.set	reorder
	.end	_ZN4x26512WorkerThread10threadMainEv
	.size	_ZN4x26512WorkerThread10threadMainEv, .-_ZN4x26512WorkerThread10threadMainEv
	.section	.text._ZN4x26512WorkerThreadD0Ev,"axG",@progbits,_ZN4x26512WorkerThreadD5Ev,comdat
	.align	2
	.align	3
	.weak	_ZN4x26512WorkerThreadD0Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26512WorkerThreadD0Ev
	.type	_ZN4x26512WorkerThreadD0Ev, @function
_ZN4x26512WorkerThreadD0Ev:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26512WorkerThreadD0Ev)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26512WorkerThreadD0Ev)))
	daddiu	$4,$4,72
	sd	$31,24($sp)
	ld	$2,%got_disp(_ZTVN4x26512WorkerThreadE)($28)
	ld	$25,%call16(pthread_cond_destroy)($28)
	sd	$17,8($sp)
	daddiu	$17,$16,32
	daddiu	$2,$2,16
	.reloc	1f,R_MIPS_JALR,pthread_cond_destroy
1:	jalr	$25
	sd	$2,0($16)

	ld	$25,%call16(pthread_mutex_destroy)($28)
	.reloc	1f,R_MIPS_JALR,pthread_mutex_destroy
1:	jalr	$25
	move	$4,$17

	ld	$25,%call16(_ZN4x2656ThreadD2Ev)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2656ThreadD2Ev
1:	jalr	$25
	move	$4,$16

	ld	$25,%call16(_ZdlPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZdlPv
1:	jalr	$25
	move	$4,$16

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x26512WorkerThreadD0Ev
	.size	_ZN4x26512WorkerThreadD0Ev, .-_ZN4x26512WorkerThreadD0Ev
	.text
	.align	2
	.align	3
	.globl	_ZN4x26510ThreadPool24tryAcquireSleepingThreadEjj
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26510ThreadPool24tryAcquireSleepingThreadEjj
	.type	_ZN4x26510ThreadPool24tryAcquireSleepingThreadEjj, @function
_ZN4x26510ThreadPool24tryAcquireSleepingThreadEjj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$3,0($4)
	and	$2,$3,$5
	move	$7,$2
	beq	$7,$0,.L48
	li	$10,31			# 0x1f

	b	.L50
	li	$9,1			# 0x1

	.align	3
.L64:
	lw	$3,0($4)
	and	$2,$3,$5
	move	$7,$2
	beq	$7,$0,.L66
	and	$2,$6,$3

.L50:
	subu	$2,$0,$7
	and	$2,$2,$7
	clz	$2,$2
	subu	$2,$10,$2
	sll	$7,$9,$2
	nor	$8,$0,$7
	.set	noat
	sync
1:
	ll	$3,0($4)
	and	$1,$3,$8
	sc	$1,0($4)
	beq	$1,$0,1b
	nop
	sync
	.set	at
	and	$3,$3,$7
	beq	$3,$0,.L64
	nop

	jr	$31
	nop

	.align	3
.L48:
	and	$2,$6,$3
	.align	3
.L66:
	li	$9,31			# 0x1f
	move	$3,$2
	bne	$3,$0,.L53
	li	$8,1			# 0x1

.L52:
	jr	$31
	li	$2,-1			# 0xffffffffffffffff

	.align	3
.L65:
	lw	$2,0($4)
	and	$2,$2,$6
	move	$3,$2
	beq	$3,$0,.L52
	nop

.L53:
	subu	$2,$0,$3
	and	$2,$2,$3
	clz	$2,$2
	subu	$2,$9,$2
	sll	$5,$8,$2
	nor	$7,$0,$5
	.set	noat
	sync
1:
	ll	$3,0($4)
	and	$1,$3,$7
	sc	$1,0($4)
	beq	$1,$0,1b
	nop
	sync
	.set	at
	and	$3,$3,$5
	beq	$3,$0,.L65
	nop

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x26510ThreadPool24tryAcquireSleepingThreadEjj
	.size	_ZN4x26510ThreadPool24tryAcquireSleepingThreadEjj, .-_ZN4x26510ThreadPool24tryAcquireSleepingThreadEjj
	.align	2
	.align	3
	.globl	_ZN4x26511JobProvider10tryWakeOneEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26511JobProvider10tryWakeOneEv
	.type	_ZN4x26511JobProvider10tryWakeOneEv, @function
_ZN4x26511JobProvider10tryWakeOneEv:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$12,$4
	lw	$5,16($4)
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26511JobProvider10tryWakeOneEv)))
	li	$6,-1			# 0xffffffffffffffff
	daddu	$28,$28,$25
	ld	$4,8($4)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26511JobProvider10tryWakeOneEv)))
	sd	$31,24($sp)
	ld	$25,%got_disp(_ZN4x26510ThreadPool24tryAcquireSleepingThreadEjj)($28)
	sd	$17,8($sp)
	.reloc	1f,R_MIPS_JALR,_ZN4x26510ThreadPool24tryAcquireSleepingThreadEjj
1:	jalr	$25
	sd	$16,0($sp)

	bltz	$2,.L73
	dlsa	$16,$2,$2,3

	ld	$3,8($12)
	ld	$3,40($3)
	dlsa	$16,$16,$3,4
	ld	$3,128($16)
	beq	$3,$12,.L70
	li	$4,1			# 0x1

	sll	$2,$4,$2
	nor	$4,$0,$2
	.set	noat
	sync
1:
	ll	$1,16($3)
	and	$1,$1,$4
	sc	$1,16($3)
	beq	$1,$0,1b
	nop
	sync
	.set	at
	sd	$12,128($16)
	.set	noat
	sync
1:
	ll	$1,16($12)
	or	$1,$1,$2
	sc	$1,16($12)
	beq	$1,$0,1b
	nop
	sync
	.set	at
.L70:
	ld	$25,%call16(pthread_mutex_lock)($28)
	daddiu	$17,$16,32
	.reloc	1f,R_MIPS_JALR,pthread_mutex_lock
1:	jalr	$25
	move	$4,$17

	lw	$2,120($16)
	li	$3,-1			# 0xffffffffffffffff
	beq	$2,$3,.L71
	addiu	$2,$2,1

	sw	$2,120($16)
.L71:
	ld	$25,%call16(pthread_cond_signal)($28)
	.reloc	1f,R_MIPS_JALR,pthread_cond_signal
1:	jalr	$25
	daddiu	$4,$16,72

	ld	$25,%call16(pthread_mutex_unlock)($28)
	.reloc	1f,R_MIPS_JALR,pthread_mutex_unlock
1:	jalr	$25
	move	$4,$17

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L73:
	ld	$31,24($sp)
	li	$2,1			# 0x1
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	sb	$2,28($12)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x26511JobProvider10tryWakeOneEv
	.size	_ZN4x26511JobProvider10tryWakeOneEv, .-_ZN4x26511JobProvider10tryWakeOneEv
	.align	2
	.align	3
	.globl	_ZN4x26510ThreadPool12tryBondPeersEijRNS_15BondedTaskGroupE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26510ThreadPool12tryBondPeersEijRNS_15BondedTaskGroupE
	.type	_ZN4x26510ThreadPool12tryBondPeersEijRNS_15BondedTaskGroupE, @function
_ZN4x26510ThreadPool12tryBondPeersEijRNS_15BondedTaskGroupE:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26510ThreadPool12tryBondPeersEijRNS_15BondedTaskGroupE)))
	daddu	$28,$28,$25
	sd	$22,56($sp)
	move	$22,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26510ThreadPool12tryBondPeersEijRNS_15BondedTaskGroupE)))
	sd	$21,48($sp)
	move	$21,$7
	sd	$20,40($sp)
	li	$20,-1			# 0xffffffffffffffff
	sd	$19,32($sp)
	sd	$18,24($sp)
	move	$18,$6
	sd	$17,16($sp)
	move	$17,$4
	sd	$16,8($sp)
	move	$16,$0
	sd	$31,88($sp)
	sd	$fp,80($sp)
	sd	$23,64($sp)
	b	.L77
	ld	$19,%got_disp(_ZN4x26510ThreadPool24tryAcquireSleepingThreadEjj)($28)

	.align	3
.L80:
	ld	$3,40($17)
	dlsa	$2,$2,$2,3
	addiu	$16,$16,1
	dsll	$2,$2,4
	daddu	$3,$3,$2
	sd	$21,136($3)
	ld	$23,40($17)
	daddu	$23,$23,$2
	daddiu	$fp,$23,32
	.reloc	1f,R_MIPS_JALR,pthread_mutex_lock
1:	jalr	$25
	move	$4,$fp

	lw	$2,120($23)
	daddiu	$4,$23,72
	beq	$2,$20,.L76
	ld	$25,%call16(pthread_cond_signal)($28)

	addiu	$2,$2,1
	sw	$2,120($23)
.L76:
	.reloc	1f,R_MIPS_JALR,pthread_cond_signal
1:	jalr	$25
	nop

	ld	$25,%call16(pthread_mutex_unlock)($28)
	.reloc	1f,R_MIPS_JALR,pthread_mutex_unlock
1:	jalr	$25
	move	$4,$fp

	slt	$2,$16,$22
	beq	$2,$0,.L81
	ld	$31,88($sp)

.L77:
	move	$25,$19
	move	$4,$17
	move	$6,$0
	.reloc	1f,R_MIPS_JALR,_ZN4x26510ThreadPool24tryAcquireSleepingThreadEjj
1:	jalr	$25
	move	$5,$18

	bgez	$2,.L80
	ld	$25,%call16(pthread_mutex_lock)($28)

	ld	$31,88($sp)
.L81:
	move	$2,$16
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

	.set	macro
	.set	reorder
	.end	_ZN4x26510ThreadPool12tryBondPeersEijRNS_15BondedTaskGroupE
	.size	_ZN4x26510ThreadPool12tryBondPeersEijRNS_15BondedTaskGroupE, .-_ZN4x26510ThreadPool12tryBondPeersEijRNS_15BondedTaskGroupE
	.align	2
	.align	3
	.globl	_ZN4x26510ThreadPoolC2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26510ThreadPoolC2Ev
	.type	_ZN4x26510ThreadPoolC2Ev, @function
_ZN4x26510ThreadPoolC2Ev:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	li	$6,48			# 0x30
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26510ThreadPoolC2Ev)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26510ThreadPoolC2Ev)))
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
	.end	_ZN4x26510ThreadPoolC2Ev
	.size	_ZN4x26510ThreadPoolC2Ev, .-_ZN4x26510ThreadPoolC2Ev
	.globl	_ZN4x26510ThreadPoolC1Ev
	_ZN4x26510ThreadPoolC1Ev = _ZN4x26510ThreadPoolC2Ev
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
	.globl	_ZN4x26510ThreadPool6createEiim
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26510ThreadPool6createEiim
	.type	_ZN4x26510ThreadPool6createEiim, @function
_ZN4x26510ThreadPool6createEiim:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26510ThreadPool6createEiim)))
	daddu	$28,$28,$25
	sd	$18,24($sp)
	move	$18,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26510ThreadPool6createEiim)))
	dlsa	$4,$5,$5,3
	sd	$23,64($sp)
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	dsll	$4,$4,4
	move	$23,$6
	sd	$19,32($sp)
	move	$19,$5
	sd	$31,88($sp)
	sd	$fp,80($sp)
	sd	$22,56($sp)
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	sw	$5,8($18)

	beq	$2,$0,.L85
	sd	$2,40($18)

	blez	$19,.L85
	ld	$21,%got_page(.LC0)($28)

	move	$fp,$0
	move	$17,$0
	ld	$20,%got_page(.LC1)($28)
	ld	$22,%got_disp(_ZTVN4x26512WorkerThreadE)($28)
	daddiu	$21,$21,%got_ofst(.LC0)
	b	.L91
	daddiu	$20,$20,%got_ofst(.LC1)

	.align	3
.L98:
	ld	$2,40($18)
.L91:
	daddu	$16,$2,$fp
	beq	$16,$0,.L87
	ld	$25,%call16(_ZN4x2656ThreadC2Ev)($28)

	.reloc	1f,R_MIPS_JALR,_ZN4x2656ThreadC2Ev
1:	jalr	$25
	move	$4,$16

	ld	$25,%call16(pthread_mutex_init)($28)
	daddiu	$4,$16,32
	daddiu	$2,$22,16
	move	$5,$0
	sw	$17,24($16)
	sd	$2,0($16)
	sd	$18,16($16)
	.reloc	1f,R_MIPS_JALR,pthread_mutex_init
1:	jalr	$25
	sw	$0,120($16)

	daddiu	$4,$16,72
	bne	$2,$0,.L89
	ld	$25,%call16(pthread_cond_init)($28)

	.reloc	1f,R_MIPS_JALR,pthread_cond_init
1:	jalr	$25
	move	$5,$0

	beq	$2,$0,.L87
	nop

.L89:
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	move	$7,$21
	move	$6,$0
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	move	$4,$0

.L87:
	addiu	$17,$17,1
	bne	$19,$17,.L98
	daddiu	$fp,$fp,144

.L85:
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	dsll	$4,$23,3

	ld	$3,40($18)
	sw	$0,4($18)
	beq	$3,$0,.L93
	sd	$2,32($18)

	ld	$31,88($sp)
	sltu	$2,$0,$2
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
.L93:
	ld	$31,88($sp)
	move	$2,$0
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

	.set	macro
	.set	reorder
	.end	_ZN4x26510ThreadPool6createEiim
	.size	_ZN4x26510ThreadPool6createEiim, .-_ZN4x26510ThreadPool6createEiim
	.align	2
	.align	3
	.globl	_ZN4x26510ThreadPool5startEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26510ThreadPool5startEv
	.type	_ZN4x26510ThreadPool5startEv, @function
_ZN4x26510ThreadPool5startEv:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,8($4)
	li	$3,1			# 0x1
	blez	$2,.L106
	sb	$3,24($4)

	daddiu	$sp,$sp,-48
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26510ThreadPool5startEv)))
	daddu	$28,$28,$25
	sd	$18,24($sp)
	move	$18,$4
	sd	$17,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26510ThreadPool5startEv)))
	move	$17,$0
	sd	$16,8($sp)
	move	$16,$0
	b	.L103
	sd	$31,40($sp)

	.align	3
.L101:
	lw	$2,8($18)
	slt	$2,$17,$2
	beq	$2,$0,.L110
	li	$2,1			# 0x1

.L103:
	ld	$4,40($18)
	addiu	$17,$17,1
	ld	$25,%call16(_ZN4x2656Thread5startEv)($28)
	daddu	$4,$4,$16
	.reloc	1f,R_MIPS_JALR,_ZN4x2656Thread5startEv
1:	jalr	$25
	daddiu	$16,$16,144

	bne	$2,$0,.L101
	ld	$31,40($sp)

	sb	$0,24($18)
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.align	3
.L110:
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.align	3
.L106:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN4x26510ThreadPool5startEv
	.size	_ZN4x26510ThreadPool5startEv, .-_ZN4x26510ThreadPool5startEv
	.align	2
	.align	3
	.globl	_ZN4x26510ThreadPool11stopWorkersEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26510ThreadPool11stopWorkersEv
	.type	_ZN4x26510ThreadPool11stopWorkersEv, @function
_ZN4x26510ThreadPool11stopWorkersEv:
	.frame	$sp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,40($4)
	beq	$2,$0,.L128
	nop

	lw	$2,8($4)
	blez	$2,.L128
	sb	$0,24($4)

	daddiu	$sp,$sp,-80
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26510ThreadPool11stopWorkersEv)))
	daddu	$28,$28,$25
	sd	$21,48($sp)
	li	$21,1			# 0x1
	sd	$20,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26510ThreadPool11stopWorkersEv)))
	li	$20,-1			# 0xffffffffffffffff
	sd	$19,32($sp)
	move	$19,$0
	sd	$18,24($sp)
	move	$18,$0
	sd	$16,8($sp)
	move	$16,$4
	sd	$31,72($sp)
	sd	$22,56($sp)
	sd	$17,16($sp)
	.align	3
.L116:
	lw	$2,0($16)
	srl	$2,$2,$18
	andi	$2,$2,0x1
	bne	$2,$0,.L113
	sll	$17,$21,$18

	ld	$25,%call16(usleep)($28)
	.align	3
.L127:
	.reloc	1f,R_MIPS_JALR,usleep
1:	jalr	$25
	move	$4,$0

	lw	$2,0($16)
	and	$2,$2,$17
	beq	$2,$0,.L127
	ld	$25,%call16(usleep)($28)

.L113:
	ld	$17,40($16)
	ld	$25,%call16(pthread_mutex_lock)($28)
	daddu	$17,$17,$19
	daddiu	$22,$17,32
	.reloc	1f,R_MIPS_JALR,pthread_mutex_lock
1:	jalr	$25
	move	$4,$22

	lw	$2,120($17)
	beq	$2,$20,.L115
	addiu	$2,$2,1

	sw	$2,120($17)
.L115:
	ld	$25,%call16(pthread_cond_signal)($28)
	daddiu	$4,$17,72
	.reloc	1f,R_MIPS_JALR,pthread_cond_signal
1:	jalr	$25
	addiu	$18,$18,1

	ld	$25,%call16(pthread_mutex_unlock)($28)
	.reloc	1f,R_MIPS_JALR,pthread_mutex_unlock
1:	jalr	$25
	move	$4,$22

	ld	$4,40($16)
	ld	$25,%call16(_ZN4x2656Thread4stopEv)($28)
	daddu	$4,$4,$19
	.reloc	1f,R_MIPS_JALR,_ZN4x2656Thread4stopEv
1:	jalr	$25
	daddiu	$19,$19,144

	lw	$2,8($16)
	slt	$2,$18,$2
	bne	$2,$0,.L116
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

.L128:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x26510ThreadPool11stopWorkersEv
	.size	_ZN4x26510ThreadPool11stopWorkersEv, .-_ZN4x26510ThreadPool11stopWorkersEv
	.align	2
	.align	3
	.globl	_ZN4x26510ThreadPoolD2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26510ThreadPoolD2Ev
	.type	_ZN4x26510ThreadPoolD2Ev, @function
_ZN4x26510ThreadPoolD2Ev:
	.frame	$sp,80,$31		# vars= 0, regs= 9/0, args= 0, gp= 0
	.mask	0x907f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-80
	sd	$19,32($sp)
	move	$19,$4
	ld	$4,40($4)
	sd	$28,64($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26510ThreadPoolD2Ev)))
	daddu	$28,$28,$25
	sd	$31,72($sp)
	sd	$22,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26510ThreadPoolD2Ev)))
	sd	$21,48($sp)
	sd	$20,40($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	beq	$4,$0,.L130
	sd	$16,8($sp)

	lw	$2,8($19)
	blez	$2,.L130
	ld	$20,%got_disp(_ZTVN4x26512WorkerThreadE)($28)

	move	$18,$0
	move	$17,$0
	ld	$21,%got_disp(_ZN4x26512WorkerThreadD2Ev)($28)
	b	.L133
	daddiu	$20,$20,16

	.align	3
.L139:
	.reloc	1f,R_MIPS_JALR,pthread_cond_destroy
1:	jalr	$25
	sd	$20,0($16)

	move	$4,$22
	ld	$25,%call16(pthread_mutex_destroy)($28)
	addiu	$17,$17,1
	.reloc	1f,R_MIPS_JALR,pthread_mutex_destroy
1:	jalr	$25
	daddiu	$18,$18,144

	ld	$25,%call16(_ZN4x2656ThreadD2Ev)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2656ThreadD2Ev
1:	jalr	$25
	move	$4,$16

	lw	$2,8($19)
	slt	$2,$17,$2
	beq	$2,$0,.L130
	ld	$4,40($19)

.L133:
	daddu	$16,$4,$18
	ld	$25,%call16(pthread_cond_destroy)($28)
	ld	$2,0($16)
	daddiu	$4,$16,72
	ld	$2,0($2)
	beq	$2,$21,.L139
	daddiu	$22,$16,32

	move	$25,$2
	jalr	$25
	move	$4,$16

	lw	$2,8($19)
	addiu	$17,$17,1
	daddiu	$18,$18,144
	slt	$2,$17,$2
	bne	$2,$0,.L133
	ld	$4,40($19)

.L130:
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	nop

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,32($19)

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
	.end	_ZN4x26510ThreadPoolD2Ev
	.size	_ZN4x26510ThreadPoolD2Ev, .-_ZN4x26510ThreadPoolD2Ev
	.globl	_ZN4x26510ThreadPoolD1Ev
	_ZN4x26510ThreadPoolD1Ev = _ZN4x26510ThreadPoolD2Ev
	.align	2
	.align	3
	.globl	_ZN4x26510ThreadPool24setCurrentThreadAffinityEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26510ThreadPool24setCurrentThreadAffinityEv
	.type	_ZN4x26510ThreadPool24setCurrentThreadAffinityEv, @function
_ZN4x26510ThreadPool24setCurrentThreadAffinityEv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x26510ThreadPool24setCurrentThreadAffinityEv
	.size	_ZN4x26510ThreadPool24setCurrentThreadAffinityEv, .-_ZN4x26510ThreadPool24setCurrentThreadAffinityEv
	.align	2
	.align	3
	.globl	_ZN4x26510ThreadPool21setThreadNodeAffinityEPv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26510ThreadPool21setThreadNodeAffinityEPv
	.type	_ZN4x26510ThreadPool21setThreadNodeAffinityEPv, @function
_ZN4x26510ThreadPool21setThreadNodeAffinityEPv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x26510ThreadPool21setThreadNodeAffinityEPv
	.size	_ZN4x26510ThreadPool21setThreadNodeAffinityEPv, .-_ZN4x26510ThreadPool21setThreadNodeAffinityEPv
	.align	2
	.align	3
	.globl	_ZN4x26510ThreadPool16getNumaNodeCountEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26510ThreadPool16getNumaNodeCountEv
	.type	_ZN4x26510ThreadPool16getNumaNodeCountEv, @function
_ZN4x26510ThreadPool16getNumaNodeCountEv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN4x26510ThreadPool16getNumaNodeCountEv
	.size	_ZN4x26510ThreadPool16getNumaNodeCountEv, .-_ZN4x26510ThreadPool16getNumaNodeCountEv
	.align	2
	.align	3
	.globl	_ZN4x26510ThreadPool11getCpuCountEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26510ThreadPool11getCpuCountEv
	.type	_ZN4x26510ThreadPool11getCpuCountEv, @function
_ZN4x26510ThreadPool11getCpuCountEv:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26510ThreadPool11getCpuCountEv)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26510ThreadPool11getCpuCountEv)))
	ld	$25,%call16(sysconf)($28)
	.reloc	1f,R_MIPS_JALR,sysconf
1:	jalr	$25
	li	$4,84			# 0x54

	ld	$31,8($sp)
	ld	$28,0($sp)
	sll	$2,$2,0
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN4x26510ThreadPool11getCpuCountEv
	.size	_ZN4x26510ThreadPool11getCpuCountEv, .-_ZN4x26510ThreadPool11getCpuCountEv
	.align	2
	.align	3
	.globl	_ZN4x26510ThreadPool20getFrameThreadsCountEP10x265_parami
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26510ThreadPool20getFrameThreadsCountEP10x265_parami
	.type	_ZN4x26510ThreadPool20getFrameThreadsCountEP10x265_parami, @function
_ZN4x26510ThreadPool20getFrameThreadsCountEP10x265_parami:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,16($4)
	lui	$9,%hi(%neg(%gp_rel(_ZN4x26510ThreadPool20getFrameThreadsCountEP10x265_parami)))
	daddu	$9,$9,$25
	lw	$3,76($4)
	bne	$2,$0,.L149
	daddiu	$9,$9,%lo(%neg(%gp_rel(_ZN4x26510ThreadPool20getFrameThreadsCountEP10x265_parami)))

	lw	$2,180($4)
	ld	$7,%got_disp(_ZN4x26510g_log2SizeE)($9)
	dext	$8,$2,0,32
	addiu	$2,$2,-1
	daddu	$7,$7,$8
	addu	$2,$2,$3
	lbu	$3,0($7)
	srl	$2,$2,$3
	slt	$3,$2,31
	beq	$3,$0,.L150
	li	$6,16			# 0x10

	addiu	$2,$2,1
	srl	$6,$2,31
	addu	$2,$6,$2
	sra	$6,$2,1
.L150:
	slt	$2,$5,$6
	movz	$5,$6,$2
	jr	$31
	sw	$5,4($4)

	.align	3
.L149:
	slt	$2,$5,32
	bne	$2,$0,.L152
	slt	$2,$5,16

	slt	$2,$3,2001
	sltu	$2,$2,1
	daddiu	$2,$2,5
	jr	$31
	sw	$2,4($4)

	.align	3
.L152:
	beq	$2,$0,.L160
	slt	$2,$5,8

	beq	$2,$0,.L161
	slt	$5,$5,4

	li	$3,2			# 0x2
	li	$2,1			# 0x1
	movz	$2,$3,$5
	jr	$31
	sw	$2,4($4)

	.align	3
.L160:
	li	$2,4			# 0x4
	jr	$31
	sw	$2,4($4)

	.align	3
.L161:
	li	$2,3			# 0x3
	jr	$31
	sw	$2,4($4)

	.set	macro
	.set	reorder
	.end	_ZN4x26510ThreadPool20getFrameThreadsCountEP10x265_parami
	.size	_ZN4x26510ThreadPool20getFrameThreadsCountEP10x265_parami, .-_ZN4x26510ThreadPool20getFrameThreadsCountEP10x265_parami
	.section	.rodata.str1.8
	.align	3
.LC2:
	.ascii	"NULL\000"
	.align	3
.LC3:
	.ascii	"Creating only %d worker threads beyond specified numbers"
	.ascii	" with --pools (if specified) to prevent asymmetry in poo"
	.ascii	"ls; may not use all HW contexts\012\000"
	.align	3
.LC4:
	.ascii	"No pool thread available. Deciding frame-threads based o"
	.ascii	"n detected CPU threads\012\000"
	.align	3
.LC5:
	.ascii	"Reducing number of thread pools for frame thread count\012"
	.ascii	"\000"
	.align	3
.LC6:
	.ascii	"Setting lookahead threads to a maximum of half the total"
	.ascii	" number of threads\012\000"
	.align	3
.LC7:
	.ascii	"Thread pool created using %d threads\012\000"
	.text
	.align	2
	.align	3
	.globl	_ZN4x26510ThreadPool16allocThreadPoolsEP10x265_paramRib
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26510ThreadPool16allocThreadPoolsEP10x265_paramRib
	.type	_ZN4x26510ThreadPool16allocThreadPoolsEP10x265_paramRib, @function
_ZN4x26510ThreadPool16allocThreadPoolsEP10x265_paramRib:
	.frame	$sp,2224,$31		# vars= 2128, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-2224
	sd	$28,2200($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26510ThreadPool16allocThreadPoolsEP10x265_paramRib)))
	daddu	$28,$28,$25
	sd	$22,2184($sp)
	move	$22,$6
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26510ThreadPool16allocThreadPoolsEP10x265_paramRib)))
	sd	$20,2168($sp)
	li	$6,512			# 0x200
	ld	$25,%call16(memset)($28)
	move	$20,$5
	move	$5,$0
	sd	$17,2144($sp)
	move	$17,$4
	daddiu	$4,$sp,1552
	sd	$31,2216($sp)
	sd	$18,2152($sp)
	sd	$16,2136($sp)
	sd	$fp,2208($sp)
	sd	$23,2192($sp)
	sd	$21,2176($sp)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sd	$19,2160($sp)

	daddiu	$2,$sp,1032
	ld	$25,%call16(memset)($28)
	move	$4,$2
	li	$6,516			# 0x204
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	sd	$2,2096($sp)

	ld	$25,%call16(memset)($28)
	li	$6,1032			# 0x408
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$4,$sp

	ld	$25,%call16(sysconf)($28)
	.reloc	1f,R_MIPS_JALR,sysconf
1:	jalr	$25
	li	$4,84			# 0x54

	ld	$16,8($17)
	sll	$18,$2,0
	beq	$16,$0,.L167
	sw	$18,1552($sp)

	lb	$19,0($16)
	beq	$19,$0,.L167
	li	$2,45			# 0x2d

	beq	$19,$2,.L213
	nop

	li	$2,42			# 0x2a
	beq	$19,$2,.L167
	ld	$5,%got_page(.LC2)($28)

	move	$4,$16
	ld	$25,%call16(strcasecmp)($28)
	.reloc	1f,R_MIPS_JALR,strcasecmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC2)

	beq	$2,$0,.L167
	li	$2,43			# 0x2b

	bne	$19,$2,.L169
	li	$2,1			# 0x1

	move	$5,$0
	sw	$18,1036($sp)
	sd	$2,8($sp)
.L174:
	b	.L176
	li	$2,44			# 0x2c

	.align	3
.L177:
	beq	$3,$2,.L175
	nop

.L176:
	daddiu	$16,$16,1
	lb	$3,0($16)
	bne	$3,$0,.L177
	nop

.L175:
	slt	$2,$18,33
	bne	$2,$0,.L178
	move	$fp,$5

	b	.L258
	andi	$2,$18,0x1f

	.align	3
.L213:
	move	$18,$0
	b	.L174
	move	$5,$0

	.align	3
.L167:
	li	$2,1			# 0x1
	sw	$18,1036($sp)
	sd	$2,8($sp)
	slt	$2,$18,33
	bne	$2,$0,.L209
	move	$fp,$0

	andi	$2,$18,0x1f
.L258:
	slt	$4,$2,16
	bne	$4,$0,.L245
	ld	$7,%got_page(.LC3)($28)

	bne	$fp,$0,.L246
	nop

.L209:
	beq	$18,$0,.L247
	sw	$0,0($20)

	move	$fp,$0
	move	$2,$0
.L181:
	addiu	$6,$18,31
	addiu	$7,$18,62
	slt	$4,$6,0
	addu	$5,$18,$fp
	movn	$6,$7,$4
	sra	$4,$6,5
	addu	$2,$4,$2
	sw	$2,0($20)
.L184:
	bne	$22,$0,.L185
	nop

.L251:
	beq	$2,$0,.L183
	move	$18,$fp

	lw	$4,4($17)
	beq	$4,$0,.L254
	ld	$25,%got_disp(_ZN4x26510ThreadPool20getFrameThreadsCountEP10x265_parami)($28)

	slt	$2,$4,$2
	bne	$2,$0,.L255
	ld	$7,%got_page(.LC5)($28)

.L190:
	li	$2,22347776			# 0x1550000
	lw	$16,0($20)
	li	$4,-1			# 0xffffffffffffffff
	daddiu	$2,$2,21845
	dsll	$2,$2,16
	daddiu	$2,$2,21845
	dsll	$2,$2,17
	ori	$2,$2,0xaaab
	sltu	$2,$16,$2
	bne	$2,$0,.L249
	daddiu	$18,$16,-1

.L192:
	ld	$25,%call16(_Znam)($28)
	.reloc	1f,R_MIPS_JALR,_Znam
1:	jalr	$25
	nop

	daddiu	$3,$2,8
	sd	$16,0($2)
	bltz	$18,.L193
	sd	$3,2072($sp)

.L191:
	ld	$16,2072($sp)
	dlsa	$18,$18,$18,1
	daddiu	$2,$2,56
	dlsa	$18,$18,$2,4
	ld	$25,%call16(memset)($28)
	.align	3
.L256:
	move	$4,$16
	li	$6,48			# 0x30
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	daddiu	$16,$16,48

	bne	$18,$16,.L256
	ld	$25,%call16(memset)($28)

.L193:
	ld	$19,2072($sp)
	beq	$19,$0,.L195
	xori	$21,$22,0x1

	lw	$4,0($20)
	lw	$2,4($17)
	addu	$2,$2,$4
	addiu	$2,$2,-1
	gsdiv	$5,$2,$4
	teq	$4,$0,7
	blez	$4,.L162
	addu	$21,$5,$21

	ld	$2,%got_disp(_ZN4x26510ThreadPool6createEiim)($28)
	move	$16,$0
	move	$23,$0
	sd	$2,2088($sp)
	ld	$2,%got_page(.LC7)($28)
	sd	$2,2104($sp)
	ld	$2,%got_page(.LC6)($28)
	daddiu	$2,$2,%got_ofst(.LC6)
	sd	$2,2112($sp)
	ld	$2,%got_page(.LC1)($28)
	daddiu	$2,$2,%got_ofst(.LC1)
	sd	$2,2080($sp)
	.align	3
.L205:
	bne	$fp,$0,.L196
	ld	$3,2096($sp)

	addiu	$4,$23,1
	move	$2,$4
	dlsa	$2,$2,$3,2
	.align	3
.L197:
	daddiu	$2,$2,4
	lw	$fp,-4($2)
	move	$23,$4
	beq	$fp,$0,.L197
	addiu	$4,$4,1

.L196:
	slt	$8,$fp,33
	li	$2,32			# 0x20
	movn	$2,$fp,$8
	move	$8,$2
	bne	$16,$0,.L198
	move	$18,$2

	lw	$8,712($17)
	srl	$2,$2,31
	addu	$2,$2,$18
	sra	$2,$2,1
	slt	$4,$2,$8
	bne	$4,$0,.L250
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)

	bne	$22,$0,.L201
	nop

	subu	$8,$18,$8
.L253:
	dlsa	$2,$23,$sp,3
	ld	$25,2088($sp)
	move	$5,$8
	ld	$7,0($2)
	move	$6,$21
	move	$4,$19
	jalr	$25
	sd	$8,2064($sp)

	bne	$2,$0,.L204
	ld	$8,2064($sp)

.L252:
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,2072($sp)

	sw	$0,0($20)
	sd	$0,2072($sp)
.L162:
	ld	$31,2216($sp)
	ld	$2,2072($sp)
	ld	$fp,2208($sp)
	ld	$28,2200($sp)
	ld	$23,2192($sp)
	ld	$22,2184($sp)
	ld	$21,2176($sp)
	ld	$20,2168($sp)
	ld	$19,2160($sp)
	ld	$18,2152($sp)
	ld	$17,2144($sp)
	ld	$16,2136($sp)
	jr	$31
	daddiu	$sp,$sp,2224

	.align	3
.L169:
	ld	$25,%call16(strtol)($28)
	move	$4,$16
	li	$6,10			# 0xa
	.reloc	1f,R_MIPS_JALR,strtol
1:	jalr	$25
	move	$5,$0

	ld	$25,%call16(strchr)($28)
	li	$5,44			# 0x2c
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,strchr
1:	jalr	$25
	sll	$19,$2,0

	beq	$2,$0,.L170
	slt	$3,$18,$19

	move	$2,$19
	lb	$4,0($16)
	movn	$2,$18,$3
	move	$3,$2
	li	$2,1			# 0x1
	sd	$2,0($sp)
	move	$5,$3
	move	$2,$3
	beq	$4,$0,.L171
	sw	$3,1032($sp)

	move	$18,$0
.L172:
	li	$2,44			# 0x2c
	bne	$4,$2,.L176
	nop

.L178:
	beq	$5,$0,.L209
	addiu	$6,$5,62

	addiu	$2,$5,31
	move	$4,$2
	slt	$2,$2,0
	movn	$4,$6,$2
	move	$fp,$5
	sra	$2,$4,5
	bne	$18,$0,.L181
	sw	$2,0($20)

	beq	$22,$0,.L251
	nop

	.align	3
.L185:
	beq	$2,$0,.L162
	sd	$0,2072($sp)

	lw	$4,4($17)
	slt	$2,$4,$2
	beq	$2,$0,.L188
	ld	$7,%got_page(.LC5)($28)

.L255:
	move	$4,$17
	li	$6,3			# 0x3
	ld	$5,%got_page(.LC1)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$7,%got_ofst(.LC5)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC1)

	lw	$2,4($17)
	li	$5,1			# 0x1
	slt	$4,$2,4
	dsra	$2,$2,1
	movn	$2,$5,$4
	sw	$2,0($20)
.L188:
	beq	$22,$0,.L190
	ld	$25,%call16(_Znam)($28)

	li	$4,56			# 0x38
	li	$2,1			# 0x1
	sw	$2,0($20)
	.reloc	1f,R_MIPS_JALR,_Znam
1:	jalr	$25
	move	$18,$0

	li	$4,1			# 0x1
	daddiu	$3,$2,8
	sd	$4,0($2)
	b	.L191
	sd	$3,2072($sp)

	.align	3
.L247:
	bne	$22,$0,.L162
	sd	$0,2072($sp)

.L183:
	ld	$7,%got_page(.LC4)($28)
	move	$4,$17
	li	$6,3			# 0x3
	ld	$5,%got_page(.LC1)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$7,%got_ofst(.LC4)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC1)

	ld	$25,%call16(sysconf)($28)
	.reloc	1f,R_MIPS_JALR,sysconf
1:	jalr	$25
	li	$4,84			# 0x54

	lw	$3,4($17)
	beq	$3,$0,.L187
	ld	$25,%got_disp(_ZN4x26510ThreadPool20getFrameThreadsCountEP10x265_parami)($28)

	lw	$2,0($20)
	b	.L185
	move	$fp,$18

	.align	3
.L198:
	beq	$22,$0,.L257
	dlsa	$2,$23,$sp,3

	lw	$8,712($17)
.L201:
	li	$21,1			# 0x1
	dlsa	$2,$23,$sp,3
.L257:
	ld	$25,2088($sp)
	move	$5,$8
	ld	$7,0($2)
	move	$6,$21
	move	$4,$19
	jalr	$25
	sd	$8,2064($sp)

	beq	$2,$0,.L252
	ld	$8,2064($sp)

.L204:
	ld	$2,2104($sp)
	move	$4,$17
	li	$6,2			# 0x2
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	addiu	$16,$16,1
	subu	$fp,$fp,$18
	ld	$5,2080($sp)
	daddiu	$19,$19,48
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$7,$2,%got_ofst(.LC7)

	lw	$2,0($20)
	dlsa	$4,$23,$sp,2
	slt	$2,$16,$2
	bne	$2,$0,.L205
	sw	$fp,1032($4)

	ld	$31,2216($sp)
	ld	$2,2072($sp)
	ld	$fp,2208($sp)
	ld	$28,2200($sp)
	ld	$23,2192($sp)
	ld	$22,2184($sp)
	ld	$21,2176($sp)
	ld	$20,2168($sp)
	ld	$19,2160($sp)
	ld	$18,2152($sp)
	ld	$17,2144($sp)
	ld	$16,2136($sp)
	jr	$31
	daddiu	$sp,$sp,2224

	.align	3
.L250:
	li	$6,3			# 0x3
	move	$4,$17
	ld	$7,2112($sp)
	ld	$5,2080($sp)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	sw	$2,712($17)

	bne	$22,$0,.L201
	lw	$8,712($17)

	b	.L253
	subu	$8,$18,$8

	.align	3
.L245:
	subu	$8,$18,$2
	li	$6,3			# 0x3
	ld	$5,%got_page(.LC1)($28)
	move	$4,$17
	move	$18,$8
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$7,%got_ofst(.LC3)
	sw	$8,1036($sp)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC1)

	beq	$fp,$0,.L209
	nop

.L246:
	addiu	$2,$fp,31
	addiu	$6,$fp,62
	move	$5,$2
	slt	$4,$2,0
	move	$2,$6
	movz	$2,$5,$4
	b	.L181
	sra	$2,$2,5

	.align	3
.L195:
	ld	$31,2216($sp)
	ld	$2,2072($sp)
	sw	$0,0($20)
	ld	$fp,2208($sp)
	ld	$28,2200($sp)
	ld	$23,2192($sp)
	ld	$22,2184($sp)
	ld	$21,2176($sp)
	ld	$20,2168($sp)
	ld	$19,2160($sp)
	ld	$18,2152($sp)
	ld	$17,2144($sp)
	ld	$16,2136($sp)
	jr	$31
	daddiu	$sp,$sp,2224

.L170:
	slt	$18,$19,33
	li	$2,32			# 0x20
	lb	$4,0($16)
	movn	$2,$19,$18
	move	$18,$2
	li	$2,1			# 0x1
	sd	$2,8($sp)
	beq	$4,$0,.L209
	sw	$18,1036($sp)

	b	.L172
	move	$5,$0

.L187:
	sll	$5,$2,0
	move	$fp,$18
.L254:
	.reloc	1f,R_MIPS_JALR,_ZN4x26510ThreadPool20getFrameThreadsCountEP10x265_parami
1:	jalr	$25
	move	$4,$17

	b	.L185
	lw	$2,0($20)

.L171:
	beq	$2,$0,.L209
	move	$18,$0

	addiu	$2,$5,31
	addiu	$6,$5,62
	move	$4,$2
	slt	$2,$2,0
	movn	$4,$6,$2
	move	$fp,$3
	sra	$2,$4,5
	b	.L184
	sw	$2,0($20)

.L249:
	dlsa	$4,$16,$16,1
	dsll	$4,$4,4
	b	.L192
	daddiu	$4,$4,8

	.set	macro
	.set	reorder
	.end	_ZN4x26510ThreadPool16allocThreadPoolsEP10x265_paramRib
	.size	_ZN4x26510ThreadPool16allocThreadPoolsEP10x265_paramRib, .-_ZN4x26510ThreadPool16allocThreadPoolsEP10x265_paramRib
	.weak	_ZTSN4x26512WorkerThreadE
	.section	.rodata._ZTSN4x26512WorkerThreadE,"aG",@progbits,_ZTSN4x26512WorkerThreadE,comdat
	.align	3
	.type	_ZTSN4x26512WorkerThreadE, @object
	.size	_ZTSN4x26512WorkerThreadE, 22
_ZTSN4x26512WorkerThreadE:
	.ascii	"N4x26512WorkerThreadE\000"
	.weak	_ZTIN4x26512WorkerThreadE
	.section	.data.rel.ro._ZTIN4x26512WorkerThreadE,"awG",@progbits,_ZTIN4x26512WorkerThreadE,comdat
	.align	3
	.type	_ZTIN4x26512WorkerThreadE, @object
	.size	_ZTIN4x26512WorkerThreadE, 24
_ZTIN4x26512WorkerThreadE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN4x26512WorkerThreadE
	.dword	_ZTIN4x2656ThreadE
	.weak	_ZTVN4x26512WorkerThreadE
	.section	.data.rel.ro.local._ZTVN4x26512WorkerThreadE,"awG",@progbits,_ZTVN4x26512WorkerThreadE,comdat
	.align	3
	.type	_ZTVN4x26512WorkerThreadE, @object
	.size	_ZTVN4x26512WorkerThreadE, 40
_ZTVN4x26512WorkerThreadE:
	.dword	0
	.dword	_ZTIN4x26512WorkerThreadE
	.dword	_ZN4x26512WorkerThreadD1Ev
	.dword	_ZN4x26512WorkerThreadD0Ev
	.dword	_ZN4x26512WorkerThread10threadMainEv
	.ident	"GCC: (GNU) 7.3.0"
