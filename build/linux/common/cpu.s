	.file	1 "cpu.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.align	3
	.globl	_ZN4x26510cpu_detectEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26510cpu_detectEv
	.type	_ZN4x26510cpu_detectEv, @function
_ZN4x26510cpu_detectEv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_ZN4x26510cpu_detectEv
	.size	_ZN4x26510cpu_detectEv, .-_ZN4x26510cpu_detectEv
	.globl	_ZN4x2659cpu_namesE
	.rdata
	.align	3
	.type	_ZN4x2659cpu_namesE, @object
	.size	_ZN4x2659cpu_namesE, 20
_ZN4x2659cpu_namesE:
	.space	20
	.ident	"GCC: (GNU) 7.3.0"
