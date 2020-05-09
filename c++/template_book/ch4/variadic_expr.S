	.text
	.file	"variadic_expr.cc"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4617765877924338074     # double 5.4000000000000004
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$3, %edi
	movl	$4, %esi
	callq	_Z5printIiJidEEvT_DpT0_
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.text._Z5printIiJidEEvT_DpT0_,"axG",@progbits,_Z5printIiJidEEvT_DpT0_,comdat
	.weak	_Z5printIiJidEEvT_DpT0_ # -- Begin function _Z5printIiJidEEvT_DpT0_
	.p2align	4, 0x90
	.type	_Z5printIiJidEEvT_DpT0_,@function
_Z5printIiJidEEvT_DpT0_:                # @_Z5printIiJidEEvT_DpT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	%esi, %r14d
	movl	%edi, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSolsEi
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB1_5
# %bb.1:
	cmpb	$0, 56(%rbp)
	je	.LBB1_3
# %bb.2:
	movb	67(%rbp), %al
	jmp	.LBB1_4
.LBB1_3:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbp), %rax
	movq	%rbp, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB1_4:
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	%r14d, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_Z5printIiJdEEvT_DpT0_  # TAILCALL
.LBB1_5:
	.cfi_def_cfa_offset 48
	callq	_ZSt16__throw_bad_castv
.Lfunc_end1:
	.size	_Z5printIiJidEEvT_DpT0_, .Lfunc_end1-_Z5printIiJidEEvT_DpT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z5printIiJdEEvT_DpT0_,"axG",@progbits,_Z5printIiJdEEvT_DpT0_,comdat
	.weak	_Z5printIiJdEEvT_DpT0_  # -- Begin function _Z5printIiJdEEvT_DpT0_
	.p2align	4, 0x90
	.type	_Z5printIiJdEEvT_DpT0_,@function
_Z5printIiJdEEvT_DpT0_:                 # @_Z5printIiJdEEvT_DpT0_
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movl	%edi, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB2_9
# %bb.1:
	cmpb	$0, 56(%rbx)
	je	.LBB2_3
# %bb.2:
	movb	67(%rbx), %al
	jmp	.LBB2_4
.LBB2_3:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB2_4:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB2_9
# %bb.5:
	cmpb	$0, 56(%rbx)
	je	.LBB2_7
# %bb.6:
	movb	67(%rbx), %al
	jmp	.LBB2_8
.LBB2_7:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB2_8:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv           # TAILCALL
.LBB2_9:
	.cfi_def_cfa_offset 32
	callq	_ZSt16__throw_bad_castv
.Lfunc_end2:
	.size	_Z5printIiJdEEvT_DpT0_, .Lfunc_end2-_Z5printIiJdEEvT_DpT0_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_variadic_expr.cc
	.type	_GLOBAL__sub_I_variadic_expr.cc,@function
_GLOBAL__sub_I_variadic_expr.cc:        # @_GLOBAL__sub_I_variadic_expr.cc
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit            # TAILCALL
.Lfunc_end3:
	.size	_GLOBAL__sub_I_variadic_expr.cc, .Lfunc_end3-_GLOBAL__sub_I_variadic_expr.cc
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_variadic_expr.cc

	.ident	"clang version 8.0.1-svn369350-1~exp1~20190820123301.82 (branches/release_80)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _GLOBAL__sub_I_variadic_expr.cc
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
