	.file	1 "primitives.cpp"
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
	.ascii	"using cpu capabilities:\000"
	.align	3
.LC1:
	.ascii	" none!\000"
	.align	3
.LC2:
	.ascii	"SSE\000"
	.align	3
.LC3:
	.ascii	"SSE2\000"
	.align	3
.LC4:
	.ascii	"SSE3\000"
	.align	3
.LC5:
	.ascii	"SSE4.1\000"
	.align	3
.LC6:
	.ascii	"BMI1\000"
	.align	3
.LC7:
	.ascii	" %s\000"
	.align	3
.LC8:
	.ascii	"%s\012\000"
	.align	3
.LC9:
	.ascii	"x265\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26516x265_report_simdEP10x265_param.part.0
	.type	_ZN4x26516x265_report_simdEP10x265_param.part.0, @function
_ZN4x26516x265_report_simdEP10x265_param.part.0:
	.frame	$sp,1136,$31		# vars= 1040, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-1136
	sd	$28,1112($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26516x265_report_simdEP10x265_param.part.0)))
	daddu	$28,$28,$25
	sd	$16,1048($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26516x265_report_simdEP10x265_param.part.0)))
	sd	$18,1064($sp)
	ld	$3,%got_page(.LC0)($28)
	ld	$16,%got_disp(_ZN4x2659cpu_namesE)($28)
	sd	$4,1024($sp)
	daddiu	$2,$3,%got_ofst(.LC0)
	sd	$31,1128($sp)
	sd	$fp,1120($sp)
	sd	$23,1104($sp)
	sd	$22,1096($sp)
	sd	$21,1088($sp)
	sd	$20,1080($sp)
	sd	$19,1072($sp)
	sd	$17,1056($sp)
	lw	$18,0($4)
	lw	$17,16($16)
	ld	$4,%got_ofst(.LC0)($3)
	ld	$3,8($2)
	ld	$2,16($2)
	sd	$4,0($sp)
	sd	$3,8($sp)
	beq	$17,$0,.L19
	sd	$2,16($sp)

	ld	$2,%got_page(.LC7)($28)
	daddiu	$fp,$sp,23
	move	$19,$0
	ld	$20,%got_page(.LC3)($28)
	ld	$22,%got_page(.LC4)($28)
	sd	$2,1032($sp)
	ld	$2,%got_page(.LC6)($28)
	daddiu	$20,$20,%got_ofst(.LC3)
	ld	$21,%got_page(.LC2)($28)
	daddiu	$22,$22,%got_ofst(.LC4)
	ld	$23,%got_page(.LC5)($28)
	daddiu	$2,$2,%got_ofst(.LC6)
	sd	$fp,1016($sp)
	sd	$2,1008($sp)
	.align	3
.L11:
	ld	$25,%call16(strcmp)($28)
	daddiu	$5,$21,%got_ofst(.LC2)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	move	$4,$16

	bne	$2,$0,.L21
	ld	$25,%call16(strcmp)($28)

	andi	$2,$18,0x10
	bne	$2,$0,.L5
	nop

.L21:
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	move	$4,$16

	bne	$2,$0,.L22
	ld	$25,%call16(strcmp)($28)

	li	$2,1572864			# 0x180000
	and	$2,$18,$2
	bne	$2,$0,.L5
	nop

.L22:
	move	$5,$22
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	move	$4,$16

	bne	$2,$0,.L23
	ld	$25,%call16(strcmp)($28)

	li	$3,262144			# 0x40000
	addiu	$2,$3,64
	and	$2,$18,$2
	bne	$2,$3,.L5
	nop

.L23:
	daddiu	$5,$23,%got_ofst(.LC5)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	move	$4,$16

	bne	$2,$0,.L24
	ld	$25,%call16(strcmp)($28)

	andi	$2,$18,0x100
	bne	$2,$0,.L5
	nop

.L24:
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	ld	$5,1008($sp)

	bne	$2,$0,.L25
	and	$2,$18,$17

	dext	$2,$18,16,1
	bne	$2,$0,.L5
	and	$2,$18,$17

.L25:
	beq	$2,$17,.L20
	nop

.L5:
	daddiu	$16,$16,20
	lw	$17,16($16)
	bne	$17,$0,.L11
	addiu	$19,$19,1

	ld	$2,1016($sp)
	beq	$fp,$2,.L26
	ld	$3,%got_page(.LC1)($28)

.L3:
	ld	$7,%got_page(.LC8)($28)
	move	$8,$sp
	li	$6,2			# 0x2
	ld	$5,%got_page(.LC9)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	ld	$4,1024($sp)
	daddiu	$7,$7,%got_ofst(.LC8)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC9)

	ld	$31,1128($sp)
	ld	$fp,1120($sp)
	ld	$28,1112($sp)
	ld	$23,1104($sp)
	ld	$22,1096($sp)
	ld	$21,1088($sp)
	ld	$20,1080($sp)
	ld	$19,1072($sp)
	ld	$18,1064($sp)
	ld	$17,1056($sp)
	ld	$16,1048($sp)
	jr	$31
	daddiu	$sp,$sp,1136

	.align	3
.L20:
	beq	$19,$0,.L10
	nop

	lw	$3,-4($16)
	beq	$3,$2,.L5
	nop

.L10:
	ld	$2,1032($sp)
	move	$4,$fp
	move	$6,$16
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$2,%got_ofst(.LC7)

	b	.L5
	daddu	$fp,$fp,$2

	.align	3
.L19:
	daddiu	$2,$sp,23
	sd	$2,1016($sp)
	ld	$3,%got_page(.LC1)($28)
.L26:
	lbu	$8,%got_ofst(.LC1)($3)
	daddiu	$2,$3,%got_ofst(.LC1)
	lbu	$7,1($2)
	lbu	$6,2($2)
	sb	$8,23($sp)
	lbu	$5,3($2)
	ld	$8,1016($sp)
	lbu	$4,4($2)
	lbu	$3,5($2)
	lbu	$2,6($2)
	sb	$7,1($8)
	sb	$6,2($8)
	sb	$5,3($8)
	sb	$4,4($8)
	sb	$3,5($8)
	b	.L3
	sb	$2,6($8)

	.set	macro
	.set	reorder
	.end	_ZN4x26516x265_report_simdEP10x265_param.part.0
	.size	_ZN4x26516x265_report_simdEP10x265_param.part.0, .-_ZN4x26516x265_report_simdEP10x265_param.part.0
	.align	2
	.align	3
	.globl	_ZN4x26516setupCPrimitivesERNS_17EncoderPrimitivesE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26516setupCPrimitivesERNS_17EncoderPrimitivesE
	.type	_ZN4x26516setupCPrimitivesERNS_17EncoderPrimitivesE, @function
_ZN4x26516setupCPrimitivesERNS_17EncoderPrimitivesE:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x90010000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26516setupCPrimitivesERNS_17EncoderPrimitivesE)))
	daddu	$28,$28,$25
	sd	$31,24($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26516setupCPrimitivesERNS_17EncoderPrimitivesE)))
	sd	$16,8($sp)
	ld	$25,%call16(_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26522setupPixelPrimitives_cERNS_17EncoderPrimitivesE
1:	jalr	$25
	move	$16,$4

	ld	$25,%call16(_ZN4x26520setupDCTPrimitives_cERNS_17EncoderPrimitivesE)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26520setupDCTPrimitives_cERNS_17EncoderPrimitivesE
1:	jalr	$25
	move	$4,$16

	ld	$25,%call16(_ZN4x26524setupLowPassPrimitives_cERNS_17EncoderPrimitivesE)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26524setupLowPassPrimitives_cERNS_17EncoderPrimitivesE
1:	jalr	$25
	move	$4,$16

	ld	$25,%call16(_ZN4x26523setupFilterPrimitives_cERNS_17EncoderPrimitivesE)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26523setupFilterPrimitives_cERNS_17EncoderPrimitivesE
1:	jalr	$25
	move	$4,$16

	ld	$25,%call16(_ZN4x26522setupIntraPrimitives_cERNS_17EncoderPrimitivesE)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26522setupIntraPrimitives_cERNS_17EncoderPrimitivesE
1:	jalr	$25
	move	$4,$16

	ld	$25,%call16(_ZN4x26527setupLoopFilterPrimitives_cERNS_17EncoderPrimitivesE)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26527setupLoopFilterPrimitives_cERNS_17EncoderPrimitivesE
1:	jalr	$25
	move	$4,$16

	ld	$25,%call16(_ZN4x26520setupSaoPrimitives_cERNS_17EncoderPrimitivesE)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26520setupSaoPrimitives_cERNS_17EncoderPrimitivesE
1:	jalr	$25
	move	$4,$16

	ld	$25,%call16(_ZN4x26528setupSeaIntegralPrimitives_cERNS_17EncoderPrimitivesE)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26528setupSeaIntegralPrimitives_cERNS_17EncoderPrimitivesE
1:	jalr	$25
	move	$4,$16

	ld	$25,%call16(_ZN4x26527setupLoongson_asmPrimitivesERNS_17EncoderPrimitivesE)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26527setupLoongson_asmPrimitivesERNS_17EncoderPrimitivesE
1:	jalr	$25
	move	$4,$16

	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	_ZN4x26516setupCPrimitivesERNS_17EncoderPrimitivesE
	.size	_ZN4x26516setupCPrimitivesERNS_17EncoderPrimitivesE, .-_ZN4x26516setupCPrimitivesERNS_17EncoderPrimitivesE
	.align	2
	.align	3
	.globl	_ZN4x26526enableLowpassDCTPrimitivesERNS_17EncoderPrimitivesE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26526enableLowpassDCTPrimitivesERNS_17EncoderPrimitivesE
	.type	_ZN4x26526enableLowpassDCTPrimitivesERNS_17EncoderPrimitivesE, @function
_ZN4x26526enableLowpassDCTPrimitivesERNS_17EncoderPrimitivesE:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$6,4192($4)
	ld	$5,4688($4)
	ld	$8,3200($4)
	ld	$7,3696($4)
	ld	$3,4216($4)
	ld	$2,4712($4)
	sd	$8,3216($4)
	sd	$7,3712($4)
	sd	$6,4208($4)
	sd	$5,4704($4)
	sd	$3,4192($4)
	jr	$31
	sd	$2,4688($4)

	.set	macro
	.set	reorder
	.end	_ZN4x26526enableLowpassDCTPrimitivesERNS_17EncoderPrimitivesE
	.size	_ZN4x26526enableLowpassDCTPrimitivesERNS_17EncoderPrimitivesE, .-_ZN4x26526enableLowpassDCTPrimitivesERNS_17EncoderPrimitivesE
	.align	2
	.align	3
	.globl	_ZN4x26520setupAliasPrimitivesERNS_17EncoderPrimitivesE
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26520setupAliasPrimitivesERNS_17EncoderPrimitivesE
	.type	_ZN4x26520setupAliasPrimitivesERNS_17EncoderPrimitivesE, @function
_ZN4x26520setupAliasPrimitivesERNS_17EncoderPrimitivesE:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x10070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	daddiu	$3,$4,32
	sd	$0,15096($4)
	daddiu	$2,$4,13096
	daddiu	$9,$4,15096
	sd	$18,16($sp)
	sd	$17,8($sp)
	sd	$16,0($sp)
	.align	3
.L32:
	ld	$8,80($3)
	daddiu	$3,$3,128
	daddiu	$2,$2,80
	ld	$7,-56($3)
	ld	$6,-128($3)
	ld	$5,-40($3)
	sd	$8,-16($2)
	sd	$7,-24($2)
	sd	$6,-80($2)
	bne	$2,$9,.L32
	sd	$5,-8($2)

	daddiu	$3,$4,3240
	daddiu	$12,$4,5720
.L33:
	ld	$11,144($3)
	daddiu	$3,$3,496
	daddiu	$2,$2,64
	ld	$10,-384($3)
	ld	$9,-496($3)
	ld	$8,-488($3)
	ld	$7,-416($3)
	ld	$6,-424($3)
	ld	$5,-408($3)
	sd	$11,-64($2)
	sd	$10,-56($2)
	sd	$9,-48($2)
	sd	$8,-40($2)
	sd	$7,-32($2)
	sd	$6,-24($2)
	bne	$3,$12,.L33
	sd	$5,-16($2)

	ld	$18,1696($4)
	daddiu	$6,$4,112
	daddiu	$5,$4,3336
	ld	$7,32($4)
	daddiu	$3,$4,6200
	daddiu	$2,$4,8192
	ld	$9,800($4)
	daddiu	$8,$4,5816
	sd	$18,9816($4)
	ld	$18,1824($4)
	ld	$13,416($4)
	ld	$16,1312($4)
	sd	$18,9896($4)
	ld	$18,1952($4)
	ld	$25,160($4)
	ld	$15,288($4)
	ld	$12,672($4)
	ld	$11,928($4)
	ld	$17,1056($4)
	ld	$10,1184($4)
	ld	$24,2080($4)
	ld	$14,2336($4)
	sd	$18,9976($4)
	ld	$18,2208($4)
	sd	$7,3384($4)
	sd	$7,8536($4)
	sd	$13,8776($4)
	sd	$16,9416($4)
	sd	$18,10136($4)
	sd	$25,8616($4)
	sd	$15,8696($4)
	sd	$12,9016($4)
	sd	$9,9096($4)
	sd	$11,9176($4)
	sd	$17,9256($4)
	sd	$10,9336($4)
	sd	$24,10056($4)
	sd	$14,10216($4)
	sd	$7,11176($4)
	sd	$7,10520($4)
	ld	$7,3880($4)
	ld	$14,2592($4)
	ld	$18,2464($4)
	sd	$7,10584($4)
	ld	$7,4376($4)
	sd	$16,11016($4)
	sd	$13,11656($4)
	ld	$16,1568($4)
	ld	$13,3104($4)
	sd	$7,10648($4)
	ld	$7,4872($4)
	sd	$18,10296($4)
	sd	$14,10376($4)
	sd	$9,10856($4)
	sd	$17,10936($4)
	sd	$16,11096($4)
	sd	$25,11336($4)
	sd	$24,11416($4)
	sd	$15,11496($4)
	sd	$14,11576($4)
	sd	$13,11736($4)
	sd	$12,11976($4)
	sd	$11,12296($4)
	sd	$10,12616($4)
	sd	$0,10456($4)
	sd	$7,10712($4)
	sd	$0,12776($4)
	sd	$9,12840($4)
.L34:
	ld	$7,0($6)
	daddiu	$3,$3,80
	daddiu	$5,$5,496
	daddiu	$2,$2,64
	daddiu	$6,$6,128
	sd	$7,-496($5)
	ld	$7,-80($3)
	sd	$7,-64($2)
	ld	$7,2240($3)
	sd	$7,2256($2)
	ld	$7,4560($3)
	sd	$7,4576($2)
	ld	$7,6880($3)
	bne	$5,$8,.L34
	sd	$7,6896($2)

	ld	$6,3352($4)
	ld	$5,3848($4)
	ld	$3,4344($4)
	ld	$2,4840($4)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	daddiu	$sp,$sp,32
	sd	$0,10464($4)
	sd	$6,10528($4)
	sd	$5,10592($4)
	sd	$3,10656($4)
	sd	$2,10720($4)
	jr	$31
	sd	$0,12784($4)

	.set	macro
	.set	reorder
	.end	_ZN4x26520setupAliasPrimitivesERNS_17EncoderPrimitivesE
	.size	_ZN4x26520setupAliasPrimitivesERNS_17EncoderPrimitivesE, .-_ZN4x26520setupAliasPrimitivesERNS_17EncoderPrimitivesE
	.align	2
	.align	3
	.globl	_ZN4x26516x265_report_simdEP10x265_param
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26516x265_report_simdEP10x265_param
	.type	_ZN4x26516x265_report_simdEP10x265_param, @function
_ZN4x26516x265_report_simdEP10x265_param:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,40($4)
	slt	$2,$2,2
	bne	$2,$0,.L44
	lui	$3,%hi(%neg(%gp_rel(_ZN4x26516x265_report_simdEP10x265_param)))

	daddu	$3,$3,$25
	daddiu	$3,$3,%lo(%neg(%gp_rel(_ZN4x26516x265_report_simdEP10x265_param)))
	ld	$25,%got_page(_ZN4x26516x265_report_simdEP10x265_param.part.0)($3)
	daddiu	$25,$25,%got_ofst(_ZN4x26516x265_report_simdEP10x265_param.part.0)
	.reloc	1f,R_MIPS_JALR,_ZN4x26516x265_report_simdEP10x265_param.part.0
1:	jr	$25
	nop

.L44:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x26516x265_report_simdEP10x265_param
	.size	_ZN4x26516x265_report_simdEP10x265_param, .-_ZN4x26516x265_report_simdEP10x265_param
	.align	2
	.align	3
	.globl	_ZN4x26521x265_setup_primitivesEP10x265_param
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26521x265_setup_primitivesEP10x265_param
	.type	_ZN4x26521x265_setup_primitivesEP10x265_param, @function
_ZN4x26521x265_setup_primitivesEP10x265_param:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-32
	sd	$28,16($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26521x265_setup_primitivesEP10x265_param)))
	daddu	$28,$28,$25
	sd	$16,0($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26521x265_setup_primitivesEP10x265_param)))
	sd	$17,8($sp)
	ld	$16,%got_disp(_ZN4x26510primitivesE)($28)
	sd	$31,24($sp)
	ld	$2,0($16)
	beq	$2,$0,.L54
	move	$17,$4

.L47:
	lw	$2,40($17)
	slt	$2,$2,2
	bne	$2,$0,.L45
	ld	$25,%got_page(_ZN4x26516x265_report_simdEP10x265_param.part.0)($28)

	move	$4,$17
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	daddiu	$25,$25,%got_ofst(_ZN4x26516x265_report_simdEP10x265_param.part.0)
	ld	$16,0($sp)
	.reloc	1f,R_MIPS_JALR,_ZN4x26516x265_report_simdEP10x265_param.part.0
1:	jr	$25
	daddiu	$sp,$sp,32

	.align	3
.L45:
	ld	$31,24($sp)
	ld	$28,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,32

	.align	3
.L54:
	ld	$25,%got_disp(_ZN4x26516setupCPrimitivesERNS_17EncoderPrimitivesE)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26516setupCPrimitivesERNS_17EncoderPrimitivesE
1:	jalr	$25
	move	$4,$16

	ld	$25,%got_disp(_ZN4x26520setupAliasPrimitivesERNS_17EncoderPrimitivesE)($28)
	move	$4,$16
	sd	$0,3400($16)
	sd	$0,3896($16)
	sd	$0,4392($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x26520setupAliasPrimitivesERNS_17EncoderPrimitivesE
1:	jalr	$25
	sd	$0,4888($16)

	lw	$2,836($17)
	beq	$2,$0,.L47
	nop

	ld	$5,4192($16)
	ld	$4,4688($16)
	ld	$7,3200($16)
	ld	$6,3696($16)
	ld	$3,4216($16)
	ld	$2,4712($16)
	sd	$7,3216($16)
	sd	$6,3712($16)
	sd	$5,4208($16)
	sd	$4,4704($16)
	sd	$3,4192($16)
	b	.L47
	sd	$2,4688($16)

	.set	macro
	.set	reorder
	.end	_ZN4x26521x265_setup_primitivesEP10x265_param
	.size	_ZN4x26521x265_setup_primitivesEP10x265_param, .-_ZN4x26521x265_setup_primitivesEP10x265_param
	.align	2
	.align	3
	.globl	x265_cpu_cpuid_test
	.set	nomips16
	.set	nomicromips
	.ent	x265_cpu_cpuid_test
	.type	x265_cpu_cpuid_test, @function
x265_cpu_cpuid_test:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	x265_cpu_cpuid_test
	.size	x265_cpu_cpuid_test, .-x265_cpu_cpuid_test
	.align	2
	.align	3
	.globl	x265_cpu_emms
	.set	nomips16
	.set	nomicromips
	.ent	x265_cpu_emms
	.type	x265_cpu_emms, @function
x265_cpu_emms:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	x265_cpu_emms
	.size	x265_cpu_emms, .-x265_cpu_emms
	.align	2
	.align	3
	.globl	x265_cpu_cpuid
	.set	nomips16
	.set	nomicromips
	.ent	x265_cpu_cpuid
	.type	x265_cpu_cpuid, @function
x265_cpu_cpuid:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	sw	$0,0($5)

	.set	macro
	.set	reorder
	.end	x265_cpu_cpuid
	.size	x265_cpu_cpuid, .-x265_cpu_cpuid
	.align	2
	.align	3
	.globl	x265_cpu_xgetbv
	.set	nomips16
	.set	nomicromips
	.ent	x265_cpu_xgetbv
	.type	x265_cpu_xgetbv, @function
x265_cpu_xgetbv:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	x265_cpu_xgetbv
	.size	x265_cpu_xgetbv, .-x265_cpu_xgetbv
	.align	2
	.align	3
	.globl	x265_cpu_neon_test
	.set	nomips16
	.set	nomicromips
	.ent	x265_cpu_neon_test
	.type	x265_cpu_neon_test, @function
x265_cpu_neon_test:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	x265_cpu_neon_test
	.size	x265_cpu_neon_test, .-x265_cpu_neon_test
	.align	2
	.align	3
	.globl	x265_cpu_fast_neon_mrc_test
	.set	nomips16
	.set	nomicromips
	.ent	x265_cpu_fast_neon_mrc_test
	.type	x265_cpu_fast_neon_mrc_test, @function
x265_cpu_fast_neon_mrc_test:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	x265_cpu_fast_neon_mrc_test
	.size	x265_cpu_fast_neon_mrc_test, .-x265_cpu_fast_neon_mrc_test
	.globl	_ZN4x26510primitivesE
	.section	.bss,"aw",@nobits
	.align	3
	.type	_ZN4x26510primitivesE, @object
	.size	_ZN4x26510primitivesE, 15416
_ZN4x26510primitivesE:
	.space	15416
	.globl	_ZN4x26521lumaPartitionMapTableE
	.rdata
	.align	3
	.type	_ZN4x26521lumaPartitionMapTableE, @object
	.size	_ZN4x26521lumaPartitionMapTableE, 256
_ZN4x26521lumaPartitionMapTableE:
	.byte	0
	.byte	6
	.byte	-1
	.byte	16
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	5
	.byte	1
	.byte	-1
	.byte	8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	20
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	14
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	15
	.byte	7
	.byte	13
	.byte	2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	10
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	24
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	18
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	19
	.byte	-1
	.byte	9
	.byte	-1
	.byte	17
	.byte	-1
	.byte	3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	12
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	22
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	23
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	11
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	21
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	4
	.ident	"GCC: (GNU) 7.3.0"
