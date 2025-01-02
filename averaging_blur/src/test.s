	.file	"test.cpp"
	.text
	.p2align 4,,15
	.globl	_Z6kernelPdS_ii
	.type	_Z6kernelPdS_ii, @function
_Z6kernelPdS_ii:
.LFB1050:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leal	0(,%rcx,4), %edx
	leal	(%rcx,%rcx), %r9d
	movslq	%ecx, %rax
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	leal	(%rdx,%rcx), %r11d
	addq	$16, %rsp
	movslq	%r9d, %r10
	addl	%ecx, %r9d
	movslq	%edx, %r8
	movslq	%r9d, %r9
	movslq	%r11d, %r11
	vmovsd	.LC0(%rip), %xmm1
	salq	$3, %rax
	salq	$3, %r10
	salq	$3, %r9
	salq	$3, %r8
	vmovsd	%xmm1, -48(%rsp)
	vbroadcastsd	%xmm1, %ymm0
	salq	$3, %r11
	vxorpd	%xmm1, %xmm1, %xmm1
	movl	$3, %edx
	vmovapd	%ymm1, %ymm2
	vmovapd	%ymm1, %ymm3
	vmovapd	%ymm1, %ymm4
	vmovapd	%ymm1, %ymm5
	vmovapd	%ymm1, %ymm6
.L3:
	leaq	(%rdi,%rax), %rcx
	vmovupd	(%rdi), %ymm14
	vmovupd	(%rcx), %ymm12
	addq	%rax, %rcx
	vmovupd	(%rcx), %ymm10
	addq	%rax, %rcx
	vmovupd	(%rcx), %ymm9
	addq	%rax, %rcx
	vmovupd	(%rcx), %ymm8
	addq	%rax, %rcx
	vmovupd	(%rcx), %ymm7
	addq	%rax, %rcx
	vmovupd	(%rcx), %ymm11
	vmovupd	(%rcx,%rax), %ymm13
#APP
# 45 "test.cpp" 1
	vfmadd231pd %ymm6, %ymm14, %ymm0

# 0 "" 2
# 46 "test.cpp" 1
	vfmadd231pd %ymm6, %ymm12, %ymm0

# 0 "" 2
# 47 "test.cpp" 1
	vfmadd231pd %ymm6, %ymm10, %ymm0

# 0 "" 2
# 49 "test.cpp" 1
	vfmadd231pd %ymm5, %ymm12, %ymm0

# 0 "" 2
# 50 "test.cpp" 1
	vfmadd231pd %ymm5, %ymm10, %ymm0

# 0 "" 2
# 51 "test.cpp" 1
	vfmadd231pd %ymm5, %ymm9, %ymm0

# 0 "" 2
# 53 "test.cpp" 1
	vfmadd231pd %ymm4, %ymm10, %ymm0

# 0 "" 2
# 54 "test.cpp" 1
	vfmadd231pd %ymm4, %ymm9, %ymm0

# 0 "" 2
# 55 "test.cpp" 1
	vfmadd231pd %ymm4, %ymm8, %ymm0

# 0 "" 2
# 57 "test.cpp" 1
	vfmadd231pd %ymm3, %ymm9, %ymm0

# 0 "" 2
# 58 "test.cpp" 1
	vfmadd231pd %ymm3, %ymm8, %ymm0

# 0 "" 2
# 59 "test.cpp" 1
	vfmadd231pd %ymm3, %ymm7, %ymm0

# 0 "" 2
# 61 "test.cpp" 1
	vfmadd231pd %ymm2, %ymm8, %ymm0

# 0 "" 2
# 62 "test.cpp" 1
	vfmadd231pd %ymm2, %ymm7, %ymm0

# 0 "" 2
# 63 "test.cpp" 1
	vfmadd231pd %ymm2, %ymm11, %ymm0

# 0 "" 2
# 65 "test.cpp" 1
	vfmadd231pd %ymm1, %ymm7, %ymm0

# 0 "" 2
# 66 "test.cpp" 1
	vfmadd231pd %ymm1, %ymm11, %ymm0

# 0 "" 2
# 67 "test.cpp" 1
	vfmadd231pd %ymm1, %ymm13, %ymm0

# 0 "" 2
#NO_APP
	addq	$8, %rdi
	subl	$1, %edx
	jne	.L3
	vmovupd	%ymm6, (%rsi)
	vmovupd	%ymm5, -16(%rsi,%rax)
	vmovupd	%ymm4, -32(%rsi,%r10)
	vmovupd	%ymm3, -48(%rsi,%r9)
	vmovupd	%ymm2, -64(%rsi,%r8)
	vmovupd	%ymm1, -80(%rsi,%r11)
	vzeroupper
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1050:
	.size	_Z6kernelPdS_ii, .-_Z6kernelPdS_ii
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC14:
	.string	"%lf "
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1051:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%eax, %eax
	movl	$48, %ecx
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	xorl	%r12d, %r12d
	pushq	%rbx
	andq	$-32, %rsp
	subq	$576, %rsp
	.cfi_offset 3, -48
	leaq	192(%rsp), %r13
	movq	%rsp, %r14
	movq	%r13, %rdi
	rep stosq
	movq	%rsp, %rdi
	movb	$24, %cl
	rep stosq
	xorl	%edi, %edi
	call	time
	movl	%eax, %edi
	call	srand
	vmovapd	.LC2(%rip), %ymm0
	vmovapd	%ymm0, 192(%rsp)
	vmovapd	.LC3(%rip), %ymm0
	vmovapd	%ymm0, 224(%rsp)
	vmovapd	.LC4(%rip), %ymm0
	vmovapd	%ymm0, 256(%rsp)
	vmovapd	.LC5(%rip), %ymm0
	vmovapd	%ymm0, 288(%rsp)
	vmovapd	.LC6(%rip), %ymm0
	vmovapd	%ymm0, 320(%rsp)
	vmovapd	.LC7(%rip), %ymm0
	vmovapd	%ymm0, 352(%rsp)
	vmovapd	.LC8(%rip), %ymm0
	vmovapd	%ymm0, 384(%rsp)
	vmovapd	.LC9(%rip), %ymm0
	vmovapd	%ymm0, 416(%rsp)
	vmovapd	.LC10(%rip), %ymm0
	vmovapd	%ymm0, 448(%rsp)
	vmovapd	.LC11(%rip), %ymm0
	vmovapd	%ymm0, 480(%rsp)
	vmovapd	.LC12(%rip), %ymm0
	vmovapd	%ymm0, 512(%rsp)
	vmovapd	.LC13(%rip), %ymm0
	vmovapd	%ymm0, 544(%rsp)
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L7:
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L10:
	leal	(%r12,%rbx), %eax
	movl	$.LC14, %edi
	addl	$1, %ebx
	cltq
	vmovsd	192(%rsp,%rax,8), %xmm0
	movl	$1, %eax
	call	printf
	cmpl	$6, %ebx
	jne	.L10
	movl	$10, %edi
	addl	$6, %r12d
	call	putchar
	cmpl	$48, %r12d
	jne	.L7
	movl	$10, %edi
	xorl	%r12d, %r12d
	call	putchar
	movl	$6, %ecx
	movl	$8, %edx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	_Z6kernelPdS_ii
	.p2align 4,,10
	.p2align 3
.L11:
	xorl	%ebx, %ebx
.L14:
	leal	(%r12,%rbx), %eax
	movl	$.LC14, %edi
	addl	$1, %ebx
	cltq
	vmovsd	(%rsp,%rax,8), %xmm0
	movl	$1, %eax
	call	printf
	cmpl	$4, %ebx
	jne	.L14
	movl	$10, %edi
	addl	$6, %r12d
	call	putchar
	cmpl	$36, %r12d
	jne	.L11
	leaq	-32(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1051:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	477218588
	.long	1069314503
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC2:
	.long	0
	.long	0
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
	.long	0
	.long	1074266112
	.align 32
.LC3:
	.long	0
	.long	1074790400
	.long	0
	.long	1075052544
	.long	0
	.long	1075314688
	.long	0
	.long	1075576832
	.align 32
.LC4:
	.long	0
	.long	1075838976
	.long	0
	.long	1075970048
	.long	0
	.long	1076101120
	.long	0
	.long	1076232192
	.align 32
.LC5:
	.long	0
	.long	1076363264
	.long	0
	.long	1076494336
	.long	0
	.long	1076625408
	.long	0
	.long	1076756480
	.align 32
.LC6:
	.long	0
	.long	1076887552
	.long	0
	.long	1076953088
	.long	0
	.long	1077018624
	.long	0
	.long	1077084160
	.align 32
.LC7:
	.long	0
	.long	1077149696
	.long	0
	.long	1077215232
	.long	0
	.long	1077280768
	.long	0
	.long	1077346304
	.align 32
.LC8:
	.long	0
	.long	1077411840
	.long	0
	.long	1077477376
	.long	0
	.long	1077542912
	.long	0
	.long	1077608448
	.align 32
.LC9:
	.long	0
	.long	1077673984
	.long	0
	.long	1077739520
	.long	0
	.long	1077805056
	.long	0
	.long	1077870592
	.align 32
.LC10:
	.long	0
	.long	1077936128
	.long	0
	.long	1077968896
	.long	0
	.long	1078001664
	.long	0
	.long	1078034432
	.align 32
.LC11:
	.long	0
	.long	1078067200
	.long	0
	.long	1078099968
	.long	0
	.long	1078132736
	.long	0
	.long	1078165504
	.align 32
.LC12:
	.long	0
	.long	1078198272
	.long	0
	.long	1078231040
	.long	0
	.long	1078263808
	.long	0
	.long	1078296576
	.align 32
.LC13:
	.long	0
	.long	1078329344
	.long	0
	.long	1078362112
	.long	0
	.long	1078394880
	.long	0
	.long	1078427648
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
