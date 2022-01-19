
hello：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 2f 00 00 	mov    0x2fe9(%rip),%rax        # 403ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 e3 2f 00 00 	bnd jmpq *0x2fe3(%rip)        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nopl   (%rax)
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	pushq  $0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmpq 401020 <.plt>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	pushq  $0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmpq 401020 <.plt>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	pushq  $0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmpq 401020 <.plt>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	pushq  $0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmpq 401020 <.plt>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	pushq  $0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmpq 401020 <.plt>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	pushq  $0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmpq 401020 <.plt>
  40108f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401090 <puts@plt>:
  401090:	f3 0f 1e fa          	endbr64 
  401094:	f2 ff 25 7d 2f 00 00 	bnd jmpq *0x2f7d(%rip)        # 404018 <puts@GLIBC_2.2.5>
  40109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004010a0 <strtol@plt>:
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	f2 ff 25 75 2f 00 00 	bnd jmpq *0x2f75(%rip)        # 404020 <strtol@GLIBC_2.2.5>
  4010ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004010b0 <__printf_chk@plt>:
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	f2 ff 25 6d 2f 00 00 	bnd jmpq *0x2f6d(%rip)        # 404028 <__printf_chk@GLIBC_2.3.4>
  4010bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004010c0 <exit@plt>:
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	f2 ff 25 65 2f 00 00 	bnd jmpq *0x2f65(%rip)        # 404030 <exit@GLIBC_2.2.5>
  4010cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004010d0 <sleep@plt>:
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	f2 ff 25 5d 2f 00 00 	bnd jmpq *0x2f5d(%rip)        # 404038 <sleep@GLIBC_2.2.5>
  4010db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004010e0 <getc@plt>:
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	f2 ff 25 55 2f 00 00 	bnd jmpq *0x2f55(%rip)        # 404040 <getc@GLIBC_2.2.5>
  4010eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000004010f0 <_start>:
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	31 ed                	xor    %ebp,%ebp
  4010f6:	49 89 d1             	mov    %rdx,%r9
  4010f9:	5e                   	pop    %rsi
  4010fa:	48 89 e2             	mov    %rsp,%rdx
  4010fd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401101:	50                   	push   %rax
  401102:	54                   	push   %rsp
  401103:	49 c7 c0 d0 12 40 00 	mov    $0x4012d0,%r8
  40110a:	48 c7 c1 60 12 40 00 	mov    $0x401260,%rcx
  401111:	48 c7 c7 d6 11 40 00 	mov    $0x4011d6,%rdi
  401118:	ff 15 d2 2e 00 00    	callq  *0x2ed2(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  40111e:	f4                   	hlt    
  40111f:	90                   	nop

0000000000401120 <_dl_relocate_static_pie>:
  401120:	f3 0f 1e fa          	endbr64 
  401124:	c3                   	retq   
  401125:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40112c:	00 00 00 
  40112f:	90                   	nop

0000000000401130 <deregister_tm_clones>:
  401130:	b8 58 40 40 00       	mov    $0x404058,%eax
  401135:	48 3d 58 40 40 00    	cmp    $0x404058,%rax
  40113b:	74 13                	je     401150 <deregister_tm_clones+0x20>
  40113d:	b8 00 00 00 00       	mov    $0x0,%eax
  401142:	48 85 c0             	test   %rax,%rax
  401145:	74 09                	je     401150 <deregister_tm_clones+0x20>
  401147:	bf 58 40 40 00       	mov    $0x404058,%edi
  40114c:	ff e0                	jmpq   *%rax
  40114e:	66 90                	xchg   %ax,%ax
  401150:	c3                   	retq   
  401151:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401158:	00 00 00 00 
  40115c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401160 <register_tm_clones>:
  401160:	be 58 40 40 00       	mov    $0x404058,%esi
  401165:	48 81 ee 58 40 40 00 	sub    $0x404058,%rsi
  40116c:	48 89 f0             	mov    %rsi,%rax
  40116f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401173:	48 c1 f8 03          	sar    $0x3,%rax
  401177:	48 01 c6             	add    %rax,%rsi
  40117a:	48 d1 fe             	sar    %rsi
  40117d:	74 11                	je     401190 <register_tm_clones+0x30>
  40117f:	b8 00 00 00 00       	mov    $0x0,%eax
  401184:	48 85 c0             	test   %rax,%rax
  401187:	74 07                	je     401190 <register_tm_clones+0x30>
  401189:	bf 58 40 40 00       	mov    $0x404058,%edi
  40118e:	ff e0                	jmpq   *%rax
  401190:	c3                   	retq   
  401191:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401198:	00 00 00 00 
  40119c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011a0 <__do_global_dtors_aux>:
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	80 3d bd 2e 00 00 00 	cmpb   $0x0,0x2ebd(%rip)        # 404068 <completed.8060>
  4011ab:	75 13                	jne    4011c0 <__do_global_dtors_aux+0x20>
  4011ad:	55                   	push   %rbp
  4011ae:	48 89 e5             	mov    %rsp,%rbp
  4011b1:	e8 7a ff ff ff       	callq  401130 <deregister_tm_clones>
  4011b6:	c6 05 ab 2e 00 00 01 	movb   $0x1,0x2eab(%rip)        # 404068 <completed.8060>
  4011bd:	5d                   	pop    %rbp
  4011be:	c3                   	retq   
  4011bf:	90                   	nop
  4011c0:	c3                   	retq   
  4011c1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4011c8:	00 00 00 00 
  4011cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004011d0 <frame_dummy>:
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	eb 8a                	jmp    401160 <register_tm_clones>

00000000004011d6 <main>:
  4011d6:	f3 0f 1e fa          	endbr64 
  4011da:	55                   	push   %rbp
  4011db:	53                   	push   %rbx
  4011dc:	48 83 ec 08          	sub    $0x8,%rsp
  4011e0:	83 ff 04             	cmp    $0x4,%edi
  4011e3:	75 0a                	jne    4011ef <main+0x19>
  4011e5:	48 89 f3             	mov    %rsi,%rbx
  4011e8:	bd 00 00 00 00       	mov    $0x0,%ebp
  4011ed:	eb 4e                	jmp    40123d <main+0x67>
  4011ef:	bf 08 20 40 00       	mov    $0x402008,%edi
  4011f4:	e8 97 fe ff ff       	callq  401090 <puts@plt>
  4011f9:	bf 01 00 00 00       	mov    $0x1,%edi
  4011fe:	e8 bd fe ff ff       	callq  4010c0 <exit@plt>
  401203:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
  401207:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  40120b:	be 2e 20 40 00       	mov    $0x40202e,%esi
  401210:	bf 01 00 00 00       	mov    $0x1,%edi
  401215:	b8 00 00 00 00       	mov    $0x0,%eax
  40121a:	e8 91 fe ff ff       	callq  4010b0 <__printf_chk@plt>
  40121f:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
  401223:	ba 0a 00 00 00       	mov    $0xa,%edx
  401228:	be 00 00 00 00       	mov    $0x0,%esi
  40122d:	e8 6e fe ff ff       	callq  4010a0 <strtol@plt>
  401232:	48 89 c7             	mov    %rax,%rdi
  401235:	e8 96 fe ff ff       	callq  4010d0 <sleep@plt>
  40123a:	83 c5 01             	add    $0x1,%ebp
  40123d:	83 fd 07             	cmp    $0x7,%ebp
  401240:	7e c1                	jle    401203 <main+0x2d>
  401242:	48 8b 3d 17 2e 00 00 	mov    0x2e17(%rip),%rdi        # 404060 <stdin@@GLIBC_2.2.5>
  401249:	e8 92 fe ff ff       	callq  4010e0 <getc@plt>
  40124e:	b8 00 00 00 00       	mov    $0x0,%eax
  401253:	48 83 c4 08          	add    $0x8,%rsp
  401257:	5b                   	pop    %rbx
  401258:	5d                   	pop    %rbp
  401259:	c3                   	retq   
  40125a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401260 <__libc_csu_init>:
  401260:	f3 0f 1e fa          	endbr64 
  401264:	41 57                	push   %r15
  401266:	4c 8d 3d a3 2b 00 00 	lea    0x2ba3(%rip),%r15        # 403e10 <__frame_dummy_init_array_entry>
  40126d:	41 56                	push   %r14
  40126f:	49 89 d6             	mov    %rdx,%r14
  401272:	41 55                	push   %r13
  401274:	49 89 f5             	mov    %rsi,%r13
  401277:	41 54                	push   %r12
  401279:	41 89 fc             	mov    %edi,%r12d
  40127c:	55                   	push   %rbp
  40127d:	48 8d 2d 94 2b 00 00 	lea    0x2b94(%rip),%rbp        # 403e18 <__do_global_dtors_aux_fini_array_entry>
  401284:	53                   	push   %rbx
  401285:	4c 29 fd             	sub    %r15,%rbp
  401288:	48 83 ec 08          	sub    $0x8,%rsp
  40128c:	e8 6f fd ff ff       	callq  401000 <_init>
  401291:	48 c1 fd 03          	sar    $0x3,%rbp
  401295:	74 1f                	je     4012b6 <__libc_csu_init+0x56>
  401297:	31 db                	xor    %ebx,%ebx
  401299:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4012a0:	4c 89 f2             	mov    %r14,%rdx
  4012a3:	4c 89 ee             	mov    %r13,%rsi
  4012a6:	44 89 e7             	mov    %r12d,%edi
  4012a9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  4012ad:	48 83 c3 01          	add    $0x1,%rbx
  4012b1:	48 39 dd             	cmp    %rbx,%rbp
  4012b4:	75 ea                	jne    4012a0 <__libc_csu_init+0x40>
  4012b6:	48 83 c4 08          	add    $0x8,%rsp
  4012ba:	5b                   	pop    %rbx
  4012bb:	5d                   	pop    %rbp
  4012bc:	41 5c                	pop    %r12
  4012be:	41 5d                	pop    %r13
  4012c0:	41 5e                	pop    %r14
  4012c2:	41 5f                	pop    %r15
  4012c4:	c3                   	retq   
  4012c5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4012cc:	00 00 00 00 

00000000004012d0 <__libc_csu_fini>:
  4012d0:	f3 0f 1e fa          	endbr64 
  4012d4:	c3                   	retq   

Disassembly of section .fini:

00000000004012d8 <_fini>:
  4012d8:	f3 0f 1e fa          	endbr64 
  4012dc:	48 83 ec 08          	sub    $0x8,%rsp
  4012e0:	48 83 c4 08          	add    $0x8,%rsp
  4012e4:	c3                   	retq   
