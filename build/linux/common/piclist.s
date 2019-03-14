	.file	1 "piclist.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.align	2
	.align	3
	.globl	_ZN4x2657PicList9pushFrontERNS_5FrameE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657PicList9pushFrontERNS_5FrameE
	.type	_ZN4x2657PicList9pushFrontERNS_5FrameE, @function
_ZN4x2657PicList9pushFrontERNS_5FrameE:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,0($4)
	sd	$0,17192($5)
	sd	$2,17184($5)
	lw	$2,16($4)
	bne	$2,$0,.L6
	addiu	$2,$2,1

	sd	$5,8($4)
	sd	$5,0($4)
	jr	$31
	sw	$2,16($4)

	.align	3
.L6:
	ld	$2,0($4)
	sd	$5,17192($2)
	lw	$2,16($4)
	sd	$5,0($4)
	addiu	$2,$2,1
	jr	$31
	sw	$2,16($4)

	.set	macro
	.set	reorder
	.end	_ZN4x2657PicList9pushFrontERNS_5FrameE
	.size	_ZN4x2657PicList9pushFrontERNS_5FrameE, .-_ZN4x2657PicList9pushFrontERNS_5FrameE
	.align	2
	.align	3
	.globl	_ZN4x2657PicList8pushBackERNS_5FrameE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657PicList8pushBackERNS_5FrameE
	.type	_ZN4x2657PicList8pushBackERNS_5FrameE, @function
_ZN4x2657PicList8pushBackERNS_5FrameE:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sd	$0,17184($5)
	ld	$2,8($4)
	sd	$2,17192($5)
	lw	$2,16($4)
	bne	$2,$0,.L11
	addiu	$2,$2,1

	sd	$5,8($4)
	sd	$5,0($4)
	jr	$31
	sw	$2,16($4)

	.align	3
.L11:
	ld	$2,8($4)
	sd	$5,17184($2)
	lw	$2,16($4)
	sd	$5,8($4)
	addiu	$2,$2,1
	jr	$31
	sw	$2,16($4)

	.set	macro
	.set	reorder
	.end	_ZN4x2657PicList8pushBackERNS_5FrameE
	.size	_ZN4x2657PicList8pushBackERNS_5FrameE, .-_ZN4x2657PicList8pushBackERNS_5FrameE
	.align	2
	.align	3
	.globl	_ZN4x2657PicList8popFrontEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657PicList8popFrontEv
	.type	_ZN4x2657PicList8popFrontEv, @function
_ZN4x2657PicList8popFrontEv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,0($4)
	beq	$2,$0,.L20
	nop

	lw	$3,16($4)
	addiu	$3,$3,-1
	beq	$3,$0,.L14
	sw	$3,16($4)

	ld	$3,17184($2)
	sd	$3,0($4)
	sd	$0,17192($3)
	sd	$0,17192($2)
	sd	$0,17184($2)
.L20:
	jr	$31
	nop

	.align	3
.L14:
	sd	$0,8($4)
	sd	$0,0($4)
	sd	$0,17192($2)
	jr	$31
	sd	$0,17184($2)

	.set	macro
	.set	reorder
	.end	_ZN4x2657PicList8popFrontEv
	.size	_ZN4x2657PicList8popFrontEv, .-_ZN4x2657PicList8popFrontEv
	.align	2
	.align	3
	.globl	_ZN4x2657PicList6getPOCEi
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657PicList6getPOCEi
	.type	_ZN4x2657PicList6getPOCEi, @function
_ZN4x2657PicList6getPOCEi:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,0($4)
	bne	$2,$0,.L24
	nop

	b	.L31
	nop

	.align	3
.L30:
	ld	$2,17184($2)
	beq	$2,$0,.L31
	nop

.L24:
	lw	$3,24($2)
	bne	$3,$5,.L30
	nop

.L31:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x2657PicList6getPOCEi
	.size	_ZN4x2657PicList6getPOCEi, .-_ZN4x2657PicList6getPOCEi
	.align	2
	.align	3
	.globl	_ZN4x2657PicList7popBackEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657PicList7popBackEv
	.type	_ZN4x2657PicList7popBackEv, @function
_ZN4x2657PicList7popBackEv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$2,8($4)
	beq	$2,$0,.L40
	nop

	lw	$3,16($4)
	addiu	$3,$3,-1
	beq	$3,$0,.L34
	sw	$3,16($4)

	ld	$3,17192($2)
	sd	$3,8($4)
	sd	$0,17184($3)
	sd	$0,17192($2)
	sd	$0,17184($2)
.L40:
	jr	$31
	nop

	.align	3
.L34:
	sd	$0,8($4)
	sd	$0,0($4)
	sd	$0,17192($2)
	jr	$31
	sd	$0,17184($2)

	.set	macro
	.set	reorder
	.end	_ZN4x2657PicList7popBackEv
	.size	_ZN4x2657PicList7popBackEv, .-_ZN4x2657PicList7popBackEv
	.align	2
	.align	3
	.globl	_ZN4x2657PicList11getCurFrameEv
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657PicList11getCurFrameEv
	.type	_ZN4x2657PicList11getCurFrameEv, @function
_ZN4x2657PicList11getCurFrameEv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	ld	$2,0($4)

	.set	macro
	.set	reorder
	.end	_ZN4x2657PicList11getCurFrameEv
	.size	_ZN4x2657PicList11getCurFrameEv, .-_ZN4x2657PicList11getCurFrameEv
	.align	2
	.align	3
	.globl	_ZN4x2657PicList6removeERNS_5FrameE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2657PicList6removeERNS_5FrameE
	.type	_ZN4x2657PicList6removeERNS_5FrameE, @function
_ZN4x2657PicList6removeERNS_5FrameE:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,16($4)
	addiu	$2,$2,-1
	beq	$2,$0,.L44
	sw	$2,16($4)

	ld	$2,0($4)
	beq	$2,$5,.L56
	nop

	ld	$2,8($4)
	beq	$2,$5,.L57
	nop

.L46:
	ld	$3,17184($5)
	beq	$3,$0,.L47
	ld	$2,17192($5)

.L58:
	sd	$2,17192($3)
	ld	$2,17192($5)
.L47:
	beq	$2,$0,.L48
	nop

	ld	$3,17184($5)
	sd	$3,17184($2)
.L48:
	sd	$0,17192($5)
	jr	$31
	sd	$0,17184($5)

	.align	3
.L44:
	sd	$0,8($4)
	sd	$0,0($4)
	sd	$0,17192($5)
	jr	$31
	sd	$0,17184($5)

	.align	3
.L57:
	ld	$2,17192($5)
	.align	3
.L59:
	sd	$2,8($4)
	ld	$3,17184($5)
	bne	$3,$0,.L58
	ld	$2,17192($5)

	b	.L47
	nop

	.align	3
.L56:
	ld	$2,17184($5)
	sd	$2,0($4)
	ld	$2,8($4)
	bne	$2,$5,.L46
	nop

	b	.L59
	ld	$2,17192($5)

	.set	macro
	.set	reorder
	.end	_ZN4x2657PicList6removeERNS_5FrameE
	.size	_ZN4x2657PicList6removeERNS_5FrameE, .-_ZN4x2657PicList6removeERNS_5FrameE
	.ident	"GCC: (GNU) 7.3.0"
