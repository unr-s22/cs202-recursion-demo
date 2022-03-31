	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 1
	.globl	__Z12exponentiateii     ## -- Begin function _Z12exponentiateii
	.p2align	4, 0x90
__Z12exponentiateii:                    ## @_Z12exponentiateii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	LBB0_2
## %bb.1:
	movl	$1, -4(%rbp)
	jmp	LBB0_3
LBB0_2:
	movl	-8(%rbp), %eax
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	callq	__Z12exponentiateii
	movl	-16(%rbp), %ecx         ## 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, -4(%rbp)
LBB0_3:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z4exp1iii             ## -- Begin function _Z4exp1iii
	.p2align	4, 0x90
__Z4exp1iii:                            ## @_Z4exp1iii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$0, -12(%rbp)
	jne	LBB1_2
## %bb.1:
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB1_3
LBB1_2:
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	-16(%rbp), %ecx
	imull	-8(%rbp), %ecx
	movl	%eax, %esi
	movl	%ecx, %edx
	callq	__Z4exp1iii
	movl	%eax, -4(%rbp)
LBB1_3:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z2goii                ## -- Begin function _Z2goii
	.p2align	4, 0x90
__Z2goii:                               ## @_Z2goii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	$1, %edx
	callq	__Z4exp1iii
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function _Z7badBasef
LCPI3_0:
	.long	1065353216              ## float 1
LCPI3_1:
	.long	1073741824              ## float 2
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z7badBasef
	.p2align	4, 0x90
__Z7badBasef:                           ## @_Z7badBasef
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	movss	%xmm0, -8(%rbp)
	movl	__ZZ7badBasefE4iter(%rip), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, __ZZ7badBasefE4iter(%rip)
	movl	%eax, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	movq	%rax, %rdi
	leaq	__ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	movss	LCPI3_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	LBB3_2
	jp	LBB3_2
## %bb.1:
	movss	LCPI3_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	LBB3_3
LBB3_2:
	movss	LCPI3_1(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         ## xmm1 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm2         ## xmm2 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movss	%xmm1, -12(%rbp)        ## 4-byte Spill
	callq	__Z7badBasef
	movss	-12(%rbp), %xmm1        ## 4-byte Reload
                                        ## xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, -4(%rbp)
LBB3_3:
	movss	-4(%rbp), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E: ## @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	*-16(%rbp)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
__ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ## @_ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movl	$10, %esi
	callq	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movsbl	%al, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movq	-8(%rbp), %rcx
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z13PrintStackTopv     ## -- Begin function _Z13PrintStackTopv
	.p2align	4, 0x90
__Z13PrintStackTopv:                    ## @_Z13PrintStackTopv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	cmpq	$0, _st(%rip)
	jne	LBB6_2
## %bb.1:
	leaq	-4(%rbp), %rax
	movq	%rax, _st(%rip)
LBB6_2:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	-4(%rbp), %rax
	movq	_st(%rip), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	movq	%rax, %rdi
	leaq	__ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
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
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	LBB7_2
## %bb.1:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB7_3
LBB7_2:
	movl	-12(%rbp), %edi
	movl	-8(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %esi
	callq	__Z3gcdii
	movl	%eax, -4(%rbp)
LBB7_3:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$255, -8(%rbp)
	movl	$206, %edi
	movl	$40, %esi
	callq	__Z3gcdii
	xorl	%ecx, %ecx
	movl	%eax, -8(%rbp)
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc: ## @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
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
	subq	$64, %rsp
                                        ## kill: def $sil killed $sil killed $esi
	movq	%rdi, -8(%rbp)
	movb	%sil, -9(%rbp)
	movq	-8(%rbp), %rsi
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp0:
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
Ltmp1:
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	jmp	LBB9_1
LBB9_1:
	movsbl	-9(%rbp), %esi
Ltmp2:
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNKSt3__15ctypeIcE5widenEc
Ltmp3:
	movb	%al, -57(%rbp)          ## 1-byte Spill
	jmp	LBB9_2
LBB9_2:
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movb	-57(%rbp), %al          ## 1-byte Reload
	movsbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
LBB9_3:
Ltmp4:
                                        ## kill: def $edx killed $edx killed $rdx
	movq	%rax, -32(%rbp)
	movl	%edx, -36(%rbp)
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
## %bb.4:
	movq	-32(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table9:
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
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE: ## @_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__15ctypeIcE5widenEc
__ZNKSt3__15ctypeIcE5widenEc:           ## @_ZNKSt3__15ctypeIcE5widenEc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
                                        ## kill: def $sil killed $sil killed $esi
	movq	%rdi, -8(%rbp)
	movb	%sil, -9(%rbp)
	movq	-8(%rbp), %rax
	movb	-9(%rbp), %cl
	movq	(%rax), %rdx
	movq	%rax, %rdi
	movsbl	%cl, %esi
	callq	*56(%rdx)
	movsbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.zerofill __DATA,__bss,__ZZ7badBasefE4iter,4,2 ## @_ZZ7badBasefE4iter
	.globl	_st                     ## @st
.zerofill __DATA,__common,_st,8,3
.subsections_via_symbols
