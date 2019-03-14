	.file	1 "param.cpp"
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
	.ascii	"1\000"
	.align	3
.LC1:
	.ascii	"true\000"
	.align	3
.LC2:
	.ascii	"yes\000"
	.align	3
.LC3:
	.ascii	"0\000"
	.align	3
.LC4:
	.ascii	"false\000"
	.align	3
.LC5:
	.ascii	"no\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	x265_atobool
	.type	x265_atobool, @function
x265_atobool:
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(x265_atobool)))
	daddu	$28,$28,$25
	sd	$18,24($sp)
	move	$18,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(x265_atobool)))
	sd	$17,16($sp)
	move	$17,$4
	ld	$5,%got_page(.LC0)($28)
	ld	$25,%call16(strcmp)($28)
	sd	$16,8($sp)
	li	$16,1			# 0x1
	sd	$31,40($sp)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC0)

	beq	$2,$0,.L2
	move	$4,$17

	ld	$5,%got_page(.LC1)($28)
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC1)

	beq	$2,$0,.L2
	move	$4,$17

	ld	$5,%got_page(.LC2)($28)
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC2)

	beq	$2,$0,.L2
	move	$4,$17

	ld	$5,%got_page(.LC3)($28)
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC3)

	beq	$2,$0,.L2
	move	$16,$2

	ld	$5,%got_page(.LC4)($28)
	move	$4,$17
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC4)

	beq	$2,$0,.L2
	move	$16,$2

	ld	$5,%got_page(.LC5)($28)
	move	$4,$17
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC5)

	beq	$2,$0,.L2
	move	$16,$2

	li	$2,1			# 0x1
	move	$16,$0
	sb	$2,0($18)
.L2:
	ld	$31,40($sp)
	move	$2,$16
	ld	$28,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	x265_atobool
	.size	x265_atobool, .-x265_atobool
	.section	.rodata.str1.8
	.align	3
.LC6:
	.ascii	"tools:%s\012\000"
	.align	3
.LC7:
	.ascii	"x265\000"
	.align	3
.LC8:
	.ascii	" %s\000"
	.text
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
	.type	_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4, @function
_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)))
	daddu	$28,$28,$25
	sd	$19,24($sp)
	move	$19,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)))
	move	$4,$5
	sd	$31,40($sp)
	ld	$25,%call16(strlen)($28)
	sd	$18,16($sp)
	move	$18,$6
	sd	$17,8($sp)
	move	$17,$5
	.reloc	1f,R_MIPS_JALR,strlen
1:	jalr	$25
	sd	$16,0($sp)

	move	$4,$18
	ld	$25,%call16(strlen)($28)
	.reloc	1f,R_MIPS_JALR,strlen
1:	jalr	$25
	move	$16,$2

	daddu	$2,$16,$2
	daddiu	$2,$2,20
	sltu	$2,$2,80
	beq	$2,$0,.L24
	ld	$25,%call16(strcpy)($28)

	daddiu	$4,$16,1
	move	$5,$18
	daddu	$16,$17,$16
	daddu	$4,$17,$4
	li	$2,32			# 0x20
	.reloc	1f,R_MIPS_JALR,strcpy
1:	jalr	$25
	sb	$2,0($16)

	ld	$31,40($sp)
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.align	3
.L24:
	ld	$7,%got_page(.LC6)($28)
	move	$4,$19
	move	$8,$17
	ld	$5,%got_page(.LC7)($28)
	li	$6,2			# 0x2
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$7,%got_ofst(.LC6)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	ld	$5,%got_page(.LC8)($28)
	move	$6,$18
	ld	$25,%call16(sprintf)($28)
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC8)

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
	.end	_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
	.size	_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4, .-_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
	.align	2
	.align	3
	.globl	x265_param_alloc
	.set	nomips16
	.set	nomicromips
	.ent	x265_param_alloc
	.type	x265_param_alloc, @function
x265_param_alloc:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(x265_param_alloc)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(x265_param_alloc)))
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	li	$4,864			# 0x360

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	x265_param_alloc
	.size	x265_param_alloc, .-x265_param_alloc
	.align	2
	.align	3
	.globl	x265_param_free
	.set	nomips16
	.set	nomicromips
	.ent	x265_param_free
	.type	x265_param_free, @function
x265_param_free:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x90000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-16
	sd	$28,0($sp)
	lui	$28,%hi(%neg(%gp_rel(x265_param_free)))
	daddu	$28,$28,$25
	sd	$31,8($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(x265_param_free)))
	ld	$25,%call16(_ZN4x2659x265_freeEPv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_freeEPv
1:	jalr	$25
	nop

	ld	$31,8($sp)
	ld	$28,0($sp)
	jr	$31
	daddiu	$sp,$sp,16

	.set	macro
	.set	reorder
	.end	x265_param_free
	.size	x265_param_free, .-x265_param_free
	.align	2
	.align	3
	.globl	x265_param_default
	.set	nomips16
	.set	nomicromips
	.ent	x265_param_default
	.type	x265_param_default, @function
x265_param_default:
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 0, gp= 0
	.mask	0x901f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	li	$6,864			# 0x360
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(x265_param_default)))
	move	$5,$0
	daddu	$28,$28,$25
	sd	$31,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(x265_param_default)))
	sd	$20,40($sp)
	ld	$25,%call16(memset)($28)
	sd	$19,32($sp)
	sd	$18,24($sp)
	sd	$17,16($sp)
	sd	$16,8($sp)
	.reloc	1f,R_MIPS_JALR,memset
1:	jalr	$25
	move	$16,$4

	ld	$25,%call16(_ZN4x26510cpu_detectEv)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x26510cpu_detectEv
1:	jalr	$25
	nop

	li	$9,1			# 0x1
	sw	$0,4($16)
	li	$25,8			# 0x8
	li	$3,1			# 0x1
	sw	$2,0($16)
	sw	$9,16($16)
	li	$2,268107776			# 0xffb0000
	dsll	$8,$3,32
	sw	$25,56($16)
	dsll	$15,$3,34
	daddiu	$2,$2,13107
	sw	$9,60($16)
	li	$4,2			# 0x2
	daddiu	$15,$15,250
	sw	$9,112($16)
	daddiu	$17,$8,2
	li	$11,64			# 0x40
	sw	$9,124($16)
	dsll	$2,$2,16
	li	$10,3			# 0x3
	sw	$25,184($16)
	li	$7,57			# 0x39
	daddiu	$2,$2,13107
	sw	$9,200($16)
	dsll	$10,$10,32
	dsll	$7,$7,32
	sw	$9,204($16)
	li	$9,32			# 0x20
	dsll	$2,$2,18
	sw	$25,168($16)
	daddiu	$12,$8,1
	daddiu	$20,$10,2
	ld	$25,%got_page(.LC9)($28)
	dsll	$19,$3,62
	ori	$2,$2,0xcccd
	sw	$9,196($16)
	li	$9,20			# 0x14
	daddiu	$7,$7,2
	sw	$9,164($16)
	li	$9,40			# 0x28
	li	$6,1071841280			# 0x3fe30000
	sw	$4,40($16)
	li	$4,65491			# 0xffd3
	daddiu	$6,$6,13107
	sw	$11,180($16)
	dsll	$4,$4,16
	li	$5,65536			# 0x10000
	sd	$15,144($16)
	daddiu	$4,$4,13107
	dsll	$6,$6,16
	sd	$17,152($16)
	dsll	$4,$4,30
	ori	$5,$5,0xffb3
	sw	$9,172($16)
	daddiu	$6,$6,13107
	dsll	$5,$5,16
	sw	$0,44($16)
	dsll	$14,$3,37
	dsll	$6,$6,16
	sd	$0,48($16)
	daddiu	$5,$5,13107
	li	$11,5			# 0x5
	sd	$0,544($16)
	daddiu	$18,$14,2
	daddiu	$24,$8,4
	sw	$0,28($16)
	daddiu	$9,$8,8
	daddiu	$6,$6,13107
	sw	$0,128($16)
	dsll	$5,$5,29
	dsll	$13,$3,33
	sw	$0,32($16)
	daddiu	$15,$13,2
	sw	$0,36($16)
	sw	$0,80($16)
	sw	$0,108($16)
	sw	$0,116($16)
	sw	$0,120($16)
	sw	$0,744($16)
	sd	$3,136($16)
	sw	$0,712($16)
	sw	$0,320($16)
	ldc1	$f0,%got_ofst(.LC9)($25)
	li	$25,3			# 0x3
	sd	$20,248($16)
	sd	$19,344($16)
	sw	$0,828($16)
	sdc1	$f0,704($16)
	sw	$0,312($16)
	sw	$3,316($16)
	sw	$0,192($16)
	sw	$0,188($16)
	sw	$25,308($16)
	sw	$0,212($16)
	sw	$3,216($16)
	sw	$0,220($16)
	sw	$0,324($16)
	sd	$8,88($16)
	sd	$10,96($16)
	sd	$8,240($16)
	sd	$8,256($16)
	sd	$7,264($16)
	sd	$12,272($16)
	sd	$0,280($16)
	sw	$0,208($16)
	sd	$0,736($16)
	sw	$3,288($16)
	sw	$3,300($16)
	sw	$0,304($16)
	sw	$0,756($16)
	sd	$0,720($16)
	sd	$0,328($16)
	sw	$0,336($16)
	sw	$0,132($16)
	sd	$0,352($16)
	sd	$0,360($16)
	sd	$2,464($16)
	li	$2,511			# 0x1ff
	dsll	$2,$2,53
	sd	$4,424($16)
	li	$4,4111			# 0x100f
	sd	$2,512($16)
	li	$2,4109			# 0x100d
	dsll	$4,$4,50
	dsll	$2,$2,50
	sd	$4,432($16)
	li	$4,1023			# 0x3ff
	sd	$2,520($16)
	li	$2,69			# 0x45
	dsll	$4,$4,52
	dsll	$2,$2,32
	sd	$18,392($16)
	sd	$2,560($16)
	li	$2,255			# 0xff
	dsll	$2,$2,48
	sd	$0,368($16)
	sd	$0,376($16)
	sw	$0,384($16)
	sw	$0,696($16)
	sw	$0,732($16)
	sd	$0,840($16)
	sd	$0,848($16)
	sw	$0,400($16)
	sd	$6,408($16)
	sd	$5,416($16)
	sd	$24,440($16)
	sd	$4,448($16)
	sd	$0,456($16)
	sw	$3,472($16)
	sd	$0,480($16)
	sd	$0,488($16)
	sd	$0,496($16)
	sd	$0,504($16)
	sd	$3,528($16)
	sd	$0,536($16)
	sd	$14,552($16)
	sd	$0,568($16)
	sd	$0,576($16)
	sw	$0,584($16)
	sd	$0,592($16)
	sd	$11,600($16)
	sd	$2,664($16)
	sd	$9,672($16)
	sd	$12,680($16)
	sd	$0,688($16)
	sd	$0,760($16)
	sd	$0,768($16)
	ld	$31,56($sp)
	sd	$13,608($16)
	sd	$15,616($16)
	sd	$0,624($16)
	sd	$0,632($16)
	sd	$0,640($16)
	sd	$0,648($16)
	sw	$0,716($16)
	sw	$0,728($16)
	sw	$0,748($16)
	sw	$11,752($16)
	sd	$0,776($16)
	sd	$0,784($16)
	sw	$0,792($16)
	sw	$3,812($16)
	sd	$0,816($16)
	sw	$0,824($16)
	sd	$0,832($16)
	sd	$8,856($16)
	ld	$28,48($sp)
	ld	$20,40($sp)
	ld	$19,32($sp)
	ld	$18,24($sp)
	ld	$17,16($sp)
	ld	$16,8($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	x265_param_default
	.size	x265_param_default, .-x265_param_default
	.section	.rodata.str1.8
	.align	3
.LC10:
	.ascii	"ultrafast\000"
	.align	3
.LC11:
	.ascii	"superfast\000"
	.align	3
.LC12:
	.ascii	"veryfast\000"
	.align	3
.LC13:
	.ascii	"faster\000"
	.align	3
.LC14:
	.ascii	"fast\000"
	.align	3
.LC15:
	.ascii	"medium\000"
	.align	3
.LC16:
	.ascii	"slow\000"
	.align	3
.LC18:
	.ascii	"slower\000"
	.align	3
.LC19:
	.ascii	"veryslow\000"
	.align	3
.LC20:
	.ascii	"placebo\000"
	.align	3
.LC21:
	.ascii	"psnr\000"
	.align	3
.LC22:
	.ascii	"ssim\000"
	.align	3
.LC23:
	.ascii	"fastdecode\000"
	.align	3
.LC24:
	.ascii	"fast-decode\000"
	.align	3
.LC25:
	.ascii	"zerolatency\000"
	.align	3
.LC26:
	.ascii	"zero-latency\000"
	.align	3
.LC27:
	.ascii	"grain\000"
	.text
	.align	2
	.align	3
	.globl	x265_param_default_preset
	.set	nomips16
	.set	nomicromips
	.ent	x265_param_default_preset
	.type	x265_param_default_preset, @function
x265_param_default_preset:
	.frame	$sp,64,$31		# vars= 16, regs= 5/0, args= 0, gp= 0
	.mask	0x90070000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(x265_param_default_preset)))
	daddu	$28,$28,$25
	sd	$17,32($sp)
	move	$17,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(x265_param_default_preset)))
	sd	$18,40($sp)
	move	$18,$6
	ld	$25,%got_disp(x265_param_default)($28)
	sd	$16,24($sp)
	sd	$31,56($sp)
	.reloc	1f,R_MIPS_JALR,x265_param_default
1:	jalr	$25
	move	$16,$4

	beq	$17,$0,.L32
	ld	$25,%call16(strtol)($28)

	li	$6,10			# 0xa
	move	$5,$sp
	.reloc	1f,R_MIPS_JALR,strtol
1:	jalr	$25
	move	$4,$17

	ld	$3,0($sp)
	lb	$3,0($3)
	bne	$3,$0,.L70
	ld	$5,%got_page(.LC10)($28)

	sll	$2,$2,0
	sltu	$3,$2,10
	beq	$3,$0,.L71
	move	$4,$17

	ld	$3,%got_page(_ZL17x265_preset_names)($28)
	daddiu	$3,$3,%got_ofst(_ZL17x265_preset_names)
	dlsa	$2,$2,$3,3
	ld	$17,0($2)
	ld	$5,%got_page(.LC10)($28)
	.align	3
.L70:
	move	$4,$17
	.align	3
.L71:
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC10)

	bne	$2,$0,.L34
	move	$4,$17

	li	$4,5			# 0x5
	li	$2,1			# 0x1
	sw	$0,172($16)
	sw	$4,164($16)
	li	$4,16			# 0x10
	li	$3,32			# 0x20
	sw	$4,184($16)
	li	$4,3			# 0x3
	sw	$4,148($16)
	li	$4,2			# 0x2
	sw	$3,180($16)
	sw	$0,152($16)
	sw	$0,264($16)
	sw	$0,260($16)
	sw	$2,312($16)
	sw	$0,300($16)
	sw	$0,216($16)
	sw	$0,276($16)
	sw	$4,308($16)
	sw	$2,100($16)
	sw	$0,252($16)
	sd	$0,448($16)
	sw	$0,444($16)
	sw	$3,556($16)
	sw	$2,320($16)
.L32:
	beq	$18,$0,.L51
	ld	$5,%got_page(.LC21)($28)

	move	$4,$18
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC21)

	beq	$2,$0,.L66
	ld	$5,%got_page(.LC22)($28)

	move	$4,$18
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC22)

	beq	$2,$0,.L67
	ld	$5,%got_page(.LC23)($28)

	move	$4,$18
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC23)

	beq	$2,$0,.L47
	ld	$5,%got_page(.LC24)($28)

	move	$4,$18
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC24)

	beq	$2,$0,.L47
	ld	$5,%got_page(.LC25)($28)

	move	$4,$18
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC25)

	beq	$2,$0,.L49
	ld	$5,%got_page(.LC26)($28)

	move	$4,$18
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC26)

	beq	$2,$0,.L49
	ld	$5,%got_page(.LC27)($28)

	move	$4,$18
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC27)

	bne	$2,$0,.L52
	ld	$7,%got_page(.LC28)($28)

	li	$3,1			# 0x1
	ld	$6,%got_page(.LC17)($28)
	ld	$5,%got_page(.LC29)($28)
	ldc1	$f0,%got_ofst(.LC28)($7)
	ld	$4,%got_page(.LC30)($28)
	sw	$0,472($16)
	sd	$3,440($16)
	sdc1	$f0,416($16)
	ldc1	$f0,%got_ofst(.LC17)($6)
	sw	$3,560($16)
	sw	$0,316($16)
	sdc1	$f0,424($16)
	ldc1	$f0,%got_ofst(.LC29)($5)
	sw	$0,300($16)
	sw	$3,572($16)
	sdc1	$f0,344($16)
	ldc1	$f0,%got_ofst(.LC30)($4)
	b	.L44
	sdc1	$f0,352($16)

	.align	3
.L66:
	sd	$0,448($16)
	sd	$0,344($16)
	sd	$0,352($16)
.L44:
	ld	$31,56($sp)
	ld	$28,48($sp)
	ld	$18,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L34:
	ld	$5,%got_page(.LC11)($28)
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC11)

	beq	$2,$0,.L68
	li	$4,10			# 0xa

	ld	$5,%got_page(.LC12)($28)
	move	$4,$17
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC12)

	bne	$2,$0,.L37
	move	$4,$17

	li	$3,2			# 0x2
	li	$2,1			# 0x1
	sw	$0,152($16)
	li	$4,15			# 0xf
	sw	$3,308($16)
	sw	$3,100($16)
	li	$3,32			# 0x20
	sw	$2,264($16)
	sw	$4,164($16)
	sw	$2,312($16)
	sw	$3,556($16)
	b	.L32
	sw	$2,320($16)

	.align	3
.L51:
	ld	$31,56($sp)
	move	$2,$0
	ld	$28,48($sp)
	ld	$18,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L68:
	li	$2,1			# 0x1
	sw	$0,152($16)
	sw	$4,164($16)
	li	$4,3			# 0x3
	li	$3,32			# 0x20
	sw	$4,148($16)
	li	$4,2			# 0x2
	sw	$3,180($16)
	sw	$2,264($16)
	sw	$2,312($16)
	sw	$0,276($16)
	sw	$4,308($16)
	sw	$2,100($16)
	sw	$0,252($16)
	sd	$0,448($16)
	sw	$0,444($16)
	sw	$3,556($16)
	sw	$0,300($16)
	b	.L32
	sw	$2,320($16)

	.align	3
.L47:
	ld	$31,56($sp)
	move	$2,$0
	sw	$0,288($16)
	sw	$0,300($16)
	sw	$0,276($16)
	sw	$0,280($16)
	sw	$0,332($16)
	ld	$28,48($sp)
	ld	$18,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L67:
	ld	$31,56($sp)
	li	$3,2			# 0x2
	sd	$0,344($16)
	sw	$3,444($16)
	sd	$0,352($16)
	ld	$28,48($sp)
	ld	$18,40($sp)
	ld	$17,32($sp)
	ld	$16,24($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L37:
	ld	$5,%got_page(.LC13)($28)
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC13)

	beq	$2,$0,.L69
	li	$2,1			# 0x1

	ld	$5,%got_page(.LC14)($28)
	move	$4,$17
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC14)

	bne	$2,$0,.L39
	move	$4,$17

	li	$2,15			# 0xf
	sw	$0,152($16)
	sw	$2,164($16)
	li	$2,2			# 0x2
	sw	$2,308($16)
	li	$2,3			# 0x3
	sw	$2,100($16)
	li	$2,1			# 0x1
	b	.L32
	sw	$2,320($16)

	.align	3
.L69:
	li	$3,2			# 0x2
	sw	$0,152($16)
	li	$4,15			# 0xf
	sw	$2,312($16)
	sw	$4,164($16)
	sw	$3,308($16)
	sw	$3,100($16)
	b	.L32
	sw	$2,320($16)

	.align	3
.L49:
	li	$3,1			# 0x1
	sw	$0,152($16)
	move	$2,$0
	sw	$0,148($16)
	sw	$0,164($16)
	sw	$0,172($16)
	sw	$0,472($16)
	b	.L44
	sw	$3,4($16)

	.align	3
.L39:
	ld	$5,%got_page(.LC15)($28)
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC15)

	beq	$2,$0,.L32
	move	$4,$17

	ld	$5,%got_page(.LC16)($28)
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC16)

	bne	$2,$0,.L40
	move	$4,$17

	li	$5,1			# 0x1
	li	$4,3			# 0x3
	sw	$5,188($16)
	li	$6,25			# 0x19
	dsll	$3,$4,32
	ld	$5,%got_page(.LC17)($28)
	li	$2,4			# 0x4
	daddiu	$3,$3,1
	sw	$6,164($16)
	li	$6,2			# 0x2
	sw	$6,212($16)
	li	$6,3			# 0x3
	ldc1	$f0,%got_ofst(.LC17)($5)
	sw	$2,308($16)
	sw	$6,248($16)
	sw	$2,100($16)
	sdc1	$f0,352($16)
	sd	$3,256($16)
	sw	$4,264($16)
	b	.L32
	sw	$2,168($16)

.L40:
	ld	$5,%got_page(.LC18)($28)
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC18)

	bne	$2,$0,.L41
	move	$4,$17

	ld	$8,%got_page(.LC17)($28)
	li	$4,3			# 0x3
	li	$6,1			# 0x1
	dsll	$3,$4,32
	sw	$4,264($16)
	li	$4,1			# 0x1
	sw	$4,280($16)
	dsll	$2,$6,33
	li	$5,4			# 0x4
	sw	$4,192($16)
	ldc1	$f0,%got_ofst(.LC17)($8)
	daddiu	$7,$2,3
	daddiu	$3,$3,1
	sw	$4,188($16)
	li	$4,30			# 0x1e
	sw	$4,164($16)
	li	$4,8			# 0x8
	sw	$6,332($16)
	daddiu	$6,$2,2
	daddiu	$2,$2,4
	sw	$4,148($16)
	li	$4,6			# 0x6
	sw	$4,308($16)
	sdc1	$f0,352($16)
	sw	$5,100($16)
	sd	$7,248($16)
	sd	$3,256($16)
	sw	$5,168($16)
	sd	$6,200($16)
	b	.L32
	sd	$2,208($16)

.L41:
	ld	$5,%got_page(.LC19)($28)
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC19)

	bne	$2,$0,.L42
	move	$4,$17

	ld	$7,%got_page(.LC17)($28)
	li	$2,3			# 0x3
	li	$4,1073741824			# 0x40000000
	dsll	$2,$2,32
	li	$8,40			# 0x28
	sw	$0,168($16)
	daddiu	$6,$2,1
	li	$3,1			# 0x1
	sw	$8,164($16)
	daddiu	$2,$2,3
	ldc1	$f0,%got_ofst(.LC17)($7)
	daddiu	$4,$4,1
	sd	$6,256($16)
	li	$8,8			# 0x8
	dsll	$4,$4,2
	sd	$2,200($16)
	dsll	$2,$3,33
	li	$5,1			# 0x1
	sw	$8,148($16)
	li	$7,5			# 0x5
	li	$8,6			# 0x6
	sd	$4,248($16)
	daddiu	$2,$2,4
	li	$4,4			# 0x4
	sw	$5,280($16)
	sw	$5,192($16)
	sw	$5,188($16)
	sw	$8,308($16)
	sdc1	$f0,352($16)
	sw	$7,100($16)
	sw	$4,264($16)
	sw	$5,332($16)
	b	.L32
	sd	$2,208($16)

.L42:
	ld	$5,%got_page(.LC20)($28)
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC20)

	bne	$2,$0,.L52
	ld	$6,%got_page(.LC17)($28)

	li	$2,1			# 0x1
	li	$4,1			# 0x1
	dsll	$3,$2,34
	sw	$4,280($16)
	li	$5,5			# 0x5
	daddiu	$3,$3,4
	sw	$4,192($16)
	sd	$3,200($16)
	li	$3,6			# 0x6
	ldc1	$f0,%got_ofst(.LC17)($6)
	sw	$4,188($16)
	li	$4,60			# 0x3c
	sw	$3,308($16)
	li	$3,2			# 0x2
	sw	$4,164($16)
	li	$4,92			# 0x5c
	sw	$3,212($16)
	li	$3,3			# 0x3
	sw	$4,268($16)
	li	$4,8			# 0x8
	sw	$3,260($16)
	li	$3,5			# 0x5
	sw	$4,148($16)
	sdc1	$f0,352($16)
	sw	$5,264($16)
	sw	$2,220($16)
	sw	$0,316($16)
	sw	$5,100($16)
	sd	$3,248($16)
	sw	$2,332($16)
	b	.L32
	sw	$0,168($16)

.L52:
	b	.L44
	li	$2,-1			# 0xffffffffffffffff

	.set	macro
	.set	reorder
	.end	x265_param_default_preset
	.size	x265_param_default_preset, .-x265_param_default_preset
	.align	2
	.align	3
	.globl	_ZN4x2659x265_atoiEPKcRb
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659x265_atoiEPKcRb
	.type	_ZN4x2659x265_atoiEPKcRb, @function
_ZN4x2659x265_atoiEPKcRb:
	.frame	$sp,48,$31		# vars= 16, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	move	$6,$0
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659x265_atoiEPKcRb)))
	daddu	$28,$28,$25
	sd	$17,24($sp)
	move	$17,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659x265_atoiEPKcRb)))
	move	$5,$sp
	sd	$16,16($sp)
	ld	$25,%call16(strtol)($28)
	sd	$31,40($sp)
	.reloc	1f,R_MIPS_JALR,strtol
1:	jalr	$25
	move	$16,$4

	ld	$3,0($sp)
	beq	$3,$16,.L73
	sll	$2,$2,0

	lb	$3,0($3)
	beq	$3,$0,.L79
	ld	$31,40($sp)

.L73:
	li	$3,1			# 0x1
	sb	$3,0($17)
	ld	$31,40($sp)
.L79:
	ld	$28,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN4x2659x265_atoiEPKcRb
	.size	_ZN4x2659x265_atoiEPKcRb, .-_ZN4x2659x265_atoiEPKcRb
	.align	2
	.align	3
	.set	nomips16
	.set	nomicromips
	.ent	parseName
	.type	parseName, @function
parseName:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$16,0($sp)
	move	$16,$5
	ld	$5,0($5)
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(parseName)))
	daddu	$28,$28,$25
	sd	$19,24($sp)
	move	$19,$6
	sd	$18,16($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(parseName)))
	move	$18,$4
	sd	$31,40($sp)
	beq	$5,$0,.L81
	sd	$17,8($sp)

	daddiu	$16,$16,8
	b	.L83
	move	$17,$0

	.align	3
.L89:
	ld	$5,-8($16)
	beq	$5,$0,.L81
	addiu	$17,$17,1

.L83:
	ld	$25,%call16(strcmp)($28)
	move	$4,$18
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$16,$16,8

	bne	$2,$0,.L89
	ld	$31,40($sp)

	move	$2,$17
	ld	$28,32($sp)
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.align	3
.L81:
	ld	$31,40($sp)
	move	$5,$19
	move	$4,$18
	ld	$19,24($sp)
	ld	$18,16($sp)
	ld	$17,8($sp)
	ld	$16,0($sp)
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	ld	$28,32($sp)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jr	$25
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	parseName
	.size	parseName, .-parseName
	.align	2
	.align	3
	.globl	_ZN4x2659x265_atofEPKcRb
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x2659x265_atofEPKcRb
	.type	_ZN4x2659x265_atofEPKcRb, @function
_ZN4x2659x265_atofEPKcRb:
	.frame	$sp,48,$31		# vars= 16, regs= 4/0, args= 0, gp= 0
	.mask	0x90030000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-48
	sd	$28,32($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x2659x265_atofEPKcRb)))
	daddu	$28,$28,$25
	sd	$17,24($sp)
	move	$17,$5
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x2659x265_atofEPKcRb)))
	move	$5,$sp
	sd	$16,16($sp)
	ld	$25,%call16(strtod)($28)
	sd	$31,40($sp)
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$16,$4

	ld	$2,0($sp)
	beq	$2,$16,.L91
	nop

	lb	$2,0($2)
	beq	$2,$0,.L97
	ld	$31,40($sp)

.L91:
	li	$2,1			# 0x1
	sb	$2,0($17)
	ld	$31,40($sp)
.L97:
	ld	$28,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	jr	$31
	daddiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	_ZN4x2659x265_atofEPKcRb
	.size	_ZN4x2659x265_atofEPKcRb, .-_ZN4x2659x265_atofEPKcRb
	.section	.rodata.str1.8
	.align	3
.LC31:
	.ascii	"auto\000"
	.align	3
.LC32:
	.ascii	",\000"
	.text
	.align	2
	.align	3
	.globl	_ZN4x26512parseCpuNameEPKcRb
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26512parseCpuNameEPKcRb
	.type	_ZN4x26512parseCpuNameEPKcRb, @function
_ZN4x26512parseCpuNameEPKcRb:
	.frame	$sp,112,$31		# vars= 16, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-112
	sd	$28,88($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26512parseCpuNameEPKcRb)))
	daddu	$28,$28,$25
	sd	$19,48($sp)
	move	$19,$5
	sd	$31,104($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26512parseCpuNameEPKcRb)))
	sd	$fp,96($sp)
	sd	$23,80($sp)
	sd	$22,72($sp)
	sd	$21,64($sp)
	sd	$20,56($sp)
	sd	$18,40($sp)
	sd	$17,32($sp)
	beq	$4,$0,.L123
	sd	$16,24($sp)

	lb	$2,0($4)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	bne	$2,$0,.L124
	move	$16,$4

	ld	$5,%got_page(.LC31)($28)
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC31)

	beq	$2,$0,.L129
	ld	$25,%call16(_ZN4x26510cpu_detectEv)($28)

	ld	$25,%got_page(x265_atobool)($28)
	move	$5,$19
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$16

	beq	$2,$0,.L102
	move	$fp,$2

	ld	$25,%call16(_ZN4x26510cpu_detectEv)($28)
.L129:
	.reloc	1f,R_MIPS_JALR,_ZN4x26510cpu_detectEv
1:	jalr	$25
	nop

	move	$fp,$2
	lbu	$2,0($19)
	beq	$2,$0,.L130
	ld	$31,104($sp)

	ld	$25,%call16(strdup)($28)
.L131:
	move	$4,$16
	move	$fp,$0
	ld	$20,%got_page(.LC32)($28)
	li	$22,1			# 0x1
	.reloc	1f,R_MIPS_JALR,strdup
1:	jalr	$25
	ld	$21,%got_disp(_ZN4x2659cpu_namesE)($28)

	ld	$25,%call16(strtok_r)($28)
	move	$6,$sp
	daddiu	$20,$20,%got_ofst(.LC32)
	move	$4,$2
	sd	$0,0($sp)
	move	$5,$20
	move	$23,$2
	.reloc	1f,R_MIPS_JALR,strtok_r
1:	jalr	$25
	sb	$0,0($19)

	beq	$2,$0,.L106
	move	$18,$2

	.align	3
.L126:
	lw	$17,16($21)
	beq	$17,$0,.L107
	nop

	b	.L109
	ld	$16,%got_disp(_ZN4x2659cpu_namesE)($28)

	.align	3
.L125:
	lw	$17,16($16)
	beq	$17,$0,.L107
	nop

.L109:
	ld	$25,%call16(strcasecmp)($28)
	move	$5,$16
	move	$4,$18
	.reloc	1f,R_MIPS_JALR,strcasecmp
1:	jalr	$25
	daddiu	$16,$16,20

	bne	$2,$0,.L125
	or	$2,$fp,$17

	move	$4,$0
	move	$fp,$2
.L128:
	ld	$25,%call16(strtok_r)($28)
	move	$6,$sp
	.reloc	1f,R_MIPS_JALR,strtok_r
1:	jalr	$25
	move	$5,$20

	bne	$2,$0,.L126
	move	$18,$2

.L106:
	ld	$25,%call16(free)($28)
	.reloc	1f,R_MIPS_JALR,free
1:	jalr	$25
	move	$4,$23

	li	$2,524288			# 0x80000
	addiu	$2,$2,64
	li	$3,64			# 0x40
	and	$2,$fp,$2
	bne	$2,$3,.L130
	ld	$31,104($sp)

	li	$2,1048576			# 0x100000
	or	$2,$fp,$2
	b	.L130
	move	$fp,$2

	.align	3
.L124:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	nop

	move	$fp,$2
.L102:
	lbu	$2,0($19)
	bne	$2,$0,.L131
	ld	$25,%call16(strdup)($28)

	ld	$31,104($sp)
.L130:
	move	$2,$fp
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
.L107:
	sb	$22,0($19)
	b	.L128
	move	$4,$0

	.align	3
.L123:
	ld	$31,104($sp)
	move	$fp,$0
	li	$2,1			# 0x1
	sb	$2,0($5)
	move	$2,$fp
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

	.set	macro
	.set	reorder
	.end	_ZN4x26512parseCpuNameEPKcRb
	.size	_ZN4x26512parseCpuNameEPKcRb, .-_ZN4x26512parseCpuNameEPKcRb
	.section	.rodata.str1.8
	.align	3
.LC33:
	.ascii	"no-\000"
	.align	3
.LC34:
	.ascii	"fps\000"
	.align	3
.LC35:
	.ascii	"%u/%u\000"
	.align	3
.LC39:
	.ascii	"frame-threads\000"
	.align	3
.LC40:
	.ascii	"pmode\000"
	.align	3
.LC41:
	.ascii	"pme\000"
	.align	3
.LC42:
	.ascii	"level-idc\000"
	.align	3
.LC43:
	.ascii	"level\000"
	.align	3
.LC44:
	.ascii	"high-tier\000"
	.align	3
.LC45:
	.ascii	"allow-non-conformance\000"
	.align	3
.LC46:
	.ascii	"log-level\000"
	.align	3
.LC47:
	.ascii	"log\000"
	.align	3
.LC48:
	.ascii	"cu-stats\000"
	.align	3
.LC49:
	.ascii	"total-frames\000"
	.align	3
.LC50:
	.ascii	"annexb\000"
	.align	3
.LC51:
	.ascii	"repeat-headers\000"
	.align	3
.LC52:
	.ascii	"wpp\000"
	.align	3
.LC53:
	.ascii	"ctu\000"
	.align	3
.LC54:
	.ascii	"min-cu-size\000"
	.align	3
.LC55:
	.ascii	"tu-intra-depth\000"
	.align	3
.LC56:
	.ascii	"tu-inter-depth\000"
	.align	3
.LC57:
	.ascii	"max-tu-size\000"
	.align	3
.LC58:
	.ascii	"subme\000"
	.align	3
.LC59:
	.ascii	"merange\000"
	.align	3
.LC60:
	.ascii	"rect\000"
	.align	3
.LC61:
	.ascii	"amp\000"
	.align	3
.LC62:
	.ascii	"max-merge\000"
	.align	3
.LC63:
	.ascii	"temporal-mvp\000"
	.align	3
.LC64:
	.ascii	"early-skip\000"
	.align	3
.LC65:
	.ascii	"rskip\000"
	.align	3
.LC66:
	.ascii	"rdpenalty\000"
	.align	3
.LC67:
	.ascii	"tskip\000"
	.align	3
.LC68:
	.ascii	"no-tskip-fast\000"
	.align	3
.LC69:
	.ascii	"tskip-fast\000"
	.align	3
.LC70:
	.ascii	"strong-intra-smoothing\000"
	.align	3
.LC71:
	.ascii	"lossless\000"
	.align	3
.LC72:
	.ascii	"cu-lossless\000"
	.align	3
.LC73:
	.ascii	"constrained-intra\000"
	.align	3
.LC74:
	.ascii	"cip\000"
	.align	3
.LC75:
	.ascii	"fast-intra\000"
	.align	3
.LC76:
	.ascii	"open-gop\000"
	.align	3
.LC77:
	.ascii	"intra-refresh\000"
	.align	3
.LC78:
	.ascii	"lookahead-slices\000"
	.align	3
.LC79:
	.ascii	"scenecut\000"
	.align	3
.LC80:
	.ascii	"temporal-layers\000"
	.align	3
.LC81:
	.ascii	"keyint\000"
	.align	3
.LC82:
	.ascii	"min-keyint\000"
	.align	3
.LC83:
	.ascii	"rc-lookahead\000"
	.align	3
.LC84:
	.ascii	"bframes\000"
	.align	3
.LC85:
	.ascii	"bframe-bias\000"
	.align	3
.LC86:
	.ascii	"b-adapt\000"
	.align	3
.LC87:
	.ascii	"interlace\000"
	.align	3
.LC88:
	.ascii	"ref\000"
	.align	3
.LC89:
	.ascii	"limit-refs\000"
	.align	3
.LC90:
	.ascii	"limit-modes\000"
	.align	3
.LC91:
	.ascii	"weightp\000"
	.align	3
.LC92:
	.ascii	"weightb\000"
	.align	3
.LC93:
	.ascii	"cbqpoffs\000"
	.align	3
.LC94:
	.ascii	"crqpoffs\000"
	.align	3
.LC95:
	.ascii	"rd\000"
	.align	3
.LC96:
	.ascii	"rdoq\000"
	.align	3
.LC97:
	.ascii	"rdoq-level\000"
	.align	3
.LC98:
	.ascii	"psy-rd\000"
	.align	3
.LC99:
	.ascii	"psy-rdoq\000"
	.align	3
.LC100:
	.ascii	"rd-refine\000"
	.align	3
.LC101:
	.ascii	"signhide\000"
	.align	3
.LC102:
	.ascii	"b-intra\000"
	.align	3
.LC103:
	.ascii	"lft\000"
	.align	3
.LC104:
	.ascii	"deblock\000"
	.align	3
.LC105:
	.ascii	"%d:%d\000"
	.align	3
.LC106:
	.ascii	"%d,%d\000"
	.align	3
.LC107:
	.ascii	"%d\000"
	.align	3
.LC108:
	.ascii	"sao\000"
	.align	3
.LC109:
	.ascii	"sao-non-deblock\000"
	.align	3
.LC110:
	.ascii	"hash\000"
	.align	3
.LC111:
	.ascii	"aud\000"
	.align	3
.LC112:
	.ascii	"info\000"
	.align	3
.LC113:
	.ascii	"b-pyramid\000"
	.align	3
.LC114:
	.ascii	"hrd\000"
	.align	3
.LC115:
	.ascii	"ipratio\000"
	.align	3
.LC116:
	.ascii	"ip-factor\000"
	.align	3
.LC117:
	.ascii	"pbratio\000"
	.align	3
.LC118:
	.ascii	"pb-factor\000"
	.align	3
.LC119:
	.ascii	"qcomp\000"
	.align	3
.LC120:
	.ascii	"qpstep\000"
	.align	3
.LC121:
	.ascii	"cplxblur\000"
	.align	3
.LC122:
	.ascii	"qblur\000"
	.align	3
.LC123:
	.ascii	"aq-mode\000"
	.align	3
.LC124:
	.ascii	"aq-strength\000"
	.align	3
.LC125:
	.ascii	"vbv-maxrate\000"
	.align	3
.LC126:
	.ascii	"vbv-bufsize\000"
	.align	3
.LC127:
	.ascii	"vbv-init\000"
	.align	3
.LC128:
	.ascii	"crf-max\000"
	.align	3
.LC129:
	.ascii	"crf-min\000"
	.align	3
.LC130:
	.ascii	"qpmax\000"
	.align	3
.LC131:
	.ascii	"crf\000"
	.align	3
.LC132:
	.ascii	"bitrate\000"
	.align	3
.LC133:
	.ascii	"qp\000"
	.align	3
.LC134:
	.ascii	"rc-grain\000"
	.align	3
.LC135:
	.ascii	"zones\000"
	.align	3
.LC136:
	.ascii	"%d,%d,q=%d%n\000"
	.align	3
.LC137:
	.ascii	"%d,%d,b=%f%n\000"
	.align	3
.LC138:
	.ascii	"input-res\000"
	.align	3
.LC139:
	.ascii	"%dx%d\000"
	.align	3
.LC140:
	.ascii	"input-csp\000"
	.align	3
.LC141:
	.ascii	"me\000"
	.align	3
.LC142:
	.ascii	"cutree\000"
	.align	3
.LC143:
	.ascii	"slow-firstpass\000"
	.align	3
.LC144:
	.ascii	"strict-cbr\000"
	.align	3
.LC145:
	.ascii	"analysis-reuse-mode\000"
	.align	3
.LC146:
	.ascii	"sar\000"
	.align	3
.LC147:
	.ascii	"overscan\000"
	.align	3
.LC148:
	.ascii	"show\000"
	.align	3
.LC149:
	.ascii	"crop\000"
	.align	3
.LC150:
	.ascii	"undef\000"
	.align	3
.LC151:
	.ascii	"videoformat\000"
	.align	3
.LC152:
	.ascii	"range\000"
	.align	3
.LC153:
	.ascii	"colorprim\000"
	.align	3
.LC154:
	.ascii	"transfer\000"
	.align	3
.LC155:
	.ascii	"colormatrix\000"
	.align	3
.LC156:
	.ascii	"chromaloc\000"
	.align	3
.LC157:
	.ascii	"display-window\000"
	.align	3
.LC158:
	.ascii	"crop-rect\000"
	.align	3
.LC159:
	.ascii	"%d,%d,%d,%d\000"
	.align	3
.LC160:
	.ascii	"nr-intra\000"
	.align	3
.LC161:
	.ascii	"nr-inter\000"
	.align	3
.LC162:
	.ascii	"pass\000"
	.align	3
.LC163:
	.ascii	"stats\000"
	.align	3
.LC164:
	.ascii	"scaling-list\000"
	.align	3
.LC165:
	.ascii	"pools\000"
	.align	3
.LC166:
	.ascii	"numa-pools\000"
	.align	3
.LC167:
	.ascii	"lambda-file\000"
	.align	3
.LC168:
	.ascii	"analysis-reuse-file\000"
	.align	3
.LC169:
	.ascii	"qg-size\000"
	.align	3
.LC170:
	.ascii	"master-display\000"
	.align	3
.LC171:
	.ascii	"max-cll\000"
	.align	3
.LC172:
	.ascii	"%hu,%hu\000"
	.align	3
.LC173:
	.ascii	"min-luma\000"
	.align	3
.LC174:
	.ascii	"max-luma\000"
	.align	3
.LC175:
	.ascii	"uhd-bd\000"
	.align	3
.LC176:
	.ascii	"csv-log-level\000"
	.align	3
.LC177:
	.ascii	"qpmin\000"
	.align	3
.LC178:
	.ascii	"analyze-src-pics\000"
	.align	3
.LC179:
	.ascii	"log2-max-poc-lsb\000"
	.align	3
.LC180:
	.ascii	"vui-timing-info\000"
	.align	3
.LC181:
	.ascii	"vui-hrd-info\000"
	.align	3
.LC182:
	.ascii	"slices\000"
	.align	3
.LC183:
	.ascii	"limit-tu\000"
	.align	3
.LC184:
	.ascii	"opt-qp-pps\000"
	.align	3
.LC185:
	.ascii	"opt-ref-list-length-pps\000"
	.align	3
.LC186:
	.ascii	"multi-pass-opt-rps\000"
	.align	3
.LC187:
	.ascii	"scenecut-bias\000"
	.align	3
.LC188:
	.ascii	"lookahead-threads\000"
	.align	3
.LC189:
	.ascii	"opt-cu-delta-qp\000"
	.align	3
.LC190:
	.ascii	"multi-pass-opt-analysis\000"
	.align	3
.LC191:
	.ascii	"multi-pass-opt-distortion\000"
	.align	3
.LC192:
	.ascii	"aq-motion\000"
	.align	3
.LC193:
	.ascii	"dynamic-rd\000"
	.align	3
.LC194:
	.ascii	"analysis-reuse-level\000"
	.align	3
.LC195:
	.ascii	"ssim-rd\000"
	.align	3
.LC196:
	.ascii	"hdr\000"
	.align	3
.LC197:
	.ascii	"hdr-opt\000"
	.align	3
.LC198:
	.ascii	"limit-sao\000"
	.align	3
.LC199:
	.ascii	"dhdr10-info\000"
	.align	3
.LC200:
	.ascii	"dhdr10-opt\000"
	.align	3
.LC201:
	.ascii	"const-vbv\000"
	.align	3
.LC202:
	.ascii	"ctu-info\000"
	.align	3
.LC203:
	.ascii	"scale-factor\000"
	.align	3
.LC204:
	.ascii	"refine-intra\000"
	.align	3
.LC205:
	.ascii	"refine-inter\000"
	.align	3
.LC206:
	.ascii	"refine-mv\000"
	.align	3
.LC207:
	.ascii	"force-flush\000"
	.align	3
.LC208:
	.ascii	"splitrd-skip\000"
	.align	3
.LC209:
	.ascii	"lowpass-dct\000"
	.align	3
.LC210:
	.ascii	"vbv-end\000"
	.align	3
.LC211:
	.ascii	"vbv-end-fr-adj\000"
	.align	3
.LC212:
	.ascii	"copy-pic\000"
	.align	3
.LC213:
	.ascii	"refine-mv-type\000"
	.align	3
.LC214:
	.ascii	"avc\000"
	.align	3
.LC215:
	.ascii	"off\000"
	.align	3
.LC216:
	.ascii	"asm\000"
	.align	3
.LC217:
	.ascii	"csv\000"
	.text
	.align	2
	.align	3
	.globl	x265_param_parse
	.set	nomips16
	.set	nomicromips
	.ent	x265_param_parse
	.type	x265_param_parse, @function
x265_param_parse:
	.frame	$sp,176,$31		# vars= 80, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-176
	sd	$28,152($sp)
	lui	$28,%hi(%neg(%gp_rel(x265_param_parse)))
	daddu	$28,$28,$25
	sd	$31,168($sp)
	sd	$fp,160($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(x265_param_parse)))
	sd	$23,144($sp)
	sd	$22,136($sp)
	sd	$21,128($sp)
	sd	$20,120($sp)
	sd	$19,112($sp)
	sd	$18,104($sp)
	sd	$17,96($sp)
	sd	$16,88($sp)
	beq	$5,$0,.L383
	sb	$0,72($sp)

	lb	$2,0($5)
	li	$3,45			# 0x2d
	move	$16,$5
	move	$19,$4
	beq	$2,$3,.L521
	move	$18,$6

	ld	$25,%call16(strlen)($28)
.L675:
	.reloc	1f,R_MIPS_JALR,strlen
1:	jalr	$25
	move	$4,$16

	daddiu	$17,$2,1
	sltu	$2,$17,64
	beq	$2,$0,.L671
	ld	$5,%got_page(.LC33)($28)

	ld	$25,%call16(strchr)($28)
	li	$5,95			# 0x5f
	.reloc	1f,R_MIPS_JALR,strchr
1:	jalr	$25
	move	$4,$16

	beq	$2,$0,.L136
	ld	$25,%call16(memcpy)($28)

	move	$5,$16
	move	$6,$17
	move	$4,$sp
	.reloc	1f,R_MIPS_JALR,memcpy
1:	jalr	$25
	li	$16,45			# 0x2d

	b	.L670
	ld	$25,%call16(strchr)($28)

	.align	3
.L522:
	sb	$16,0($2)
.L670:
	li	$5,95			# 0x5f
	.reloc	1f,R_MIPS_JALR,strchr
1:	jalr	$25
	move	$4,$sp

	bne	$2,$0,.L522
	ld	$25,%call16(strchr)($28)

	move	$16,$sp
.L136:
	ld	$5,%got_page(.LC33)($28)
.L671:
	li	$6,3			# 0x3
	move	$4,$16
	ld	$25,%call16(strncmp)($28)
	.reloc	1f,R_MIPS_JALR,strncmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC33)

	bne	$2,$0,.L138
	li	$6,2			# 0x2

	beq	$18,$0,.L394
	daddiu	$16,$16,3

.L520:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$18

	bne	$2,$0,.L395
	ld	$17,%got_page(.LC4)($28)

	ld	$17,%got_page(.LC1)($28)
	daddiu	$17,$17,%got_ofst(.LC1)
.L141:
	ld	$5,%got_page(.LC216)($28)
	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC216)

	bne	$2,$0,.L387
	ld	$25,%got_disp(_ZN4x26512parseCpuNameEPKcRb)($28)

	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x26512parseCpuNameEPKcRb
1:	jalr	$25
	move	$4,$17

	sw	$2,0($19)
.L144:
	beq	$18,$0,.L672
	ld	$31,168($sp)

.L338:
	lbu	$2,72($sp)
.L681:
	bne	$2,$0,.L672
	ld	$31,168($sp)

.L361:
	move	$2,$0
.L513:
	ld	$31,168($sp)
	ld	$fp,160($sp)
	ld	$28,152($sp)
	ld	$23,144($sp)
	ld	$22,136($sp)
	ld	$21,128($sp)
	ld	$20,120($sp)
	ld	$19,112($sp)
	ld	$18,104($sp)
	ld	$17,96($sp)
	ld	$16,88($sp)
	jr	$31
	daddiu	$sp,$sp,176

	.align	3
.L138:
	ld	$5,%got_page(.LC5)($28)
	move	$4,$16
	ld	$25,%call16(strncmp)($28)
	.reloc	1f,R_MIPS_JALR,strncmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC5)

	bne	$2,$0,.L142
	nop

	bne	$18,$0,.L520
	daddiu	$16,$16,2

.L394:
	ld	$17,%got_page(.LC4)($28)
	daddiu	$17,$17,%got_ofst(.LC4)
.L139:
	ld	$5,%got_page(.LC216)($28)
	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC216)

	beq	$2,$0,.L523
	ld	$25,%got_page(x265_atobool)($28)

.L387:
	ld	$5,%got_page(.LC34)($28)
	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC34)

	beq	$2,$0,.L524
	move	$4,$16

	ld	$5,%got_page(.LC39)($28)
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC39)

	beq	$2,$0,.L525
	ld	$5,%got_page(.LC40)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC40)

	beq	$2,$0,.L526
	ld	$5,%got_page(.LC41)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC41)

	beq	$2,$0,.L527
	ld	$5,%got_page(.LC42)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC42)

	beq	$2,$0,.L155
	ld	$5,%got_page(.LC43)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC43)

	beq	$2,$0,.L673
	ld	$25,%call16(strtod)($28)

	ld	$5,%got_page(.LC44)($28)
	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC44)

	beq	$2,$0,.L528
	ld	$5,%got_page(.LC45)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC45)

	beq	$2,$0,.L529
	ld	$5,%got_page(.LC46)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC46)

	beq	$2,$0,.L166
	ld	$5,%got_page(.LC47)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC47)

	beq	$2,$0,.L674
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)

	ld	$5,%got_page(.LC48)($28)
	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC48)

	beq	$2,$0,.L530
	ld	$5,%got_page(.LC49)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC49)

	beq	$2,$0,.L531
	ld	$5,%got_page(.LC50)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC50)

	beq	$2,$0,.L532
	ld	$5,%got_page(.LC51)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC51)

	beq	$2,$0,.L533
	ld	$5,%got_page(.LC52)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC52)

	beq	$2,$0,.L534
	ld	$5,%got_page(.LC53)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC53)

	beq	$2,$0,.L535
	ld	$5,%got_page(.LC54)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC54)

	beq	$2,$0,.L536
	ld	$5,%got_page(.LC55)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC55)

	beq	$2,$0,.L537
	ld	$5,%got_page(.LC56)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC56)

	beq	$2,$0,.L538
	ld	$5,%got_page(.LC57)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC57)

	beq	$2,$0,.L539
	ld	$5,%got_page(.LC58)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC58)

	beq	$2,$0,.L540
	ld	$5,%got_page(.LC59)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC59)

	beq	$2,$0,.L541
	ld	$5,%got_page(.LC60)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC60)

	beq	$2,$0,.L542
	ld	$5,%got_page(.LC61)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC61)

	beq	$2,$0,.L543
	ld	$5,%got_page(.LC62)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC62)

	beq	$2,$0,.L544
	ld	$5,%got_page(.LC63)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC63)

	beq	$2,$0,.L545
	ld	$5,%got_page(.LC64)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC64)

	beq	$2,$0,.L546
	ld	$5,%got_page(.LC65)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC65)

	beq	$2,$0,.L547
	ld	$5,%got_page(.LC66)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC66)

	beq	$2,$0,.L548
	ld	$5,%got_page(.LC67)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC67)

	beq	$2,$0,.L549
	ld	$5,%got_page(.LC68)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC68)

	beq	$2,$0,.L517
	ld	$5,%got_page(.LC69)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC69)

	beq	$2,$0,.L517
	ld	$5,%got_page(.LC70)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC70)

	beq	$2,$0,.L550
	ld	$5,%got_page(.LC71)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC71)

	beq	$2,$0,.L551
	ld	$5,%got_page(.LC72)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC72)

	beq	$2,$0,.L552
	ld	$5,%got_page(.LC73)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC73)

	beq	$2,$0,.L193
	ld	$5,%got_page(.LC74)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC74)

	bne	$2,$0,.L194
	ld	$5,%got_page(.LC75)($28)

.L193:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,240($19)

	.align	3
.L521:
	lb	$3,1($5)
	bne	$3,$2,.L675
	ld	$25,%call16(strlen)($28)

	b	.L675
	daddiu	$16,$5,2

	.align	3
.L142:
	beq	$18,$0,.L396
	li	$2,61			# 0x3d

	lb	$3,0($18)
	bne	$3,$2,.L141
	move	$17,$18

	b	.L141
	daddiu	$17,$18,1

	.align	3
.L395:
	b	.L141
	daddiu	$17,$17,%got_ofst(.LC4)

	.align	3
.L396:
	ld	$17,%got_page(.LC1)($28)
	b	.L139
	daddiu	$17,$17,%got_ofst(.LC1)

	.align	3
.L526:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,20($19)

	.align	3
.L155:
	ld	$25,%call16(strtod)($28)
	.align	3
.L673:
	daddiu	$20,$sp,64
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$5,$20

	ld	$2,64($sp)
	beq	$2,$17,.L157
	nop

	lb	$2,0($2)
	bne	$2,$0,.L676
	li	$2,1			# 0x1

.L158:
	ld	$16,%got_page(.LC30)($28)
	ldc1	$f1,%got_ofst(.LC30)($16)
	c.lt.d	$fcc2,$f0,$f1
	bc1f	$fcc2,.L514
	move	$4,$17

	ld	$25,%call16(strtod)($28)
	move	$5,$20
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$4,$17

	ld	$2,64($sp)
	beq	$2,$17,.L161
	nop

	lb	$2,0($2)
	beq	$2,$0,.L677
	ld	$2,%got_page(.LC38)($28)

.L161:
	li	$2,1			# 0x1
	sb	$2,72($sp)
	ld	$2,%got_page(.LC38)($28)
.L677:
	ldc1	$f2,%got_ofst(.LC30)($16)
	ldc1	$f1,%got_ofst(.LC38)($2)
	madd.d	$f0,$f1,$f0,$f2
	trunc.w.d $f0,$f0
	b	.L144
	swc1	$f0,88($19)

	.align	3
.L385:
	.align	3
.L672:
	li	$2,-2			# 0xfffffffffffffffe
	ld	$fp,160($sp)
	ld	$28,152($sp)
	ld	$23,144($sp)
	ld	$22,136($sp)
	ld	$21,128($sp)
	ld	$20,120($sp)
	ld	$19,112($sp)
	ld	$18,104($sp)
	ld	$17,96($sp)
	ld	$16,88($sp)
	jr	$31
	daddiu	$sp,$sp,176

	.align	3
.L524:
	ld	$5,%got_page(.LC35)($28)
	daddiu	$7,$19,68
	daddiu	$6,$19,64
	ld	$25,%call16(sscanf)($28)
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,sscanf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC35)

	li	$3,2			# 0x2
	beq	$2,$3,.L144
	ld	$25,%call16(strtod)($28)

	daddiu	$5,$sp,64
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$4,$17

	ld	$2,64($sp)
	beq	$2,$17,.L147
	nop

	lb	$2,0($2)
	bne	$2,$0,.L678
	li	$2,1			# 0x1

.L148:
	cvt.s.d	$f0,$f0
	mtc1	$0,$f1
	c.lt.s	$fcc0,$f1,$f0
	bc1f	$fcc0,.L149
	ld	$2,%got_page(.LC36)($28)

	lwc1	$f1,%got_ofst(.LC36)($2)
	c.le.s	$fcc1,$f0,$f1
	bc1f	$fcc1,.L679
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)

	li	$2,1000			# 0x3e8
	sw	$2,68($19)
	ld	$2,%got_page(.LC37)($28)
	lwc1	$f1,%got_ofst(.LC37)($2)
	ld	$2,%got_page(.LC38)($28)
	mul.s	$f0,$f0,$f1
	ldc1	$f1,%got_ofst(.LC38)($2)
	cvt.d.s	$f0,$f0
	add.d	$f0,$f0,$f1
	trunc.w.d $f0,$f0
	b	.L144
	swc1	$f0,64($19)

	.align	3
.L147:
	li	$2,1			# 0x1
	.align	3
.L678:
	b	.L148
	sb	$2,72($sp)

	.align	3
.L523:
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,0($19)

	.align	3
.L525:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,4($19)

	.align	3
.L149:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	.align	3
.L679:
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	sw	$2,64($19)
	li	$2,1			# 0x1
	b	.L144
	sw	$2,68($19)

	.align	3
.L157:
	li	$2,1			# 0x1
	.align	3
.L676:
	b	.L158
	sb	$2,72($sp)

	.align	3
.L527:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,24($19)

	.align	3
.L514:
	ld	$16,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$20,$sp,72
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$5,$20

	slt	$2,$2,100
	beq	$2,$0,.L385
	ld	$31,168($sp)

	move	$5,$20
	move	$25,$16
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,88($19)

.L528:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,92($19)

.L166:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
.L674:
	daddiu	$16,$sp,72
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$5,$16

	lbu	$3,72($sp)
	beq	$3,$0,.L144
	sw	$2,40($19)

	ld	$5,%got_page(_ZN4x265L13logLevelNamesE)($28)
	move	$6,$16
	move	$4,$17
	ld	$25,%got_page(parseName)($28)
	sb	$0,72($sp)
	daddiu	$25,$25,%got_ofst(parseName)
	.reloc	1f,R_MIPS_JALR,parseName
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(_ZN4x265L13logLevelNamesE)

	addiu	$2,$2,-1
	b	.L144
	sw	$2,40($19)

.L383:
	b	.L513
	li	$2,-1			# 0xffffffffffffffff

.L529:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,104($19)

.L530:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,28($19)

.L531:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,84($19)

.L532:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,112($19)

.L533:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,108($19)

.L534:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,16($19)

.L535:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,180($19)

.L537:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,204($19)

.L536:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,184($19)

.L194:
	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC75)

	beq	$2,$0,.L553
	ld	$5,%got_page(.LC76)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC76)

	beq	$2,$0,.L554
	ld	$5,%got_page(.LC77)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC77)

	beq	$2,$0,.L555
	ld	$5,%got_page(.LC78)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC78)

	beq	$2,$0,.L556
	ld	$5,%got_page(.LC79)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC79)

	beq	$2,$0,.L557
	ld	$5,%got_page(.LC80)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC80)

	beq	$2,$0,.L558
	ld	$5,%got_page(.LC81)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC81)

	beq	$2,$0,.L559
	ld	$5,%got_page(.LC82)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC82)

	beq	$2,$0,.L560
	ld	$5,%got_page(.LC83)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC83)

	beq	$2,$0,.L561
	ld	$5,%got_page(.LC84)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC84)

	beq	$2,$0,.L562
	ld	$5,%got_page(.LC85)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC85)

	beq	$2,$0,.L563
	ld	$5,%got_page(.LC86)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC86)

	beq	$2,$0,.L564
	ld	$5,%got_page(.LC87)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC87)

	beq	$2,$0,.L565
	ld	$5,%got_page(.LC88)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC88)

	beq	$2,$0,.L566
	ld	$5,%got_page(.LC89)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC89)

	beq	$2,$0,.L567
	ld	$5,%got_page(.LC90)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC90)

	beq	$2,$0,.L568
	ld	$5,%got_page(.LC91)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC91)

	beq	$2,$0,.L569
	ld	$5,%got_page(.LC92)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC92)

	beq	$2,$0,.L570
	ld	$5,%got_page(.LC93)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC93)

	beq	$2,$0,.L571
	ld	$5,%got_page(.LC94)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC94)

	beq	$2,$0,.L572
	ld	$5,%got_page(.LC95)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC95)

	beq	$2,$0,.L573
	ld	$5,%got_page(.LC96)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC96)

	beq	$2,$0,.L220
	ld	$5,%got_page(.LC97)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC97)

	bne	$2,$0,.L221
	ld	$5,%got_page(.LC98)($28)

.L220:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$16,$sp,72
	move	$4,$17
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$5,$16

	lbu	$3,72($sp)
	bne	$3,$0,.L680
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)

	beq	$2,$0,.L223
	nop

.L680:
	move	$5,$16
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	sb	$0,72($sp)

	b	.L338
	sw	$2,212($19)

.L223:
	b	.L361
	sw	$0,212($19)

.L573:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,308($19)

.L572:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,384($19)

.L571:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,380($19)

.L570:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,280($19)

.L569:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,276($19)

.L568:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,256($19)

.L567:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,252($19)

.L566:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,100($19)

.L565:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$16,$sp,72
	move	$4,$17
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$5,$16

	lbu	$3,72($sp)
	bne	$3,$0,.L211
	sw	$2,80($19)

	beq	$2,$0,.L681
	lbu	$2,72($sp)

.L211:
	ld	$5,%got_page(_ZL20x265_interlace_names)($28)
	move	$6,$16
	move	$4,$17
	ld	$25,%got_page(parseName)($28)
	sb	$0,72($sp)
	daddiu	$25,$25,%got_ofst(parseName)
	.reloc	1f,R_MIPS_JALR,parseName
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(_ZL20x265_interlace_names)

	b	.L338
	sw	$2,80($19)

.L564:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$16,$sp,72
	move	$4,$17
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$5,$16

	lbu	$3,72($sp)
	bne	$3,$0,.L209
	sw	$2,152($19)

	beq	$2,$0,.L681
	lbu	$2,72($sp)

.L209:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	move	$5,$16
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	sb	$0,72($sp)

	b	.L338
	sw	$2,152($19)

.L563:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,160($19)

.L562:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,148($19)

.L561:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,164($19)

.L560:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,140($19)

.L559:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,144($19)

.L558:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,132($19)

.L557:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$16,$sp,72
	move	$4,$17
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$5,$16

	lbu	$3,72($sp)
	bne	$3,$0,.L200
	sw	$2,172($19)

	beq	$2,$0,.L681
	lbu	$2,72($sp)

.L200:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	move	$5,$16
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	sb	$0,72($sp)

	b	.L338
	sw	$2,172($19)

.L556:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,168($19)

.L555:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,176($19)

.L554:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,136($19)

.L553:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,320($19)

.L221:
	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC98)

	beq	$2,$0,.L574
	ld	$5,%got_page(.LC99)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC99)

	beq	$2,$0,.L575
	ld	$5,%got_page(.LC100)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC100)

	beq	$2,$0,.L576
	ld	$5,%got_page(.LC101)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC101)

	beq	$2,$0,.L577
	ld	$5,%got_page(.LC102)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC102)

	beq	$2,$0,.L578
	ld	$5,%got_page(.LC103)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC103)

	beq	$2,$0,.L242
	ld	$5,%got_page(.LC104)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC104)

	beq	$2,$0,.L579
	move	$4,$16

	ld	$5,%got_page(.LC108)($28)
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC108)

	beq	$2,$0,.L580
	ld	$5,%got_page(.LC109)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC109)

	beq	$2,$0,.L581
	ld	$5,%got_page(.LC22)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC22)

	beq	$2,$0,.L582
	ld	$5,%got_page(.LC21)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC21)

	beq	$2,$0,.L583
	ld	$5,%got_page(.LC110)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC110)

	beq	$2,$0,.L584
	ld	$5,%got_page(.LC111)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC111)

	beq	$2,$0,.L585
	ld	$5,%got_page(.LC112)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC112)

	beq	$2,$0,.L586
	ld	$5,%got_page(.LC113)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC113)

	beq	$2,$0,.L587
	ld	$5,%got_page(.LC114)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC114)

	beq	$2,$0,.L588
	ld	$5,%got_page(.LC115)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC115)

	beq	$2,$0,.L252
	ld	$5,%got_page(.LC116)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC116)

	bne	$2,$0,.L253
	ld	$5,%got_page(.LC117)($28)

.L252:
	ld	$25,%call16(strtod)($28)
	daddiu	$5,$sp,64
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$4,$17

	ld	$2,64($sp)
	beq	$2,$17,.L254
	nop

	lb	$2,0($2)
	beq	$2,$0,.L255
	nop

.L254:
	li	$2,1			# 0x1
	sb	$2,72($sp)
.L255:
	b	.L144
	sdc1	$f0,416($19)

.L588:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,120($19)

.L587:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,156($19)

.L586:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,124($19)

.L585:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,116($19)

.L584:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,128($19)

.L583:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,32($19)

.L582:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,36($19)

.L581:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,304($19)

.L580:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,300($19)

.L579:
	ld	$5,%got_page(.LC105)($28)
	daddiu	$16,$19,292
	daddiu	$21,$19,296
	ld	$25,%call16(sscanf)($28)
	move	$7,$21
	move	$6,$16
	move	$4,$17
	li	$20,2			# 0x2
	.reloc	1f,R_MIPS_JALR,sscanf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC105)

	bne	$2,$20,.L240
	move	$7,$21

	li	$2,1			# 0x1
.L682:
	b	.L144
	sw	$2,288($19)

.L242:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,288($19)

.L240:
	ld	$5,%got_page(.LC106)($28)
	move	$6,$16
	ld	$25,%call16(sscanf)($28)
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,sscanf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC106)

	beq	$2,$20,.L682
	li	$2,1			# 0x1

	ld	$5,%got_page(.LC107)($28)
	move	$6,$16
	move	$4,$17
	ld	$25,%call16(sscanf)($28)
	.reloc	1f,R_MIPS_JALR,sscanf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC107)

	beq	$2,$0,.L242
	li	$3,1			# 0x1

	lw	$2,292($19)
	sw	$3,288($19)
	b	.L144
	sw	$2,296($19)

.L578:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,332($19)

.L577:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,216($19)

.L576:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,360($19)

.L575:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	lbu	$3,72($sp)
	bne	$3,$0,.L683
	ld	$25,%call16(strtod)($28)

	beq	$2,$0,.L232
	nop

.L683:
	daddiu	$5,$sp,64
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	sb	$0,72($sp)

	ld	$2,64($sp)
	beq	$2,$17,.L233
	nop

	lb	$2,0($2)
	beq	$2,$0,.L234
	nop

.L233:
	li	$2,1			# 0x1
	sb	$2,72($sp)
.L234:
	b	.L338
	sdc1	$f0,352($19)

.L574:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	lbu	$3,72($sp)
	bne	$3,$0,.L684
	ld	$25,%call16(strtod)($28)

	beq	$2,$0,.L227
	nop

.L684:
	daddiu	$5,$sp,64
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	sb	$0,72($sp)

	ld	$2,64($sp)
	beq	$2,$17,.L228
	nop

	lb	$2,0($2)
	beq	$2,$0,.L229
	nop

.L228:
	li	$2,1			# 0x1
	sb	$2,72($sp)
.L229:
	b	.L338
	sdc1	$f0,344($19)

.L232:
	b	.L361
	sd	$0,352($19)

.L227:
	b	.L361
	sd	$0,344($19)

.L253:
	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC117)

	beq	$2,$0,.L256
	ld	$5,%got_page(.LC118)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC118)

	bne	$2,$0,.L257
	ld	$5,%got_page(.LC119)($28)

.L256:
	ld	$25,%call16(strtod)($28)
	daddiu	$5,$sp,64
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$4,$17

	ld	$2,64($sp)
	beq	$2,$17,.L258
	nop

	lb	$2,0($2)
	beq	$2,$0,.L259
	nop

.L258:
	li	$2,1			# 0x1
	sb	$2,72($sp)
.L259:
	b	.L144
	sdc1	$f0,424($19)

.L257:
	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC119)

	beq	$2,$0,.L589
	ld	$5,%got_page(.LC120)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC120)

	beq	$2,$0,.L590
	ld	$5,%got_page(.LC121)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC121)

	beq	$2,$0,.L591
	ld	$5,%got_page(.LC122)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC122)

	beq	$2,$0,.L592
	ld	$5,%got_page(.LC123)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC123)

	beq	$2,$0,.L593
	ld	$5,%got_page(.LC124)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC124)

	beq	$2,$0,.L594
	ld	$5,%got_page(.LC125)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC125)

	beq	$2,$0,.L595
	ld	$5,%got_page(.LC126)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC126)

	beq	$2,$0,.L596
	ld	$5,%got_page(.LC127)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC127)

	beq	$2,$0,.L597
	ld	$5,%got_page(.LC128)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC128)

	beq	$2,$0,.L598
	ld	$5,%got_page(.LC129)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC129)

	beq	$2,$0,.L599
	ld	$5,%got_page(.LC130)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC130)

	beq	$2,$0,.L600
	ld	$5,%got_page(.LC131)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC131)

	beq	$2,$0,.L601
	ld	$5,%got_page(.LC132)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC132)

	beq	$2,$0,.L602
	ld	$5,%got_page(.LC133)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC133)

	beq	$2,$0,.L603
	ld	$5,%got_page(.LC134)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC134)

	beq	$2,$0,.L604
	ld	$5,%got_page(.LC135)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC135)

	bne	$2,$0,.L292
	move	$20,$2

	li	$2,1			# 0x1
	move	$3,$17
	sw	$2,532($19)
.L294:
	lb	$2,0($3)
	daddiu	$3,$3,1
	beq	$2,$0,.L293
	lw	$4,532($19)

	xori	$2,$2,0x2f
	sltu	$2,$2,1
	addu	$2,$2,$4
	b	.L294
	sw	$2,532($19)

.L552:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,328($19)

.L551:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,376($19)

.L550:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,244($19)

.L517:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,324($19)

.L549:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,220($19)

.L548:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,336($19)

.L547:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,316($19)

.L546:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,312($19)

.L545:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,272($19)

.L544:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,248($19)

.L543:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,192($19)

.L542:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,188($19)

.L541:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,268($19)

.L540:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,264($19)

.L539:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,196($19)

.L538:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,200($19)

.L293:
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	dlsa	$4,$4,$4,2
	daddiu	$23,$sp,64
	ld	$22,%got_page(.LC136)($28)
	dsll	$4,$4,2
	move	$16,$0
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	ld	$21,%got_page(.LC137)($28)

	daddiu	$22,$22,%got_ofst(.LC136)
	sd	$2,536($19)
	daddiu	$21,$21,%got_ofst(.LC137)
.L298:
	lw	$2,532($19)
	move	$9,$23
	move	$5,$22
	ld	$25,%call16(sscanf)($28)
	slt	$2,$20,$2
	beq	$2,$0,.L144
	move	$4,$17

	ld	$7,536($19)
	li	$fp,3			# 0x3
	daddu	$7,$7,$16
	move	$6,$7
	daddiu	$8,$7,12
	.reloc	1f,R_MIPS_JALR,sscanf
1:	jalr	$25
	daddiu	$7,$7,4

	move	$9,$23
	ld	$25,%call16(sscanf)($28)
	move	$5,$21
	bne	$2,$fp,.L295
	move	$4,$17

	ld	$2,536($19)
	li	$3,1			# 0x1
	daddu	$2,$2,$16
	sw	$3,8($2)
.L296:
	lw	$2,64($sp)
	addiu	$20,$20,1
	daddiu	$16,$16,20
	daddiu	$2,$2,1
	b	.L298
	daddu	$17,$17,$2

.L292:
	ld	$5,%got_page(.LC138)($28)
	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC138)

	beq	$2,$0,.L605
	ld	$25,%call16(strcmp)($28)

	ld	$5,%got_page(.LC140)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC140)

	beq	$2,$0,.L606
	ld	$5,%got_page(.LC141)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC141)

	beq	$2,$0,.L607
	ld	$5,%got_page(.LC142)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC142)

	beq	$2,$0,.L608
	ld	$5,%got_page(.LC143)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC143)

	beq	$2,$0,.L609
	ld	$5,%got_page(.LC144)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC144)

	beq	$2,$0,.L610
	ld	$5,%got_page(.LC145)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC145)

	beq	$2,$0,.L611
	ld	$5,%got_page(.LC146)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC146)

	beq	$2,$0,.L612
	ld	$5,%got_page(.LC147)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC147)

	bne	$2,$0,.L307
	move	$4,$16

	ld	$5,%got_page(.LC148)($28)
	move	$4,$17
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC148)

	bne	$2,$0,.L308
	ld	$25,%call16(strcmp)($28)

	li	$2,1			# 0x1
	b	.L144
	sw	$2,588($19)

.L295:
	ld	$6,536($19)
	daddu	$6,$6,$16
	daddiu	$8,$6,16
	.reloc	1f,R_MIPS_JALR,sscanf
1:	jalr	$25
	daddiu	$7,$6,4

	bne	$2,$fp,.L297
	li	$2,1			# 0x1

	ld	$2,536($19)
	daddu	$2,$2,$16
	b	.L296
	sw	$0,8($2)

.L308:
	ld	$5,%got_page(.LC149)($28)
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC149)

	bne	$2,$0,.L309
	ld	$25,%call16(strcmp)($28)

	li	$2,1			# 0x1
	sw	$2,588($19)
	b	.L144
	sw	$2,592($19)

.L307:
	ld	$5,%got_page(.LC151)($28)
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC151)

	beq	$2,$0,.L613
	ld	$5,%got_page(.LC152)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC152)

	beq	$2,$0,.L614
	ld	$5,%got_page(.LC153)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC153)

	beq	$2,$0,.L615
	ld	$5,%got_page(.LC154)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC154)

	beq	$2,$0,.L616
	ld	$5,%got_page(.LC155)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC155)

	beq	$2,$0,.L617
	ld	$5,%got_page(.LC156)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC156)

	beq	$2,$0,.L618
	ld	$5,%got_page(.LC157)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC157)

	beq	$2,$0,.L317
	ld	$25,%call16(strcmp)($28)

	ld	$5,%got_page(.LC158)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC158)

	bne	$2,$0,.L318
	ld	$25,%call16(strcmp)($28)

.L317:
	ld	$5,%got_page(.LC159)($28)
	li	$2,1			# 0x1
	daddiu	$9,$19,652
	ld	$25,%call16(sscanf)($28)
	daddiu	$8,$19,644
	daddiu	$7,$19,648
	daddiu	$6,$19,640
	move	$4,$17
	sw	$2,636($19)
	.reloc	1f,R_MIPS_JALR,sscanf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC159)

	lbu	$3,72($sp)
	xori	$2,$2,0x4
	sltu	$2,$0,$2
	or	$2,$2,$3
	b	.L144
	sb	$2,72($sp)

.L618:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	li	$2,1			# 0x1
	daddiu	$5,$sp,72
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	sw	$2,624($19)

	sw	$2,628($19)
	b	.L144
	sw	$2,632($19)

.L617:
	ld	$5,%got_page(_ZL20x265_colmatrix_names)($28)
	li	$2,1			# 0x1
	daddiu	$6,$sp,72
	ld	$25,%got_page(parseName)($28)
	move	$4,$17
	sw	$2,596($19)
	daddiu	$5,$5,%got_ofst(_ZL20x265_colmatrix_names)
	daddiu	$25,$25,%got_ofst(parseName)
	.reloc	1f,R_MIPS_JALR,parseName
1:	jalr	$25
	sw	$2,608($19)

	b	.L144
	sw	$2,620($19)

.L616:
	ld	$5,%got_page(_ZL19x265_transfer_names)($28)
	li	$2,1			# 0x1
	daddiu	$6,$sp,72
	ld	$25,%got_page(parseName)($28)
	move	$4,$17
	sw	$2,596($19)
	daddiu	$5,$5,%got_ofst(_ZL19x265_transfer_names)
	daddiu	$25,$25,%got_ofst(parseName)
	.reloc	1f,R_MIPS_JALR,parseName
1:	jalr	$25
	sw	$2,608($19)

	b	.L144
	sw	$2,616($19)

.L615:
	ld	$5,%got_page(_ZL20x265_colorprim_names)($28)
	li	$2,1			# 0x1
	daddiu	$6,$sp,72
	ld	$25,%got_page(parseName)($28)
	move	$4,$17
	sw	$2,596($19)
	daddiu	$5,$5,%got_ofst(_ZL20x265_colorprim_names)
	daddiu	$25,$25,%got_ofst(parseName)
	.reloc	1f,R_MIPS_JALR,parseName
1:	jalr	$25
	sw	$2,608($19)

	b	.L144
	sw	$2,612($19)

.L614:
	ld	$5,%got_page(_ZL20x265_fullrange_names)($28)
	li	$2,1			# 0x1
	daddiu	$6,$sp,72
	ld	$25,%got_page(parseName)($28)
	move	$4,$17
	sw	$2,596($19)
	daddiu	$25,$25,%got_ofst(parseName)
	.reloc	1f,R_MIPS_JALR,parseName
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(_ZL20x265_fullrange_names)

	b	.L144
	sw	$2,604($19)

.L613:
	ld	$5,%got_page(_ZL23x265_video_format_names)($28)
	li	$2,1			# 0x1
	daddiu	$6,$sp,72
	ld	$25,%got_page(parseName)($28)
	move	$4,$17
	sw	$2,596($19)
	daddiu	$25,$25,%got_ofst(parseName)
	.reloc	1f,R_MIPS_JALR,parseName
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(_ZL23x265_video_format_names)

	b	.L144
	sw	$2,600($19)

.L318:
	ld	$5,%got_page(.LC160)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC160)

	beq	$2,$0,.L619
	ld	$5,%got_page(.LC161)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC161)

	beq	$2,$0,.L620
	ld	$5,%got_page(.LC162)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC162)

	beq	$2,$0,.L621
	move	$20,$2

	ld	$5,%got_page(.LC163)($28)
	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC163)

	beq	$2,$0,.L622
	ld	$5,%got_page(.LC164)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC164)

	beq	$2,$0,.L623
	ld	$5,%got_page(.LC165)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC165)

	beq	$2,$0,.L325
	ld	$5,%got_page(.LC166)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC166)

	bne	$2,$0,.L326
	ld	$5,%got_page(.LC167)($28)

.L325:
	ld	$25,%call16(strdup)($28)
	.reloc	1f,R_MIPS_JALR,strdup
1:	jalr	$25
	move	$4,$17

	b	.L144
	sd	$2,8($19)

.L623:
	ld	$25,%call16(strdup)($28)
	.reloc	1f,R_MIPS_JALR,strdup
1:	jalr	$25
	move	$4,$17

	b	.L144
	sd	$2,232($19)

.L622:
	ld	$25,%call16(strdup)($28)
	.reloc	1f,R_MIPS_JALR,strdup
1:	jalr	$25
	move	$4,$17

	b	.L144
	sd	$2,504($19)

.L621:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	bltz	$2,.L322
	li	$3,3			# 0x3

	slt	$20,$2,3
	movn	$3,$2,$20
	move	$20,$3
.L322:
	andi	$2,$20,0x1
	andi	$20,$20,0x2
	sw	$2,496($19)
	b	.L144
	sw	$20,500($19)

.L620:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,228($19)

.L619:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,224($19)

.L326:
	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC167)

	beq	$2,$0,.L624
	ld	$5,%got_page(.LC168)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC168)

	beq	$2,$0,.L625
	ld	$5,%got_page(.LC169)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC169)

	beq	$2,$0,.L626
	ld	$5,%got_page(.LC170)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC170)

	beq	$2,$0,.L627
	ld	$5,%got_page(.LC171)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC171)

	beq	$2,$0,.L628
	ld	$25,%call16(strcmp)($28)

	ld	$5,%got_page(.LC173)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC173)

	beq	$2,$0,.L629
	ld	$5,%got_page(.LC174)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC174)

	beq	$2,$0,.L630
	ld	$5,%got_page(.LC175)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC175)

	beq	$2,$0,.L631
	ld	$5,%got_page(.LC217)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC217)

	beq	$2,$0,.L632
	ld	$5,%got_page(.LC176)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC176)

	beq	$2,$0,.L633
	ld	$5,%got_page(.LC177)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC177)

	beq	$2,$0,.L634
	ld	$5,%got_page(.LC178)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC178)

	beq	$2,$0,.L635
	ld	$5,%got_page(.LC179)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC179)

	beq	$2,$0,.L636
	ld	$5,%got_page(.LC180)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC180)

	beq	$2,$0,.L637
	ld	$5,%got_page(.LC181)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC181)

	beq	$2,$0,.L638
	ld	$5,%got_page(.LC182)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC182)

	beq	$2,$0,.L639
	ld	$5,%got_page(.LC183)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC183)

	beq	$2,$0,.L640
	ld	$5,%got_page(.LC184)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC184)

	beq	$2,$0,.L641
	ld	$5,%got_page(.LC185)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC185)

	beq	$2,$0,.L642
	ld	$5,%got_page(.LC186)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC186)

	beq	$2,$0,.L643
	ld	$5,%got_page(.LC187)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC187)

	beq	$2,$0,.L644
	ld	$5,%got_page(.LC188)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC188)

	beq	$2,$0,.L645
	ld	$5,%got_page(.LC189)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC189)

	beq	$2,$0,.L646
	ld	$5,%got_page(.LC190)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC190)

	beq	$2,$0,.L647
	ld	$5,%got_page(.LC191)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC191)

	beq	$2,$0,.L648
	ld	$5,%got_page(.LC192)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC192)

	beq	$2,$0,.L649
	ld	$5,%got_page(.LC193)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC193)

	beq	$2,$0,.L650
	ld	$5,%got_page(.LC194)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC194)

	beq	$2,$0,.L651
	ld	$5,%got_page(.LC195)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC195)

	beq	$2,$0,.L652
	ld	$5,%got_page(.LC196)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC196)

	beq	$2,$0,.L653
	ld	$5,%got_page(.LC197)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC197)

	beq	$2,$0,.L654
	ld	$5,%got_page(.LC198)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC198)

	beq	$2,$0,.L655
	ld	$5,%got_page(.LC199)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC199)

	beq	$2,$0,.L656
	ld	$5,%got_page(.LC200)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC200)

	beq	$2,$0,.L657
	ld	$5,%got_page(.LC201)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC201)

	beq	$2,$0,.L658
	ld	$5,%got_page(.LC202)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC202)

	beq	$2,$0,.L659
	ld	$5,%got_page(.LC203)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC203)

	beq	$2,$0,.L660
	ld	$5,%got_page(.LC204)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC204)

	beq	$2,$0,.L661
	ld	$5,%got_page(.LC205)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC205)

	beq	$2,$0,.L662
	ld	$5,%got_page(.LC206)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC206)

	beq	$2,$0,.L663
	ld	$5,%got_page(.LC207)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC207)

	beq	$2,$0,.L664
	ld	$5,%got_page(.LC208)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC208)

	beq	$2,$0,.L665
	ld	$5,%got_page(.LC209)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC209)

	beq	$2,$0,.L666
	ld	$5,%got_page(.LC210)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC210)

	beq	$2,$0,.L667
	ld	$5,%got_page(.LC211)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC211)

	beq	$2,$0,.L668
	ld	$5,%got_page(.LC212)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC212)

	beq	$2,$0,.L669
	ld	$5,%got_page(.LC213)($28)

	move	$4,$16
	ld	$25,%call16(strcmp)($28)
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC213)

	bne	$2,$0,.L383
	ld	$25,%call16(strdup)($28)

	.reloc	1f,R_MIPS_JALR,strdup
1:	jalr	$25
	move	$4,$17

	ld	$5,%got_page(.LC214)($28)
	ld	$25,%call16(strcmp)($28)
	move	$4,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC214)

	bne	$2,$0,.L384
	li	$2,1			# 0x1

	b	.L144
	sw	$2,856($19)

	.align	3
.L632:
	ld	$25,%call16(strdup)($28)
	.reloc	1f,R_MIPS_JALR,strdup
1:	jalr	$25
	move	$4,$17

	b	.L144
	sd	$2,48($19)

	.align	3
.L633:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,44($19)

	.align	3
.L634:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,568($19)

	.align	3
.L635:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,284($19)

	.align	3
.L636:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,672($19)

	.align	3
.L637:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,676($19)

.L638:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,680($19)

.L639:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,684($19)

.L640:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,208($19)

.L641:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,688($19)

.L642:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,692($19)

.L643:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,696($19)

.L644:
	ld	$25,%call16(strtod)($28)
	daddiu	$5,$sp,64
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$4,$17

	ld	$2,64($sp)
	beq	$2,$17,.L348
	nop

	lb	$2,0($2)
	beq	$2,$0,.L349
	nop

.L348:
	li	$2,1			# 0x1
	sb	$2,72($sp)
.L349:
	b	.L144
	sdc1	$f0,704($19)

.L646:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,716($19)

.L645:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,712($19)

.L648:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,724($19)

.L647:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,720($19)

.L650:
	ld	$25,%call16(strtod)($28)
	daddiu	$5,$sp,64
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$4,$17

	ld	$2,64($sp)
	beq	$2,$17,.L356
	nop

	lb	$2,0($2)
	beq	$2,$0,.L357
	nop

.L356:
	li	$2,1			# 0x1
	sb	$2,72($sp)
.L357:
	b	.L144
	sdc1	$f0,736($19)

.L649:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,728($19)

.L652:
	ld	$18,%got_page(x265_atobool)($28)
	daddiu	$16,$sp,72
	move	$4,$17
	daddiu	$18,$18,%got_ofst(x265_atobool)
	move	$25,$18
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$5,$16

	lbu	$3,72($sp)
	bne	$3,$0,.L360
	nop

	beq	$2,$0,.L513
	move	$2,$0

.L360:
	move	$5,$16
	move	$4,$17
	sb	$0,72($sp)
	move	$25,$18
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	sd	$0,344($19)

	b	.L338
	sw	$2,732($19)

.L651:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,752($19)

.L656:
	ld	$25,%call16(strdup)($28)
	.reloc	1f,R_MIPS_JALR,strdup
1:	jalr	$25
	move	$4,$17

	b	.L144
	sd	$2,760($19)

.L655:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,756($19)

.L654:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,748($19)

.L653:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,744($19)

.L631:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,96($19)

.L630:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sh	$2,670($19)

.L629:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sh	$2,668($19)

.L628:
	ld	$5,%got_page(.LC172)($28)
	daddiu	$7,$19,666
	daddiu	$6,$19,664
	ld	$25,%call16(sscanf)($28)
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,sscanf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC172)

	lbu	$3,72($sp)
	xori	$2,$2,0x2
	sltu	$2,$0,$2
	or	$2,$2,$3
	b	.L144
	sb	$2,72($sp)

.L627:
	ld	$25,%call16(strdup)($28)
	.reloc	1f,R_MIPS_JALR,strdup
1:	jalr	$25
	move	$4,$17

	b	.L144
	sd	$2,656($19)

.L626:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,556($19)

.L625:
	ld	$25,%call16(strdup)($28)
	.reloc	1f,R_MIPS_JALR,strdup
1:	jalr	$25
	move	$4,$17

	b	.L144
	sd	$2,368($19)

.L624:
	ld	$25,%call16(strdup)($28)
	.reloc	1f,R_MIPS_JALR,strdup
1:	jalr	$25
	move	$4,$17

	b	.L144
	sd	$2,544($19)

.L664:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,824($19)

.L663:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,792($19)

.L662:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,788($19)

.L661:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,784($19)

.L660:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,780($19)

.L659:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,772($19)

.L658:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,572($19)

.L657:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,768($19)

.L604:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,560($19)

.L603:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	sw	$2,396($19)
	li	$2,1			# 0x1
	b	.L144
	sw	$2,392($19)

.L602:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	sw	$0,392($19)
	b	.L144
	sw	$2,400($19)

.L601:
	ld	$25,%call16(strtod)($28)
	daddiu	$5,$sp,64
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$4,$17

	ld	$2,64($sp)
	beq	$2,$17,.L287
	nop

	lb	$2,0($2)
	beq	$2,$0,.L685
	li	$2,2			# 0x2

.L287:
	li	$2,1			# 0x1
	sb	$2,72($sp)
	li	$2,2			# 0x2
.L685:
	sdc1	$f0,432($19)
	b	.L144
	sw	$2,392($19)

.L600:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,564($19)

.L599:
	ld	$25,%call16(strtod)($28)
	daddiu	$5,$sp,64
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$4,$17

	ld	$2,64($sp)
	beq	$2,$17,.L283
	nop

	lb	$2,0($2)
	beq	$2,$0,.L284
	nop

.L283:
	li	$2,1			# 0x1
	sb	$2,72($sp)
.L284:
	b	.L144
	sdc1	$f0,488($19)

.L598:
	ld	$25,%call16(strtod)($28)
	daddiu	$5,$sp,64
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$4,$17

	ld	$2,64($sp)
	beq	$2,$17,.L280
	nop

	lb	$2,0($2)
	beq	$2,$0,.L281
	nop

.L280:
	li	$2,1			# 0x1
	sb	$2,72($sp)
.L281:
	b	.L144
	sdc1	$f0,480($19)

.L597:
	ld	$25,%call16(strtod)($28)
	daddiu	$5,$sp,64
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$4,$17

	ld	$2,64($sp)
	beq	$2,$17,.L277
	nop

	lb	$2,0($2)
	beq	$2,$0,.L278
	nop

.L277:
	li	$2,1			# 0x1
	sb	$2,72($sp)
.L278:
	b	.L144
	sdc1	$f0,464($19)

.L596:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,460($19)

.L595:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,456($19)

.L594:
	ld	$25,%call16(strtod)($28)
	daddiu	$5,$sp,64
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$4,$17

	ld	$2,64($sp)
	beq	$2,$17,.L272
	nop

	lb	$2,0($2)
	beq	$2,$0,.L273
	nop

.L272:
	li	$2,1			# 0x1
	sb	$2,72($sp)
.L273:
	b	.L144
	sdc1	$f0,448($19)

.L593:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,444($19)

.L592:
	ld	$25,%call16(strtod)($28)
	daddiu	$5,$sp,64
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$4,$17

	ld	$2,64($sp)
	beq	$2,$17,.L268
	nop

	lb	$2,0($2)
	beq	$2,$0,.L269
	nop

.L268:
	li	$2,1			# 0x1
	sb	$2,72($sp)
.L269:
	b	.L144
	sdc1	$f0,512($19)

.L590:
	ld	$25,%got_disp(_ZN4x2659x265_atoiEPKcRb)($28)
	daddiu	$5,$sp,72
	.reloc	1f,R_MIPS_JALR,_ZN4x2659x265_atoiEPKcRb
1:	jalr	$25
	move	$4,$17

	b	.L144
	sw	$2,440($19)

.L591:
	ld	$25,%call16(strtod)($28)
	daddiu	$5,$sp,64
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$4,$17

	ld	$2,64($sp)
	beq	$2,$17,.L265
	nop

	lb	$2,0($2)
	beq	$2,$0,.L266
	nop

.L265:
	li	$2,1			# 0x1
	sb	$2,72($sp)
.L266:
	b	.L144
	sdc1	$f0,520($19)

.L589:
	ld	$25,%call16(strtod)($28)
	daddiu	$5,$sp,64
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$4,$17

	ld	$2,64($sp)
	beq	$2,$17,.L261
	nop

	lb	$2,0($2)
	beq	$2,$0,.L262
	nop

.L261:
	li	$2,1			# 0x1
	sb	$2,72($sp)
.L262:
	b	.L144
	sdc1	$f0,408($19)

.L612:
	ld	$5,%got_page(_ZL14x265_sar_names)($28)
	daddiu	$6,$sp,72
	move	$4,$17
	ld	$25,%got_page(parseName)($28)
	daddiu	$25,$25,%got_ofst(parseName)
	.reloc	1f,R_MIPS_JALR,parseName
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(_ZL14x265_sar_names)

	lbu	$3,72($sp)
	beq	$3,$0,.L144
	sw	$2,576($19)

	ld	$5,%got_page(.LC105)($28)
	li	$2,255			# 0xff
	daddiu	$7,$19,584
	ld	$25,%call16(sscanf)($28)
	daddiu	$6,$19,580
	move	$4,$17
	sw	$2,576($19)
	.reloc	1f,R_MIPS_JALR,sscanf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC105)

	xori	$2,$2,0x2
	sltu	$2,$0,$2
	b	.L144
	sb	$2,72($sp)

.L611:
	ld	$5,%got_page(_ZL19x265_analysis_names)($28)
	daddiu	$6,$sp,72
	move	$4,$17
	ld	$25,%got_page(parseName)($28)
	daddiu	$25,$25,%got_ofst(parseName)
	.reloc	1f,R_MIPS_JALR,parseName
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(_ZL19x265_analysis_names)

	b	.L144
	sw	$2,364($19)

.L610:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	sw	$2,552($19)
	ld	$2,%got_page(.LC17)($28)
	ldc1	$f0,%got_ofst(.LC17)($2)
	b	.L338
	sdc1	$f0,424($19)

.L609:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,528($19)

.L608:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,472($19)

.L607:
	ld	$5,%got_page(_ZL21x265_motion_est_names)($28)
	daddiu	$6,$sp,72
	move	$4,$17
	ld	$25,%got_page(parseName)($28)
	daddiu	$25,$25,%got_ofst(parseName)
	.reloc	1f,R_MIPS_JALR,parseName
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(_ZL21x265_motion_est_names)

	b	.L144
	sw	$2,260($19)

.L606:
	ld	$5,%got_page(_ZL21x265_source_csp_names)($28)
	daddiu	$6,$sp,72
	move	$4,$17
	ld	$25,%got_page(parseName)($28)
	daddiu	$25,$25,%got_ofst(parseName)
	.reloc	1f,R_MIPS_JALR,parseName
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(_ZL21x265_source_csp_names)

	b	.L144
	sw	$2,60($19)

.L605:
	ld	$5,%got_page(.LC139)($28)
	daddiu	$7,$19,76
	daddiu	$6,$19,72
	ld	$25,%call16(sscanf)($28)
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,sscanf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC139)

	lbu	$3,72($sp)
	xori	$2,$2,0x2
	sltu	$2,$0,$2
	or	$2,$2,$3
	b	.L144
	sb	$2,72($sp)

.L297:
	b	.L144
	sb	$2,72($sp)

.L309:
	ld	$5,%got_page(.LC150)($28)
	move	$4,$17
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC150)

	bne	$2,$0,.L686
	li	$2,1			# 0x1

	b	.L144
	sw	$0,588($19)

.L384:
	ld	$25,%call16(strdup)($28)
	.reloc	1f,R_MIPS_JALR,strdup
1:	jalr	$25
	move	$4,$17

	ld	$5,%got_page(.LC215)($28)
	ld	$25,%call16(strcmp)($28)
	move	$4,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC215)

	bne	$2,$0,.L310
	li	$2,1			# 0x1

	b	.L144
	sw	$0,856($19)

.L669:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,860($19)

.L310:
.L686:
	b	.L144
	sb	$2,72($sp)

.L668:
	ld	$25,%call16(strtod)($28)
	daddiu	$5,$sp,64
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$4,$17

	ld	$2,64($sp)
	beq	$2,$17,.L380
	nop

	lb	$2,0($2)
	beq	$2,$0,.L381
	nop

.L380:
	li	$2,1			# 0x1
	sb	$2,72($sp)
.L381:
	b	.L144
	sdc1	$f0,848($19)

.L666:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,836($19)

.L667:
	ld	$25,%call16(strtod)($28)
	daddiu	$5,$sp,64
	.reloc	1f,R_MIPS_JALR,strtod
1:	jalr	$25
	move	$4,$17

	ld	$2,64($sp)
	beq	$2,$17,.L377
	nop

	lb	$2,0($2)
	beq	$2,$0,.L378
	nop

.L377:
	li	$2,1			# 0x1
	sb	$2,72($sp)
.L378:
	b	.L144
	sdc1	$f0,840($19)

.L665:
	ld	$25,%got_page(x265_atobool)($28)
	daddiu	$5,$sp,72
	daddiu	$25,$25,%got_ofst(x265_atobool)
	.reloc	1f,R_MIPS_JALR,x265_atobool
1:	jalr	$25
	move	$4,$17

	b	.L338
	sw	$2,828($19)

	.set	macro
	.set	reorder
	.end	x265_param_parse
	.size	x265_param_parse, .-x265_param_parse
	.align	2
	.align	3
	.globl	_ZN4x26519setParamAspectRatioEP10x265_paramii
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26519setParamAspectRatioEP10x265_paramii
	.type	_ZN4x26519setParamAspectRatioEP10x265_paramii, @function
_ZN4x26519setParamAspectRatioEP10x265_paramii:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$9,%hi(%neg(%gp_rel(_ZN4x26519setParamAspectRatioEP10x265_paramii)))
	li	$2,255			# 0xff
	sw	$6,584($4)
	daddu	$9,$9,$25
	sw	$2,576($4)
	li	$7,1			# 0x1
	daddiu	$9,$9,%lo(%neg(%gp_rel(_ZN4x26519setParamAspectRatioEP10x265_paramii)))
	move	$3,$0
	sw	$5,580($4)
	ld	$2,%got_page(_ZN4x265L11fixedRatiosE+4)($9)
	li	$8,16			# 0x10
	b	.L690
	daddiu	$2,$2,%got_ofst(_ZN4x265L11fixedRatiosE+4)

	.align	3
.L688:
	daddiu	$3,$3,1
	.align	3
.L692:
	beq	$3,$8,.L693
	daddiu	$2,$2,8

	lw	$7,-4($2)
.L690:
	bne	$5,$7,.L688
	nop

	lw	$7,0($2)
	bne	$7,$6,.L692
	daddiu	$3,$3,1

	daddiu	$3,$3,-1
	sll	$3,$3,0
	addiu	$3,$3,1
	jr	$31
	sw	$3,576($4)

.L693:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x26519setParamAspectRatioEP10x265_paramii
	.size	_ZN4x26519setParamAspectRatioEP10x265_paramii, .-_ZN4x26519setParamAspectRatioEP10x265_paramii
	.align	2
	.align	3
	.globl	_ZN4x26519getParamAspectRatioEP10x265_paramRiS2_
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26519getParamAspectRatioEP10x265_paramRiS2_
	.type	_ZN4x26519getParamAspectRatioEP10x265_paramRiS2_, @function
_ZN4x26519getParamAspectRatioEP10x265_paramRiS2_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,576($4)
	lui	$7,%hi(%neg(%gp_rel(_ZN4x26519getParamAspectRatioEP10x265_paramRiS2_)))
	daddu	$7,$7,$25
	beq	$2,$0,.L698
	daddiu	$7,$7,%lo(%neg(%gp_rel(_ZN4x26519getParamAspectRatioEP10x265_paramRiS2_)))

	sltu	$3,$2,17
	bne	$3,$0,.L700
	li	$3,255			# 0xff

	beq	$2,$3,.L701
	nop

.L698:
	sw	$0,0($6)
	jr	$31
	sw	$0,0($5)

	.align	3
.L700:
	ld	$3,%got_page(_ZN4x265L11fixedRatiosE)($7)
	addiu	$2,$2,-1
	daddiu	$3,$3,%got_ofst(_ZN4x265L11fixedRatiosE)
	dlsa	$2,$2,$3,3
	lw	$2,0($2)
	sw	$2,0($5)
	lw	$2,576($4)
	addiu	$2,$2,-1
	dlsa	$2,$2,$3,3
	lw	$2,4($2)
	jr	$31
	sw	$2,0($6)

	.align	3
.L701:
	lw	$2,580($4)
	sw	$2,0($5)
	lw	$2,584($4)
	jr	$31
	sw	$2,0($6)

	.set	macro
	.set	reorder
	.end	_ZN4x26519getParamAspectRatioEP10x265_paramRiS2_
	.size	_ZN4x26519getParamAspectRatioEP10x265_paramRiS2_, .-_ZN4x26519getParamAspectRatioEP10x265_paramRiS2_
	.section	.rodata.str1.8
	.align	3
.LC218:
	.ascii	"uhd-bd: bit depth, chroma subsample, source picture type"
	.ascii	" must be 10, 4:2:0, progressive\000"
	.align	3
.LC219:
	.ascii	"%s\012\000"
	.align	3
.LC220:
	.ascii	"max cu size must be 16, 32, or 64\000"
	.align	3
.LC221:
	.ascii	"Multiple-Slices mode must be enable Wavefront Parallel P"
	.ascii	"rocessing (--wpp)\000"
	.align	3
.LC222:
	.ascii	"internalBitDepth must match compiled bit depth\000"
	.align	3
.LC223:
	.ascii	"minimim CU size must be 8, 16 or 32\000"
	.align	3
.LC224:
	.ascii	"min CU size must be less than or equal to max CU size\000"
	.align	3
.LC225:
	.ascii	"QP exceeds supported range (-QpBDOffsety to 51)\000"
	.align	3
.LC226:
	.ascii	"Frame rate numerator and denominator must be specified\000"
	.align	3
.LC227:
	.ascii	"Interlace mode must be 0 (progressive) 1 (top-field firs"
	.ascii	"t) or 2 (bottom field first)\000"
	.align	3
.LC228:
	.ascii	"Search method is not supported value (0:DIA 1:HEX 2:UMH "
	.ascii	"3:HM 4:SEA 5:FULL)\000"
	.align	3
.LC229:
	.ascii	"Search Range must be more than 0\000"
	.align	3
.LC230:
	.ascii	"Search Range must be less than 32768\000"
	.align	3
.LC231:
	.ascii	"subme must be less than or equal to X265_MAX_SUBPEL_LEVE"
	.ascii	"L (7)\000"
	.align	3
.LC232:
	.ascii	"subme must be greater than or equal to 0\000"
	.align	3
.LC233:
	.ascii	"limitReferences must be 0, 1, 2 or 3\000"
	.align	3
.LC234:
	.ascii	"limitRectAmp must be 0, 1\000"
	.align	3
.LC235:
	.ascii	"frameNumThreads (--frame-threads) must be [0 .. X265_MAX"
	.ascii	"_FRAME_THREADS)\000"
	.align	3
.LC236:
	.ascii	"Min. Chroma Cb QP Offset is -12\000"
	.align	3
.LC237:
	.ascii	"Max. Chroma Cb QP Offset is  12\000"
	.align	3
.LC238:
	.ascii	"Min. Chroma Cr QP Offset is -12\000"
	.align	3
.LC239:
	.ascii	"Max. Chroma Cr QP Offset is  12\000"
	.align	3
.LC240:
	.ascii	"QuadtreeTULog2MaxSize must be log2(maxCUSize) or smaller"
	.ascii	".\000"
	.align	3
.LC241:
	.ascii	"QuadtreeTUMaxDepthInter must be greater than 0 and less "
	.ascii	"than 5\000"
	.align	3
.LC242:
	.ascii	"QuadtreeTUMaxDepthInter must be less than or equal to th"
	.ascii	"e difference between log2(maxCUSize) and QuadtreeTULog2M"
	.ascii	"inSize plus 1\000"
	.align	3
.LC243:
	.ascii	"QuadtreeTUMaxDepthIntra must be greater 0 and less than "
	.ascii	"5\000"
	.align	3
.LC244:
	.ascii	"max TU size must be 4, 8, 16, or 32\000"
	.align	3
.LC245:
	.ascii	"Invalid limit-tu option, limit-TU must be between 0 and "
	.ascii	"4\000"
	.align	3
.LC246:
	.ascii	"MaxNumMergeCand must be 1 or greater.\000"
	.align	3
.LC247:
	.ascii	"MaxNumMergeCand must be 5 or smaller.\000"
	.align	3
.LC248:
	.ascii	"maxNumReferences must be 1 or greater.\000"
	.align	3
.LC249:
	.ascii	"maxNumReferences must be 16 or smaller.\000"
	.align	3
.LC250:
	.ascii	"Picture size must be at least one CTU\000"
	.align	3
.LC251:
	.ascii	"chroma subsampling must be i400 (4:0:0 monochrome), i420"
	.ascii	" (4:2:0 default), i422 (4:2:0), i444 (4:4:4)\000"
	.align	3
.LC252:
	.ascii	"Picture width must be an integer multiple of the specifi"
	.ascii	"ed chroma subsampling\000"
	.align	3
.LC253:
	.ascii	"Picture height must be an integer multiple of the specif"
	.ascii	"ied chroma subsampling\000"
	.align	3
.LC254:
	.ascii	"Rate control mode is out of range\000"
	.align	3
.LC255:
	.ascii	"RD Level is out of range\000"
	.align	3
.LC256:
	.ascii	"RDOQ Level is out of range\000"
	.align	3
.LC257:
	.ascii	"Dynamic RD strength must be between 0 and 4\000"
	.align	3
.LC258:
	.ascii	"Lookahead depth must be greater than the max consecutive"
	.ascii	" bframe count\000"
	.align	3
.LC259:
	.ascii	"bframe count should be greater than zero\000"
	.align	3
.LC260:
	.ascii	"max consecutive bframe count must be 16 or smaller\000"
	.align	3
.LC261:
	.ascii	"Lookahead depth must be less than 256\000"
	.align	3
.LC262:
	.ascii	"Lookahead slices must between 0 and 16\000"
	.align	3
.LC263:
	.ascii	"Aq-Mode is out of range\000"
	.align	3
.LC265:
	.ascii	"Aq-Strength is out of range\000"
	.align	3
.LC266:
	.ascii	"deblocking filter tC offset must be in the range of -6 t"
	.ascii	"o +6\000"
	.align	3
.LC267:
	.ascii	"deblocking filter Beta offset must be in the range of -6"
	.ascii	" to +6\000"
	.align	3
.LC268:
	.ascii	"Psy-rd strength must be between 0 and 5.0\000"
	.align	3
.LC270:
	.ascii	"Psy-rdoq strength must be between 0 and 50.0\000"
	.align	3
.LC271:
	.ascii	"WaveFrontSynchro cannot be negative\000"
	.align	3
.LC272:
	.ascii	"Sample Aspect Ratio must be 0-16 or 255\000"
	.align	3
.LC273:
	.ascii	"Sample Aspect Ratio width must be greater than 0\000"
	.align	3
.LC274:
	.ascii	"Sample Aspect Ratio height must be greater than 0\000"
	.align	3
.LC275:
	.ascii	"Video Format must be component, pal, ntsc, secam, mac or"
	.ascii	" undef\000"
	.align	3
.LC276:
	.ascii	"Color Primaries must be undef, bt709, bt470m, bt470bg, s"
	.ascii	"mpte170m, smpte240m, film, bt2020, smpte-st-428, smpte-r"
	.ascii	"p-431 or smpte-eg-432\000"
	.align	3
.LC277:
	.ascii	"Transfer Characteristics must be undef, bt709, bt470m, b"
	.ascii	"t470bg, smpte170m, smpte240m, linear, log100, log316, ie"
	.ascii	"c61966-2-4, bt1361e, iec61966-2-1, bt2020-10, bt2020-12,"
	.ascii	" smpte-st-2084, smpte-st-428 or arib-std-b67\000"
	.align	3
.LC278:
	.ascii	"Matrix Coefficients must be undef, bt709, fcc, bt470bg, "
	.ascii	"smpte170m, smpte240m, GBR, YCgCo, bt2020nc, bt2020c, smp"
	.ascii	"te-st-2085, chroma-nc, chroma-c or ictcp\000"
	.align	3
.LC279:
	.ascii	"Chroma Sample Location Type Top Field must be 0-5\000"
	.align	3
.LC280:
	.ascii	"Chroma Sample Location Type Bottom Field must be 0-5\000"
	.align	3
.LC281:
	.ascii	"Default Display Window Left Offset must be 0 or greater\000"
	.align	3
.LC282:
	.ascii	"Default Display Window Right Offset must be 0 or greater"
	.ascii	"\000"
	.align	3
.LC283:
	.ascii	"Default Display Window Top Offset must be 0 or greater\000"
	.align	3
.LC284:
	.ascii	"Default Display Window Bottom Offset must be 0 or greate"
	.ascii	"r\000"
	.align	3
.LC286:
	.ascii	"Valid quality based range: -qpBDOffsetY to 51\000"
	.align	3
.LC287:
	.ascii	"Valid adaptive b scheduling values 0 - none, 1 - fast, 2"
	.ascii	" - full\000"
	.align	3
.LC288:
	.ascii	"Valid Logging level -1:none 0:error 1:warning 2:info 3:d"
	.ascii	"ebug 4:full\000"
	.align	3
.LC289:
	.ascii	"scenecutThreshold must be greater than 0\000"
	.align	3
.LC291:
	.ascii	"scenecut-bias must be between 0 and 100\000"
	.align	3
.LC292:
	.ascii	"Valid penalty for 32x32 intra TU in non-I slices. 0:disa"
	.ascii	"bled 1:RD-penalty 2:maximum\000"
	.align	3
.LC293:
	.ascii	"Invalid max IDR period in frames. value should be greate"
	.ascii	"r than -1\000"
	.align	3
.LC294:
	.ascii	"Invalid hash option. Decoded Picture Hash SEI 0: disable"
	.ascii	"d, 1: MD5, 2: CRC, 3: Checksum\000"
	.align	3
.LC295:
	.ascii	"Size of the vbv buffer can not be less than zero\000"
	.align	3
.LC296:
	.ascii	"Maximum local bit rate can not be less than zero\000"
	.align	3
.LC297:
	.ascii	"Valid initial VBV buffer occupancy must be a fraction 0 "
	.ascii	"- 1, or size in kbits\000"
	.align	3
.LC298:
	.ascii	"Valid final VBV buffer emptiness must be a fraction 0 - "
	.ascii	"1, or size in kbits\000"
	.align	3
.LC299:
	.ascii	"Valid vbv-end-fr-adj must be a fraction 0 - 1\000"
	.align	3
.LC300:
	.ascii	"vbv-end-fr-adj cannot be enabled when total number of fr"
	.ascii	"ames is unknown\000"
	.align	3
.LC301:
	.ascii	"Target bitrate can not be less than zero\000"
	.align	3
.LC302:
	.ascii	"qCompress must be between 0.5 and 1.0\000"
	.align	3
.LC303:
	.ascii	"Valid noise reduction range 0 - 2000\000"
	.align	3
.LC304:
	.ascii	"Constant QP is incompatible with 2pass\000"
	.align	3
.LC305:
	.ascii	"Strict-cbr cannot be applied without specifying target b"
	.ascii	"itrate or vbv bufsize\000"
	.align	3
.LC306:
	.ascii	"Invalid analysis mode. Analysis mode 0: OFF 1: SAVE : 2 "
	.ascii	"LOAD\000"
	.align	3
.LC307:
	.ascii	"Invalid analysis refine level. Value must be between 1 a"
	.ascii	"nd 10 (inclusive)\000"
	.align	3
.LC308:
	.ascii	"Invalid scale-factor. Supports factor <= 2\000"
	.align	3
.LC309:
	.ascii	"qpmax exceeds supported range (0 to 69)\000"
	.align	3
.LC310:
	.ascii	"qpmin exceeds supported range (0 to 69)\000"
	.align	3
.LC311:
	.ascii	"Supported range for log2MaxPocLsb is 4 to 16\000"
	.align	3
.LC312:
	.ascii	"Supported values for bCTUInfo are 0, 1, 2, 4, 6\000"
	.align	3
.LC313:
	.ascii	"Invalid refine-inter value, refine-inter levels 0 to 3 s"
	.ascii	"upported\000"
	.align	3
.LC314:
	.ascii	"Invalid refine-intra value, refine-intra levels 0 to 3 s"
	.ascii	"upported\000"
	.align	3
.LC315:
	.ascii	"SEA motion search does not support resolutions greater t"
	.ascii	"han 480p in 32 bit build\000"
	.text
	.align	2
	.align	3
	.globl	_ZN4x26517x265_check_paramsEP10x265_param
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26517x265_check_paramsEP10x265_param
	.type	_ZN4x26517x265_check_paramsEP10x265_param, @function
_ZN4x26517x265_check_paramsEP10x265_param:
	.frame	$sp,64,$31		# vars= 16, regs= 6/0, args= 0, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-64
	lw	$2,96($4)
	li	$3,1			# 0x1
	sd	$28,48($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26517x265_check_paramsEP10x265_param)))
	daddu	$28,$28,$25
	sd	$16,16($sp)
	move	$16,$4
	sd	$31,56($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26517x265_check_paramsEP10x265_param)))
	sd	$19,40($sp)
	sd	$18,32($sp)
	beq	$2,$3,.L890
	sd	$17,24($sp)

	lw	$2,180($4)
	li	$4,-33			# 0xffffffffffffffdf
	addiu	$3,$2,-32
	and	$3,$3,$4
	beq	$3,$0,.L706
	li	$3,16			# 0x10

	bne	$2,$3,.L891
	ld	$18,%got_page(.LC219)($28)

.L706:
	ld	$4,%got_disp(_ZN4x26510g_log2SizeE)($28)
	dext	$2,$2,0,32
	lw	$3,684($16)
	daddu	$2,$4,$2
	lbu	$18,0($2)
	sltu	$2,$3,2
	li	$3,5			# 0x5
	sltu	$19,$18,6
	movn	$3,$18,$19
	bne	$2,$0,.L836
	move	$19,$3

	lw	$2,16($16)
	beq	$2,$0,.L892
	move	$17,$0

.L707:
	lw	$3,56($16)
.L988:
	li	$2,8			# 0x8
	beq	$3,$2,.L708
	ld	$8,%got_page(.LC222)($28)

	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC222)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

.L708:
	lw	$3,184($16)
	li	$2,32			# 0x20
	beq	$3,$2,.L709
	addiu	$2,$3,-8

	li	$4,-9			# 0xfffffffffffffff7
	and	$2,$2,$4
	bne	$2,$0,.L893
	ld	$8,%got_page(.LC223)($28)

.L709:
	lw	$2,180($16)
	sltu	$2,$2,$3
	bne	$2,$0,.L894
	ld	$8,%got_page(.LC224)($28)

	lw	$2,56($16)
.L976:
	lw	$3,396($16)
	addiu	$2,$2,-8
	sll	$4,$2,2
	subu	$2,$2,$4
	sll	$2,$2,1
	slt	$2,$3,$2
	bne	$2,$0,.L711
	slt	$3,$3,52

	bne	$3,$0,.L712
	nop

.L711:
	ld	$8,%got_page(.LC225)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC225)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

.L712:
	lw	$2,64($16)
	beq	$2,$0,.L989
	ld	$8,%got_page(.LC226)($28)

	lw	$2,68($16)
	bne	$2,$0,.L714
	nop

.L989:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC226)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

.L714:
	lw	$2,80($16)
	sltu	$2,$2,3
	beq	$2,$0,.L895
	ld	$8,%got_page(.LC227)($28)

	lw	$2,260($16)
	sltu	$2,$2,6
	beq	$2,$0,.L990
	ld	$8,%got_page(.LC228)($28)

.L716:
	lw	$2,268($16)
	bltz	$2,.L991
	ld	$8,%got_page(.LC229)($28)

	li	$3,32768			# 0x8000
.L1004:
	slt	$2,$2,$3
	beq	$2,$0,.L992
	ld	$8,%got_page(.LC230)($28)

.L718:
	lw	$2,264($16)
	slt	$3,$2,8
	beq	$3,$0,.L993
	ld	$8,%got_page(.LC231)($28)

.L719:
	bltz	$2,.L994
	ld	$8,%got_page(.LC232)($28)

.L720:
	lw	$2,252($16)
	sltu	$2,$2,4
	beq	$2,$0,.L995
	ld	$8,%got_page(.LC233)($28)

.L721:
	lw	$2,256($16)
.L975:
	sltu	$2,$2,2
	bne	$2,$0,.L722
	ld	$8,%got_page(.LC234)($28)

	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC234)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

.L722:
	lw	$2,4($16)
	sltu	$2,$2,17
	beq	$2,$0,.L902
	ld	$8,%got_page(.LC235)($28)

	lw	$2,380($16)
.L982:
	slt	$3,$2,-12
	bne	$3,$0,.L903
	ld	$8,%got_page(.LC236)($28)

.L724:
	slt	$2,$2,13
	beq	$2,$0,.L904
	ld	$8,%got_page(.LC237)($28)

	lw	$2,384($16)
.L981:
	slt	$3,$2,-12
	bne	$3,$0,.L905
	ld	$8,%got_page(.LC238)($28)

.L726:
	slt	$2,$2,13
	beq	$2,$0,.L906
	ld	$8,%got_page(.LC239)($28)

	sltu	$19,$18,$19
.L980:
	bne	$19,$0,.L907
	ld	$8,%got_page(.LC240)($28)

	lw	$2,200($16)
.L979:
	addiu	$3,$2,-1
	sltu	$3,$3,4
	beq	$3,$0,.L908
	ld	$8,%got_page(.LC241)($28)

.L729:
	addiu	$2,$2,1
	sltu	$2,$18,$2
	bne	$2,$0,.L909
	ld	$8,%got_page(.LC242)($28)

	lw	$2,204($16)
.L978:
	addiu	$3,$2,-1
	sltu	$3,$3,4
	beq	$3,$0,.L910
	ld	$8,%got_page(.LC243)($28)

.L731:
	addiu	$2,$2,1
	sltu	$18,$18,$2
	bne	$18,$0,.L911
	ld	$8,%got_page(.LC242)($28)

	lw	$3,196($16)
.L977:
	li	$4,-17			# 0xffffffffffffffef
	addiu	$2,$3,-16
	and	$2,$2,$4
	beq	$2,$0,.L733
	addiu	$3,$3,-4

	li	$2,-5			# 0xfffffffffffffffb
	and	$3,$3,$2
	bne	$3,$0,.L912
	ld	$8,%got_page(.LC244)($28)

.L733:
	lw	$2,208($16)
.L985:
	sltu	$2,$2,5
	beq	$2,$0,.L913
	ld	$8,%got_page(.LC245)($28)

	lw	$2,248($16)
.L974:
	beq	$2,$0,.L914
	ld	$8,%got_page(.LC246)($28)

.L735:
	sltu	$2,$2,6
	beq	$2,$0,.L915
	ld	$8,%got_page(.LC247)($28)

	lw	$2,100($16)
	blez	$2,.L996
	ld	$8,%got_page(.LC248)($28)

.L737:
	slt	$2,$2,17
	beq	$2,$0,.L917
	ld	$8,%got_page(.LC249)($28)

	lw	$3,180($16)
.L973:
	lw	$2,72($16)
	slt	$2,$2,$3
	bne	$2,$0,.L997
	ld	$8,%got_page(.LC250)($28)

	lw	$2,76($16)
	slt	$2,$2,$3
	beq	$2,$0,.L740
	nop

.L997:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC250)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

.L740:
	lw	$2,60($16)
	sltu	$4,$2,4
	beq	$4,$0,.L918
	move	$3,$2

.L741:
	lw	$4,72($16)
	addiu	$18,$3,-1
	sltu	$18,$18,2
	and	$18,$18,$4
	bne	$18,$0,.L919
	ld	$8,%got_page(.LC252)($28)

	lw	$3,76($16)
	xori	$18,$2,0x1
	sltu	$18,$18,1
	and	$18,$18,$3
	bne	$18,$0,.L998
	ld	$8,%got_page(.LC253)($28)

.L743:
	lw	$2,392($16)
	sltu	$2,$2,3
	beq	$2,$0,.L999
	ld	$8,%got_page(.LC254)($28)

.L744:
	lw	$2,308($16)
	addiu	$2,$2,-1
	sltu	$2,$2,6
	beq	$2,$0,.L1000
	ld	$8,%got_page(.LC255)($28)

.L745:
	lw	$2,212($16)
	sltu	$2,$2,3
	beq	$2,$0,.L1001
	ld	$8,%got_page(.LC256)($28)

.L746:
	dmtc1	$0,$f1
.L972:
	ldc1	$f0,736($16)
	c.lt.d	$fcc0,$f0,$f1
	bc1t	$fcc0,.L747
	ld	$2,%got_page(.LC29)($28)

	ldc1	$f1,%got_ofst(.LC29)($2)
	c.lt.d	$fcc1,$f1,$f0
	bc1f	$fcc1,.L748
	nop

.L747:
	ld	$8,%got_page(.LC257)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC257)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

.L748:
	lw	$3,148($16)
	beq	$3,$0,.L750
	nop

	lw	$2,164($16)
	slt	$2,$3,$2
	bne	$2,$0,.L751
	nop

	lw	$2,500($16)
	bne	$2,$0,.L751
	ld	$8,%got_page(.LC258)($28)

	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC258)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,148($16)
	.align	3
.L751:
	bltz	$3,.L924
	move	$2,$0

.L752:
	slt	$3,$3,17
	bne	$3,$0,.L750
	or	$17,$2,$17

	ld	$8,%got_page(.LC260)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC260)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

.L750:
	lw	$2,164($16)
	slt	$2,$2,251
	beq	$2,$0,.L925
	ld	$8,%got_page(.LC261)($28)

	lw	$2,168($16)
.L971:
	sltu	$2,$2,17
	beq	$2,$0,.L926
	nop

	lw	$2,444($16)
	sltu	$2,$2,4
	beq	$2,$0,.L927
	nop

.L755:
	dmtc1	$0,$f1
.L970:
	ldc1	$f0,448($16)
	c.lt.d	$fcc2,$f0,$f1
	bc1t	$fcc2,.L756
	ld	$2,%got_page(.LC264)($28)

	ldc1	$f1,%got_ofst(.LC264)($2)
	c.lt.d	$fcc3,$f1,$f0
	bc1f	$fcc3,.L757
	nop

.L756:
	ld	$8,%got_page(.LC265)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC265)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

.L757:
	lw	$2,292($16)
	addiu	$2,$2,6
	sltu	$2,$2,13
	beq	$2,$0,.L928
	nop

	lw	$2,296($16)
.L969:
	addiu	$2,$2,6
	sltu	$2,$2,13
	beq	$2,$0,.L929
	nop

	dmtc1	$0,$f1
.L968:
	ldc1	$f0,344($16)
	c.lt.d	$fcc4,$f0,$f1
	bc1t	$fcc4,.L761
	ld	$2,%got_page(.LC9)($28)

	ldc1	$f1,%got_ofst(.LC9)($2)
	c.lt.d	$fcc5,$f1,$f0
	bc1f	$fcc5,.L1002
	dmtc1	$0,$f1

.L761:
	ld	$8,%got_page(.LC268)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC268)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	dmtc1	$0,$f1
.L1002:
	ldc1	$f0,352($16)
	c.lt.d	$fcc6,$f0,$f1
	bc1t	$fcc6,.L764
	ld	$2,%got_page(.LC269)($28)

	ldc1	$f1,%got_ofst(.LC269)($2)
	c.lt.d	$fcc7,$f1,$f0
	bc1f	$fcc7,.L765
	nop

.L764:
	ld	$8,%got_page(.LC270)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC270)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

.L765:
	lw	$2,16($16)
	bltz	$2,.L930
	nop

	lw	$2,576($16)
.L987:
	sltu	$3,$2,17
	bne	$3,$0,.L768
	move	$18,$0

	li	$19,255			# 0xff
	bne	$2,$19,.L931
	nop

	lw	$2,580($16)
.L984:
	blez	$2,.L932
	nop

.L770:
	lw	$2,584($16)
	blez	$2,.L933
	move	$18,$0

.L768:
	lw	$3,600($16)
.L986:
	sltu	$3,$3,6
	beq	$3,$0,.L934
	or	$2,$18,$17

.L771:
	lw	$3,612($16)
	sltu	$4,$3,13
	beq	$4,$0,.L772
	li	$4,3			# 0x3

	beq	$3,$4,.L772
	nop

.L773:
	lw	$3,616($16)
	sltu	$4,$3,19
	beq	$4,$0,.L774
	li	$4,3			# 0x3

	beq	$3,$4,.L774
	nop

.L775:
	lw	$3,620($16)
	sltu	$4,$3,15
	beq	$4,$0,.L776
	li	$4,3			# 0x3

	beq	$3,$4,.L776
	nop

	lw	$3,628($16)
	sltu	$3,$3,6
	beq	$3,$0,.L935
	nop

.L778:
	lw	$3,632($16)
	sltu	$3,$3,6
	beq	$3,$0,.L936
	nop

.L779:
	lw	$3,640($16)
	bltz	$3,.L937
	nop

.L780:
	lw	$3,644($16)
	bltz	$3,.L938
	nop

.L781:
	lw	$3,648($16)
	bltz	$3,.L939
	nop

.L782:
	lw	$3,652($16)
	bltz	$3,.L940
	nop

.L783:
	lw	$3,56($16)
	ldc1	$f1,432($16)
	addiu	$3,$3,-8
	sll	$4,$3,2
	subu	$3,$3,$4
	sll	$3,$3,1
	mtc1	$3,$f0
	cvt.d.w	$f0,$f0
	c.lt.d	$fcc0,$f1,$f0
	bc1t	$fcc0,.L784
	ld	$3,%got_page(.LC285)($28)

	ldc1	$f2,%got_ofst(.LC285)($3)
	c.lt.d	$fcc1,$f2,$f1
	bc1f	$fcc1,.L785
	nop

.L784:
	ld	$8,%got_page(.LC286)($28)
	move	$4,$16
	move	$6,$0
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC286)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,56($16)
	li	$2,1			# 0x1
	addiu	$3,$3,-8
	sll	$4,$3,2
	subu	$3,$3,$4
	sll	$3,$3,1
	mtc1	$3,$f0
	cvt.d.w	$f0,$f0
.L785:
	ldc1	$f1,480($16)
	c.lt.d	$fcc2,$f1,$f0
	bc1t	$fcc2,.L787
	ld	$3,%got_page(.LC285)($28)

	ldc1	$f2,%got_ofst(.LC285)($3)
	c.lt.d	$fcc3,$f2,$f1
	bc1f	$fcc3,.L788
	nop

.L787:
	ld	$8,%got_page(.LC286)($28)
	move	$4,$16
	move	$6,$0
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC286)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,56($16)
	li	$2,1			# 0x1
	addiu	$3,$3,-8
	sll	$4,$3,2
	subu	$3,$3,$4
	sll	$3,$3,1
	mtc1	$3,$f0
	cvt.d.w	$f0,$f0
.L788:
	ldc1	$f1,488($16)
	c.lt.d	$fcc4,$f1,$f0
	bc1t	$fcc4,.L790
	ld	$3,%got_page(.LC285)($28)

	ldc1	$f0,%got_ofst(.LC285)($3)
	c.lt.d	$fcc5,$f0,$f1
	bc1f	$fcc5,.L791
	nop

.L790:
	ld	$8,%got_page(.LC286)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC286)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	li	$2,1			# 0x1
.L791:
	lw	$3,152($16)
	sltu	$3,$3,3
	beq	$3,$0,.L941
	nop

.L793:
	lw	$3,40($16)
	addiu	$3,$3,1
	sltu	$3,$3,6
	beq	$3,$0,.L942
	nop

	lw	$3,172($16)
	bltz	$3,.L943
	nop

.L795:
	dmtc1	$0,$f1
	ldc1	$f0,704($16)
	c.lt.d	$fcc6,$f0,$f1
	bc1t	$fcc6,.L796
	ld	$3,%got_page(.LC290)($28)

	ldc1	$f1,%got_ofst(.LC290)($3)
	c.lt.d	$fcc7,$f1,$f0
	bc1f	$fcc7,.L797
	nop

.L796:
	ld	$8,%got_page(.LC291)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC291)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	li	$2,1			# 0x1
.L797:
	lw	$3,336($16)
	sltu	$3,$3,3
	beq	$3,$0,.L944
	nop

	lw	$3,144($16)
	slt	$3,$3,-1
	bne	$3,$0,.L945
	nop

.L800:
	lw	$3,128($16)
	sltu	$3,$3,4
	beq	$3,$0,.L946
	nop

	lw	$3,460($16)
	bltz	$3,.L947
	nop

.L802:
	lw	$3,456($16)
	bltz	$3,.L948
	nop

.L803:
	dmtc1	$0,$f0
	ldc1	$f1,464($16)
	c.lt.d	$fcc0,$f1,$f0
	bc1t	$fcc0,.L949
	nop

.L1005:
	ldc1	$f1,840($16)
	c.lt.d	$fcc1,$f1,$f0
	bc1t	$fcc1,.L950
	dmtc1	$0,$f0

.L1006:
	ldc1	$f1,848($16)
	c.lt.d	$fcc2,$f1,$f0
	bc1t	$fcc2,.L951
	nop

.L808:
	lw	$3,84($16)
	bne	$3,$0,.L810
	dmtc1	$0,$f0

	ldc1	$f1,848($16)
	c.eq.d	$fcc3,$f1,$f0
	bc1f	$fcc3,.L952
	nop

.L810:
	lw	$3,400($16)
	bltz	$3,.L953
	nop

.L811:
	ld	$3,%got_page(.LC38)($28)
	ldc1	$f0,408($16)
	ldc1	$f1,%got_ofst(.LC38)($3)
	c.lt.d	$fcc4,$f0,$f1
	bc1t	$fcc4,.L812
	ld	$3,%got_page(.LC17)($28)

	ldc1	$f1,%got_ofst(.LC17)($3)
	c.lt.d	$fcc5,$f1,$f0
	bc1f	$fcc5,.L813
	nop

.L812:
	ld	$8,%got_page(.LC302)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC302)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	li	$2,1			# 0x1
.L813:
	lw	$3,224($16)
	beq	$3,$0,.L815
	sltu	$3,$3,2001

	beq	$3,$0,.L954
	nop

.L815:
	lw	$3,228($16)
	beq	$3,$0,.L817
	sltu	$3,$3,2001

	beq	$3,$0,.L955
	nop

.L817:
	lw	$17,392($16)
	li	$3,1			# 0x1
	beq	$17,$3,.L956
	nop

.L819:
	lw	$3,552($16)
	beq	$3,$0,.L820
	nop

	lw	$3,400($16)
	blez	$3,.L821
	nop

	lw	$3,460($16)
	blez	$3,.L821
	nop

.L820:
	lw	$3,364($16)
	sltu	$4,$3,3
	beq	$4,$0,.L957
	nop

.L822:
	beq	$3,$0,.L823
	nop

	lw	$3,752($16)
	addiu	$3,$3,-1
	sltu	$3,$3,10
	beq	$3,$0,.L958
	nop

.L823:
	lw	$3,780($16)
	slt	$3,$3,3
	beq	$3,$0,.L959
	nop

	lw	$3,564($16)
	sltu	$3,$3,70
	beq	$3,$0,.L960
	nop

.L825:
	lw	$3,568($16)
	sltu	$3,$3,70
	beq	$3,$0,.L961
	nop

.L826:
	lw	$3,672($16)
	addiu	$3,$3,-4
	sltu	$3,$3,13
	beq	$3,$0,.L962
	move	$4,$16

.L827:
	lw	$3,772($16)
	bltz	$3,.L828
	slt	$4,$3,3

	bne	$4,$0,.L829
	li	$4,4			# 0x4

	li	$5,-3			# 0xfffffffffffffffd
	and	$3,$3,$5
	beq	$3,$4,.L829
	nop

.L828:
	ld	$8,%got_page(.LC312)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC312)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	li	$2,1			# 0x1
.L829:
	lw	$3,788($16)
	sltu	$3,$3,4
	beq	$3,$0,.L963
	move	$4,$16

	lw	$3,784($16)
	sltu	$3,$3,4
	beq	$3,$0,.L964
	nop

.L831:
	lw	$4,260($16)
	li	$3,4			# 0x4
	beq	$4,$3,.L965
	nop

.L832:
	ld	$3,656($16)
	beq	$3,$0,.L966
	nop

.L834:
	li	$3,1			# 0x1
	sw	$3,744($16)
.L846:
	ld	$31,56($sp)
.L967:
	ld	$28,48($sp)
.L1007:
	ld	$19,40($sp)
	ld	$18,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L836:
	b	.L707
	move	$17,$0

	.align	3
.L966:
	lwu	$3,664($16)
	bne	$3,$0,.L834
	ld	$31,56($sp)

	b	.L1007
	ld	$28,48($sp)

	.align	3
.L776:
	ld	$8,%got_page(.LC278)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC278)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,628($16)
	sltu	$3,$3,6
	bne	$3,$0,.L778
	li	$2,1			# 0x1

.L935:
	ld	$8,%got_page(.LC279)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC279)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,632($16)
	sltu	$3,$3,6
	bne	$3,$0,.L779
	li	$2,1			# 0x1

.L936:
	ld	$8,%got_page(.LC280)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC280)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,640($16)
	bgez	$3,.L780
	li	$2,1			# 0x1

.L937:
	ld	$8,%got_page(.LC281)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC281)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,644($16)
	bgez	$3,.L781
	li	$2,1			# 0x1

.L938:
	ld	$8,%got_page(.LC282)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC282)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,648($16)
	bgez	$3,.L782
	li	$2,1			# 0x1

.L939:
	ld	$8,%got_page(.LC283)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC283)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,652($16)
	bgez	$3,.L783
	li	$2,1			# 0x1

.L940:
	ld	$8,%got_page(.LC284)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC284)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L783
	li	$2,1			# 0x1

	.align	3
.L774:
	ld	$8,%got_page(.LC277)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC277)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L775
	li	$2,1			# 0x1

	.align	3
.L772:
	ld	$8,%got_page(.LC276)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC276)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L773
	li	$2,1			# 0x1

	.align	3
.L965:
	lw	$3,72($16)
	slt	$3,$3,841
	beq	$3,$0,.L1003
	ld	$8,%got_page(.LC315)($28)

	lw	$3,76($16)
	slt	$3,$3,481
	bne	$3,$0,.L832
	nop

.L1003:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC315)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L832
	li	$2,1			# 0x1

	.align	3
.L956:
	lw	$3,500($16)
	beq	$3,$0,.L819
	nop

	ld	$8,%got_page(.LC304)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC304)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L819
	move	$2,$17

	.align	3
.L934:
	ld	$8,%got_page(.LC275)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC275)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L771
	li	$2,1			# 0x1

	.align	3
.L963:
	ld	$8,%got_page(.LC313)($28)
	move	$6,$0
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC313)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,784($16)
	sltu	$3,$3,4
	bne	$3,$0,.L831
	li	$2,1			# 0x1

.L964:
	ld	$8,%got_page(.LC314)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC314)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L831
	li	$2,1			# 0x1

	.align	3
.L942:
	ld	$8,%got_page(.LC288)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC288)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,172($16)
	bgez	$3,.L795
	li	$2,1			# 0x1

.L943:
	ld	$8,%got_page(.LC289)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC289)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L795
	li	$2,1			# 0x1

	.align	3
.L941:
	ld	$8,%got_page(.LC287)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC287)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L793
	li	$2,1			# 0x1

	.align	3
.L957:
	ld	$8,%got_page(.LC306)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC306)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,364($16)
	b	.L822
	li	$2,1			# 0x1

	.align	3
.L946:
	ld	$8,%got_page(.LC294)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC294)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,460($16)
	bgez	$3,.L802
	li	$2,1			# 0x1

.L947:
	ld	$8,%got_page(.LC295)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC295)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,456($16)
	bgez	$3,.L803
	li	$2,1			# 0x1

.L948:
	ld	$8,%got_page(.LC296)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC296)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	dmtc1	$0,$f0
	ldc1	$f1,464($16)
	c.lt.d	$fcc0,$f1,$f0
	bc1f	$fcc0,.L1005
	li	$2,1			# 0x1

.L949:
	ld	$8,%got_page(.LC297)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC297)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	dmtc1	$0,$f0
	ldc1	$f1,840($16)
	c.lt.d	$fcc1,$f1,$f0
	bc1f	$fcc1,.L1006
	li	$2,1			# 0x1

.L950:
	ld	$8,%got_page(.LC298)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC298)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	dmtc1	$0,$f0
	ldc1	$f1,848($16)
	c.lt.d	$fcc2,$f1,$f0
	bc1f	$fcc2,.L808
	li	$2,1			# 0x1

.L951:
	ld	$8,%got_page(.LC299)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC299)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L808
	li	$2,1			# 0x1

	.align	3
.L944:
	ld	$8,%got_page(.LC292)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC292)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,144($16)
	slt	$3,$3,-1
	beq	$3,$0,.L800
	li	$2,1			# 0x1

.L945:
	ld	$8,%got_page(.LC293)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC293)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L800
	li	$2,1			# 0x1

	.align	3
.L962:
	ld	$8,%got_page(.LC311)($28)
	move	$6,$0
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC311)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L827
	li	$2,1			# 0x1

	.align	3
.L959:
	ld	$8,%got_page(.LC308)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC308)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,564($16)
	sltu	$3,$3,70
	bne	$3,$0,.L825
	li	$2,1			# 0x1

.L960:
	ld	$8,%got_page(.LC309)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC309)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,568($16)
	sltu	$3,$3,70
	bne	$3,$0,.L826
	li	$2,1			# 0x1

.L961:
	ld	$8,%got_page(.LC310)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC310)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L826
	li	$2,1			# 0x1

	.align	3
.L929:
	ld	$8,%got_page(.LC267)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC267)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L968
	dmtc1	$0,$f1

	.align	3
.L928:
	ld	$8,%got_page(.LC266)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC266)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L969
	lw	$2,296($16)

	.align	3
.L926:
	ld	$8,%got_page(.LC262)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC262)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$2,444($16)
	sltu	$2,$2,4
	bne	$2,$0,.L755
	nop

.L927:
	ld	$8,%got_page(.LC263)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC263)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L970
	dmtc1	$0,$f1

	.align	3
.L925:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC261)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L971
	lw	$2,168($16)

	.align	3
.L919:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	move	$17,$18
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC252)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$2,60($16)
	lw	$3,76($16)
	xori	$18,$2,0x1
	sltu	$18,$18,1
	and	$18,$18,$3
	beq	$18,$0,.L743
	ld	$8,%got_page(.LC253)($28)

.L998:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	move	$17,$18
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC253)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$2,392($16)
	sltu	$2,$2,3
	bne	$2,$0,.L744
	ld	$8,%got_page(.LC254)($28)

.L999:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC254)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$2,308($16)
	addiu	$2,$2,-1
	sltu	$2,$2,6
	bne	$2,$0,.L745
	ld	$8,%got_page(.LC255)($28)

.L1000:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC255)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$2,212($16)
	sltu	$2,$2,3
	bne	$2,$0,.L746
	ld	$8,%got_page(.LC256)($28)

.L1001:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC256)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L972
	dmtc1	$0,$f1

	.align	3
.L918:
	ld	$8,%got_page(.LC251)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC251)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$2,60($16)
	b	.L741
	move	$3,$2

	.align	3
.L917:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC249)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L973
	lw	$3,180($16)

	.align	3
.L915:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC247)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$2,100($16)
	bgtz	$2,.L737
	ld	$8,%got_page(.LC248)($28)

.L996:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC248)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L737
	lw	$2,100($16)

	.align	3
.L914:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC246)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L735
	lw	$2,248($16)

	.align	3
.L913:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC245)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L974
	lw	$2,248($16)

	.align	3
.L895:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC227)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$2,260($16)
	sltu	$2,$2,6
	bne	$2,$0,.L716
	ld	$8,%got_page(.LC228)($28)

.L990:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC228)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$2,268($16)
	bgez	$2,.L1004
	li	$3,32768			# 0x8000

	ld	$8,%got_page(.LC229)($28)
.L991:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC229)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$2,268($16)
	li	$3,32768			# 0x8000
	slt	$2,$2,$3
	bne	$2,$0,.L718
	ld	$8,%got_page(.LC230)($28)

.L992:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC230)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$2,264($16)
	slt	$3,$2,8
	bne	$3,$0,.L719
	ld	$8,%got_page(.LC231)($28)

.L993:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC231)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$2,264($16)
	bgez	$2,.L720
	ld	$8,%got_page(.LC232)($28)

.L994:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC232)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$2,252($16)
	sltu	$2,$2,4
	bne	$2,$0,.L721
	ld	$8,%got_page(.LC233)($28)

.L995:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC233)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L975
	lw	$2,256($16)

	.align	3
.L894:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC224)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L976
	lw	$2,56($16)

	.align	3
.L911:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC242)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L977
	lw	$3,196($16)

	.align	3
.L910:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC243)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L731
	lw	$2,204($16)

	.align	3
.L909:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC242)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L978
	lw	$2,204($16)

	.align	3
.L908:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC241)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L729
	lw	$2,200($16)

	.align	3
.L907:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC240)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L979
	lw	$2,200($16)

	.align	3
.L906:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC239)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L980
	sltu	$19,$18,$19

	.align	3
.L905:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC238)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L726
	lw	$2,384($16)

	.align	3
.L904:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC237)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L981
	lw	$2,384($16)

	.align	3
.L903:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC236)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L724
	lw	$2,380($16)

	.align	3
.L902:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC235)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L982
	lw	$2,380($16)

	.align	3
.L890:
	ld	$18,%got_page(.LC219)($28)
	move	$6,$0
	ld	$17,%got_page(.LC7)($28)
	ld	$8,%got_page(.LC218)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$7,$18,%got_ofst(.LC219)
	daddiu	$5,$17,%got_ofst(.LC7)
	sd	$2,0($sp)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$8,$8,%got_ofst(.LC218)

	lw	$4,180($16)
	li	$5,-33			# 0xffffffffffffffdf
	addiu	$3,$4,-32
	and	$3,$3,$5
	beq	$3,$0,.L846
	ld	$2,0($sp)

	li	$3,16			# 0x10
	beq	$4,$3,.L967
	ld	$31,56($sp)

	b	.L983
	ld	$8,%got_page(.LC220)($28)

	.align	3
.L931:
	ld	$8,%got_page(.LC272)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC272)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$2,576($16)
	bne	$2,$19,.L768
	nop

	b	.L984
	lw	$2,580($16)

	.align	3
.L924:
	ld	$8,%got_page(.LC259)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC259)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,148($16)
	b	.L752
	li	$2,1			# 0x1

	.align	3
.L893:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC223)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L709
	lw	$3,184($16)

	.align	3
.L891:
	ld	$17,%got_page(.LC7)($28)
	ld	$8,%got_page(.LC220)($28)
.L983:
	daddiu	$7,$18,%got_ofst(.LC219)
	daddiu	$5,$17,%got_ofst(.LC7)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	move	$4,$16
	move	$6,$0
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$8,$8,%got_ofst(.LC220)

	ld	$31,56($sp)
	li	$2,1			# 0x1
	ld	$28,48($sp)
	ld	$19,40($sp)
	ld	$18,32($sp)
	ld	$17,24($sp)
	ld	$16,16($sp)
	jr	$31
	daddiu	$sp,$sp,64

	.align	3
.L821:
	ld	$8,%got_page(.LC305)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC305)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L820
	li	$2,1			# 0x1

	.align	3
.L912:
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC244)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L985
	lw	$2,208($16)

	.align	3
.L932:
	ld	$8,%got_page(.LC273)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	move	$18,$0
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC273)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	lw	$3,576($16)
	li	$2,255			# 0xff
	beq	$3,$2,.L770
	nop

	b	.L986
	lw	$3,600($16)

	.align	3
.L933:
	ld	$8,%got_page(.LC274)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$18,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC274)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L986
	lw	$3,600($16)

	.align	3
.L953:
	ld	$8,%got_page(.LC301)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC301)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L811
	li	$2,1			# 0x1

	.align	3
.L930:
	ld	$8,%got_page(.LC271)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC271)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L987
	lw	$2,576($16)

	.align	3
.L892:
	ld	$8,%got_page(.LC221)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	li	$17,1			# 0x1
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC221)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L988
	lw	$3,56($16)

	.align	3
.L958:
	ld	$8,%got_page(.LC307)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC307)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L823
	li	$2,1			# 0x1

	.align	3
.L952:
	ld	$8,%got_page(.LC300)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC300)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L810
	li	$2,1			# 0x1

	.align	3
.L955:
	ld	$8,%got_page(.LC303)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC303)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L817
	li	$2,1			# 0x1

	.align	3
.L954:
	ld	$8,%got_page(.LC303)($28)
	move	$6,$0
	move	$4,$16
	ld	$7,%got_page(.LC219)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$8,$8,%got_ofst(.LC303)
	daddiu	$7,$7,%got_ofst(.LC219)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L815
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN4x26517x265_check_paramsEP10x265_param
	.size	_ZN4x26517x265_check_paramsEP10x265_param, .-_ZN4x26517x265_check_paramsEP10x265_param
	.align	2
	.align	3
	.globl	_ZN4x26530x265_param_apply_fastfirstpassEP10x265_param
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26530x265_param_apply_fastfirstpassEP10x265_param
	.type	_ZN4x26530x265_param_apply_fastfirstpassEP10x265_param, @function
_ZN4x26530x265_param_apply_fastfirstpassEP10x265_param:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,496($4)
	beq	$2,$0,.L1014
	nop

	lw	$2,500($4)
	bne	$2,$0,.L1014
	li	$6,2			# 0x2

	lw	$3,264($4)
	li	$2,1			# 0x1
	lw	$7,308($4)
	sw	$2,100($4)
	slt	$5,$3,3
	sw	$2,248($4)
	movz	$3,$6,$5
	sw	$0,188($4)
	move	$5,$3
	slt	$3,$7,3
	sw	$2,320($4)
	movn	$6,$7,$3
	sw	$0,192($4)
	sw	$0,260($4)
	sw	$5,264($4)
	sw	$2,312($4)
	sw	$6,308($4)
.L1014:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN4x26530x265_param_apply_fastfirstpassEP10x265_param
	.size	_ZN4x26530x265_param_apply_fastfirstpassEP10x265_param, .-_ZN4x26530x265_param_apply_fastfirstpassEP10x265_param
	.section	.rodata.str1.8
	.align	3
.LC316:
	.ascii	"on\000"
	.align	3
.LC317:
	.ascii	"Interlaced field inputs             : %s\012\000"
	.align	3
.LC318:
	.ascii	"Coding QT: max CU size, min CU size : %d / %d\012\000"
	.align	3
.LC319:
	.ascii	"Residual QT: max TU size, max depth : %d / %d inter / %d"
	.ascii	" intra\012\000"
	.align	3
.LC320:
	.ascii	"ME / range / subpel / merge         : %s / %d / %d / %d\012"
	.ascii	"\000"
	.align	3
.LC321:
	.ascii	"Keyframe min / max / scenecut / bias: %d / %d / %d / %.2"
	.ascii	"lf\012\000"
	.align	3
.LC322:
	.ascii	"Keyframe min / max / scenecut       : disabled\012\000"
	.align	3
.LC323:
	.ascii	"Cb/Cr QP Offset                     : %d / %d\012\000"
	.align	3
.LC324:
	.ascii	"Intra 32x32 TU penalty type         : %d\012\000"
	.align	3
.LC325:
	.ascii	"Lookahead / bframes / badapt        : %d / %d / %d\012\000"
	.align	3
.LC326:
	.ascii	"b-pyramid / weightp / weightb       : %d / %d / %d\012\000"
	.align	3
.LC327:
	.ascii	"References / ref-limit  cu / depth  : %d / %s / %s\012\000"
	.align	3
.LC328:
	.ascii	"AQ: mode / str / qg-size / cu-tree  : %d / %0.1f / %d / "
	.ascii	"%d\012\000"
	.align	3
.LC329:
	.ascii	"Rate Control                        : Lossless\012\000"
	.align	3
.LC330:
	.ascii	"Rate Control / qCompress            : ABR-%d kbps / %0.2"
	.ascii	"f\012\000"
	.align	3
.LC331:
	.ascii	"Rate Control                        : CQP-%d\012\000"
	.align	3
.LC332:
	.ascii	"Rate Control / qCompress            : CRF-%0.1f / %0.2f\012"
	.ascii	"\000"
	.align	3
.LC333:
	.ascii	"VBV/HRD buffer / max-rate / init / end / fr-adj: %d / %d"
	.ascii	" / %.3f / %.3f / %.3f\012\000"
	.align	3
.LC334:
	.ascii	"VBV/HRD buffer / max-rate / init    : %d / %d / %.3f\012"
	.ascii	"\000"
	.align	3
.LC335:
	.ascii	"rd=%d\000"
	.align	3
.LC336:
	.ascii	"dynamic-rd=%.2f\000"
	.align	3
.LC337:
	.ascii	"psy-rd=%.2lf\000"
	.align	3
.LC338:
	.ascii	"rdoq=%d\000"
	.align	3
.LC339:
	.ascii	"psy-rdoq=%.2lf\000"
	.align	3
.LC340:
	.ascii	"nr-intra=%d\000"
	.align	3
.LC341:
	.ascii	"nr-inter=%d\000"
	.align	3
.LC342:
	.ascii	"limit-tu=%d\000"
	.align	3
.LC343:
	.ascii	"tmvp\000"
	.align	3
.LC344:
	.ascii	"lslices=%d\000"
	.align	3
.LC345:
	.ascii	"lthreads=%d\000"
	.align	3
.LC346:
	.ascii	"ctu-info=%d\000"
	.align	3
.LC347:
	.ascii	"refine-mv-type=avc\000"
	.align	3
.LC348:
	.ascii	"slices=%d\000"
	.align	3
.LC349:
	.ascii	"deblock(tC=%d:B=%d)\000"
	.align	3
.LC350:
	.ascii	"stats-write\000"
	.align	3
.LC351:
	.ascii	"stats-read\000"
	.text
	.align	2
	.align	3
	.globl	_ZN4x26517x265_print_paramsEP10x265_param
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26517x265_print_paramsEP10x265_param
	.type	_ZN4x26517x265_print_paramsEP10x265_param, @function
_ZN4x26517x265_print_paramsEP10x265_param:
	.frame	$sp,192,$31		# vars= 128, regs= 6/0, args= 16, gp= 0
	.mask	0x900f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,40($4)
	slt	$2,$2,2
	bne	$2,$0,.L1251
	nop

	daddiu	$sp,$sp,-192
	lw	$2,80($4)
	sd	$28,176($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26517x265_print_paramsEP10x265_param)))
	daddu	$28,$28,$25
	sd	$16,144($sp)
	move	$16,$4
	sd	$31,184($sp)
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26517x265_print_paramsEP10x265_param)))
	sd	$19,168($sp)
	sd	$18,160($sp)
	bne	$2,$0,.L1179
	sd	$17,152($sp)

	ld	$18,%got_page(.LC7)($28)
	ld	$7,%got_page(.LC318)($28)
.L1220:
	move	$4,$16
	li	$6,2			# 0x2
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$5,$18,%got_ofst(.LC7)
	lw	$9,184($16)
	lw	$8,180($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$7,$7,%got_ofst(.LC318)

	ld	$7,%got_page(.LC319)($28)
	move	$4,$16
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	li	$6,2			# 0x2
	daddiu	$5,$18,%got_ofst(.LC7)
	lw	$10,204($16)
	lw	$9,200($16)
	daddiu	$7,$7,%got_ofst(.LC319)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	lw	$8,196($16)

	ld	$3,%got_page(_ZL21x265_motion_est_names)($28)
	li	$6,2			# 0x2
	lw	$2,260($16)
	daddiu	$5,$18,%got_ofst(.LC7)
	move	$4,$16
	ld	$7,%got_page(.LC320)($28)
	daddiu	$3,$3,%got_ofst(_ZL21x265_motion_est_names)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	dlsa	$2,$2,$3,3
	lw	$10,264($16)
	lw	$9,268($16)
	daddiu	$7,$7,%got_ofst(.LC320)
	ld	$8,0($2)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	lw	$11,248($16)

	lw	$9,144($16)
	li	$2,2147418112			# 0x7fff0000
	ori	$2,$2,0xffff
	bne	$9,$2,.L1019
	lw	$10,172($16)

	beq	$10,$0,.L1020
	ld	$7,%got_page(.LC322)($28)

.L1019:
	ld	$2,%got_page(.LC290)($28)
	ldc1	$f1,704($16)
	li	$6,2			# 0x2
	daddiu	$5,$18,%got_ofst(.LC7)
	ld	$7,%got_page(.LC321)($28)
	move	$4,$16
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	ldc1	$f0,%got_ofst(.LC290)($2)
	lw	$8,140($16)
	daddiu	$7,$7,%got_ofst(.LC321)
	mul.d	$f0,$f1,$f0
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	dmfc1	$11,$f0

	lw	$8,380($16)
.L1229:
	bne	$8,$0,.L1022
	lw	$9,384($16)

	beq	$9,$0,.L1023
	nop

.L1022:
	ld	$7,%got_page(.LC323)($28)
	li	$6,2			# 0x2
	daddiu	$5,$18,%got_ofst(.LC7)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$7,$7,%got_ofst(.LC323)

.L1023:
	lw	$8,336($16)
	bne	$8,$0,.L1186
	ld	$7,%got_page(.LC324)($28)

	ld	$7,%got_page(.LC325)($28)
.L1222:
	move	$4,$16
	li	$6,2			# 0x2
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$5,$18,%got_ofst(.LC7)
	lw	$10,152($16)
	lw	$9,148($16)
	daddiu	$7,$7,%got_ofst(.LC325)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	lw	$8,164($16)

	ld	$7,%got_page(.LC326)($28)
	li	$6,2			# 0x2
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$5,$18,%got_ofst(.LC7)
	move	$4,$16
	lw	$8,156($16)
	lw	$10,280($16)
	daddiu	$7,$7,%got_ofst(.LC326)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	lw	$9,276($16)

	lw	$2,252($16)
	andi	$3,$2,0x2
	beq	$3,$0,.L1079
	lw	$8,100($16)

	ld	$9,%got_page(.LC316)($28)
	daddiu	$9,$9,%got_ofst(.LC316)
.L1025:
	andi	$2,$2,0x1
	beq	$2,$0,.L1080
	ld	$10,%got_page(.LC215)($28)

	ld	$10,%got_page(.LC316)($28)
	li	$6,2			# 0x2
	daddiu	$5,$18,%got_ofst(.LC7)
	ld	$7,%got_page(.LC327)($28)
	move	$4,$16
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$10,$10,%got_ofst(.LC316)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$7,$7,%got_ofst(.LC327)

	lw	$8,444($16)
	bne	$8,$0,.L1187
	nop

.L1027:
	lw	$2,376($16)
	bne	$2,$0,.L1188
	nop

.L1028:
	lw	$2,392($16)
	li	$3,1			# 0x1
	beq	$2,$3,.L1030
	li	$3,2			# 0x2

	beq	$2,$3,.L1031
	li	$6,2			# 0x2

	beq	$2,$0,.L1189
	daddiu	$5,$18,%got_ofst(.LC7)

	lw	$8,460($16)
.L1221:
	beq	$8,$0,.L1033
	dmtc1	$0,$f0

	ld	$11,840($16)
	lw	$9,456($16)
	dmtc1	$11,$f1
	c.eq.d	$fcc0,$f1,$f0
	bc1t	$fcc0,.L1034
	ld	$10,464($16)

	ld	$7,%got_page(.LC333)($28)
	ldc1	$f0,848($16)
	li	$6,2			# 0x2
	daddiu	$5,$18,%got_ofst(.LC7)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	move	$4,$16
	daddiu	$7,$7,%got_ofst(.LC333)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	sdc1	$f0,0($sp)

.L1033:
	lw	$2,188($16)
.L1227:
	daddiu	$17,$sp,16
	sd	$0,16($sp)
	sd	$0,24($sp)
	sd	$0,32($sp)
	sd	$0,40($sp)
	sd	$0,48($sp)
	sd	$0,56($sp)
	sd	$0,64($sp)
	sd	$0,72($sp)
	sd	$0,80($sp)
	bne	$2,$0,.L1190
	sd	$0,88($sp)

	lw	$2,192($16)
.L1226:
	bne	$2,$0,.L1191
	ld	$6,%got_page(.LC61)($28)

	lw	$2,256($16)
	bne	$2,$0,.L1232
	ld	$6,%got_page(.LC90)($28)

.L1037:
	lw	$6,308($16)
	bne	$6,$0,.L1233
	ld	$5,%got_page(.LC335)($28)

.L1038:
	ld	$6,736($16)
	dmtc1	$0,$f0
	dmtc1	$6,$f1
	c.eq.d	$fcc1,$f1,$f0
	bc1f	$fcc1,.L1234
	ld	$5,%got_page(.LC336)($28)

.L1039:
	lw	$2,732($16)
	bne	$2,$0,.L1235
	ld	$6,%got_page(.LC195)($28)

.L1040:
	ld	$6,344($16)
	dmtc1	$0,$f0
	dmtc1	$6,$f1
	c.eq.d	$fcc2,$f1,$f0
	bc1f	$fcc2,.L1236
	ld	$5,%got_page(.LC337)($28)

.L1041:
	lw	$6,212($16)
	bne	$6,$0,.L1237
	ld	$5,%got_page(.LC338)($28)

.L1042:
	ld	$6,352($16)
	dmtc1	$0,$f0
	dmtc1	$6,$f1
	c.eq.d	$fcc3,$f1,$f0
	bc1f	$fcc3,.L1238
	ld	$5,%got_page(.LC339)($28)

.L1043:
	lw	$2,360($16)
	bne	$2,$0,.L1199
	nop

.L1044:
	lw	$2,312($16)
	bne	$2,$0,.L1252
	ld	$6,%got_page(.LC64)($28)

.L1045:
	lw	$2,316($16)
	bne	$2,$0,.L1239
	ld	$6,%got_page(.LC65)($28)

.L1046:
	lw	$2,828($16)
	bne	$2,$0,.L1240
	ld	$6,%got_page(.LC208)($28)

.L1047:
	lw	$6,224($16)
	bne	$6,$0,.L1241
	ld	$5,%got_page(.LC340)($28)

.L1048:
	lw	$6,228($16)
	bne	$6,$0,.L1242
	ld	$5,%got_page(.LC341)($28)

.L1049:
	lw	$2,324($16)
	bne	$2,$0,.L1243
	ld	$6,%got_page(.LC69)($28)

.L1053:
	lw	$2,220($16)
	bne	$2,$0,.L1205
	ld	$6,%got_page(.LC67)($28)

	lw	$6,208($16)
.L1230:
	bne	$6,$0,.L1244
	ld	$5,%got_page(.LC342)($28)

.L1055:
	lw	$2,328($16)
	bne	$2,$0,.L1207
	nop

.L1056:
	lw	$2,216($16)
	bne	$2,$0,.L1208
	nop

.L1057:
	lw	$2,272($16)
	bne	$2,$0,.L1209
	nop

.L1058:
	lw	$2,240($16)
	bne	$2,$0,.L1210
	nop

.L1059:
	lw	$2,332($16)
	bne	$2,$0,.L1253
	ld	$6,%got_page(.LC102)($28)

.L1060:
	lw	$2,320($16)
	bne	$2,$0,.L1245
	ld	$6,%got_page(.LC75)($28)

.L1061:
	lw	$2,244($16)
	bne	$2,$0,.L1246
	ld	$6,%got_page(.LC70)($28)

.L1062:
	lw	$6,168($16)
	bne	$6,$0,.L1247
	ld	$5,%got_page(.LC344)($28)

.L1063:
	lw	$6,712($16)
	bne	$6,$0,.L1248
	ld	$5,%got_page(.LC345)($28)

.L1064:
	lw	$6,772($16)
.L1225:
	bne	$6,$0,.L1216
	li	$2,1			# 0x1

	lw	$3,856($16)
	beq	$3,$2,.L1249
	ld	$6,%got_page(.LC347)($28)

.L1066:
	lw	$6,684($16)
.L1224:
	sltu	$2,$6,2
	bne	$2,$0,.L1067
	ld	$5,%got_page(.LC348)($28)

	daddiu	$19,$sp,96
	ld	$25,%call16(sprintf)($28)
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC348)

	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	move	$6,$19
	move	$5,$17
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	move	$4,$16

.L1067:
	lw	$2,288($16)
	beq	$2,$0,.L1068
	nop

	lw	$7,296($16)
	bne	$7,$0,.L1069
	lw	$6,292($16)

	beq	$6,$0,.L1070
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)

.L1069:
	ld	$5,%got_page(.LC349)($28)
	daddiu	$19,$sp,96
	ld	$25,%call16(sprintf)($28)
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC349)

	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	move	$6,$19
	move	$5,$17
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	move	$4,$16

.L1068:
	lw	$2,304($16)
.L1228:
	bne	$2,$0,.L1071
	ld	$6,%got_page(.LC109)($28)

.L1074:
	lw	$2,300($16)
	bne	$2,$0,.L1218
	ld	$6,%got_page(.LC108)($28)

	lw	$2,496($16)
.L1231:
	bne	$2,$0,.L1250
	ld	$6,%got_page(.LC350)($28)

.L1076:
	lw	$2,500($16)
.L1223:
	beq	$2,$0,.L1077
	ld	$6,%got_page(.LC351)($28)

	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC351)

.L1077:
	ld	$7,%got_page(.LC6)($28)
	move	$4,$16
	move	$8,$17
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$5,$18,%got_ofst(.LC7)
	li	$6,2			# 0x2
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$7,$7,%got_ofst(.LC6)

	ld	$2,%got_disp(stderr)($28)
	ld	$25,%call16(fflush)($28)
	.reloc	1f,R_MIPS_JALR,fflush
1:	jalr	$25
	ld	$4,0($2)

	ld	$31,184($sp)
	ld	$28,176($sp)
	ld	$19,168($sp)
	ld	$18,160($sp)
	ld	$17,152($sp)
	ld	$16,144($sp)
	jr	$31
	daddiu	$sp,$sp,192

	.align	3
.L1179:
	ld	$3,%got_page(_ZL20x265_interlace_names)($28)
	li	$6,2			# 0x2
	ld	$18,%got_page(.LC7)($28)
	ld	$7,%got_page(.LC317)($28)
	daddiu	$3,$3,%got_ofst(_ZL20x265_interlace_names)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	dlsa	$2,$2,$3,3
	daddiu	$5,$18,%got_ofst(.LC7)
	ld	$8,0($2)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$7,$7,%got_ofst(.LC317)

	b	.L1220
	ld	$7,%got_page(.LC318)($28)

.L1251:
	jr	$31
	nop

	.align	3
.L1080:
	li	$6,2			# 0x2
	daddiu	$5,$18,%got_ofst(.LC7)
	ld	$7,%got_page(.LC327)($28)
	move	$4,$16
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	daddiu	$10,$10,%got_ofst(.LC215)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$7,$7,%got_ofst(.LC327)

	lw	$8,444($16)
	beq	$8,$0,.L1027
	nop

.L1187:
	ld	$7,%got_page(.LC328)($28)
	li	$6,2			# 0x2
	daddiu	$5,$18,%got_ofst(.LC7)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	move	$4,$16
	lw	$11,472($16)
	lw	$10,556($16)
	daddiu	$7,$7,%got_ofst(.LC328)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	ld	$9,448($16)

	lw	$2,376($16)
	beq	$2,$0,.L1028
	nop

.L1188:
	ld	$7,%got_page(.LC329)($28)
	li	$6,2			# 0x2
	daddiu	$5,$18,%got_ofst(.LC7)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$7,$7,%got_ofst(.LC329)

	b	.L1221
	lw	$8,460($16)

	.align	3
.L1079:
	ld	$9,%got_page(.LC215)($28)
	b	.L1025
	daddiu	$9,$9,%got_ofst(.LC215)

	.align	3
.L1186:
	li	$6,2			# 0x2
	daddiu	$5,$18,%got_ofst(.LC7)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$7,$7,%got_ofst(.LC324)

	b	.L1222
	ld	$7,%got_page(.LC325)($28)

	.align	3
.L1071:
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC109)

	lw	$2,304($16)
	beq	$2,$0,.L1074
	nop

	lw	$2,496($16)
	beq	$2,$0,.L1076
	ld	$6,%got_page(.LC350)($28)

.L1250:
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC350)

	b	.L1223
	lw	$2,500($16)

	.align	3
.L1216:
	ld	$5,%got_page(.LC346)($28)
	daddiu	$19,$sp,96
	ld	$25,%call16(sprintf)($28)
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC346)

	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	move	$6,$19
	move	$5,$17
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	move	$4,$16

	lw	$3,856($16)
	li	$2,1			# 0x1
	bne	$3,$2,.L1066
	ld	$6,%got_page(.LC347)($28)

.L1249:
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC347)

	b	.L1224
	lw	$6,684($16)

	.align	3
.L1191:
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC61)

	lw	$2,256($16)
	beq	$2,$0,.L1037
	ld	$6,%got_page(.LC90)($28)

.L1232:
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC90)

	lw	$6,308($16)
	beq	$6,$0,.L1038
	ld	$5,%got_page(.LC335)($28)

.L1233:
	daddiu	$19,$sp,96
	ld	$25,%call16(sprintf)($28)
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC335)

	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	move	$6,$19
	move	$5,$17
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	move	$4,$16

	ld	$6,736($16)
	dmtc1	$0,$f0
	dmtc1	$6,$f1
	c.eq.d	$fcc1,$f1,$f0
	bc1t	$fcc1,.L1039
	ld	$5,%got_page(.LC336)($28)

.L1234:
	daddiu	$19,$sp,96
	ld	$25,%call16(sprintf)($28)
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC336)

	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	move	$6,$19
	move	$5,$17
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	move	$4,$16

	lw	$2,732($16)
	beq	$2,$0,.L1040
	ld	$6,%got_page(.LC195)($28)

.L1235:
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC195)

	ld	$6,344($16)
	dmtc1	$0,$f0
	dmtc1	$6,$f1
	c.eq.d	$fcc2,$f1,$f0
	bc1t	$fcc2,.L1041
	ld	$5,%got_page(.LC337)($28)

.L1236:
	daddiu	$19,$sp,96
	ld	$25,%call16(sprintf)($28)
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC337)

	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	move	$6,$19
	move	$5,$17
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	move	$4,$16

	lw	$6,212($16)
	beq	$6,$0,.L1042
	ld	$5,%got_page(.LC338)($28)

.L1237:
	daddiu	$19,$sp,96
	ld	$25,%call16(sprintf)($28)
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC338)

	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	move	$6,$19
	move	$5,$17
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	move	$4,$16

	ld	$6,352($16)
	dmtc1	$0,$f0
	dmtc1	$6,$f1
	c.eq.d	$fcc3,$f1,$f0
	bc1t	$fcc3,.L1043
	ld	$5,%got_page(.LC339)($28)

.L1238:
	daddiu	$19,$sp,96
	ld	$25,%call16(sprintf)($28)
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC339)

	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	move	$6,$19
	move	$5,$17
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	move	$4,$16

	lw	$2,360($16)
	beq	$2,$0,.L1044
	nop

.L1199:
	ld	$6,%got_page(.LC100)($28)
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC100)

	lw	$2,312($16)
	beq	$2,$0,.L1045
	ld	$6,%got_page(.LC64)($28)

.L1252:
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC64)

	lw	$2,316($16)
	beq	$2,$0,.L1046
	ld	$6,%got_page(.LC65)($28)

.L1239:
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC65)

	lw	$2,828($16)
	beq	$2,$0,.L1047
	ld	$6,%got_page(.LC208)($28)

.L1240:
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC208)

	lw	$6,224($16)
	beq	$6,$0,.L1048
	ld	$5,%got_page(.LC340)($28)

.L1241:
	daddiu	$19,$sp,96
	ld	$25,%call16(sprintf)($28)
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC340)

	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	move	$6,$19
	move	$5,$17
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	move	$4,$16

	lw	$6,228($16)
	beq	$6,$0,.L1049
	ld	$5,%got_page(.LC341)($28)

.L1242:
	daddiu	$19,$sp,96
	ld	$25,%call16(sprintf)($28)
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC341)

	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	move	$6,$19
	move	$5,$17
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	move	$4,$16

	lw	$2,324($16)
	beq	$2,$0,.L1053
	ld	$6,%got_page(.LC69)($28)

.L1243:
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC69)

	lw	$2,324($16)
	beq	$2,$0,.L1053
	nop

	lw	$6,208($16)
	beq	$6,$0,.L1055
	ld	$5,%got_page(.LC342)($28)

.L1244:
	daddiu	$19,$sp,96
	ld	$25,%call16(sprintf)($28)
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC342)

	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	move	$6,$19
	move	$5,$17
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	move	$4,$16

	lw	$2,328($16)
	beq	$2,$0,.L1056
	nop

.L1207:
	ld	$6,%got_page(.LC72)($28)
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC72)

	lw	$2,216($16)
	beq	$2,$0,.L1057
	nop

.L1208:
	ld	$6,%got_page(.LC101)($28)
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC101)

	lw	$2,272($16)
	beq	$2,$0,.L1058
	nop

.L1209:
	ld	$6,%got_page(.LC343)($28)
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC343)

	lw	$2,240($16)
	beq	$2,$0,.L1059
	nop

.L1210:
	ld	$6,%got_page(.LC74)($28)
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC74)

	lw	$2,332($16)
	beq	$2,$0,.L1060
	ld	$6,%got_page(.LC102)($28)

.L1253:
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC102)

	lw	$2,320($16)
	beq	$2,$0,.L1061
	ld	$6,%got_page(.LC75)($28)

.L1245:
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC75)

	lw	$2,244($16)
	beq	$2,$0,.L1062
	ld	$6,%got_page(.LC70)($28)

.L1246:
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC70)

	lw	$6,168($16)
	beq	$6,$0,.L1063
	ld	$5,%got_page(.LC344)($28)

.L1247:
	daddiu	$19,$sp,96
	ld	$25,%call16(sprintf)($28)
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC344)

	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	move	$6,$19
	move	$5,$17
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	move	$4,$16

	lw	$6,712($16)
	beq	$6,$0,.L1064
	ld	$5,%got_page(.LC345)($28)

.L1248:
	daddiu	$19,$sp,96
	ld	$25,%call16(sprintf)($28)
	move	$4,$19
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC345)

	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	move	$6,$19
	move	$5,$17
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	move	$4,$16

	b	.L1225
	lw	$6,772($16)

	.align	3
.L1190:
	ld	$6,%got_page(.LC60)($28)
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC60)

	b	.L1226
	lw	$2,192($16)

	.align	3
.L1034:
	ld	$7,%got_page(.LC334)($28)
	li	$6,2			# 0x2
	daddiu	$5,$18,%got_ofst(.LC7)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$7,$7,%got_ofst(.LC334)

	b	.L1227
	lw	$2,188($16)

	.align	3
.L1189:
	ld	$7,%got_page(.LC330)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	move	$4,$16
	ld	$9,408($16)
	lw	$8,400($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$7,$7,%got_ofst(.LC330)

	b	.L1221
	lw	$8,460($16)

	.align	3
.L1070:
	ld	$6,%got_page(.LC104)($28)
	move	$5,$17
	move	$4,$16
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC104)

	b	.L1228
	lw	$2,304($16)

	.align	3
.L1020:
	li	$6,2			# 0x2
	daddiu	$5,$18,%got_ofst(.LC7)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$7,$7,%got_ofst(.LC322)

	b	.L1229
	lw	$8,380($16)

	.align	3
.L1030:
	ld	$7,%got_page(.LC331)($28)
	li	$6,2			# 0x2
	daddiu	$5,$18,%got_ofst(.LC7)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	move	$4,$16
	lw	$8,396($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$7,$7,%got_ofst(.LC331)

	b	.L1221
	lw	$8,460($16)

	.align	3
.L1031:
	ld	$7,%got_page(.LC332)($28)
	daddiu	$5,$18,%got_ofst(.LC7)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	move	$4,$16
	ld	$9,408($16)
	ld	$8,432($16)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$7,$7,%got_ofst(.LC332)

	b	.L1221
	lw	$8,460($16)

	.align	3
.L1205:
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC67)

	b	.L1230
	lw	$6,208($16)

	.align	3
.L1218:
	move	$5,$17
	move	$4,$16
	ld	$25,%got_page(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)($28)
	daddiu	$25,$25,%got_ofst(_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4)
	.reloc	1f,R_MIPS_JALR,_ZN4x265L10appendtoolEP10x265_paramPcmPKc.constprop.4
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC108)

	b	.L1231
	lw	$2,496($16)

	.set	macro
	.set	reorder
	.end	_ZN4x26517x265_print_paramsEP10x265_param
	.size	_ZN4x26517x265_print_paramsEP10x265_param, .-_ZN4x26517x265_print_paramsEP10x265_param
	.section	.rodata.str1.8
	.align	3
.LC352:
	.ascii	"no-wpp\000"
	.align	3
.LC353:
	.ascii	"no-pmode\000"
	.align	3
.LC354:
	.ascii	"no-pme\000"
	.align	3
.LC355:
	.ascii	"no-psnr\000"
	.align	3
.LC356:
	.ascii	"no-ssim\000"
	.align	3
.LC357:
	.ascii	"no-allow-non-conformance\000"
	.align	3
.LC358:
	.ascii	"no-repeat-headers\000"
	.align	3
.LC359:
	.ascii	"no-annexb\000"
	.align	3
.LC360:
	.ascii	"no-aud\000"
	.align	3
.LC361:
	.ascii	"no-hrd\000"
	.align	3
.LC362:
	.ascii	"no-info\000"
	.align	3
.LC363:
	.ascii	"no-temporal-layers\000"
	.align	3
.LC364:
	.ascii	"no-open-gop\000"
	.align	3
.LC365:
	.ascii	"no-b-pyramid\000"
	.align	3
.LC366:
	.ascii	"no-intra-refresh\000"
	.align	3
.LC367:
	.ascii	"no-rect\000"
	.align	3
.LC368:
	.ascii	"no-amp\000"
	.align	3
.LC369:
	.ascii	"no-ssim-rd\000"
	.align	3
.LC370:
	.ascii	"no-signhide\000"
	.align	3
.LC371:
	.ascii	"no-tskip\000"
	.align	3
.LC372:
	.ascii	"no-constrained-intra\000"
	.align	3
.LC373:
	.ascii	"no-strong-intra-smoothing\000"
	.align	3
.LC374:
	.ascii	"no-limit-modes\000"
	.align	3
.LC375:
	.ascii	"no-temporal-mvp\000"
	.align	3
.LC376:
	.ascii	"no-weightp\000"
	.align	3
.LC377:
	.ascii	"no-weightb\000"
	.align	3
.LC378:
	.ascii	"no-analyze-src-pics\000"
	.align	3
.LC379:
	.ascii	"no-deblock\000"
	.align	3
.LC380:
	.ascii	"no-sao\000"
	.align	3
.LC381:
	.ascii	"no-sao-non-deblock\000"
	.align	3
.LC382:
	.ascii	"no-early-skip\000"
	.align	3
.LC383:
	.ascii	"no-rskip\000"
	.align	3
.LC384:
	.ascii	"no-fast-intra\000"
	.align	3
.LC385:
	.ascii	"no-cu-lossless\000"
	.align	3
.LC386:
	.ascii	"no-b-intra\000"
	.align	3
.LC387:
	.ascii	"no-splitrd-skip\000"
	.align	3
.LC388:
	.ascii	"no-rd-refine\000"
	.align	3
.LC389:
	.ascii	"no-lossless\000"
	.align	3
.LC390:
	.ascii	"abr\000"
	.align	3
.LC391:
	.ascii	"cqp\000"
	.align	3
.LC392:
	.ascii	"cbr\000"
	.align	3
.LC393:
	.ascii	"no-slow-firstpass\000"
	.align	3
.LC394:
	.ascii	"no-cutree\000"
	.align	3
.LC395:
	.ascii	"no-strict-cbr\000"
	.align	3
.LC396:
	.ascii	"no-rc-grain\000"
	.align	3
.LC397:
	.ascii	"no-const-vbv\000"
	.align	3
.LC398:
	.ascii	"no-vui-timing-info\000"
	.align	3
.LC399:
	.ascii	"no-vui-hrd-info\000"
	.align	3
.LC400:
	.ascii	"no-opt-qp-pps\000"
	.align	3
.LC401:
	.ascii	"no-opt-ref-list-length-pps\000"
	.align	3
.LC402:
	.ascii	"no-multi-pass-opt-rps\000"
	.align	3
.LC403:
	.ascii	"no-opt-cu-delta-qp\000"
	.align	3
.LC404:
	.ascii	"no-aq-motion\000"
	.align	3
.LC405:
	.ascii	"no-hdr\000"
	.align	3
.LC406:
	.ascii	"no-hdr-opt\000"
	.align	3
.LC407:
	.ascii	"no-dhdr10-opt\000"
	.align	3
.LC408:
	.ascii	"no-limit-sao\000"
	.align	3
.LC409:
	.ascii	"no-lowpass-dct\000"
	.align	3
.LC410:
	.ascii	"cpuid=%d\000"
	.align	3
.LC411:
	.ascii	" frame-threads=%d\000"
	.align	3
.LC412:
	.ascii	" numa-pools=%s\000"
	.align	3
.LC413:
	.ascii	" log-level=%d\000"
	.align	3
.LC414:
	.ascii	" csvfn=%s csv-log-level=%d\000"
	.align	3
.LC415:
	.ascii	" bitdepth=%d\000"
	.align	3
.LC416:
	.ascii	" input-csp=%d\000"
	.align	3
.LC417:
	.ascii	" fps=%u/%u\000"
	.align	3
.LC418:
	.ascii	" input-res=%dx%d\000"
	.align	3
.LC419:
	.ascii	" interlace=%d\000"
	.align	3
.LC420:
	.ascii	" total-frames=%d\000"
	.align	3
.LC421:
	.ascii	" level-idc=%d\000"
	.align	3
.LC422:
	.ascii	" high-tier=%d\000"
	.align	3
.LC423:
	.ascii	" uhd-bd=%d\000"
	.align	3
.LC424:
	.ascii	" ref=%d\000"
	.align	3
.LC425:
	.ascii	" hash=%d\000"
	.align	3
.LC426:
	.ascii	" min-keyint=%d\000"
	.align	3
.LC427:
	.ascii	" keyint=%d\000"
	.align	3
.LC428:
	.ascii	" bframes=%d\000"
	.align	3
.LC429:
	.ascii	" b-adapt=%d\000"
	.align	3
.LC430:
	.ascii	" bframe-bias=%d\000"
	.align	3
.LC431:
	.ascii	" rc-lookahead=%d\000"
	.align	3
.LC432:
	.ascii	" lookahead-slices=%d\000"
	.align	3
.LC433:
	.ascii	" scenecut=%d\000"
	.align	3
.LC434:
	.ascii	" ctu=%d\000"
	.align	3
.LC435:
	.ascii	" min-cu-size=%d\000"
	.align	3
.LC436:
	.ascii	" max-tu-size=%d\000"
	.align	3
.LC437:
	.ascii	" tu-inter-depth=%d\000"
	.align	3
.LC438:
	.ascii	" tu-intra-depth=%d\000"
	.align	3
.LC439:
	.ascii	" limit-tu=%d\000"
	.align	3
.LC440:
	.ascii	" rdoq-level=%d\000"
	.align	3
.LC441:
	.ascii	" dynamic-rd=%.2f\000"
	.align	3
.LC442:
	.ascii	" nr-intra=%d\000"
	.align	3
.LC443:
	.ascii	" nr-inter=%d\000"
	.align	3
.LC444:
	.ascii	" max-merge=%d\000"
	.align	3
.LC445:
	.ascii	" limit-refs=%d\000"
	.align	3
.LC446:
	.ascii	" me=%d\000"
	.align	3
.LC447:
	.ascii	" subme=%d\000"
	.align	3
.LC448:
	.ascii	" merange=%d\000"
	.align	3
.LC449:
	.ascii	"=%d:%d\000"
	.align	3
.LC450:
	.ascii	" rd=%d\000"
	.align	3
.LC451:
	.ascii	" rdpenalty=%d\000"
	.align	3
.LC452:
	.ascii	" psy-rd=%.2f\000"
	.align	3
.LC453:
	.ascii	" psy-rdoq=%.2f\000"
	.align	3
.LC454:
	.ascii	" analysis-reuse-mode=%d\000"
	.align	3
.LC455:
	.ascii	" cbqpoffs=%d\000"
	.align	3
.LC456:
	.ascii	" crqpoffs=%d\000"
	.align	3
.LC457:
	.ascii	" rc=%s\000"
	.align	3
.LC458:
	.ascii	" crf=%.1f\000"
	.align	3
.LC459:
	.ascii	" bitrate=%d\000"
	.align	3
.LC460:
	.ascii	" qcomp=%.2f qpstep=%d\000"
	.align	3
.LC461:
	.ascii	" stats-write=%d\000"
	.align	3
.LC462:
	.ascii	" stats-read=%d\000"
	.align	3
.LC463:
	.ascii	" cplxblur=%.1f qblur=%.1f\000"
	.align	3
.LC464:
	.ascii	" vbv-maxrate=%d vbv-bufsize=%d vbv-init=%.1f\000"
	.align	3
.LC465:
	.ascii	" vbv-end=%.1f vbv-end-fr-adj=%.1f\000"
	.align	3
.LC466:
	.ascii	" crf-max=%.1f crf-min=%.1f\000"
	.align	3
.LC467:
	.ascii	" qp=%d\000"
	.align	3
.LC468:
	.ascii	" ipratio=%.2f\000"
	.align	3
.LC469:
	.ascii	" pbratio=%.2f\000"
	.align	3
.LC470:
	.ascii	" aq-mode=%d\000"
	.align	3
.LC471:
	.ascii	" aq-strength=%.2f\000"
	.align	3
.LC472:
	.ascii	" zone-count=%d\000"
	.align	3
.LC473:
	.ascii	" zones: start-frame=%d end-frame=%d\000"
	.align	3
.LC474:
	.ascii	" bitrate-factor=%f\000"
	.align	3
.LC475:
	.ascii	" qg-size=%d\000"
	.align	3
.LC476:
	.ascii	" qpmax=%d qpmin=%d\000"
	.align	3
.LC477:
	.ascii	" sar=%d\000"
	.align	3
.LC478:
	.ascii	" sar-width : sar-height=%d:%d\000"
	.align	3
.LC479:
	.ascii	" overscan=%d\000"
	.align	3
.LC480:
	.ascii	" overscan-crop=%d\000"
	.align	3
.LC481:
	.ascii	" videoformat=%d\000"
	.align	3
.LC482:
	.ascii	" range=%d\000"
	.align	3
.LC483:
	.ascii	" colorprim=%d\000"
	.align	3
.LC484:
	.ascii	" transfer=%d\000"
	.align	3
.LC485:
	.ascii	" colormatrix=%d\000"
	.align	3
.LC486:
	.ascii	" chromaloc=%d\000"
	.align	3
.LC487:
	.ascii	" chromaloc-top=%d chromaloc-bottom=%d\000"
	.align	3
.LC488:
	.ascii	" display-window=%d\000"
	.align	3
.LC489:
	.ascii	" left=%d top=%d right=%d bottom=%d\000"
	.align	3
.LC490:
	.ascii	" master-display=%s\000"
	.align	3
.LC491:
	.ascii	" max-cll=%hu,%hu\000"
	.align	3
.LC492:
	.ascii	" min-luma=%hu\000"
	.align	3
.LC493:
	.ascii	" max-luma=%hu\000"
	.align	3
.LC494:
	.ascii	" log2-max-poc-lsb=%d\000"
	.align	3
.LC495:
	.ascii	" slices=%d\000"
	.align	3
.LC496:
	.ascii	" scenecut-bias=%.2f\000"
	.align	3
.LC497:
	.ascii	" analysis-reuse-level=%d\000"
	.align	3
.LC498:
	.ascii	" scale-factor=%d\000"
	.align	3
.LC499:
	.ascii	" refine-intra=%d\000"
	.align	3
.LC500:
	.ascii	" refine-inter=%d\000"
	.align	3
.LC501:
	.ascii	" refine-mv=%d\000"
	.align	3
.LC502:
	.ascii	" ctu-info=%d\000"
	.align	3
.LC503:
	.ascii	" refine-mv-type=%d\000"
	.align	3
.LC504:
	.ascii	" copy-pic=%d\000"
	.text
	.align	2
	.align	3
	.globl	_ZN4x26517x265_param2stringEP10x265_paramii
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26517x265_param2stringEP10x265_paramii
	.type	_ZN4x26517x265_param2stringEP10x265_paramii, @function
_ZN4x26517x265_param2stringEP10x265_paramii:
	.frame	$sp,96,$31		# vars= 0, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	daddiu	$sp,$sp,-96
	sd	$28,72($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26517x265_param2stringEP10x265_paramii)))
	daddu	$28,$28,$25
	sd	$17,16($sp)
	move	$17,$4
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26517x265_param2stringEP10x265_paramii)))
	li	$4,2000			# 0x7d0
	sd	$21,48($sp)
	ld	$25,%call16(_ZN4x26511x265_mallocEm)($28)
	move	$21,$6
	sd	$20,40($sp)
	move	$20,$5
	sd	$19,32($sp)
	sd	$31,88($sp)
	sd	$fp,80($sp)
	sd	$23,64($sp)
	sd	$22,56($sp)
	sd	$18,24($sp)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511x265_mallocEm
1:	jalr	$25
	sd	$16,8($sp)

	beq	$2,$0,.L1254
	move	$19,$2

	ld	$5,%got_page(.LC410)($28)
	move	$4,$2
	ld	$25,%call16(sprintf)($28)
	lw	$6,0($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC410)

	ld	$5,%got_page(.LC411)($28)
	lw	$6,4($17)
	daddu	$16,$19,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC411)

	ld	$6,8($17)
	beq	$6,$0,.L1256
	daddu	$16,$16,$2

	ld	$5,%got_page(.LC412)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC412)

	daddu	$16,$16,$2
.L1256:
	lw	$2,16($17)
	bne	$2,$0,.L1335
	ld	$6,%got_page(.LC52)($28)

	ld	$6,%got_page(.LC352)($28)
	move	$4,$16
	ld	$18,%got_page(.LC8)($28)
	ld	$25,%call16(sprintf)($28)
	daddiu	$6,$6,%got_ofst(.LC352)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,20($17)
	bne	$3,$0,.L1336
	daddu	$16,$16,$2

.L1438:
	ld	$6,%got_page(.LC353)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC353)

	lw	$3,24($17)
	bne	$3,$0,.L1337
	daddu	$16,$16,$2

.L1439:
	ld	$6,%got_page(.LC354)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC354)

	lw	$3,32($17)
	bne	$3,$0,.L1338
	daddu	$16,$16,$2

.L1440:
	ld	$6,%got_page(.LC355)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC355)

	lw	$3,36($17)
	bne	$3,$0,.L1339
	daddu	$16,$16,$2

.L1441:
	ld	$6,%got_page(.LC356)($28)
	daddiu	$6,$6,%got_ofst(.LC356)
.L1261:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC413)($28)
	lw	$6,40($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC413)

	ld	$6,48($17)
	beq	$6,$0,.L1262
	daddu	$16,$16,$2

	ld	$5,%got_page(.LC414)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	lw	$7,44($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC414)

	daddu	$16,$16,$2
.L1262:
	ld	$5,%got_page(.LC415)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	lw	$6,56($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC415)

	ld	$5,%got_page(.LC416)($28)
	lw	$6,60($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC416)

	ld	$5,%got_page(.LC417)($28)
	lw	$7,68($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	lw	$6,64($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC417)

	lw	$7,76($17)
	lw	$6,72($17)
	daddu	$16,$16,$2
	ld	$5,%got_page(.LC418)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	subu	$7,$7,$21
	subu	$6,$6,$20
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC418)

	ld	$5,%got_page(.LC419)($28)
	lw	$6,80($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC419)

	ld	$5,%got_page(.LC420)($28)
	lw	$6,84($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC420)

	ld	$5,%got_page(.LC421)($28)
	lw	$6,88($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC421)

	ld	$5,%got_page(.LC422)($28)
	lw	$6,92($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC422)

	ld	$5,%got_page(.LC423)($28)
	lw	$6,96($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC423)

	ld	$5,%got_page(.LC424)($28)
	lw	$6,100($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC424)

	lw	$3,104($17)
	bne	$3,$0,.L1340
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC357)($28)
	daddiu	$6,$6,%got_ofst(.LC357)
.L1263:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,108($17)
	bne	$3,$0,.L1341
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC358)($28)
	daddiu	$6,$6,%got_ofst(.LC358)
.L1264:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,112($17)
	bne	$3,$0,.L1342
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC359)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC359)

	lw	$3,116($17)
	bne	$3,$0,.L1343
	daddu	$16,$16,$2

.L1445:
	ld	$6,%got_page(.LC360)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC360)

	lw	$3,120($17)
	bne	$3,$0,.L1344
	daddu	$16,$16,$2

.L1446:
	ld	$6,%got_page(.LC361)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC361)

	lw	$3,124($17)
	bne	$3,$0,.L1345
	daddu	$16,$16,$2

.L1447:
	ld	$6,%got_page(.LC362)($28)
	daddiu	$6,$6,%got_ofst(.LC362)
.L1268:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC425)($28)
	lw	$6,128($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC425)

	lw	$3,132($17)
	bne	$3,$0,.L1346
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC363)($28)
	daddiu	$6,$6,%got_ofst(.LC363)
.L1269:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,136($17)
	bne	$3,$0,.L1347
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC364)($28)
	daddiu	$6,$6,%got_ofst(.LC364)
.L1270:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC426)($28)
	lw	$6,140($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC426)

	ld	$5,%got_page(.LC427)($28)
	lw	$6,144($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC427)

	ld	$5,%got_page(.LC428)($28)
	lw	$6,148($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC428)

	ld	$5,%got_page(.LC429)($28)
	lw	$6,152($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC429)

	lw	$3,156($17)
	bne	$3,$0,.L1348
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC365)($28)
	daddiu	$6,$6,%got_ofst(.LC365)
.L1271:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC430)($28)
	lw	$6,160($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC430)

	ld	$5,%got_page(.LC431)($28)
	lw	$6,164($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC431)

	ld	$5,%got_page(.LC432)($28)
	lw	$6,168($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC432)

	ld	$5,%got_page(.LC433)($28)
	lw	$6,172($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC433)

	lw	$3,176($17)
	bne	$3,$0,.L1349
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC366)($28)
	daddiu	$6,$6,%got_ofst(.LC366)
.L1272:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC434)($28)
	lw	$6,180($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC434)

	ld	$5,%got_page(.LC435)($28)
	lw	$6,184($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC435)

	lw	$3,188($17)
	bne	$3,$0,.L1350
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC367)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC367)

	lw	$3,192($17)
	bne	$3,$0,.L1351
	daddu	$16,$16,$2

.L1448:
	ld	$6,%got_page(.LC368)($28)
	daddiu	$6,$6,%got_ofst(.LC368)
.L1274:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC436)($28)
	lw	$6,196($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC436)

	ld	$5,%got_page(.LC437)($28)
	lw	$6,200($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC437)

	ld	$5,%got_page(.LC438)($28)
	lw	$6,204($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC438)

	ld	$5,%got_page(.LC439)($28)
	lw	$6,208($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC439)

	ld	$5,%got_page(.LC440)($28)
	lw	$6,212($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC440)

	ld	$5,%got_page(.LC441)($28)
	ld	$6,736($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC441)

	lw	$3,732($17)
	bne	$3,$0,.L1352
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC369)($28)
	daddiu	$6,$6,%got_ofst(.LC369)
.L1275:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,216($17)
	bne	$3,$0,.L1353
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC370)($28)
	daddiu	$6,$6,%got_ofst(.LC370)
.L1276:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,220($17)
	bne	$3,$0,.L1354
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC371)($28)
	daddiu	$6,$6,%got_ofst(.LC371)
.L1277:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC442)($28)
	lw	$6,224($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC442)

	ld	$5,%got_page(.LC443)($28)
	lw	$6,228($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC443)

	lw	$3,240($17)
	bne	$3,$0,.L1355
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC372)($28)
	daddiu	$6,$6,%got_ofst(.LC372)
.L1278:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,244($17)
	bne	$3,$0,.L1356
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC373)($28)
	daddiu	$6,$6,%got_ofst(.LC373)
.L1279:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC444)($28)
	lw	$6,248($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC444)

	ld	$5,%got_page(.LC445)($28)
	lw	$6,252($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC445)

	lw	$3,256($17)
	bne	$3,$0,.L1357
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC374)($28)
	daddiu	$6,$6,%got_ofst(.LC374)
.L1280:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC446)($28)
	lw	$6,260($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC446)

	ld	$5,%got_page(.LC447)($28)
	lw	$6,264($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC447)

	ld	$5,%got_page(.LC448)($28)
	lw	$6,268($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC448)

	lw	$3,272($17)
	bne	$3,$0,.L1358
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC375)($28)
	daddiu	$6,$6,%got_ofst(.LC375)
.L1281:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,276($17)
	bne	$3,$0,.L1359
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC376)($28)
	daddiu	$6,$6,%got_ofst(.LC376)
.L1282:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,280($17)
	bne	$3,$0,.L1360
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC377)($28)
	daddiu	$6,$6,%got_ofst(.LC377)
.L1283:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,284($17)
	bne	$3,$0,.L1361
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC378)($28)
	daddiu	$6,$6,%got_ofst(.LC378)
.L1284:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,288($17)
	bne	$3,$0,.L1362
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC379)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC379)

	lw	$3,288($17)
	bne	$3,$0,.L1428
	daddu	$16,$16,$2

.L1286:
	lw	$2,300($17)
	bne	$2,$0,.L1363
	ld	$6,%got_page(.LC108)($28)

	ld	$6,%got_page(.LC380)($28)
	daddiu	$6,$6,%got_ofst(.LC380)
.L1287:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,304($17)
	bne	$3,$0,.L1364
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC381)($28)
	daddiu	$6,$6,%got_ofst(.LC381)
.L1288:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC450)($28)
	lw	$6,308($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC450)

	lw	$3,312($17)
	bne	$3,$0,.L1365
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC382)($28)
	daddiu	$6,$6,%got_ofst(.LC382)
.L1289:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,316($17)
	bne	$3,$0,.L1366
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC383)($28)
	daddiu	$6,$6,%got_ofst(.LC383)
.L1290:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,320($17)
	bne	$3,$0,.L1367
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC384)($28)
	daddiu	$6,$6,%got_ofst(.LC384)
.L1291:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,324($17)
	bne	$3,$0,.L1368
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC68)($28)
	daddiu	$6,$6,%got_ofst(.LC68)
.L1292:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,328($17)
	bne	$3,$0,.L1369
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC385)($28)
	daddiu	$6,$6,%got_ofst(.LC385)
.L1293:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,332($17)
	bne	$3,$0,.L1370
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC386)($28)
	daddiu	$6,$6,%got_ofst(.LC386)
.L1294:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,828($17)
	bne	$3,$0,.L1371
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC387)($28)
	daddiu	$6,$6,%got_ofst(.LC387)
.L1295:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC451)($28)
	lw	$6,336($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC451)

	ld	$5,%got_page(.LC452)($28)
	ld	$6,344($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC452)

	ld	$5,%got_page(.LC453)($28)
	ld	$6,352($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC453)

	lw	$3,360($17)
	bne	$3,$0,.L1372
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC388)($28)
	daddiu	$6,$6,%got_ofst(.LC388)
.L1296:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC454)($28)
	lw	$6,364($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC454)

	lw	$3,376($17)
	bne	$3,$0,.L1373
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC389)($28)
	daddiu	$6,$6,%got_ofst(.LC389)
.L1297:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC455)($28)
	lw	$6,380($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC455)

	ld	$5,%got_page(.LC456)($28)
	lw	$6,384($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC456)

	lw	$3,392($17)
	bne	$3,$0,.L1298
	daddu	$4,$16,$2

	lw	$3,400($17)
	lw	$2,456($17)
	beq	$3,$2,.L1374
	ld	$6,%got_page(.LC392)($28)

	ld	$6,%got_page(.LC390)($28)
	daddiu	$6,$6,%got_ofst(.LC390)
.L1299:
	ld	$5,%got_page(.LC457)($28)
	daddiu	$16,$4,7
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC457)

	lw	$2,392($17)
	bne	$2,$0,.L1429
	li	$3,2			# 0x2

	ld	$5,%got_page(.LC459)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	lw	$6,400($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC459)

	daddu	$16,$16,$2
.L1302:
	ld	$5,%got_page(.LC460)($28)
	move	$4,$16
	lw	$7,440($17)
	ld	$25,%call16(sprintf)($28)
	ld	$6,408($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC460)

	ld	$5,%got_page(.LC461)($28)
	lw	$6,496($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC461)

	ld	$5,%got_page(.LC462)($28)
	lw	$6,500($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC462)

	lw	$3,500($17)
	bne	$3,$0,.L1430
	daddu	$16,$16,$2

	lw	$2,496($17)
	bne	$2,$0,.L1334
	nop

.L1304:
	lw	$7,460($17)
	bne	$7,$0,.L1431
	move	$4,$16

.L1306:
	ld	$3,392($17)
	li	$2,1			# 0x1
	beq	$3,$2,.L1308
	move	$4,$16

	ld	$5,%got_page(.LC468)($28)
	ld	$25,%call16(sprintf)($28)
	ld	$6,416($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC468)

	lw	$3,148($17)
	bne	$3,$0,.L1432
	daddu	$16,$16,$2

.L1308:
	ld	$5,%got_page(.LC470)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	lw	$6,444($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC470)

	ld	$5,%got_page(.LC471)($28)
	ld	$6,448($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC471)

	lw	$3,472($17)
	bne	$3,$0,.L1377
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC394)($28)
	daddiu	$6,$6,%got_ofst(.LC394)
.L1309:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC472)($28)
	lw	$6,532($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC472)

	lw	$3,532($17)
	blez	$3,.L1310
	daddu	$16,$16,$2

	ld	$22,%got_page(.LC473)($28)
	move	$fp,$0
	move	$20,$0
	ld	$23,%got_page(.LC474)($28)
	ld	$21,%got_page(.LC467)($28)
	daddiu	$22,$22,%got_ofst(.LC473)
	daddiu	$23,$23,%got_ofst(.LC474)
	b	.L1313
	daddiu	$21,$21,%got_ofst(.LC467)

	.align	3
.L1433:
	lw	$6,12($2)
	addiu	$20,$20,1
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$fp,$fp,20

	daddu	$16,$16,$2
	lw	$2,532($17)
	slt	$2,$20,$2
	beq	$2,$0,.L1310
	nop

.L1313:
	ld	$2,536($17)
	move	$4,$16
	move	$5,$22
	ld	$25,%call16(sprintf)($28)
	daddu	$2,$2,$fp
	lw	$7,4($2)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	lw	$6,0($2)

	ld	$3,536($17)
	move	$5,$21
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	daddu	$2,$3,$fp
	lw	$3,8($2)
	bne	$3,$0,.L1433
	move	$4,$16

	lwc1	$f0,16($2)
	move	$5,$23
	addiu	$20,$20,1
	daddiu	$fp,$fp,20
	cvt.d.s	$f0,$f0
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	dmfc1	$6,$f0

	daddu	$16,$16,$2
	lw	$2,532($17)
	slt	$2,$20,$2
	bne	$2,$0,.L1313
	nop

.L1310:
	lw	$2,552($17)
	bne	$2,$0,.L1378
	ld	$6,%got_page(.LC144)($28)

	ld	$6,%got_page(.LC395)($28)
	daddiu	$6,$6,%got_ofst(.LC395)
.L1314:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC475)($28)
	lw	$6,556($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC475)

	lw	$3,560($17)
	bne	$3,$0,.L1379
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC396)($28)
	daddiu	$6,$6,%got_ofst(.LC396)
.L1315:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC476)($28)
	lw	$7,568($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	lw	$6,564($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC476)

	lw	$3,572($17)
	bne	$3,$0,.L1380
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC397)($28)
	daddiu	$6,$6,%got_ofst(.LC397)
.L1316:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC477)($28)
	lw	$6,576($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC477)

	lw	$4,576($17)
	li	$3,255			# 0xff
	beq	$4,$3,.L1434
	daddu	$16,$16,$2

.L1317:
	ld	$5,%got_page(.LC479)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	lw	$6,588($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC479)

	lw	$3,588($17)
	bne	$3,$0,.L1435
	daddu	$16,$16,$2

.L1318:
	ld	$5,%got_page(.LC481)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	lw	$6,600($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC481)

	ld	$5,%got_page(.LC482)($28)
	lw	$6,604($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC482)

	ld	$5,%got_page(.LC483)($28)
	lw	$6,612($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC483)

	ld	$5,%got_page(.LC484)($28)
	lw	$6,616($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC484)

	ld	$5,%got_page(.LC485)($28)
	lw	$6,620($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC485)

	ld	$5,%got_page(.LC486)($28)
	lw	$6,624($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC486)

	lw	$3,624($17)
	bne	$3,$0,.L1436
	daddu	$16,$16,$2

.L1319:
	ld	$5,%got_page(.LC488)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	lw	$6,636($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC488)

	lw	$3,636($17)
	bne	$3,$0,.L1437
	daddu	$16,$16,$2

.L1320:
	ld	$6,656($17)
	beq	$6,$0,.L1321
	move	$4,$16

	ld	$5,%got_page(.LC490)($28)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC490)

	daddu	$16,$16,$2
.L1321:
	ld	$5,%got_page(.LC491)($28)
	move	$4,$16
	lhu	$7,666($17)
	ld	$25,%call16(sprintf)($28)
	lhu	$6,664($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC491)

	ld	$5,%got_page(.LC492)($28)
	lhu	$6,668($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC492)

	ld	$5,%got_page(.LC493)($28)
	lhu	$6,670($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC493)

	ld	$5,%got_page(.LC494)($28)
	lw	$6,672($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC494)

	lw	$3,676($17)
	bne	$3,$0,.L1381
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC398)($28)
	daddiu	$6,$6,%got_ofst(.LC398)
.L1322:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,680($17)
	bne	$3,$0,.L1382
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC399)($28)
	daddiu	$6,$6,%got_ofst(.LC399)
.L1323:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC495)($28)
	lw	$6,684($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC495)

	lw	$3,688($17)
	bne	$3,$0,.L1383
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC400)($28)
	daddiu	$6,$6,%got_ofst(.LC400)
.L1324:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,692($17)
	bne	$3,$0,.L1384
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC401)($28)
	daddiu	$6,$6,%got_ofst(.LC401)
.L1325:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,696($17)
	bne	$3,$0,.L1385
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC402)($28)
	daddiu	$6,$6,%got_ofst(.LC402)
.L1326:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC496)($28)
	ld	$6,704($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC496)

	lw	$3,716($17)
	bne	$3,$0,.L1386
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC403)($28)
	daddiu	$6,$6,%got_ofst(.LC403)
.L1327:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,728($17)
	bne	$3,$0,.L1387
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC404)($28)
	daddiu	$6,$6,%got_ofst(.LC404)
.L1328:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,744($17)
	bne	$3,$0,.L1388
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC405)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC405)

	lw	$3,748($17)
	bne	$3,$0,.L1389
	daddu	$16,$16,$2

.L1443:
	ld	$6,%got_page(.LC406)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC406)

	lw	$3,768($17)
	bne	$3,$0,.L1390
	daddu	$16,$16,$2

.L1444:
	ld	$6,%got_page(.LC407)($28)
	daddiu	$6,$6,%got_ofst(.LC407)
.L1331:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC497)($28)
	lw	$6,752($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC497)

	ld	$5,%got_page(.LC498)($28)
	lw	$6,780($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC498)

	ld	$5,%got_page(.LC499)($28)
	lw	$6,784($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC499)

	ld	$5,%got_page(.LC500)($28)
	lw	$6,788($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC500)

	ld	$5,%got_page(.LC501)($28)
	lw	$6,792($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC501)

	lw	$3,756($17)
	bne	$3,$0,.L1391
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC408)($28)
	daddiu	$6,$6,%got_ofst(.LC408)
.L1332:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC502)($28)
	lw	$6,772($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC502)

	lw	$3,836($17)
	bne	$3,$0,.L1392
	daddu	$16,$16,$2

	ld	$6,%got_page(.LC409)($28)
	daddiu	$6,$6,%got_ofst(.LC409)
.L1333:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	ld	$5,%got_page(.LC503)($28)
	lw	$6,856($17)
	daddu	$16,$16,$2
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC503)

	ld	$5,%got_page(.LC504)($28)
	lw	$6,860($17)
	daddu	$4,$16,$2
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC504)

.L1254:
	ld	$31,88($sp)
	move	$2,$19
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
.L1335:
	move	$4,$16
	ld	$18,%got_page(.LC8)($28)
	ld	$25,%call16(sprintf)($28)
	daddiu	$6,$6,%got_ofst(.LC52)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	lw	$3,20($17)
	beq	$3,$0,.L1438
	daddu	$16,$16,$2

.L1336:
	ld	$6,%got_page(.LC40)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC40)

	lw	$3,24($17)
	beq	$3,$0,.L1439
	daddu	$16,$16,$2

.L1337:
	ld	$6,%got_page(.LC41)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC41)

	lw	$3,32($17)
	beq	$3,$0,.L1440
	daddu	$16,$16,$2

.L1338:
	ld	$6,%got_page(.LC21)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC21)

	lw	$3,36($17)
	beq	$3,$0,.L1441
	daddu	$16,$16,$2

.L1339:
	ld	$6,%got_page(.LC22)($28)
	b	.L1261
	daddiu	$6,$6,%got_ofst(.LC22)

	.align	3
.L1380:
	ld	$6,%got_page(.LC201)($28)
	b	.L1316
	daddiu	$6,$6,%got_ofst(.LC201)

	.align	3
.L1379:
	ld	$6,%got_page(.LC134)($28)
	b	.L1315
	daddiu	$6,$6,%got_ofst(.LC134)

	.align	3
.L1378:
	b	.L1314
	daddiu	$6,$6,%got_ofst(.LC144)

	.align	3
.L1373:
	ld	$6,%got_page(.LC71)($28)
	b	.L1297
	daddiu	$6,$6,%got_ofst(.LC71)

	.align	3
.L1372:
	ld	$6,%got_page(.LC100)($28)
	b	.L1296
	daddiu	$6,$6,%got_ofst(.LC100)

	.align	3
.L1371:
	ld	$6,%got_page(.LC208)($28)
	b	.L1295
	daddiu	$6,$6,%got_ofst(.LC208)

	.align	3
.L1370:
	ld	$6,%got_page(.LC102)($28)
	b	.L1294
	daddiu	$6,$6,%got_ofst(.LC102)

	.align	3
.L1369:
	ld	$6,%got_page(.LC72)($28)
	b	.L1293
	daddiu	$6,$6,%got_ofst(.LC72)

	.align	3
.L1368:
	ld	$6,%got_page(.LC69)($28)
	b	.L1292
	daddiu	$6,$6,%got_ofst(.LC69)

	.align	3
.L1367:
	ld	$6,%got_page(.LC75)($28)
	b	.L1291
	daddiu	$6,$6,%got_ofst(.LC75)

	.align	3
.L1366:
	ld	$6,%got_page(.LC65)($28)
	b	.L1290
	daddiu	$6,$6,%got_ofst(.LC65)

	.align	3
.L1429:
	beq	$2,$3,.L1442
	li	$3,1			# 0x1

	bne	$2,$3,.L1306
	ld	$25,%call16(sprintf)($28)

	ld	$5,%got_page(.LC467)($28)
	move	$4,$16
	lw	$6,396($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC467)

	b	.L1306
	daddu	$16,$16,$2

	.align	3
.L1298:
	li	$2,2			# 0x2
	beq	$3,$2,.L1375
	nop

	ld	$6,%got_page(.LC391)($28)
	b	.L1299
	daddiu	$6,$6,%got_ofst(.LC391)

	.align	3
.L1388:
	ld	$6,%got_page(.LC196)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC196)

	lw	$3,748($17)
	beq	$3,$0,.L1443
	daddu	$16,$16,$2

.L1389:
	ld	$6,%got_page(.LC197)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC197)

	lw	$3,768($17)
	beq	$3,$0,.L1444
	daddu	$16,$16,$2

.L1390:
	ld	$6,%got_page(.LC200)($28)
	b	.L1331
	daddiu	$6,$6,%got_ofst(.LC200)

	.align	3
.L1387:
	ld	$6,%got_page(.LC192)($28)
	b	.L1328
	daddiu	$6,$6,%got_ofst(.LC192)

	.align	3
.L1386:
	ld	$6,%got_page(.LC189)($28)
	b	.L1327
	daddiu	$6,$6,%got_ofst(.LC189)

	.align	3
.L1385:
	ld	$6,%got_page(.LC186)($28)
	b	.L1326
	daddiu	$6,$6,%got_ofst(.LC186)

	.align	3
.L1384:
	ld	$6,%got_page(.LC185)($28)
	b	.L1325
	daddiu	$6,$6,%got_ofst(.LC185)

	.align	3
.L1383:
	ld	$6,%got_page(.LC184)($28)
	b	.L1324
	daddiu	$6,$6,%got_ofst(.LC184)

	.align	3
.L1382:
	ld	$6,%got_page(.LC181)($28)
	b	.L1323
	daddiu	$6,$6,%got_ofst(.LC181)

	.align	3
.L1381:
	ld	$6,%got_page(.LC180)($28)
	b	.L1322
	daddiu	$6,$6,%got_ofst(.LC180)

	.align	3
.L1392:
	ld	$6,%got_page(.LC209)($28)
	b	.L1333
	daddiu	$6,$6,%got_ofst(.LC209)

	.align	3
.L1391:
	ld	$6,%got_page(.LC198)($28)
	b	.L1332
	daddiu	$6,$6,%got_ofst(.LC198)

	.align	3
.L1377:
	ld	$6,%got_page(.LC142)($28)
	b	.L1309
	daddiu	$6,$6,%got_ofst(.LC142)

	.align	3
.L1342:
	ld	$6,%got_page(.LC50)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC50)

	lw	$3,116($17)
	beq	$3,$0,.L1445
	daddu	$16,$16,$2

.L1343:
	ld	$6,%got_page(.LC111)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC111)

	lw	$3,120($17)
	beq	$3,$0,.L1446
	daddu	$16,$16,$2

.L1344:
	ld	$6,%got_page(.LC114)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC114)

	lw	$3,124($17)
	beq	$3,$0,.L1447
	daddu	$16,$16,$2

.L1345:
	ld	$6,%got_page(.LC112)($28)
	b	.L1268
	daddiu	$6,$6,%got_ofst(.LC112)

	.align	3
.L1341:
	ld	$6,%got_page(.LC51)($28)
	b	.L1264
	daddiu	$6,$6,%got_ofst(.LC51)

	.align	3
.L1340:
	ld	$6,%got_page(.LC45)($28)
	b	.L1263
	daddiu	$6,$6,%got_ofst(.LC45)

	.align	3
.L1350:
	ld	$6,%got_page(.LC60)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC60)

	lw	$3,192($17)
	beq	$3,$0,.L1448
	daddu	$16,$16,$2

.L1351:
	ld	$6,%got_page(.LC61)($28)
	b	.L1274
	daddiu	$6,$6,%got_ofst(.LC61)

	.align	3
.L1349:
	ld	$6,%got_page(.LC77)($28)
	b	.L1272
	daddiu	$6,$6,%got_ofst(.LC77)

	.align	3
.L1348:
	ld	$6,%got_page(.LC113)($28)
	b	.L1271
	daddiu	$6,$6,%got_ofst(.LC113)

	.align	3
.L1347:
	ld	$6,%got_page(.LC76)($28)
	b	.L1270
	daddiu	$6,$6,%got_ofst(.LC76)

	.align	3
.L1346:
	ld	$6,%got_page(.LC80)($28)
	b	.L1269
	daddiu	$6,$6,%got_ofst(.LC80)

	.align	3
.L1365:
	ld	$6,%got_page(.LC64)($28)
	b	.L1289
	daddiu	$6,$6,%got_ofst(.LC64)

	.align	3
.L1364:
	ld	$6,%got_page(.LC109)($28)
	b	.L1288
	daddiu	$6,$6,%got_ofst(.LC109)

	.align	3
.L1363:
	b	.L1287
	daddiu	$6,$6,%got_ofst(.LC108)

	.align	3
.L1362:
	ld	$6,%got_page(.LC104)($28)
	move	$4,$16
	daddiu	$5,$18,%got_ofst(.LC8)
	ld	$25,%call16(sprintf)($28)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$6,$6,%got_ofst(.LC104)

	lw	$3,288($17)
	beq	$3,$0,.L1286
	daddu	$16,$16,$2

.L1428:
	ld	$5,%got_page(.LC449)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	lw	$7,296($17)
	lw	$6,292($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC449)

	b	.L1286
	daddu	$16,$16,$2

	.align	3
.L1361:
	ld	$6,%got_page(.LC178)($28)
	b	.L1284
	daddiu	$6,$6,%got_ofst(.LC178)

	.align	3
.L1360:
	ld	$6,%got_page(.LC92)($28)
	b	.L1283
	daddiu	$6,$6,%got_ofst(.LC92)

	.align	3
.L1359:
	ld	$6,%got_page(.LC91)($28)
	b	.L1282
	daddiu	$6,$6,%got_ofst(.LC91)

	.align	3
.L1358:
	ld	$6,%got_page(.LC63)($28)
	b	.L1281
	daddiu	$6,$6,%got_ofst(.LC63)

	.align	3
.L1357:
	ld	$6,%got_page(.LC90)($28)
	b	.L1280
	daddiu	$6,$6,%got_ofst(.LC90)

	.align	3
.L1356:
	ld	$6,%got_page(.LC70)($28)
	b	.L1279
	daddiu	$6,$6,%got_ofst(.LC70)

	.align	3
.L1355:
	ld	$6,%got_page(.LC73)($28)
	b	.L1278
	daddiu	$6,$6,%got_ofst(.LC73)

	.align	3
.L1354:
	ld	$6,%got_page(.LC67)($28)
	b	.L1277
	daddiu	$6,$6,%got_ofst(.LC67)

	.align	3
.L1353:
	ld	$6,%got_page(.LC101)($28)
	b	.L1276
	daddiu	$6,$6,%got_ofst(.LC101)

	.align	3
.L1352:
	ld	$6,%got_page(.LC195)($28)
	b	.L1275
	daddiu	$6,$6,%got_ofst(.LC195)

	.align	3
.L1437:
	ld	$5,%got_page(.LC489)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	lw	$9,652($17)
	lw	$8,644($17)
	daddiu	$5,$5,%got_ofst(.LC489)
	lw	$7,648($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	lw	$6,640($17)

	b	.L1320
	daddu	$16,$16,$2

	.align	3
.L1436:
	ld	$5,%got_page(.LC487)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	lw	$7,632($17)
	lw	$6,628($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC487)

	b	.L1319
	daddu	$16,$16,$2

	.align	3
.L1435:
	ld	$5,%got_page(.LC480)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	lw	$6,592($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC480)

	b	.L1318
	daddu	$16,$16,$2

	.align	3
.L1442:
	ld	$5,%got_page(.LC458)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	ld	$6,432($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC458)

	b	.L1302
	daddu	$16,$16,$2

	.align	3
.L1431:
	ld	$5,%got_page(.LC464)($28)
	ld	$25,%call16(sprintf)($28)
	lw	$6,456($17)
	ld	$8,464($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC464)

	ld	$6,840($17)
	dmtc1	$0,$f0
	dmtc1	$6,$f1
	c.eq.d	$fcc0,$f1,$f0
	bc1f	$fcc0,.L1449
	daddu	$16,$16,$2

.L1307:
	lw	$3,392($17)
	li	$2,2			# 0x2
	bne	$3,$2,.L1306
	ld	$25,%call16(sprintf)($28)

	ld	$5,%got_page(.LC466)($28)
	move	$4,$16
	ld	$7,488($17)
	ld	$6,480($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC466)

	b	.L1306
	daddu	$16,$16,$2

	.align	3
.L1430:
	ld	$5,%got_page(.LC463)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	ld	$7,512($17)
	ld	$6,520($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC463)

	lw	$3,496($17)
	beq	$3,$0,.L1304
	daddu	$16,$16,$2

	lw	$2,500($17)
	bne	$2,$0,.L1304
	nop

	.align	3
.L1334:
	lw	$2,528($17)
	bne	$2,$0,.L1376
	nop

	ld	$6,%got_page(.LC393)($28)
	daddiu	$6,$6,%got_ofst(.LC393)
.L1305:
	ld	$25,%call16(sprintf)($28)
	move	$4,$16
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$18,%got_ofst(.LC8)

	b	.L1304
	daddu	$16,$16,$2

	.align	3
.L1449:
	ld	$5,%got_page(.LC465)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	ld	$7,848($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC465)

	b	.L1307
	daddu	$16,$16,$2

	.align	3
.L1434:
	ld	$5,%got_page(.LC478)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	lw	$7,584($17)
	lw	$6,580($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC478)

	b	.L1317
	daddu	$16,$16,$2

	.align	3
.L1375:
	ld	$6,%got_page(.LC131)($28)
	b	.L1299
	daddiu	$6,$6,%got_ofst(.LC131)

	.align	3
.L1374:
	b	.L1299
	daddiu	$6,$6,%got_ofst(.LC392)

	.align	3
.L1432:
	ld	$5,%got_page(.LC469)($28)
	move	$4,$16
	ld	$25,%call16(sprintf)($28)
	ld	$6,424($17)
	.reloc	1f,R_MIPS_JALR,sprintf
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC469)

	b	.L1308
	daddu	$16,$16,$2

	.align	3
.L1376:
	ld	$6,%got_page(.LC143)($28)
	b	.L1305
	daddiu	$6,$6,%got_ofst(.LC143)

	.set	macro
	.set	reorder
	.end	_ZN4x26517x265_param2stringEP10x265_paramii
	.size	_ZN4x26517x265_param2stringEP10x265_paramii, .-_ZN4x26517x265_param2stringEP10x265_paramii
	.section	.rodata.str1.8
	.align	3
.LC505:
	.ascii	"r\000"
	.align	3
.LC506:
	.ascii	"unable to read lambda file <%s>\012\000"
	.align	3
.LC507:
	.ascii	"lambda file is incomplete\012\000"
	.align	3
.LC508:
	.ascii	" ,\000"
	.align	3
.LC509:
	.ascii	"%lf\000"
	.align	3
.LC510:
	.ascii	"lambda file contains too many values\012\000"
	.align	3
.LC511:
	.ascii	"lambda%c[%d] = %lf\012\000"
	.text
	.align	2
	.align	3
	.globl	_ZN4x26515parseLambdaFileEP10x265_param
	.set	nomips16
	.set	nomicromips
	.ent	_ZN4x26515parseLambdaFileEP10x265_param
	.type	_ZN4x26515parseLambdaFileEP10x265_param, @function
_ZN4x26515parseLambdaFileEP10x265_param:
	.frame	$sp,2192,$31		# vars= 2096, regs= 11/0, args= 0, gp= 0
	.mask	0xd0ff0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	ld	$3,544($4)
	beq	$3,$0,.L1481
	move	$2,$0

	daddiu	$sp,$sp,-2192
	sd	$28,2168($sp)
	lui	$28,%hi(%neg(%gp_rel(_ZN4x26515parseLambdaFileEP10x265_param)))
	daddu	$28,$28,$25
	sd	$4,2064($sp)
	move	$4,$3
	daddiu	$28,$28,%lo(%neg(%gp_rel(_ZN4x26515parseLambdaFileEP10x265_param)))
	sd	$18,2120($sp)
	ld	$5,%got_page(.LC505)($28)
	ld	$25,%call16(fopen)($28)
	sd	$31,2184($sp)
	daddiu	$5,$5,%got_ofst(.LC505)
	sd	$fp,2176($sp)
	sd	$23,2160($sp)
	sd	$22,2152($sp)
	sd	$21,2144($sp)
	sd	$20,2136($sp)
	sd	$19,2128($sp)
	sd	$17,2112($sp)
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	sd	$16,2104($sp)

	beq	$2,$0,.L1475
	move	$18,$2

	ld	$16,%got_page(.LC508)($28)
	move	$23,$0
	move	$19,$0
	ld	$17,%got_page(.LC509)($28)
	daddiu	$fp,$sp,2056
	ld	$22,%got_page(.LC7)($28)
	ld	$2,%got_page(.LC511)($28)
	daddiu	$16,$16,%got_ofst(.LC508)
	ld	$20,%got_disp(_ZN4x26515x265_lambda_tabE)($28)
	daddiu	$17,$17,%got_ofst(.LC509)
	daddiu	$22,$22,%got_ofst(.LC7)
	sd	$0,2056($sp)
	sd	$2,2072($sp)
.L1461:
	li	$2,50			# 0x32
	li	$4,32			# 0x20
	movz	$2,$4,$23
	move	$21,$0
	move	$3,$2
	b	.L1457
	sd	$3,2080($sp)

	.align	3
.L1477:
	ld	$25,%call16(sscanf)($28)
	move	$4,$2
	daddiu	$6,$sp,2048
	.reloc	1f,R_MIPS_JALR,sscanf
1:	jalr	$25
	move	$5,$17

	li	$4,1			# 0x1
	beq	$2,$4,.L1476
	li	$2,2			# 0x2

.L1457:
	beq	$19,$0,.L1456
	move	$4,$0

.L1453:
	ld	$25,%call16(strtok_r)($28)
	move	$6,$fp
	.reloc	1f,R_MIPS_JALR,strtok_r
1:	jalr	$25
	move	$5,$16

	bne	$2,$0,.L1477
	move	$19,$2

.L1456:
	ld	$25,%call16(fgets)($28)
	move	$6,$18
	li	$5,2048			# 0x800
	.reloc	1f,R_MIPS_JALR,fgets
1:	jalr	$25
	move	$4,$sp

	beq	$2,$0,.L1478
	ld	$25,%call16(strchr)($28)

	li	$5,35			# 0x23
	.reloc	1f,R_MIPS_JALR,strchr
1:	jalr	$25
	move	$4,$sp

	beq	$2,$0,.L1465
	nop

	sb	$0,0($2)
	b	.L1453
	move	$4,$sp

	.align	3
.L1465:
	b	.L1453
	move	$4,$sp

	.align	3
.L1476:
	beq	$23,$2,.L1479
	move	$9,$21

	ld	$2,2072($sp)
	li	$6,3			# 0x3
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	move	$5,$22
	daddiu	$20,$20,8
	ld	$8,2080($sp)
	addiu	$21,$21,1
	ld	$10,2048($sp)
	daddiu	$7,$2,%got_ofst(.LC511)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	ld	$4,2064($sp)

	ldc1	$f0,2048($sp)
	li	$2,70			# 0x46
	bne	$21,$2,.L1457
	sdc1	$f0,-8($20)

	addiu	$23,$23,1
	b	.L1461
	ld	$20,%got_disp(_ZN4x26516x265_lambda2_tabE)($28)

.L1481:
	jr	$31
	nop

	.align	3
.L1478:
	ld	$25,%call16(fclose)($28)
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	move	$4,$18

	li	$3,2			# 0x2
	bne	$23,$3,.L1480
	move	$2,$0

.L1451:
	ld	$31,2184($sp)
	ld	$fp,2176($sp)
	ld	$28,2168($sp)
	ld	$23,2160($sp)
	ld	$22,2152($sp)
	ld	$21,2144($sp)
	ld	$20,2136($sp)
	ld	$19,2128($sp)
	ld	$18,2120($sp)
	ld	$17,2112($sp)
	ld	$16,2104($sp)
	jr	$31
	daddiu	$sp,$sp,2192

.L1475:
	ld	$2,2064($sp)
	move	$6,$0
	ld	$7,%got_page(.LC506)($28)
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	move	$4,$2
	ld	$8,544($2)
	daddiu	$7,$7,%got_ofst(.LC506)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L1451
	li	$2,1			# 0x1

.L1480:
	ld	$7,%got_page(.LC507)($28)
	move	$6,$0
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	ld	$4,2064($sp)
	daddiu	$7,$7,%got_ofst(.LC507)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	b	.L1451
	li	$2,1			# 0x1

.L1479:
	ld	$7,%got_page(.LC510)($28)
	move	$6,$0
	ld	$5,%got_page(.LC7)($28)
	ld	$25,%call16(_ZN4x26511general_logEPK10x265_paramPKciS4_z)($28)
	ld	$4,2064($sp)
	daddiu	$7,$7,%got_ofst(.LC510)
	.reloc	1f,R_MIPS_JALR,_ZN4x26511general_logEPK10x265_paramPKciS4_z
1:	jalr	$25
	daddiu	$5,$5,%got_ofst(.LC7)

	ld	$25,%call16(fclose)($28)
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	move	$4,$18

	b	.L1451
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	_ZN4x26515parseLambdaFileEP10x265_param
	.size	_ZN4x26515parseLambdaFileEP10x265_param, .-_ZN4x26515parseLambdaFileEP10x265_param
	.rdata
	.align	3
	.type	_ZN4x265L11fixedRatiosE, @object
	.size	_ZN4x265L11fixedRatiosE, 128
_ZN4x265L11fixedRatiosE:
	.word	1
	.word	1
	.word	12
	.word	11
	.word	10
	.word	11
	.word	16
	.word	11
	.word	40
	.word	33
	.word	24
	.word	11
	.word	20
	.word	11
	.word	32
	.word	11
	.word	80
	.word	33
	.word	18
	.word	11
	.word	15
	.word	11
	.word	64
	.word	33
	.word	160
	.word	99
	.word	4
	.word	3
	.word	3
	.word	2
	.word	2
	.word	1
	.section	.rodata.str1.8
	.align	3
.LC512:
	.ascii	"none\000"
	.align	3
.LC513:
	.ascii	"error\000"
	.align	3
.LC514:
	.ascii	"warning\000"
	.align	3
.LC515:
	.ascii	"debug\000"
	.align	3
.LC516:
	.ascii	"full\000"
	.section	.data.rel.ro.local,"aw",@progbits
	.align	3
	.type	_ZN4x265L13logLevelNamesE, @object
	.size	_ZN4x265L13logLevelNamesE, 56
_ZN4x265L13logLevelNamesE:
	.dword	.LC512
	.dword	.LC513
	.dword	.LC514
	.dword	.LC112
	.dword	.LC515
	.dword	.LC516
	.dword	0
	.align	3
	.type	_ZL17x265_preset_names, @object
	.size	_ZL17x265_preset_names, 88
_ZL17x265_preset_names:
	.dword	.LC10
	.dword	.LC11
	.dword	.LC12
	.dword	.LC13
	.dword	.LC14
	.dword	.LC15
	.dword	.LC16
	.dword	.LC18
	.dword	.LC19
	.dword	.LC20
	.dword	0
	.section	.rodata.str1.8
	.align	3
.LC517:
	.ascii	"save\000"
	.align	3
.LC518:
	.ascii	"load\000"
	.section	.data.rel.ro.local
	.align	3
	.type	_ZL19x265_analysis_names, @object
	.size	_ZL19x265_analysis_names, 32
_ZL19x265_analysis_names:
	.dword	.LC215
	.dword	.LC517
	.dword	.LC518
	.dword	0
	.section	.rodata.str1.8
	.align	3
.LC519:
	.ascii	"prog\000"
	.align	3
.LC520:
	.ascii	"tff\000"
	.align	3
.LC521:
	.ascii	"bff\000"
	.section	.data.rel.ro.local
	.align	3
	.type	_ZL20x265_interlace_names, @object
	.size	_ZL20x265_interlace_names, 32
_ZL20x265_interlace_names:
	.dword	.LC519
	.dword	.LC520
	.dword	.LC521
	.dword	0
	.section	.rodata.str1.8
	.align	3
.LC522:
	.ascii	"unknown\000"
	.align	3
.LC523:
	.ascii	"1:1\000"
	.align	3
.LC524:
	.ascii	"12:11\000"
	.align	3
.LC525:
	.ascii	"10:11\000"
	.align	3
.LC526:
	.ascii	"16:11\000"
	.align	3
.LC527:
	.ascii	"40:33\000"
	.align	3
.LC528:
	.ascii	"24:11\000"
	.align	3
.LC529:
	.ascii	"20:11\000"
	.align	3
.LC530:
	.ascii	"32:11\000"
	.align	3
.LC531:
	.ascii	"80:33\000"
	.align	3
.LC532:
	.ascii	"18:11\000"
	.align	3
.LC533:
	.ascii	"15:11\000"
	.align	3
.LC534:
	.ascii	"64:33\000"
	.align	3
.LC535:
	.ascii	"160:99\000"
	.align	3
.LC536:
	.ascii	"4:3\000"
	.align	3
.LC537:
	.ascii	"3:2\000"
	.align	3
.LC538:
	.ascii	"2:1\000"
	.section	.data.rel.ro.local
	.align	3
	.type	_ZL14x265_sar_names, @object
	.size	_ZL14x265_sar_names, 144
_ZL14x265_sar_names:
	.dword	.LC522
	.dword	.LC523
	.dword	.LC524
	.dword	.LC525
	.dword	.LC526
	.dword	.LC527
	.dword	.LC528
	.dword	.LC529
	.dword	.LC530
	.dword	.LC531
	.dword	.LC532
	.dword	.LC533
	.dword	.LC534
	.dword	.LC535
	.dword	.LC536
	.dword	.LC537
	.dword	.LC538
	.dword	0
	.section	.rodata.str1.8
	.align	3
.LC539:
	.ascii	"gbr\000"
	.align	3
.LC540:
	.ascii	"bt709\000"
	.align	3
.LC541:
	.ascii	"\000"
	.align	3
.LC542:
	.ascii	"fcc\000"
	.align	3
.LC543:
	.ascii	"bt470bg\000"
	.align	3
.LC544:
	.ascii	"smpte170m\000"
	.align	3
.LC545:
	.ascii	"smpte240m\000"
	.align	3
.LC546:
	.ascii	"ycgco\000"
	.align	3
.LC547:
	.ascii	"bt2020nc\000"
	.align	3
.LC548:
	.ascii	"bt2020c\000"
	.align	3
.LC549:
	.ascii	"smpte2085\000"
	.align	3
.LC550:
	.ascii	"chroma-derived-nc\000"
	.align	3
.LC551:
	.ascii	"chroma-derived-c\000"
	.align	3
.LC552:
	.ascii	"ictcp\000"
	.section	.data.rel.ro.local
	.align	3
	.type	_ZL20x265_colmatrix_names, @object
	.size	_ZL20x265_colmatrix_names, 128
_ZL20x265_colmatrix_names:
	.dword	.LC539
	.dword	.LC540
	.dword	.LC522
	.dword	.LC541
	.dword	.LC542
	.dword	.LC543
	.dword	.LC544
	.dword	.LC545
	.dword	.LC546
	.dword	.LC547
	.dword	.LC548
	.dword	.LC549
	.dword	.LC550
	.dword	.LC551
	.dword	.LC552
	.dword	0
	.section	.rodata.str1.8
	.align	3
.LC553:
	.ascii	"reserved\000"
	.align	3
.LC554:
	.ascii	"bt470m\000"
	.align	3
.LC555:
	.ascii	"linear\000"
	.align	3
.LC556:
	.ascii	"log100\000"
	.align	3
.LC557:
	.ascii	"log316\000"
	.align	3
.LC558:
	.ascii	"iec61966-2-4\000"
	.align	3
.LC559:
	.ascii	"bt1361e\000"
	.align	3
.LC560:
	.ascii	"iec61966-2-1\000"
	.align	3
.LC561:
	.ascii	"bt2020-10\000"
	.align	3
.LC562:
	.ascii	"bt2020-12\000"
	.align	3
.LC563:
	.ascii	"smpte2084\000"
	.align	3
.LC564:
	.ascii	"smpte428\000"
	.align	3
.LC565:
	.ascii	"arib-std-b67\000"
	.section	.data.rel.ro.local
	.align	3
	.type	_ZL19x265_transfer_names, @object
	.size	_ZL19x265_transfer_names, 160
_ZL19x265_transfer_names:
	.dword	.LC553
	.dword	.LC540
	.dword	.LC522
	.dword	.LC553
	.dword	.LC554
	.dword	.LC543
	.dword	.LC544
	.dword	.LC545
	.dword	.LC555
	.dword	.LC556
	.dword	.LC557
	.dword	.LC558
	.dword	.LC559
	.dword	.LC560
	.dword	.LC561
	.dword	.LC562
	.dword	.LC563
	.dword	.LC564
	.dword	.LC565
	.dword	0
	.section	.rodata.str1.8
	.align	3
.LC566:
	.ascii	"film\000"
	.align	3
.LC567:
	.ascii	"bt2020\000"
	.align	3
.LC568:
	.ascii	"smpte431\000"
	.align	3
.LC569:
	.ascii	"smpte432\000"
	.section	.data.rel.ro.local
	.align	3
	.type	_ZL20x265_colorprim_names, @object
	.size	_ZL20x265_colorprim_names, 112
_ZL20x265_colorprim_names:
	.dword	.LC553
	.dword	.LC540
	.dword	.LC522
	.dword	.LC553
	.dword	.LC554
	.dword	.LC543
	.dword	.LC544
	.dword	.LC545
	.dword	.LC566
	.dword	.LC567
	.dword	.LC564
	.dword	.LC568
	.dword	.LC569
	.dword	0
	.section	.rodata.str1.8
	.align	3
.LC570:
	.ascii	"limited\000"
	.section	.data.rel.ro.local
	.align	3
	.type	_ZL20x265_fullrange_names, @object
	.size	_ZL20x265_fullrange_names, 24
_ZL20x265_fullrange_names:
	.dword	.LC570
	.dword	.LC516
	.dword	0
	.section	.rodata.str1.8
	.align	3
.LC571:
	.ascii	"component\000"
	.align	3
.LC572:
	.ascii	"pal\000"
	.align	3
.LC573:
	.ascii	"ntsc\000"
	.align	3
.LC574:
	.ascii	"secam\000"
	.align	3
.LC575:
	.ascii	"mac\000"
	.section	.data.rel.ro.local
	.align	3
	.type	_ZL23x265_video_format_names, @object
	.size	_ZL23x265_video_format_names, 56
_ZL23x265_video_format_names:
	.dword	.LC571
	.dword	.LC572
	.dword	.LC573
	.dword	.LC574
	.dword	.LC575
	.dword	.LC522
	.dword	0
	.section	.rodata.str1.8
	.align	3
.LC576:
	.ascii	"i400\000"
	.align	3
.LC577:
	.ascii	"i420\000"
	.align	3
.LC578:
	.ascii	"i422\000"
	.align	3
.LC579:
	.ascii	"i444\000"
	.align	3
.LC580:
	.ascii	"nv12\000"
	.align	3
.LC581:
	.ascii	"nv16\000"
	.section	.data.rel.ro.local
	.align	3
	.type	_ZL21x265_source_csp_names, @object
	.size	_ZL21x265_source_csp_names, 56
_ZL21x265_source_csp_names:
	.dword	.LC576
	.dword	.LC577
	.dword	.LC578
	.dword	.LC579
	.dword	.LC580
	.dword	.LC581
	.dword	0
	.section	.rodata.str1.8
	.align	3
.LC582:
	.ascii	"dia\000"
	.align	3
.LC583:
	.ascii	"hex\000"
	.align	3
.LC584:
	.ascii	"umh\000"
	.align	3
.LC585:
	.ascii	"star\000"
	.align	3
.LC586:
	.ascii	"sea\000"
	.section	.data.rel.ro.local
	.align	3
	.type	_ZL21x265_motion_est_names, @object
	.size	_ZL21x265_motion_est_names, 56
_ZL21x265_motion_est_names:
	.dword	.LC582
	.dword	.LC583
	.dword	.LC584
	.dword	.LC585
	.dword	.LC586
	.dword	.LC516
	.dword	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC9:
	.word	0
	.word	1075052544
	.align	3
.LC17:
	.word	0
	.word	1072693248
	.align	3
.LC28:
	.word	2576980378
	.word	1072798105
	.align	3
.LC29:
	.word	0
	.word	1074790400
	.align	3
.LC30:
	.word	0
	.word	1076101120
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
.LC36:
	.word	1241715308
	.align	2
.LC37:
	.word	1148846080
	.section	.rodata.cst8
	.align	3
.LC38:
	.word	0
	.word	1071644672
	.align	3
.LC264:
	.word	0
	.word	1074266112
	.align	3
.LC269:
	.word	0
	.word	1078525952
	.align	3
.LC285:
	.word	0
	.word	1078558720
	.align	3
.LC290:
	.word	0
	.word	1079574528
	.ident	"GCC: (GNU) 7.3.0"
