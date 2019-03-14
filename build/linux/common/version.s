	.file	1 "version.cpp"
	.section .mdebug.abi64
	.previous
	.nan	legacy
	.module	fp=64
	.module	oddspreg
	.abicalls
	.text
	.globl	x265_build_info_str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.ascii	"[Linux][GCC 7.3.0][32 bit][noasm] 8bit\000"
	.section	.data.rel.local,"aw",@progbits
	.align	3
	.type	x265_build_info_str, @object
	.size	x265_build_info_str, 8
x265_build_info_str:
	.dword	.LC0
	.globl	x265_version_str
	.section	.rodata.str1.8
	.align	3
.LC1:
	.ascii	"2.6\000"
	.section	.data.rel.local
	.align	3
	.type	x265_version_str, @object
	.size	x265_version_str, 8
x265_version_str:
	.dword	.LC1
	.globl	x265_max_bit_depth
	.rdata
	.align	2
	.type	x265_max_bit_depth, @object
	.size	x265_max_bit_depth, 4
x265_max_bit_depth:
	.word	8
	.ident	"GCC: (GNU) 7.3.0"
