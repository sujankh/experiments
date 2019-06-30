	.text
	.file	"dot_product.cc"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function main
.LCPI0_0:
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
.LCPI0_1:
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	8                       # 0x8
.LCPI0_2:
	.long	9                       # 0x9
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	12                      # 0xc
.LCPI0_3:
	.long	13                      # 0xd
	.long	14                      # 0xe
	.long	15                      # 0xf
	.long	16                      # 0x10
.LCPI0_4:
	.long	17                      # 0x11
	.long	18                      # 0x12
	.long	19                      # 0x13
	.long	20                      # 0x14
.LCPI0_5:
	.long	21                      # 0x15
	.long	22                      # 0x16
	.long	23                      # 0x17
	.long	24                      # 0x18
.LCPI0_6:
	.long	25                      # 0x19
	.long	26                      # 0x1a
	.long	27                      # 0x1b
	.long	28                      # 0x1c
.LCPI0_7:
	.long	29                      # 0x1d
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	32                      # 0x20
.LCPI0_8:
	.long	33                      # 0x21
	.long	34                      # 0x22
	.long	35                      # 0x23
	.long	36                      # 0x24
.LCPI0_9:
	.long	37                      # 0x25
	.long	38                      # 0x26
	.long	39                      # 0x27
	.long	40                      # 0x28
.LCPI0_10:
	.long	41                      # 0x29
	.long	42                      # 0x2a
	.long	43                      # 0x2b
	.long	44                      # 0x2c
.LCPI0_11:
	.long	45                      # 0x2d
	.long	46                      # 0x2e
	.long	47                      # 0x2f
	.long	48                      # 0x30
.LCPI0_12:
	.long	49                      # 0x31
	.long	50                      # 0x32
	.long	51                      # 0x33
	.long	52                      # 0x34
.LCPI0_13:
	.long	53                      # 0x35
	.long	54                      # 0x36
	.long	55                      # 0x37
	.long	56                      # 0x38
.LCPI0_14:
	.long	57                      # 0x39
	.long	58                      # 0x3a
	.long	59                      # 0x3b
	.long	60                      # 0x3c
.LCPI0_15:
	.long	61                      # 0x3d
	.long	62                      # 0x3e
	.long	63                      # 0x3f
	.long	64                      # 0x40
.LCPI0_16:
	.long	65                      # 0x41
	.long	66                      # 0x42
	.long	67                      # 0x43
	.long	68                      # 0x44
.LCPI0_17:
	.long	69                      # 0x45
	.long	70                      # 0x46
	.long	71                      # 0x47
	.long	72                      # 0x48
.LCPI0_18:
	.long	73                      # 0x49
	.long	74                      # 0x4a
	.long	75                      # 0x4b
	.long	76                      # 0x4c
.LCPI0_19:
	.long	77                      # 0x4d
	.long	78                      # 0x4e
	.long	79                      # 0x4f
	.long	80                      # 0x50
.LCPI0_20:
	.long	81                      # 0x51
	.long	82                      # 0x52
	.long	83                      # 0x53
	.long	84                      # 0x54
.LCPI0_21:
	.long	85                      # 0x55
	.long	86                      # 0x56
	.long	87                      # 0x57
	.long	88                      # 0x58
.LCPI0_22:
	.long	89                      # 0x59
	.long	90                      # 0x5a
	.long	91                      # 0x5b
	.long	92                      # 0x5c
.LCPI0_23:
	.long	93                      # 0x5d
	.long	94                      # 0x5e
	.long	95                      # 0x5f
	.long	96                      # 0x60
.LCPI0_24:
	.long	97                      # 0x61
	.long	98                      # 0x62
	.long	99                      # 0x63
	.long	100                     # 0x64
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$400, %edi              # imm = 0x190
	callq	_Znwm
	movq	%rax, %rbx
	movl	$400, %edx              # imm = 0x190
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset
.Ltmp0:
	movl	$400, %edi              # imm = 0x190
	callq	_Znwm
.Ltmp1:
# %bb.1:
	movq	%rax, %r14
	movl	$400, %edx              # imm = 0x190
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset
	movaps	.LCPI0_0(%rip), %xmm6   # xmm6 = [1,2,3,4]
	movups	%xmm6, (%rbx)
	movaps	.LCPI0_1(%rip), %xmm8   # xmm8 = [5,6,7,8]
	movups	%xmm8, 16(%rbx)
	movaps	.LCPI0_2(%rip), %xmm4   # xmm4 = [9,10,11,12]
	movups	%xmm4, 32(%rbx)
	movaps	.LCPI0_3(%rip), %xmm1   # xmm1 = [13,14,15,16]
	movups	%xmm1, 48(%rbx)
	movaps	.LCPI0_4(%rip), %xmm3   # xmm3 = [17,18,19,20]
	movups	%xmm3, 64(%rbx)
	movaps	.LCPI0_5(%rip), %xmm0   # xmm0 = [21,22,23,24]
	movups	%xmm0, 80(%rbx)
	movaps	.LCPI0_6(%rip), %xmm2   # xmm2 = [25,26,27,28]
	movups	%xmm2, 96(%rbx)
	movaps	%xmm2, %xmm15
	movaps	.LCPI0_7(%rip), %xmm2   # xmm2 = [29,30,31,32]
	movups	%xmm2, 112(%rbx)
	movaps	%xmm2, %xmm7
	movaps	.LCPI0_8(%rip), %xmm2   # xmm2 = [33,34,35,36]
	movups	%xmm2, 128(%rbx)
	movaps	.LCPI0_9(%rip), %xmm2   # xmm2 = [37,38,39,40]
	movups	%xmm2, 144(%rbx)
	movaps	.LCPI0_10(%rip), %xmm2  # xmm2 = [41,42,43,44]
	movups	%xmm2, 160(%rbx)
	movdqa	.LCPI0_11(%rip), %xmm14 # xmm14 = [45,46,47,48]
	movdqu	%xmm14, 176(%rbx)
	movdqa	.LCPI0_12(%rip), %xmm13 # xmm13 = [49,50,51,52]
	movdqu	%xmm13, 192(%rbx)
	movdqa	.LCPI0_13(%rip), %xmm12 # xmm12 = [53,54,55,56]
	movdqu	%xmm12, 208(%rbx)
	movdqa	.LCPI0_14(%rip), %xmm10 # xmm10 = [57,58,59,60]
	movdqu	%xmm10, 224(%rbx)
	movdqa	.LCPI0_15(%rip), %xmm5  # xmm5 = [61,62,63,64]
	movdqu	%xmm5, 240(%rbx)
	movups	%xmm6, (%r14)
	movdqa	.LCPI0_16(%rip), %xmm6  # xmm6 = [65,66,67,68]
	movdqu	%xmm6, 256(%rbx)
	movups	%xmm8, 16(%r14)
	movdqa	.LCPI0_17(%rip), %xmm8  # xmm8 = [69,70,71,72]
	movdqu	%xmm8, 272(%rbx)
	movups	%xmm4, 32(%r14)
	movdqa	.LCPI0_18(%rip), %xmm11 # xmm11 = [73,74,75,76]
	movdqu	%xmm11, 288(%rbx)
	movups	%xmm1, 48(%r14)
	movaps	.LCPI0_19(%rip), %xmm1  # xmm1 = [77,78,79,80]
	movups	%xmm1, 304(%rbx)
	movaps	%xmm1, %xmm4
	movups	%xmm3, 64(%r14)
	movdqa	.LCPI0_20(%rip), %xmm9  # xmm9 = [81,82,83,84]
	movdqu	%xmm9, 320(%rbx)
	movups	%xmm0, 80(%r14)
	movaps	.LCPI0_21(%rip), %xmm0  # xmm0 = [85,86,87,88]
	movups	%xmm0, 336(%rbx)
	movaps	%xmm0, %xmm3
	movaps	.LCPI0_22(%rip), %xmm0  # xmm0 = [89,90,91,92]
	movups	%xmm0, 352(%rbx)
	movaps	%xmm0, %xmm2
	movaps	.LCPI0_23(%rip), %xmm0  # xmm0 = [93,94,95,96]
	movups	%xmm0, 368(%rbx)
	movaps	%xmm0, %xmm1
	movaps	.LCPI0_24(%rip), %xmm0  # xmm0 = [97,98,99,100]
	movups	%xmm0, 384(%rbx)
	movups	%xmm15, 96(%r14)
	movups	%xmm7, 112(%r14)
	movaps	.LCPI0_8(%rip), %xmm15  # xmm15 = [33,34,35,36]
	movups	%xmm15, 128(%r14)
	movaps	.LCPI0_9(%rip), %xmm7   # xmm7 = [37,38,39,40]
	movups	%xmm7, 144(%r14)
	movaps	.LCPI0_10(%rip), %xmm7  # xmm7 = [41,42,43,44]
	movups	%xmm7, 160(%r14)
	movdqu	%xmm14, 176(%r14)
	movdqu	%xmm13, 192(%r14)
	movdqu	%xmm12, 208(%r14)
	movdqu	%xmm10, 224(%r14)
	movdqu	%xmm5, 240(%r14)
	movdqu	%xmm6, 256(%r14)
	movdqu	%xmm8, 272(%r14)
	movdqu	%xmm11, 288(%r14)
	movups	%xmm4, 304(%r14)
	movdqu	%xmm9, 320(%r14)
	movups	%xmm3, 336(%r14)
	movups	%xmm2, 352(%r14)
	movups	%xmm1, 368(%r14)
	movups	%xmm0, 384(%r14)
	movdqu	(%rbx), %xmm0
	movdqu	(%r14), %xmm1
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movdqu	16(%rbx), %xmm0
	movdqu	16(%r14), %xmm2
	pshufd	$245, %xmm2, %xmm3      # xmm3 = xmm2[1,1,3,3]
	pmuludq	%xmm0, %xmm2
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	paddd	%xmm1, %xmm2
	movdqu	32(%rbx), %xmm0
	movdqu	32(%r14), %xmm1
	pshufd	$245, %xmm1, %xmm3      # xmm3 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movdqu	48(%rbx), %xmm0
	movdqu	48(%r14), %xmm3
	pshufd	$245, %xmm3, %xmm4      # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm4, %xmm0
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	paddd	%xmm1, %xmm3
	paddd	%xmm2, %xmm3
	movdqu	64(%r14), %xmm0
	pshufd	$245, %xmm0, %xmm1      # xmm1 = xmm0[1,1,3,3]
	movdqu	64(%rbx), %xmm2
	pmuludq	%xmm2, %xmm0
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqu	80(%r14), %xmm1
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	movdqu	80(%rbx), %xmm4
	pmuludq	%xmm4, %xmm1
	pshufd	$245, %xmm4, %xmm4      # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm1, %xmm4      # xmm4 = xmm1[0,2,2,3]
	pshufd	$232, %xmm2, %xmm1      # xmm1 = xmm2[0,2,2,3]
	punpckldq	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1]
	paddd	%xmm0, %xmm4
	movdqu	96(%rbx), %xmm0
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	movdqa	.LCPI0_6(%rip), %xmm1   # xmm1 = [25,26,27,28]
	pmuludq	%xmm1, %xmm0
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm1, %xmm2
	pshufd	$232, %xmm0, %xmm1      # xmm1 = xmm0[0,2,2,3]
	pshufd	$232, %xmm2, %xmm0      # xmm0 = xmm2[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	paddd	%xmm4, %xmm1
	paddd	%xmm3, %xmm1
	movdqu	112(%rbx), %xmm0
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	movdqa	.LCPI0_7(%rip), %xmm3   # xmm3 = [29,30,31,32]
	pmuludq	%xmm3, %xmm0
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movdqu	128(%rbx), %xmm2
	pshufd	$245, %xmm2, %xmm3      # xmm3 = xmm2[1,1,3,3]
	movdqa	.LCPI0_8(%rip), %xmm4   # xmm4 = [33,34,35,36]
	pmuludq	%xmm4, %xmm2
	pshufd	$245, %xmm4, %xmm4      # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	paddd	%xmm0, %xmm2
	movdqu	144(%rbx), %xmm0
	pshufd	$245, %xmm0, %xmm3      # xmm3 = xmm0[1,1,3,3]
	movdqa	.LCPI0_9(%rip), %xmm4   # xmm4 = [37,38,39,40]
	pmuludq	%xmm4, %xmm0
	pshufd	$245, %xmm4, %xmm4      # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	paddd	%xmm2, %xmm0
	movdqu	160(%rbx), %xmm2
	pshufd	$245, %xmm2, %xmm3      # xmm3 = xmm2[1,1,3,3]
	movdqa	.LCPI0_10(%rip), %xmm4  # xmm4 = [41,42,43,44]
	pmuludq	%xmm4, %xmm2
	pshufd	$245, %xmm4, %xmm4      # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	paddd	%xmm0, %xmm2
	paddd	%xmm1, %xmm2
	movdqu	176(%rbx), %xmm0
	pshufd	$245, %xmm0, %xmm1      # xmm1 = xmm0[1,1,3,3]
	pmuludq	%xmm14, %xmm0
	pshufd	$245, %xmm14, %xmm3     # xmm3 = xmm14[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqu	192(%rbx), %xmm1
	pshufd	$245, %xmm1, %xmm3      # xmm3 = xmm1[1,1,3,3]
	pmuludq	%xmm13, %xmm1
	pshufd	$245, %xmm13, %xmm4     # xmm4 = xmm13[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	paddd	%xmm0, %xmm1
	movdqu	208(%rbx), %xmm0
	pshufd	$245, %xmm0, %xmm3      # xmm3 = xmm0[1,1,3,3]
	pmuludq	%xmm12, %xmm0
	pshufd	$245, %xmm12, %xmm4     # xmm4 = xmm12[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	paddd	%xmm1, %xmm0
	movdqu	224(%rbx), %xmm1
	pshufd	$245, %xmm1, %xmm3      # xmm3 = xmm1[1,1,3,3]
	pmuludq	%xmm10, %xmm1
	pshufd	$245, %xmm10, %xmm4     # xmm4 = xmm10[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	paddd	%xmm0, %xmm1
	movdqu	240(%rbx), %xmm0
	pshufd	$245, %xmm0, %xmm3      # xmm3 = xmm0[1,1,3,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$245, %xmm5, %xmm4      # xmm4 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	paddd	%xmm1, %xmm0
	paddd	%xmm2, %xmm0
	movdqu	256(%rbx), %xmm1
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm6, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm6, %xmm3      # xmm3 = xmm6[1,1,3,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqu	272(%rbx), %xmm2
	pshufd	$245, %xmm2, %xmm3      # xmm3 = xmm2[1,1,3,3]
	pmuludq	%xmm8, %xmm2
	pshufd	$245, %xmm8, %xmm4      # xmm4 = xmm8[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	paddd	%xmm1, %xmm2
	movdqu	288(%rbx), %xmm1
	pshufd	$245, %xmm1, %xmm3      # xmm3 = xmm1[1,1,3,3]
	pmuludq	%xmm11, %xmm1
	pshufd	$245, %xmm11, %xmm4     # xmm4 = xmm11[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	paddd	%xmm2, %xmm1
	movdqu	304(%rbx), %xmm2
	pshufd	$245, %xmm2, %xmm3      # xmm3 = xmm2[1,1,3,3]
	movdqa	.LCPI0_19(%rip), %xmm4  # xmm4 = [77,78,79,80]
	pmuludq	%xmm4, %xmm2
	pshufd	$245, %xmm4, %xmm4      # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	paddd	%xmm1, %xmm2
	movdqu	320(%rbx), %xmm1
	pshufd	$245, %xmm1, %xmm3      # xmm3 = xmm1[1,1,3,3]
	pmuludq	%xmm9, %xmm1
	pshufd	$245, %xmm9, %xmm4      # xmm4 = xmm9[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm1, %xmm4      # xmm4 = xmm1[0,2,2,3]
	pshufd	$232, %xmm3, %xmm1      # xmm1 = xmm3[0,2,2,3]
	punpckldq	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1]
	paddd	%xmm2, %xmm4
	movdqu	336(%rbx), %xmm1
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	movdqa	.LCPI0_21(%rip), %xmm3  # xmm3 = [85,86,87,88]
	pmuludq	%xmm3, %xmm1
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	paddd	%xmm4, %xmm1
	paddd	%xmm0, %xmm1
	movdqu	352(%rbx), %xmm0
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	movdqa	.LCPI0_22(%rip), %xmm3  # xmm3 = [89,90,91,92]
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movdqu	368(%rbx), %xmm2
	pshufd	$245, %xmm2, %xmm3      # xmm3 = xmm2[1,1,3,3]
	movdqa	.LCPI0_23(%rip), %xmm4  # xmm4 = [93,94,95,96]
	pmuludq	%xmm4, %xmm2
	pshufd	$245, %xmm4, %xmm4      # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	paddd	%xmm0, %xmm2
	movdqu	384(%rbx), %xmm0
	pshufd	$245, %xmm0, %xmm3      # xmm3 = xmm0[1,1,3,3]
	movdqa	.LCPI0_24(%rip), %xmm4  # xmm4 = [97,98,99,100]
	pmuludq	%xmm4, %xmm0
	pshufd	$245, %xmm4, %xmm4      # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	paddd	%xmm2, %xmm0
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %r15d
	movslq	%r15d, %rsi
.Ltmp3:
	movl	$_ZNSt3__14coutE, %edi
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
.Ltmp4:
# %bb.2:
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rsi
	addq	%rbp, %rsi
.Ltmp5:
	leaq	8(%rsp), %rdi
	callq	_ZNKSt3__18ios_base6getlocEv
.Ltmp6:
# %bb.3:
.Ltmp7:
	leaq	8(%rsp), %rdi
	movl	$_ZNSt3__15ctypeIcE2idE, %esi
	callq	_ZNKSt3__16locale9use_facetERNS0_2idE
.Ltmp8:
# %bb.4:
	movq	(%rax), %rcx
.Ltmp9:
	movq	%rax, %rdi
	movl	$10, %esi
	callq	*56(%rcx)
.Ltmp10:
# %bb.5:
	movl	%eax, %r12d
	leaq	8(%rsp), %rdi
	callq	_ZNSt3__16localeD1Ev
.Ltmp12:
	movsbl	%r12b, %esi
	movq	%rbp, %rdi
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
.Ltmp13:
# %bb.6:
.Ltmp14:
	movq	%rbp, %rdi
	callq	_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
.Ltmp15:
# %bb.7:
	movq	%r14, %rdi
	callq	_ZdlPv
	movq	%rbx, %rdi
	callq	_ZdlPv
	movl	%r15d, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_11:
	.cfi_def_cfa_offset 64
.Ltmp2:
	movq	%rax, %rbp
	jmp	.LBB0_10
.LBB0_12:
.Ltmp11:
	movq	%rax, %rbp
	leaq	8(%rsp), %rdi
	callq	_ZNSt3__16localeD1Ev
	jmp	.LBB0_9
.LBB0_8:
.Ltmp16:
	movq	%rax, %rbp
.LBB0_9:
	movq	%r14, %rdi
	callq	_ZdlPv
.LBB0_10:
	movq	%rbx, %rdi
	callq	_ZdlPv
	movq	%rbp, %rdi
	callq	_Unwind_Resume
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table0:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0   #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0   # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0          #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0   #     jumps to .Ltmp2
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0   # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1          #   Call between .Ltmp1 and .Ltmp3
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0   # >> Call Site 4 <<
	.uleb128 .Ltmp6-.Ltmp3          #   Call between .Ltmp3 and .Ltmp6
	.uleb128 .Ltmp16-.Lfunc_begin0  #     jumps to .Ltmp16
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0   # >> Call Site 5 <<
	.uleb128 .Ltmp10-.Ltmp7         #   Call between .Ltmp7 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0  #     jumps to .Ltmp11
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0  # >> Call Site 6 <<
	.uleb128 .Ltmp15-.Ltmp12        #   Call between .Ltmp12 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin0  #     jumps to .Ltmp16
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0  # >> Call Site 7 <<
	.uleb128 .Lfunc_end0-.Ltmp15    #   Call between .Ltmp15 and .Lfunc_end0
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function

	.ident	"clang version 8.0.1-svn363010-1~exp1~20190611011222.76 (branches/release_80)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZNSt3__14coutE
	.addrsig_sym _ZNSt3__15ctypeIcE2idE
