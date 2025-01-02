
averaging_blur:     file format elf64-x86-64


Disassembly of section .init:

00000000004016d0 <_init>:
  4016d0:	48 83 ec 08          	sub    $0x8,%rsp
  4016d4:	48 8b 05 1d 39 20 00 	mov    0x20391d(%rip),%rax        # 604ff8 <__gmon_start__>
  4016db:	48 85 c0             	test   %rax,%rax
  4016de:	74 05                	je     4016e5 <_init+0x15>
  4016e0:	e8 ab 00 00 00       	callq  401790 <__gmon_start__@plt>
  4016e5:	48 83 c4 08          	add    $0x8,%rsp
  4016e9:	c3                   	retq   

Disassembly of section .plt:

00000000004016f0 <.plt>:
  4016f0:	ff 35 12 39 20 00    	pushq  0x203912(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4016f6:	ff 25 14 39 20 00    	jmpq   *0x203914(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4016fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401700 <printf@plt>:
  401700:	ff 25 12 39 20 00    	jmpq   *0x203912(%rip)        # 605018 <printf@GLIBC_2.2.5>
  401706:	68 00 00 00 00       	pushq  $0x0
  40170b:	e9 e0 ff ff ff       	jmpq   4016f0 <.plt>

0000000000401710 <_ZNSsC1ERKSs@plt>:
  401710:	ff 25 0a 39 20 00    	jmpq   *0x20390a(%rip)        # 605020 <_ZNSsC1ERKSs@GLIBCXX_3.4>
  401716:	68 01 00 00 00       	pushq  $0x1
  40171b:	e9 d0 ff ff ff       	jmpq   4016f0 <.plt>

0000000000401720 <memcpy@plt>:
  401720:	ff 25 02 39 20 00    	jmpq   *0x203902(%rip)        # 605028 <memcpy@GLIBC_2.14>
  401726:	68 02 00 00 00       	pushq  $0x2
  40172b:	e9 c0 ff ff ff       	jmpq   4016f0 <.plt>

0000000000401730 <_ZNSo9_M_insertIyEERSoT_@plt>:
  401730:	ff 25 fa 38 20 00    	jmpq   *0x2038fa(%rip)        # 605030 <_ZNSo9_M_insertIyEERSoT_@GLIBCXX_3.4.9>
  401736:	68 03 00 00 00       	pushq  $0x3
  40173b:	e9 b0 ff ff ff       	jmpq   4016f0 <.plt>

0000000000401740 <_ZN2cv12_OutputArrayC1ERNS_3MatE@plt>:
  401740:	ff 25 f2 38 20 00    	jmpq   *0x2038f2(%rip)        # 605038 <_ZN2cv12_OutputArrayC1ERNS_3MatE>
  401746:	68 04 00 00 00       	pushq  $0x4
  40174b:	e9 a0 ff ff ff       	jmpq   4016f0 <.plt>

0000000000401750 <memset@plt>:
  401750:	ff 25 ea 38 20 00    	jmpq   *0x2038ea(%rip)        # 605040 <memset@GLIBC_2.2.5>
  401756:	68 05 00 00 00       	pushq  $0x5
  40175b:	e9 90 ff ff ff       	jmpq   4016f0 <.plt>

0000000000401760 <_ZNSolsEi@plt>:
  401760:	ff 25 e2 38 20 00    	jmpq   *0x2038e2(%rip)        # 605048 <_ZNSolsEi@GLIBCXX_3.4>
  401766:	68 06 00 00 00       	pushq  $0x6
  40176b:	e9 80 ff ff ff       	jmpq   4016f0 <.plt>

0000000000401770 <_ZSt16__throw_bad_castv@plt>:
  401770:	ff 25 da 38 20 00    	jmpq   *0x2038da(%rip)        # 605050 <_ZSt16__throw_bad_castv@GLIBCXX_3.4>
  401776:	68 07 00 00 00       	pushq  $0x7
  40177b:	e9 70 ff ff ff       	jmpq   4016f0 <.plt>

0000000000401780 <_ZdaPv@plt>:
  401780:	ff 25 d2 38 20 00    	jmpq   *0x2038d2(%rip)        # 605058 <_ZdaPv@GLIBCXX_3.4>
  401786:	68 08 00 00 00       	pushq  $0x8
  40178b:	e9 60 ff ff ff       	jmpq   4016f0 <.plt>

0000000000401790 <__gmon_start__@plt>:
  401790:	ff 25 ca 38 20 00    	jmpq   *0x2038ca(%rip)        # 605060 <__gmon_start__>
  401796:	68 09 00 00 00       	pushq  $0x9
  40179b:	e9 50 ff ff ff       	jmpq   4016f0 <.plt>

00000000004017a0 <_Znam@plt>:
  4017a0:	ff 25 c2 38 20 00    	jmpq   *0x2038c2(%rip)        # 605068 <_Znam@GLIBCXX_3.4>
  4017a6:	68 0a 00 00 00       	pushq  $0xa
  4017ab:	e9 40 ff ff ff       	jmpq   4016f0 <.plt>

00000000004017b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>:
  4017b0:	ff 25 ba 38 20 00    	jmpq   *0x2038ba(%rip)        # 605070 <_ZNKSt5ctypeIcE13_M_widen_initEv@GLIBCXX_3.4.11>
  4017b6:	68 0b 00 00 00       	pushq  $0xb
  4017bb:	e9 30 ff ff ff       	jmpq   4016f0 <.plt>

00000000004017c0 <_ZNSo5flushEv@plt>:
  4017c0:	ff 25 b2 38 20 00    	jmpq   *0x2038b2(%rip)        # 605078 <_ZNSo5flushEv@GLIBCXX_3.4>
  4017c6:	68 0c 00 00 00       	pushq  $0xc
  4017cb:	e9 20 ff ff ff       	jmpq   4016f0 <.plt>

00000000004017d0 <_ZN2cv3Mat10deallocateEv@plt>:
  4017d0:	ff 25 aa 38 20 00    	jmpq   *0x2038aa(%rip)        # 605080 <_ZN2cv3Mat10deallocateEv>
  4017d6:	68 0d 00 00 00       	pushq  $0xd
  4017db:	e9 10 ff ff ff       	jmpq   4016f0 <.plt>

00000000004017e0 <_ZdlPv@plt>:
  4017e0:	ff 25 a2 38 20 00    	jmpq   *0x2038a2(%rip)        # 605088 <_ZdlPv@GLIBCXX_3.4>
  4017e6:	68 0e 00 00 00       	pushq  $0xe
  4017eb:	e9 00 ff ff ff       	jmpq   4016f0 <.plt>

00000000004017f0 <_ZNSo3putEc@plt>:
  4017f0:	ff 25 9a 38 20 00    	jmpq   *0x20389a(%rip)        # 605090 <_ZNSo3putEc@GLIBCXX_3.4>
  4017f6:	68 0f 00 00 00       	pushq  $0xf
  4017fb:	e9 f0 fe ff ff       	jmpq   4016f0 <.plt>

0000000000401800 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  401800:	ff 25 92 38 20 00    	jmpq   *0x203892(%rip)        # 605098 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
  401806:	68 10 00 00 00       	pushq  $0x10
  40180b:	e9 e0 fe ff ff       	jmpq   4016f0 <.plt>

0000000000401810 <_ZNSs6appendEPKcm@plt>:
  401810:	ff 25 8a 38 20 00    	jmpq   *0x20388a(%rip)        # 6050a0 <_ZNSs6appendEPKcm@GLIBCXX_3.4>
  401816:	68 11 00 00 00       	pushq  $0x11
  40181b:	e9 d0 fe ff ff       	jmpq   4016f0 <.plt>

0000000000401820 <__gxx_personality_v0@plt>:
  401820:	ff 25 82 38 20 00    	jmpq   *0x203882(%rip)        # 6050a8 <__gxx_personality_v0@CXXABI_1.3>
  401826:	68 12 00 00 00       	pushq  $0x12
  40182b:	e9 c0 fe ff ff       	jmpq   4016f0 <.plt>

0000000000401830 <_ZN2cv7imwriteERKSsRKNS_11_InputArrayERKSt6vectorIiSaIiEE@plt>:
  401830:	ff 25 7a 38 20 00    	jmpq   *0x20387a(%rip)        # 6050b0 <_ZN2cv7imwriteERKSsRKNS_11_InputArrayERKSt6vectorIiSaIiEE>
  401836:	68 13 00 00 00       	pushq  $0x13
  40183b:	e9 b0 fe ff ff       	jmpq   4016f0 <.plt>

0000000000401840 <_Unwind_Resume@plt>:
  401840:	ff 25 72 38 20 00    	jmpq   *0x203872(%rip)        # 6050b8 <_Unwind_Resume@GCC_3.0>
  401846:	68 14 00 00 00       	pushq  $0x14
  40184b:	e9 a0 fe ff ff       	jmpq   4016f0 <.plt>

0000000000401850 <_ZNSt8ios_base4InitD1Ev@plt>:
  401850:	ff 25 6a 38 20 00    	jmpq   *0x20386a(%rip)        # 6050c0 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  401856:	68 15 00 00 00       	pushq  $0x15
  40185b:	e9 90 fe ff ff       	jmpq   4016f0 <.plt>

0000000000401860 <_ZN2cv4blurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEENS_6Point_IiEEi@plt>:
  401860:	ff 25 62 38 20 00    	jmpq   *0x203862(%rip)        # 6050c8 <_ZN2cv4blurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEENS_6Point_IiEEi>
  401866:	68 16 00 00 00       	pushq  $0x16
  40186b:	e9 80 fe ff ff       	jmpq   4016f0 <.plt>

0000000000401870 <_ZN2cv11_InputArrayC1ERKNS_3MatE@plt>:
  401870:	ff 25 5a 38 20 00    	jmpq   *0x20385a(%rip)        # 6050d0 <_ZN2cv11_InputArrayC1ERKNS_3MatE>
  401876:	68 17 00 00 00       	pushq  $0x17
  40187b:	e9 70 fe ff ff       	jmpq   4016f0 <.plt>

0000000000401880 <vsnprintf@plt>:
  401880:	ff 25 52 38 20 00    	jmpq   *0x203852(%rip)        # 6050d8 <vsnprintf@GLIBC_2.2.5>
  401886:	68 18 00 00 00       	pushq  $0x18
  40188b:	e9 60 fe ff ff       	jmpq   4016f0 <.plt>

0000000000401890 <_ZNSs4_Rep9_S_createEmmRKSaIcE@plt>:
  401890:	ff 25 4a 38 20 00    	jmpq   *0x20384a(%rip)        # 6050e0 <_ZNSs4_Rep9_S_createEmmRKSaIcE@GLIBCXX_3.4>
  401896:	68 19 00 00 00       	pushq  $0x19
  40189b:	e9 50 fe ff ff       	jmpq   4016f0 <.plt>

00000000004018a0 <_ZNSs6insertEmPKcm@plt>:
  4018a0:	ff 25 42 38 20 00    	jmpq   *0x203842(%rip)        # 6050e8 <_ZNSs6insertEmPKcm@GLIBCXX_3.4>
  4018a6:	68 1a 00 00 00       	pushq  $0x1a
  4018ab:	e9 40 fe ff ff       	jmpq   4016f0 <.plt>

00000000004018b0 <_ZNSo9_M_insertIdEERSoT_@plt>:
  4018b0:	ff 25 3a 38 20 00    	jmpq   *0x20383a(%rip)        # 6050f0 <_ZNSo9_M_insertIdEERSoT_@GLIBCXX_3.4.9>
  4018b6:	68 1b 00 00 00       	pushq  $0x1b
  4018bb:	e9 30 fe ff ff       	jmpq   4016f0 <.plt>

00000000004018c0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>:
  4018c0:	ff 25 32 38 20 00    	jmpq   *0x203832(%rip)        # 6050f8 <_ZNSs4_Rep10_M_disposeERKSaIcE@GLIBCXX_3.4>
  4018c6:	68 1c 00 00 00       	pushq  $0x1c
  4018cb:	e9 20 fe ff ff       	jmpq   4016f0 <.plt>

00000000004018d0 <_ZNSs6appendERKSs@plt>:
  4018d0:	ff 25 2a 38 20 00    	jmpq   *0x20382a(%rip)        # 605100 <_ZNSs6appendERKSs@GLIBCXX_3.4>
  4018d6:	68 1d 00 00 00       	pushq  $0x1d
  4018db:	e9 10 fe ff ff       	jmpq   4016f0 <.plt>

00000000004018e0 <__cxa_atexit@plt>:
  4018e0:	ff 25 22 38 20 00    	jmpq   *0x203822(%rip)        # 605108 <__cxa_atexit@GLIBC_2.2.5>
  4018e6:	68 1e 00 00 00       	pushq  $0x1e
  4018eb:	e9 00 fe ff ff       	jmpq   4016f0 <.plt>

00000000004018f0 <_ZN2cv8fastFreeEPv@plt>:
  4018f0:	ff 25 1a 38 20 00    	jmpq   *0x20381a(%rip)        # 605110 <_ZN2cv8fastFreeEPv>
  4018f6:	68 1f 00 00 00       	pushq  $0x1f
  4018fb:	e9 f0 fd ff ff       	jmpq   4016f0 <.plt>

0000000000401900 <__pthread_key_create@plt>:
  401900:	ff 25 12 38 20 00    	jmpq   *0x203812(%rip)        # 605118 <__pthread_key_create>
  401906:	68 20 00 00 00       	pushq  $0x20
  40190b:	e9 e0 fd ff ff       	jmpq   4016f0 <.plt>

0000000000401910 <__libc_start_main@plt>:
  401910:	ff 25 0a 38 20 00    	jmpq   *0x20380a(%rip)        # 605120 <__libc_start_main@GLIBC_2.2.5>
  401916:	68 21 00 00 00       	pushq  $0x21
  40191b:	e9 d0 fd ff ff       	jmpq   4016f0 <.plt>

0000000000401920 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>:
  401920:	ff 25 02 38 20 00    	jmpq   *0x203802(%rip)        # 605128 <_ZNSs4_Rep10_M_destroyERKSaIcE@GLIBCXX_3.4>
  401926:	68 22 00 00 00       	pushq  $0x22
  40192b:	e9 c0 fd ff ff       	jmpq   4016f0 <.plt>

0000000000401930 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
  401930:	ff 25 fa 37 20 00    	jmpq   *0x2037fa(%rip)        # 605130 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
  401936:	68 23 00 00 00       	pushq  $0x23
  40193b:	e9 b0 fd ff ff       	jmpq   4016f0 <.plt>

0000000000401940 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
  401940:	ff 25 f2 37 20 00    	jmpq   *0x2037f2(%rip)        # 605138 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
  401946:	68 24 00 00 00       	pushq  $0x24
  40194b:	e9 a0 fd ff ff       	jmpq   4016f0 <.plt>

0000000000401950 <_ZNSt8ios_base4InitC1Ev@plt>:
  401950:	ff 25 ea 37 20 00    	jmpq   *0x2037ea(%rip)        # 605140 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  401956:	68 25 00 00 00       	pushq  $0x25
  40195b:	e9 90 fd ff ff       	jmpq   4016f0 <.plt>

0000000000401960 <_ZN2cv3Mat6createEiPKii@plt>:
  401960:	ff 25 e2 37 20 00    	jmpq   *0x2037e2(%rip)        # 605148 <_ZN2cv3Mat6createEiPKii>
  401966:	68 26 00 00 00       	pushq  $0x26
  40196b:	e9 80 fd ff ff       	jmpq   4016f0 <.plt>

0000000000401970 <_ZN2cv6imreadERKSsi@plt>:
  401970:	ff 25 da 37 20 00    	jmpq   *0x2037da(%rip)        # 605150 <_ZN2cv6imreadERKSsi>
  401976:	68 27 00 00 00       	pushq  $0x27
  40197b:	e9 70 fd ff ff       	jmpq   4016f0 <.plt>

0000000000401980 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>:
  401980:	ff 25 d2 37 20 00    	jmpq   *0x2037d2(%rip)        # 605158 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@GLIBCXX_3.4>
  401986:	68 28 00 00 00       	pushq  $0x28
  40198b:	e9 60 fd ff ff       	jmpq   4016f0 <.plt>

0000000000401990 <_ZNSsD1Ev@plt>:
  401990:	ff 25 ca 37 20 00    	jmpq   *0x2037ca(%rip)        # 605160 <_ZNSsD1Ev@GLIBCXX_3.4>
  401996:	68 29 00 00 00       	pushq  $0x29
  40199b:	e9 50 fd ff ff       	jmpq   4016f0 <.plt>

00000000004019a0 <_ZNSsC1EPKcRKSaIcE@plt>:
  4019a0:	ff 25 c2 37 20 00    	jmpq   *0x2037c2(%rip)        # 605168 <_ZNSsC1EPKcRKSaIcE@GLIBCXX_3.4>
  4019a6:	68 2a 00 00 00       	pushq  $0x2a
  4019ab:	e9 40 fd ff ff       	jmpq   4016f0 <.plt>

00000000004019b0 <_ZNSs7reserveEm@plt>:
  4019b0:	ff 25 ba 37 20 00    	jmpq   *0x2037ba(%rip)        # 605170 <_ZNSs7reserveEm@GLIBCXX_3.4>
  4019b6:	68 2b 00 00 00       	pushq  $0x2b
  4019bb:	e9 30 fd ff ff       	jmpq   4016f0 <.plt>

Disassembly of section .text:

00000000004019c0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.3>:
  4019c0:	50                   	push   %rax
  4019c1:	48 8b 07             	mov    (%rdi),%rax
  4019c4:	48 03 78 e8          	add    -0x18(%rax),%rdi
  4019c8:	8b 77 20             	mov    0x20(%rdi),%esi
  4019cb:	83 ce 01             	or     $0x1,%esi
  4019ce:	e8 ad ff ff ff       	callq  401980 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  4019d3:	5a                   	pop    %rdx
  4019d4:	c3                   	retq   

00000000004019d5 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.part.1>:
  4019d5:	50                   	push   %rax
  4019d6:	48 8b 07             	mov    (%rdi),%rax
  4019d9:	48 03 78 e8          	add    -0x18(%rax),%rdi
  4019dd:	8b 77 20             	mov    0x20(%rdi),%esi
  4019e0:	83 ce 01             	or     $0x1,%esi
  4019e3:	e8 98 ff ff ff       	callq  401980 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@plt>
  4019e8:	5a                   	pop    %rdx
  4019e9:	c3                   	retq   
  4019ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004019f0 <main>:
  4019f0:	55                   	push   %rbp
  4019f1:	48 89 e5             	mov    %rsp,%rbp
  4019f4:	41 57                	push   %r15
  4019f6:	45 31 ff             	xor    %r15d,%r15d
  4019f9:	41 56                	push   %r14
  4019fb:	41 55                	push   %r13
  4019fd:	41 54                	push   %r12
  4019ff:	45 31 e4             	xor    %r12d,%r12d
  401a02:	53                   	push   %rbx
  401a03:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  401a07:	48 81 ec 40 02 00 00 	sub    $0x240,%rsp
  401a0e:	48 8d 84 24 88 01 00 	lea    0x188(%rsp),%rax
  401a15:	00 
  401a16:	48 89 04 24          	mov    %rax,(%rsp)
  401a1a:	e9 0a 08 00 00       	jmpq   402229 <main+0x839>
  401a1f:	90                   	nop
  401a20:	48 3b 70 f0          	cmp    -0x10(%rax),%rsi
  401a24:	0f 87 8d 08 00 00    	ja     4022b7 <main+0x8c7>
  401a2a:	48 8d bc 24 e0 00 00 	lea    0xe0(%rsp),%rdi
  401a31:	00 
  401a32:	31 f6                	xor    %esi,%esi
  401a34:	e8 67 fe ff ff       	callq  4018a0 <_ZNSs6insertEmPKcm@plt>
  401a39:	48 8b 10             	mov    (%rax),%rdx
  401a3c:	48 8d bc 24 e0 01 00 	lea    0x1e0(%rsp),%rdi
  401a43:	00 
  401a44:	be 37 39 40 00       	mov    $0x403937,%esi
  401a49:	48 89 94 24 e0 01 00 	mov    %rdx,0x1e0(%rsp)
  401a50:	00 
  401a51:	48 c7 00 98 51 60 00 	movq   $0x605198,(%rax)
  401a58:	ba 04 00 00 00       	mov    $0x4,%edx
  401a5d:	e8 ae fd ff ff       	callq  401810 <_ZNSs6appendEPKcm@plt>
  401a62:	48 8b 10             	mov    (%rax),%rdx
  401a65:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
  401a6a:	48 c7 00 98 51 60 00 	movq   $0x605198,(%rax)
  401a71:	48 8b 84 24 e0 01 00 	mov    0x1e0(%rsp),%rax
  401a78:	00 
  401a79:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  401a7d:	48 81 ff 80 51 60 00 	cmp    $0x605180,%rdi
  401a84:	0f 85 96 0e 00 00    	jne    402920 <main+0xf30>
  401a8a:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  401a91:	00 
  401a92:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  401a96:	48 81 ff 80 51 60 00 	cmp    $0x605180,%rdi
  401a9d:	0f 85 e0 0d 00 00    	jne    402883 <main+0xe93>
  401aa3:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  401aaa:	00 
  401aab:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  401aaf:	48 81 ff 80 51 60 00 	cmp    $0x605180,%rdi
  401ab6:	0f 85 94 0d 00 00    	jne    402850 <main+0xe60>
  401abc:	ba 0f 00 00 00       	mov    $0xf,%edx
  401ac1:	be 3c 39 40 00       	mov    $0x40393c,%esi
  401ac6:	bf a0 51 60 00       	mov    $0x6051a0,%edi
  401acb:	e8 60 fe ff ff       	callq  401930 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401ad0:	48 8b 74 24 40       	mov    0x40(%rsp),%rsi
  401ad5:	bf a0 51 60 00       	mov    $0x6051a0,%edi
  401ada:	48 8b 56 e8          	mov    -0x18(%rsi),%rdx
  401ade:	e8 4d fe ff ff       	callq  401930 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401ae3:	49 89 c5             	mov    %rax,%r13
  401ae6:	48 8b 00             	mov    (%rax),%rax
  401ae9:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  401aed:	49 8b 9c 05 f0 00 00 	mov    0xf0(%r13,%rax,1),%rbx
  401af4:	00 
  401af5:	48 85 db             	test   %rbx,%rbx
  401af8:	0f 84 45 0d 00 00    	je     402843 <main+0xe53>
  401afe:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  401b02:	0f 84 a0 0a 00 00    	je     4025a8 <main+0xbb8>
  401b08:	0f b6 43 43          	movzbl 0x43(%rbx),%eax
  401b0c:	0f be f0             	movsbl %al,%esi
  401b0f:	4c 89 ef             	mov    %r13,%rdi
  401b12:	e8 d9 fc ff ff       	callq  4017f0 <_ZNSo3putEc@plt>
  401b17:	48 89 c7             	mov    %rax,%rdi
  401b1a:	e8 a1 fc ff ff       	callq  4017c0 <_ZNSo5flushEv@plt>
  401b1f:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  401b24:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  401b2b:	00 
  401b2c:	ba 01 00 00 00       	mov    $0x1,%edx
  401b31:	e8 3a fe ff ff       	callq  401970 <_ZN2cv6imreadERKSsi@plt>
  401b36:	48 83 bc 24 30 01 00 	cmpq   $0x0,0x130(%rsp)
  401b3d:	00 00 
  401b3f:	0f 84 ab 07 00 00    	je     4022f0 <main+0x900>
  401b45:	48 63 94 24 24 01 00 	movslq 0x124(%rsp),%rdx
  401b4c:	00 
  401b4d:	83 fa 02             	cmp    $0x2,%edx
  401b50:	0f 8f 02 08 00 00    	jg     402358 <main+0x968>
  401b56:	48 63 84 24 2c 01 00 	movslq 0x12c(%rsp),%rax
  401b5d:	00 
  401b5e:	48 63 8c 24 28 01 00 	movslq 0x128(%rsp),%rcx
  401b65:	00 
  401b66:	48 0f af c1          	imul   %rcx,%rax
  401b6a:	48 85 c0             	test   %rax,%rax
  401b6d:	0f 84 7d 07 00 00    	je     4022f0 <main+0x900>
  401b73:	8b 84 24 20 01 00 00 	mov    0x120(%rsp),%eax
  401b7a:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401b7e:	83 64 24 0c 07       	andl   $0x7,0xc(%rsp)
  401b83:	85 d2                	test   %edx,%edx
  401b85:	0f 8e 05 0b 00 00    	jle    402690 <main+0xca0>
  401b8b:	48 8b 84 24 68 01 00 	mov    0x168(%rsp),%rax
  401b92:	00 
  401b93:	8b 44 d0 f8          	mov    -0x8(%rax,%rdx,8),%eax
  401b97:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b9b:	48 8b 04 24          	mov    (%rsp),%rax
  401b9f:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
  401ba3:	48 8d 9c 24 00 01 00 	lea    0x100(%rsp),%rbx
  401baa:	00 
  401bab:	c5 f9 6f 35 8d 1e 00 	vmovdqa 0x1e8d(%rip),%xmm6        # 403a40 <__dso_handle+0x118>
  401bb2:	00 
  401bb3:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  401bba:	00 
  401bbb:	b9 10 00 00 00       	mov    $0x10,%ecx
  401bc0:	be 02 00 00 00       	mov    $0x2,%esi
  401bc5:	48 89 84 24 c0 01 00 	mov    %rax,0x1c0(%rsp)
  401bcc:	00 
  401bcd:	48 8d 84 24 d0 01 00 	lea    0x1d0(%rsp),%rax
  401bd4:	00 
  401bd5:	48 89 da             	mov    %rbx,%rdx
  401bd8:	c5 f9 7f 84 24 d0 01 	vmovdqa %xmm0,0x1d0(%rsp)
  401bdf:	00 00 
  401be1:	48 89 84 24 c8 01 00 	mov    %rax,0x1c8(%rsp)
  401be8:	00 
  401be9:	8b 84 24 28 01 00 00 	mov    0x128(%rsp),%eax
  401bf0:	c5 f9 7f b4 24 80 01 	vmovdqa %xmm6,0x180(%rsp)
  401bf7:	00 00 
  401bf9:	89 84 24 00 01 00 00 	mov    %eax,0x100(%rsp)
  401c00:	8b 84 24 2c 01 00 00 	mov    0x12c(%rsp),%eax
  401c07:	48 c7 84 24 b0 01 00 	movq   $0x0,0x1b0(%rsp)
  401c0e:	00 00 00 00 00 
  401c13:	48 c7 84 24 a8 01 00 	movq   $0x0,0x1a8(%rsp)
  401c1a:	00 00 00 00 00 
  401c1f:	48 c7 84 24 a0 01 00 	movq   $0x0,0x1a0(%rsp)
  401c26:	00 00 00 00 00 
  401c2b:	48 c7 84 24 90 01 00 	movq   $0x0,0x190(%rsp)
  401c32:	00 00 00 00 00 
  401c37:	48 c7 84 24 98 01 00 	movq   $0x0,0x198(%rsp)
  401c3e:	00 00 00 00 00 
  401c43:	48 c7 84 24 b8 01 00 	movq   $0x0,0x1b8(%rsp)
  401c4a:	00 00 00 00 00 
  401c4f:	89 84 24 04 01 00 00 	mov    %eax,0x104(%rsp)
  401c56:	e8 05 fd ff ff       	callq  401960 <_ZN2cv3Mat6createEiPKii@plt>
  401c5b:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  401c62:	00 
  401c63:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  401c6a:	00 
  401c6b:	e8 40 12 00 00       	callq  402eb0 <_Z13kernel_driverRN2cv3MatES1_>
  401c70:	0f 31                	rdtsc  
  401c72:	49 89 d5             	mov    %rdx,%r13
  401c75:	89 c0                	mov    %eax,%eax
  401c77:	48 8d b4 24 e0 01 00 	lea    0x1e0(%rsp),%rsi
  401c7e:	00 
  401c7f:	49 c1 e5 20          	shl    $0x20,%r13
  401c83:	48 89 df             	mov    %rbx,%rdi
  401c86:	48 c7 84 24 38 02 00 	movq   $0x0,0x238(%rsp)
  401c8d:	00 00 00 00 00 
  401c92:	49 09 c5             	or     %rax,%r13
  401c95:	48 8d 84 24 e8 01 00 	lea    0x1e8(%rsp),%rax
  401c9c:	00 
  401c9d:	48 c7 84 24 30 02 00 	movq   $0x0,0x230(%rsp)
  401ca4:	00 00 00 00 00 
  401ca9:	c7 84 24 e0 01 00 00 	movl   $0x42ff0000,0x1e0(%rsp)
  401cb0:	00 00 ff 42 
  401cb4:	c7 84 24 ec 01 00 00 	movl   $0x0,0x1ec(%rsp)
  401cbb:	00 00 00 00 
  401cbf:	48 89 84 24 20 02 00 	mov    %rax,0x220(%rsp)
  401cc6:	00 
  401cc7:	48 8d 84 24 30 02 00 	lea    0x230(%rsp),%rax
  401cce:	00 
  401ccf:	c7 84 24 e8 01 00 00 	movl   $0x0,0x1e8(%rsp)
  401cd6:	00 00 00 00 
  401cda:	c7 84 24 e4 01 00 00 	movl   $0x0,0x1e4(%rsp)
  401ce1:	00 00 00 00 
  401ce5:	48 c7 84 24 10 02 00 	movq   $0x0,0x210(%rsp)
  401cec:	00 00 00 00 00 
  401cf1:	48 89 84 24 28 02 00 	mov    %rax,0x228(%rsp)
  401cf8:	00 
  401cf9:	48 c7 84 24 08 02 00 	movq   $0x0,0x208(%rsp)
  401d00:	00 00 00 00 00 
  401d05:	48 c7 84 24 00 02 00 	movq   $0x0,0x200(%rsp)
  401d0c:	00 00 00 00 00 
  401d11:	48 c7 84 24 f0 01 00 	movq   $0x0,0x1f0(%rsp)
  401d18:	00 00 00 00 00 
  401d1d:	48 c7 84 24 f8 01 00 	movq   $0x0,0x1f8(%rsp)
  401d24:	00 00 00 00 00 
  401d29:	48 c7 84 24 18 02 00 	movq   $0x0,0x218(%rsp)
  401d30:	00 00 00 00 00 
  401d35:	c7 84 24 c0 00 00 00 	movl   $0xffffffff,0xc0(%rsp)
  401d3c:	ff ff ff ff 
  401d40:	c7 84 24 c4 00 00 00 	movl   $0xffffffff,0xc4(%rsp)
  401d47:	ff ff ff ff 
  401d4b:	c7 84 24 a0 00 00 00 	movl   $0x3,0xa0(%rsp)
  401d52:	03 00 00 00 
  401d56:	c7 84 24 a4 00 00 00 	movl   $0x3,0xa4(%rsp)
  401d5d:	03 00 00 00 
  401d61:	e8 da f9 ff ff       	callq  401740 <_ZN2cv12_OutputArrayC1ERNS_3MatE@plt>
  401d66:	48 8d b4 24 20 01 00 	lea    0x120(%rsp),%rsi
  401d6d:	00 
  401d6e:	48 8d bc 24 e0 00 00 	lea    0xe0(%rsp),%rdi
  401d75:	00 
  401d76:	e8 f5 fa ff ff       	callq  401870 <_ZN2cv11_InputArrayC1ERKNS_3MatE@plt>
  401d7b:	48 8d 8c 24 c0 00 00 	lea    0xc0(%rsp),%rcx
  401d82:	00 
  401d83:	48 8d 94 24 a0 00 00 	lea    0xa0(%rsp),%rdx
  401d8a:	00 
  401d8b:	48 8d bc 24 e0 00 00 	lea    0xe0(%rsp),%rdi
  401d92:	00 
  401d93:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401d99:	48 89 de             	mov    %rbx,%rsi
  401d9c:	e8 bf fa ff ff       	callq  401860 <_ZN2cv4blurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEENS_6Point_IiEEi@plt>
  401da1:	0f 31                	rdtsc  
  401da3:	48 c1 e2 20          	shl    $0x20,%rdx
  401da7:	89 c0                	mov    %eax,%eax
  401da9:	be 4c 39 40 00       	mov    $0x40394c,%esi
  401dae:	48 09 c2             	or     %rax,%rdx
  401db1:	bf a0 51 60 00       	mov    $0x6051a0,%edi
  401db6:	4c 29 ea             	sub    %r13,%rdx
  401db9:	49 01 d7             	add    %rdx,%r15
  401dbc:	ba 08 00 00 00       	mov    $0x8,%edx
  401dc1:	e8 6a fb ff ff       	callq  401930 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401dc6:	4c 89 fe             	mov    %r15,%rsi
  401dc9:	bf a0 51 60 00       	mov    $0x6051a0,%edi
  401dce:	e8 5d f9 ff ff       	callq  401730 <_ZNSo9_M_insertIyEERSoT_@plt>
  401dd3:	49 89 c6             	mov    %rax,%r14
  401dd6:	48 8b 00             	mov    (%rax),%rax
  401dd9:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  401ddd:	4d 8b ac 06 f0 00 00 	mov    0xf0(%r14,%rax,1),%r13
  401de4:	00 
  401de5:	4d 85 ed             	test   %r13,%r13
  401de8:	0f 84 ef 09 00 00    	je     4027dd <main+0xded>
  401dee:	41 80 7d 38 00       	cmpb   $0x0,0x38(%r13)
  401df3:	0f 84 cf 07 00 00    	je     4025c8 <main+0xbd8>
  401df9:	41 0f b6 45 43       	movzbl 0x43(%r13),%eax
  401dfe:	0f be f0             	movsbl %al,%esi
  401e01:	4c 89 f7             	mov    %r14,%rdi
  401e04:	e8 e7 f9 ff ff       	callq  4017f0 <_ZNSo3putEc@plt>
  401e09:	48 89 c7             	mov    %rax,%rdi
  401e0c:	e8 af f9 ff ff       	callq  4017c0 <_ZNSo5flushEv@plt>
  401e11:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  401e18:	00 
  401e19:	48 89 df             	mov    %rbx,%rdi
  401e1c:	48 c7 84 24 e0 00 00 	movq   $0x0,0xe0(%rsp)
  401e23:	00 00 00 00 00 
  401e28:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
  401e2f:	00 00 00 00 00 
  401e34:	48 c7 84 24 f0 00 00 	movq   $0x0,0xf0(%rsp)
  401e3b:	00 00 00 00 00 
  401e40:	e8 2b fa ff ff       	callq  401870 <_ZN2cv11_InputArrayC1ERKNS_3MatE@plt>
  401e45:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  401e4c:	00 
  401e4d:	45 89 e0             	mov    %r12d,%r8d
  401e50:	b9 30 39 40 00       	mov    $0x403930,%ecx
  401e55:	ba 10 00 00 00       	mov    $0x10,%edx
  401e5a:	be 80 18 40 00       	mov    $0x401880,%esi
  401e5f:	31 c0                	xor    %eax,%eax
  401e61:	e8 8a 0e 00 00       	callq  402cf0 <_ZN9__gnu_cxx12__to_xstringISscEET_PFiPT0_mPKS2_P13__va_list_tagEmS5_z.constprop.27>
  401e66:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  401e6b:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  401e70:	48 c7 44 24 60 98 51 	movq   $0x605198,0x60(%rsp)
  401e77:	60 00 
  401e79:	48 8b 70 e8          	mov    -0x18(%rax),%rsi
  401e7d:	48 83 c6 09          	add    $0x9,%rsi
  401e81:	e8 2a fb ff ff       	callq  4019b0 <_ZNSs7reserveEm@plt>
  401e86:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  401e8b:	ba 09 00 00 00       	mov    $0x9,%edx
  401e90:	be 55 39 40 00       	mov    $0x403955,%esi
  401e95:	e8 76 f9 ff ff       	callq  401810 <_ZNSs6appendEPKcm@plt>
  401e9a:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  401e9f:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  401ea4:	e8 27 fa ff ff       	callq  4018d0 <_ZNSs6appendERKSs@plt>
  401ea9:	48 8b 54 24 60       	mov    0x60(%rsp),%rdx
  401eae:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  401eb5:	00 
  401eb6:	48 8b 4a e8          	mov    -0x18(%rdx),%rcx
  401eba:	48 89 ce             	mov    %rcx,%rsi
  401ebd:	48 03 70 e8          	add    -0x18(%rax),%rsi
  401ec1:	48 3b 72 f0          	cmp    -0x10(%rdx),%rsi
  401ec5:	0f 86 0d 04 00 00    	jbe    4022d8 <main+0x8e8>
  401ecb:	48 3b 70 f0          	cmp    -0x10(%rax),%rsi
  401ecf:	0f 87 03 04 00 00    	ja     4022d8 <main+0x8e8>
  401ed5:	48 8d bc 24 80 00 00 	lea    0x80(%rsp),%rdi
  401edc:	00 
  401edd:	31 f6                	xor    %esi,%esi
  401edf:	e8 bc f9 ff ff       	callq  4018a0 <_ZNSs6insertEmPKcm@plt>
  401ee4:	48 8b 10             	mov    (%rax),%rdx
  401ee7:	48 8d bc 24 a0 00 00 	lea    0xa0(%rsp),%rdi
  401eee:	00 
  401eef:	be 37 39 40 00       	mov    $0x403937,%esi
  401ef4:	48 89 94 24 a0 00 00 	mov    %rdx,0xa0(%rsp)
  401efb:	00 
  401efc:	48 c7 00 98 51 60 00 	movq   $0x605198,(%rax)
  401f03:	ba 04 00 00 00       	mov    $0x4,%edx
  401f08:	e8 03 f9 ff ff       	callq  401810 <_ZNSs6appendEPKcm@plt>
  401f0d:	48 8b 10             	mov    (%rax),%rdx
  401f10:	48 8d bc 24 c0 00 00 	lea    0xc0(%rsp),%rdi
  401f17:	00 
  401f18:	48 89 de             	mov    %rbx,%rsi
  401f1b:	48 89 94 24 c0 00 00 	mov    %rdx,0xc0(%rsp)
  401f22:	00 
  401f23:	48 8d 94 24 e0 00 00 	lea    0xe0(%rsp),%rdx
  401f2a:	00 
  401f2b:	48 c7 00 98 51 60 00 	movq   $0x605198,(%rax)
  401f32:	e8 f9 f8 ff ff       	callq  401830 <_ZN2cv7imwriteERKSsRKNS_11_InputArrayERKSt6vectorIiSaIiEE@plt>
  401f37:	41 89 c5             	mov    %eax,%r13d
  401f3a:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  401f41:	00 
  401f42:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  401f46:	48 81 ff 80 51 60 00 	cmp    $0x605180,%rdi
  401f4d:	0f 85 63 09 00 00    	jne    4028b6 <main+0xec6>
  401f53:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  401f5a:	00 
  401f5b:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  401f5f:	48 81 ff 80 51 60 00 	cmp    $0x605180,%rdi
  401f66:	0f 85 10 08 00 00    	jne    40277c <main+0xd8c>
  401f6c:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
  401f71:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  401f75:	48 81 ff 80 51 60 00 	cmp    $0x605180,%rdi
  401f7c:	0f 85 c7 07 00 00    	jne    402749 <main+0xd59>
  401f82:	48 8b 94 24 80 00 00 	mov    0x80(%rsp),%rdx
  401f89:	00 
  401f8a:	48 8d 7a e8          	lea    -0x18(%rdx),%rdi
  401f8e:	48 81 ff 80 51 60 00 	cmp    $0x605180,%rdi
  401f95:	0f 85 50 09 00 00    	jne    4028eb <main+0xefb>
  401f9b:	48 8b bc 24 e0 00 00 	mov    0xe0(%rsp),%rdi
  401fa2:	00 
  401fa3:	48 85 ff             	test   %rdi,%rdi
  401fa6:	74 05                	je     401fad <main+0x5bd>
  401fa8:	e8 33 f8 ff ff       	callq  4017e0 <_ZdlPv@plt>
  401fad:	45 84 ed             	test   %r13b,%r13b
  401fb0:	0f 84 56 07 00 00    	je     40270c <main+0xd1c>
  401fb6:	44 8b 6c 24 0c       	mov    0xc(%rsp),%r13d
  401fbb:	ba 1c 00 00 00       	mov    $0x1c,%edx
  401fc0:	be 5f 39 40 00       	mov    $0x40395f,%esi
  401fc5:	bf a0 51 60 00       	mov    $0x6051a0,%edi
  401fca:	41 c1 e5 03          	shl    $0x3,%r13d
  401fce:	e8 5d f9 ff ff       	callq  401930 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  401fd3:	44 89 ee             	mov    %r13d,%esi
  401fd6:	bf a0 51 60 00       	mov    $0x6051a0,%edi
  401fdb:	e8 80 f7 ff ff       	callq  401760 <_ZNSolsEi@plt>
  401fe0:	49 89 c6             	mov    %rax,%r14
  401fe3:	48 8b 00             	mov    (%rax),%rax
  401fe6:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  401fea:	4d 8b ac 06 f0 00 00 	mov    0xf0(%r14,%rax,1),%r13
  401ff1:	00 
  401ff2:	4d 85 ed             	test   %r13,%r13
  401ff5:	0f 84 86 09 00 00    	je     402981 <main+0xf91>
  401ffb:	41 80 7d 38 00       	cmpb   $0x0,0x38(%r13)
  402000:	0f 84 02 06 00 00    	je     402608 <main+0xc18>
  402006:	41 0f b6 45 43       	movzbl 0x43(%r13),%eax
  40200b:	0f be f0             	movsbl %al,%esi
  40200e:	4c 89 f7             	mov    %r14,%rdi
  402011:	e8 da f7 ff ff       	callq  4017f0 <_ZNSo3putEc@plt>
  402016:	48 89 c7             	mov    %rax,%rdi
  402019:	e8 a2 f7 ff ff       	callq  4017c0 <_ZNSo5flushEv@plt>
  40201e:	ba 1b 00 00 00       	mov    $0x1b,%edx
  402023:	be 7c 39 40 00       	mov    $0x40397c,%esi
  402028:	bf a0 51 60 00       	mov    $0x6051a0,%edi
  40202d:	e8 fe f8 ff ff       	callq  401930 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  402032:	8b 74 24 08          	mov    0x8(%rsp),%esi
  402036:	bf a0 51 60 00       	mov    $0x6051a0,%edi
  40203b:	e8 20 f7 ff ff       	callq  401760 <_ZNSolsEi@plt>
  402040:	49 89 c6             	mov    %rax,%r14
  402043:	48 8b 00             	mov    (%rax),%rax
  402046:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  40204a:	4d 8b ac 06 f0 00 00 	mov    0xf0(%r14,%rax,1),%r13
  402051:	00 
  402052:	4d 85 ed             	test   %r13,%r13
  402055:	0f 84 8b 08 00 00    	je     4028e6 <main+0xef6>
  40205b:	41 80 7d 38 00       	cmpb   $0x0,0x38(%r13)
  402060:	0f 84 82 05 00 00    	je     4025e8 <main+0xbf8>
  402066:	41 0f b6 45 43       	movzbl 0x43(%r13),%eax
  40206b:	0f be f0             	movsbl %al,%esi
  40206e:	4c 89 f7             	mov    %r14,%rdi
  402071:	e8 7a f7 ff ff       	callq  4017f0 <_ZNSo3putEc@plt>
  402076:	48 89 c7             	mov    %rax,%rdi
  402079:	e8 42 f7 ff ff       	callq  4017c0 <_ZNSo5flushEv@plt>
  40207e:	48 8b 84 24 f8 01 00 	mov    0x1f8(%rsp),%rax
  402085:	00 
  402086:	48 85 c0             	test   %rax,%rax
  402089:	74 0a                	je     402095 <main+0x6a5>
  40208b:	f0 83 28 01          	lock subl $0x1,(%rax)
  40208f:	0f 84 93 05 00 00    	je     402628 <main+0xc38>
  402095:	48 8b 84 24 20 02 00 	mov    0x220(%rsp),%rax
  40209c:	00 
  40209d:	48 8b bc 24 28 02 00 	mov    0x228(%rsp),%rdi
  4020a4:	00 
  4020a5:	48 c7 84 24 10 02 00 	movq   $0x0,0x210(%rsp)
  4020ac:	00 00 00 00 00 
  4020b1:	48 c7 84 24 08 02 00 	movq   $0x0,0x208(%rsp)
  4020b8:	00 00 00 00 00 
  4020bd:	48 c7 84 24 00 02 00 	movq   $0x0,0x200(%rsp)
  4020c4:	00 00 00 00 00 
  4020c9:	48 c7 84 24 f0 01 00 	movq   $0x0,0x1f0(%rsp)
  4020d0:	00 00 00 00 00 
  4020d5:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4020db:	48 8d 84 24 30 02 00 	lea    0x230(%rsp),%rax
  4020e2:	00 
  4020e3:	48 c7 84 24 f8 01 00 	movq   $0x0,0x1f8(%rsp)
  4020ea:	00 00 00 00 00 
  4020ef:	48 39 c7             	cmp    %rax,%rdi
  4020f2:	74 05                	je     4020f9 <main+0x709>
  4020f4:	e8 f7 f7 ff ff       	callq  4018f0 <_ZN2cv8fastFreeEPv@plt>
  4020f9:	48 8b 84 24 98 01 00 	mov    0x198(%rsp),%rax
  402100:	00 
  402101:	48 85 c0             	test   %rax,%rax
  402104:	74 0a                	je     402110 <main+0x720>
  402106:	f0 83 28 01          	lock subl $0x1,(%rax)
  40210a:	0f 84 30 05 00 00    	je     402640 <main+0xc50>
  402110:	48 8b 84 24 c0 01 00 	mov    0x1c0(%rsp),%rax
  402117:	00 
  402118:	48 8b bc 24 c8 01 00 	mov    0x1c8(%rsp),%rdi
  40211f:	00 
  402120:	48 c7 84 24 b0 01 00 	movq   $0x0,0x1b0(%rsp)
  402127:	00 00 00 00 00 
  40212c:	48 c7 84 24 a8 01 00 	movq   $0x0,0x1a8(%rsp)
  402133:	00 00 00 00 00 
  402138:	48 c7 84 24 a0 01 00 	movq   $0x0,0x1a0(%rsp)
  40213f:	00 00 00 00 00 
  402144:	48 c7 84 24 90 01 00 	movq   $0x0,0x190(%rsp)
  40214b:	00 00 00 00 00 
  402150:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  402156:	48 8d 84 24 d0 01 00 	lea    0x1d0(%rsp),%rax
  40215d:	00 
  40215e:	48 c7 84 24 98 01 00 	movq   $0x0,0x198(%rsp)
  402165:	00 00 00 00 00 
  40216a:	48 39 c7             	cmp    %rax,%rdi
  40216d:	74 05                	je     402174 <main+0x784>
  40216f:	e8 7c f7 ff ff       	callq  4018f0 <_ZN2cv8fastFreeEPv@plt>
  402174:	48 8b 84 24 38 01 00 	mov    0x138(%rsp),%rax
  40217b:	00 
  40217c:	48 85 c0             	test   %rax,%rax
  40217f:	74 0a                	je     40218b <main+0x79b>
  402181:	f0 83 28 01          	lock subl $0x1,(%rax)
  402185:	0f 84 cd 04 00 00    	je     402658 <main+0xc68>
  40218b:	48 8b 84 24 60 01 00 	mov    0x160(%rsp),%rax
  402192:	00 
  402193:	48 8b bc 24 68 01 00 	mov    0x168(%rsp),%rdi
  40219a:	00 
  40219b:	48 c7 84 24 50 01 00 	movq   $0x0,0x150(%rsp)
  4021a2:	00 00 00 00 00 
  4021a7:	48 c7 84 24 48 01 00 	movq   $0x0,0x148(%rsp)
  4021ae:	00 00 00 00 00 
  4021b3:	48 c7 84 24 40 01 00 	movq   $0x0,0x140(%rsp)
  4021ba:	00 00 00 00 00 
  4021bf:	48 c7 84 24 30 01 00 	movq   $0x0,0x130(%rsp)
  4021c6:	00 00 00 00 00 
  4021cb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4021d1:	48 8d 84 24 70 01 00 	lea    0x170(%rsp),%rax
  4021d8:	00 
  4021d9:	48 c7 84 24 38 01 00 	movq   $0x0,0x138(%rsp)
  4021e0:	00 00 00 00 00 
  4021e5:	48 39 c7             	cmp    %rax,%rdi
  4021e8:	74 05                	je     4021ef <main+0x7ff>
  4021ea:	e8 01 f7 ff ff       	callq  4018f0 <_ZN2cv8fastFreeEPv@plt>
  4021ef:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  4021f4:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4021f8:	48 81 ff 80 51 60 00 	cmp    $0x605180,%rdi
  4021ff:	0f 85 4e 07 00 00    	jne    402953 <main+0xf63>
  402205:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40220a:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  40220e:	48 81 ff 80 51 60 00 	cmp    $0x605180,%rdi
  402215:	0f 85 94 05 00 00    	jne    4027af <main+0xdbf>
  40221b:	41 83 c4 01          	add    $0x1,%r12d
  40221f:	41 83 fc 44          	cmp    $0x44,%r12d
  402223:	0f 84 19 05 00 00    	je     402742 <main+0xd52>
  402229:	41 83 fc 09          	cmp    $0x9,%r12d
  40222d:	b8 34 39 40 00       	mov    $0x403934,%eax
  402232:	48 8d 94 24 e0 01 00 	lea    0x1e0(%rsp),%rdx
  402239:	00 
  40223a:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  40223f:	be 33 39 40 00       	mov    $0x403933,%esi
  402244:	48 0f 4f f0          	cmovg  %rax,%rsi
  402248:	e8 53 f7 ff ff       	callq  4019a0 <_ZNSsC1EPKcRKSaIcE@plt>
  40224d:	48 8d bc 24 e0 00 00 	lea    0xe0(%rsp),%rdi
  402254:	00 
  402255:	45 89 e0             	mov    %r12d,%r8d
  402258:	b9 30 39 40 00       	mov    $0x403930,%ecx
  40225d:	ba 10 00 00 00       	mov    $0x10,%edx
  402262:	be 80 18 40 00       	mov    $0x401880,%esi
  402267:	31 c0                	xor    %eax,%eax
  402269:	e8 82 0a 00 00       	callq  402cf0 <_ZN9__gnu_cxx12__to_xstringISscEET_PFiPT0_mPKS2_P13__va_list_tagEmS5_z.constprop.27>
  40226e:	48 8d bc 24 c0 00 00 	lea    0xc0(%rsp),%rdi
  402275:	00 
  402276:	be d8 53 60 00       	mov    $0x6053d8,%esi
  40227b:	e8 90 f4 ff ff       	callq  401710 <_ZNSsC1ERKSs@plt>
  402280:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  402285:	48 8d bc 24 c0 00 00 	lea    0xc0(%rsp),%rdi
  40228c:	00 
  40228d:	e8 3e f6 ff ff       	callq  4018d0 <_ZNSs6appendERKSs@plt>
  402292:	48 8b 94 24 c0 00 00 	mov    0xc0(%rsp),%rdx
  402299:	00 
  40229a:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  4022a1:	00 
  4022a2:	48 8b 4a e8          	mov    -0x18(%rdx),%rcx
  4022a6:	48 89 ce             	mov    %rcx,%rsi
  4022a9:	48 03 70 e8          	add    -0x18(%rax),%rsi
  4022ad:	48 3b 72 f0          	cmp    -0x10(%rdx),%rsi
  4022b1:	0f 87 69 f7 ff ff    	ja     401a20 <main+0x30>
  4022b7:	48 8d b4 24 e0 00 00 	lea    0xe0(%rsp),%rsi
  4022be:	00 
  4022bf:	48 8d bc 24 c0 00 00 	lea    0xc0(%rsp),%rdi
  4022c6:	00 
  4022c7:	e8 04 f6 ff ff       	callq  4018d0 <_ZNSs6appendERKSs@plt>
  4022cc:	e9 68 f7 ff ff       	jmpq   401a39 <main+0x49>
  4022d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4022d8:	48 8d b4 24 80 00 00 	lea    0x80(%rsp),%rsi
  4022df:	00 
  4022e0:	48 8d 7c 24 60       	lea    0x60(%rsp),%rdi
  4022e5:	e8 e6 f5 ff ff       	callq  4018d0 <_ZNSs6appendERKSs@plt>
  4022ea:	e9 f5 fb ff ff       	jmpq   401ee4 <main+0x4f4>
  4022ef:	90                   	nop
  4022f0:	be e0 39 40 00       	mov    $0x4039e0,%esi
  4022f5:	bf c0 52 60 00       	mov    $0x6052c0,%edi
  4022fa:	e8 01 f5 ff ff       	callq  401800 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4022ff:	48 89 c7             	mov    %rax,%rdi
  402302:	e8 39 f6 ff ff       	callq  401940 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
  402307:	48 8d 9c 24 00 01 00 	lea    0x100(%rsp),%rbx
  40230e:	00 
  40230f:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  402316:	00 
  402317:	e8 14 0b 00 00       	callq  402e30 <_ZN2cv3MatD1Ev>
  40231c:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  402321:	48 89 de             	mov    %rbx,%rsi
  402324:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  402328:	e8 93 f5 ff ff       	callq  4018c0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40232d:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  402332:	48 89 de             	mov    %rbx,%rsi
  402335:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  402339:	e8 82 f5 ff ff       	callq  4018c0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40233e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402343:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  402347:	5b                   	pop    %rbx
  402348:	41 5c                	pop    %r12
  40234a:	41 5d                	pop    %r13
  40234c:	41 5e                	pop    %r14
  40234e:	41 5f                	pop    %r15
  402350:	5d                   	pop    %rbp
  402351:	c3                   	retq   
  402352:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402358:	48 8b 8c 24 60 01 00 	mov    0x160(%rsp),%rcx
  40235f:	00 
  402360:	89 d6                	mov    %edx,%esi
  402362:	48 89 c8             	mov    %rcx,%rax
  402365:	83 e0 1f             	and    $0x1f,%eax
  402368:	48 c1 e8 02          	shr    $0x2,%rax
  40236c:	48 f7 d8             	neg    %rax
  40236f:	83 e0 07             	and    $0x7,%eax
  402372:	39 d0                	cmp    %edx,%eax
  402374:	0f 47 c2             	cmova  %edx,%eax
  402377:	83 fa 0b             	cmp    $0xb,%edx
  40237a:	0f 87 f0 02 00 00    	ja     402670 <main+0xc80>
  402380:	83 fe 01             	cmp    $0x1,%esi
  402383:	48 63 01             	movslq (%rcx),%rax
  402386:	0f 84 30 03 00 00    	je     4026bc <main+0xccc>
  40238c:	48 63 79 04          	movslq 0x4(%rcx),%rdi
  402390:	48 0f af c7          	imul   %rdi,%rax
  402394:	83 fe 02             	cmp    $0x2,%esi
  402397:	0f 84 15 03 00 00    	je     4026b2 <main+0xcc2>
  40239d:	48 63 79 08          	movslq 0x8(%rcx),%rdi
  4023a1:	48 0f af c7          	imul   %rdi,%rax
  4023a5:	83 fe 03             	cmp    $0x3,%esi
  4023a8:	0f 84 fa 02 00 00    	je     4026a8 <main+0xcb8>
  4023ae:	48 63 79 0c          	movslq 0xc(%rcx),%rdi
  4023b2:	48 0f af c7          	imul   %rdi,%rax
  4023b6:	83 fe 04             	cmp    $0x4,%esi
  4023b9:	0f 84 43 03 00 00    	je     402702 <main+0xd12>
  4023bf:	48 63 79 10          	movslq 0x10(%rcx),%rdi
  4023c3:	48 0f af c7          	imul   %rdi,%rax
  4023c7:	83 fe 05             	cmp    $0x5,%esi
  4023ca:	0f 84 28 03 00 00    	je     4026f8 <main+0xd08>
  4023d0:	48 63 79 14          	movslq 0x14(%rcx),%rdi
  4023d4:	48 0f af c7          	imul   %rdi,%rax
  4023d8:	83 fe 06             	cmp    $0x6,%esi
  4023db:	0f 84 0d 03 00 00    	je     4026ee <main+0xcfe>
  4023e1:	48 63 79 18          	movslq 0x18(%rcx),%rdi
  4023e5:	48 0f af c7          	imul   %rdi,%rax
  4023e9:	83 fe 07             	cmp    $0x7,%esi
  4023ec:	0f 84 f2 02 00 00    	je     4026e4 <main+0xcf4>
  4023f2:	48 63 79 1c          	movslq 0x1c(%rcx),%rdi
  4023f6:	48 0f af c7          	imul   %rdi,%rax
  4023fa:	83 fe 08             	cmp    $0x8,%esi
  4023fd:	0f 84 d7 02 00 00    	je     4026da <main+0xcea>
  402403:	48 63 79 20          	movslq 0x20(%rcx),%rdi
  402407:	48 0f af c7          	imul   %rdi,%rax
  40240b:	83 fe 09             	cmp    $0x9,%esi
  40240e:	0f 84 bc 02 00 00    	je     4026d0 <main+0xce0>
  402414:	48 63 79 24          	movslq 0x24(%rcx),%rdi
  402418:	48 0f af c7          	imul   %rdi,%rax
  40241c:	83 fe 0b             	cmp    $0xb,%esi
  40241f:	0f 85 a1 02 00 00    	jne    4026c6 <main+0xcd6>
  402425:	48 63 79 28          	movslq 0x28(%rcx),%rdi
  402429:	48 0f af c7          	imul   %rdi,%rax
  40242d:	bf 0b 00 00 00       	mov    $0xb,%edi
  402432:	39 f2                	cmp    %esi,%edx
  402434:	0f 84 30 f7 ff ff    	je     401b6a <main+0x17a>
  40243a:	41 89 d3             	mov    %edx,%r11d
  40243d:	41 89 f0             	mov    %esi,%r8d
  402440:	41 29 f3             	sub    %esi,%r11d
  402443:	45 89 da             	mov    %r11d,%r10d
  402446:	41 c1 ea 03          	shr    $0x3,%r10d
  40244a:	42 8d 34 d5 00 00 00 	lea    0x0(,%r10,8),%esi
  402451:	00 
  402452:	85 f6                	test   %esi,%esi
  402454:	0f 84 b7 00 00 00    	je     402511 <main+0xb21>
  40245a:	c5 fd 6f 05 be 15 00 	vmovdqa 0x15be(%rip),%ymm0        # 403a20 <__dso_handle+0xf8>
  402461:	00 
  402462:	4e 8d 0c 81          	lea    (%rcx,%r8,4),%r9
  402466:	45 31 c0             	xor    %r8d,%r8d
  402469:	c4 c1 7d 6f 09       	vmovdqa (%r9),%ymm1
  40246e:	41 83 c0 01          	add    $0x1,%r8d
  402472:	49 83 c1 20          	add    $0x20,%r9
  402476:	45 39 c2             	cmp    %r8d,%r10d
  402479:	c5 dd 73 d0 20       	vpsrlq $0x20,%ymm0,%ymm4
  40247e:	c4 e2 7d 25 d1       	vpmovsxdq %xmm1,%ymm2
  402483:	c4 e3 7d 39 c9 01    	vextracti128 $0x1,%ymm1,%xmm1
  402489:	c5 ed f4 d8          	vpmuludq %ymm0,%ymm2,%ymm3
  40248d:	c5 d5 73 d2 20       	vpsrlq $0x20,%ymm2,%ymm5
  402492:	c5 dd f4 d2          	vpmuludq %ymm2,%ymm4,%ymm2
  402496:	c4 e2 7d 25 c9       	vpmovsxdq %xmm1,%ymm1
  40249b:	c5 d5 f4 c0          	vpmuludq %ymm0,%ymm5,%ymm0
  40249f:	c5 fd d4 c2          	vpaddq %ymm2,%ymm0,%ymm0
  4024a3:	c5 fd 73 f0 20       	vpsllq $0x20,%ymm0,%ymm0
  4024a8:	c5 e5 d4 c0          	vpaddq %ymm0,%ymm3,%ymm0
  4024ac:	c5 e5 73 d0 20       	vpsrlq $0x20,%ymm0,%ymm3
  4024b1:	c5 f5 f4 d0          	vpmuludq %ymm0,%ymm1,%ymm2
  4024b5:	c5 dd 73 d1 20       	vpsrlq $0x20,%ymm1,%ymm4
  4024ba:	c5 e5 f4 c9          	vpmuludq %ymm1,%ymm3,%ymm1
  4024be:	c5 dd f4 c0          	vpmuludq %ymm0,%ymm4,%ymm0
  4024c2:	c5 fd d4 c1          	vpaddq %ymm1,%ymm0,%ymm0
  4024c6:	c5 fd 73 f0 20       	vpsllq $0x20,%ymm0,%ymm0
  4024cb:	c5 ed d4 c0          	vpaddq %ymm0,%ymm2,%ymm0
  4024cf:	77 98                	ja     402469 <main+0xa79>
  4024d1:	c5 f9 6f c8          	vmovdqa %xmm0,%xmm1
  4024d5:	01 f7                	add    %esi,%edi
  4024d7:	c4 e3 7d 39 c0 01    	vextracti128 $0x1,%ymm0,%xmm0
  4024dd:	c4 c3 f9 16 c9 01    	vpextrq $0x1,%xmm1,%r9
  4024e3:	c4 c3 f9 16 c2 00    	vpextrq $0x0,%xmm0,%r10
  4024e9:	c4 c3 f9 16 c0 01    	vpextrq $0x1,%xmm0,%r8
  4024ef:	4d 0f af c2          	imul   %r10,%r8
  4024f3:	49 0f af c0          	imul   %r8,%rax
  4024f7:	c4 c3 f9 16 c8 00    	vpextrq $0x0,%xmm1,%r8
  4024fd:	49 0f af c1          	imul   %r9,%rax
  402501:	49 0f af c0          	imul   %r8,%rax
  402505:	44 39 de             	cmp    %r11d,%esi
  402508:	0f 84 92 01 00 00    	je     4026a0 <main+0xcb0>
  40250e:	c5 f8 77             	vzeroupper 
  402511:	48 63 f7             	movslq %edi,%rsi
  402514:	48 63 34 b1          	movslq (%rcx,%rsi,4),%rsi
  402518:	48 0f af c6          	imul   %rsi,%rax
  40251c:	8d 77 01             	lea    0x1(%rdi),%esi
  40251f:	39 f2                	cmp    %esi,%edx
  402521:	0f 8e 43 f6 ff ff    	jle    401b6a <main+0x17a>
  402527:	48 63 f6             	movslq %esi,%rsi
  40252a:	48 63 34 b1          	movslq (%rcx,%rsi,4),%rsi
  40252e:	48 0f af c6          	imul   %rsi,%rax
  402532:	8d 77 02             	lea    0x2(%rdi),%esi
  402535:	39 f2                	cmp    %esi,%edx
  402537:	0f 8e 2d f6 ff ff    	jle    401b6a <main+0x17a>
  40253d:	48 63 f6             	movslq %esi,%rsi
  402540:	48 63 34 b1          	movslq (%rcx,%rsi,4),%rsi
  402544:	48 0f af c6          	imul   %rsi,%rax
  402548:	8d 77 03             	lea    0x3(%rdi),%esi
  40254b:	39 d6                	cmp    %edx,%esi
  40254d:	0f 8d 17 f6 ff ff    	jge    401b6a <main+0x17a>
  402553:	48 63 f6             	movslq %esi,%rsi
  402556:	48 63 34 b1          	movslq (%rcx,%rsi,4),%rsi
  40255a:	48 0f af c6          	imul   %rsi,%rax
  40255e:	8d 77 04             	lea    0x4(%rdi),%esi
  402561:	39 d6                	cmp    %edx,%esi
  402563:	0f 8d 01 f6 ff ff    	jge    401b6a <main+0x17a>
  402569:	48 63 f6             	movslq %esi,%rsi
  40256c:	48 63 34 b1          	movslq (%rcx,%rsi,4),%rsi
  402570:	48 0f af c6          	imul   %rsi,%rax
  402574:	8d 77 05             	lea    0x5(%rdi),%esi
  402577:	39 d6                	cmp    %edx,%esi
  402579:	0f 8d eb f5 ff ff    	jge    401b6a <main+0x17a>
  40257f:	48 63 f6             	movslq %esi,%rsi
  402582:	83 c7 06             	add    $0x6,%edi
  402585:	48 63 34 b1          	movslq (%rcx,%rsi,4),%rsi
  402589:	48 0f af c6          	imul   %rsi,%rax
  40258d:	39 fa                	cmp    %edi,%edx
  40258f:	0f 8e d5 f5 ff ff    	jle    401b6a <main+0x17a>
  402595:	48 63 ff             	movslq %edi,%rdi
  402598:	48 63 0c b9          	movslq (%rcx,%rdi,4),%rcx
  40259c:	48 0f af c1          	imul   %rcx,%rax
  4025a0:	e9 c5 f5 ff ff       	jmpq   401b6a <main+0x17a>
  4025a5:	0f 1f 00             	nopl   (%rax)
  4025a8:	48 89 df             	mov    %rbx,%rdi
  4025ab:	e8 00 f2 ff ff       	callq  4017b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  4025b0:	48 8b 03             	mov    (%rbx),%rax
  4025b3:	be 0a 00 00 00       	mov    $0xa,%esi
  4025b8:	48 89 df             	mov    %rbx,%rdi
  4025bb:	ff 50 30             	callq  *0x30(%rax)
  4025be:	e9 49 f5 ff ff       	jmpq   401b0c <main+0x11c>
  4025c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4025c8:	4c 89 ef             	mov    %r13,%rdi
  4025cb:	e8 e0 f1 ff ff       	callq  4017b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  4025d0:	49 8b 45 00          	mov    0x0(%r13),%rax
  4025d4:	be 0a 00 00 00       	mov    $0xa,%esi
  4025d9:	4c 89 ef             	mov    %r13,%rdi
  4025dc:	ff 50 30             	callq  *0x30(%rax)
  4025df:	e9 1a f8 ff ff       	jmpq   401dfe <main+0x40e>
  4025e4:	0f 1f 40 00          	nopl   0x0(%rax)
  4025e8:	4c 89 ef             	mov    %r13,%rdi
  4025eb:	e8 c0 f1 ff ff       	callq  4017b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  4025f0:	49 8b 45 00          	mov    0x0(%r13),%rax
  4025f4:	be 0a 00 00 00       	mov    $0xa,%esi
  4025f9:	4c 89 ef             	mov    %r13,%rdi
  4025fc:	ff 50 30             	callq  *0x30(%rax)
  4025ff:	e9 67 fa ff ff       	jmpq   40206b <main+0x67b>
  402604:	0f 1f 40 00          	nopl   0x0(%rax)
  402608:	4c 89 ef             	mov    %r13,%rdi
  40260b:	e8 a0 f1 ff ff       	callq  4017b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  402610:	49 8b 45 00          	mov    0x0(%r13),%rax
  402614:	be 0a 00 00 00       	mov    $0xa,%esi
  402619:	4c 89 ef             	mov    %r13,%rdi
  40261c:	ff 50 30             	callq  *0x30(%rax)
  40261f:	e9 e7 f9 ff ff       	jmpq   40200b <main+0x61b>
  402624:	0f 1f 40 00          	nopl   0x0(%rax)
  402628:	48 8d bc 24 e0 01 00 	lea    0x1e0(%rsp),%rdi
  40262f:	00 
  402630:	e8 9b f1 ff ff       	callq  4017d0 <_ZN2cv3Mat10deallocateEv@plt>
  402635:	e9 5b fa ff ff       	jmpq   402095 <main+0x6a5>
  40263a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402640:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  402647:	00 
  402648:	e8 83 f1 ff ff       	callq  4017d0 <_ZN2cv3Mat10deallocateEv@plt>
  40264d:	e9 be fa ff ff       	jmpq   402110 <main+0x720>
  402652:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402658:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40265f:	00 
  402660:	e8 6b f1 ff ff       	callq  4017d0 <_ZN2cv3Mat10deallocateEv@plt>
  402665:	e9 21 fb ff ff       	jmpq   40218b <main+0x79b>
  40266a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402670:	85 c0                	test   %eax,%eax
  402672:	0f 85 d3 03 00 00    	jne    402a4b <main+0x105b>
  402678:	31 f6                	xor    %esi,%esi
  40267a:	b8 01 00 00 00       	mov    $0x1,%eax
  40267f:	31 ff                	xor    %edi,%edi
  402681:	e9 b4 fd ff ff       	jmpq   40243a <main+0xa4a>
  402686:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40268d:	00 00 00 
  402690:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%rsp)
  402697:	00 
  402698:	e9 fe f4 ff ff       	jmpq   401b9b <main+0x1ab>
  40269d:	0f 1f 00             	nopl   (%rax)
  4026a0:	c5 f8 77             	vzeroupper 
  4026a3:	e9 c2 f4 ff ff       	jmpq   401b6a <main+0x17a>
  4026a8:	bf 03 00 00 00       	mov    $0x3,%edi
  4026ad:	e9 80 fd ff ff       	jmpq   402432 <main+0xa42>
  4026b2:	bf 02 00 00 00       	mov    $0x2,%edi
  4026b7:	e9 76 fd ff ff       	jmpq   402432 <main+0xa42>
  4026bc:	bf 01 00 00 00       	mov    $0x1,%edi
  4026c1:	e9 74 fd ff ff       	jmpq   40243a <main+0xa4a>
  4026c6:	bf 0a 00 00 00       	mov    $0xa,%edi
  4026cb:	e9 62 fd ff ff       	jmpq   402432 <main+0xa42>
  4026d0:	bf 09 00 00 00       	mov    $0x9,%edi
  4026d5:	e9 58 fd ff ff       	jmpq   402432 <main+0xa42>
  4026da:	bf 08 00 00 00       	mov    $0x8,%edi
  4026df:	e9 4e fd ff ff       	jmpq   402432 <main+0xa42>
  4026e4:	bf 07 00 00 00       	mov    $0x7,%edi
  4026e9:	e9 44 fd ff ff       	jmpq   402432 <main+0xa42>
  4026ee:	bf 06 00 00 00       	mov    $0x6,%edi
  4026f3:	e9 3a fd ff ff       	jmpq   402432 <main+0xa42>
  4026f8:	bf 05 00 00 00       	mov    $0x5,%edi
  4026fd:	e9 30 fd ff ff       	jmpq   402432 <main+0xa42>
  402702:	bf 04 00 00 00       	mov    $0x4,%edi
  402707:	e9 26 fd ff ff       	jmpq   402432 <main+0xa42>
  40270c:	be b0 39 40 00       	mov    $0x4039b0,%esi
  402711:	bf c0 52 60 00       	mov    $0x6052c0,%edi
  402716:	e8 e5 f0 ff ff       	callq  401800 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40271b:	48 89 c7             	mov    %rax,%rdi
  40271e:	e8 1d f2 ff ff       	callq  401940 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
  402723:	48 8d bc 24 e0 01 00 	lea    0x1e0(%rsp),%rdi
  40272a:	00 
  40272b:	e8 00 07 00 00       	callq  402e30 <_ZN2cv3MatD1Ev>
  402730:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  402737:	00 
  402738:	e8 f3 06 00 00       	callq  402e30 <_ZN2cv3MatD1Ev>
  40273d:	e9 cd fb ff ff       	jmpq   40230f <main+0x91f>
  402742:	31 c0                	xor    %eax,%eax
  402744:	e9 fa fb ff ff       	jmpq   402343 <main+0x953>
  402749:	b9 00 19 40 00       	mov    $0x401900,%ecx
  40274e:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  402752:	48 85 c9             	test   %rcx,%rcx
  402755:	0f 84 3b 02 00 00    	je     402996 <main+0xfa6>
  40275b:	83 c8 ff             	or     $0xffffffff,%eax
  40275e:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  402762:	85 c0                	test   %eax,%eax
  402764:	0f 8f 18 f8 ff ff    	jg     401f82 <main+0x592>
  40276a:	48 8d b4 24 c0 00 00 	lea    0xc0(%rsp),%rsi
  402771:	00 
  402772:	e8 a9 f1 ff ff       	callq  401920 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  402777:	e9 06 f8 ff ff       	jmpq   401f82 <main+0x592>
  40277c:	b9 00 19 40 00       	mov    $0x401900,%ecx
  402781:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  402785:	48 85 c9             	test   %rcx,%rcx
  402788:	0f 84 ed 02 00 00    	je     402a7b <main+0x108b>
  40278e:	83 c8 ff             	or     $0xffffffff,%eax
  402791:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  402795:	85 c0                	test   %eax,%eax
  402797:	0f 8f cf f7 ff ff    	jg     401f6c <main+0x57c>
  40279d:	48 8d b4 24 c0 00 00 	lea    0xc0(%rsp),%rsi
  4027a4:	00 
  4027a5:	e8 76 f1 ff ff       	callq  401920 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  4027aa:	e9 bd f7 ff ff       	jmpq   401f6c <main+0x57c>
  4027af:	b9 00 19 40 00       	mov    $0x401900,%ecx
  4027b4:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  4027b8:	48 85 c9             	test   %rcx,%rcx
  4027bb:	0f 84 c5 01 00 00    	je     402986 <main+0xf96>
  4027c1:	83 c8 ff             	or     $0xffffffff,%eax
  4027c4:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  4027c8:	85 c0                	test   %eax,%eax
  4027ca:	0f 8f 4b fa ff ff    	jg     40221b <main+0x82b>
  4027d0:	48 89 de             	mov    %rbx,%rsi
  4027d3:	e8 48 f1 ff ff       	callq  401920 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  4027d8:	e9 3e fa ff ff       	jmpq   40221b <main+0x82b>
  4027dd:	0f 1f 00             	nopl   (%rax)
  4027e0:	e8 8b ef ff ff       	callq  401770 <_ZSt16__throw_bad_castv@plt>
  4027e5:	48 89 c3             	mov    %rax,%rbx
  4027e8:	c5 f8 77             	vzeroupper 
  4027eb:	48 8d bc 24 e0 01 00 	lea    0x1e0(%rsp),%rdi
  4027f2:	00 
  4027f3:	e8 38 06 00 00       	callq  402e30 <_ZN2cv3MatD1Ev>
  4027f8:	48 8d bc 24 80 01 00 	lea    0x180(%rsp),%rdi
  4027ff:	00 
  402800:	e8 2b 06 00 00       	callq  402e30 <_ZN2cv3MatD1Ev>
  402805:	48 8d bc 24 20 01 00 	lea    0x120(%rsp),%rdi
  40280c:	00 
  40280d:	e8 1e 06 00 00       	callq  402e30 <_ZN2cv3MatD1Ev>
  402812:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  402817:	48 8d b4 24 e0 00 00 	lea    0xe0(%rsp),%rsi
  40281e:	00 
  40281f:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  402823:	e8 98 f0 ff ff       	callq  4018c0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  402828:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  40282d:	48 8d 74 24 1e       	lea    0x1e(%rsp),%rsi
  402832:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  402836:	e8 85 f0 ff ff       	callq  4018c0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  40283b:	48 89 df             	mov    %rbx,%rdi
  40283e:	e8 fd ef ff ff       	callq  401840 <_Unwind_Resume@plt>
  402843:	e8 28 ef ff ff       	callq  401770 <_ZSt16__throw_bad_castv@plt>
  402848:	48 89 c3             	mov    %rax,%rbx
  40284b:	c5 f8 77             	vzeroupper 
  40284e:	eb c2                	jmp    402812 <main+0xe22>
  402850:	b9 00 19 40 00       	mov    $0x401900,%ecx
  402855:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  402859:	48 85 c9             	test   %rcx,%rcx
  40285c:	0f 84 fb 01 00 00    	je     402a5d <main+0x106d>
  402862:	83 c8 ff             	or     $0xffffffff,%eax
  402865:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  402869:	85 c0                	test   %eax,%eax
  40286b:	0f 8f 4b f2 ff ff    	jg     401abc <main+0xcc>
  402871:	48 8d b4 24 e0 01 00 	lea    0x1e0(%rsp),%rsi
  402878:	00 
  402879:	e8 a2 f0 ff ff       	callq  401920 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  40287e:	e9 39 f2 ff ff       	jmpq   401abc <main+0xcc>
  402883:	b9 00 19 40 00       	mov    $0x401900,%ecx
  402888:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  40288c:	48 85 c9             	test   %rcx,%rcx
  40288f:	0f 84 11 01 00 00    	je     4029a6 <main+0xfb6>
  402895:	83 c8 ff             	or     $0xffffffff,%eax
  402898:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  40289c:	85 c0                	test   %eax,%eax
  40289e:	0f 8f ff f1 ff ff    	jg     401aa3 <main+0xb3>
  4028a4:	48 8d b4 24 e0 01 00 	lea    0x1e0(%rsp),%rsi
  4028ab:	00 
  4028ac:	e8 6f f0 ff ff       	callq  401920 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  4028b1:	e9 ed f1 ff ff       	jmpq   401aa3 <main+0xb3>
  4028b6:	b9 00 19 40 00       	mov    $0x401900,%ecx
  4028bb:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  4028bf:	48 85 c9             	test   %rcx,%rcx
  4028c2:	0f 84 d3 01 00 00    	je     402a9b <main+0x10ab>
  4028c8:	83 c8 ff             	or     $0xffffffff,%eax
  4028cb:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  4028cf:	85 c0                	test   %eax,%eax
  4028d1:	0f 8f 7c f6 ff ff    	jg     401f53 <main+0x563>
  4028d7:	48 8d 74 24 1f       	lea    0x1f(%rsp),%rsi
  4028dc:	e8 3f f0 ff ff       	callq  401920 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  4028e1:	e9 6d f6 ff ff       	jmpq   401f53 <main+0x563>
  4028e6:	e8 85 ee ff ff       	callq  401770 <_ZSt16__throw_bad_castv@plt>
  4028eb:	b9 00 19 40 00       	mov    $0x401900,%ecx
  4028f0:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4028f4:	48 85 c9             	test   %rcx,%rcx
  4028f7:	0f 84 70 01 00 00    	je     402a6d <main+0x107d>
  4028fd:	83 ca ff             	or     $0xffffffff,%edx
  402900:	f0 0f c1 10          	lock xadd %edx,(%rax)
  402904:	89 d0                	mov    %edx,%eax
  402906:	85 c0                	test   %eax,%eax
  402908:	0f 8f 8d f6 ff ff    	jg     401f9b <main+0x5ab>
  40290e:	48 8d b4 24 c0 00 00 	lea    0xc0(%rsp),%rsi
  402915:	00 
  402916:	e8 05 f0 ff ff       	callq  401920 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  40291b:	e9 7b f6 ff ff       	jmpq   401f9b <main+0x5ab>
  402920:	b9 00 19 40 00       	mov    $0x401900,%ecx
  402925:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  402929:	48 85 c9             	test   %rcx,%rcx
  40292c:	0f 84 59 01 00 00    	je     402a8b <main+0x109b>
  402932:	83 c8 ff             	or     $0xffffffff,%eax
  402935:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  402939:	85 c0                	test   %eax,%eax
  40293b:	0f 8f 49 f1 ff ff    	jg     401a8a <main+0x9a>
  402941:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  402948:	00 
  402949:	e8 d2 ef ff ff       	callq  401920 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  40294e:	e9 37 f1 ff ff       	jmpq   401a8a <main+0x9a>
  402953:	b9 00 19 40 00       	mov    $0x401900,%ecx
  402958:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  40295c:	48 85 c9             	test   %rcx,%rcx
  40295f:	0f 84 46 01 00 00    	je     402aab <main+0x10bb>
  402965:	83 c8 ff             	or     $0xffffffff,%eax
  402968:	f0 0f c1 02          	lock xadd %eax,(%rdx)
  40296c:	85 c0                	test   %eax,%eax
  40296e:	0f 8f 91 f8 ff ff    	jg     402205 <main+0x815>
  402974:	48 89 de             	mov    %rbx,%rsi
  402977:	e8 a4 ef ff ff       	callq  401920 <_ZNSs4_Rep10_M_destroyERKSaIcE@plt>
  40297c:	e9 84 f8 ff ff       	jmpq   402205 <main+0x815>
  402981:	e8 ea ed ff ff       	callq  401770 <_ZSt16__throw_bad_castv@plt>
  402986:	8b 50 f8             	mov    -0x8(%rax),%edx
  402989:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  40298c:	89 48 f8             	mov    %ecx,-0x8(%rax)
  40298f:	89 d0                	mov    %edx,%eax
  402991:	e9 32 fe ff ff       	jmpq   4027c8 <main+0xdd8>
  402996:	8b 50 f8             	mov    -0x8(%rax),%edx
  402999:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  40299c:	89 48 f8             	mov    %ecx,-0x8(%rax)
  40299f:	89 d0                	mov    %edx,%eax
  4029a1:	e9 bc fd ff ff       	jmpq   402762 <main+0xd72>
  4029a6:	8b 50 f8             	mov    -0x8(%rax),%edx
  4029a9:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  4029ac:	89 48 f8             	mov    %ecx,-0x8(%rax)
  4029af:	89 d0                	mov    %edx,%eax
  4029b1:	e9 e6 fe ff ff       	jmpq   40289c <main+0xeac>
  4029b6:	48 89 c3             	mov    %rax,%rbx
  4029b9:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  4029c0:	00 
  4029c1:	48 8d 74 24 1f       	lea    0x1f(%rsp),%rsi
  4029c6:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4029ca:	c5 f8 77             	vzeroupper 
  4029cd:	e8 ee ee ff ff       	callq  4018c0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4029d2:	48 8b 84 24 a0 00 00 	mov    0xa0(%rsp),%rax
  4029d9:	00 
  4029da:	48 8d b4 24 c0 00 00 	lea    0xc0(%rsp),%rsi
  4029e1:	00 
  4029e2:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4029e6:	e8 d5 ee ff ff       	callq  4018c0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  4029eb:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
  4029f0:	48 8d b4 24 c0 00 00 	lea    0xc0(%rsp),%rsi
  4029f7:	00 
  4029f8:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  4029fc:	e8 bf ee ff ff       	callq  4018c0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  402a01:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  402a08:	00 
  402a09:	48 8d b4 24 c0 00 00 	lea    0xc0(%rsp),%rsi
  402a10:	00 
  402a11:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  402a15:	e8 a6 ee ff ff       	callq  4018c0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  402a1a:	48 8b bc 24 e0 00 00 	mov    0xe0(%rsp),%rdi
  402a21:	00 
  402a22:	48 85 ff             	test   %rdi,%rdi
  402a25:	0f 84 c0 fd ff ff    	je     4027eb <main+0xdfb>
  402a2b:	e8 b0 ed ff ff       	callq  4017e0 <_ZdlPv@plt>
  402a30:	e9 b6 fd ff ff       	jmpq   4027eb <main+0xdfb>
  402a35:	48 89 c3             	mov    %rax,%rbx
  402a38:	c5 f8 77             	vzeroupper 
  402a3b:	e9 b8 fd ff ff       	jmpq   4027f8 <main+0xe08>
  402a40:	48 89 c3             	mov    %rax,%rbx
  402a43:	c5 f8 77             	vzeroupper 
  402a46:	e9 ba fd ff ff       	jmpq   402805 <main+0xe15>
  402a4b:	89 c6                	mov    %eax,%esi
  402a4d:	e9 2e f9 ff ff       	jmpq   402380 <main+0x990>
  402a52:	48 89 c3             	mov    %rax,%rbx
  402a55:	c5 f8 77             	vzeroupper 
  402a58:	e9 cb fd ff ff       	jmpq   402828 <main+0xe38>
  402a5d:	8b 50 f8             	mov    -0x8(%rax),%edx
  402a60:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  402a63:	89 48 f8             	mov    %ecx,-0x8(%rax)
  402a66:	89 d0                	mov    %edx,%eax
  402a68:	e9 fc fd ff ff       	jmpq   402869 <main+0xe79>
  402a6d:	8b 42 f8             	mov    -0x8(%rdx),%eax
  402a70:	8d 48 ff             	lea    -0x1(%rax),%ecx
  402a73:	89 4a f8             	mov    %ecx,-0x8(%rdx)
  402a76:	e9 8b fe ff ff       	jmpq   402906 <main+0xf16>
  402a7b:	8b 50 f8             	mov    -0x8(%rax),%edx
  402a7e:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  402a81:	89 48 f8             	mov    %ecx,-0x8(%rax)
  402a84:	89 d0                	mov    %edx,%eax
  402a86:	e9 0a fd ff ff       	jmpq   402795 <main+0xda5>
  402a8b:	8b 50 f8             	mov    -0x8(%rax),%edx
  402a8e:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  402a91:	89 48 f8             	mov    %ecx,-0x8(%rax)
  402a94:	89 d0                	mov    %edx,%eax
  402a96:	e9 9e fe ff ff       	jmpq   402939 <main+0xf49>
  402a9b:	8b 50 f8             	mov    -0x8(%rax),%edx
  402a9e:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  402aa1:	89 48 f8             	mov    %ecx,-0x8(%rax)
  402aa4:	89 d0                	mov    %edx,%eax
  402aa6:	e9 24 fe ff ff       	jmpq   4028cf <main+0xedf>
  402aab:	8b 50 f8             	mov    -0x8(%rax),%edx
  402aae:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  402ab1:	89 48 f8             	mov    %ecx,-0x8(%rax)
  402ab4:	89 d0                	mov    %edx,%eax
  402ab6:	e9 b1 fe ff ff       	jmpq   40296c <main+0xf7c>
  402abb:	48 89 c3             	mov    %rax,%rbx
  402abe:	c5 f8 77             	vzeroupper 
  402ac1:	48 8b 84 24 e0 00 00 	mov    0xe0(%rsp),%rax
  402ac8:	00 
  402ac9:	48 8d b4 24 e0 01 00 	lea    0x1e0(%rsp),%rsi
  402ad0:	00 
  402ad1:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  402ad5:	e8 e6 ed ff ff       	callq  4018c0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  402ada:	e9 49 fd ff ff       	jmpq   402828 <main+0xe38>
  402adf:	48 89 c3             	mov    %rax,%rbx
  402ae2:	c5 f8 77             	vzeroupper 
  402ae5:	e9 01 ff ff ff       	jmpq   4029eb <main+0xffb>
  402aea:	48 89 c3             	mov    %rax,%rbx
  402aed:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
  402af2:	48 8d b4 24 a0 00 00 	lea    0xa0(%rsp),%rsi
  402af9:	00 
  402afa:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  402afe:	c5 f8 77             	vzeroupper 
  402b01:	e8 ba ed ff ff       	callq  4018c0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  402b06:	e9 f6 fe ff ff       	jmpq   402a01 <main+0x1011>
  402b0b:	48 89 c3             	mov    %rax,%rbx
  402b0e:	c5 f8 77             	vzeroupper 
  402b11:	e9 04 ff ff ff       	jmpq   402a1a <main+0x102a>
  402b16:	48 89 c3             	mov    %rax,%rbx
  402b19:	c5 f8 77             	vzeroupper 
  402b1c:	e9 b1 fe ff ff       	jmpq   4029d2 <main+0xfe2>
  402b21:	48 89 c3             	mov    %rax,%rbx
  402b24:	48 8b 84 24 e0 01 00 	mov    0x1e0(%rsp),%rax
  402b2b:	00 
  402b2c:	48 8d b4 24 80 01 00 	lea    0x180(%rsp),%rsi
  402b33:	00 
  402b34:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  402b38:	c5 f8 77             	vzeroupper 
  402b3b:	e8 80 ed ff ff       	callq  4018c0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  402b40:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  402b47:	00 
  402b48:	48 8d b4 24 e0 01 00 	lea    0x1e0(%rsp),%rsi
  402b4f:	00 
  402b50:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  402b54:	e8 67 ed ff ff       	callq  4018c0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  402b59:	e9 63 ff ff ff       	jmpq   402ac1 <main+0x10d1>
  402b5e:	48 89 c3             	mov    %rax,%rbx
  402b61:	c5 f8 77             	vzeroupper 
  402b64:	eb da                	jmp    402b40 <main+0x1150>
  402b66:	48 89 c3             	mov    %rax,%rbx
  402b69:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  402b70:	00 
  402b71:	48 8d 74 24 1f       	lea    0x1f(%rsp),%rsi
  402b76:	48 8d 78 e8          	lea    -0x18(%rax),%rdi
  402b7a:	c5 f8 77             	vzeroupper 
  402b7d:	e8 3e ed ff ff       	callq  4018c0 <_ZNSs4_Rep10_M_disposeERKSaIcE@plt>
  402b82:	e9 3a ff ff ff       	jmpq   402ac1 <main+0x10d1>
  402b87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402b8e:	00 00 

0000000000402b90 <_GLOBAL__sub_I_main>:
  402b90:	48 83 ec 18          	sub    $0x18,%rsp
  402b94:	bf e0 53 60 00       	mov    $0x6053e0,%edi
  402b99:	e8 b2 ed ff ff       	callq  401950 <_ZNSt8ios_base4InitC1Ev@plt>
  402b9e:	ba 28 39 40 00       	mov    $0x403928,%edx
  402ba3:	be e0 53 60 00       	mov    $0x6053e0,%esi
  402ba8:	bf 50 18 40 00       	mov    $0x401850,%edi
  402bad:	e8 2e ed ff ff       	callq  4018e0 <__cxa_atexit@plt>
  402bb2:	48 8d 54 24 0f       	lea    0xf(%rsp),%rdx
  402bb7:	be 98 39 40 00       	mov    $0x403998,%esi
  402bbc:	bf d8 53 60 00       	mov    $0x6053d8,%edi
  402bc1:	e8 da ed ff ff       	callq  4019a0 <_ZNSsC1EPKcRKSaIcE@plt>
  402bc6:	ba 28 39 40 00       	mov    $0x403928,%edx
  402bcb:	be d8 53 60 00       	mov    $0x6053d8,%esi
  402bd0:	bf 90 19 40 00       	mov    $0x401990,%edi
  402bd5:	e8 06 ed ff ff       	callq  4018e0 <__cxa_atexit@plt>
  402bda:	48 83 c4 18          	add    $0x18,%rsp
  402bde:	c3                   	retq   
  402bdf:	90                   	nop

0000000000402be0 <_GLOBAL__sub_I_t0>:
  402be0:	48 83 ec 08          	sub    $0x8,%rsp
  402be4:	bf 68 54 60 00       	mov    $0x605468,%edi
  402be9:	e8 62 ed ff ff       	callq  401950 <_ZNSt8ios_base4InitC1Ev@plt>
  402bee:	ba 28 39 40 00       	mov    $0x403928,%edx
  402bf3:	be 68 54 60 00       	mov    $0x605468,%esi
  402bf8:	bf 50 18 40 00       	mov    $0x401850,%edi
  402bfd:	48 83 c4 08          	add    $0x8,%rsp
  402c01:	e9 da ec ff ff       	jmpq   4018e0 <__cxa_atexit@plt>

0000000000402c06 <_start>:
  402c06:	31 ed                	xor    %ebp,%ebp
  402c08:	49 89 d1             	mov    %rdx,%r9
  402c0b:	5e                   	pop    %rsi
  402c0c:	48 89 e2             	mov    %rsp,%rdx
  402c0f:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402c13:	50                   	push   %rax
  402c14:	54                   	push   %rsp
  402c15:	49 c7 c0 10 39 40 00 	mov    $0x403910,%r8
  402c1c:	48 c7 c1 a0 38 40 00 	mov    $0x4038a0,%rcx
  402c23:	48 c7 c7 f0 19 40 00 	mov    $0x4019f0,%rdi
  402c2a:	e8 e1 ec ff ff       	callq  401910 <__libc_start_main@plt>
  402c2f:	f4                   	hlt    

0000000000402c30 <deregister_tm_clones>:
  402c30:	b8 87 51 60 00       	mov    $0x605187,%eax
  402c35:	55                   	push   %rbp
  402c36:	48 2d 80 51 60 00    	sub    $0x605180,%rax
  402c3c:	48 83 f8 0e          	cmp    $0xe,%rax
  402c40:	48 89 e5             	mov    %rsp,%rbp
  402c43:	77 02                	ja     402c47 <deregister_tm_clones+0x17>
  402c45:	5d                   	pop    %rbp
  402c46:	c3                   	retq   
  402c47:	b8 00 00 00 00       	mov    $0x0,%eax
  402c4c:	48 85 c0             	test   %rax,%rax
  402c4f:	74 f4                	je     402c45 <deregister_tm_clones+0x15>
  402c51:	5d                   	pop    %rbp
  402c52:	bf 80 51 60 00       	mov    $0x605180,%edi
  402c57:	ff e0                	jmpq   *%rax
  402c59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402c60 <register_tm_clones>:
  402c60:	b8 80 51 60 00       	mov    $0x605180,%eax
  402c65:	55                   	push   %rbp
  402c66:	48 2d 80 51 60 00    	sub    $0x605180,%rax
  402c6c:	48 c1 f8 03          	sar    $0x3,%rax
  402c70:	48 89 e5             	mov    %rsp,%rbp
  402c73:	48 89 c2             	mov    %rax,%rdx
  402c76:	48 c1 ea 3f          	shr    $0x3f,%rdx
  402c7a:	48 01 d0             	add    %rdx,%rax
  402c7d:	48 d1 f8             	sar    %rax
  402c80:	75 02                	jne    402c84 <register_tm_clones+0x24>
  402c82:	5d                   	pop    %rbp
  402c83:	c3                   	retq   
  402c84:	ba 00 00 00 00       	mov    $0x0,%edx
  402c89:	48 85 d2             	test   %rdx,%rdx
  402c8c:	74 f4                	je     402c82 <register_tm_clones+0x22>
  402c8e:	5d                   	pop    %rbp
  402c8f:	48 89 c6             	mov    %rax,%rsi
  402c92:	bf 80 51 60 00       	mov    $0x605180,%edi
  402c97:	ff e2                	jmpq   *%rdx
  402c99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402ca0 <__do_global_dtors_aux>:
  402ca0:	80 3d 29 27 20 00 00 	cmpb   $0x0,0x202729(%rip)        # 6053d0 <completed.6355>
  402ca7:	75 11                	jne    402cba <__do_global_dtors_aux+0x1a>
  402ca9:	55                   	push   %rbp
  402caa:	48 89 e5             	mov    %rsp,%rbp
  402cad:	e8 7e ff ff ff       	callq  402c30 <deregister_tm_clones>
  402cb2:	5d                   	pop    %rbp
  402cb3:	c6 05 16 27 20 00 01 	movb   $0x1,0x202716(%rip)        # 6053d0 <completed.6355>
  402cba:	f3 c3                	repz retq 
  402cbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402cc0 <frame_dummy>:
  402cc0:	48 83 3d 28 20 20 00 	cmpq   $0x0,0x202028(%rip)        # 604cf0 <__JCR_END__>
  402cc7:	00 
  402cc8:	74 1e                	je     402ce8 <frame_dummy+0x28>
  402cca:	b8 00 00 00 00       	mov    $0x0,%eax
  402ccf:	48 85 c0             	test   %rax,%rax
  402cd2:	74 14                	je     402ce8 <frame_dummy+0x28>
  402cd4:	55                   	push   %rbp
  402cd5:	bf f0 4c 60 00       	mov    $0x604cf0,%edi
  402cda:	48 89 e5             	mov    %rsp,%rbp
  402cdd:	ff d0                	callq  *%rax
  402cdf:	5d                   	pop    %rbp
  402ce0:	e9 7b ff ff ff       	jmpq   402c60 <register_tm_clones>
  402ce5:	0f 1f 00             	nopl   (%rax)
  402ce8:	e9 73 ff ff ff       	jmpq   402c60 <register_tm_clones>
  402ced:	0f 1f 00             	nopl   (%rax)

0000000000402cf0 <_ZN9__gnu_cxx12__to_xstringISscEET_PFiPT0_mPKS2_P13__va_list_tagEmS5_z.constprop.27>:
  402cf0:	55                   	push   %rbp
  402cf1:	48 89 e5             	mov    %rsp,%rbp
  402cf4:	41 56                	push   %r14
  402cf6:	41 55                	push   %r13
  402cf8:	41 54                	push   %r12
  402cfa:	49 89 fc             	mov    %rdi,%r12
  402cfd:	53                   	push   %rbx
  402cfe:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  402d05:	84 c0                	test   %al,%al
  402d07:	4c 89 85 50 ff ff ff 	mov    %r8,-0xb0(%rbp)
  402d0e:	4c 89 8d 58 ff ff ff 	mov    %r9,-0xa8(%rbp)
  402d15:	74 2e                	je     402d45 <_ZN9__gnu_cxx12__to_xstringISscEET_PFiPT0_mPKS2_P13__va_list_tagEmS5_z.constprop.27+0x55>
  402d17:	c5 f8 29 85 60 ff ff 	vmovaps %xmm0,-0xa0(%rbp)
  402d1e:	ff 
  402d1f:	c5 f8 29 8d 70 ff ff 	vmovaps %xmm1,-0x90(%rbp)
  402d26:	ff 
  402d27:	c5 f8 29 55 80       	vmovaps %xmm2,-0x80(%rbp)
  402d2c:	c5 f8 29 5d 90       	vmovaps %xmm3,-0x70(%rbp)
  402d31:	c5 f8 29 65 a0       	vmovaps %xmm4,-0x60(%rbp)
  402d36:	c5 f8 29 6d b0       	vmovaps %xmm5,-0x50(%rbp)
  402d3b:	c5 f8 29 75 c0       	vmovaps %xmm6,-0x40(%rbp)
  402d40:	c5 f8 29 7d d0       	vmovaps %xmm7,-0x30(%rbp)
  402d45:	48 83 ec 30          	sub    $0x30,%rsp
  402d49:	48 8d 45 10          	lea    0x10(%rbp),%rax
  402d4d:	48 8d 8d 18 ff ff ff 	lea    -0xe8(%rbp),%rcx
  402d54:	48 8d 5c 24 1f       	lea    0x1f(%rsp),%rbx
  402d59:	ba 30 39 40 00       	mov    $0x403930,%edx
  402d5e:	be 10 00 00 00       	mov    $0x10,%esi
  402d63:	48 83 e3 e0          	and    $0xffffffffffffffe0,%rbx
  402d67:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
  402d6e:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
  402d75:	48 89 df             	mov    %rbx,%rdi
  402d78:	c7 85 18 ff ff ff 20 	movl   $0x20,-0xe8(%rbp)
  402d7f:	00 00 00 
  402d82:	c7 85 1c ff ff ff 30 	movl   $0x30,-0xe4(%rbp)
  402d89:	00 00 00 
  402d8c:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
  402d93:	e8 e8 ea ff ff       	callq  401880 <vsnprintf@plt>
  402d98:	4c 63 e8             	movslq %eax,%r13
  402d9b:	49 01 dd             	add    %rbx,%r13
  402d9e:	4c 39 eb             	cmp    %r13,%rbx
  402da1:	74 65                	je     402e08 <_ZN9__gnu_cxx12__to_xstringISscEET_PFiPT0_mPKS2_P13__va_list_tagEmS5_z.constprop.27+0x118>
  402da3:	49 29 dd             	sub    %rbx,%r13
  402da6:	48 8d 95 17 ff ff ff 	lea    -0xe9(%rbp),%rdx
  402dad:	31 f6                	xor    %esi,%esi
  402daf:	4c 89 ef             	mov    %r13,%rdi
  402db2:	e8 d9 ea ff ff       	callq  401890 <_ZNSs4_Rep9_S_createEmmRKSaIcE@plt>
  402db7:	49 83 fd 01          	cmp    $0x1,%r13
  402dbb:	49 89 c6             	mov    %rax,%r14
  402dbe:	48 8d 48 18          	lea    0x18(%rax),%rcx
  402dc2:	74 34                	je     402df8 <_ZN9__gnu_cxx12__to_xstringISscEET_PFiPT0_mPKS2_P13__va_list_tagEmS5_z.constprop.27+0x108>
  402dc4:	48 89 cf             	mov    %rcx,%rdi
  402dc7:	4c 89 ea             	mov    %r13,%rdx
  402dca:	48 89 de             	mov    %rbx,%rsi
  402dcd:	e8 4e e9 ff ff       	callq  401720 <memcpy@plt>
  402dd2:	48 89 c1             	mov    %rax,%rcx
  402dd5:	49 81 fe 80 51 60 00 	cmp    $0x605180,%r14
  402ddc:	75 31                	jne    402e0f <_ZN9__gnu_cxx12__to_xstringISscEET_PFiPT0_mPKS2_P13__va_list_tagEmS5_z.constprop.27+0x11f>
  402dde:	49 89 0c 24          	mov    %rcx,(%r12)
  402de2:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
  402de6:	4c 89 e0             	mov    %r12,%rax
  402de9:	5b                   	pop    %rbx
  402dea:	41 5c                	pop    %r12
  402dec:	41 5d                	pop    %r13
  402dee:	41 5e                	pop    %r14
  402df0:	5d                   	pop    %rbp
  402df1:	c3                   	retq   
  402df2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402df8:	0f b6 03             	movzbl (%rbx),%eax
  402dfb:	41 88 46 18          	mov    %al,0x18(%r14)
  402dff:	eb d4                	jmp    402dd5 <_ZN9__gnu_cxx12__to_xstringISscEET_PFiPT0_mPKS2_P13__va_list_tagEmS5_z.constprop.27+0xe5>
  402e01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402e08:	b9 98 51 60 00       	mov    $0x605198,%ecx
  402e0d:	eb cf                	jmp    402dde <_ZN9__gnu_cxx12__to_xstringISscEET_PFiPT0_mPKS2_P13__va_list_tagEmS5_z.constprop.27+0xee>
  402e0f:	41 c7 46 10 00 00 00 	movl   $0x0,0x10(%r14)
  402e16:	00 
  402e17:	4d 89 2e             	mov    %r13,(%r14)
  402e1a:	43 c6 44 2e 18 00    	movb   $0x0,0x18(%r14,%r13,1)
  402e20:	eb bc                	jmp    402dde <_ZN9__gnu_cxx12__to_xstringISscEET_PFiPT0_mPKS2_P13__va_list_tagEmS5_z.constprop.27+0xee>
  402e22:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402e29:	00 00 00 
  402e2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402e30 <_ZN2cv3MatD1Ev>:
  402e30:	53                   	push   %rbx
  402e31:	48 8b 47 18          	mov    0x18(%rdi),%rax
  402e35:	48 89 fb             	mov    %rdi,%rbx
  402e38:	48 85 c0             	test   %rax,%rax
  402e3b:	74 06                	je     402e43 <_ZN2cv3MatD1Ev+0x13>
  402e3d:	f0 83 28 01          	lock subl $0x1,(%rax)
  402e41:	74 55                	je     402e98 <_ZN2cv3MatD1Ev+0x68>
  402e43:	48 8b 43 40          	mov    0x40(%rbx),%rax
  402e47:	48 8b 7b 48          	mov    0x48(%rbx),%rdi
  402e4b:	48 83 c3 50          	add    $0x50,%rbx
  402e4f:	48 c7 43 e0 00 00 00 	movq   $0x0,-0x20(%rbx)
  402e56:	00 
  402e57:	48 c7 43 d8 00 00 00 	movq   $0x0,-0x28(%rbx)
  402e5e:	00 
  402e5f:	48 c7 43 d0 00 00 00 	movq   $0x0,-0x30(%rbx)
  402e66:	00 
  402e67:	48 c7 43 c0 00 00 00 	movq   $0x0,-0x40(%rbx)
  402e6e:	00 
  402e6f:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  402e75:	48 c7 43 c8 00 00 00 	movq   $0x0,-0x38(%rbx)
  402e7c:	00 
  402e7d:	48 39 df             	cmp    %rbx,%rdi
  402e80:	74 0e                	je     402e90 <_ZN2cv3MatD1Ev+0x60>
  402e82:	5b                   	pop    %rbx
  402e83:	e9 68 ea ff ff       	jmpq   4018f0 <_ZN2cv8fastFreeEPv@plt>
  402e88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402e8f:	00 
  402e90:	5b                   	pop    %rbx
  402e91:	c3                   	retq   
  402e92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402e98:	e8 33 e9 ff ff       	callq  4017d0 <_ZN2cv3Mat10deallocateEv@plt>
  402e9d:	0f 1f 00             	nopl   (%rax)
  402ea0:	eb a1                	jmp    402e43 <_ZN2cv3MatD1Ev+0x13>
  402ea2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402ea9:	00 00 00 
  402eac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402eb0 <_Z13kernel_driverRN2cv3MatES1_>:
  402eb0:	55                   	push   %rbp
  402eb1:	48 89 e5             	mov    %rsp,%rbp
  402eb4:	41 57                	push   %r15
  402eb6:	41 56                	push   %r14
  402eb8:	41 55                	push   %r13
  402eba:	49 bd 00 00 00 00 00 	movabs $0xfe0000000000000,%r13
  402ec1:	00 e0 0f 
  402ec4:	41 54                	push   %r12
  402ec6:	49 c7 c4 ff ff ff ff 	mov    $0xffffffffffffffff,%r12
  402ecd:	53                   	push   %rbx
  402ece:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  402ed2:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
  402ed9:	8b 47 08             	mov    0x8(%rdi),%eax
  402edc:	48 89 7c 24 58       	mov    %rdi,0x58(%rsp)
  402ee1:	48 89 b4 24 c8 00 00 	mov    %rsi,0xc8(%rsp)
  402ee8:	00 
  402ee9:	48 89 fe             	mov    %rdi,%rsi
  402eec:	89 c7                	mov    %eax,%edi
  402eee:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%rsp)
  402ef5:	8b 46 0c             	mov    0xc(%rsi),%eax
  402ef8:	89 fa                	mov    %edi,%edx
  402efa:	89 fb                	mov    %edi,%ebx
  402efc:	c1 fa 1f             	sar    $0x1f,%edx
  402eff:	c1 ea 1d             	shr    $0x1d,%edx
  402f02:	89 c6                	mov    %eax,%esi
  402f04:	89 84 24 a8 00 00 00 	mov    %eax,0xa8(%rsp)
  402f0b:	8d 04 17             	lea    (%rdi,%rdx,1),%eax
  402f0e:	41 89 f7             	mov    %esi,%r15d
  402f11:	83 e0 07             	and    $0x7,%eax
  402f14:	29 d0                	sub    %edx,%eax
  402f16:	ba ab aa aa 2a       	mov    $0x2aaaaaab,%edx
  402f1b:	29 c3                	sub    %eax,%ebx
  402f1d:	89 f0                	mov    %esi,%eax
  402f1f:	f7 ea                	imul   %edx
  402f21:	89 f0                	mov    %esi,%eax
  402f23:	c1 f8 1f             	sar    $0x1f,%eax
  402f26:	29 c2                	sub    %eax,%edx
  402f28:	44 8d 34 52          	lea    (%rdx,%rdx,2),%r14d
  402f2c:	8d 53 08             	lea    0x8(%rbx),%edx
  402f2f:	45 01 f6             	add    %r14d,%r14d
  402f32:	41 8d 46 06          	lea    0x6(%r14),%eax
  402f36:	0f af d0             	imul   %eax,%edx
  402f39:	48 63 d2             	movslq %edx,%rdx
  402f3c:	48 8d 3c d5 00 00 00 	lea    0x0(,%rdx,8),%rdi
  402f43:	00 
  402f44:	4c 39 ea             	cmp    %r13,%rdx
  402f47:	49 0f 47 fc          	cmova  %r12,%rdi
  402f4b:	41 83 c6 04          	add    $0x4,%r14d
  402f4f:	e8 4c e8 ff ff       	callq  4017a0 <_Znam@plt>
  402f54:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  402f59:	8d 43 06             	lea    0x6(%rbx),%eax
  402f5c:	41 0f af c6          	imul   %r14d,%eax
  402f60:	48 98                	cltq   
  402f62:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
  402f69:	00 
  402f6a:	4c 39 e8             	cmp    %r13,%rax
  402f6d:	49 0f 47 fc          	cmova  %r12,%rdi
  402f71:	e8 2a e8 ff ff       	callq  4017a0 <_Znam@plt>
  402f76:	44 8b 8c 24 ac 00 00 	mov    0xac(%rsp),%r9d
  402f7d:	00 
  402f7e:	41 8d 77 fe          	lea    -0x2(%r15),%esi
  402f82:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
  402f89:	00 
  402f8a:	44 89 f8             	mov    %r15d,%eax
  402f8d:	c7 44 24 6c 00 00 00 	movl   $0x0,0x6c(%rsp)
  402f94:	00 
  402f95:	89 f3                	mov    %esi,%ebx
  402f97:	89 74 24 7c          	mov    %esi,0x7c(%rsp)
  402f9b:	8d 0c 00             	lea    (%rax,%rax,1),%ecx
  402f9e:	41 8d 71 fe          	lea    -0x2(%r9),%esi
  402fa2:	8d 14 01             	lea    (%rcx,%rax,1),%edx
  402fa5:	0f af f3             	imul   %ebx,%esi
  402fa8:	89 c3                	mov    %eax,%ebx
  402faa:	c1 e0 02             	shl    $0x2,%eax
  402fad:	44 8d 04 18          	lea    (%rax,%rbx,1),%r8d
  402fb1:	8d 3c 12             	lea    (%rdx,%rdx,1),%edi
  402fb4:	41 89 f7             	mov    %esi,%r15d
  402fb7:	89 74 24 44          	mov    %esi,0x44(%rsp)
  402fbb:	48 63 f3             	movslq %ebx,%rsi
  402fbe:	4c 8d 2c f5 00 00 00 	lea    0x0(,%rsi,8),%r13
  402fc5:	00 
  402fc6:	49 8d 75 f0          	lea    -0x10(%r13),%rsi
  402fca:	48 89 b4 24 b0 00 00 	mov    %rsi,0xb0(%rsp)
  402fd1:	00 
  402fd2:	8d 71 fc             	lea    -0x4(%rcx),%esi
  402fd5:	48 63 c9             	movslq %ecx,%rcx
  402fd8:	4c 8d 14 cd 00 00 00 	lea    0x0(,%rcx,8),%r10
  402fdf:	00 
  402fe0:	48 63 f6             	movslq %esi,%rsi
  402fe3:	48 c1 e6 03          	shl    $0x3,%rsi
  402fe7:	48 89 b4 24 c0 00 00 	mov    %rsi,0xc0(%rsp)
  402fee:	00 
  402fef:	8d 72 fa             	lea    -0x6(%rdx),%esi
  402ff2:	48 63 d2             	movslq %edx,%rdx
  402ff5:	48 63 f6             	movslq %esi,%rsi
  402ff8:	4c 8d 34 f5 00 00 00 	lea    0x0(,%rsi,8),%r14
  402fff:	00 
  403000:	8d 70 f8             	lea    -0x8(%rax),%esi
  403003:	48 98                	cltq   
  403005:	48 63 f6             	movslq %esi,%rsi
  403008:	4c 89 74 24 38       	mov    %r14,0x38(%rsp)
  40300d:	4c 8d 34 f5 00 00 00 	lea    0x0(,%rsi,8),%r14
  403014:	00 
  403015:	41 8d 70 f6          	lea    -0xa(%r8),%esi
  403019:	4d 63 c0             	movslq %r8d,%r8
  40301c:	4e 8d 24 c5 00 00 00 	lea    0x0(,%r8,8),%r12
  403023:	00 
  403024:	48 63 f6             	movslq %esi,%rsi
  403027:	4c 89 74 24 30       	mov    %r14,0x30(%rsp)
  40302c:	4c 8d 34 f5 00 00 00 	lea    0x0(,%rsi,8),%r14
  403033:	00 
  403034:	44 89 fe             	mov    %r15d,%esi
  403037:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
  40303c:	4c 8d 3c f5 00 00 00 	lea    0x0(,%rsi,8),%r15
  403043:	00 
  403044:	8d 77 f4             	lea    -0xc(%rdi),%esi
  403047:	48 63 ff             	movslq %edi,%rdi
  40304a:	4c 8d 1c fd 00 00 00 	lea    0x0(,%rdi,8),%r11
  403051:	00 
  403052:	4c 89 74 24 28       	mov    %r14,0x28(%rsp)
  403057:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
  40305e:	00 
  40305f:	48 63 f6             	movslq %esi,%rsi
  403062:	4c 89 7c 24 48       	mov    %r15,0x48(%rsp)
  403067:	4c 8d 34 d5 00 00 00 	lea    0x0(,%rdx,8),%r14
  40306e:	00 
  40306f:	4c 8d 3c f5 00 00 00 	lea    0x0(,%rsi,8),%r15
  403076:	00 
  403077:	89 de                	mov    %ebx,%esi
  403079:	4c 89 5c 24 18       	mov    %r11,0x18(%rsp)
  40307e:	83 ee 01             	sub    $0x1,%esi
  403081:	4c 89 bc 24 80 00 00 	mov    %r15,0x80(%rsp)
  403088:	00 
  403089:	4c 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%r15
  403090:	00 
  403091:	89 d8                	mov    %ebx,%eax
  403093:	c1 e0 03             	shl    $0x3,%eax
  403096:	89 74 24 68          	mov    %esi,0x68(%rsp)
  40309a:	c1 ee 02             	shr    $0x2,%esi
  40309d:	29 d8                	sub    %ebx,%eax
  40309f:	48 c1 e6 05          	shl    $0x5,%rsi
  4030a3:	48 98                	cltq   
  4030a5:	48 83 c6 20          	add    $0x20,%rsi
  4030a9:	48 8d 1c c5 00 00 00 	lea    0x0(,%rax,8),%rbx
  4030b0:	00 
  4030b1:	8b 44 24 68          	mov    0x68(%rsp),%eax
  4030b5:	48 89 74 24 70       	mov    %rsi,0x70(%rsp)
  4030ba:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  4030bf:	48 8d 54 40 03       	lea    0x3(%rax,%rax,2),%rdx
  4030c4:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  4030cb:	00 
  4030cc:	48 29 84 24 b0 00 00 	sub    %rax,0xb0(%rsp)
  4030d3:	00 
  4030d4:	48 89 14 24          	mov    %rdx,(%rsp)
  4030d8:	48 01 c7             	add    %rax,%rdi
  4030db:	41 8d 41 ff          	lea    -0x1(%r9),%eax
  4030df:	4c 8b 8c 24 c8 00 00 	mov    0xc8(%rsp),%r9
  4030e6:	00 
  4030e7:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
  4030ec:	89 44 24 78          	mov    %eax,0x78(%rsp)
  4030f0:	44 8b a4 24 ac 00 00 	mov    0xac(%rsp),%r12d
  4030f7:	00 
  4030f8:	45 85 e4             	test   %r12d,%r12d
  4030fb:	7e 68                	jle    403165 <_Z13kernel_driverRN2cv3MatES1_+0x2b5>
  4030fd:	4c 63 44 24 6c       	movslq 0x6c(%rsp),%r8
  403102:	48 8b 74 24 60       	mov    0x60(%rsp),%rsi
  403107:	31 ff                	xor    %edi,%edi
  403109:	44 8b 9c 24 a8 00 00 	mov    0xa8(%rsp),%r11d
  403110:	00 
  403111:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
  403116:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40311d:	00 00 00 
  403120:	45 85 db             	test   %r11d,%r11d
  403123:	7e 34                	jle    403159 <_Z13kernel_driverRN2cv3MatES1_+0x2a9>
  403125:	48 8b 43 48          	mov    0x48(%rbx),%rax
  403129:	48 89 fa             	mov    %rdi,%rdx
  40312c:	48 0f af 10          	imul   (%rax),%rdx
  403130:	31 c0                	xor    %eax,%eax
  403132:	48 03 53 10          	add    0x10(%rbx),%rdx
  403136:	4c 01 c2             	add    %r8,%rdx
  403139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403140:	0f b6 0a             	movzbl (%rdx),%ecx
  403143:	48 83 c2 03          	add    $0x3,%rdx
  403147:	c5 fb 2a c1          	vcvtsi2sd %ecx,%xmm0,%xmm0
  40314b:	c5 fb 11 04 c6       	vmovsd %xmm0,(%rsi,%rax,8)
  403150:	48 83 c0 01          	add    $0x1,%rax
  403154:	41 39 c3             	cmp    %eax,%r11d
  403157:	7f e7                	jg     403140 <_Z13kernel_driverRN2cv3MatES1_+0x290>
  403159:	48 83 c7 01          	add    $0x1,%rdi
  40315d:	4c 01 ee             	add    %r13,%rsi
  403160:	41 39 fc             	cmp    %edi,%r12d
  403163:	7f bb                	jg     403120 <_Z13kernel_driverRN2cv3MatES1_+0x270>
  403165:	8b 44 24 44          	mov    0x44(%rsp),%eax
  403169:	85 c0                	test   %eax,%eax
  40316b:	7e 37                	jle    4031a4 <_Z13kernel_driverRN2cv3MatES1_+0x2f4>
  40316d:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
  403172:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
  403179:	00 
  40317a:	31 f6                	xor    %esi,%esi
  40317c:	4c 89 8c 24 b8 00 00 	mov    %r9,0xb8(%rsp)
  403183:	00 
  403184:	4c 89 94 24 c8 00 00 	mov    %r10,0xc8(%rsp)
  40318b:	00 
  40318c:	c5 f8 77             	vzeroupper 
  40318f:	e8 bc e5 ff ff       	callq  401750 <memset@plt>
  403194:	4c 8b 94 24 c8 00 00 	mov    0xc8(%rsp),%r10
  40319b:	00 
  40319c:	4c 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%r9
  4031a3:	00 
  4031a4:	0f 31                	rdtsc  
  4031a6:	48 c1 e2 20          	shl    $0x20,%rdx
  4031aa:	89 c0                	mov    %eax,%eax
  4031ac:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  4031b1:	48 09 c2             	or     %rax,%rdx
  4031b4:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
  4031b9:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  4031be:	48 89 15 9b 22 20 00 	mov    %rdx,0x20229b(%rip)        # 605460 <t0>
  4031c5:	c7 84 24 a0 00 00 00 	movl   $0x0,0xa0(%rsp)
  4031cc:	00 00 00 00 
  4031d0:	48 89 84 24 90 00 00 	mov    %rax,0x90(%rsp)
  4031d7:	00 
  4031d8:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
  4031dd:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
  4031e4:	00 
  4031e5:	48 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%rax
  4031ec:	00 
  4031ed:	48 29 c6             	sub    %rax,%rsi
  4031f0:	49 29 c0             	sub    %rax,%r8
  4031f3:	48 89 b4 24 b8 00 00 	mov    %rsi,0xb8(%rsp)
  4031fa:	00 
  4031fb:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  403200:	48 29 c6             	sub    %rax,%rsi
  403203:	8b 84 24 ac 00 00 00 	mov    0xac(%rsp),%eax
  40320a:	85 c0                	test   %eax,%eax
  40320c:	0f 88 a8 01 00 00    	js     4033ba <_Z13kernel_driverRN2cv3MatES1_+0x50a>
  403212:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  403217:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
  40321c:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
  403221:	4c 89 4c 24 50       	mov    %r9,0x50(%rsp)
  403226:	49 89 f1             	mov    %rsi,%r9
  403229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403230:	8b 84 24 a8 00 00 00 	mov    0xa8(%rsp),%eax
  403237:	85 c0                	test   %eax,%eax
  403239:	0f 8e 42 01 00 00    	jle    403381 <_Z13kernel_driverRN2cv3MatES1_+0x4d1>
  40323f:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
  403246:	00 
  403247:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
  40324e:	00 
  40324f:	48 89 c8             	mov    %rcx,%rax
  403252:	48 03 44 24 70       	add    0x70(%rsp),%rax
  403257:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
  40325e:	00 
  40325f:	90                   	nop
  403260:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  403264:	48 89 cf             	mov    %rcx,%rdi
  403267:	48 2b bc 24 c0 00 00 	sub    0xc0(%rsp),%rdi
  40326e:	00 
  40326f:	c5 fb 10 15 11 08 00 	vmovsd 0x811(%rip),%xmm2        # 403a88 <__dso_handle+0x160>
  403276:	00 
  403277:	48 89 f0             	mov    %rsi,%rax
  40327a:	ba 03 00 00 00       	mov    $0x3,%edx
  40327f:	c5 fb 11 94 24 d0 00 	vmovsd %xmm2,0xd0(%rsp)
  403286:	00 00 
  403288:	c4 e2 7d 19 c2       	vbroadcastsd %xmm2,%ymm0
  40328d:	c5 fd 28 d9          	vmovapd %ymm1,%ymm3
  403291:	c5 fd 28 d1          	vmovapd %ymm1,%ymm2
  403295:	c5 fd 28 e1          	vmovapd %ymm1,%ymm4
  403299:	c5 fd 28 e9          	vmovapd %ymm1,%ymm5
  40329d:	c5 fd 28 f1          	vmovapd %ymm1,%ymm6
  4032a1:	c5 7d 10 30          	vmovupd (%rax),%ymm14
  4032a5:	c4 21 7d 10 24 28    	vmovupd (%rax,%r13,1),%ymm12
  4032ab:	c4 21 7d 10 14 10    	vmovupd (%rax,%r10,1),%ymm10
  4032b1:	c4 21 7d 10 0c 30    	vmovupd (%rax,%r14,1),%ymm9
  4032b7:	c4 21 7d 10 04 38    	vmovupd (%rax,%r15,1),%ymm8
  4032bd:	c4 a1 7d 10 3c 20    	vmovupd (%rax,%r12,1),%ymm7
  4032c3:	c5 7d 10 1c 18       	vmovupd (%rax,%rbx,1),%ymm11
  4032c8:	c4 21 7d 10 2c 18    	vmovupd (%rax,%r11,1),%ymm13
  4032ce:	c4 c2 fd b8 f6       	vfmadd231pd %ymm14,%ymm0,%ymm6
  4032d3:	c4 c2 fd b8 ec       	vfmadd231pd %ymm12,%ymm0,%ymm5
  4032d8:	c4 c2 fd b8 e2       	vfmadd231pd %ymm10,%ymm0,%ymm4
  4032dd:	c4 c2 fd b8 d9       	vfmadd231pd %ymm9,%ymm0,%ymm3
  4032e2:	c4 c2 fd b8 d0       	vfmadd231pd %ymm8,%ymm0,%ymm2
  4032e7:	c4 e2 fd b8 cf       	vfmadd231pd %ymm7,%ymm0,%ymm1
  4032ec:	c4 c2 fd b8 f4       	vfmadd231pd %ymm12,%ymm0,%ymm6
  4032f1:	c4 c2 fd b8 ea       	vfmadd231pd %ymm10,%ymm0,%ymm5
  4032f6:	c4 c2 fd b8 e1       	vfmadd231pd %ymm9,%ymm0,%ymm4
  4032fb:	c4 c2 fd b8 d8       	vfmadd231pd %ymm8,%ymm0,%ymm3
  403300:	c4 e2 fd b8 d7       	vfmadd231pd %ymm7,%ymm0,%ymm2
  403305:	c4 c2 fd b8 cb       	vfmadd231pd %ymm11,%ymm0,%ymm1
  40330a:	c4 c2 fd b8 f2       	vfmadd231pd %ymm10,%ymm0,%ymm6
  40330f:	c4 c2 fd b8 e9       	vfmadd231pd %ymm9,%ymm0,%ymm5
  403314:	c4 c2 fd b8 e0       	vfmadd231pd %ymm8,%ymm0,%ymm4
  403319:	c4 e2 fd b8 df       	vfmadd231pd %ymm7,%ymm0,%ymm3
  40331e:	c4 c2 fd b8 d3       	vfmadd231pd %ymm11,%ymm0,%ymm2
  403323:	c4 c2 fd b8 cd       	vfmadd231pd %ymm13,%ymm0,%ymm1
  403328:	48 83 c0 08          	add    $0x8,%rax
  40332c:	83 ea 01             	sub    $0x1,%edx
  40332f:	0f 85 6c ff ff ff    	jne    4032a1 <_Z13kernel_driverRN2cv3MatES1_+0x3f1>
  403335:	c5 fd 11 37          	vmovupd %ymm6,(%rdi)
  403339:	48 8b 84 24 b0 00 00 	mov    0xb0(%rsp),%rax
  403340:	00 
  403341:	48 83 c6 20          	add    $0x20,%rsi
  403345:	c5 fd 11 2c 08       	vmovupd %ymm5,(%rax,%rcx,1)
  40334a:	c5 fd 11 21          	vmovupd %ymm4,(%rcx)
  40334e:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
  403355:	00 
  403356:	c5 fd 11 1c 08       	vmovupd %ymm3,(%rax,%rcx,1)
  40335b:	c4 c1 7d 11 14 09    	vmovupd %ymm2,(%r9,%rcx,1)
  403361:	c4 c1 7d 11 0c 08    	vmovupd %ymm1,(%r8,%rcx,1)
  403367:	48 83 c1 20          	add    $0x20,%rcx
  40336b:	48 83 05 8d 20 20 00 	addq   $0x1,0x20208d(%rip)        # 605400 <kernel_invoke>
  403372:	01 
  403373:	48 3b 8c 24 c8 00 00 	cmp    0xc8(%rsp),%rcx
  40337a:	00 
  40337b:	0f 85 df fe ff ff    	jne    403260 <_Z13kernel_driverRN2cv3MatES1_+0x3b0>
  403381:	83 84 24 a0 00 00 00 	addl   $0x6,0xa0(%rsp)
  403388:	06 
  403389:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  403390:	00 
  403391:	48 01 9c 24 98 00 00 	add    %rbx,0x98(%rsp)
  403398:	00 
  403399:	48 01 84 24 90 00 00 	add    %rax,0x90(%rsp)
  4033a0:	00 
  4033a1:	8b 84 24 a0 00 00 00 	mov    0xa0(%rsp),%eax
  4033a8:	39 84 24 ac 00 00 00 	cmp    %eax,0xac(%rsp)
  4033af:	0f 8d 7b fe ff ff    	jge    403230 <_Z13kernel_driverRN2cv3MatES1_+0x380>
  4033b5:	4c 8b 4c 24 50       	mov    0x50(%rsp),%r9
  4033ba:	0f 31                	rdtsc  
  4033bc:	48 c1 e2 20          	shl    $0x20,%rdx
  4033c0:	89 c0                	mov    %eax,%eax
  4033c2:	48 09 c2             	or     %rax,%rdx
  4033c5:	8b 84 24 ac 00 00 00 	mov    0xac(%rsp),%eax
  4033cc:	48 89 15 6d 20 20 00 	mov    %rdx,0x20206d(%rip)        # 605440 <t1>
  4033d3:	85 c0                	test   %eax,%eax
  4033d5:	0f 8e 38 01 00 00    	jle    403513 <_Z13kernel_driverRN2cv3MatES1_+0x663>
  4033db:	48 63 74 24 6c       	movslq 0x6c(%rsp),%rsi
  4033e0:	4c 89 b4 24 b8 00 00 	mov    %r14,0xb8(%rsp)
  4033e7:	00 
  4033e8:	31 c0                	xor    %eax,%eax
  4033ea:	8b bc 24 a8 00 00 00 	mov    0xa8(%rsp),%edi
  4033f1:	4c 8b 44 24 58       	mov    0x58(%rsp),%r8
  4033f6:	31 c9                	xor    %ecx,%ecx
  4033f8:	44 8b 74 24 68       	mov    0x68(%rsp),%r14d
  4033fd:	4c 89 bc 24 c8 00 00 	mov    %r15,0xc8(%rsp)
  403404:	00 
  403405:	41 89 c7             	mov    %eax,%r15d
  403408:	4c 89 94 24 a0 00 00 	mov    %r10,0xa0(%rsp)
  40340f:	00 
  403410:	4c 89 ac 24 98 00 00 	mov    %r13,0x98(%rsp)
  403417:	00 
  403418:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40341f:	00 
  403420:	85 ff                	test   %edi,%edi
  403422:	0f 8e ae 00 00 00    	jle    4034d6 <_Z13kernel_driverRN2cv3MatES1_+0x626>
  403428:	85 c9                	test   %ecx,%ecx
  40342a:	41 0f 94 c4          	sete   %r12b
  40342e:	39 4c 24 78          	cmp    %ecx,0x78(%rsp)
  403432:	0f 84 d9 02 00 00    	je     403711 <_Z13kernel_driverRN2cv3MatES1_+0x861>
  403438:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
  40343f:	00 
  403440:	49 63 c7             	movslq %r15d,%rax
  403443:	4c 8d 2c c2          	lea    (%rdx,%rax,8),%r13
  403447:	31 d2                	xor    %edx,%edx
  403449:	31 c0                	xor    %eax,%eax
  40344b:	eb 48                	jmp    403495 <_Z13kernel_driverRN2cv3MatES1_+0x5e5>
  40344d:	0f 1f 00             	nopl   (%rax)
  403450:	4d 8b 50 48          	mov    0x48(%r8),%r10
  403454:	48 89 cb             	mov    %rcx,%rbx
  403457:	49 89 d3             	mov    %rdx,%r11
  40345a:	4d 03 58 10          	add    0x10(%r8),%r11
  40345e:	48 83 c0 01          	add    $0x1,%rax
  403462:	49 0f af 1a          	imul   (%r10),%rbx
  403466:	49 89 da             	mov    %rbx,%r10
  403469:	48 89 cb             	mov    %rcx,%rbx
  40346c:	4d 01 da             	add    %r11,%r10
  40346f:	45 0f b6 1c 32       	movzbl (%r10,%rsi,1),%r11d
  403474:	4d 8b 51 48          	mov    0x48(%r9),%r10
  403478:	49 0f af 1a          	imul   (%r10),%rbx
  40347c:	49 89 da             	mov    %rbx,%r10
  40347f:	48 89 d3             	mov    %rdx,%rbx
  403482:	49 03 59 10          	add    0x10(%r9),%rbx
  403486:	48 83 c2 03          	add    $0x3,%rdx
  40348a:	49 01 da             	add    %rbx,%r10
  40348d:	39 c7                	cmp    %eax,%edi
  40348f:	45 88 1c 32          	mov    %r11b,(%r10,%rsi,1)
  403493:	7e 41                	jle    4034d6 <_Z13kernel_driverRN2cv3MatES1_+0x626>
  403495:	85 c0                	test   %eax,%eax
  403497:	74 b7                	je     403450 <_Z13kernel_driverRN2cv3MatES1_+0x5a0>
  403499:	45 84 e4             	test   %r12b,%r12b
  40349c:	75 b2                	jne    403450 <_Z13kernel_driverRN2cv3MatES1_+0x5a0>
  40349e:	41 39 c6             	cmp    %eax,%r14d
  4034a1:	74 ad                	je     403450 <_Z13kernel_driverRN2cv3MatES1_+0x5a0>
  4034a3:	4d 8b 51 48          	mov    0x48(%r9),%r10
  4034a7:	48 89 cb             	mov    %rcx,%rbx
  4034aa:	49 89 d3             	mov    %rdx,%r11
  4034ad:	4d 03 59 10          	add    0x10(%r9),%r11
  4034b1:	c4 c1 7b 10 44 c5 00 	vmovsd 0x0(%r13,%rax,8),%xmm0
  4034b8:	48 83 c0 01          	add    $0x1,%rax
  4034bc:	48 83 c2 03          	add    $0x3,%rdx
  4034c0:	49 0f af 1a          	imul   (%r10),%rbx
  4034c4:	49 89 da             	mov    %rbx,%r10
  4034c7:	4d 01 da             	add    %r11,%r10
  4034ca:	c5 7b 2c d8          	vcvttsd2si %xmm0,%r11d
  4034ce:	39 c7                	cmp    %eax,%edi
  4034d0:	45 88 1c 32          	mov    %r11b,(%r10,%rsi,1)
  4034d4:	7f bf                	jg     403495 <_Z13kernel_driverRN2cv3MatES1_+0x5e5>
  4034d6:	48 83 c1 01          	add    $0x1,%rcx
  4034da:	44 03 7c 24 7c       	add    0x7c(%rsp),%r15d
  4034df:	39 8c 24 ac 00 00 00 	cmp    %ecx,0xac(%rsp)
  4034e6:	0f 8f 34 ff ff ff    	jg     403420 <_Z13kernel_driverRN2cv3MatES1_+0x570>
  4034ec:	4c 8b bc 24 c8 00 00 	mov    0xc8(%rsp),%r15
  4034f3:	00 
  4034f4:	4c 8b b4 24 b8 00 00 	mov    0xb8(%rsp),%r14
  4034fb:	00 
  4034fc:	4c 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%r10
  403503:	00 
  403504:	4c 8b ac 24 98 00 00 	mov    0x98(%rsp),%r13
  40350b:	00 
  40350c:	48 8b 15 2d 1f 20 00 	mov    0x201f2d(%rip),%rdx        # 605440 <t1>
  403513:	48 03 15 06 1f 20 00 	add    0x201f06(%rip),%rdx        # 605420 <sum_kernel>
  40351a:	83 44 24 6c 01       	addl   $0x1,0x6c(%rsp)
  40351f:	48 89 d1             	mov    %rdx,%rcx
  403522:	48 2b 0d 37 1f 20 00 	sub    0x201f37(%rip),%rcx        # 605460 <t0>
  403529:	83 7c 24 6c 03       	cmpl   $0x3,0x6c(%rsp)
  40352e:	48 89 0d eb 1e 20 00 	mov    %rcx,0x201eeb(%rip)        # 605420 <sum_kernel>
  403535:	0f 85 b5 fb ff ff    	jne    4030f0 <_Z13kernel_driverRN2cv3MatES1_+0x240>
  40353b:	ba 08 00 00 00       	mov    $0x8,%edx
  403540:	be 50 3a 40 00       	mov    $0x403a50,%esi
  403545:	bf a0 51 60 00       	mov    $0x6051a0,%edi
  40354a:	48 89 8c 24 c8 00 00 	mov    %rcx,0xc8(%rsp)
  403551:	00 
  403552:	c5 f8 77             	vzeroupper 
  403555:	e8 d6 e3 ff ff       	callq  401930 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  40355a:	48 8b 8c 24 c8 00 00 	mov    0xc8(%rsp),%rcx
  403561:	00 
  403562:	bf a0 51 60 00       	mov    $0x6051a0,%edi
  403567:	48 89 ce             	mov    %rcx,%rsi
  40356a:	e8 c1 e1 ff ff       	callq  401730 <_ZNSo9_M_insertIyEERSoT_@plt>
  40356f:	49 89 c4             	mov    %rax,%r12
  403572:	48 8b 00             	mov    (%rax),%rax
  403575:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  403579:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
  403580:	00 
  403581:	48 85 db             	test   %rbx,%rbx
  403584:	0f 84 82 01 00 00    	je     40370c <_Z13kernel_driverRN2cv3MatES1_+0x85c>
  40358a:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  40358e:	0f 84 1a 01 00 00    	je     4036ae <_Z13kernel_driverRN2cv3MatES1_+0x7fe>
  403594:	0f b6 43 43          	movzbl 0x43(%rbx),%eax
  403598:	0f be f0             	movsbl %al,%esi
  40359b:	4c 89 e7             	mov    %r12,%rdi
  40359e:	e8 4d e2 ff ff       	callq  4017f0 <_ZNSo3putEc@plt>
  4035a3:	48 89 c7             	mov    %rax,%rdi
  4035a6:	e8 15 e2 ff ff       	callq  4017c0 <_ZNSo5flushEv@plt>
  4035ab:	48 8b 05 6e 1e 20 00 	mov    0x201e6e(%rip),%rax        # 605420 <sum_kernel>
  4035b2:	48 85 c0             	test   %rax,%rax
  4035b5:	0f 88 37 01 00 00    	js     4036f2 <_Z13kernel_driverRN2cv3MatES1_+0x842>
  4035bb:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  4035c0:	c5 fb 59 05 c8 04 00 	vmulsd 0x4c8(%rip),%xmm0,%xmm0        # 403a90 <__dso_handle+0x168>
  4035c7:	00 
  4035c8:	bf 59 3a 40 00       	mov    $0x403a59,%edi
  4035cd:	b8 01 00 00 00       	mov    $0x1,%eax
  4035d2:	c5 fb 5e 0d be 04 00 	vdivsd 0x4be(%rip),%xmm0,%xmm1        # 403a98 <__dso_handle+0x170>
  4035d9:	00 
  4035da:	c5 f9 28 c1          	vmovapd %xmm1,%xmm0
  4035de:	c5 fb 11 8c 24 c8 00 	vmovsd %xmm1,0xc8(%rsp)
  4035e5:	00 00 
  4035e7:	e8 14 e1 ff ff       	callq  401700 <printf@plt>
  4035ec:	48 8b 05 0d 1e 20 00 	mov    0x201e0d(%rip),%rax        # 605400 <kernel_invoke>
  4035f3:	c5 fb 10 8c 24 c8 00 	vmovsd 0xc8(%rsp),%xmm1
  4035fa:	00 00 
  4035fc:	48 8d 04 c0          	lea    (%rax,%rax,8),%rax
  403600:	48 c1 e0 03          	shl    $0x3,%rax
  403604:	48 85 c0             	test   %rax,%rax
  403607:	0f 88 d4 00 00 00    	js     4036e1 <_Z13kernel_driverRN2cv3MatES1_+0x831>
  40360d:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  403612:	c5 fb 5e c1          	vdivsd %xmm1,%xmm0,%xmm0
  403616:	ba 0c 00 00 00       	mov    $0xc,%edx
  40361b:	be 76 3a 40 00       	mov    $0x403a76,%esi
  403620:	bf a0 51 60 00       	mov    $0x6051a0,%edi
  403625:	c5 fb 11 84 24 c8 00 	vmovsd %xmm0,0xc8(%rsp)
  40362c:	00 00 
  40362e:	e8 fd e2 ff ff       	callq  401930 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
  403633:	c5 fb 10 84 24 c8 00 	vmovsd 0xc8(%rsp),%xmm0
  40363a:	00 00 
  40363c:	bf a0 51 60 00       	mov    $0x6051a0,%edi
  403641:	e8 6a e2 ff ff       	callq  4018b0 <_ZNSo9_M_insertIdEERSoT_@plt>
  403646:	49 89 c4             	mov    %rax,%r12
  403649:	48 8b 00             	mov    (%rax),%rax
  40364c:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  403650:	49 8b 9c 04 f0 00 00 	mov    0xf0(%r12,%rax,1),%rbx
  403657:	00 
  403658:	48 85 db             	test   %rbx,%rbx
  40365b:	0f 84 ab 00 00 00    	je     40370c <_Z13kernel_driverRN2cv3MatES1_+0x85c>
  403661:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
  403665:	74 62                	je     4036c9 <_Z13kernel_driverRN2cv3MatES1_+0x819>
  403667:	0f b6 43 43          	movzbl 0x43(%rbx),%eax
  40366b:	0f be f0             	movsbl %al,%esi
  40366e:	4c 89 e7             	mov    %r12,%rdi
  403671:	e8 7a e1 ff ff       	callq  4017f0 <_ZNSo3putEc@plt>
  403676:	48 89 c7             	mov    %rax,%rdi
  403679:	e8 42 e1 ff ff       	callq  4017c0 <_ZNSo5flushEv@plt>
  40367e:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
  403683:	48 85 ff             	test   %rdi,%rdi
  403686:	74 05                	je     40368d <_Z13kernel_driverRN2cv3MatES1_+0x7dd>
  403688:	e8 f3 e0 ff ff       	callq  401780 <_ZdaPv@plt>
  40368d:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
  403694:	00 
  403695:	48 85 ff             	test   %rdi,%rdi
  403698:	74 05                	je     40369f <_Z13kernel_driverRN2cv3MatES1_+0x7ef>
  40369a:	e8 e1 e0 ff ff       	callq  401780 <_ZdaPv@plt>
  40369f:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  4036a3:	5b                   	pop    %rbx
  4036a4:	41 5c                	pop    %r12
  4036a6:	41 5d                	pop    %r13
  4036a8:	41 5e                	pop    %r14
  4036aa:	41 5f                	pop    %r15
  4036ac:	5d                   	pop    %rbp
  4036ad:	c3                   	retq   
  4036ae:	48 89 df             	mov    %rbx,%rdi
  4036b1:	e8 fa e0 ff ff       	callq  4017b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  4036b6:	48 8b 03             	mov    (%rbx),%rax
  4036b9:	be 0a 00 00 00       	mov    $0xa,%esi
  4036be:	48 89 df             	mov    %rbx,%rdi
  4036c1:	ff 50 30             	callq  *0x30(%rax)
  4036c4:	e9 cf fe ff ff       	jmpq   403598 <_Z13kernel_driverRN2cv3MatES1_+0x6e8>
  4036c9:	48 89 df             	mov    %rbx,%rdi
  4036cc:	e8 df e0 ff ff       	callq  4017b0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
  4036d1:	48 8b 03             	mov    (%rbx),%rax
  4036d4:	be 0a 00 00 00       	mov    $0xa,%esi
  4036d9:	48 89 df             	mov    %rbx,%rdi
  4036dc:	ff 50 30             	callq  *0x30(%rax)
  4036df:	eb 8a                	jmp    40366b <_Z13kernel_driverRN2cv3MatES1_+0x7bb>
  4036e1:	48 d1 e8             	shr    %rax
  4036e4:	c4 e1 fb 2a c0       	vcvtsi2sd %rax,%xmm0,%xmm0
  4036e9:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
  4036ed:	e9 20 ff ff ff       	jmpq   403612 <_Z13kernel_driverRN2cv3MatES1_+0x762>
  4036f2:	48 89 c2             	mov    %rax,%rdx
  4036f5:	83 e0 01             	and    $0x1,%eax
  4036f8:	48 d1 ea             	shr    %rdx
  4036fb:	48 09 c2             	or     %rax,%rdx
  4036fe:	c4 e1 fb 2a c2       	vcvtsi2sd %rdx,%xmm0,%xmm0
  403703:	c5 fb 58 c0          	vaddsd %xmm0,%xmm0,%xmm0
  403707:	e9 b4 fe ff ff       	jmpq   4035c0 <_Z13kernel_driverRN2cv3MatES1_+0x710>
  40370c:	e8 5f e0 ff ff       	callq  401770 <_ZSt16__throw_bad_castv@plt>
  403711:	45 31 db             	xor    %r11d,%r11d
  403714:	49 8b 40 48          	mov    0x48(%r8),%rax
  403718:	48 89 ca             	mov    %rcx,%rdx
  40371b:	48 89 cb             	mov    %rcx,%rbx
  40371e:	4d 89 da             	mov    %r11,%r10
  403721:	4d 03 51 10          	add    0x10(%r9),%r10
  403725:	48 0f af 10          	imul   (%rax),%rdx
  403729:	48 89 d0             	mov    %rdx,%rax
  40372c:	4c 89 da             	mov    %r11,%rdx
  40372f:	49 03 50 10          	add    0x10(%r8),%rdx
  403733:	49 83 c3 03          	add    $0x3,%r11
  403737:	48 01 d0             	add    %rdx,%rax
  40373a:	0f b6 14 30          	movzbl (%rax,%rsi,1),%edx
  40373e:	49 8b 41 48          	mov    0x48(%r9),%rax
  403742:	48 0f af 18          	imul   (%rax),%rbx
  403746:	48 89 d8             	mov    %rbx,%rax
  403749:	4c 01 d0             	add    %r10,%rax
  40374c:	4c 3b 1c 24          	cmp    (%rsp),%r11
  403750:	88 14 30             	mov    %dl,(%rax,%rsi,1)
  403753:	75 bf                	jne    403714 <_Z13kernel_driverRN2cv3MatES1_+0x864>
  403755:	e9 7c fd ff ff       	jmpq   4034d6 <_Z13kernel_driverRN2cv3MatES1_+0x626>
  40375a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000403760 <_Z6kernelPdS_ii>:
  403760:	55                   	push   %rbp
  403761:	8d 14 8d 00 00 00 00 	lea    0x0(,%rcx,4),%edx
  403768:	44 8d 0c 09          	lea    (%rcx,%rcx,1),%r9d
  40376c:	48 63 c1             	movslq %ecx,%rax
  40376f:	48 89 e5             	mov    %rsp,%rbp
  403772:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
  403776:	44 8d 1c 0a          	lea    (%rdx,%rcx,1),%r11d
  40377a:	48 83 c4 10          	add    $0x10,%rsp
  40377e:	4d 63 d1             	movslq %r9d,%r10
  403781:	41 01 c9             	add    %ecx,%r9d
  403784:	4c 63 c2             	movslq %edx,%r8
  403787:	4d 63 c9             	movslq %r9d,%r9
  40378a:	4d 63 db             	movslq %r11d,%r11
  40378d:	c5 fb 10 0d f3 02 00 	vmovsd 0x2f3(%rip),%xmm1        # 403a88 <__dso_handle+0x160>
  403794:	00 
  403795:	48 c1 e0 03          	shl    $0x3,%rax
  403799:	49 c1 e2 03          	shl    $0x3,%r10
  40379d:	49 c1 e1 03          	shl    $0x3,%r9
  4037a1:	49 c1 e0 03          	shl    $0x3,%r8
  4037a5:	c5 fb 11 4c 24 d0    	vmovsd %xmm1,-0x30(%rsp)
  4037ab:	c4 e2 7d 19 c1       	vbroadcastsd %xmm1,%ymm0
  4037b0:	49 c1 e3 03          	shl    $0x3,%r11
  4037b4:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
  4037b8:	ba 03 00 00 00       	mov    $0x3,%edx
  4037bd:	c5 fd 28 d1          	vmovapd %ymm1,%ymm2
  4037c1:	c5 fd 28 d9          	vmovapd %ymm1,%ymm3
  4037c5:	c5 fd 28 e1          	vmovapd %ymm1,%ymm4
  4037c9:	c5 fd 28 e9          	vmovapd %ymm1,%ymm5
  4037cd:	c5 fd 28 f1          	vmovapd %ymm1,%ymm6
  4037d1:	48 8d 0c 07          	lea    (%rdi,%rax,1),%rcx
  4037d5:	c5 7d 10 37          	vmovupd (%rdi),%ymm14
  4037d9:	c5 7d 10 21          	vmovupd (%rcx),%ymm12
  4037dd:	48 01 c1             	add    %rax,%rcx
  4037e0:	c5 7d 10 11          	vmovupd (%rcx),%ymm10
  4037e4:	48 01 c1             	add    %rax,%rcx
  4037e7:	c5 7d 10 09          	vmovupd (%rcx),%ymm9
  4037eb:	48 01 c1             	add    %rax,%rcx
  4037ee:	c5 7d 10 01          	vmovupd (%rcx),%ymm8
  4037f2:	48 01 c1             	add    %rax,%rcx
  4037f5:	c5 fd 10 39          	vmovupd (%rcx),%ymm7
  4037f9:	48 01 c1             	add    %rax,%rcx
  4037fc:	c5 7d 10 19          	vmovupd (%rcx),%ymm11
  403800:	c5 7d 10 2c 01       	vmovupd (%rcx,%rax,1),%ymm13
  403805:	c4 c2 fd b8 f6       	vfmadd231pd %ymm14,%ymm0,%ymm6
  40380a:	c4 c2 fd b8 ec       	vfmadd231pd %ymm12,%ymm0,%ymm5
  40380f:	c4 c2 fd b8 e2       	vfmadd231pd %ymm10,%ymm0,%ymm4
  403814:	c4 c2 fd b8 d9       	vfmadd231pd %ymm9,%ymm0,%ymm3
  403819:	c4 c2 fd b8 d0       	vfmadd231pd %ymm8,%ymm0,%ymm2
  40381e:	c4 e2 fd b8 cf       	vfmadd231pd %ymm7,%ymm0,%ymm1
  403823:	c4 c2 fd b8 f4       	vfmadd231pd %ymm12,%ymm0,%ymm6
  403828:	c4 c2 fd b8 ea       	vfmadd231pd %ymm10,%ymm0,%ymm5
  40382d:	c4 c2 fd b8 e1       	vfmadd231pd %ymm9,%ymm0,%ymm4
  403832:	c4 c2 fd b8 d8       	vfmadd231pd %ymm8,%ymm0,%ymm3
  403837:	c4 e2 fd b8 d7       	vfmadd231pd %ymm7,%ymm0,%ymm2
  40383c:	c4 c2 fd b8 cb       	vfmadd231pd %ymm11,%ymm0,%ymm1
  403841:	c4 c2 fd b8 f2       	vfmadd231pd %ymm10,%ymm0,%ymm6
  403846:	c4 c2 fd b8 e9       	vfmadd231pd %ymm9,%ymm0,%ymm5
  40384b:	c4 c2 fd b8 e0       	vfmadd231pd %ymm8,%ymm0,%ymm4
  403850:	c4 e2 fd b8 df       	vfmadd231pd %ymm7,%ymm0,%ymm3
  403855:	c4 c2 fd b8 d3       	vfmadd231pd %ymm11,%ymm0,%ymm2
  40385a:	c4 c2 fd b8 cd       	vfmadd231pd %ymm13,%ymm0,%ymm1
  40385f:	48 83 c7 08          	add    $0x8,%rdi
  403863:	83 ea 01             	sub    $0x1,%edx
  403866:	0f 85 65 ff ff ff    	jne    4037d1 <_Z6kernelPdS_ii+0x71>
  40386c:	c5 fd 11 36          	vmovupd %ymm6,(%rsi)
  403870:	c5 fd 11 6c 06 f0    	vmovupd %ymm5,-0x10(%rsi,%rax,1)
  403876:	c4 a1 7d 11 64 16 e0 	vmovupd %ymm4,-0x20(%rsi,%r10,1)
  40387d:	c4 a1 7d 11 5c 0e d0 	vmovupd %ymm3,-0x30(%rsi,%r9,1)
  403884:	c4 a1 7d 11 54 06 c0 	vmovupd %ymm2,-0x40(%rsi,%r8,1)
  40388b:	c4 a1 7d 11 4c 1e b0 	vmovupd %ymm1,-0x50(%rsi,%r11,1)
  403892:	c5 f8 77             	vzeroupper 
  403895:	c9                   	leaveq 
  403896:	c3                   	retq   
  403897:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40389e:	00 00 

00000000004038a0 <__libc_csu_init>:
  4038a0:	41 57                	push   %r15
  4038a2:	41 89 ff             	mov    %edi,%r15d
  4038a5:	41 56                	push   %r14
  4038a7:	49 89 f6             	mov    %rsi,%r14
  4038aa:	41 55                	push   %r13
  4038ac:	49 89 d5             	mov    %rdx,%r13
  4038af:	41 54                	push   %r12
  4038b1:	4c 8d 25 18 14 20 00 	lea    0x201418(%rip),%r12        # 604cd0 <__frame_dummy_init_array_entry>
  4038b8:	55                   	push   %rbp
  4038b9:	48 8d 2d 28 14 20 00 	lea    0x201428(%rip),%rbp        # 604ce8 <__init_array_end>
  4038c0:	53                   	push   %rbx
  4038c1:	4c 29 e5             	sub    %r12,%rbp
  4038c4:	31 db                	xor    %ebx,%ebx
  4038c6:	48 c1 fd 03          	sar    $0x3,%rbp
  4038ca:	48 83 ec 08          	sub    $0x8,%rsp
  4038ce:	e8 fd dd ff ff       	callq  4016d0 <_init>
  4038d3:	48 85 ed             	test   %rbp,%rbp
  4038d6:	74 1e                	je     4038f6 <__libc_csu_init+0x56>
  4038d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4038df:	00 
  4038e0:	4c 89 ea             	mov    %r13,%rdx
  4038e3:	4c 89 f6             	mov    %r14,%rsi
  4038e6:	44 89 ff             	mov    %r15d,%edi
  4038e9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4038ed:	48 83 c3 01          	add    $0x1,%rbx
  4038f1:	48 39 eb             	cmp    %rbp,%rbx
  4038f4:	75 ea                	jne    4038e0 <__libc_csu_init+0x40>
  4038f6:	48 83 c4 08          	add    $0x8,%rsp
  4038fa:	5b                   	pop    %rbx
  4038fb:	5d                   	pop    %rbp
  4038fc:	41 5c                	pop    %r12
  4038fe:	41 5d                	pop    %r13
  403900:	41 5e                	pop    %r14
  403902:	41 5f                	pop    %r15
  403904:	c3                   	retq   
  403905:	90                   	nop
  403906:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40390d:	00 00 00 

0000000000403910 <__libc_csu_fini>:
  403910:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000403914 <_fini>:
  403914:	48 83 ec 08          	sub    $0x8,%rsp
  403918:	48 83 c4 08          	add    $0x8,%rsp
  40391c:	c3                   	retq   
