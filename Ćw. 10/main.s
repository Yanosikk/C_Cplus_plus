	.file	"main.cpp"
	.text
	.p2align 4
	.def	___tcf_0;	.scl	3;	.type	32;	.endef
___tcf_0:
LFB2522:
	.cfi_startproc
	movl	$__ZStL8__ioinit, %ecx
	jmp	__ZNSt8ios_base4InitD1Ev
	.cfi_endproc
LFE2522:
	.section	.text$_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"x"
	.linkonce discard
	.p2align 4
	.globl	__ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.def	__ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_;	.scl	2;	.type	32;	.endef
__ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_:
LFB2440:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %edi
	movl	52(%esp), %ebp
	cmpl	%ebp, %edi
	je	L3
	leal	4(%edi), %ebx
	cmpl	%ebx, %ebp
	je	L3
	.p2align 4,,10
	.p2align 3
L10:
	movl	(%ebx), %esi
	cmpl	(%edi), %esi
	jge	L5
	cmpl	%ebx, %edi
	je	L6
	movl	%ebx, %eax
	movl	$4, %ecx
	movl	%edi, 4(%esp)
	subl	%edi, %eax
	subl	%eax, %ecx
	movl	%eax, 8(%esp)
	movl	%ecx, %eax
	addl	%ebx, %eax
	movl	%eax, (%esp)
	call	_memmove
L6:
	movl	%esi, (%edi)
L7:
	addl	$4, %ebx
	cmpl	%ebx, %ebp
	jne	L10
L3:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L5:
	.cfi_restore_state
	movl	-4(%ebx), %edx
	leal	-4(%ebx), %eax
	cmpl	%edx, %esi
	jge	L11
	.p2align 4,,10
	.p2align 3
L9:
	movl	%edx, 4(%eax)
	movl	%eax, %ecx
	movl	-4(%eax), %edx
	subl	$4, %eax
	cmpl	%edx, %esi
	jl	L9
	movl	%esi, (%ecx)
	jmp	L7
	.p2align 4,,10
	.p2align 3
L11:
	movl	%ebx, %ecx
	movl	%esi, (%ecx)
	jmp	L7
	.cfi_endproc
LFE2440:
	.section	.text$_ZSt13__adjust_heapIPiiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_,"x"
	.linkonce discard
	.p2align 4
	.globl	__ZSt13__adjust_heapIPiiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
	.def	__ZSt13__adjust_heapIPiiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_;	.scl	2;	.type	32;	.endef
__ZSt13__adjust_heapIPiiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_:
LFB2512:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	32(%esp), %eax
	movl	32(%esp), %esi
	movl	28(%esp), %ebp
	movl	24(%esp), %edx
	leal	-1(%eax), %ecx
	andl	$1, %esi
	movl	%ecx, %eax
	movl	%esi, (%esp)
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	cmpl	%eax, %ebp
	jge	L16
	movl	%ebp, %edi
	movl	%eax, %ebp
	jmp	L18
	.p2align 4,,10
	.p2align 3
L23:
	movl	%eax, %edi
L18:
	leal	1(%edi), %ebx
	leal	(%edx,%ebx,8), %ecx
	leal	(%ebx,%ebx), %eax
	movl	(%ecx), %esi
	cmpl	-4(%edx,%ebx,8), %esi
	jge	L17
	subl	$1, %eax
	leal	(%edx,%eax,4), %ecx
	movl	(%ecx), %esi
L17:
	movl	%esi, (%edx,%edi,4)
	cmpl	%ebp, %eax
	jl	L23
	movl	(%esp), %ebx
	movl	28(%esp), %ebp
	testl	%ebx, %ebx
	je	L22
L19:
	leal	-1(%eax), %esi
	movl	%esi, %ebx
	shrl	$31, %ebx
	addl	%esi, %ebx
	sarl	%ebx
	cmpl	%ebp, %eax
	jle	L20
	movl	36(%esp), %esi
	movl	%eax, %ecx
	jmp	L21
	.p2align 4,,10
	.p2align 3
L31:
	movl	%eax, (%ecx)
	leal	-1(%ebx), %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	movl	%ebx, %ecx
	sarl	%eax
	cmpl	%ebx, %ebp
	jge	L30
	movl	%eax, %ebx
L21:
	leal	(%edx,%ebx,4), %edi
	leal	(%edx,%ecx,4), %ecx
	movl	(%edi), %eax
	cmpl	%eax, %esi
	jg	L31
L20:
	movl	36(%esp), %eax
	movl	%eax, (%ecx)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L16:
	.cfi_restore_state
	movl	(%esp), %eax
	leal	(%edx,%ebp,4), %ecx
	testl	%eax, %eax
	jne	L20
	movl	%ebp, %eax
	.p2align 4,,10
	.p2align 3
L22:
	movl	32(%esp), %esi
	subl	$2, %esi
	movl	%esi, %ebx
	shrl	$31, %ebx
	addl	%esi, %ebx
	sarl	%ebx
	cmpl	%eax, %ebx
	jne	L19
	leal	2(%eax,%eax), %eax
	movl	-4(%edx,%eax,4), %ebx
	subl	$1, %eax
	movl	%ebx, (%ecx)
	leal	(%edx,%eax,4), %ecx
	jmp	L19
	.p2align 4,,10
	.p2align 3
L30:
	movl	36(%esp), %eax
	movl	%edi, %ecx
	movl	%eax, (%ecx)
	addl	$4, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE2512:
	.text
	.p2align 4
	.def	__ZSt16__introsort_loopIPiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.0;	.scl	3;	.type	32;	.endef
__ZSt16__introsort_loopIPiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.0:
LFB2543:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%edx, %eax
	subl	%ebx, %eax
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	%edx, 36(%esp)
	movl	%ecx, 40(%esp)
	cmpl	$64, %eax
	jle	L32
	testl	%ecx, %ecx
	je	L50
	leal	8(%ebx), %esi
	movl	%esi, 44(%esp)
L35:
	sarl	$3, %eax
	movl	36(%esp), %edi
	movl	4(%ebx), %edx
	leal	(%ebx,%eax,4), %esi
	subl	$1, 40(%esp)
	movl	(%ebx), %ebp
	movl	(%esi), %eax
	movl	-4(%edi), %ecx
	cmpl	%eax, %edx
	jge	L38
	cmpl	%ecx, %eax
	jge	L39
	movl	%eax, (%ebx)
	movl	%ebp, (%esi)
	movl	4(%ebx), %ebp
	movl	(%ebx), %edx
	movl	-4(%edi), %edi
L40:
	movl	44(%esp), %ecx
	movl	36(%esp), %eax
	.p2align 4,,10
	.p2align 3
L44:
	leal	-4(%ecx), %esi
	cmpl	%edx, %ebp
	jl	L45
	subl	$4, %eax
	cmpl	%edi, %edx
	jge	L46
	.p2align 4,,10
	.p2align 3
L47:
	movl	-4(%eax), %edi
	subl	$4, %eax
	cmpl	%edx, %edi
	jg	L47
L46:
	cmpl	%esi, %eax
	jbe	L58
	movl	%edi, -4(%ecx)
	movl	-4(%eax), %edi
	movl	%ebp, (%eax)
	movl	(%ebx), %edx
L45:
	movl	(%ecx), %ebp
	addl	$4, %ecx
	jmp	L44
	.p2align 4,,10
	.p2align 3
L58:
	movl	40(%esp), %ecx
	movl	36(%esp), %edx
	movl	%esi, %eax
	call	__ZSt16__introsort_loopIPiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.0
	movl	%esi, %eax
	subl	%ebx, %eax
	cmpl	$64, %eax
	jle	L32
	movl	40(%esp), %edx
	testl	%edx, %edx
	je	L34
	movl	%esi, 36(%esp)
	jmp	L35
	.p2align 4,,10
	.p2align 3
L38:
	cmpl	%ecx, %edx
	jl	L57
	cmpl	%ecx, %eax
	jge	L43
L56:
	movl	36(%esp), %eax
	movl	%ecx, (%ebx)
	movl	%ebp, %edi
	movl	%ebp, -4(%eax)
	movl	(%ebx), %edx
	movl	4(%ebx), %ebp
	jmp	L40
	.p2align 4,,10
	.p2align 3
L39:
	cmpl	%ecx, %edx
	jl	L56
L57:
	movl	36(%esp), %eax
	movl	%edx, (%ebx)
	movl	%ebp, 4(%ebx)
	movl	-4(%eax), %edi
	jmp	L40
	.p2align 4,,10
	.p2align 3
L50:
	movl	36(%esp), %esi
L34:
	sarl	$2, %eax
	movb	$0, 16(%esp)
	leal	-2(%eax), %ebp
	movl	%eax, %edi
	movl	%ebx, (%esp)
	sarl	%ebp
	movl	%edi, 8(%esp)
	movl	(%ebx,%ebp,4), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, 12(%esp)
	call	__ZSt13__adjust_heapIPiiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
L36:
	subl	$1, %ebp
	movb	$0, 16(%esp)
	movl	(%ebx,%ebp,4), %eax
	movl	%edi, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%ebx, (%esp)
	call	__ZSt13__adjust_heapIPiiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
	testl	%ebp, %ebp
	jne	L36
	.p2align 4,,10
	.p2align 3
L37:
	subl	$4, %esi
	movl	(%esi), %eax
	movl	(%ebx), %edx
	movl	%esi, %edi
	subl	%ebx, %edi
	movl	%edx, (%esi)
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	sarl	$2, %eax
	movb	$0, 16(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZSt13__adjust_heapIPiiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_
	cmpl	$4, %edi
	jg	L37
L32:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L43:
	.cfi_restore_state
	movl	%eax, (%ebx)
	movl	36(%esp), %eax
	movl	%ebp, (%esi)
	movl	4(%ebx), %ebp
	movl	(%ebx), %edx
	movl	-4(%eax), %edi
	jmp	L40
	.cfi_endproc
LFE2543:
	.section	.text.unlikely,"x"
LCOLDB2:
	.text
LHOTB2:
	.p2align 4
	.def	__Z7medianaPKijPf.part.0;	.scl	3;	.type	32;	.endef
__Z7medianaPKijPf.part.0:
LFB2545:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	%ecx, 24(%esp)
	cmpl	$536870911, %edx
	ja	L60
	leal	0(,%edx,4), %esi
	movl	%eax, %ebp
	movl	%edx, %edi
	movl	%esi, (%esp)
	call	__Znaj
	movl	%ebp, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, %ebx
	movl	%eax, (%esp)
	leal	(%ebx,%esi), %ebp
	call	_memcpy
	movl	%esi, %eax
	movl	$31, %ecx
	movl	%ebp, %edx
	sarl	$2, %eax
	bsrl	%eax, %eax
	xorl	$31, %eax
	subl	%eax, %ecx
	movl	%ebx, %eax
	addl	%ecx, %ecx
	call	__ZSt16__introsort_loopIPiiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_.isra.0
	cmpl	$64, %esi
	jbe	L61
	leal	64(%ebx), %esi
	movb	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	cmpl	%esi, %ebp
	je	L63
	movl	%ebx, 28(%esp)
	.p2align 4,,10
	.p2align 3
L62:
	movl	(%esi), %ecx
	movl	-4(%esi), %edx
	leal	-4(%esi), %eax
	cmpl	%edx, %ecx
	jge	L70
	.p2align 4,,10
	.p2align 3
L65:
	movl	%edx, 4(%eax)
	movl	%eax, %ebx
	movl	-4(%eax), %edx
	subl	$4, %eax
	cmpl	%edx, %ecx
	jl	L65
	addl	$4, %esi
	movl	%ecx, (%ebx)
	cmpl	%esi, %ebp
	jne	L62
L76:
	movl	28(%esp), %ebx
L63:
	movl	%edi, %eax
	shrl	%eax
	andl	$1, %edi
	leal	0(,%eax,4), %edx
	movl	(%ebx,%eax,4), %eax
	jne	L75
	addl	-4(%ebx,%edx), %eax
	movl	%eax, 28(%esp)
	fildl	28(%esp)
	fmuls	LC0
L69:
	movl	%ebx, (%esp)
	fstps	28(%esp)
	call	__ZdaPv
	flds	28(%esp)
	movl	24(%esp), %eax
	fstps	(%eax)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L75:
	.cfi_restore_state
	movl	%eax, 28(%esp)
	fildl	28(%esp)
	jmp	L69
	.p2align 4,,10
	.p2align 3
L61:
	movb	$0, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	jmp	L63
	.p2align 4,,10
	.p2align 3
L70:
	movl	%esi, %ebx
	addl	$4, %esi
	movl	%ecx, (%ebx)
	cmpl	%esi, %ebp
	jne	L62
	jmp	L76
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__Z7medianaPKijPf.part.0.cold;	.scl	3;	.type	32;	.endef
__Z7medianaPKijPf.part.0.cold:
LFSB2545:
L60:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	___cxa_throw_bad_array_new_length
	.cfi_endproc
LFE2545:
	.text
	.section	.text.unlikely,"x"
LCOLDE2:
	.text
LHOTE2:
	.p2align 4
	.globl	__Z7medianaPKijPf
	.def	__Z7medianaPKijPf;	.scl	2;	.type	32;	.endef
__Z7medianaPKijPf:
LFB2004:
	.cfi_startproc
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	12(%esp), %ecx
	testl	%edx, %edx
	je	L78
	jmp	__Z7medianaPKijPf.part.0
	.p2align 4,,10
	.p2align 3
L78:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE2004:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC3:
	.ascii "Podaj ilosc elementow oczekiwanych do wyliczenia mediany: \0"
LC4:
	.ascii "Podaj \0"
LC5:
	.ascii " liczby: \0"
LC6:
	.ascii "Wartosc mediany: \0"
	.align 4
LC7:
	.ascii "Nie udalo sie obliczyc mediany\0"
	.section	.text.unlikely,"x"
LCOLDB8:
	.section	.text.startup,"x"
LHOTB8:
	.p2align 4
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB2005:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	subl	$40, %esp
	call	___main
	movl	$LC3, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leal	-32(%ebp), %eax
	movl	$__ZSt3cin, %ecx
	movl	%eax, (%esp)
	call	__ZNSi10_M_extractIjEERSiRT_
	movl	-32(%ebp), %eax
	subl	$4, %esp
	cmpl	$536870911, %eax
	ja	L80
	sall	$2, %eax
	xorl	%ebx, %ebx
	movl	%eax, (%esp)
	call	__Znaj
	movl	$6, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	%eax, %edi
	movl	$__ZSt4cout, (%esp)
	movl	%edi, %esi
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	-32(%ebp), %eax
	movl	$__ZSt4cout, %ecx
	movl	%eax, (%esp)
	call	__ZNSo9_M_insertImEERSoT_
	subl	$4, %esp
	movl	$LC5, 4(%esp)
	movl	%eax, (%esp)
	call	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-32(%ebp), %ecx
	testl	%ecx, %ecx
	je	L81
	.p2align 4,,10
	.p2align 3
L83:
	movl	%esi, (%esp)
	movl	$__ZSt3cin, %ecx
	addl	$1, %ebx
	addl	$4, %esi
	call	__ZNSirsERi
	movl	-32(%ebp), %edx
	subl	$4, %esp
	cmpl	%ebx, %edx
	ja	L83
	testl	%edx, %edx
	je	L81
	leal	-28(%ebp), %ecx
	movl	%edi, %eax
	call	__Z7medianaPKijPf.part.0
	testb	%al, %al
	jne	L94
L81:
	movl	$30, 8(%esp)
	movl	$LC7, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	movl	$__ZSt4cout, (%esp)
	call	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
L84:
	movl	%edi, (%esp)
	call	__ZdaPv
	leal	-16(%ebp), %esp
	xorl	%eax, %eax
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
L94:
	.cfi_restore_state
	movl	$17, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$__ZSt4cout, (%esp)
	call	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	flds	-28(%ebp)
	movl	$__ZSt4cout, %ecx
	fstpl	(%esp)
	call	__ZNSo9_M_insertIdEERSoT_
	pushl	%edx
	pushl	%edx
	movl	%eax, (%esp)
	call	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	jmp	L84
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	_main.cold;	.scl	3;	.type	32;	.endef
_main.cold:
LFSB2005:
L80:
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	call	___cxa_throw_bad_array_new_length
	.cfi_endproc
LFE2005:
	.section	.text.startup,"x"
	.section	.text.unlikely,"x"
LCOLDE8:
	.section	.text.startup,"x"
LHOTE8:
	.p2align 4
	.def	__GLOBAL__sub_I__Z7medianaPKijPf;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_I__Z7medianaPKijPf:
LFB2523:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$__ZStL8__ioinit, %ecx
	call	__ZNSt8ios_base4InitC1Ev
	movl	$___tcf_0, (%esp)
	call	_atexit
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE2523:
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__sub_I__Z7medianaPKijPf
.lcomm __ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1056964608
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	__Znaj;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__ZdaPv;	.scl	2;	.type	32;	.endef
	.def	___cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	__ZNSi10_M_extractIjEERSiRT_;	.scl	2;	.type	32;	.endef
	.def	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i;	.scl	2;	.type	32;	.endef
	.def	__ZNSo9_M_insertImEERSoT_;	.scl	2;	.type	32;	.endef
	.def	__ZNSirsERi;	.scl	2;	.type	32;	.endef
	.def	__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	2;	.type	32;	.endef
	.def	__ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	_atexit;	.scl	2;	.type	32;	.endef
