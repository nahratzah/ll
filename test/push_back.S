	.file	"push_back.c"
	.file	1 "push_back.c"
	.file	2 "/usr/include/stdatomic.h"
	.file	3 "../include/ll.h"
	.file	4 "./llobj.h"
	.section	.debug_info,"",@progbits
.Lsection_info:
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.section	.debug_aranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.section	.debug_line,"",@progbits
.Lsection_line:
	.section	.debug_loc,"",@progbits
	.section	.debug_pubtypes,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Lsection_str:
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.section	.debug_loc,"",@progbits
.Lsection_debug_loc:
	.text
.Ltext_begin:
	.data
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 14 0                  # push_back.c:14:0
# BB#0:
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp4:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	.loc	1 16 31 prologue_end    # push_back.c:16:31
.Ltmp5:
	movq	$0, -24(%rbp)
	.loc	1 18 7                  # push_back.c:18:7
.Ltmp6:
	movl	$0, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$1000, -8(%rbp)         # imm = 0x3E8
	jge	.LBB0_4
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	leaq	data, %rax
	.loc	1 19 3                  # push_back.c:19:3
	movl	-8(%rbp), %ecx
	movslq	-8(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movl	%ecx, (%rax)
# BB#3:                                 #   in Loop: Header=BB0_1 Depth=1
	.loc	1 18 21                 # push_back.c:18:21
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_1
.Ltmp7:
.LBB0_4:
	.loc	1 21 7                  # push_back.c:21:7
	movl	$0, -8(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$1000, -8(%rbp)         # imm = 0x3E8
	jge	.LBB0_8
# BB#6:                                 #   in Loop: Header=BB0_5 Depth=1
	leaq	list, %rdi
	leaq	data, %rax
	.loc	1 22 3                  # push_back.c:22:3
.Ltmp8:
	movslq	-8(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	ll_insert_tail_objlist
	leaq	list, %rdi
	leaq	data, %rax
	.loc	1 23 3                  # push_back.c:23:3
	movslq	-8(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	ll_release_objlist
.Ltmp9:
# BB#7:                                 #   in Loop: Header=BB0_5 Depth=1
	.loc	1 21 21                 # push_back.c:21:21
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_5
.Ltmp10:
.LBB0_8:
	leaq	data, %rax
	addq	$8, %rax
	.loc	1 29 2                  # push_back.c:29:2
	cmpq	%rax, list
	jne	.LBB0_10
# BB#9:
	jmp	.LBB0_11
.LBB0_10:
	leaq	.L.str, %rdi
	movl	$29, %esi
	leaq	.L__func__.main, %rdx
	leaq	.L.str1, %rcx
	callq	__assert2
.LBB0_11:
	.loc	1 30 7                  # push_back.c:30:7
.Ltmp11:
	movl	$0, -8(%rbp)
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	cmpl	$999, -8(%rbp)          # imm = 0x3E7
	jge	.LBB0_18
# BB#13:                                #   in Loop: Header=BB0_12 Depth=1
	leaq	data, %rax
	.loc	1 31 3                  # push_back.c:31:3
	movslq	-8(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	8(%rdx), %rcx
	movl	-8(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	cmpq	%rax, %rcx
	jne	.LBB0_15
# BB#14:                                #   in Loop: Header=BB0_12 Depth=1
	jmp	.LBB0_16
.LBB0_15:
	leaq	.L.str, %rdi
	movl	$31, %esi
	leaq	.L__func__.main, %rdx
	leaq	.L.str2, %rcx
	callq	__assert2
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_12 Depth=1
	.loc	1 30 25                 # push_back.c:30:25
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_12
.Ltmp12:
.LBB0_18:
	leaq	list, %rax
	.loc	1 32 2                  # push_back.c:32:2
	cmpq	%rax, data+31976
	jne	.LBB0_20
# BB#19:
	jmp	.LBB0_21
.LBB0_20:
	leaq	.L.str, %rdi
	movl	$32, %esi
	leaq	.L__func__.main, %rdx
	leaq	.L.str3, %rcx
	callq	__assert2
.LBB0_21:
	leaq	data, %rax
	addq	$31968, %rax            # imm = 0x7CE0
	addq	$8, %rax
	.loc	1 37 2                  # push_back.c:37:2
	cmpq	%rax, list+8
	jne	.LBB0_23
# BB#22:
	jmp	.LBB0_24
.LBB0_23:
	leaq	.L.str, %rdi
	movl	$37, %esi
	leaq	.L__func__.main, %rdx
	leaq	.L.str4, %rcx
	callq	__assert2
.LBB0_24:
	.loc	1 38 7                  # push_back.c:38:7
.Ltmp13:
	movl	$0, -8(%rbp)
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	cmpl	$999, -8(%rbp)          # imm = 0x3E7
	jge	.LBB0_31
# BB#26:                                #   in Loop: Header=BB0_25 Depth=1
	leaq	data, %rax
	.loc	1 39 3                  # push_back.c:39:3
	movl	-8(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$5, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movslq	-8(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rax
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.LBB0_28
# BB#27:                                #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_29
.LBB0_28:
	leaq	.L.str, %rdi
	movl	$39, %esi
	leaq	.L__func__.main, %rdx
	leaq	.L.str5, %rcx
	callq	__assert2
.LBB0_29:                               #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_30
.LBB0_30:                               #   in Loop: Header=BB0_25 Depth=1
	.loc	1 38 25                 # push_back.c:38:25
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_25
.Ltmp14:
.LBB0_31:
	leaq	list, %rax
	.loc	1 40 2                  # push_back.c:40:2
	cmpq	%rax, data+16
	jne	.LBB0_33
# BB#32:
	jmp	.LBB0_34
.LBB0_33:
	leaq	.L.str, %rdi
	movl	$40, %esi
	leaq	.L__func__.main, %rdx
	leaq	.L.str6, %rcx
	callq	__assert2
.LBB0_34:
	.loc	1 45 2                  # push_back.c:45:2
	cmpq	$2, list+16
	jne	.LBB0_36
# BB#35:
	jmp	.LBB0_37
.LBB0_36:
	leaq	.L.str, %rdi
	movl	$45, %esi
	leaq	.L__func__.main, %rdx
	leaq	.L.str7, %rcx
	callq	__assert2
.LBB0_37:
	.loc	1 46 7                  # push_back.c:46:7
.Ltmp15:
	movl	$0, -8(%rbp)
.LBB0_38:                               # =>This Inner Loop Header: Depth=1
	cmpl	$999, -8(%rbp)          # imm = 0x3E7
	jge	.LBB0_44
# BB#39:                                #   in Loop: Header=BB0_38 Depth=1
	leaq	data, %rax
	.loc	1 47 3                  # push_back.c:47:3
	movl	-8(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	cmpq	$2, 24(%rax)
	jne	.LBB0_41
# BB#40:                                #   in Loop: Header=BB0_38 Depth=1
	jmp	.LBB0_42
.LBB0_41:
	leaq	.L.str, %rdi
	movl	$47, %esi
	leaq	.L__func__.main, %rdx
	leaq	.L.str8, %rcx
	callq	__assert2
.LBB0_42:                               #   in Loop: Header=BB0_38 Depth=1
	jmp	.LBB0_43
.LBB0_43:                               #   in Loop: Header=BB0_38 Depth=1
	.loc	1 46 25                 # push_back.c:46:25
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_38
.Ltmp16:
.LBB0_44:
	leaq	list, %rdi
	.loc	1 50 7                  # push_back.c:50:7
.Ltmp17:
	movl	$0, -8(%rbp)
	.loc	1 50 18                 # push_back.c:50:18
	callq	ll_first_objlist
	movq	%rax, -16(%rbp)
.LBB0_45:                               # =>This Inner Loop Header: Depth=1
	cmpl	$1000, -8(%rbp)         # imm = 0x3E8
	jge	.LBB0_54
# BB#46:                                #   in Loop: Header=BB0_45 Depth=1
	.loc	1 53 3                  # push_back.c:53:3
.Ltmp18:
	cmpq	$0, -16(%rbp)
	je	.LBB0_48
# BB#47:                                #   in Loop: Header=BB0_45 Depth=1
	jmp	.LBB0_49
.LBB0_48:
	leaq	.L.str, %rdi
	movl	$53, %esi
	leaq	.L__func__.main, %rdx
	leaq	.L.str9, %rcx
	callq	__assert2
.LBB0_49:                               #   in Loop: Header=BB0_45 Depth=1
	.loc	1 54 3                  # push_back.c:54:3
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	jne	.LBB0_51
# BB#50:                                #   in Loop: Header=BB0_45 Depth=1
	jmp	.LBB0_52
.LBB0_51:
	leaq	.L.str, %rdi
	movl	$54, %esi
	leaq	.L__func__.main, %rdx
	leaq	.L.str10, %rcx
	callq	__assert2
.LBB0_52:                               #   in Loop: Header=BB0_45 Depth=1
	leaq	list, %rdi
	.loc	1 56 12                 # push_back.c:56:12
	movq	-16(%rbp), %rsi
	callq	ll_succ_objlist
	leaq	list, %rdi
	movq	%rax, -24(%rbp)
	.loc	1 58 3                  # push_back.c:58:3
	movq	-16(%rbp), %rsi
	callq	ll_release_objlist
.Ltmp19:
# BB#53:                                #   in Loop: Header=BB0_45 Depth=1
	.loc	1 52 6                  # push_back.c:52:6
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB0_45
.Ltmp20:
.LBB0_54:
	movl	$0, %eax
	.loc	1 61 2                  # push_back.c:61:2
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp21:
.Ltmp22:
	.size	main, .Ltmp22-main
.Lfunc_end0:
	.cfi_endproc

	.align	16, 0x90
	.type	ll_insert_tail_objlist,@function
ll_insert_tail_objlist:                 # @ll_insert_tail_objlist
	.cfi_startproc
.Lfunc_begin1:
	.loc	4 16 0                  # ./llobj.h:16:0
# BB#0:
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc	4 16 1 prologue_end     # ./llobj.h:16:1
.Ltmp28:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$8, %rsi
	callq	ll_insert_tail
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp29:
.Ltmp30:
	.size	ll_insert_tail_objlist, .Ltmp30-ll_insert_tail_objlist
.Lfunc_end1:
	.cfi_endproc

	.align	16, 0x90
	.type	ll_release_objlist,@function
ll_release_objlist:                     # @ll_release_objlist
	.cfi_startproc
.Lfunc_begin2:
	.loc	4 16 0                  # ./llobj.h:16:0
# BB#0:
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc	4 16 1 prologue_end     # ./llobj.h:16:1
.Ltmp36:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$8, %rsi
	callq	ll_release
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp37:
.Ltmp38:
	.size	ll_release_objlist, .Ltmp38-ll_release_objlist
.Lfunc_end2:
	.cfi_endproc

	.align	16, 0x90
	.type	ll_first_objlist,@function
ll_first_objlist:                       # @ll_first_objlist
	.cfi_startproc
.Lfunc_begin3:
	.loc	4 16 0                  # ./llobj.h:16:0
# BB#0:
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc	4 16 1 prologue_end     # ./llobj.h:16:1
.Ltmp44:
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	ll_succ
	movq	%rax, %rdi
	callq	ll_elem_objlist
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp45:
.Ltmp46:
	.size	ll_first_objlist, .Ltmp46-ll_first_objlist
.Lfunc_end3:
	.cfi_endproc

	.align	16, 0x90
	.type	ll_succ_objlist,@function
ll_succ_objlist:                        # @ll_succ_objlist
	.cfi_startproc
.Lfunc_begin4:
	.loc	4 16 0                  # ./llobj.h:16:0
# BB#0:
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc	4 16 1 prologue_end     # ./llobj.h:16:1
.Ltmp52:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$8, %rsi
	callq	ll_succ
	movq	%rax, %rdi
	callq	ll_elem_objlist
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp53:
.Ltmp54:
	.size	ll_succ_objlist, .Ltmp54-ll_succ_objlist
.Lfunc_end4:
	.cfi_endproc

	.align	16, 0x90
	.type	ll_elem_objlist,@function
ll_elem_objlist:                        # @ll_elem_objlist
	.cfi_startproc
.Lfunc_begin5:
	.loc	4 16 0                  # ./llobj.h:16:0
# BB#0:
	movq	%rdi, -8(%rsp)
	.loc	4 16 1 prologue_end     # ./llobj.h:16:1
.Ltmp55:
	cmpq	$0, -8(%rsp)
	jne	.LBB5_2
# BB#1:
	movabsq	$0, %rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	jmp	.LBB5_3
.LBB5_2:
	movq	-8(%rsp), %rax
	subq	$8, %rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
.LBB5_3:
	movq	-16(%rsp), %rax         # 8-byte Reload
	ret
.Ltmp56:
.Ltmp57:
	.size	ll_elem_objlist, .Ltmp57-ll_elem_objlist
.Lfunc_end5:
	.cfi_endproc

	.type	list,@object            # @list
	.data
	.globl	list
	.align	8
list:
	.quad	list
	.quad	list
	.quad	2                       # 0x2
	.zero	8
	.size	list, 32

	.type	data,@object            # @data
	.comm	data,32000,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "push_back.c"
	.size	.L.str, 12

	.type	.L__func__.main,@object # @__func__.main
.L__func__.main:
	.asciz	 "main"
	.size	.L__func__.main, 5

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "SUCC(&list.ll_head.q) == &data[0].entry"
	.size	.L.str1, 40

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "SUCC(&data[i].entry) == &data[i + 1].entry"
	.size	.L.str2, 43

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "SUCC(&data[N - 1].entry) == &list.ll_head.q"
	.size	.L.str3, 44

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "PRED(&list.ll_head.q) == &data[N - 1].entry"
	.size	.L.str4, 44

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	 "PRED(&data[i + 1].entry) == &data[i].entry"
	.size	.L.str5, 43

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	 "PRED(&data[0].entry) == &list.ll_head.q"
	.size	.L.str6, 40

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	 "REFCNT(&list.ll_head.q) == 2"
	.size	.L.str7, 29

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	 "REFCNT(&data[i + 1].entry) == 2"
	.size	.L.str8, 32

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	 "o != NULL"
	.size	.L.str9, 10

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	 "o->satelite == i"
	.size	.L.str10, 17

	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.data
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	736                     # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x2d9 DW_TAG_compile_unit
	.long	.Lstring0               # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Lstring1               # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Lstring2               # DW_AT_comp_dir
	.byte	2                       # Abbrev [2] 0x26:0x7 DW_TAG_base_type
	.long	.Lstring8               # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x2d:0xb DW_TAG_typedef
	.long	38                      # DW_AT_type
	.long	.Lstring9               # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.byte	4                       # Abbrev [4] 0x38:0x5 DW_TAG_volatile_type
	.long	45                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x3d:0x14 DW_TAG_structure_type
	.byte	8                       # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	180                     # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x41:0xf DW_TAG_member
	.long	.Lstring7               # DW_AT_name
	.long	56                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	180                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x51:0xb DW_TAG_typedef
	.long	61                      # DW_AT_type
	.long	.Lstring10              # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	180                     # DW_AT_decl_line
	.byte	3                       # Abbrev [3] 0x5c:0xb DW_TAG_typedef
	.long	81                      # DW_AT_type
	.long	.Lstring11              # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.byte	3                       # Abbrev [3] 0x67:0xb DW_TAG_typedef
	.long	38                      # DW_AT_type
	.long	.Lstring14              # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	126                     # DW_AT_decl_line
	.byte	4                       # Abbrev [4] 0x72:0x5 DW_TAG_volatile_type
	.long	103                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x77:0x14 DW_TAG_structure_type
	.byte	8                       # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	181                     # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x7b:0xf DW_TAG_member
	.long	.Lstring7               # DW_AT_name
	.long	114                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	181                     # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x8b:0xb DW_TAG_typedef
	.long	119                     # DW_AT_type
	.long	.Lstring15              # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	181                     # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x96:0x36 DW_TAG_structure_type
	.long	.Lstring16              # DW_AT_name
	.byte	24                      # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x9e:0xf DW_TAG_member
	.long	.Lstring6               # DW_AT_name
	.long	92                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0xad:0xf DW_TAG_member
	.long	.Lstring12              # DW_AT_name
	.long	92                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0xbc:0xf DW_TAG_member
	.long	.Lstring13              # DW_AT_name
	.long	139                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0xcc:0x27 DW_TAG_structure_type
	.long	.Lstring4               # DW_AT_name
	.byte	32                      # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0xd4:0xf DW_TAG_member
	.long	.Lstring5               # DW_AT_name
	.long	150                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0xe3:0xf DW_TAG_member
	.long	.Lstring17              # DW_AT_name
	.long	139                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	35                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	24
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0xf3:0x18 DW_TAG_structure_type
	.long	.Lstring18              # DW_AT_name
	.byte	32                      # DW_AT_byte_size
	.byte	4                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0xfb:0xf DW_TAG_member
	.long	.Lstring4               # DW_AT_name
	.long	204                     # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x10b:0x16 DW_TAG_variable
	.long	.Lstring3               # DW_AT_name
	.long	243                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	4                       # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	list
	.byte	2                       # Abbrev [2] 0x121:0x7 DW_TAG_base_type
	.long	.Lstring21              # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	7                       # Abbrev [7] 0x128:0x27 DW_TAG_structure_type
	.long	.Lstring23              # DW_AT_name
	.byte	32                      # DW_AT_byte_size
	.byte	4                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x130:0xf DW_TAG_member
	.long	.Lstring20              # DW_AT_name
	.long	289                     # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	12                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x13f:0xf DW_TAG_member
	.long	.Lstring22              # DW_AT_name
	.long	150                     # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x14f:0x3 DW_TAG_base_type
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	10                      # Abbrev [10] 0x152:0xd DW_TAG_array_type
	.long	296                     # DW_AT_type
	.byte	11                      # Abbrev [11] 0x157:0x7 DW_TAG_subrange_type
	.long	335                     # DW_AT_type
	.short	999                     # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	8                       # Abbrev [8] 0x15f:0x16 DW_TAG_variable
	.long	.Lstring19              # DW_AT_name
	.long	338                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	data
	.byte	12                      # Abbrev [12] 0x175:0x5b DW_TAG_subprogram
	.long	.Lstring24              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
	.long	289                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.quad	.Lfunc_end0             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	13                      # Abbrev [13] 0x193:0x3c DW_TAG_lexical_block
	.quad	.Ltmp5                  # DW_AT_low_pc
	.quad	.Ltmp21                 # DW_AT_high_pc
	.byte	14                      # Abbrev [14] 0x1a4:0xe DW_TAG_variable
	.long	.Lstring30              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.long	289                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	14                      # Abbrev [14] 0x1b2:0xe DW_TAG_variable
	.long	.Lstring31              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.long	523                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.byte	14                      # Abbrev [14] 0x1c0:0xe DW_TAG_variable
	.long	.Lstring32              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.long	523                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	15                      # Abbrev [15] 0x1d0:0x3b DW_TAG_subprogram
	.long	.Lstring25              # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.byte	1                       # DW_AT_prototyped
	.long	523                     # DW_AT_type
	.quad	.Lfunc_begin4           # DW_AT_low_pc
	.quad	.Lfunc_end4             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	16                      # Abbrev [16] 0x1ee:0xe DW_TAG_formal_parameter
	.long	.Lstring5               # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.long	729                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	16                      # Abbrev [16] 0x1fc:0xe DW_TAG_formal_parameter
	.long	.Lstring33              # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.long	523                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0x20b:0x5 DW_TAG_pointer_type
	.long	296                     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x210:0x2e DW_TAG_subprogram
	.long	.Lstring26              # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.byte	1                       # DW_AT_prototyped
	.long	523                     # DW_AT_type
	.quad	.Lfunc_begin5           # DW_AT_low_pc
	.quad	.Lfunc_end5             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.byte	16                      # Abbrev [16] 0x22f:0xe DW_TAG_formal_parameter
	.long	.Lstring34              # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.long	734                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	0                       # End Of Children Mark
	.byte	15                      # Abbrev [15] 0x23e:0x2d DW_TAG_subprogram
	.long	.Lstring27              # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.byte	1                       # DW_AT_prototyped
	.long	523                     # DW_AT_type
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.quad	.Lfunc_end3             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	16                      # Abbrev [16] 0x25c:0xe DW_TAG_formal_parameter
	.long	.Lstring5               # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.long	729                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	0                       # End Of Children Mark
	.byte	19                      # Abbrev [19] 0x26b:0x37 DW_TAG_subprogram
	.long	.Lstring28              # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.byte	1                       # DW_AT_prototyped
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.quad	.Lfunc_end2             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	16                      # Abbrev [16] 0x285:0xe DW_TAG_formal_parameter
	.long	.Lstring5               # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.long	729                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	16                      # Abbrev [16] 0x293:0xe DW_TAG_formal_parameter
	.long	.Lstring33              # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.long	523                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.byte	0                       # End Of Children Mark
	.byte	19                      # Abbrev [19] 0x2a2:0x37 DW_TAG_subprogram
	.long	.Lstring29              # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.byte	1                       # DW_AT_prototyped
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.quad	.Lfunc_end1             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	16                      # Abbrev [16] 0x2bc:0xe DW_TAG_formal_parameter
	.long	.Lstring5               # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.long	729                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	16                      # Abbrev [16] 0x2ca:0xe DW_TAG_formal_parameter
	.long	.Lstring33              # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.long	523                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0x2d9:0x5 DW_TAG_pointer_type
	.long	243                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x2de:0x5 DW_TAG_pointer_type
	.long	150                     # DW_AT_type
	.byte	0                       # End Of Children Mark
.Linfo_end1:
	.section	.debug_abbrev,"",@progbits
.Labbrev_begin:
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	16                      # DW_AT_stmt_list
	.byte	6                       # DW_FORM_data4
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	53                      # DW_TAG_volatile_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	56                      # DW_AT_data_member_location
	.byte	10                      # DW_FORM_block1
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	12                      # DW_FORM_flag
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	10                      # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	47                      # DW_AT_upper_bound
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	12                      # DW_FORM_flag
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	13                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	14                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	12                      # DW_FORM_flag
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	16                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	17                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	18                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	12                      # DW_FORM_flag
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.ascii	 "\347\177"             # DW_AT_APPLE_omit_frame_ptr
	.byte	12                      # DW_FORM_flag
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	19                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	12                      # DW_FORM_flag
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
.Labbrev_end:
	.section	.debug_pubtypes,"",@progbits
.Lset0 = .Lpubtypes_end1-.Lpubtypes_begin1 # Length of Public Types Info
	.long	.Lset0
.Lpubtypes_begin1:
	.short	2                       # DWARF Version
	.long	.Linfo_begin1           # Offset of Compilation Unit Info
.Lset1 = .Linfo_end1-.Linfo_begin1      # Compilation Unit Length
	.long	.Lset1
	.long	243                     # DIE offset
	.asciz	 "objlist"              # External Name
	.long	204                     # DIE offset
	.asciz	 "ll_head"              # External Name
	.long	150                     # DIE offset
	.asciz	 "ll_elem"              # External Name
	.long	296                     # DIE offset
	.asciz	 "obj"                  # External Name
	.long	0                       # End Mark
.Lpubtypes_end1:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Lstring0:
	.asciz	 "clang version 3.2 "
.Lstring1:
	.asciz	 "push_back.c"
.Lstring2:
	.asciz	 "/home/ariane/programming/github/ll/test"
.Lstring3:
	.asciz	 "list"
.Lstring4:
	.asciz	 "ll_head"
.Lstring5:
	.asciz	 "q"
.Lstring6:
	.asciz	 "succ"
.Lstring7:
	.asciz	 "__val"
.Lstring8:
	.asciz	 "long unsigned int"
.Lstring9:
	.asciz	 "__uintptr_t"
.Lstring10:
	.asciz	 "atomic_uintptr_t"
.Lstring11:
	.asciz	 "elem_ptr_t"
.Lstring12:
	.asciz	 "pred"
.Lstring13:
	.asciz	 "refcnt"
.Lstring14:
	.asciz	 "__size_t"
.Lstring15:
	.asciz	 "atomic_size_t"
.Lstring16:
	.asciz	 "ll_elem"
.Lstring17:
	.asciz	 "size"
.Lstring18:
	.asciz	 "objlist"
.Lstring19:
	.asciz	 "data"
.Lstring20:
	.asciz	 "satelite"
.Lstring21:
	.asciz	 "int"
.Lstring22:
	.asciz	 "entry"
.Lstring23:
	.asciz	 "obj"
.Lstring24:
	.asciz	 "main"
.Lstring25:
	.asciz	 "ll_succ_objlist"
.Lstring26:
	.asciz	 "ll_elem_objlist"
.Lstring27:
	.asciz	 "ll_first_objlist"
.Lstring28:
	.asciz	 "ll_release_objlist"
.Lstring29:
	.asciz	 "ll_insert_tail_objlist"
.Lstring30:
	.asciz	 "i"
.Lstring31:
	.asciz	 "o"
.Lstring32:
	.asciz	 "next_o"
.Lstring33:
	.asciz	 "n"
.Lstring34:
	.asciz	 "e"

	.section	".note.GNU-stack","",@progbits
