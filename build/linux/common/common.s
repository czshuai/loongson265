	.file	1 "common.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.align	3
	.globl	_ZN4x26510x265_mdateEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26510x265_mdateEv
	.type	_ZN4x26510x265_mdateEv, @function
_ZN4x26510x265_mdateEv:
	.frame	$sp,32,$31		# vars= 16, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$5,$0
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26510x265_mdateEv)))
	daddu	$28,$28,$25
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26510x265_mdateEv)))
	ld	$25,%call16(gettimeofday)($28)
	.reloc	1f,R_MIPS_JALR,gettimeofday
1:	jalr	$25
	move	$4,$sp

	ld	$4,0($sp)
	ld	$31,24($sp)
	ld	$28,16($sp)
	dsll	$2,$4,5
	dsubu	$3,$2,$4
	dsll	$2,$3,6
	dsubu	$2,$2,$3
	ld	$3,8($sp)
	daddiu	$sp,$sp,32
	dlsa	$2,$2,$4,3
	dsll	$2,$2,6
	jr	$31
	daddu	$2,$2,$3

	.set	macro
	.set	reorder
	.end	_ZN4x26510x265_mdateEv
	.size	_ZN4x26510x265_mdateEv, .-_ZN4x26510x265_mdateEv
	.align	2
	.align	3
	.globl	_ZN4x26511x265_mallocEm
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26511x265_mallocEm
	.type	_ZN4x26511x265_mallocEm, @function
_ZN4x26511x265_mallocEm:
	.frame	$sp,32,$31		# vars= 16, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$6,$4
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26511x265_mallocEm)))
	li	$5,32			# 0x20
	daddu	$28,$28,$25
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26511x265_mallocEm)))
	ld	$25,%call16(posix_memalign)($28)
	.reloc	1f,R_MIPS_JALR,posix_memalign
1:	jalr	$25
	move	$4,$sp

	bne	$2,$0,.L4
	move	$3,$0

	ld	$3,0($sp)
.L4:
	ld	$31,24($sp)
	move	$2,$3
	ld	$28,16($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x26511x265_mallocEm
	.size	_ZN4x26511x265_mallocEm, .-_ZN4x26511x265_mallocEm
	.align	2
	.align	3
	.globl	_ZN4x2659x265_freeEPv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659x265_freeEPv
	.type	_ZN4x2659x265_freeEPv, @function
_ZN4x2659x265_freeEPv:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,.L18
	nop

	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659x265_freeEPv)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659x265_freeEPv)))
	ld	$25,%call16(free)($28)
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	nop

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

.L18:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x2659x265_freeEPv
	.size	_ZN4x2659x265_freeEPv, .-_ZN4x2659x265_freeEPv
	.align	2
	.align	3
	.globl	_ZN4x26513x265_exp2fix8Ed
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26513x265_exp2fix8Ed
	.type	_ZN4x26513x265_exp2fix8Ed, @function
_ZN4x26513x265_exp2fix8Ed:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$5,%hi(%neg(%gp_rel(_ZN4x26513x265_exp2fix8Ed)))
	daddu	$5,$5,$25
	daddiu	$5,$5,%lo(%neg(%gp_rel(_ZN4x26513x265_exp2fix8Ed)))
	ld	$2,%got_page(.LC0)($5)
	ldc1	$f0,%got_ofst(.LC0)($2)
	ld	$2,%got_page(.LC1)($5)
	ldc1	$f1,%got_ofst(.LC1)($2)
	madd.d	$f12,$f1,$f12,$f0
	trunc.w.d $f0,$f12
	mfc1	$2,$f0
	bltz	$2,.L21
	slt	$3,$2,1024

	beq	$3,$0,.L22
	andi	$3,$2,0x3f

	sra	$2,$2,6
	move	$4,$3
	ld	$3,%got_disp(_ZN4x26513x265_exp2_lutE)($5)
	daddu	$3,$3,$4
	lbu	$3,0($3)
	addiu	$3,$3,256
	sll	$2,$3,$2
	jr	$31
	sra	$2,$2,8

	.align	3
.L22:
	jr	$31
	li	$2,65535			# 0xffff

	.align	3
.L21:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN4x26513x265_exp2fix8Ed
	.size	_ZN4x26513x265_exp2fix8Ed, .-_ZN4x26513x265_exp2fix8Ed
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC2:
	.ascii	"error\000"
	.align	3
.LC3:
	.ascii	"warning\000"
	.align	3
.LC4:
	.ascii	"info\000"
	.align	3
.LC5:
	.ascii	"debug\000"
	.align	3
.LC6:
	.ascii	"full\000"
	.align	3
.LC7:
	.ascii	"unknown\000"
	.align	3
.LC8:
	.ascii	"%-4s [%s]: \000"
	.text
	.align	2
	.align	3
	.globl	_ZN4x26511general_logEPK10x265_paramPKciS4_z
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26511general_logEPK10x265_paramPKciS4_z
	.type	_ZN4x26511general_logEPK10x265_paramPKciS4_z, @function
_ZN4x26511general_logEPK10x265_paramPKciS4_z:
	.frame	$sp,4176,$31		# vars= 4112, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-40
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-4176
	sd	$28,4128($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26511general_logEPK10x265_paramPKciS4_z)))
	daddu	$28,$28,$25
	sd	$31,4136($sp)
	sd	$16,4120($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26511general_logEPK10x265_paramPKciS4_z)))
	sd	$8,4144($sp)
	sd	$9,4152($sp)
	sd	$10,4160($sp)
	beq	$4,$0,.L25
	sd	$11,4168($sp)

	lw	$2,40($4)
	slt	$2,$2,$6
	bne	$2,$0,.L43
	ld	$31,4136($sp)

.L25:
	sltu	$2,$6,5
	beq	$2,$0,.L27
	ld	$2,%got_page(.LC7)($28)

	dext	$2,$6,0,32
	ld	$6,%got_page(.L29)($28)
	daddiu	$6,$6,%got_ofst(.L29)
	dlsa	$2,$2,$6,3
	ld	$2,0($2)
	daddu	$2,$2,$28
	jr	$2
	nop

	.rdata
	.align	3
	.align	2
.L29:
	.gpdword	.L28
	.gpdword	.L36
	.gpdword	.L31
	.gpdword	.L32
	.gpdword	.L33
	.text
	.align	3
.L36:
	ld	$2,%got_page(.LC3)($28)
	daddiu	$2,$2,%got_ofst(.LC3)
.L30:
	move	$16,$7
	beq	$5,$0,.L37
	move	$6,$5

.L42:
	ld	$5,%got_page(.LC8)($28)
	move	$4,$sp
	move	$7,$2
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC8)

	li	$5,4096			# 0x1000
	daddu	$4,$sp,$2
	subu	$5,$5,$2
.L34:
	ld	$25,%call16(vsnprintf)($28)
	daddiu	$2,$sp,4144
	move	$6,$16
	move	$7,$2
	.reloc	1f,R_MIPS_JALR,vsnprintf
1:	jalr	$25
	sd	$2,4096($sp)

	ld	$2,%got_disp(stderr)($28)
	move	$4,$sp
	ld	$25,%call16(fputs)($28)
	.reloc	1f,R_MIPS_JALR,fputs
1:	jalr	$25
	ld	$5,0($2)

	ld	$31,4136($sp)
.L43:
	ld	$28,4128($sp)
	ld	$16,4120($sp)
	jr	$31
	daddiu	$sp,$sp,4176

	.align	3
.L31:
	ld	$2,%got_page(.LC4)($28)
	move	$16,$7
	move	$6,$5
	bne	$5,$0,.L42
	daddiu	$2,$2,%got_ofst(.LC4)

	.align	3
.L37:
	li	$5,4096			# 0x1000
	b	.L34
	move	$4,$sp

	.align	3
.L33:
	ld	$2,%got_page(.LC6)($28)
	b	.L30
	daddiu	$2,$2,%got_ofst(.LC6)

	.align	3
.L28:
	ld	$2,%got_page(.LC2)($28)
	b	.L30
	daddiu	$2,$2,%got_ofst(.LC2)

	.align	3
.L32:
	ld	$2,%got_page(.LC5)($28)
	b	.L30
	daddiu	$2,$2,%got_ofst(.LC5)

	.align	3
.L27:
	b	.L30
	daddiu	$2,$2,%got_ofst(.LC7)

	.set	macro
	.set	reorder
	.end	_ZN4x26511general_logEPK10x265_paramPKciS4_z
	.size	_ZN4x26511general_logEPK10x265_paramPKciS4_z, .-_ZN4x26511general_logEPK10x265_paramPKciS4_z
	.align	2
	.align	3
	.globl	_ZN4x26512x265_ssim2dBEd
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26512x265_ssim2dBEd
	.type	_ZN4x26512x265_ssim2dBEd, @function
_ZN4x26512x265_ssim2dBEd:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26512x265_ssim2dBEd)))
	daddu	$28,$28,$25
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26512x265_ssim2dBEd)))
	ld	$2,%got_page(.LC10)($28)
	ldc1	$f0,%got_ofst(.LC10)($2)
	c.le.d	$fcc0,$f0,$f12
	bc1t	$fcc0,.L46
	sd	$31,8($sp)

	ld	$2,%got_page(.LC11)($28)
	ld	$25,%call16(__log10_finite)($28)
	ldc1	$f0,%got_ofst(.LC11)($2)
	.reloc	1f,R_MIPS_JALR,__log10_finite
1:	jalr	$25
	sub.d	$f12,$f0,$f12

	ld	$2,%got_page(.LC12)($28)
	ld	$31,8($sp)
	ld	$28,0($sp)
	daddiu	$sp,$sp,16
	ldc1	$f1,%got_ofst(.LC12)($2)
	jr	$31
	mul.d	$f0,$f0,$f1

	.align	3
.L46:
	ld	$2,%got_page(.LC9)($28)
	ld	$31,8($sp)
	ld	$28,0($sp)
	daddiu	$sp,$sp,16
	jr	$31
	ldc1	$f0,%got_ofst(.LC9)($2)

	.set	macro
	.set	reorder
	.end	_ZN4x26512x265_ssim2dBEd
	.size	_ZN4x26512x265_ssim2dBEd, .-_ZN4x26512x265_ssim2dBEd
	.align	2
	.align	3
	.globl	_ZN4x26514x265_qScale2qpEd
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26514x265_qScale2qpEd
	.type	_ZN4x26514x265_qScale2qpEd, @function
_ZN4x26514x265_qScale2qpEd:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26514x265_qScale2qpEd)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26514x265_qScale2qpEd)))
	ld	$2,%got_page(.LC13)($28)
	ld	$25,%call16(__log2_finite)($28)
	ldc1	$f0,%got_ofst(.LC13)($2)
	.reloc	1f,R_MIPS_JALR,__log2_finite
1:	jalr	$25
	mul.d	$f12,$f12,$f0

	ld	$2,%got_page(.LC14)($28)
	ld	$31,8($sp)
	ldc1	$f2,%got_ofst(.LC14)($2)
	ld	$2,%got_page(.LC15)($28)
	ld	$28,0($sp)
	daddiu	$sp,$sp,16
	ldc1	$f1,%got_ofst(.LC15)($2)
	jr	$31
	madd.d	$f0,$f1,$f0,$f2

	.set	macro
	.set	reorder
	.end	_ZN4x26514x265_qScale2qpEd
	.size	_ZN4x26514x265_qScale2qpEd, .-_ZN4x26514x265_qScale2qpEd
	.align	2
	.align	3
	.globl	_ZN4x26514x265_qp2qScaleEd
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26514x265_qp2qScaleEd
	.type	_ZN4x26514x265_qp2qScaleEd, @function
_ZN4x26514x265_qp2qScaleEd:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26514x265_qp2qScaleEd)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26514x265_qp2qScaleEd)))
	ld	$2,%got_page(.LC15)($28)
	ld	$25,%call16(__pow_finite)($28)
	ldc1	$f13,%got_ofst(.LC15)($2)
	ld	$2,%got_page(.LC17)($28)
	sub.d	$f13,$f12,$f13
	ldc1	$f12,%got_ofst(.LC17)($2)
	ld	$2,%got_page(.LC16)($28)
	ldc1	$f0,%got_ofst(.LC16)($2)
	.reloc	1f,R_MIPS_JALR,__pow_finite
1:	jalr	$25
	mul.d	$f13,$f13,$f0

	ld	$2,%got_page(.LC18)($28)
	ld	$31,8($sp)
	ld	$28,0($sp)
	daddiu	$sp,$sp,16
	ldc1	$f1,%got_ofst(.LC18)($2)
	jr	$31
	mul.d	$f0,$f0,$f1

	.set	macro
	.set	reorder
	.end	_ZN4x26514x265_qp2qScaleEd
	.size	_ZN4x26514x265_qp2qScaleEd, .-_ZN4x26514x265_qp2qScaleEd
	.align	2
	.align	3
	.globl	_ZN4x26521x265_picturePlaneSizeEiiii
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26521x265_picturePlaneSizeEiiii
	.type	_ZN4x26521x265_picturePlaneSizeEiiii, @function
_ZN4x26521x265_picturePlaneSizeEiiii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$8,%hi(%neg(%gp_rel(_ZN4x26521x265_picturePlaneSizeEiiii)))
	dsll	$2,$4,3
	daddu	$8,$8,$25
	dsubu	$4,$2,$4
	daddiu	$8,$8,%lo(%neg(%gp_rel(_ZN4x26521x265_picturePlaneSizeEiiii)))
	daddu	$7,$4,$7
	ld	$4,%got_page(_ZL13x265_cli_csps)($8)
	daddiu	$4,$4,%got_ofst(_ZL13x265_cli_csps)
	dlsa	$2,$7,$4,2
	move	$7,$2
	lw	$2,4($2)
	lw	$3,16($7)
	sra	$5,$5,$2
	sra	$2,$6,$3
	jr	$31
	gsmultu	$2,$5,$2

	.set	macro
	.set	reorder
	.end	_ZN4x26521x265_picturePlaneSizeEiiii
	.size	_ZN4x26521x265_picturePlaneSizeEiiii, .-_ZN4x26521x265_picturePlaneSizeEiiii
	.section	.rodata.str1.8
	.align	3
.LC19:
	.ascii	"rb\000"
	.align	3
.LC20:
	.ascii	"unable to open file %s\012\000"
	.align	3
.LC21:
	.ascii	"x265\000"
	.align	3
.LC22:
	.ascii	"unable to allocate memory\012\000"
	.align	3
.LC23:
	.ascii	"unable to read the file\012\000"
	.text
	.align	2
	.align	3
	.globl	_ZN4x26515x265_slurp_fileEPKc
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26515x265_slurp_fileEPKc
	.type	_ZN4x26515x265_slurp_fileEPKc, @function
_ZN4x26515x265_slurp_fileEPKc:
	.frame	$sp,64,$31		# vars= 16, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26515x265_slurp_fileEPKc)))
	daddu	$28,$28,$25
	sd	$31,56($sp)
	sd	$19,40($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26515x265_slurp_fileEPKc)))
	sd	$18,32($sp)
	sd	$17,24($sp)
	beq	$4,$0,.L61
	sd	$16,16($sp)

	ld	$5,%got_page(.LC19)($28)
	move	$17,$4
	ld	$25,%call16(fopen)($28)
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC19)

	beq	$2,$0,.L63
	move	$16,$2

	ld	$25,%call16(fseek)($28)
	li	$6,2			# 0x2
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,fseek
1:	jalr	$25
	move	$4,$2

	ld	$25,%call16(ftell)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,ftell
1:	jalr	$25
	move	$18,$2

	ld	$25,%call16(fseek)($28)
	move	$6,$0
	move	$5,$0
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,fseek
1:	jalr	$25
	move	$17,$2

	or	$2,$2,$18
	bltz	$2,.L66
	ld	$25,%call16(fclose)($28)

	beq	$17,$0,.L57
	ld	$25,%call16(posix_memalign)($28)

	daddiu	$6,$17,2
	li	$5,32			# 0x20
	.reloc	1f,R_MIPS_JALR,posix_memalign
1:	jalr	$25
	move	$4,$sp

	bne	$2,$0,.L67
	ld	$7,%got_page(.LC22)($28)

	ld	$18,0($sp)
	beq	$18,$0,.L67
	ld	$25,%call16(fread)($28)

	li	$5,1			# 0x1
	move	$4,$18
	move	$7,$16
	.reloc	1f,R_MIPS_JALR,fread
1:	jalr	$25
	move	$6,$17

	daddu	$3,$18,$17
	lb	$5,-1($3)
	li	$4,10			# 0xa
	beq	$5,$4,.L60
	move	$19,$2

	daddiu	$2,$17,1
	sb	$4,0($3)
	daddu	$3,$18,$2
.L60:
	ld	$25,%call16(fclose)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	sb	$0,0($3)

	bne	$19,$17,.L64
	ld	$7,%got_page(.LC23)($28)

.L54:
	ld	$31,56($sp)
.L65:
	move	$2,$18
	ld	$28,48($sp)
	ld	$19,40($sp)
	ld	$18,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L67:
	move	$6,$0
	move	$4,$0
	ld	$5,%got_page(.LC21)($28)
	ld	$25,%got_disp(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$7,%got_ofst(.LC22)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC21)

.L57:
	ld	$25,%call16(fclose)($28)
.L66:
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	move	$18,$0

	ld	$31,56($sp)
	move	$2,$18
	ld	$28,48($sp)
	ld	$19,40($sp)
	ld	$18,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L61:
	b	.L54
	move	$18,$0

	.align	3
.L63:
	ld	$7,%got_page(.LC20)($28)
	move	$8,$17
	move	$6,$0
	ld	$5,%got_page(.LC21)($28)
	move	$4,$0
	move	$18,$0
	ld	$25,%got_disp(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$7,%got_ofst(.LC20)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC21)

	b	.L65
	ld	$31,56($sp)

	.align	3
.L64:
	move	$6,$0
	move	$4,$0
	ld	$5,%got_page(.LC21)($28)
	ld	$25,%got_disp(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$7,%got_ofst(.LC23)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC21)

	ld	$25,%call16(free)($28)
	move	$4,$18
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	move	$18,$0

	b	.L65
	ld	$31,56($sp)

	.set	macro
	.set	reorder
	.end	_ZN4x26515x265_slurp_fileEPKc
	.size	_ZN4x26515x265_slurp_fileEPKc, .-_ZN4x26515x265_slurp_fileEPKc
	.rdata
	.align	3
	.type	_ZL13x265_cli_csps, @object
	.size	_ZL13x265_cli_csps, 168
_ZL13x265_cli_csps:
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	3
	.word	0
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	3
	.word	0
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	3
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.space	4
	.word	0
	.word	1
	.space	4
	.word	2
	.word	0
	.word	0
	.space	4
	.word	0
	.word	0
	.space	4
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC0:
	.word	1610612736
	.word	-1071295147
	.align	3
.LC1:
	.word	0
	.word	1082131456
	.align	3
.LC9:
	.word	0
	.word	1079574528
	.align	3
.LC10:
	.word	4294066576
	.word	1072693247
	.align	3
.LC11:
	.word	0
	.word	1072693248
	.align	3
.LC12:
	.word	0
	.word	-1071382528
	.align	3
.LC13:
	.word	3537031891
	.word	1072878290
	.align	3
.LC14:
	.word	0
	.word	1075314688
	.align	3
.LC15:
	.word	0
	.word	1076363264
	.align	3
.LC16:
	.word	1431655765
	.word	1069897045
	.align	3
.LC17:
	.word	0
	.word	1073741824
	.align	3
.LC18:
	.word	858993459
	.word	1072378675
	.ident	"GCC: (GNU) 7.3.0"
