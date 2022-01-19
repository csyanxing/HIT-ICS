
hello.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	53                   	push   %rbx
   6:	48 83 ec 08          	sub    $0x8,%rsp
   a:	83 ff 04             	cmp    $0x4,%edi
   d:	75 0a                	jne    19 <main+0x19>
   f:	48 89 f3             	mov    %rsi,%rbx
  12:	bd 00 00 00 00       	mov    $0x0,%ebp
  17:	eb 4e                	jmp    67 <main+0x67>
  19:	bf 00 00 00 00       	mov    $0x0,%edi
			1a: R_X86_64_32	.rodata.str1.8
  1e:	e8 00 00 00 00       	callq  23 <main+0x23>
			1f: R_X86_64_PLT32	puts-0x4
  23:	bf 01 00 00 00       	mov    $0x1,%edi
  28:	e8 00 00 00 00       	callq  2d <main+0x2d>
			29: R_X86_64_PLT32	exit-0x4
  2d:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
  31:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  35:	be 00 00 00 00       	mov    $0x0,%esi
			36: R_X86_64_32	.rodata.str1.1
  3a:	bf 01 00 00 00       	mov    $0x1,%edi
  3f:	b8 00 00 00 00       	mov    $0x0,%eax
  44:	e8 00 00 00 00       	callq  49 <main+0x49>
			45: R_X86_64_PLT32	__printf_chk-0x4
  49:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
  4d:	ba 0a 00 00 00       	mov    $0xa,%edx
  52:	be 00 00 00 00       	mov    $0x0,%esi
  57:	e8 00 00 00 00       	callq  5c <main+0x5c>
			58: R_X86_64_PLT32	strtol-0x4
  5c:	48 89 c7             	mov    %rax,%rdi
  5f:	e8 00 00 00 00       	callq  64 <main+0x64>
			60: R_X86_64_PLT32	sleep-0x4
  64:	83 c5 01             	add    $0x1,%ebp
  67:	83 fd 07             	cmp    $0x7,%ebp
  6a:	7e c1                	jle    2d <main+0x2d>
  6c:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 73 <main+0x73>
			6f: R_X86_64_PC32	stdin-0x4
  73:	e8 00 00 00 00       	callq  78 <main+0x78>
			74: R_X86_64_PLT32	getc-0x4
  78:	b8 00 00 00 00       	mov    $0x0,%eax
  7d:	48 83 c4 08          	add    $0x8,%rsp
  81:	5b                   	pop    %rbx
  82:	5d                   	pop    %rbp
  83:	c3                   	retq   
