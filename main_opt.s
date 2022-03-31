	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 1
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _Z12exponentiateii
LCPI0_0:
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z12exponentiateii
	.p2align	4, 0x90
__Z12exponentiateii:                    ## @_Z12exponentiateii
	.cfi_startproc
## %bb.0:
	movl	$1, %eax
	testl	%esi, %esi
	je	LBB0_12
## %bb.1:
	cmpl	$8, %esi
	jb	LBB0_11
## %bb.2:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%esi, %r8d
	andl	$-8, %r8d
	movd	%edi, %xmm0
	pshufd	$0, %xmm0, %xmm0        ## xmm0 = xmm0[0,0,0,0]
	leal	-8(%r8), %ecx
	movl	%ecx, %edx
	shrl	$3, %edx
	incl	%edx
	movl	%edx, %eax
	andl	$7, %eax
	cmpl	$56, %ecx
	jae	LBB0_4
## %bb.3:
	movdqa	LCPI0_0(%rip), %xmm1    ## xmm1 = [1,1,1,1]
	movdqa	%xmm1, %xmm2
	jmp	LBB0_6
LBB0_4:
	subl	%eax, %edx
	movdqa	LCPI0_0(%rip), %xmm1    ## xmm1 = [1,1,1,1]
	movdqa	%xmm1, %xmm2
	.p2align	4, 0x90
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	addl	$-8, %edx
	jne	LBB0_5
LBB0_6:
	testl	%eax, %eax
	popq	%rbp
	je	LBB0_9
## %bb.7:
	negl	%eax
	.p2align	4, 0x90
LBB0_8:                                 ## =>This Inner Loop Header: Depth=1
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	incl	%eax
	jne	LBB0_8
LBB0_9:
	pmulld	%xmm2, %xmm1
	pshufd	$78, %xmm1, %xmm0       ## xmm0 = xmm1[2,3,0,1]
	pmulld	%xmm1, %xmm0
	pshufd	$229, %xmm0, %xmm1      ## xmm1 = xmm0[1,1,2,3]
	pmulld	%xmm0, %xmm1
	movd	%xmm1, %eax
	cmpl	%esi, %r8d
	je	LBB0_12
## %bb.10:
	andl	$7, %esi
	.p2align	4, 0x90
LBB0_11:                                ## =>This Inner Loop Header: Depth=1
	imull	%edi, %eax
	decl	%esi
	jne	LBB0_11
LBB0_12:
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _Z4exp1iii
LCPI1_0:
	.space	4
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
LCPI1_1:
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z4exp1iii
	.p2align	4, 0x90
__Z4exp1iii:                            ## @_Z4exp1iii
	.cfi_startproc
## %bb.0:
	movl	%edx, %eax
	testl	%esi, %esi
	je	LBB1_12
## %bb.1:
	cmpl	$8, %esi
	jb	LBB1_11
## %bb.2:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%esi, %r8d
	andl	$-8, %r8d
	movd	%edi, %xmm0
	pshufd	$0, %xmm0, %xmm1        ## xmm1 = xmm0[0,0,0,0]
	movdqa	LCPI1_0(%rip), %xmm0    ## xmm0 = <u,1,1,1>
	pinsrd	$0, %eax, %xmm0
	leal	-8(%r8), %ecx
	movl	%ecx, %edx
	shrl	$3, %edx
	incl	%edx
	movl	%edx, %eax
	andl	$7, %eax
	cmpl	$56, %ecx
	jae	LBB1_4
## %bb.3:
	movdqa	LCPI1_1(%rip), %xmm2    ## xmm2 = [1,1,1,1]
	jmp	LBB1_6
LBB1_4:
	subl	%eax, %edx
	movdqa	LCPI1_1(%rip), %xmm2    ## xmm2 = [1,1,1,1]
	.p2align	4, 0x90
LBB1_5:                                 ## =>This Inner Loop Header: Depth=1
	pmulld	%xmm1, %xmm0
	pmulld	%xmm1, %xmm2
	pmulld	%xmm1, %xmm0
	pmulld	%xmm1, %xmm2
	pmulld	%xmm1, %xmm0
	pmulld	%xmm1, %xmm2
	pmulld	%xmm1, %xmm0
	pmulld	%xmm1, %xmm2
	pmulld	%xmm1, %xmm0
	pmulld	%xmm1, %xmm2
	pmulld	%xmm1, %xmm0
	pmulld	%xmm1, %xmm2
	pmulld	%xmm1, %xmm0
	pmulld	%xmm1, %xmm2
	pmulld	%xmm1, %xmm0
	pmulld	%xmm1, %xmm2
	addl	$-8, %edx
	jne	LBB1_5
LBB1_6:
	testl	%eax, %eax
	popq	%rbp
	je	LBB1_9
## %bb.7:
	negl	%eax
	.p2align	4, 0x90
LBB1_8:                                 ## =>This Inner Loop Header: Depth=1
	pmulld	%xmm1, %xmm0
	pmulld	%xmm1, %xmm2
	incl	%eax
	jne	LBB1_8
LBB1_9:
	pmulld	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	pmulld	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      ## xmm0 = xmm1[1,1,2,3]
	pmulld	%xmm1, %xmm0
	movd	%xmm0, %eax
	cmpl	%esi, %r8d
	je	LBB1_12
## %bb.10:
	andl	$7, %esi
	.p2align	4, 0x90
LBB1_11:                                ## =>This Inner Loop Header: Depth=1
	imull	%edi, %eax
	decl	%esi
	jne	LBB1_11
LBB1_12:
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function _Z2goii
LCPI2_0:
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z2goii
	.p2align	4, 0x90
__Z2goii:                               ## @_Z2goii
	.cfi_startproc
## %bb.0:
	movl	$1, %eax
	testl	%esi, %esi
	je	LBB2_12
## %bb.1:
	cmpl	$8, %esi
	jb	LBB2_11
## %bb.2:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%esi, %r8d
	andl	$-8, %r8d
	movd	%edi, %xmm0
	pshufd	$0, %xmm0, %xmm0        ## xmm0 = xmm0[0,0,0,0]
	leal	-8(%r8), %ecx
	movl	%ecx, %edx
	shrl	$3, %edx
	incl	%edx
	movl	%edx, %eax
	andl	$7, %eax
	cmpl	$56, %ecx
	jae	LBB2_4
## %bb.3:
	movdqa	LCPI2_0(%rip), %xmm1    ## xmm1 = [1,1,1,1]
	movdqa	%xmm1, %xmm2
	jmp	LBB2_6
LBB2_4:
	subl	%eax, %edx
	movdqa	LCPI2_0(%rip), %xmm1    ## xmm1 = [1,1,1,1]
	movdqa	%xmm1, %xmm2
	.p2align	4, 0x90
LBB2_5:                                 ## =>This Inner Loop Header: Depth=1
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	addl	$-8, %edx
	jne	LBB2_5
LBB2_6:
	testl	%eax, %eax
	popq	%rbp
	je	LBB2_9
## %bb.7:
	negl	%eax
	.p2align	4, 0x90
LBB2_8:                                 ## =>This Inner Loop Header: Depth=1
	pmulld	%xmm0, %xmm1
	pmulld	%xmm0, %xmm2
	incl	%eax
	jne	LBB2_8
LBB2_9:
	pmulld	%xmm2, %xmm1
	pshufd	$78, %xmm1, %xmm0       ## xmm0 = xmm1[2,3,0,1]
	pmulld	%xmm1, %xmm0
	pshufd	$229, %xmm0, %xmm1      ## xmm1 = xmm0[1,1,2,3]
	pmulld	%xmm0, %xmm1
	movd	%xmm1, %eax
	cmpl	%esi, %r8d
	je	LBB2_12
## %bb.10:
	andl	$7, %esi
	.p2align	4, 0x90
LBB2_11:                                ## =>This Inner Loop Header: Depth=1
	imull	%edi, %eax
	decl	%esi
	jne	LBB2_11
LBB2_12:
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function _Z7badBasef
LCPI3_0:
	.long	1065353216              ## float 1
LCPI3_1:
	.long	1056964608              ## float 0.5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z7badBasef
	.p2align	4, 0x90
__Z7badBasef:                           ## @_Z7badBasef
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movss	%xmm0, -20(%rbp)        ## 4-byte Spill
	movl	__ZZ7badBasefE4iter(%rip), %esi
	leal	1(%rsi), %eax
	movl	%eax, __ZZ7badBasefE4iter(%rip)
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
                                        ## kill: def $esi killed $esi killed $rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
	leaq	-32(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp0:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp1:
## %bb.1:
	movq	(%rax), %rcx
Ltmp2:
	movq	%rax, %rdi
	movl	$10, %esi
	callq	*56(%rcx)
Ltmp3:
## %bb.2:
	movl	%eax, %r14d
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movss	LCPI3_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	-20(%rbp), %xmm1        ## 4-byte Reload
                                        ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	LBB3_3
	jnp	LBB3_4
LBB3_3:
	movss	LCPI3_1(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	callq	__Z7badBasef
	mulss	-20(%rbp), %xmm0        ## 4-byte Folded Reload
LBB3_4:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB3_5:
Ltmp4:
	movq	%rax, %rbx
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0 ## >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0     ##   Call between Lfunc_begin0 and Ltmp0
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0     ## >> Call Site 2 <<
	.uleb128 Ltmp3-Ltmp0            ##   Call between Ltmp0 and Ltmp3
	.uleb128 Ltmp4-Lfunc_begin0     ##     jumps to Ltmp4
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0     ## >> Call Site 3 <<
	.uleb128 Lfunc_end0-Ltmp3       ##   Call between Ltmp3 and Lfunc_end0
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z13PrintStackTopv     ## -- Begin function _Z13PrintStackTopv
	.p2align	4, 0x90
__Z13PrintStackTopv:                    ## @_Z13PrintStackTopv
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	_st(%rip), %rsi
	testq	%rsi, %rsi
	jne	LBB4_2
## %bb.1:
	leaq	-20(%rbp), %rsi
	movq	%rsi, _st(%rip)
LBB4_2:
	leaq	-20(%rbp), %rax
	subq	%rax, %rsi
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rsi
	addq	%rbx, %rsi
	leaq	-32(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp5:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp6:
## %bb.3:
	movq	(%rax), %rcx
Ltmp7:
	movq	%rax, %rdi
	movl	$10, %esi
	callq	*56(%rcx)
Ltmp8:
## %bb.4:
	movl	%eax, %r14d
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%r14b, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB4_5:
Ltmp9:
	movq	%rax, %rbx
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1 ## >> Call Site 1 <<
	.uleb128 Ltmp5-Lfunc_begin1     ##   Call between Lfunc_begin1 and Ltmp5
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin1     ## >> Call Site 2 <<
	.uleb128 Ltmp8-Ltmp5            ##   Call between Ltmp5 and Ltmp8
	.uleb128 Ltmp9-Lfunc_begin1     ##     jumps to Ltmp9
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp8-Lfunc_begin1     ## >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp8       ##   Call between Ltmp8 and Lfunc_end1
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end1:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z3gcdii               ## -- Begin function _Z3gcdii
	.p2align	4, 0x90
__Z3gcdii:                              ## @_Z3gcdii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, %eax
	testl	%esi, %esi
	je	LBB5_1
## %bb.2:
	movl	%esi, %edx
	.p2align	4, 0x90
LBB5_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	%edx, %ecx
	cltd
	idivl	%ecx
	movl	%ecx, %eax
	testl	%edx, %edx
	jne	LBB5_3
	jmp	LBB5_4
LBB5_1:
	movl	%eax, %ecx
LBB5_4:
	movl	%ecx, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.zerofill __DATA,__bss,__ZZ7badBasefE4iter,4,2 ## @_ZZ7badBasefE4iter
	.globl	_st                     ## @st
.zerofill __DATA,__common,_st,8,3
.subsections_via_symbols
