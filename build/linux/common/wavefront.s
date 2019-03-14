	.file	1 "wavefront.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.align	3
	.globl	_ZN4x2659WaveFront7findJobEi
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659WaveFront7findJobEi
	.type	_ZN4x2659WaveFront7findJobEi, @function
_ZN4x2659WaveFront7findJobEi:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$6,48($4)
	blez	$6,.L14
	move	$9,$0

	ld	$8,32($4)
	daddiu	$sp,$sp,-32
	ld	$3,40($4)
	move	$12,$0
	li	$11,31			# 0x1f
	sd	$16,0($sp)
	li	$16,1			# 0x1
	sd	$31,24($sp)
	sd	$17,8($sp)
.L7:
	daddu	$7,$8,$9
	daddu	$10,$3,$9
	lw	$13,0($7)
	lw	$2,0($10)
	and	$2,$2,$13
	bne	$2,$0,.L6
	nop

	b	.L20
	addiu	$12,$12,1

	.align	3
.L4:
	ld	$8,32($4)
	ld	$3,40($4)
	daddu	$7,$8,$9
	daddu	$2,$3,$9
	lw	$10,0($7)
	lw	$2,0($2)
	and	$2,$2,$10
	beq	$2,$0,.L19
	nop

.L6:
	subu	$3,$0,$2
	and	$2,$3,$2
	clz	$2,$2
	subu	$2,$11,$2
	sll	$8,$16,$2
	nor	$10,$0,$8
	.set	noat
	sync
1:
	ll	$3,0($7)
	and	$1,$3,$10
	sc	$1,0($7)
	beq	$1,$0,1b
	nop
	sync
	.set	at
	and	$3,$3,$8
	beq	$3,$0,.L4
	move	$6,$5

	ld	$3,0($4)
	sll	$12,$12,5
	addu	$5,$12,$2
	ld	$25,24($3)
	jalr	$25
	move	$17,$4

	ld	$31,24($sp)
	sb	$16,28($17)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L19:
	lw	$6,48($4)
	addiu	$12,$12,1
.L20:
	slt	$2,$12,$6
	bne	$2,$0,.L7
	daddiu	$9,$9,4

	ld	$31,24($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	daddiu	$sp,$sp,32
	jr	$31
	sb	$0,28($4)

.L14:
	jr	$31
	sb	$0,28($4)

	.set	macro
	.set	reorder
	.end	_ZN4x2659WaveFront7findJobEi
	.size	_ZN4x2659WaveFront7findJobEi, .-_ZN4x2659WaveFront7findJobEi
	.align	2
	.align	3
	.globl	_ZN4x2659WaveFront4initEi
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659WaveFront4initEi
	.type	_ZN4x2659WaveFront4initEi, @function
_ZN4x2659WaveFront4initEi:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	addiu	$2,$5,31
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659WaveFront4initEi)))
	sra	$2,$2,5
	daddu	$28,$28,$25
	sd	$16,8($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659WaveFront4initEi)))
	sd	$31,24($sp)
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	sw	$5,52($4)
	dsll	$4,$2,2
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	sw	$2,48($16)

	beq	$2,$0,.L22
	sd	$2,32($16)

	lw	$6,48($16)
	move	$5,$0
	move	$4,$2
	ld	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dsll	$6,$6,2

.L22:
	lw	$4,48($16)
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	dsll	$4,$4,2

	beq	$2,$0,.L23
	sd	$2,40($16)

	lw	$6,48($16)
	move	$5,$0
	move	$4,$2
	ld	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dsll	$6,$6,2

.L23:
	lw	$4,52($16)
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	dsll	$4,$4,2

	lw	$4,52($16)
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	sd	$2,56($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	dsll	$4,$4,2

	ld	$3,32($16)
	beq	$3,$0,.L25
	sd	$2,64($16)

	ld	$2,40($16)
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	sltu	$2,$0,$2
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L25:
	ld	$31,24($sp)
	move	$2,$0
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2659WaveFront4initEi
	.size	_ZN4x2659WaveFront4initEi, .-_ZN4x2659WaveFront4initEi
	.align	2
	.align	3
	.globl	_ZN4x2659WaveFrontD2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659WaveFrontD2Ev
	.type	_ZN4x2659WaveFrontD2Ev, @function
_ZN4x2659WaveFrontD2Ev:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659WaveFrontD2Ev)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659WaveFrontD2Ev)))
	ld	$4,56($4)
	ld	$2,%got_disp(_ZTVN4x2659WaveFrontE)($28)
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	sd	$31,24($sp)
	daddiu	$2,$2,16
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	sd	$2,0($16)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,64($16)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,32($16)

	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	ld	$4,40($16)

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2659WaveFrontD2Ev
	.size	_ZN4x2659WaveFrontD2Ev, .-_ZN4x2659WaveFrontD2Ev
	.globl	_ZN4x2659WaveFrontD1Ev
	_ZN4x2659WaveFrontD1Ev = _ZN4x2659WaveFrontD2Ev
	.align	2
	.align	3
	.globl	_ZN4x2659WaveFrontD0Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659WaveFrontD0Ev
	.type	_ZN4x2659WaveFrontD0Ev, @function
_ZN4x2659WaveFrontD0Ev:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659WaveFrontD0Ev)))
	daddu	$28,$28,$25
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659WaveFrontD0Ev)))
	sd	$16,8($sp)
	ld	$25,%got_disp(_ZN4x2659WaveFrontD1Ev)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659WaveFrontD1Ev
1:	jalr	$25
	move	$16,$4

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
	.end	_ZN4x2659WaveFrontD0Ev
	.size	_ZN4x2659WaveFrontD0Ev, .-_ZN4x2659WaveFrontD0Ev
	.align	2
	.align	3
	.globl	_ZN4x2659WaveFront19clearEnabledRowMaskEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659WaveFront19clearEnabledRowMaskEv
	.type	_ZN4x2659WaveFront19clearEnabledRowMaskEv, @function
_ZN4x2659WaveFront19clearEnabledRowMaskEv:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	lw	$6,48($4)
	move	$5,$0
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659WaveFront19clearEnabledRowMaskEv)))
	daddu	$28,$28,$25
	sd	$16,8($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659WaveFront19clearEnabledRowMaskEv)))
	ld	$4,40($4)
	ld	$25,%call16(memset)($28)
	sd	$31,24($sp)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dsll	$6,$6,2

	lw	$6,48($16)
	move	$5,$0
	ld	$25,%call16(memset)($28)
	ld	$4,32($16)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dsll	$6,$6,2

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2659WaveFront19clearEnabledRowMaskEv
	.size	_ZN4x2659WaveFront19clearEnabledRowMaskEv, .-_ZN4x2659WaveFront19clearEnabledRowMaskEv
	.align	2
	.align	3
	.globl	_ZN4x2659WaveFront10enqueueRowEi
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659WaveFront10enqueueRowEi
	.type	_ZN4x2659WaveFront10enqueueRowEi, @function
_ZN4x2659WaveFront10enqueueRowEi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$4,32($4)
	dsra	$2,$5,5
	li	$3,1			# 0x1
	andi	$5,$5,0x1f
	sll	$5,$3,$5
	dlsa	$2,$2,$4,2
	.set	noat
	sync
1:
	ll	$1,0($2)
	or	$1,$1,$5
	sc	$1,0($2)
	beq	$1,$0,1b
	nop
	sync
	.set	at
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x2659WaveFront10enqueueRowEi
	.size	_ZN4x2659WaveFront10enqueueRowEi, .-_ZN4x2659WaveFront10enqueueRowEi
	.align	2
	.align	3
	.globl	_ZN4x2659WaveFront9enableRowEi
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659WaveFront9enableRowEi
	.type	_ZN4x2659WaveFront9enableRowEi, @function
_ZN4x2659WaveFront9enableRowEi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$4,40($4)
	dsra	$2,$5,5
	li	$3,1			# 0x1
	andi	$5,$5,0x1f
	sll	$5,$3,$5
	dlsa	$2,$2,$4,2
	.set	noat
	sync
1:
	ll	$1,0($2)
	or	$1,$1,$5
	sc	$1,0($2)
	beq	$1,$0,1b
	nop
	sync
	.set	at
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x2659WaveFront9enableRowEi
	.size	_ZN4x2659WaveFront9enableRowEi, .-_ZN4x2659WaveFront9enableRowEi
	.align	2
	.align	3
	.globl	_ZN4x2659WaveFront13enableAllRowsEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659WaveFront13enableAllRowsEv
	.type	_ZN4x2659WaveFront13enableAllRowsEv, @function
_ZN4x2659WaveFront13enableAllRowsEv:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	lw	$6,48($4)
	li	$5,-1			# 0xffffffffffffffff
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659WaveFront13enableAllRowsEv)))
	daddu	$28,$28,$25
	ld	$4,40($4)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659WaveFront13enableAllRowsEv)))
	sd	$31,8($sp)
	ld	$25,%call16(memset)($28)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	dsll	$6,$6,2

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN4x2659WaveFront13enableAllRowsEv
	.size	_ZN4x2659WaveFront13enableAllRowsEv, .-_ZN4x2659WaveFront13enableAllRowsEv
	.align	2
	.align	3
	.globl	_ZN4x2659WaveFront10dequeueRowEi
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659WaveFront10dequeueRowEi
	.type	_ZN4x2659WaveFront10dequeueRowEi, @function
_ZN4x2659WaveFront10dequeueRowEi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$3,32($4)
	li	$2,1			# 0x1
	andi	$4,$5,0x1f
	sll	$2,$2,$4
	dsra	$5,$5,5
	nor	$4,$0,$2
	dlsa	$5,$5,$3,2
	.set	noat
	sync
1:
	ll	$3,0($5)
	and	$1,$3,$4
	sc	$1,0($5)
	beq	$1,$0,1b
	nop
	sync
	.set	at
	and	$2,$3,$2
	jr	$31
	sltu	$2,$0,$2

	.set	macro
	.set	reorder
	.end	_ZN4x2659WaveFront10dequeueRowEi
	.size	_ZN4x2659WaveFront10dequeueRowEi, .-_ZN4x2659WaveFront10dequeueRowEi
	.weak	_ZTSN4x26511JobProviderE
	.section	.rodata._ZTSN4x26511JobProviderE,"aG",@progbits,_ZTSN4x26511JobProviderE,comdat
	.align	3
	.type	_ZTSN4x26511JobProviderE, @object
	.size	_ZTSN4x26511JobProviderE, 21
_ZTSN4x26511JobProviderE:
	.ascii	"N4x26511JobProviderE\000"
	.weak	_ZTIN4x26511JobProviderE
	.section	.data.rel.ro._ZTIN4x26511JobProviderE,"awG",@progbits,_ZTIN4x26511JobProviderE,comdat
	.align	3
	.type	_ZTIN4x26511JobProviderE, @object
	.size	_ZTIN4x26511JobProviderE, 16
_ZTIN4x26511JobProviderE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN4x26511JobProviderE
	.weak	_ZTSN4x2659WaveFrontE
	.section	.rodata._ZTSN4x2659WaveFrontE,"aG",@progbits,_ZTSN4x2659WaveFrontE,comdat
	.align	3
	.type	_ZTSN4x2659WaveFrontE, @object
	.size	_ZTSN4x2659WaveFrontE, 18
_ZTSN4x2659WaveFrontE:
	.ascii	"N4x2659WaveFrontE\000"
	.weak	_ZTIN4x2659WaveFrontE
	.section	.data.rel.ro._ZTIN4x2659WaveFrontE,"awG",@progbits,_ZTIN4x2659WaveFrontE,comdat
	.align	3
	.type	_ZTIN4x2659WaveFrontE, @object
	.size	_ZTIN4x2659WaveFrontE, 24
_ZTIN4x2659WaveFrontE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN4x2659WaveFrontE
	.dword	_ZTIN4x26511JobProviderE
	.weak	_ZTVN4x2659WaveFrontE
	.section	.data.rel.ro._ZTVN4x2659WaveFrontE,"awG",@progbits,_ZTVN4x2659WaveFrontE,comdat
	.align	3
	.type	_ZTVN4x2659WaveFrontE, @object
	.size	_ZTVN4x2659WaveFrontE, 48
_ZTVN4x2659WaveFrontE:
	.dword	0
	.dword	_ZTIN4x2659WaveFrontE
	.dword	0
	.dword	0
	.dword	_ZN4x2659WaveFront7findJobEi
	.dword	__cxa_pure_virtual
	.ident	"GCC: (GNU) 7.3.0"
