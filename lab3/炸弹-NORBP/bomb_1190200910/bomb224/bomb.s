
bomb：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 3f 00 00 	mov    0x3fe9(%rip),%rax        # 404ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 3f 00 00    	pushq  0x3fe2(%rip)        # 405008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 3f 00 00    	jmpq   *0x3fe4(%rip)        # 405010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <getenv@plt>:
  401030:	ff 25 e2 3f 00 00    	jmpq   *0x3fe2(%rip)        # 405018 <getenv@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <__errno_location@plt>:
  401040:	ff 25 da 3f 00 00    	jmpq   *0x3fda(%rip)        # 405020 <__errno_location@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <strcpy@plt>:
  401050:	ff 25 d2 3f 00 00    	jmpq   *0x3fd2(%rip)        # 405028 <strcpy@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

0000000000401060 <puts@plt>:
  401060:	ff 25 ca 3f 00 00    	jmpq   *0x3fca(%rip)        # 405030 <puts@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <.plt>

0000000000401070 <write@plt>:
  401070:	ff 25 c2 3f 00 00    	jmpq   *0x3fc2(%rip)        # 405038 <write@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <.plt>

0000000000401080 <alarm@plt>:
  401080:	ff 25 ba 3f 00 00    	jmpq   *0x3fba(%rip)        # 405040 <alarm@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	pushq  $0x5
  40108b:	e9 90 ff ff ff       	jmpq   401020 <.plt>

0000000000401090 <close@plt>:
  401090:	ff 25 b2 3f 00 00    	jmpq   *0x3fb2(%rip)        # 405048 <close@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	pushq  $0x6
  40109b:	e9 80 ff ff ff       	jmpq   401020 <.plt>

00000000004010a0 <read@plt>:
  4010a0:	ff 25 aa 3f 00 00    	jmpq   *0x3faa(%rip)        # 405050 <read@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	pushq  $0x7
  4010ab:	e9 70 ff ff ff       	jmpq   401020 <.plt>

00000000004010b0 <fgets@plt>:
  4010b0:	ff 25 a2 3f 00 00    	jmpq   *0x3fa2(%rip)        # 405058 <fgets@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	pushq  $0x8
  4010bb:	e9 60 ff ff ff       	jmpq   401020 <.plt>

00000000004010c0 <signal@plt>:
  4010c0:	ff 25 9a 3f 00 00    	jmpq   *0x3f9a(%rip)        # 405060 <signal@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	pushq  $0x9
  4010cb:	e9 50 ff ff ff       	jmpq   401020 <.plt>

00000000004010d0 <gethostbyname@plt>:
  4010d0:	ff 25 92 3f 00 00    	jmpq   *0x3f92(%rip)        # 405068 <gethostbyname@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	pushq  $0xa
  4010db:	e9 40 ff ff ff       	jmpq   401020 <.plt>

00000000004010e0 <__memmove_chk@plt>:
  4010e0:	ff 25 8a 3f 00 00    	jmpq   *0x3f8a(%rip)        # 405070 <__memmove_chk@GLIBC_2.3.4>
  4010e6:	68 0b 00 00 00       	pushq  $0xb
  4010eb:	e9 30 ff ff ff       	jmpq   401020 <.plt>

00000000004010f0 <memcpy@plt>:
  4010f0:	ff 25 82 3f 00 00    	jmpq   *0x3f82(%rip)        # 405078 <memcpy@GLIBC_2.14>
  4010f6:	68 0c 00 00 00       	pushq  $0xc
  4010fb:	e9 20 ff ff ff       	jmpq   401020 <.plt>

0000000000401100 <fflush@plt>:
  401100:	ff 25 7a 3f 00 00    	jmpq   *0x3f7a(%rip)        # 405080 <fflush@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	pushq  $0xd
  40110b:	e9 10 ff ff ff       	jmpq   401020 <.plt>

0000000000401110 <__isoc99_sscanf@plt>:
  401110:	ff 25 72 3f 00 00    	jmpq   *0x3f72(%rip)        # 405088 <__isoc99_sscanf@GLIBC_2.7>
  401116:	68 0e 00 00 00       	pushq  $0xe
  40111b:	e9 00 ff ff ff       	jmpq   401020 <.plt>

0000000000401120 <__printf_chk@plt>:
  401120:	ff 25 6a 3f 00 00    	jmpq   *0x3f6a(%rip)        # 405090 <__printf_chk@GLIBC_2.3.4>
  401126:	68 0f 00 00 00       	pushq  $0xf
  40112b:	e9 f0 fe ff ff       	jmpq   401020 <.plt>

0000000000401130 <fopen@plt>:
  401130:	ff 25 62 3f 00 00    	jmpq   *0x3f62(%rip)        # 405098 <fopen@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	pushq  $0x10
  40113b:	e9 e0 fe ff ff       	jmpq   401020 <.plt>

0000000000401140 <atoi@plt>:
  401140:	ff 25 5a 3f 00 00    	jmpq   *0x3f5a(%rip)        # 4050a0 <atoi@GLIBC_2.2.5>
  401146:	68 11 00 00 00       	pushq  $0x11
  40114b:	e9 d0 fe ff ff       	jmpq   401020 <.plt>

0000000000401150 <exit@plt>:
  401150:	ff 25 52 3f 00 00    	jmpq   *0x3f52(%rip)        # 4050a8 <exit@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	pushq  $0x12
  40115b:	e9 c0 fe ff ff       	jmpq   401020 <.plt>

0000000000401160 <connect@plt>:
  401160:	ff 25 4a 3f 00 00    	jmpq   *0x3f4a(%rip)        # 4050b0 <connect@GLIBC_2.2.5>
  401166:	68 13 00 00 00       	pushq  $0x13
  40116b:	e9 b0 fe ff ff       	jmpq   401020 <.plt>

0000000000401170 <__fprintf_chk@plt>:
  401170:	ff 25 42 3f 00 00    	jmpq   *0x3f42(%rip)        # 4050b8 <__fprintf_chk@GLIBC_2.3.4>
  401176:	68 14 00 00 00       	pushq  $0x14
  40117b:	e9 a0 fe ff ff       	jmpq   401020 <.plt>

0000000000401180 <sleep@plt>:
  401180:	ff 25 3a 3f 00 00    	jmpq   *0x3f3a(%rip)        # 4050c0 <sleep@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	pushq  $0x15
  40118b:	e9 90 fe ff ff       	jmpq   401020 <.plt>

0000000000401190 <__ctype_b_loc@plt>:
  401190:	ff 25 32 3f 00 00    	jmpq   *0x3f32(%rip)        # 4050c8 <__ctype_b_loc@GLIBC_2.3>
  401196:	68 16 00 00 00       	pushq  $0x16
  40119b:	e9 80 fe ff ff       	jmpq   401020 <.plt>

00000000004011a0 <__sprintf_chk@plt>:
  4011a0:	ff 25 2a 3f 00 00    	jmpq   *0x3f2a(%rip)        # 4050d0 <__sprintf_chk@GLIBC_2.3.4>
  4011a6:	68 17 00 00 00       	pushq  $0x17
  4011ab:	e9 70 fe ff ff       	jmpq   401020 <.plt>

00000000004011b0 <socket@plt>:
  4011b0:	ff 25 22 3f 00 00    	jmpq   *0x3f22(%rip)        # 4050d8 <socket@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	pushq  $0x18
  4011bb:	e9 60 fe ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

00000000004011c0 <_start>:
  4011c0:	f3 0f 1e fa          	endbr64 
  4011c4:	31 ed                	xor    %ebp,%ebp
  4011c6:	49 89 d1             	mov    %rdx,%r9
  4011c9:	5e                   	pop    %rsi
  4011ca:	48 89 e2             	mov    %rsp,%rdx
  4011cd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4011d1:	50                   	push   %rax
  4011d2:	54                   	push   %rsp
  4011d3:	49 c7 c0 40 27 40 00 	mov    $0x402740,%r8
  4011da:	48 c7 c1 d0 26 40 00 	mov    $0x4026d0,%rcx
  4011e1:	48 c7 c7 a6 12 40 00 	mov    $0x4012a6,%rdi
  4011e8:	ff 15 02 3e 00 00    	callq  *0x3e02(%rip)        # 404ff0 <__libc_start_main@GLIBC_2.2.5>
  4011ee:	f4                   	hlt    
  4011ef:	90                   	nop

00000000004011f0 <_dl_relocate_static_pie>:
  4011f0:	f3 0f 1e fa          	endbr64 
  4011f4:	c3                   	retq   
  4011f5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4011fc:	00 00 00 
  4011ff:	90                   	nop

0000000000401200 <deregister_tm_clones>:
  401200:	b8 40 57 40 00       	mov    $0x405740,%eax
  401205:	48 3d 40 57 40 00    	cmp    $0x405740,%rax
  40120b:	74 13                	je     401220 <deregister_tm_clones+0x20>
  40120d:	b8 00 00 00 00       	mov    $0x0,%eax
  401212:	48 85 c0             	test   %rax,%rax
  401215:	74 09                	je     401220 <deregister_tm_clones+0x20>
  401217:	bf 40 57 40 00       	mov    $0x405740,%edi
  40121c:	ff e0                	jmpq   *%rax
  40121e:	66 90                	xchg   %ax,%ax
  401220:	c3                   	retq   
  401221:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401228:	00 00 00 00 
  40122c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401230 <register_tm_clones>:
  401230:	be 40 57 40 00       	mov    $0x405740,%esi
  401235:	48 81 ee 40 57 40 00 	sub    $0x405740,%rsi
  40123c:	48 89 f0             	mov    %rsi,%rax
  40123f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401243:	48 c1 f8 03          	sar    $0x3,%rax
  401247:	48 01 c6             	add    %rax,%rsi
  40124a:	48 d1 fe             	sar    %rsi
  40124d:	74 11                	je     401260 <register_tm_clones+0x30>
  40124f:	b8 00 00 00 00       	mov    $0x0,%eax
  401254:	48 85 c0             	test   %rax,%rax
  401257:	74 07                	je     401260 <register_tm_clones+0x30>
  401259:	bf 40 57 40 00       	mov    $0x405740,%edi
  40125e:	ff e0                	jmpq   *%rax
  401260:	c3                   	retq   
  401261:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401268:	00 00 00 00 
  40126c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401270 <__do_global_dtors_aux>:
  401270:	f3 0f 1e fa          	endbr64 
  401274:	80 3d ed 44 00 00 00 	cmpb   $0x0,0x44ed(%rip)        # 405768 <completed.8055>
  40127b:	75 13                	jne    401290 <__do_global_dtors_aux+0x20>
  40127d:	55                   	push   %rbp
  40127e:	48 89 e5             	mov    %rsp,%rbp
  401281:	e8 7a ff ff ff       	callq  401200 <deregister_tm_clones>
  401286:	c6 05 db 44 00 00 01 	movb   $0x1,0x44db(%rip)        # 405768 <completed.8055>
  40128d:	5d                   	pop    %rbp
  40128e:	c3                   	retq   
  40128f:	90                   	nop
  401290:	c3                   	retq   
  401291:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401298:	00 00 00 00 
  40129c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012a0 <frame_dummy>:
  4012a0:	f3 0f 1e fa          	endbr64 
  4012a4:	eb 8a                	jmp    401230 <register_tm_clones>

00000000004012a6 <main>:
  4012a6:	53                   	push   %rbx
  4012a7:	83 ff 01             	cmp    $0x1,%edi
  4012aa:	0f 84 e8 00 00 00    	je     401398 <main+0xf2>
  4012b0:	48 89 f3             	mov    %rsi,%rbx
  4012b3:	83 ff 02             	cmp    $0x2,%edi
  4012b6:	0f 85 0f 01 00 00    	jne    4013cb <main+0x125>
  4012bc:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  4012c0:	be 04 30 40 00       	mov    $0x403004,%esi
  4012c5:	e8 66 fe ff ff       	callq  401130 <fopen@plt>
  4012ca:	48 89 05 9f 44 00 00 	mov    %rax,0x449f(%rip)        # 405770 <infile>
  4012d1:	48 85 c0             	test   %rax,%rax
  4012d4:	0f 84 d1 00 00 00    	je     4013ab <main+0x105>
  4012da:	e8 5b 05 00 00       	callq  40183a <initialize_bomb>
  4012df:	bf 88 30 40 00       	mov    $0x403088,%edi
  4012e4:	e8 77 fd ff ff       	callq  401060 <puts@plt>
  4012e9:	bf c8 30 40 00       	mov    $0x4030c8,%edi
  4012ee:	e8 6d fd ff ff       	callq  401060 <puts@plt>
  4012f3:	e8 3a 06 00 00       	callq  401932 <read_line>
  4012f8:	48 89 c7             	mov    %rax,%rdi
  4012fb:	e8 ec 00 00 00       	callq  4013ec <phase_1>
  401300:	e8 5b 07 00 00       	callq  401a60 <phase_defused>
  401305:	bf f8 30 40 00       	mov    $0x4030f8,%edi
  40130a:	e8 51 fd ff ff       	callq  401060 <puts@plt>
  40130f:	e8 1e 06 00 00       	callq  401932 <read_line>
  401314:	48 89 c7             	mov    %rax,%rdi
  401317:	e8 ee 00 00 00       	callq  40140a <phase_2>
  40131c:	e8 3f 07 00 00       	callq  401a60 <phase_defused>
  401321:	bf 3d 30 40 00       	mov    $0x40303d,%edi
  401326:	e8 35 fd ff ff       	callq  401060 <puts@plt>
  40132b:	e8 02 06 00 00       	callq  401932 <read_line>
  401330:	48 89 c7             	mov    %rax,%rdi
  401333:	e8 26 01 00 00       	callq  40145e <phase_3>
  401338:	e8 23 07 00 00       	callq  401a60 <phase_defused>
  40133d:	bf 5b 30 40 00       	mov    $0x40305b,%edi
  401342:	e8 19 fd ff ff       	callq  401060 <puts@plt>
  401347:	e8 e6 05 00 00       	callq  401932 <read_line>
  40134c:	48 89 c7             	mov    %rax,%rdi
  40134f:	e8 cb 01 00 00       	callq  40151f <phase_4>
  401354:	e8 07 07 00 00       	callq  401a60 <phase_defused>
  401359:	bf 28 31 40 00       	mov    $0x403128,%edi
  40135e:	e8 fd fc ff ff       	callq  401060 <puts@plt>
  401363:	e8 ca 05 00 00       	callq  401932 <read_line>
  401368:	48 89 c7             	mov    %rax,%rdi
  40136b:	e8 0c 02 00 00       	callq  40157c <phase_5>
  401370:	e8 eb 06 00 00       	callq  401a60 <phase_defused>
  401375:	bf 6a 30 40 00       	mov    $0x40306a,%edi
  40137a:	e8 e1 fc ff ff       	callq  401060 <puts@plt>
  40137f:	e8 ae 05 00 00       	callq  401932 <read_line>
  401384:	48 89 c7             	mov    %rax,%rdi
  401387:	e8 60 02 00 00       	callq  4015ec <phase_6>
  40138c:	e8 cf 06 00 00       	callq  401a60 <phase_defused>
  401391:	b8 00 00 00 00       	mov    $0x0,%eax
  401396:	5b                   	pop    %rbx
  401397:	c3                   	retq   
  401398:	48 8b 05 b1 43 00 00 	mov    0x43b1(%rip),%rax        # 405750 <stdin@@GLIBC_2.2.5>
  40139f:	48 89 05 ca 43 00 00 	mov    %rax,0x43ca(%rip)        # 405770 <infile>
  4013a6:	e9 2f ff ff ff       	jmpq   4012da <main+0x34>
  4013ab:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  4013af:	48 8b 13             	mov    (%rbx),%rdx
  4013b2:	be 06 30 40 00       	mov    $0x403006,%esi
  4013b7:	bf 01 00 00 00       	mov    $0x1,%edi
  4013bc:	e8 5f fd ff ff       	callq  401120 <__printf_chk@plt>
  4013c1:	bf 08 00 00 00       	mov    $0x8,%edi
  4013c6:	e8 85 fd ff ff       	callq  401150 <exit@plt>
  4013cb:	48 8b 16             	mov    (%rsi),%rdx
  4013ce:	be 23 30 40 00       	mov    $0x403023,%esi
  4013d3:	bf 01 00 00 00       	mov    $0x1,%edi
  4013d8:	b8 00 00 00 00       	mov    $0x0,%eax
  4013dd:	e8 3e fd ff ff       	callq  401120 <__printf_chk@plt>
  4013e2:	bf 08 00 00 00       	mov    $0x8,%edi
  4013e7:	e8 64 fd ff ff       	callq  401150 <exit@plt>

00000000004013ec <phase_1>:
  4013ec:	48 83 ec 08          	sub    $0x8,%rsp
  4013f0:	be 50 31 40 00       	mov    $0x403150,%esi
  4013f5:	e8 f3 03 00 00       	callq  4017ed <strings_not_equal>
  4013fa:	85 c0                	test   %eax,%eax
  4013fc:	75 05                	jne    401403 <phase_1+0x17>
  4013fe:	48 83 c4 08          	add    $0x8,%rsp
  401402:	c3                   	retq   
  401403:	e8 c7 04 00 00       	callq  4018cf <explode_bomb>
  401408:	eb f4                	jmp    4013fe <phase_1+0x12>

000000000040140a <phase_2>:
  40140a:	53                   	push   %rbx
  40140b:	48 83 ec 20          	sub    $0x20,%rsp
  40140f:	48 89 e6             	mov    %rsp,%rsi
  401412:	e8 dc 04 00 00       	callq  4018f3 <read_six_numbers>
  401417:	83 3c 24 00          	cmpl   $0x0,(%rsp)
  40141b:	75 07                	jne    401424 <phase_2+0x1a>
  40141d:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
  401422:	74 05                	je     401429 <phase_2+0x1f>
  401424:	e8 a6 04 00 00       	callq  4018cf <explode_bomb>
  401429:	bb 02 00 00 00       	mov    $0x2,%ebx
  40142e:	eb 08                	jmp    401438 <phase_2+0x2e>
  401430:	e8 9a 04 00 00       	callq  4018cf <explode_bomb>
  401435:	83 c3 01             	add    $0x1,%ebx
  401438:	83 fb 05             	cmp    $0x5,%ebx
  40143b:	7f 1b                	jg     401458 <phase_2+0x4e>
  40143d:	48 63 d3             	movslq %ebx,%rdx
  401440:	8d 4b fe             	lea    -0x2(%rbx),%ecx
  401443:	48 63 c9             	movslq %ecx,%rcx
  401446:	8d 43 ff             	lea    -0x1(%rbx),%eax
  401449:	48 98                	cltq   
  40144b:	8b 04 84             	mov    (%rsp,%rax,4),%eax
  40144e:	03 04 8c             	add    (%rsp,%rcx,4),%eax
  401451:	39 04 94             	cmp    %eax,(%rsp,%rdx,4)
  401454:	74 df                	je     401435 <phase_2+0x2b>
  401456:	eb d8                	jmp    401430 <phase_2+0x26>
  401458:	48 83 c4 20          	add    $0x20,%rsp
  40145c:	5b                   	pop    %rbx
  40145d:	c3                   	retq   

000000000040145e <phase_3>:
  40145e:	48 83 ec 18          	sub    $0x18,%rsp
  401462:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  401467:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  40146c:	be 2f 33 40 00       	mov    $0x40332f,%esi
  401471:	b8 00 00 00 00       	mov    $0x0,%eax
  401476:	e8 95 fc ff ff       	callq  401110 <__isoc99_sscanf@plt>
  40147b:	83 f8 01             	cmp    $0x1,%eax
  40147e:	7e 12                	jle    401492 <phase_3+0x34>
  401480:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401484:	83 f8 07             	cmp    $0x7,%eax
  401487:	77 4a                	ja     4014d3 <phase_3+0x75>
  401489:	89 c0                	mov    %eax,%eax
  40148b:	ff 24 c5 a0 31 40 00 	jmpq   *0x4031a0(,%rax,8)
  401492:	e8 38 04 00 00       	callq  4018cf <explode_bomb>
  401497:	eb e7                	jmp    401480 <phase_3+0x22>
  401499:	b8 f7 02 00 00       	mov    $0x2f7,%eax
  40149e:	39 44 24 08          	cmp    %eax,0x8(%rsp)
  4014a2:	75 42                	jne    4014e6 <phase_3+0x88>
  4014a4:	48 83 c4 18          	add    $0x18,%rsp
  4014a8:	c3                   	retq   
  4014a9:	b8 31 03 00 00       	mov    $0x331,%eax
  4014ae:	eb ee                	jmp    40149e <phase_3+0x40>
  4014b0:	b8 2a 02 00 00       	mov    $0x22a,%eax
  4014b5:	eb e7                	jmp    40149e <phase_3+0x40>
  4014b7:	b8 16 03 00 00       	mov    $0x316,%eax
  4014bc:	eb e0                	jmp    40149e <phase_3+0x40>
  4014be:	b8 45 02 00 00       	mov    $0x245,%eax
  4014c3:	eb d9                	jmp    40149e <phase_3+0x40>
  4014c5:	b8 12 03 00 00       	mov    $0x312,%eax
  4014ca:	eb d2                	jmp    40149e <phase_3+0x40>
  4014cc:	b8 a3 03 00 00       	mov    $0x3a3,%eax
  4014d1:	eb cb                	jmp    40149e <phase_3+0x40>
  4014d3:	e8 f7 03 00 00       	callq  4018cf <explode_bomb>
  4014d8:	b8 00 00 00 00       	mov    $0x0,%eax
  4014dd:	eb bf                	jmp    40149e <phase_3+0x40>
  4014df:	b8 a0 02 00 00       	mov    $0x2a0,%eax
  4014e4:	eb b8                	jmp    40149e <phase_3+0x40>
  4014e6:	e8 e4 03 00 00       	callq  4018cf <explode_bomb>
  4014eb:	eb b7                	jmp    4014a4 <phase_3+0x46>

00000000004014ed <func4>:
  4014ed:	53                   	push   %rbx
  4014ee:	89 d0                	mov    %edx,%eax
  4014f0:	29 f0                	sub    %esi,%eax
  4014f2:	89 c3                	mov    %eax,%ebx
  4014f4:	c1 eb 1f             	shr    $0x1f,%ebx
  4014f7:	01 c3                	add    %eax,%ebx
  4014f9:	d1 fb                	sar    %ebx
  4014fb:	01 f3                	add    %esi,%ebx
  4014fd:	39 fb                	cmp    %edi,%ebx
  4014ff:	7f 06                	jg     401507 <func4+0x1a>
  401501:	7c 10                	jl     401513 <func4+0x26>
  401503:	89 d8                	mov    %ebx,%eax
  401505:	5b                   	pop    %rbx
  401506:	c3                   	retq   
  401507:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40150a:	e8 de ff ff ff       	callq  4014ed <func4>
  40150f:	01 c3                	add    %eax,%ebx
  401511:	eb f0                	jmp    401503 <func4+0x16>
  401513:	8d 73 01             	lea    0x1(%rbx),%esi
  401516:	e8 d2 ff ff ff       	callq  4014ed <func4>
  40151b:	01 c3                	add    %eax,%ebx
  40151d:	eb e4                	jmp    401503 <func4+0x16>

000000000040151f <phase_4>:
  40151f:	48 83 ec 18          	sub    $0x18,%rsp
  401523:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  401528:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  40152d:	be 2f 33 40 00       	mov    $0x40332f,%esi
  401532:	b8 00 00 00 00       	mov    $0x0,%eax
  401537:	e8 d4 fb ff ff       	callq  401110 <__isoc99_sscanf@plt>
  40153c:	83 f8 02             	cmp    $0x2,%eax
  40153f:	75 0d                	jne    40154e <phase_4+0x2f>
  401541:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401545:	85 c0                	test   %eax,%eax
  401547:	78 05                	js     40154e <phase_4+0x2f>
  401549:	83 f8 0e             	cmp    $0xe,%eax
  40154c:	7e 05                	jle    401553 <phase_4+0x34>
  40154e:	e8 7c 03 00 00       	callq  4018cf <explode_bomb>
  401553:	ba 0e 00 00 00       	mov    $0xe,%edx
  401558:	be 00 00 00 00       	mov    $0x0,%esi
  40155d:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401561:	e8 87 ff ff ff       	callq  4014ed <func4>
  401566:	83 f8 25             	cmp    $0x25,%eax
  401569:	75 07                	jne    401572 <phase_4+0x53>
  40156b:	83 7c 24 08 25       	cmpl   $0x25,0x8(%rsp)
  401570:	74 05                	je     401577 <phase_4+0x58>
  401572:	e8 58 03 00 00       	callq  4018cf <explode_bomb>
  401577:	48 83 c4 18          	add    $0x18,%rsp
  40157b:	c3                   	retq   

000000000040157c <phase_5>:
  40157c:	48 83 ec 18          	sub    $0x18,%rsp
  401580:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  401585:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  40158a:	be 2f 33 40 00       	mov    $0x40332f,%esi
  40158f:	b8 00 00 00 00       	mov    $0x0,%eax
  401594:	e8 77 fb ff ff       	callq  401110 <__isoc99_sscanf@plt>
  401599:	83 f8 01             	cmp    $0x1,%eax
  40159c:	7e 32                	jle    4015d0 <phase_5+0x54>
  40159e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4015a2:	83 e0 0f             	and    $0xf,%eax
  4015a5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4015a9:	b9 00 00 00 00       	mov    $0x0,%ecx
  4015ae:	ba 00 00 00 00       	mov    $0x0,%edx
  4015b3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4015b7:	83 f8 0f             	cmp    $0xf,%eax
  4015ba:	74 1b                	je     4015d7 <phase_5+0x5b>
  4015bc:	83 c2 01             	add    $0x1,%edx
  4015bf:	48 98                	cltq   
  4015c1:	8b 04 85 e0 31 40 00 	mov    0x4031e0(,%rax,4),%eax
  4015c8:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4015cc:	01 c1                	add    %eax,%ecx
  4015ce:	eb e3                	jmp    4015b3 <phase_5+0x37>
  4015d0:	e8 fa 02 00 00       	callq  4018cf <explode_bomb>
  4015d5:	eb c7                	jmp    40159e <phase_5+0x22>
  4015d7:	83 fa 0f             	cmp    $0xf,%edx
  4015da:	75 06                	jne    4015e2 <phase_5+0x66>
  4015dc:	39 4c 24 08          	cmp    %ecx,0x8(%rsp)
  4015e0:	74 05                	je     4015e7 <phase_5+0x6b>
  4015e2:	e8 e8 02 00 00       	callq  4018cf <explode_bomb>
  4015e7:	48 83 c4 18          	add    $0x18,%rsp
  4015eb:	c3                   	retq   

00000000004015ec <phase_6>:
  4015ec:	41 54                	push   %r12
  4015ee:	55                   	push   %rbp
  4015ef:	53                   	push   %rbx
  4015f0:	48 83 ec 50          	sub    $0x50,%rsp
  4015f4:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  4015f9:	e8 f5 02 00 00       	callq  4018f3 <read_six_numbers>
  4015fe:	bd 00 00 00 00       	mov    $0x0,%ebp
  401603:	eb 29                	jmp    40162e <phase_6+0x42>
  401605:	e8 c5 02 00 00       	callq  4018cf <explode_bomb>
  40160a:	eb 36                	jmp    401642 <phase_6+0x56>
  40160c:	83 c3 01             	add    $0x1,%ebx
  40160f:	83 fb 05             	cmp    $0x5,%ebx
  401612:	7f 17                	jg     40162b <phase_6+0x3f>
  401614:	48 63 c5             	movslq %ebp,%rax
  401617:	48 63 d3             	movslq %ebx,%rdx
  40161a:	8b 7c 94 30          	mov    0x30(%rsp,%rdx,4),%edi
  40161e:	39 7c 84 30          	cmp    %edi,0x30(%rsp,%rax,4)
  401622:	75 e8                	jne    40160c <phase_6+0x20>
  401624:	e8 a6 02 00 00       	callq  4018cf <explode_bomb>
  401629:	eb e1                	jmp    40160c <phase_6+0x20>
  40162b:	44 89 e5             	mov    %r12d,%ebp
  40162e:	83 fd 05             	cmp    $0x5,%ebp
  401631:	7f 18                	jg     40164b <phase_6+0x5f>
  401633:	48 63 c5             	movslq %ebp,%rax
  401636:	8b 44 84 30          	mov    0x30(%rsp,%rax,4),%eax
  40163a:	83 e8 01             	sub    $0x1,%eax
  40163d:	83 f8 05             	cmp    $0x5,%eax
  401640:	77 c3                	ja     401605 <phase_6+0x19>
  401642:	44 8d 65 01          	lea    0x1(%rbp),%r12d
  401646:	44 89 e3             	mov    %r12d,%ebx
  401649:	eb c4                	jmp    40160f <phase_6+0x23>
  40164b:	be 00 00 00 00       	mov    $0x0,%esi
  401650:	eb 07                	jmp    401659 <phase_6+0x6d>
  401652:	48 89 14 cc          	mov    %rdx,(%rsp,%rcx,8)
  401656:	83 c6 01             	add    $0x1,%esi
  401659:	83 fe 05             	cmp    $0x5,%esi
  40165c:	7f 1c                	jg     40167a <phase_6+0x8e>
  40165e:	b8 01 00 00 00       	mov    $0x1,%eax
  401663:	ba d0 52 40 00       	mov    $0x4052d0,%edx
  401668:	48 63 ce             	movslq %esi,%rcx
  40166b:	39 44 8c 30          	cmp    %eax,0x30(%rsp,%rcx,4)
  40166f:	7e e1                	jle    401652 <phase_6+0x66>
  401671:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  401675:	83 c0 01             	add    $0x1,%eax
  401678:	eb ee                	jmp    401668 <phase_6+0x7c>
  40167a:	48 8b 1c 24          	mov    (%rsp),%rbx
  40167e:	48 89 d9             	mov    %rbx,%rcx
  401681:	b8 01 00 00 00       	mov    $0x1,%eax
  401686:	eb 11                	jmp    401699 <phase_6+0xad>
  401688:	48 63 d0             	movslq %eax,%rdx
  40168b:	48 8b 14 d4          	mov    (%rsp,%rdx,8),%rdx
  40168f:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  401693:	83 c0 01             	add    $0x1,%eax
  401696:	48 89 d1             	mov    %rdx,%rcx
  401699:	83 f8 05             	cmp    $0x5,%eax
  40169c:	7e ea                	jle    401688 <phase_6+0x9c>
  40169e:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
  4016a5:	00 
  4016a6:	bd 00 00 00 00       	mov    $0x0,%ebp
  4016ab:	eb 07                	jmp    4016b4 <phase_6+0xc8>
  4016ad:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  4016b1:	83 c5 01             	add    $0x1,%ebp
  4016b4:	83 fd 04             	cmp    $0x4,%ebp
  4016b7:	7f 11                	jg     4016ca <phase_6+0xde>
  4016b9:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4016bd:	8b 00                	mov    (%rax),%eax
  4016bf:	39 03                	cmp    %eax,(%rbx)
  4016c1:	7e ea                	jle    4016ad <phase_6+0xc1>
  4016c3:	e8 07 02 00 00       	callq  4018cf <explode_bomb>
  4016c8:	eb e3                	jmp    4016ad <phase_6+0xc1>
  4016ca:	48 83 c4 50          	add    $0x50,%rsp
  4016ce:	5b                   	pop    %rbx
  4016cf:	5d                   	pop    %rbp
  4016d0:	41 5c                	pop    %r12
  4016d2:	c3                   	retq   

00000000004016d3 <fun7>:
  4016d3:	48 85 ff             	test   %rdi,%rdi
  4016d6:	74 32                	je     40170a <fun7+0x37>
  4016d8:	48 83 ec 08          	sub    $0x8,%rsp
  4016dc:	8b 07                	mov    (%rdi),%eax
  4016de:	39 f0                	cmp    %esi,%eax
  4016e0:	7f 0c                	jg     4016ee <fun7+0x1b>
  4016e2:	75 17                	jne    4016fb <fun7+0x28>
  4016e4:	b8 00 00 00 00       	mov    $0x0,%eax
  4016e9:	48 83 c4 08          	add    $0x8,%rsp
  4016ed:	c3                   	retq   
  4016ee:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  4016f2:	e8 dc ff ff ff       	callq  4016d3 <fun7>
  4016f7:	01 c0                	add    %eax,%eax
  4016f9:	eb ee                	jmp    4016e9 <fun7+0x16>
  4016fb:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  4016ff:	e8 cf ff ff ff       	callq  4016d3 <fun7>
  401704:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  401708:	eb df                	jmp    4016e9 <fun7+0x16>
  40170a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40170f:	c3                   	retq   

0000000000401710 <secret_phase>:
  401710:	53                   	push   %rbx
  401711:	e8 1c 02 00 00       	callq  401932 <read_line>
  401716:	48 89 c7             	mov    %rax,%rdi
  401719:	e8 22 fa ff ff       	callq  401140 <atoi@plt>
  40171e:	89 c3                	mov    %eax,%ebx
  401720:	8d 40 ff             	lea    -0x1(%rax),%eax
  401723:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  401728:	77 22                	ja     40174c <secret_phase+0x3c>
  40172a:	89 de                	mov    %ebx,%esi
  40172c:	bf f0 50 40 00       	mov    $0x4050f0,%edi
  401731:	e8 9d ff ff ff       	callq  4016d3 <fun7>
  401736:	83 f8 05             	cmp    $0x5,%eax
  401739:	75 18                	jne    401753 <secret_phase+0x43>
  40173b:	bf 78 31 40 00       	mov    $0x403178,%edi
  401740:	e8 1b f9 ff ff       	callq  401060 <puts@plt>
  401745:	e8 16 03 00 00       	callq  401a60 <phase_defused>
  40174a:	5b                   	pop    %rbx
  40174b:	c3                   	retq   
  40174c:	e8 7e 01 00 00       	callq  4018cf <explode_bomb>
  401751:	eb d7                	jmp    40172a <secret_phase+0x1a>
  401753:	e8 77 01 00 00       	callq  4018cf <explode_bomb>
  401758:	eb e1                	jmp    40173b <secret_phase+0x2b>

000000000040175a <sig_handler>:
  40175a:	50                   	push   %rax
  40175b:	58                   	pop    %rax
  40175c:	48 83 ec 08          	sub    $0x8,%rsp
  401760:	bf 20 32 40 00       	mov    $0x403220,%edi
  401765:	e8 f6 f8 ff ff       	callq  401060 <puts@plt>
  40176a:	bf 03 00 00 00       	mov    $0x3,%edi
  40176f:	e8 0c fa ff ff       	callq  401180 <sleep@plt>
  401774:	be e2 32 40 00       	mov    $0x4032e2,%esi
  401779:	bf 01 00 00 00       	mov    $0x1,%edi
  40177e:	b8 00 00 00 00       	mov    $0x0,%eax
  401783:	e8 98 f9 ff ff       	callq  401120 <__printf_chk@plt>
  401788:	48 8b 3d b1 3f 00 00 	mov    0x3fb1(%rip),%rdi        # 405740 <stdout@@GLIBC_2.2.5>
  40178f:	e8 6c f9 ff ff       	callq  401100 <fflush@plt>
  401794:	bf 01 00 00 00       	mov    $0x1,%edi
  401799:	e8 e2 f9 ff ff       	callq  401180 <sleep@plt>
  40179e:	bf ea 32 40 00       	mov    $0x4032ea,%edi
  4017a3:	e8 b8 f8 ff ff       	callq  401060 <puts@plt>
  4017a8:	bf 10 00 00 00       	mov    $0x10,%edi
  4017ad:	e8 9e f9 ff ff       	callq  401150 <exit@plt>

00000000004017b2 <invalid_phase>:
  4017b2:	50                   	push   %rax
  4017b3:	58                   	pop    %rax
  4017b4:	48 83 ec 08          	sub    $0x8,%rsp
  4017b8:	48 89 fa             	mov    %rdi,%rdx
  4017bb:	be f2 32 40 00       	mov    $0x4032f2,%esi
  4017c0:	bf 01 00 00 00       	mov    $0x1,%edi
  4017c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4017ca:	e8 51 f9 ff ff       	callq  401120 <__printf_chk@plt>
  4017cf:	bf 08 00 00 00       	mov    $0x8,%edi
  4017d4:	e8 77 f9 ff ff       	callq  401150 <exit@plt>

00000000004017d9 <string_length>:
  4017d9:	b8 00 00 00 00       	mov    $0x0,%eax
  4017de:	80 3f 00             	cmpb   $0x0,(%rdi)
  4017e1:	74 09                	je     4017ec <string_length+0x13>
  4017e3:	48 83 c7 01          	add    $0x1,%rdi
  4017e7:	83 c0 01             	add    $0x1,%eax
  4017ea:	eb f2                	jmp    4017de <string_length+0x5>
  4017ec:	c3                   	retq   

00000000004017ed <strings_not_equal>:
  4017ed:	41 54                	push   %r12
  4017ef:	55                   	push   %rbp
  4017f0:	53                   	push   %rbx
  4017f1:	48 89 fb             	mov    %rdi,%rbx
  4017f4:	48 89 f5             	mov    %rsi,%rbp
  4017f7:	e8 dd ff ff ff       	callq  4017d9 <string_length>
  4017fc:	41 89 c4             	mov    %eax,%r12d
  4017ff:	48 89 ef             	mov    %rbp,%rdi
  401802:	e8 d2 ff ff ff       	callq  4017d9 <string_length>
  401807:	41 39 c4             	cmp    %eax,%r12d
  40180a:	75 1d                	jne    401829 <strings_not_equal+0x3c>
  40180c:	0f b6 03             	movzbl (%rbx),%eax
  40180f:	84 c0                	test   %al,%al
  401811:	74 0f                	je     401822 <strings_not_equal+0x35>
  401813:	38 45 00             	cmp    %al,0x0(%rbp)
  401816:	75 1b                	jne    401833 <strings_not_equal+0x46>
  401818:	48 83 c3 01          	add    $0x1,%rbx
  40181c:	48 83 c5 01          	add    $0x1,%rbp
  401820:	eb ea                	jmp    40180c <strings_not_equal+0x1f>
  401822:	b8 00 00 00 00       	mov    $0x0,%eax
  401827:	eb 05                	jmp    40182e <strings_not_equal+0x41>
  401829:	b8 01 00 00 00       	mov    $0x1,%eax
  40182e:	5b                   	pop    %rbx
  40182f:	5d                   	pop    %rbp
  401830:	41 5c                	pop    %r12
  401832:	c3                   	retq   
  401833:	b8 01 00 00 00       	mov    $0x1,%eax
  401838:	eb f4                	jmp    40182e <strings_not_equal+0x41>

000000000040183a <initialize_bomb>:
  40183a:	48 83 ec 08          	sub    $0x8,%rsp
  40183e:	be 5a 17 40 00       	mov    $0x40175a,%esi
  401843:	bf 02 00 00 00       	mov    $0x2,%edi
  401848:	e8 73 f8 ff ff       	callq  4010c0 <signal@plt>
  40184d:	48 83 c4 08          	add    $0x8,%rsp
  401851:	c3                   	retq   

0000000000401852 <initialize_bomb_solve>:
  401852:	c3                   	retq   

0000000000401853 <blank_line>:
  401853:	55                   	push   %rbp
  401854:	53                   	push   %rbx
  401855:	48 83 ec 08          	sub    $0x8,%rsp
  401859:	48 89 fd             	mov    %rdi,%rbp
  40185c:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  401860:	84 db                	test   %bl,%bl
  401862:	74 1e                	je     401882 <blank_line+0x2f>
  401864:	e8 27 f9 ff ff       	callq  401190 <__ctype_b_loc@plt>
  401869:	48 8b 00             	mov    (%rax),%rax
  40186c:	48 83 c5 01          	add    $0x1,%rbp
  401870:	48 0f be db          	movsbq %bl,%rbx
  401874:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  401879:	75 e1                	jne    40185c <blank_line+0x9>
  40187b:	b8 00 00 00 00       	mov    $0x0,%eax
  401880:	eb 05                	jmp    401887 <blank_line+0x34>
  401882:	b8 01 00 00 00       	mov    $0x1,%eax
  401887:	48 83 c4 08          	add    $0x8,%rsp
  40188b:	5b                   	pop    %rbx
  40188c:	5d                   	pop    %rbp
  40188d:	c3                   	retq   

000000000040188e <skip>:
  40188e:	53                   	push   %rbx
  40188f:	48 63 05 d6 3e 00 00 	movslq 0x3ed6(%rip),%rax        # 40576c <num_input_strings>
  401896:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  40189a:	48 c1 e7 04          	shl    $0x4,%rdi
  40189e:	48 81 c7 80 57 40 00 	add    $0x405780,%rdi
  4018a5:	48 8b 15 c4 3e 00 00 	mov    0x3ec4(%rip),%rdx        # 405770 <infile>
  4018ac:	be 50 00 00 00       	mov    $0x50,%esi
  4018b1:	e8 fa f7 ff ff       	callq  4010b0 <fgets@plt>
  4018b6:	48 89 c3             	mov    %rax,%rbx
  4018b9:	48 85 c0             	test   %rax,%rax
  4018bc:	74 0c                	je     4018ca <skip+0x3c>
  4018be:	48 89 c7             	mov    %rax,%rdi
  4018c1:	e8 8d ff ff ff       	callq  401853 <blank_line>
  4018c6:	85 c0                	test   %eax,%eax
  4018c8:	75 c5                	jne    40188f <skip+0x1>
  4018ca:	48 89 d8             	mov    %rbx,%rax
  4018cd:	5b                   	pop    %rbx
  4018ce:	c3                   	retq   

00000000004018cf <explode_bomb>:
  4018cf:	50                   	push   %rax
  4018d0:	58                   	pop    %rax
  4018d1:	48 83 ec 08          	sub    $0x8,%rsp
  4018d5:	bf 03 33 40 00       	mov    $0x403303,%edi
  4018da:	e8 81 f7 ff ff       	callq  401060 <puts@plt>
  4018df:	bf 0c 33 40 00       	mov    $0x40330c,%edi
  4018e4:	e8 77 f7 ff ff       	callq  401060 <puts@plt>
  4018e9:	bf 08 00 00 00       	mov    $0x8,%edi
  4018ee:	e8 5d f8 ff ff       	callq  401150 <exit@plt>

00000000004018f3 <read_six_numbers>:
  4018f3:	48 83 ec 08          	sub    $0x8,%rsp
  4018f7:	48 89 f2             	mov    %rsi,%rdx
  4018fa:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  4018fe:	48 8d 46 14          	lea    0x14(%rsi),%rax
  401902:	50                   	push   %rax
  401903:	48 8d 46 10          	lea    0x10(%rsi),%rax
  401907:	50                   	push   %rax
  401908:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  40190c:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  401910:	be 23 33 40 00       	mov    $0x403323,%esi
  401915:	b8 00 00 00 00       	mov    $0x0,%eax
  40191a:	e8 f1 f7 ff ff       	callq  401110 <__isoc99_sscanf@plt>
  40191f:	48 83 c4 10          	add    $0x10,%rsp
  401923:	83 f8 05             	cmp    $0x5,%eax
  401926:	7e 05                	jle    40192d <read_six_numbers+0x3a>
  401928:	48 83 c4 08          	add    $0x8,%rsp
  40192c:	c3                   	retq   
  40192d:	e8 9d ff ff ff       	callq  4018cf <explode_bomb>

0000000000401932 <read_line>:
  401932:	48 83 ec 08          	sub    $0x8,%rsp
  401936:	b8 00 00 00 00       	mov    $0x0,%eax
  40193b:	e8 4e ff ff ff       	callq  40188e <skip>
  401940:	48 85 c0             	test   %rax,%rax
  401943:	74 63                	je     4019a8 <read_line+0x76>
  401945:	8b 35 21 3e 00 00    	mov    0x3e21(%rip),%esi        # 40576c <num_input_strings>
  40194b:	48 63 c6             	movslq %esi,%rax
  40194e:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401952:	48 c1 e2 04          	shl    $0x4,%rdx
  401956:	48 81 c2 80 57 40 00 	add    $0x405780,%rdx
  40195d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401964:	b8 00 00 00 00       	mov    $0x0,%eax
  401969:	48 89 d7             	mov    %rdx,%rdi
  40196c:	f2 ae                	repnz scas %es:(%rdi),%al
  40196e:	48 f7 d1             	not    %rcx
  401971:	48 83 e9 01          	sub    $0x1,%rcx
  401975:	83 f9 4e             	cmp    $0x4e,%ecx
  401978:	0f 8f 9c 00 00 00    	jg     401a1a <read_line+0xe8>
  40197e:	83 e9 01             	sub    $0x1,%ecx
  401981:	48 63 c9             	movslq %ecx,%rcx
  401984:	48 63 c6             	movslq %esi,%rax
  401987:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40198b:	48 c1 e0 04          	shl    $0x4,%rax
  40198f:	c6 84 01 80 57 40 00 	movb   $0x0,0x405780(%rcx,%rax,1)
  401996:	00 
  401997:	8d 46 01             	lea    0x1(%rsi),%eax
  40199a:	89 05 cc 3d 00 00    	mov    %eax,0x3dcc(%rip)        # 40576c <num_input_strings>
  4019a0:	48 89 d0             	mov    %rdx,%rax
  4019a3:	48 83 c4 08          	add    $0x8,%rsp
  4019a7:	c3                   	retq   
  4019a8:	48 8b 05 a1 3d 00 00 	mov    0x3da1(%rip),%rax        # 405750 <stdin@@GLIBC_2.2.5>
  4019af:	48 39 05 ba 3d 00 00 	cmp    %rax,0x3dba(%rip)        # 405770 <infile>
  4019b6:	74 19                	je     4019d1 <read_line+0x9f>
  4019b8:	bf 53 33 40 00       	mov    $0x403353,%edi
  4019bd:	e8 6e f6 ff ff       	callq  401030 <getenv@plt>
  4019c2:	48 85 c0             	test   %rax,%rax
  4019c5:	74 1e                	je     4019e5 <read_line+0xb3>
  4019c7:	bf 00 00 00 00       	mov    $0x0,%edi
  4019cc:	e8 7f f7 ff ff       	callq  401150 <exit@plt>
  4019d1:	bf 35 33 40 00       	mov    $0x403335,%edi
  4019d6:	e8 85 f6 ff ff       	callq  401060 <puts@plt>
  4019db:	bf 08 00 00 00       	mov    $0x8,%edi
  4019e0:	e8 6b f7 ff ff       	callq  401150 <exit@plt>
  4019e5:	48 8b 05 64 3d 00 00 	mov    0x3d64(%rip),%rax        # 405750 <stdin@@GLIBC_2.2.5>
  4019ec:	48 89 05 7d 3d 00 00 	mov    %rax,0x3d7d(%rip)        # 405770 <infile>
  4019f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4019f8:	e8 91 fe ff ff       	callq  40188e <skip>
  4019fd:	48 85 c0             	test   %rax,%rax
  401a00:	0f 85 3f ff ff ff    	jne    401945 <read_line+0x13>
  401a06:	bf 35 33 40 00       	mov    $0x403335,%edi
  401a0b:	e8 50 f6 ff ff       	callq  401060 <puts@plt>
  401a10:	bf 00 00 00 00       	mov    $0x0,%edi
  401a15:	e8 36 f7 ff ff       	callq  401150 <exit@plt>
  401a1a:	bf 5e 33 40 00       	mov    $0x40335e,%edi
  401a1f:	e8 3c f6 ff ff       	callq  401060 <puts@plt>
  401a24:	8b 05 42 3d 00 00    	mov    0x3d42(%rip),%eax        # 40576c <num_input_strings>
  401a2a:	8d 50 01             	lea    0x1(%rax),%edx
  401a2d:	89 15 39 3d 00 00    	mov    %edx,0x3d39(%rip)        # 40576c <num_input_strings>
  401a33:	48 98                	cltq   
  401a35:	48 6b c0 50          	imul   $0x50,%rax,%rax
  401a39:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
  401a40:	75 6e 63 
  401a43:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
  401a4a:	2a 2a 00 
  401a4d:	48 89 b0 80 57 40 00 	mov    %rsi,0x405780(%rax)
  401a54:	48 89 b8 88 57 40 00 	mov    %rdi,0x405788(%rax)
  401a5b:	e8 6f fe ff ff       	callq  4018cf <explode_bomb>

0000000000401a60 <phase_defused>:
  401a60:	83 3d 05 3d 00 00 06 	cmpl   $0x6,0x3d05(%rip)        # 40576c <num_input_strings>
  401a67:	74 01                	je     401a6a <phase_defused+0xa>
  401a69:	c3                   	retq   
  401a6a:	48 83 ec 68          	sub    $0x68,%rsp
  401a6e:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  401a73:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  401a78:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  401a7d:	be 79 33 40 00       	mov    $0x403379,%esi
  401a82:	bf 70 58 40 00       	mov    $0x405870,%edi
  401a87:	b8 00 00 00 00       	mov    $0x0,%eax
  401a8c:	e8 7f f6 ff ff       	callq  401110 <__isoc99_sscanf@plt>
  401a91:	83 f8 03             	cmp    $0x3,%eax
  401a94:	74 0f                	je     401aa5 <phase_defused+0x45>
  401a96:	bf b8 32 40 00       	mov    $0x4032b8,%edi
  401a9b:	e8 c0 f5 ff ff       	callq  401060 <puts@plt>
  401aa0:	48 83 c4 68          	add    $0x68,%rsp
  401aa4:	c3                   	retq   
  401aa5:	be 82 33 40 00       	mov    $0x403382,%esi
  401aaa:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401aaf:	e8 39 fd ff ff       	callq  4017ed <strings_not_equal>
  401ab4:	85 c0                	test   %eax,%eax
  401ab6:	75 de                	jne    401a96 <phase_defused+0x36>
  401ab8:	bf 58 32 40 00       	mov    $0x403258,%edi
  401abd:	e8 9e f5 ff ff       	callq  401060 <puts@plt>
  401ac2:	bf 80 32 40 00       	mov    $0x403280,%edi
  401ac7:	e8 94 f5 ff ff       	callq  401060 <puts@plt>
  401acc:	b8 00 00 00 00       	mov    $0x0,%eax
  401ad1:	e8 3a fc ff ff       	callq  401710 <secret_phase>
  401ad6:	eb be                	jmp    401a96 <phase_defused+0x36>

0000000000401ad8 <rio_readinitb>:
  401ad8:	89 37                	mov    %esi,(%rdi)
  401ada:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401ae1:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401ae5:	48 89 47 08          	mov    %rax,0x8(%rdi)
  401ae9:	c3                   	retq   

0000000000401aea <sigalrm_handler>:
  401aea:	50                   	push   %rax
  401aeb:	58                   	pop    %rax
  401aec:	48 83 ec 08          	sub    $0x8,%rsp
  401af0:	b9 00 00 00 00       	mov    $0x0,%ecx
  401af5:	ba d8 33 40 00       	mov    $0x4033d8,%edx
  401afa:	be 01 00 00 00       	mov    $0x1,%esi
  401aff:	48 8b 3d 5a 3c 00 00 	mov    0x3c5a(%rip),%rdi        # 405760 <stderr@@GLIBC_2.2.5>
  401b06:	b8 00 00 00 00       	mov    $0x0,%eax
  401b0b:	e8 60 f6 ff ff       	callq  401170 <__fprintf_chk@plt>
  401b10:	bf 01 00 00 00       	mov    $0x1,%edi
  401b15:	e8 36 f6 ff ff       	callq  401150 <exit@plt>

0000000000401b1a <__bswap_16>:
  401b1a:	89 f8                	mov    %edi,%eax
  401b1c:	66 c1 c0 08          	rol    $0x8,%ax
  401b20:	c3                   	retq   

0000000000401b21 <rio_writen>:
  401b21:	41 55                	push   %r13
  401b23:	41 54                	push   %r12
  401b25:	55                   	push   %rbp
  401b26:	53                   	push   %rbx
  401b27:	48 83 ec 08          	sub    $0x8,%rsp
  401b2b:	41 89 fc             	mov    %edi,%r12d
  401b2e:	48 89 f5             	mov    %rsi,%rbp
  401b31:	49 89 d5             	mov    %rdx,%r13
  401b34:	48 89 d3             	mov    %rdx,%rbx
  401b37:	eb 06                	jmp    401b3f <rio_writen+0x1e>
  401b39:	48 29 c3             	sub    %rax,%rbx
  401b3c:	48 01 c5             	add    %rax,%rbp
  401b3f:	48 85 db             	test   %rbx,%rbx
  401b42:	74 24                	je     401b68 <rio_writen+0x47>
  401b44:	48 89 da             	mov    %rbx,%rdx
  401b47:	48 89 ee             	mov    %rbp,%rsi
  401b4a:	44 89 e7             	mov    %r12d,%edi
  401b4d:	e8 1e f5 ff ff       	callq  401070 <write@plt>
  401b52:	48 85 c0             	test   %rax,%rax
  401b55:	7f e2                	jg     401b39 <rio_writen+0x18>
  401b57:	e8 e4 f4 ff ff       	callq  401040 <__errno_location@plt>
  401b5c:	83 38 04             	cmpl   $0x4,(%rax)
  401b5f:	75 15                	jne    401b76 <rio_writen+0x55>
  401b61:	b8 00 00 00 00       	mov    $0x0,%eax
  401b66:	eb d1                	jmp    401b39 <rio_writen+0x18>
  401b68:	4c 89 e8             	mov    %r13,%rax
  401b6b:	48 83 c4 08          	add    $0x8,%rsp
  401b6f:	5b                   	pop    %rbx
  401b70:	5d                   	pop    %rbp
  401b71:	41 5c                	pop    %r12
  401b73:	41 5d                	pop    %r13
  401b75:	c3                   	retq   
  401b76:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401b7d:	eb ec                	jmp    401b6b <rio_writen+0x4a>

0000000000401b7f <urlencode>:
  401b7f:	41 54                	push   %r12
  401b81:	55                   	push   %rbp
  401b82:	53                   	push   %rbx
  401b83:	48 83 ec 10          	sub    $0x10,%rsp
  401b87:	48 89 fb             	mov    %rdi,%rbx
  401b8a:	48 89 f5             	mov    %rsi,%rbp
  401b8d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401b94:	b8 00 00 00 00       	mov    $0x0,%eax
  401b99:	f2 ae                	repnz scas %es:(%rdi),%al
  401b9b:	48 f7 d1             	not    %rcx
  401b9e:	8d 41 ff             	lea    -0x1(%rcx),%eax
  401ba1:	eb 0f                	jmp    401bb2 <urlencode+0x33>
  401ba3:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  401ba7:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401bab:	48 83 c3 01          	add    $0x1,%rbx
  401baf:	44 89 e0             	mov    %r12d,%eax
  401bb2:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  401bb6:	85 c0                	test   %eax,%eax
  401bb8:	0f 84 a9 00 00 00    	je     401c67 <urlencode+0xe8>
  401bbe:	44 0f b6 03          	movzbl (%rbx),%r8d
  401bc2:	41 80 f8 2a          	cmp    $0x2a,%r8b
  401bc6:	0f 94 c2             	sete   %dl
  401bc9:	41 80 f8 2d          	cmp    $0x2d,%r8b
  401bcd:	0f 94 c0             	sete   %al
  401bd0:	08 c2                	or     %al,%dl
  401bd2:	75 cf                	jne    401ba3 <urlencode+0x24>
  401bd4:	41 80 f8 2e          	cmp    $0x2e,%r8b
  401bd8:	74 c9                	je     401ba3 <urlencode+0x24>
  401bda:	41 80 f8 5f          	cmp    $0x5f,%r8b
  401bde:	74 c3                	je     401ba3 <urlencode+0x24>
  401be0:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  401be4:	3c 09                	cmp    $0x9,%al
  401be6:	76 bb                	jbe    401ba3 <urlencode+0x24>
  401be8:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  401bec:	3c 19                	cmp    $0x19,%al
  401bee:	76 b3                	jbe    401ba3 <urlencode+0x24>
  401bf0:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  401bf4:	3c 19                	cmp    $0x19,%al
  401bf6:	76 ab                	jbe    401ba3 <urlencode+0x24>
  401bf8:	41 80 f8 20          	cmp    $0x20,%r8b
  401bfc:	74 57                	je     401c55 <urlencode+0xd6>
  401bfe:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  401c02:	3c 5f                	cmp    $0x5f,%al
  401c04:	0f 96 c2             	setbe  %dl
  401c07:	41 80 f8 09          	cmp    $0x9,%r8b
  401c0b:	0f 94 c0             	sete   %al
  401c0e:	08 c2                	or     %al,%dl
  401c10:	74 50                	je     401c62 <urlencode+0xe3>
  401c12:	45 0f b6 c0          	movzbl %r8b,%r8d
  401c16:	b9 a6 34 40 00       	mov    $0x4034a6,%ecx
  401c1b:	ba 08 00 00 00       	mov    $0x8,%edx
  401c20:	be 01 00 00 00       	mov    $0x1,%esi
  401c25:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  401c2a:	b8 00 00 00 00       	mov    $0x0,%eax
  401c2f:	e8 6c f5 ff ff       	callq  4011a0 <__sprintf_chk@plt>
  401c34:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  401c39:	88 45 00             	mov    %al,0x0(%rbp)
  401c3c:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  401c41:	88 45 01             	mov    %al,0x1(%rbp)
  401c44:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  401c49:	88 45 02             	mov    %al,0x2(%rbp)
  401c4c:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  401c50:	e9 56 ff ff ff       	jmpq   401bab <urlencode+0x2c>
  401c55:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401c59:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401c5d:	e9 49 ff ff ff       	jmpq   401bab <urlencode+0x2c>
  401c62:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c67:	48 83 c4 10          	add    $0x10,%rsp
  401c6b:	5b                   	pop    %rbx
  401c6c:	5d                   	pop    %rbp
  401c6d:	41 5c                	pop    %r12
  401c6f:	c3                   	retq   

0000000000401c70 <rio_read>:
  401c70:	41 55                	push   %r13
  401c72:	41 54                	push   %r12
  401c74:	55                   	push   %rbp
  401c75:	53                   	push   %rbx
  401c76:	48 83 ec 08          	sub    $0x8,%rsp
  401c7a:	48 89 fb             	mov    %rdi,%rbx
  401c7d:	49 89 f5             	mov    %rsi,%r13
  401c80:	49 89 d4             	mov    %rdx,%r12
  401c83:	eb 17                	jmp    401c9c <rio_read+0x2c>
  401c85:	e8 b6 f3 ff ff       	callq  401040 <__errno_location@plt>
  401c8a:	83 38 04             	cmpl   $0x4,(%rax)
  401c8d:	74 0d                	je     401c9c <rio_read+0x2c>
  401c8f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401c96:	eb 55                	jmp    401ced <rio_read+0x7d>
  401c98:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  401c9c:	8b 6b 04             	mov    0x4(%rbx),%ebp
  401c9f:	85 ed                	test   %ebp,%ebp
  401ca1:	7f 23                	jg     401cc6 <rio_read+0x56>
  401ca3:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  401ca7:	8b 3b                	mov    (%rbx),%edi
  401ca9:	ba 00 20 00 00       	mov    $0x2000,%edx
  401cae:	48 89 ee             	mov    %rbp,%rsi
  401cb1:	e8 ea f3 ff ff       	callq  4010a0 <read@plt>
  401cb6:	89 43 04             	mov    %eax,0x4(%rbx)
  401cb9:	85 c0                	test   %eax,%eax
  401cbb:	78 c8                	js     401c85 <rio_read+0x15>
  401cbd:	75 d9                	jne    401c98 <rio_read+0x28>
  401cbf:	b8 00 00 00 00       	mov    $0x0,%eax
  401cc4:	eb 27                	jmp    401ced <rio_read+0x7d>
  401cc6:	48 63 c5             	movslq %ebp,%rax
  401cc9:	4c 39 e0             	cmp    %r12,%rax
  401ccc:	72 03                	jb     401cd1 <rio_read+0x61>
  401cce:	44 89 e5             	mov    %r12d,%ebp
  401cd1:	4c 63 e5             	movslq %ebp,%r12
  401cd4:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  401cd8:	4c 89 e2             	mov    %r12,%rdx
  401cdb:	4c 89 ef             	mov    %r13,%rdi
  401cde:	e8 0d f4 ff ff       	callq  4010f0 <memcpy@plt>
  401ce3:	4c 01 63 08          	add    %r12,0x8(%rbx)
  401ce7:	29 6b 04             	sub    %ebp,0x4(%rbx)
  401cea:	4c 89 e0             	mov    %r12,%rax
  401ced:	48 83 c4 08          	add    $0x8,%rsp
  401cf1:	5b                   	pop    %rbx
  401cf2:	5d                   	pop    %rbp
  401cf3:	41 5c                	pop    %r12
  401cf5:	41 5d                	pop    %r13
  401cf7:	c3                   	retq   

0000000000401cf8 <rio_readlineb>:
  401cf8:	41 55                	push   %r13
  401cfa:	41 54                	push   %r12
  401cfc:	55                   	push   %rbp
  401cfd:	53                   	push   %rbx
  401cfe:	48 83 ec 18          	sub    $0x18,%rsp
  401d02:	49 89 fd             	mov    %rdi,%r13
  401d05:	48 89 f5             	mov    %rsi,%rbp
  401d08:	49 89 d4             	mov    %rdx,%r12
  401d0b:	bb 01 00 00 00       	mov    $0x1,%ebx
  401d10:	eb 16                	jmp    401d28 <rio_readlineb+0x30>
  401d12:	85 c0                	test   %eax,%eax
  401d14:	75 56                	jne    401d6c <rio_readlineb+0x74>
  401d16:	83 fb 01             	cmp    $0x1,%ebx
  401d19:	75 3f                	jne    401d5a <rio_readlineb+0x62>
  401d1b:	b8 00 00 00 00       	mov    $0x0,%eax
  401d20:	eb 3f                	jmp    401d61 <rio_readlineb+0x69>
  401d22:	83 c3 01             	add    $0x1,%ebx
  401d25:	48 89 d5             	mov    %rdx,%rbp
  401d28:	48 63 c3             	movslq %ebx,%rax
  401d2b:	4c 39 e0             	cmp    %r12,%rax
  401d2e:	73 2a                	jae    401d5a <rio_readlineb+0x62>
  401d30:	ba 01 00 00 00       	mov    $0x1,%edx
  401d35:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  401d3a:	4c 89 ef             	mov    %r13,%rdi
  401d3d:	e8 2e ff ff ff       	callq  401c70 <rio_read>
  401d42:	83 f8 01             	cmp    $0x1,%eax
  401d45:	75 cb                	jne    401d12 <rio_readlineb+0x1a>
  401d47:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  401d4b:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  401d50:	88 45 00             	mov    %al,0x0(%rbp)
  401d53:	3c 0a                	cmp    $0xa,%al
  401d55:	75 cb                	jne    401d22 <rio_readlineb+0x2a>
  401d57:	48 89 d5             	mov    %rdx,%rbp
  401d5a:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  401d5e:	48 63 c3             	movslq %ebx,%rax
  401d61:	48 83 c4 18          	add    $0x18,%rsp
  401d65:	5b                   	pop    %rbx
  401d66:	5d                   	pop    %rbp
  401d67:	41 5c                	pop    %r12
  401d69:	41 5d                	pop    %r13
  401d6b:	c3                   	retq   
  401d6c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401d73:	eb ec                	jmp    401d61 <rio_readlineb+0x69>

0000000000401d75 <submitr>:
  401d75:	41 57                	push   %r15
  401d77:	41 56                	push   %r14
  401d79:	41 55                	push   %r13
  401d7b:	41 54                	push   %r12
  401d7d:	55                   	push   %rbp
  401d7e:	53                   	push   %rbx
  401d7f:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  401d86:	ff 
  401d87:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  401d8e:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  401d93:	4c 39 dc             	cmp    %r11,%rsp
  401d96:	75 ef                	jne    401d87 <submitr+0x12>
  401d98:	48 83 ec 48          	sub    $0x48,%rsp
  401d9c:	48 89 3c 24          	mov    %rdi,(%rsp)
  401da0:	89 74 24 0c          	mov    %esi,0xc(%rsp)
  401da4:	49 89 d4             	mov    %rdx,%r12
  401da7:	49 89 cd             	mov    %rcx,%r13
  401daa:	4d 89 c6             	mov    %r8,%r14
  401dad:	4c 89 cd             	mov    %r9,%rbp
  401db0:	4c 8b bc 24 80 a0 00 	mov    0xa080(%rsp),%r15
  401db7:	00 
  401db8:	c7 84 24 1c 20 00 00 	movl   $0x0,0x201c(%rsp)
  401dbf:	00 00 00 00 
  401dc3:	ba 00 00 00 00       	mov    $0x0,%edx
  401dc8:	be 01 00 00 00       	mov    $0x1,%esi
  401dcd:	bf 02 00 00 00       	mov    $0x2,%edi
  401dd2:	e8 d9 f3 ff ff       	callq  4011b0 <socket@plt>
  401dd7:	85 c0                	test   %eax,%eax
  401dd9:	0f 88 8d 02 00 00    	js     40206c <submitr+0x2f7>
  401ddf:	89 c3                	mov    %eax,%ebx
  401de1:	48 8b 3c 24          	mov    (%rsp),%rdi
  401de5:	e8 e6 f2 ff ff       	callq  4010d0 <gethostbyname@plt>
  401dea:	48 85 c0             	test   %rax,%rax
  401ded:	0f 84 c9 02 00 00    	je     4020bc <submitr+0x347>
  401df3:	48 c7 84 24 30 a0 00 	movq   $0x0,0xa030(%rsp)
  401dfa:	00 00 00 00 00 
  401dff:	48 c7 84 24 38 a0 00 	movq   $0x0,0xa038(%rsp)
  401e06:	00 00 00 00 00 
  401e0b:	66 c7 84 24 30 a0 00 	movw   $0x2,0xa030(%rsp)
  401e12:	00 02 00 
  401e15:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401e19:	48 8b 40 18          	mov    0x18(%rax),%rax
  401e1d:	48 8b 30             	mov    (%rax),%rsi
  401e20:	b9 0c 00 00 00       	mov    $0xc,%ecx
  401e25:	48 8d bc 24 34 a0 00 	lea    0xa034(%rsp),%rdi
  401e2c:	00 
  401e2d:	e8 ae f2 ff ff       	callq  4010e0 <__memmove_chk@plt>
  401e32:	0f b7 7c 24 0c       	movzwl 0xc(%rsp),%edi
  401e37:	e8 de fc ff ff       	callq  401b1a <__bswap_16>
  401e3c:	66 89 84 24 32 a0 00 	mov    %ax,0xa032(%rsp)
  401e43:	00 
  401e44:	ba 10 00 00 00       	mov    $0x10,%edx
  401e49:	48 8d b4 24 30 a0 00 	lea    0xa030(%rsp),%rsi
  401e50:	00 
  401e51:	89 df                	mov    %ebx,%edi
  401e53:	e8 08 f3 ff ff       	callq  401160 <connect@plt>
  401e58:	85 c0                	test   %eax,%eax
  401e5a:	0f 88 c6 02 00 00    	js     402126 <submitr+0x3b1>
  401e60:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  401e67:	b8 00 00 00 00       	mov    $0x0,%eax
  401e6c:	48 89 f1             	mov    %rsi,%rcx
  401e6f:	48 89 ef             	mov    %rbp,%rdi
  401e72:	f2 ae                	repnz scas %es:(%rdi),%al
  401e74:	48 89 ca             	mov    %rcx,%rdx
  401e77:	48 f7 d2             	not    %rdx
  401e7a:	48 89 f1             	mov    %rsi,%rcx
  401e7d:	4c 89 e7             	mov    %r12,%rdi
  401e80:	f2 ae                	repnz scas %es:(%rdi),%al
  401e82:	48 f7 d1             	not    %rcx
  401e85:	49 89 c8             	mov    %rcx,%r8
  401e88:	48 89 f1             	mov    %rsi,%rcx
  401e8b:	4c 89 ef             	mov    %r13,%rdi
  401e8e:	f2 ae                	repnz scas %es:(%rdi),%al
  401e90:	48 f7 d1             	not    %rcx
  401e93:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  401e98:	48 89 f1             	mov    %rsi,%rcx
  401e9b:	4c 89 f7             	mov    %r14,%rdi
  401e9e:	f2 ae                	repnz scas %es:(%rdi),%al
  401ea0:	48 89 c8             	mov    %rcx,%rax
  401ea3:	48 f7 d0             	not    %rax
  401ea6:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  401eab:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  401eb0:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  401eb7:	00 
  401eb8:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401ebe:	0f 87 be 02 00 00    	ja     402182 <submitr+0x40d>
  401ec4:	48 8d b4 24 20 40 00 	lea    0x4020(%rsp),%rsi
  401ecb:	00 
  401ecc:	b9 00 04 00 00       	mov    $0x400,%ecx
  401ed1:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed6:	48 89 f7             	mov    %rsi,%rdi
  401ed9:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401edc:	48 89 ef             	mov    %rbp,%rdi
  401edf:	e8 9b fc ff ff       	callq  401b7f <urlencode>
  401ee4:	85 c0                	test   %eax,%eax
  401ee6:	0f 88 08 03 00 00    	js     4021f4 <submitr+0x47f>
  401eec:	48 8d ac 24 20 60 00 	lea    0x6020(%rsp),%rbp
  401ef3:	00 
  401ef4:	48 8d 84 24 20 40 00 	lea    0x4020(%rsp),%rax
  401efb:	00 
  401efc:	50                   	push   %rax
  401efd:	41 56                	push   %r14
  401eff:	4d 89 e9             	mov    %r13,%r9
  401f02:	4d 89 e0             	mov    %r12,%r8
  401f05:	b9 00 34 40 00       	mov    $0x403400,%ecx
  401f0a:	ba 00 20 00 00       	mov    $0x2000,%edx
  401f0f:	be 01 00 00 00       	mov    $0x1,%esi
  401f14:	48 89 ef             	mov    %rbp,%rdi
  401f17:	b8 00 00 00 00       	mov    $0x0,%eax
  401f1c:	e8 7f f2 ff ff       	callq  4011a0 <__sprintf_chk@plt>
  401f21:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401f28:	b8 00 00 00 00       	mov    $0x0,%eax
  401f2d:	48 89 ef             	mov    %rbp,%rdi
  401f30:	f2 ae                	repnz scas %es:(%rdi),%al
  401f32:	48 f7 d1             	not    %rcx
  401f35:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  401f39:	48 89 ee             	mov    %rbp,%rsi
  401f3c:	89 df                	mov    %ebx,%edi
  401f3e:	e8 de fb ff ff       	callq  401b21 <rio_writen>
  401f43:	48 83 c4 10          	add    $0x10,%rsp
  401f47:	48 85 c0             	test   %rax,%rax
  401f4a:	0f 88 30 03 00 00    	js     402280 <submitr+0x50b>
  401f50:	89 de                	mov    %ebx,%esi
  401f52:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  401f59:	00 
  401f5a:	e8 79 fb ff ff       	callq  401ad8 <rio_readinitb>
  401f5f:	ba 00 20 00 00       	mov    $0x2000,%edx
  401f64:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  401f6b:	00 
  401f6c:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  401f73:	00 
  401f74:	e8 7f fd ff ff       	callq  401cf8 <rio_readlineb>
  401f79:	48 85 c0             	test   %rax,%rax
  401f7c:	0f 8e 5c 03 00 00    	jle    4022de <submitr+0x569>
  401f82:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  401f87:	48 8d 8c 24 1c 20 00 	lea    0x201c(%rsp),%rcx
  401f8e:	00 
  401f8f:	48 8d 94 24 20 20 00 	lea    0x2020(%rsp),%rdx
  401f96:	00 
  401f97:	be ad 34 40 00       	mov    $0x4034ad,%esi
  401f9c:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  401fa3:	00 
  401fa4:	b8 00 00 00 00       	mov    $0x0,%eax
  401fa9:	e8 62 f1 ff ff       	callq  401110 <__isoc99_sscanf@plt>
  401fae:	44 8b 84 24 1c 20 00 	mov    0x201c(%rsp),%r8d
  401fb5:	00 
  401fb6:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  401fbd:	0f 85 8e 03 00 00    	jne    402351 <submitr+0x5dc>
  401fc3:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  401fca:	00 
  401fcb:	bf be 34 40 00       	mov    $0x4034be,%edi
  401fd0:	b9 03 00 00 00       	mov    $0x3,%ecx
  401fd5:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  401fd7:	0f 97 c0             	seta   %al
  401fda:	1c 00                	sbb    $0x0,%al
  401fdc:	84 c0                	test   %al,%al
  401fde:	0f 84 9e 03 00 00    	je     402382 <submitr+0x60d>
  401fe4:	ba 00 20 00 00       	mov    $0x2000,%edx
  401fe9:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  401ff0:	00 
  401ff1:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  401ff8:	00 
  401ff9:	e8 fa fc ff ff       	callq  401cf8 <rio_readlineb>
  401ffe:	48 85 c0             	test   %rax,%rax
  402001:	7f c0                	jg     401fc3 <submitr+0x24e>
  402003:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40200a:	3a 20 43 
  40200d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402014:	20 75 6e 
  402017:	49 89 07             	mov    %rax,(%r15)
  40201a:	49 89 57 08          	mov    %rdx,0x8(%r15)
  40201e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402025:	74 6f 20 
  402028:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  40202f:	68 65 61 
  402032:	49 89 47 10          	mov    %rax,0x10(%r15)
  402036:	49 89 57 18          	mov    %rdx,0x18(%r15)
  40203a:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402041:	66 72 6f 
  402044:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
  40204b:	76 65 72 
  40204e:	49 89 47 20          	mov    %rax,0x20(%r15)
  402052:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402056:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
  40205b:	89 df                	mov    %ebx,%edi
  40205d:	e8 2e f0 ff ff       	callq  401090 <close@plt>
  402062:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402067:	e9 6b 03 00 00       	jmpq   4023d7 <submitr+0x662>
  40206c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402073:	3a 20 43 
  402076:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40207d:	20 75 6e 
  402080:	49 89 07             	mov    %rax,(%r15)
  402083:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402087:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40208e:	74 6f 20 
  402091:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402098:	65 20 73 
  40209b:	49 89 47 10          	mov    %rax,0x10(%r15)
  40209f:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4020a3:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
  4020aa:	65 
  4020ab:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
  4020b2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4020b7:	e9 1b 03 00 00       	jmpq   4023d7 <submitr+0x662>
  4020bc:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4020c3:	3a 20 44 
  4020c6:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4020cd:	20 75 6e 
  4020d0:	49 89 07             	mov    %rax,(%r15)
  4020d3:	49 89 57 08          	mov    %rdx,0x8(%r15)
  4020d7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4020de:	74 6f 20 
  4020e1:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4020e8:	76 65 20 
  4020eb:	49 89 47 10          	mov    %rax,0x10(%r15)
  4020ef:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4020f3:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4020fa:	72 20 61 
  4020fd:	49 89 47 20          	mov    %rax,0x20(%r15)
  402101:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
  402108:	65 
  402109:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
  402110:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
  402115:	89 df                	mov    %ebx,%edi
  402117:	e8 74 ef ff ff       	callq  401090 <close@plt>
  40211c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402121:	e9 b1 02 00 00       	jmpq   4023d7 <submitr+0x662>
  402126:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40212d:	3a 20 55 
  402130:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402137:	20 74 6f 
  40213a:	49 89 07             	mov    %rax,(%r15)
  40213d:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402141:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402148:	65 63 74 
  40214b:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402152:	68 65 20 
  402155:	49 89 47 10          	mov    %rax,0x10(%r15)
  402159:	49 89 57 18          	mov    %rdx,0x18(%r15)
  40215d:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
  402164:	76 
  402165:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
  40216c:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
  402171:	89 df                	mov    %ebx,%edi
  402173:	e8 18 ef ff ff       	callq  401090 <close@plt>
  402178:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40217d:	e9 55 02 00 00       	jmpq   4023d7 <submitr+0x662>
  402182:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402189:	3a 20 52 
  40218c:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402193:	20 73 74 
  402196:	49 89 07             	mov    %rax,(%r15)
  402199:	49 89 57 08          	mov    %rdx,0x8(%r15)
  40219d:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4021a4:	74 6f 6f 
  4021a7:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  4021ae:	65 2e 20 
  4021b1:	49 89 47 10          	mov    %rax,0x10(%r15)
  4021b5:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4021b9:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4021c0:	61 73 65 
  4021c3:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  4021ca:	49 54 52 
  4021cd:	49 89 47 20          	mov    %rax,0x20(%r15)
  4021d1:	49 89 57 28          	mov    %rdx,0x28(%r15)
  4021d5:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4021dc:	55 46 00 
  4021df:	49 89 47 30          	mov    %rax,0x30(%r15)
  4021e3:	89 df                	mov    %ebx,%edi
  4021e5:	e8 a6 ee ff ff       	callq  401090 <close@plt>
  4021ea:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4021ef:	e9 e3 01 00 00       	jmpq   4023d7 <submitr+0x662>
  4021f4:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4021fb:	3a 20 52 
  4021fe:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402205:	20 73 74 
  402208:	49 89 07             	mov    %rax,(%r15)
  40220b:	49 89 57 08          	mov    %rdx,0x8(%r15)
  40220f:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402216:	63 6f 6e 
  402219:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402220:	20 61 6e 
  402223:	49 89 47 10          	mov    %rax,0x10(%r15)
  402227:	49 89 57 18          	mov    %rdx,0x18(%r15)
  40222b:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402232:	67 61 6c 
  402235:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  40223c:	6e 70 72 
  40223f:	49 89 47 20          	mov    %rax,0x20(%r15)
  402243:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402247:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40224e:	6c 65 20 
  402251:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402258:	63 74 65 
  40225b:	49 89 47 30          	mov    %rax,0x30(%r15)
  40225f:	49 89 57 38          	mov    %rdx,0x38(%r15)
  402263:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
  40226a:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
  40226f:	89 df                	mov    %ebx,%edi
  402271:	e8 1a ee ff ff       	callq  401090 <close@plt>
  402276:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40227b:	e9 57 01 00 00       	jmpq   4023d7 <submitr+0x662>
  402280:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402287:	3a 20 43 
  40228a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402291:	20 75 6e 
  402294:	49 89 07             	mov    %rax,(%r15)
  402297:	49 89 57 08          	mov    %rdx,0x8(%r15)
  40229b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4022a2:	74 6f 20 
  4022a5:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  4022ac:	20 74 6f 
  4022af:	49 89 47 10          	mov    %rax,0x10(%r15)
  4022b3:	49 89 57 18          	mov    %rdx,0x18(%r15)
  4022b7:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
  4022be:	73 65 72 
  4022c1:	49 89 47 20          	mov    %rax,0x20(%r15)
  4022c5:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
  4022cc:	00 
  4022cd:	89 df                	mov    %ebx,%edi
  4022cf:	e8 bc ed ff ff       	callq  401090 <close@plt>
  4022d4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022d9:	e9 f9 00 00 00       	jmpq   4023d7 <submitr+0x662>
  4022de:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4022e5:	3a 20 43 
  4022e8:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4022ef:	20 75 6e 
  4022f2:	49 89 07             	mov    %rax,(%r15)
  4022f5:	49 89 57 08          	mov    %rdx,0x8(%r15)
  4022f9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402300:	74 6f 20 
  402303:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  40230a:	66 69 72 
  40230d:	49 89 47 10          	mov    %rax,0x10(%r15)
  402311:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402315:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  40231c:	61 64 65 
  40231f:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
  402326:	6d 20 73 
  402329:	49 89 47 20          	mov    %rax,0x20(%r15)
  40232d:	49 89 57 28          	mov    %rdx,0x28(%r15)
  402331:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
  402338:	65 
  402339:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
  402340:	89 df                	mov    %ebx,%edi
  402342:	e8 49 ed ff ff       	callq  401090 <close@plt>
  402347:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40234c:	e9 86 00 00 00       	jmpq   4023d7 <submitr+0x662>
  402351:	4c 8d 4c 24 10       	lea    0x10(%rsp),%r9
  402356:	b9 50 34 40 00       	mov    $0x403450,%ecx
  40235b:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402362:	be 01 00 00 00       	mov    $0x1,%esi
  402367:	4c 89 ff             	mov    %r15,%rdi
  40236a:	b8 00 00 00 00       	mov    $0x0,%eax
  40236f:	e8 2c ee ff ff       	callq  4011a0 <__sprintf_chk@plt>
  402374:	89 df                	mov    %ebx,%edi
  402376:	e8 15 ed ff ff       	callq  401090 <close@plt>
  40237b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402380:	eb 55                	jmp    4023d7 <submitr+0x662>
  402382:	ba 00 20 00 00       	mov    $0x2000,%edx
  402387:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40238e:	00 
  40238f:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402396:	00 
  402397:	e8 5c f9 ff ff       	callq  401cf8 <rio_readlineb>
  40239c:	48 85 c0             	test   %rax,%rax
  40239f:	7e 48                	jle    4023e9 <submitr+0x674>
  4023a1:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4023a8:	00 
  4023a9:	4c 89 ff             	mov    %r15,%rdi
  4023ac:	e8 9f ec ff ff       	callq  401050 <strcpy@plt>
  4023b1:	89 df                	mov    %ebx,%edi
  4023b3:	e8 d8 ec ff ff       	callq  401090 <close@plt>
  4023b8:	bf c1 34 40 00       	mov    $0x4034c1,%edi
  4023bd:	b9 03 00 00 00       	mov    $0x3,%ecx
  4023c2:	4c 89 fe             	mov    %r15,%rsi
  4023c5:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4023c7:	0f 97 c0             	seta   %al
  4023ca:	1c 00                	sbb    $0x0,%al
  4023cc:	0f be c0             	movsbl %al,%eax
  4023cf:	85 c0                	test   %eax,%eax
  4023d1:	0f 85 84 00 00 00    	jne    40245b <submitr+0x6e6>
  4023d7:	48 81 c4 48 a0 00 00 	add    $0xa048,%rsp
  4023de:	5b                   	pop    %rbx
  4023df:	5d                   	pop    %rbp
  4023e0:	41 5c                	pop    %r12
  4023e2:	41 5d                	pop    %r13
  4023e4:	41 5e                	pop    %r14
  4023e6:	41 5f                	pop    %r15
  4023e8:	c3                   	retq   
  4023e9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4023f0:	3a 20 43 
  4023f3:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4023fa:	20 75 6e 
  4023fd:	49 89 07             	mov    %rax,(%r15)
  402400:	49 89 57 08          	mov    %rdx,0x8(%r15)
  402404:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40240b:	74 6f 20 
  40240e:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402415:	73 74 61 
  402418:	49 89 47 10          	mov    %rax,0x10(%r15)
  40241c:	49 89 57 18          	mov    %rdx,0x18(%r15)
  402420:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402427:	65 73 73 
  40242a:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402431:	72 6f 6d 
  402434:	49 89 47 20          	mov    %rax,0x20(%r15)
  402438:	49 89 57 28          	mov    %rdx,0x28(%r15)
  40243c:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  402443:	65 72 00 
  402446:	49 89 47 30          	mov    %rax,0x30(%r15)
  40244a:	89 df                	mov    %ebx,%edi
  40244c:	e8 3f ec ff ff       	callq  401090 <close@plt>
  402451:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402456:	e9 7c ff ff ff       	jmpq   4023d7 <submitr+0x662>
  40245b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402460:	e9 72 ff ff ff       	jmpq   4023d7 <submitr+0x662>

0000000000402465 <init_timeout>:
  402465:	85 ff                	test   %edi,%edi
  402467:	74 24                	je     40248d <init_timeout+0x28>
  402469:	53                   	push   %rbx
  40246a:	89 fb                	mov    %edi,%ebx
  40246c:	78 18                	js     402486 <init_timeout+0x21>
  40246e:	be ea 1a 40 00       	mov    $0x401aea,%esi
  402473:	bf 0e 00 00 00       	mov    $0xe,%edi
  402478:	e8 43 ec ff ff       	callq  4010c0 <signal@plt>
  40247d:	89 df                	mov    %ebx,%edi
  40247f:	e8 fc eb ff ff       	callq  401080 <alarm@plt>
  402484:	5b                   	pop    %rbx
  402485:	c3                   	retq   
  402486:	bb 00 00 00 00       	mov    $0x0,%ebx
  40248b:	eb e1                	jmp    40246e <init_timeout+0x9>
  40248d:	c3                   	retq   

000000000040248e <init_driver>:
  40248e:	55                   	push   %rbp
  40248f:	53                   	push   %rbx
  402490:	48 83 ec 18          	sub    $0x18,%rsp
  402494:	48 89 fd             	mov    %rdi,%rbp
  402497:	be 01 00 00 00       	mov    $0x1,%esi
  40249c:	bf 0d 00 00 00       	mov    $0xd,%edi
  4024a1:	e8 1a ec ff ff       	callq  4010c0 <signal@plt>
  4024a6:	be 01 00 00 00       	mov    $0x1,%esi
  4024ab:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4024b0:	e8 0b ec ff ff       	callq  4010c0 <signal@plt>
  4024b5:	be 01 00 00 00       	mov    $0x1,%esi
  4024ba:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4024bf:	e8 fc eb ff ff       	callq  4010c0 <signal@plt>
  4024c4:	ba 00 00 00 00       	mov    $0x0,%edx
  4024c9:	be 01 00 00 00       	mov    $0x1,%esi
  4024ce:	bf 02 00 00 00       	mov    $0x2,%edi
  4024d3:	e8 d8 ec ff ff       	callq  4011b0 <socket@plt>
  4024d8:	85 c0                	test   %eax,%eax
  4024da:	0f 88 89 00 00 00    	js     402569 <init_driver+0xdb>
  4024e0:	89 c3                	mov    %eax,%ebx
  4024e2:	bf c4 34 40 00       	mov    $0x4034c4,%edi
  4024e7:	e8 e4 eb ff ff       	callq  4010d0 <gethostbyname@plt>
  4024ec:	48 85 c0             	test   %rax,%rax
  4024ef:	0f 84 c0 00 00 00    	je     4025b5 <init_driver+0x127>
  4024f5:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  4024fc:	00 
  4024fd:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402504:	00 00 
  402506:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  40250c:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402510:	48 8b 40 18          	mov    0x18(%rax),%rax
  402514:	48 8b 30             	mov    (%rax),%rsi
  402517:	b9 0c 00 00 00       	mov    $0xc,%ecx
  40251c:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402521:	e8 ba eb ff ff       	callq  4010e0 <__memmove_chk@plt>
  402526:	bf 6e 3b 00 00       	mov    $0x3b6e,%edi
  40252b:	e8 ea f5 ff ff       	callq  401b1a <__bswap_16>
  402530:	66 89 44 24 02       	mov    %ax,0x2(%rsp)
  402535:	ba 10 00 00 00       	mov    $0x10,%edx
  40253a:	48 89 e6             	mov    %rsp,%rsi
  40253d:	89 df                	mov    %ebx,%edi
  40253f:	e8 1c ec ff ff       	callq  401160 <connect@plt>
  402544:	85 c0                	test   %eax,%eax
  402546:	0f 88 d1 00 00 00    	js     40261d <init_driver+0x18f>
  40254c:	89 df                	mov    %ebx,%edi
  40254e:	e8 3d eb ff ff       	callq  401090 <close@plt>
  402553:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402559:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  40255d:	b8 00 00 00 00       	mov    $0x0,%eax
  402562:	48 83 c4 18          	add    $0x18,%rsp
  402566:	5b                   	pop    %rbx
  402567:	5d                   	pop    %rbp
  402568:	c3                   	retq   
  402569:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402570:	3a 20 43 
  402573:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40257a:	20 75 6e 
  40257d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402581:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402585:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40258c:	74 6f 20 
  40258f:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402596:	65 20 73 
  402599:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40259d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4025a1:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4025a8:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4025ae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025b3:	eb ad                	jmp    402562 <init_driver+0xd4>
  4025b5:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4025bc:	3a 20 44 
  4025bf:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4025c6:	20 75 6e 
  4025c9:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4025cd:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4025d1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4025d8:	74 6f 20 
  4025db:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4025e2:	76 65 20 
  4025e5:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4025e9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4025ed:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4025f4:	72 20 61 
  4025f7:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4025fb:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402602:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402608:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  40260c:	89 df                	mov    %ebx,%edi
  40260e:	e8 7d ea ff ff       	callq  401090 <close@plt>
  402613:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402618:	e9 45 ff ff ff       	jmpq   402562 <init_driver+0xd4>
  40261d:	41 b8 c4 34 40 00    	mov    $0x4034c4,%r8d
  402623:	b9 80 34 40 00       	mov    $0x403480,%ecx
  402628:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40262f:	be 01 00 00 00       	mov    $0x1,%esi
  402634:	48 89 ef             	mov    %rbp,%rdi
  402637:	b8 00 00 00 00       	mov    $0x0,%eax
  40263c:	e8 5f eb ff ff       	callq  4011a0 <__sprintf_chk@plt>
  402641:	89 df                	mov    %ebx,%edi
  402643:	e8 48 ea ff ff       	callq  401090 <close@plt>
  402648:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40264d:	e9 10 ff ff ff       	jmpq   402562 <init_driver+0xd4>

0000000000402652 <driver_post>:
  402652:	53                   	push   %rbx
  402653:	48 89 cb             	mov    %rcx,%rbx
  402656:	85 d2                	test   %edx,%edx
  402658:	75 17                	jne    402671 <driver_post+0x1f>
  40265a:	48 85 ff             	test   %rdi,%rdi
  40265d:	74 05                	je     402664 <driver_post+0x12>
  40265f:	80 3f 00             	cmpb   $0x0,(%rdi)
  402662:	75 34                	jne    402698 <driver_post+0x46>
  402664:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402669:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40266d:	89 d0                	mov    %edx,%eax
  40266f:	5b                   	pop    %rbx
  402670:	c3                   	retq   
  402671:	48 89 f2             	mov    %rsi,%rdx
  402674:	be ce 34 40 00       	mov    $0x4034ce,%esi
  402679:	bf 01 00 00 00       	mov    $0x1,%edi
  40267e:	b8 00 00 00 00       	mov    $0x0,%eax
  402683:	e8 98 ea ff ff       	callq  401120 <__printf_chk@plt>
  402688:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40268d:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402691:	b8 00 00 00 00       	mov    $0x0,%eax
  402696:	eb d7                	jmp    40266f <driver_post+0x1d>
  402698:	48 83 ec 08          	sub    $0x8,%rsp
  40269c:	51                   	push   %rcx
  40269d:	49 89 f1             	mov    %rsi,%r9
  4026a0:	41 b8 e5 34 40 00    	mov    $0x4034e5,%r8d
  4026a6:	48 89 f9             	mov    %rdi,%rcx
  4026a9:	ba f1 34 40 00       	mov    $0x4034f1,%edx
  4026ae:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
  4026b3:	bf c4 34 40 00       	mov    $0x4034c4,%edi
  4026b8:	e8 b8 f6 ff ff       	callq  401d75 <submitr>
  4026bd:	48 83 c4 10          	add    $0x10,%rsp
  4026c1:	eb ac                	jmp    40266f <driver_post+0x1d>
  4026c3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4026ca:	00 00 00 
  4026cd:	0f 1f 00             	nopl   (%rax)

00000000004026d0 <__libc_csu_init>:
  4026d0:	f3 0f 1e fa          	endbr64 
  4026d4:	41 57                	push   %r15
  4026d6:	4c 8d 3d 33 27 00 00 	lea    0x2733(%rip),%r15        # 404e10 <__frame_dummy_init_array_entry>
  4026dd:	41 56                	push   %r14
  4026df:	49 89 d6             	mov    %rdx,%r14
  4026e2:	41 55                	push   %r13
  4026e4:	49 89 f5             	mov    %rsi,%r13
  4026e7:	41 54                	push   %r12
  4026e9:	41 89 fc             	mov    %edi,%r12d
  4026ec:	55                   	push   %rbp
  4026ed:	48 8d 2d 24 27 00 00 	lea    0x2724(%rip),%rbp        # 404e18 <__do_global_dtors_aux_fini_array_entry>
  4026f4:	53                   	push   %rbx
  4026f5:	4c 29 fd             	sub    %r15,%rbp
  4026f8:	48 83 ec 08          	sub    $0x8,%rsp
  4026fc:	e8 ff e8 ff ff       	callq  401000 <_init>
  402701:	48 c1 fd 03          	sar    $0x3,%rbp
  402705:	74 1f                	je     402726 <__libc_csu_init+0x56>
  402707:	31 db                	xor    %ebx,%ebx
  402709:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402710:	4c 89 f2             	mov    %r14,%rdx
  402713:	4c 89 ee             	mov    %r13,%rsi
  402716:	44 89 e7             	mov    %r12d,%edi
  402719:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  40271d:	48 83 c3 01          	add    $0x1,%rbx
  402721:	48 39 dd             	cmp    %rbx,%rbp
  402724:	75 ea                	jne    402710 <__libc_csu_init+0x40>
  402726:	48 83 c4 08          	add    $0x8,%rsp
  40272a:	5b                   	pop    %rbx
  40272b:	5d                   	pop    %rbp
  40272c:	41 5c                	pop    %r12
  40272e:	41 5d                	pop    %r13
  402730:	41 5e                	pop    %r14
  402732:	41 5f                	pop    %r15
  402734:	c3                   	retq   
  402735:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40273c:	00 00 00 00 

0000000000402740 <__libc_csu_fini>:
  402740:	f3 0f 1e fa          	endbr64 
  402744:	c3                   	retq   

Disassembly of section .fini:

0000000000402748 <_fini>:
  402748:	f3 0f 1e fa          	endbr64 
  40274c:	48 83 ec 08          	sub    $0x8,%rsp
  402750:	48 83 c4 08          	add    $0x8,%rsp
  402754:	c3                   	retq   
