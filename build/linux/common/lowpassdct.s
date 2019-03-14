	.file	1 "lowpassdct.cpp"
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
	.ent	_ZL14lowPassDct32_cPKsPsl
	.type	_ZL14lowPassDct32_cPKsPsl, @function
_ZL14lowPassDct32_cPKsPsl:
	.frame	$sp,1104,$31		# vars= 1056, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-1104
	dsll	$6,$6,1
	sd	$19,1080($sp)
	daddiu	$19,$sp,31
	sd	$28,1088($sp)
	dsrl	$19,$19,5
	lui	$28,%hi(%neg(%gp_rel(_ZL14lowPassDct32_cPKsPsl)))
	dsll	$19,$19,5
	daddu	$28,$28,$25
	sd	$18,1072($sp)
	sd	$17,1064($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL14lowPassDct32_cPKsPsl)))
	move	$18,$5
	sd	$16,1056($sp)
	move	$11,$19
	daddiu	$17,$19,512
	move	$16,$0
	sd	$31,1096($sp)
	.align	3
.L3:
	daddu	$12,$6,$4
	daddiu	$10,$4,64
	move	$5,$11
	move	$3,$12
	.align	3
.L2:
	lhu	$2,0($4)
	daddiu	$4,$4,4
	daddiu	$3,$3,4
	lhu	$8,-4($3)
	daddiu	$5,$5,2
	lhu	$7,-2($3)
	lhu	$9,-2($4)
	addu	$2,$2,$9
	addu	$2,$2,$8
	addu	$2,$2,$7
	seh	$2,$2
	sra	$7,$2,2
	addu	$16,$2,$16
	bne	$10,$4,.L2
	sh	$7,-2($5)

	daddiu	$11,$11,32
	bne	$17,$11,.L3
	daddu	$4,$12,$6

	ld	$2,%got_page(_ZL10s_dct16x16)($28)
	move	$4,$19
	move	$5,$17
	li	$6,16			# 0x10
	ld	$2,%got_ofst(_ZL10s_dct16x16)($2)
	ld	$25,0($2)
	jalr	$25
	daddiu	$19,$19,1024

	ld	$25,%call16(memset)($28)
	li	$6,2048			# 0x800
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$4,$18

	move	$3,$17
	.align	3
.L4:
	ld	$7,0($3)
	daddiu	$3,$3,32
	ld	$6,-24($3)
	ld	$5,-16($3)
	ld	$4,-8($3)
	sdl	$7,7($2)
	sdr	$7,0($2)
	sdl	$6,15($2)
	sdr	$6,8($2)
	sdl	$5,23($2)
	sdr	$5,16($2)
	sdl	$4,31($2)
	sdr	$4,24($2)
	bne	$19,$3,.L4
	daddiu	$2,$2,64

	ld	$31,1096($sp)
	sra	$16,$16,3
	sh	$16,0($18)
	ld	$28,1088($sp)
	ld	$19,1080($sp)
	ld	$18,1072($sp)
	ld	$17,1064($sp)
	ld	$16,1056($sp)
	jr	$31
	daddiu	$sp,$sp,1104

	.set	macro
	.set	reorder
	.end	_ZL14lowPassDct32_cPKsPsl
	.size	_ZL14lowPassDct32_cPKsPsl, .-_ZL14lowPassDct32_cPKsPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL14lowPassDct16_cPKsPsl
	.type	_ZL14lowPassDct16_cPKsPsl, @function
_ZL14lowPassDct16_cPKsPsl:
	.frame	$sp,336,$31		# vars= 288, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-336
	move	$3,$4
	daddiu	$2,$sp,31
	sd	$28,320($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZL14lowPassDct16_cPKsPsl)))
	dsrl	$2,$2,5
	daddu	$28,$28,$25
	sd	$18,312($sp)
	dsll	$4,$2,5
	sd	$17,304($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL14lowPassDct16_cPKsPsl)))
	sd	$16,296($sp)
	move	$18,$5
	dsll	$6,$6,1
	move	$12,$4
	daddiu	$17,$4,128
	sd	$31,328($sp)
	move	$16,$0
	.align	3
.L12:
	daddu	$13,$6,$3
	daddiu	$11,$3,32
	move	$7,$12
	move	$5,$13
	.align	3
.L11:
	lhu	$2,0($3)
	daddiu	$3,$3,4
	daddiu	$5,$5,4
	lhu	$9,-4($5)
	daddiu	$7,$7,2
	lhu	$8,-2($5)
	lhu	$10,-2($3)
	addu	$2,$2,$10
	addu	$2,$2,$9
	addu	$2,$2,$8
	seh	$2,$2
	sra	$8,$2,2
	addu	$16,$2,$16
	bne	$11,$3,.L11
	sh	$8,-2($7)

	daddiu	$12,$12,16
	bne	$17,$12,.L12
	daddu	$3,$13,$6

	ld	$2,%got_page(_ZL8s_dct8x8)($28)
	move	$5,$17
	ld	$2,%got_ofst(_ZL8s_dct8x8)($2)
	ld	$25,0($2)
	jalr	$25
	li	$6,8			# 0x8

	ld	$25,%call16(memset)($28)
	li	$6,512			# 0x200
	move	$5,$0
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$4,$18

	move	$3,$17
	daddiu	$6,$18,256
	.align	3
.L13:
	ld	$5,0($3)
	daddiu	$3,$3,16
	ld	$4,-8($3)
	sdl	$5,7($2)
	sdr	$5,0($2)
	sdl	$4,15($2)
	sdr	$4,8($2)
	daddiu	$2,$2,32
	bne	$6,$2,.L13
	ld	$31,328($sp)

	sra	$16,$16,1
	sh	$16,0($18)
	ld	$28,320($sp)
	ld	$18,312($sp)
	ld	$17,304($sp)
	ld	$16,296($sp)
	jr	$31
	daddiu	$sp,$sp,336

	.set	macro
	.set	reorder
	.end	_ZL14lowPassDct16_cPKsPsl
	.size	_ZL14lowPassDct16_cPKsPsl, .-_ZL14lowPassDct16_cPKsPsl
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZL13lowPassDct8_cPKsPsl
	.type	_ZL13lowPassDct8_cPKsPsl, @function
_ZL13lowPassDct8_cPKsPsl:
	.frame	$sp,144,$31		# vars= 96, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-144
	dsll	$6,$6,1
	sd	$17,112($sp)
	daddiu	$17,$sp,31
	sd	$28,128($sp)
	dsrl	$17,$17,5
	lui	$28,%hi(%neg(%gp_rel(_ZL13lowPassDct8_cPKsPsl)))
	dsll	$17,$17,5
	daddu	$28,$28,$25
	sd	$18,120($sp)
	sd	$16,104($sp)
	move	$18,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZL13lowPassDct8_cPKsPsl)))
	move	$12,$17
	daddiu	$5,$17,32
	sd	$31,136($sp)
	move	$16,$0
.L20:
	daddu	$13,$6,$4
	daddiu	$11,$4,16
	move	$8,$12
	move	$3,$13
.L19:
	lhu	$2,0($4)
	daddiu	$4,$4,4
	daddiu	$3,$3,4
	lhu	$9,-4($3)
	daddiu	$8,$8,2
	lhu	$7,-2($3)
	lhu	$10,-2($4)
	addu	$2,$2,$10
	addu	$2,$2,$9
	addu	$2,$2,$7
	andi	$2,$2,0xffff
	seh	$7,$2
	addu	$2,$16,$2
	sra	$7,$7,2
	seh	$16,$2
	bne	$4,$11,.L19
	sh	$7,-2($8)

	daddiu	$12,$12,8
	bne	$5,$12,.L20
	daddu	$4,$13,$6

	ld	$2,%got_page(_ZL8s_dct4x4)($28)
	move	$4,$17
	ld	$2,%got_ofst(_ZL8s_dct4x4)($2)
	ld	$25,0($2)
	jalr	$25
	li	$6,4			# 0x4

	ld	$25,%call16(memset)($28)
	daddiu	$4,$18,8
	li	$6,120			# 0x78
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$5,$0

	lbu	$2,34($17)
	daddiu	$7,$18,16
	daddiu	$6,$18,32
	daddiu	$5,$18,48
	sb	$2,2($18)
	sll	$2,$16,1
	lbu	$8,35($17)
	sb	$8,3($18)
	lbu	$8,36($17)
	sb	$8,4($18)
	lbu	$8,37($17)
	sb	$8,5($18)
	lbu	$8,38($17)
	sb	$8,6($18)
	lbu	$4,39($17)
	sb	$4,7($18)
	ld	$8,40($17)
	ld	$4,48($17)
	ld	$3,56($17)
	sdl	$8,23($18)
	sdr	$8,0($7)
	sdl	$4,39($18)
	sdr	$4,0($6)
	sdl	$3,55($18)
	sdr	$3,0($5)
	ld	$31,136($sp)
	sh	$2,0($18)
	ld	$28,128($sp)
	ld	$18,120($sp)
	ld	$17,112($sp)
	ld	$16,104($sp)
	jr	$31
	daddiu	$sp,$sp,144

	.set	macro
	.set	reorder
	.end	_ZL13lowPassDct8_cPKsPsl
	.size	_ZL13lowPassDct8_cPKsPsl, .-_ZL13lowPassDct8_cPKsPsl
	.align	2
	.align	3
	.globl	_ZN4x26524setupLowPassPrimitives_cERNS_17EncoderPrimitivesE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26524setupLowPassPrimitives_cERNS_17EncoderPrimitivesE
	.type	_ZN4x26524setupLowPassPrimitives_cERNS_17EncoderPrimitivesE, @function
_ZN4x26524setupLowPassPrimitives_cERNS_17EncoderPrimitivesE:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$7,%hi(%neg(%gp_rel(_ZN4x26524setupLowPassPrimitives_cERNS_17EncoderPrimitivesE)))
	daddiu	$6,$4,3216
	daddu	$7,$7,$25
	daddiu	$5,$4,3712
	daddiu	$7,$7,%lo(%neg(%gp_rel(_ZN4x26524setupLowPassPrimitives_cERNS_17EncoderPrimitivesE)))
	daddiu	$3,$4,4208
	ld	$2,%got_page(_ZL8s_dct4x4)($7)
	sd	$6,%got_ofst(_ZL8s_dct4x4)($2)
	ld	$2,%got_page(_ZL8s_dct8x8)($7)
	sd	$5,%got_ofst(_ZL8s_dct8x8)($2)
	ld	$2,%got_page(_ZL10s_dct16x16)($7)
	sd	$3,%got_ofst(_ZL10s_dct16x16)($2)
	ld	$2,%got_page(_ZL13lowPassDct8_cPKsPsl)($7)
	daddiu	$2,$2,%got_ofst(_ZL13lowPassDct8_cPKsPsl)
	sd	$2,3720($4)
	ld	$2,%got_page(_ZL14lowPassDct16_cPKsPsl)($7)
	daddiu	$2,$2,%got_ofst(_ZL14lowPassDct16_cPKsPsl)
	sd	$2,4216($4)
	ld	$2,%got_page(_ZL14lowPassDct32_cPKsPsl)($7)
	daddiu	$2,$2,%got_ofst(_ZL14lowPassDct32_cPKsPsl)
	jr	$31
	sd	$2,4712($4)

	.set	macro
	.set	reorder
	.end	_ZN4x26524setupLowPassPrimitives_cERNS_17EncoderPrimitivesE
	.size	_ZN4x26524setupLowPassPrimitives_cERNS_17EncoderPrimitivesE, .-_ZN4x26524setupLowPassPrimitives_cERNS_17EncoderPrimitivesE
	.local	_ZL10s_dct16x16
	.comm	_ZL10s_dct16x16,8,8
	.local	_ZL8s_dct8x8
	.comm	_ZL8s_dct8x8,8,8
	.local	_ZL8s_dct4x4
	.comm	_ZL8s_dct4x4,8,8
	.ident	"GCC: (GNU) 7.3.0"
