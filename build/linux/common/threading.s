	.file	1 "threading.cpp"
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
	.ent	_ZN4x265L10ThreadShimEPv
	.type	_ZN4x265L10ThreadShimEPv, @function
_ZN4x265L10ThreadShimEPv:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,0($4)
	daddiu	$sp,$sp,-16
	sd	$31,8($sp)
	ld	$25,16($2)
	jalr	$25
	nop

	ld	$31,8($sp)
	move	$2,$0
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN4x265L10ThreadShimEPv
	.size	_ZN4x265L10ThreadShimEPv, .-_ZN4x265L10ThreadShimEPv
	.align	2
	.align	3
	.globl	_ZN4x2656Thread5startEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656Thread5startEv
	.type	_ZN4x2656Thread5startEv, @function
_ZN4x2656Thread5startEv:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	move	$7,$4
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656Thread5startEv)))
	move	$5,$0
	daddu	$28,$28,$25
	sd	$16,8($sp)
	move	$16,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656Thread5startEv)))
	daddiu	$4,$4,8
	sd	$31,24($sp)
	ld	$6,%got_page(_ZN4x265L10ThreadShimEPv)($28)
	ld	$25,%call16(pthread_create)($28)
	.reloc	1f,R_MIPS_JALR,pthread_create
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(_ZN4x265L10ThreadShimEPv)

	beq	$2,$0,.L5
	li	$3,1			# 0x1

	move	$3,$0
	sd	$0,8($16)
.L5:
	ld	$31,24($sp)
	move	$2,$3
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x2656Thread5startEv
	.size	_ZN4x2656Thread5startEv, .-_ZN4x2656Thread5startEv
	.align	2
	.align	3
	.globl	_ZN4x2656Thread4stopEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656Thread4stopEv
	.type	_ZN4x2656Thread4stopEv, @function
_ZN4x2656Thread4stopEv:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$4,8($4)
	bne	$4,$0,.L19
	nop

	jr	$31
	nop

	.align	3
.L19:
	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656Thread4stopEv)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656Thread4stopEv)))
	ld	$25,%call16(pthread_join)($28)
	.reloc	1f,R_MIPS_JALR,pthread_join
1:	jalr	$25
	move	$5,$0

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN4x2656Thread4stopEv
	.size	_ZN4x2656Thread4stopEv, .-_ZN4x2656Thread4stopEv
	.align	2
	.align	3
	.globl	_ZN4x2656ThreadD2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656ThreadD2Ev
	.type	_ZN4x2656ThreadD2Ev, @function
_ZN4x2656ThreadD2Ev:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x2656ThreadD2Ev
	.size	_ZN4x2656ThreadD2Ev, .-_ZN4x2656ThreadD2Ev
	.globl	_ZN4x2656ThreadD1Ev
	_ZN4x2656ThreadD1Ev = _ZN4x2656ThreadD2Ev
	.align	2
	.align	3
	.globl	_ZN4x2656ThreadD0Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656ThreadD0Ev
	.type	_ZN4x2656ThreadD0Ev, @function
_ZN4x2656ThreadD0Ev:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2656ThreadD0Ev)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2656ThreadD0Ev)))
	ld	$25,%call16(_ZdlPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZdlPv
1:	jalr	$25
	nop

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	_ZN4x2656ThreadD0Ev
	.size	_ZN4x2656ThreadD0Ev, .-_ZN4x2656ThreadD0Ev
	.align	2
	.align	3
	.globl	_ZN4x2656ThreadC2Ev
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2656ThreadC2Ev
	.type	_ZN4x2656ThreadC2Ev, @function
_ZN4x2656ThreadC2Ev:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$3,%hi(%neg(%gp_rel(_ZN4x2656ThreadC2Ev)))
	sd	$0,8($4)
	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN4x2656ThreadC2Ev)))
	ld	$2,%got_disp(_ZTVN4x2656ThreadE)($3)
	daddiu	$2,$2,16
	jr	$31
	sd	$2,0($4)

	.set	macro
	.set	reorder
	.end	_ZN4x2656ThreadC2Ev
	.size	_ZN4x2656ThreadC2Ev, .-_ZN4x2656ThreadC2Ev
	.globl	_ZN4x2656ThreadC1Ev
	_ZN4x2656ThreadC1Ev = _ZN4x2656ThreadC2Ev
	.weak	_ZTSN4x2656ThreadE
	.section	.rodata._ZTSN4x2656ThreadE,"aG",@progbits,_ZTSN4x2656ThreadE,comdat
	.align	3
	.type	_ZTSN4x2656ThreadE, @object
	.size	_ZTSN4x2656ThreadE, 15
_ZTSN4x2656ThreadE:
	.ascii	"N4x2656ThreadE\000"
	.weak	_ZTIN4x2656ThreadE
	.section	.data.rel.ro._ZTIN4x2656ThreadE,"awG",@progbits,_ZTIN4x2656ThreadE,comdat
	.align	3
	.type	_ZTIN4x2656ThreadE, @object
	.size	_ZTIN4x2656ThreadE, 16
_ZTIN4x2656ThreadE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN4x2656ThreadE
	.weak	_ZTVN4x2656ThreadE
	.section	.data.rel.ro._ZTVN4x2656ThreadE,"awG",@progbits,_ZTVN4x2656ThreadE,comdat
	.align	3
	.type	_ZTVN4x2656ThreadE, @object
	.size	_ZTVN4x2656ThreadE, 40
_ZTVN4x2656ThreadE:
	.dword	0
	.dword	_ZTIN4x2656ThreadE
	.dword	0
	.dword	0
	.dword	__cxa_pure_virtual
	.ident	"GCC: (GNU) 7.3.0"
