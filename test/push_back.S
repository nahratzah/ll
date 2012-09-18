	.file	"push_back.c"
	.file	1 "push_back.c"
	.file	2 "./llobj.h"
	.file	3 "../include/ll.h"
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
	.loc	1 24 2                  # push_back.c:24:2
.Ltmp8:
	jmp	.LBB0_7
.Ltmp9:
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	1 21 21                 # push_back.c:21:21
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_5
.Ltmp10:
.LBB0_8:
	.loc	1 30 7                  # push_back.c:30:7
	movl	$0, -8(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$999, -8(%rbp)          # imm = 0x3E7
	jge	.LBB0_15
# BB#10:                                #   in Loop: Header=BB0_9 Depth=1
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
	jne	.LBB0_12
# BB#11:                                #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=1
	leaq	.L.str, %rdi
	movl	$31, %esi
	leaq	.L__func__.main, %rdx
	leaq	.L.str1, %rcx
	callq	__assert2
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_9 Depth=1
	.loc	1 30 25                 # push_back.c:30:25
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_9
.Ltmp11:
.LBB0_15:
	.loc	1 38 7                  # push_back.c:38:7
	movl	$0, -8(%rbp)
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	cmpl	$999, -8(%rbp)          # imm = 0x3E7
	jge	.LBB0_22
# BB#17:                                #   in Loop: Header=BB0_16 Depth=1
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
	jne	.LBB0_19
# BB#18:                                #   in Loop: Header=BB0_16 Depth=1
	jmp	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=1
	leaq	.L.str, %rdi
	movl	$39, %esi
	leaq	.L__func__.main, %rdx
	leaq	.L.str2, %rcx
	callq	__assert2
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_16 Depth=1
	.loc	1 38 25                 # push_back.c:38:25
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_16
.Ltmp12:
.LBB0_22:
	.loc	1 46 7                  # push_back.c:46:7
	movl	$0, -8(%rbp)
.LBB0_23:                               # =>This Inner Loop Header: Depth=1
	cmpl	$999, -8(%rbp)          # imm = 0x3E7
	jge	.LBB0_29
# BB#24:                                #   in Loop: Header=BB0_23 Depth=1
	leaq	data, %rax
	.loc	1 47 3                  # push_back.c:47:3
	movl	-8(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	cmpq	$2, 24(%rax)
	jne	.LBB0_26
# BB#25:                                #   in Loop: Header=BB0_23 Depth=1
	jmp	.LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_23 Depth=1
	leaq	.L.str, %rdi
	movl	$47, %esi
	leaq	.L__func__.main, %rdx
	leaq	.L.str3, %rcx
	callq	__assert2
.LBB0_27:                               #   in Loop: Header=BB0_23 Depth=1
	jmp	.LBB0_28
.LBB0_28:                               #   in Loop: Header=BB0_23 Depth=1
	.loc	1 46 25                 # push_back.c:46:25
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_23
.Ltmp13:
.LBB0_29:
	.loc	1 50 2                  # push_back.c:50:2
	jmp	.LBB0_30
.LBB0_30:                               # =>This Inner Loop Header: Depth=1
	cmpl	$1000, -8(%rbp)         # imm = 0x3E8
	jge	.LBB0_39
# BB#31:                                #   in Loop: Header=BB0_30 Depth=1
	.loc	1 53 3                  # push_back.c:53:3
.Ltmp14:
	cmpq	$0, -16(%rbp)
	je	.LBB0_33
# BB#32:                                #   in Loop: Header=BB0_30 Depth=1
	jmp	.LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_30 Depth=1
	leaq	.L.str, %rdi
	movl	$53, %esi
	leaq	.L__func__.main, %rdx
	leaq	.L.str4, %rcx
	callq	__assert2
.LBB0_34:                               #   in Loop: Header=BB0_30 Depth=1
	.loc	1 54 3                  # push_back.c:54:3
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	jne	.LBB0_36
# BB#35:                                #   in Loop: Header=BB0_30 Depth=1
	jmp	.LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_30 Depth=1
	leaq	.L.str, %rdi
	movl	$54, %esi
	leaq	.L__func__.main, %rdx
	leaq	.L.str5, %rcx
	callq	__assert2
.LBB0_37:                               #   in Loop: Header=BB0_30 Depth=1
	.loc	1 59 2                  # push_back.c:59:2
	jmp	.LBB0_38
.Ltmp15:
.LBB0_38:                               #   in Loop: Header=BB0_30 Depth=1
	.loc	1 52 6                  # push_back.c:52:6
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB0_30
.Ltmp16:
.LBB0_39:
	movl	$0, %eax
	.loc	1 61 2                  # push_back.c:61:2
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp17:
.Ltmp18:
	.size	main, .Ltmp18-main
.Lfunc_end0:
	.cfi_endproc

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
	.asciz	 "SUCC(&data[i].entry) == &data[i + 1].entry"
	.size	.L.str1, 43

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "PRED(&data[i + 1].entry) == &data[i].entry"
	.size	.L.str2, 43

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "REFCNT(&data[i + 1].entry) == 2"
	.size	.L.str3, 32

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "o != NULL"
	.size	.L.str4, 10

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	 "o->satelite == i"
	.size	.L.str5, 17

	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.data
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	331                     # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x144 DW_TAG_compile_unit
	.long	.Lstring0               # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Lstring1               # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Lstring2               # DW_AT_comp_dir
	.byte	2                       # Abbrev [2] 0x26:0x7 DW_TAG_base_type
	.long	.Lstring5               # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	2                       # Abbrev [2] 0x2d:0x7 DW_TAG_base_type
	.long	.Lstring8               # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x34:0xb DW_TAG_typedef
	.long	45                      # DW_AT_type
	.long	.Lstring9               # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.byte	3                       # Abbrev [3] 0x3f:0xb DW_TAG_typedef
	.long	52                      # DW_AT_type
	.long	.Lstring10              # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	180                     # DW_AT_decl_line
	.byte	3                       # Abbrev [3] 0x4a:0xb DW_TAG_typedef
	.long	63                      # DW_AT_type
	.long	.Lstring11              # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.byte	3                       # Abbrev [3] 0x55:0xb DW_TAG_typedef
	.long	45                      # DW_AT_type
	.long	.Lstring14              # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	126                     # DW_AT_decl_line
	.byte	3                       # Abbrev [3] 0x60:0xb DW_TAG_typedef
	.long	85                      # DW_AT_type
	.long	.Lstring15              # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	181                     # DW_AT_decl_line
	.byte	4                       # Abbrev [4] 0x6b:0x36 DW_TAG_structure_type
	.long	.Lstring16              # DW_AT_name
	.byte	24                      # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x73:0xf DW_TAG_member
	.long	.Lstring7               # DW_AT_name
	.long	74                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0x82:0xf DW_TAG_member
	.long	.Lstring12              # DW_AT_name
	.long	74                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0x91:0xf DW_TAG_member
	.long	.Lstring13              # DW_AT_name
	.long	96                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0xa1:0x27 DW_TAG_structure_type
	.long	.Lstring17              # DW_AT_name
	.byte	32                      # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0xa9:0xf DW_TAG_member
	.long	.Lstring4               # DW_AT_name
	.long	38                      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	12                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	5                       # Abbrev [5] 0xb8:0xf DW_TAG_member
	.long	.Lstring6               # DW_AT_name
	.long	107                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	8
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	6                       # Abbrev [6] 0xc8:0x3 DW_TAG_base_type
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	7                       # Abbrev [7] 0xcb:0xd DW_TAG_array_type
	.long	161                     # DW_AT_type
	.byte	8                       # Abbrev [8] 0xd0:0x7 DW_TAG_subrange_type
	.long	200                     # DW_AT_type
	.short	999                     # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0xd8:0x16 DW_TAG_variable
	.long	.Lstring3               # DW_AT_name
	.long	203                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	data
	.byte	10                      # Abbrev [10] 0xee:0x5b DW_TAG_subprogram
	.long	.Lstring18              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
	.long	38                      # DW_AT_type
	.byte	1                       # DW_AT_external
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.quad	.Lfunc_end0             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	11                      # Abbrev [11] 0x10c:0x3c DW_TAG_lexical_block
	.quad	.Ltmp5                  # DW_AT_low_pc
	.quad	.Ltmp17                 # DW_AT_high_pc
	.byte	12                      # Abbrev [12] 0x11d:0xe DW_TAG_variable
	.long	.Lstring19              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.long	38                      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	12                      # Abbrev [12] 0x12b:0xe DW_TAG_variable
	.long	.Lstring20              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.long	329                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.byte	12                      # Abbrev [12] 0x139:0xe DW_TAG_variable
	.long	.Lstring21              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.long	329                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x149:0x5 DW_TAG_pointer_type
	.long	161                     # DW_AT_type
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
	.byte	5                       # Abbreviation Code
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
	.byte	6                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	47                      # DW_AT_upper_bound
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
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
	.byte	10                      # Abbreviation Code
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
	.byte	11                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
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
	.byte	13                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
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
	.long	107                     # DIE offset
	.asciz	 "ll_elem"              # External Name
	.long	161                     # DIE offset
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
	.asciz	 "data"
.Lstring4:
	.asciz	 "satelite"
.Lstring5:
	.asciz	 "int"
.Lstring6:
	.asciz	 "entry"
.Lstring7:
	.asciz	 "succ"
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
	.asciz	 "obj"
.Lstring18:
	.asciz	 "main"
.Lstring19:
	.asciz	 "i"
.Lstring20:
	.asciz	 "o"
.Lstring21:
	.asciz	 "next_o"

	.section	".note.GNU-stack","",@progbits
