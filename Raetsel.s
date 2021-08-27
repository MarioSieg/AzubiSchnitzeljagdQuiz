	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"Raetsel.c"
	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
.seh_proc main
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$312, %rsp                      # imm = 0x138
	.seh_stackalloc 312
	movaps	%xmm6, 288(%rsp)                # 16-byte Spill
	.seh_savexmm %xmm6, 288
	.seh_endprologue
	leaq	"??_C@_04JMKOONMD@?$CFs?$DP?6?$AA@"(%rip), %rcx
	leaq	"??_C@_01BNIGIBBF@Q?$AA@"(%rip), %rdx
	callq	printf
	xorps	%xmm6, %xmm6
	movaps	%xmm6, 32(%rsp)
	movaps	%xmm6, 48(%rsp)
	movaps	%xmm6, 64(%rsp)
	movaps	%xmm6, 80(%rsp)
	movaps	%xmm6, 96(%rsp)
	movaps	%xmm6, 112(%rsp)
	movaps	%xmm6, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm6, 160(%rsp)
	movaps	%xmm6, 176(%rsp)
	movaps	%xmm6, 192(%rsp)
	movaps	%xmm6, 208(%rsp)
	movaps	%xmm6, 224(%rsp)
	movaps	%xmm6, 240(%rsp)
	movaps	%xmm6, 256(%rsp)
	movups	%xmm6, 271(%rsp)
	xorl	%ecx, %ecx
	callq	__acrt_iob_func
	leaq	32(%rsp), %rcx
	movl	$255, %edx
	movq	%rax, %r8
	callq	fgets
	cmpb	$65, 32(%rsp)
	jne	.LBB0_1
.LBB0_3:
	leaq	"??_C@_0BN@PLGGNLKK@Yay?$CB?5Ihr?5habt?5es?5geschafft?$CB?6?$AA@"(%rip), %rcx
	callq	printf
	leaq	"??_C@_0CB@BLELIFKM@Euer?5neuer?5Ansprechpartner?5ist?3?5@"(%rip), %rcx
	callq	printf
	leaq	"??_C@_03JDANDILB@?$CFd?5?$AA@"(%rip), %rsi
	movq	%rsi, %rcx
	movl	$13, %edx
	callq	printf
	movq	%rsi, %rcx
	movl	$1, %edx
	callq	printf
	movq	%rsi, %rcx
	movl	$18, %edx
	callq	printf
	movq	%rsi, %rcx
	movl	$9, %edx
	callq	printf
	movq	%rsi, %rcx
	movl	$15, %edx
	callq	printf
	movq	%rsi, %rcx
	movl	$19, %edx
	callq	printf
	movq	%rsi, %rcx
	movl	$9, %edx
	callq	printf
	movq	%rsi, %rcx
	movl	$5, %edx
	callq	printf
	movq	%rsi, %rcx
	movl	$7, %edx
	callq	printf
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_4
.LBB0_1:
	leaq	"??_C@_0CC@IJNFGCKA@Leider?5ist?5die?5Antwort?5falsch?5?3?$CI@"(%rip), %rsi
	leaq	32(%rsp), %rdi
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rcx
	callq	printf
	movaps	%xmm6, 32(%rsp)
	movaps	%xmm6, 48(%rsp)
	movaps	%xmm6, 64(%rsp)
	movaps	%xmm6, 80(%rsp)
	movaps	%xmm6, 96(%rsp)
	movaps	%xmm6, 112(%rsp)
	movaps	%xmm6, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm6, 160(%rsp)
	movaps	%xmm6, 176(%rsp)
	movaps	%xmm6, 192(%rsp)
	movaps	%xmm6, 208(%rsp)
	movaps	%xmm6, 224(%rsp)
	movaps	%xmm6, 240(%rsp)
	movaps	%xmm6, 256(%rsp)
	movups	%xmm6, 271(%rsp)
	xorl	%ecx, %ecx
	callq	__acrt_iob_func
	movq	%rdi, %rcx
	movl	$255, %edx
	movq	%rax, %r8
	callq	fgets
	cmpb	$65, 32(%rsp)
	je	.LBB0_3
	jmp	.LBB0_2
	.seh_endproc
                                        # -- End function
	.def	 printf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,printf
	.globl	printf                          # -- Begin function printf
	.p2align	4, 0x90
printf:                                 # @printf
.seh_proc printf
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, 88(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, 40(%rsp)
	movl	$1, %ecx
	callq	__acrt_iob_func
	movq	%rax, %rdi
	callq	__local_stdio_printf_options
	movq	(%rax), %rcx
	movq	%rbx, 32(%rsp)
	movq	%rdi, %rdx
	movq	%rsi, %r8
	xorl	%r9d, %r9d
	callq	__stdio_common_vfprintf
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	retq
	.seh_endproc
                                        # -- End function
	.def	 __local_stdio_printf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_printf_options
	.globl	__local_stdio_printf_options    # -- Begin function __local_stdio_printf_options
	.p2align	4, 0x90
__local_stdio_printf_options:           # @__local_stdio_printf_options
# %bb.0:
	leaq	__local_stdio_printf_options._OptionsStorage(%rip), %rax
	retq
                                        # -- End function
	.section	.rdata,"dr",discard,"??_C@_04JMKOONMD@?$CFs?$DP?6?$AA@"
	.globl	"??_C@_04JMKOONMD@?$CFs?$DP?6?$AA@" # @"??_C@_04JMKOONMD@?$CFs?$DP?6?$AA@"
"??_C@_04JMKOONMD@?$CFs?$DP?6?$AA@":
	.asciz	"%s?\n"

	.section	.rdata,"dr",discard,"??_C@_0CC@IJNFGCKA@Leider?5ist?5die?5Antwort?5falsch?5?3?$CI@"
	.globl	"??_C@_0CC@IJNFGCKA@Leider?5ist?5die?5Antwort?5falsch?5?3?$CI@" # @"??_C@_0CC@IJNFGCKA@Leider?5ist?5die?5Antwort?5falsch?5?3?$CI@"
"??_C@_0CC@IJNFGCKA@Leider?5ist?5die?5Antwort?5falsch?5?3?$CI@":
	.asciz	"Leider ist die Antwort falsch :(\n"

	.section	.rdata,"dr",discard,"??_C@_0BN@PLGGNLKK@Yay?$CB?5Ihr?5habt?5es?5geschafft?$CB?6?$AA@"
	.globl	"??_C@_0BN@PLGGNLKK@Yay?$CB?5Ihr?5habt?5es?5geschafft?$CB?6?$AA@" # @"??_C@_0BN@PLGGNLKK@Yay?$CB?5Ihr?5habt?5es?5geschafft?$CB?6?$AA@"
"??_C@_0BN@PLGGNLKK@Yay?$CB?5Ihr?5habt?5es?5geschafft?$CB?6?$AA@":
	.asciz	"Yay! Ihr habt es geschafft!\n"

	.section	.rdata,"dr",discard,"??_C@_0CB@BLELIFKM@Euer?5neuer?5Ansprechpartner?5ist?3?5@"
	.globl	"??_C@_0CB@BLELIFKM@Euer?5neuer?5Ansprechpartner?5ist?3?5@" # @"??_C@_0CB@BLELIFKM@Euer?5neuer?5Ansprechpartner?5ist?3?5@"
"??_C@_0CB@BLELIFKM@Euer?5neuer?5Ansprechpartner?5ist?3?5@":
	.asciz	"Euer neuer Ansprechpartner ist: "

	.section	.rdata,"dr",discard,"??_C@_03JDANDILB@?$CFd?5?$AA@"
	.globl	"??_C@_03JDANDILB@?$CFd?5?$AA@" # @"??_C@_03JDANDILB@?$CFd?5?$AA@"
"??_C@_03JDANDILB@?$CFd?5?$AA@":
	.asciz	"%d "

	.lcomm	__local_stdio_printf_options._OptionsStorage,8,8 # @__local_stdio_printf_options._OptionsStorage
	.section	.rdata,"dr",discard,"??_C@_01BNIGIBBF@Q?$AA@"
	.globl	"??_C@_01BNIGIBBF@Q?$AA@"       # @"??_C@_01BNIGIBBF@Q?$AA@"
"??_C@_01BNIGIBBF@Q?$AA@":
	.asciz	"Q"

	.addrsig
	.addrsig_sym __local_stdio_printf_options._OptionsStorage
