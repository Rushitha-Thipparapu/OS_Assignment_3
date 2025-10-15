
_test:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e50b0008 	str	r0, [fp, #-8]
      10:	e50b100c 	str	r1, [fp, #-12]
      14:	eb00003a 	bl	104 <print_pt>
      18:	eb000065 	bl	1b4 <ugetpid_test>
      1c:	eb000091 	bl	268 <print_kpt>
      20:	eb0000f2 	bl	3f0 <superpg_test>
      24:	e59f1008 	ldr	r1, [pc, #8]	@ 34 <main+0x34>
      28:	e3a00001 	mov	r0, #1
      2c:	eb000392 	bl	e7c <printf>
      30:	eb000266 	bl	9d0 <exit>
      34:	00001538 	.word	0x00001538

00000038 <err>:
      38:	e92d4810 	push	{r4, fp, lr}
      3c:	e28db008 	add	fp, sp, #8
      40:	e24dd014 	sub	sp, sp, #20
      44:	e50b0010 	str	r0, [fp, #-16]
      48:	e59f3024 	ldr	r3, [pc, #36]	@ 74 <err+0x3c>
      4c:	e5934000 	ldr	r4, [r3]
      50:	eb0002ee 	bl	c10 <getpid>
      54:	e1a03000 	mov	r3, r0
      58:	e58d3000 	str	r3, [sp]
      5c:	e51b3010 	ldr	r3, [fp, #-16]
      60:	e1a02004 	mov	r2, r4
      64:	e59f100c 	ldr	r1, [pc, #12]	@ 78 <err+0x40>
      68:	e3a00001 	mov	r0, #1
      6c:	eb000382 	bl	e7c <printf>
      70:	eb000256 	bl	9d0 <exit>
      74:	000016cc 	.word	0x000016cc
      78:	0000155c 	.word	0x0000155c

0000007c <print_pte>:
      7c:	e92d4800 	push	{fp, lr}
      80:	e28db004 	add	fp, sp, #4
      84:	e24dd018 	sub	sp, sp, #24
      88:	e50b0010 	str	r0, [fp, #-16]
      8c:	e51b3010 	ldr	r3, [fp, #-16]
      90:	e1a00003 	mov	r0, r3
      94:	eb000301 	bl	ca0 <pgpte>
      98:	e1a03000 	mov	r3, r0
      9c:	e50b3008 	str	r3, [fp, #-8]
      a0:	e51b3008 	ldr	r3, [fp, #-8]
      a4:	e3530000 	cmp	r3, #0
      a8:	1a000004 	bne	c0 <print_pte+0x44>
      ac:	e51b2010 	ldr	r2, [fp, #-16]
      b0:	e59f1044 	ldr	r1, [pc, #68]	@ fc <print_pte+0x80>
      b4:	e3a00001 	mov	r0, #1
      b8:	eb00036f 	bl	e7c <printf>
      bc:	ea00000c 	b	f4 <print_pte+0x78>
      c0:	e51b3008 	ldr	r3, [fp, #-8]
      c4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
      c8:	e3c3300f 	bic	r3, r3, #15
      cc:	e51b2008 	ldr	r2, [fp, #-8]
      d0:	e1a02222 	lsr	r2, r2, #4
      d4:	e2022003 	and	r2, r2, #3
      d8:	e58d2004 	str	r2, [sp, #4]
      dc:	e58d3000 	str	r3, [sp]
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e51b2010 	ldr	r2, [fp, #-16]
      e8:	e59f1010 	ldr	r1, [pc, #16]	@ 100 <print_pte+0x84>
      ec:	e3a00001 	mov	r0, #1
      f0:	eb000361 	bl	e7c <printf>
      f4:	e24bd004 	sub	sp, fp, #4
      f8:	e8bd8800 	pop	{fp, pc}
      fc:	0000157c 	.word	0x0000157c
     100:	00001590 	.word	0x00001590

00000104 <print_pt>:
     104:	e92d4800 	push	{fp, lr}
     108:	e28db004 	add	fp, sp, #4
     10c:	e24dd010 	sub	sp, sp, #16
     110:	e59f1094 	ldr	r1, [pc, #148]	@ 1ac <print_pt+0xa8>
     114:	e3a00001 	mov	r0, #1
     118:	eb000357 	bl	e7c <printf>
     11c:	e3a03000 	mov	r3, #0
     120:	e50b3008 	str	r3, [fp, #-8]
     124:	ea000006 	b	144 <print_pt+0x40>
     128:	e51b3008 	ldr	r3, [fp, #-8]
     12c:	e1a03603 	lsl	r3, r3, #12
     130:	e1a00003 	mov	r0, r3
     134:	ebffffd0 	bl	7c <print_pte>
     138:	e51b3008 	ldr	r3, [fp, #-8]
     13c:	e2833001 	add	r3, r3, #1
     140:	e50b3008 	str	r3, [fp, #-8]
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e3530009 	cmp	r3, #9
     14c:	9afffff5 	bls	128 <print_pt+0x24>
     150:	e3a03801 	mov	r3, #65536	@ 0x10000
     154:	e50b3010 	str	r3, [fp, #-16]
     158:	e51b3010 	ldr	r3, [fp, #-16]
     15c:	e243300a 	sub	r3, r3, #10
     160:	e50b300c 	str	r3, [fp, #-12]
     164:	ea000006 	b	184 <print_pt+0x80>
     168:	e51b300c 	ldr	r3, [fp, #-12]
     16c:	e1a03603 	lsl	r3, r3, #12
     170:	e1a00003 	mov	r0, r3
     174:	ebffffc0 	bl	7c <print_pte>
     178:	e51b300c 	ldr	r3, [fp, #-12]
     17c:	e2833001 	add	r3, r3, #1
     180:	e50b300c 	str	r3, [fp, #-12]
     184:	e51b200c 	ldr	r2, [fp, #-12]
     188:	e51b3010 	ldr	r3, [fp, #-16]
     18c:	e1520003 	cmp	r2, r3
     190:	3afffff4 	bcc	168 <print_pt+0x64>
     194:	e59f1014 	ldr	r1, [pc, #20]	@ 1b0 <print_pt+0xac>
     198:	e3a00001 	mov	r0, #1
     19c:	eb000336 	bl	e7c <printf>
     1a0:	e1a00000 	nop			@ (mov r0, r0)
     1a4:	e24bd004 	sub	sp, fp, #4
     1a8:	e8bd8800 	pop	{fp, pc}
     1ac:	000015b0 	.word	0x000015b0
     1b0:	000015c4 	.word	0x000015c4

000001b4 <ugetpid_test>:
     1b4:	e92d4810 	push	{r4, fp, lr}
     1b8:	e28db008 	add	fp, sp, #8
     1bc:	e24dd00c 	sub	sp, sp, #12
     1c0:	e59f108c 	ldr	r1, [pc, #140]	@ 254 <ugetpid_test+0xa0>
     1c4:	e3a00001 	mov	r0, #1
     1c8:	eb00032b 	bl	e7c <printf>
     1cc:	e59f3084 	ldr	r3, [pc, #132]	@ 258 <ugetpid_test+0xa4>
     1d0:	e59f2084 	ldr	r2, [pc, #132]	@ 25c <ugetpid_test+0xa8>
     1d4:	e5832000 	str	r2, [r3]
     1d8:	e3a03000 	mov	r3, #0
     1dc:	e50b3010 	str	r3, [fp, #-16]
     1e0:	ea000012 	b	230 <ugetpid_test+0x7c>
     1e4:	eb0001f0 	bl	9ac <fork>
     1e8:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     1ec:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     1f0:	e3530000 	cmp	r3, #0
     1f4:	0a000001 	beq	200 <ugetpid_test+0x4c>
     1f8:	eb0001fd 	bl	9f4 <wait>
     1fc:	ea000008 	b	224 <ugetpid_test+0x70>
     200:	eb000282 	bl	c10 <getpid>
     204:	e1a04000 	mov	r4, r0
     208:	eb0002b6 	bl	ce8 <ugetpid>
     20c:	e1a03000 	mov	r3, r0
     210:	e1540003 	cmp	r4, r3
     214:	0a000001 	beq	220 <ugetpid_test+0x6c>
     218:	e59f0040 	ldr	r0, [pc, #64]	@ 260 <ugetpid_test+0xac>
     21c:	ebffff85 	bl	38 <err>
     220:	eb0001ea 	bl	9d0 <exit>
     224:	e51b3010 	ldr	r3, [fp, #-16]
     228:	e2833001 	add	r3, r3, #1
     22c:	e50b3010 	str	r3, [fp, #-16]
     230:	e51b3010 	ldr	r3, [fp, #-16]
     234:	e353003f 	cmp	r3, #63	@ 0x3f
     238:	daffffe9 	ble	1e4 <ugetpid_test+0x30>
     23c:	e59f1020 	ldr	r1, [pc, #32]	@ 264 <ugetpid_test+0xb0>
     240:	e3a00001 	mov	r0, #1
     244:	eb00030c 	bl	e7c <printf>
     248:	e1a00000 	nop			@ (mov r0, r0)
     24c:	e24bd008 	sub	sp, fp, #8
     250:	e8bd8810 	pop	{r4, fp, pc}
     254:	000015d4 	.word	0x000015d4
     258:	000016cc 	.word	0x000016cc
     25c:	000015ec 	.word	0x000015ec
     260:	000015fc 	.word	0x000015fc
     264:	0000160c 	.word	0x0000160c

00000268 <print_kpt>:
     268:	e92d4800 	push	{fp, lr}
     26c:	e28db004 	add	fp, sp, #4
     270:	e59f101c 	ldr	r1, [pc, #28]	@ 294 <print_kpt+0x2c>
     274:	e3a00001 	mov	r0, #1
     278:	eb0002ff 	bl	e7c <printf>
     27c:	eb000290 	bl	cc4 <kpt>
     280:	e59f1010 	ldr	r1, [pc, #16]	@ 298 <print_kpt+0x30>
     284:	e3a00001 	mov	r0, #1
     288:	eb0002fb 	bl	e7c <printf>
     28c:	e1a00000 	nop			@ (mov r0, r0)
     290:	e8bd8800 	pop	{fp, pc}
     294:	00001620 	.word	0x00001620
     298:	00001634 	.word	0x00001634

0000029c <supercheck>:
     29c:	e92d4800 	push	{fp, lr}
     2a0:	e28db004 	add	fp, sp, #4
     2a4:	e24dd020 	sub	sp, sp, #32
     2a8:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
     2ac:	e3a03000 	mov	r3, #0
     2b0:	e50b3008 	str	r3, [fp, #-8]
     2b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e50b300c 	str	r3, [fp, #-12]
     2bc:	ea00001d 	b	338 <supercheck+0x9c>
     2c0:	e51b300c 	ldr	r3, [fp, #-12]
     2c4:	e1a00003 	mov	r0, r3
     2c8:	eb000274 	bl	ca0 <pgpte>
     2cc:	e1a03000 	mov	r3, r0
     2d0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     2d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2d8:	e3530000 	cmp	r3, #0
     2dc:	1a000001 	bne	2e8 <supercheck+0x4c>
     2e0:	e59f00f8 	ldr	r0, [pc, #248]	@ 3e0 <supercheck+0x144>
     2e4:	ebffff53 	bl	38 <err>
     2e8:	e51b3008 	ldr	r3, [fp, #-8]
     2ec:	e3530000 	cmp	r3, #0
     2f0:	0a000005 	beq	30c <supercheck+0x70>
     2f4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     2f8:	e51b3008 	ldr	r3, [fp, #-8]
     2fc:	e1520003 	cmp	r2, r3
     300:	0a000001 	beq	30c <supercheck+0x70>
     304:	e59f00d8 	ldr	r0, [pc, #216]	@ 3e4 <supercheck+0x148>
     308:	ebffff4a 	bl	38 <err>
     30c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     310:	e2033002 	and	r3, r3, #2
     314:	e3530000 	cmp	r3, #0
     318:	1a000001 	bne	324 <supercheck+0x88>
     31c:	e59f00c4 	ldr	r0, [pc, #196]	@ 3e8 <supercheck+0x14c>
     320:	ebffff44 	bl	38 <err>
     324:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     328:	e50b3008 	str	r3, [fp, #-8]
     32c:	e51b300c 	ldr	r3, [fp, #-12]
     330:	e2833a01 	add	r3, r3, #4096	@ 0x1000
     334:	e50b300c 	str	r3, [fp, #-12]
     338:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     33c:	e2833602 	add	r3, r3, #2097152	@ 0x200000
     340:	e51b200c 	ldr	r2, [fp, #-12]
     344:	e1520003 	cmp	r2, r3
     348:	3affffdc 	bcc	2c0 <supercheck+0x24>
     34c:	e3a03000 	mov	r3, #0
     350:	e50b3010 	str	r3, [fp, #-16]
     354:	ea000008 	b	37c <supercheck+0xe0>
     358:	e51b2010 	ldr	r2, [fp, #-16]
     35c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     360:	e0823003 	add	r3, r2, r3
     364:	e1a02003 	mov	r2, r3
     368:	e51b3010 	ldr	r3, [fp, #-16]
     36c:	e5823000 	str	r3, [r2]
     370:	e51b3010 	ldr	r3, [fp, #-16]
     374:	e2833a01 	add	r3, r3, #4096	@ 0x1000
     378:	e50b3010 	str	r3, [fp, #-16]
     37c:	e51b3010 	ldr	r3, [fp, #-16]
     380:	e3530c02 	cmp	r3, #512	@ 0x200
     384:	bafffff3 	blt	358 <supercheck+0xbc>
     388:	e3a03000 	mov	r3, #0
     38c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     390:	ea00000b 	b	3c4 <supercheck+0x128>
     394:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     398:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     39c:	e0823003 	add	r3, r2, r3
     3a0:	e5933000 	ldr	r3, [r3]
     3a4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3a8:	e1520003 	cmp	r2, r3
     3ac:	0a000001 	beq	3b8 <supercheck+0x11c>
     3b0:	e59f0034 	ldr	r0, [pc, #52]	@ 3ec <supercheck+0x150>
     3b4:	ebffff1f 	bl	38 <err>
     3b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     3bc:	e2833a01 	add	r3, r3, #4096	@ 0x1000
     3c0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3c4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     3c8:	e3530c02 	cmp	r3, #512	@ 0x200
     3cc:	bafffff0 	blt	394 <supercheck+0xf8>
     3d0:	e1a00000 	nop			@ (mov r0, r0)
     3d4:	e1a00000 	nop			@ (mov r0, r0)
     3d8:	e24bd004 	sub	sp, fp, #4
     3dc:	e8bd8800 	pop	{fp, pc}
     3e0:	00001644 	.word	0x00001644
     3e4:	0000164c 	.word	0x0000164c
     3e8:	0000165c 	.word	0x0000165c
     3ec:	00001668 	.word	0x00001668

000003f0 <superpg_test>:
     3f0:	e92d4800 	push	{fp, lr}
     3f4:	e28db004 	add	fp, sp, #4
     3f8:	e24dd010 	sub	sp, sp, #16
     3fc:	e59f10b8 	ldr	r1, [pc, #184]	@ 4bc <superpg_test+0xcc>
     400:	e3a00001 	mov	r0, #1
     404:	eb00029c 	bl	e7c <printf>
     408:	e59f30b0 	ldr	r3, [pc, #176]	@ 4c0 <superpg_test+0xd0>
     40c:	e59f20b0 	ldr	r2, [pc, #176]	@ 4c4 <superpg_test+0xd4>
     410:	e5832000 	str	r2, [r3]
     414:	e3a00502 	mov	r0, #8388608	@ 0x800000
     418:	eb000205 	bl	c34 <sbrk>
     41c:	e50b0008 	str	r0, [fp, #-8]
     420:	e51b3008 	ldr	r3, [fp, #-8]
     424:	e3530000 	cmp	r3, #0
     428:	0a000002 	beq	438 <superpg_test+0x48>
     42c:	e51b3008 	ldr	r3, [fp, #-8]
     430:	e3730001 	cmn	r3, #1
     434:	1a000001 	bne	440 <superpg_test+0x50>
     438:	e59f0088 	ldr	r0, [pc, #136]	@ 4c8 <superpg_test+0xd8>
     43c:	ebfffefd 	bl	38 <err>
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	e50b300c 	str	r3, [fp, #-12]
     448:	e51b300c 	ldr	r3, [fp, #-12]
     44c:	e243337f 	sub	r3, r3, #-67108863	@ 0xfc000001
     450:	e243363e 	sub	r3, r3, #65011712	@ 0x3e00000
     454:	e1a03aa3 	lsr	r3, r3, #21
     458:	e1a03a83 	lsl	r3, r3, #21
     45c:	e50b300c 	str	r3, [fp, #-12]
     460:	e51b000c 	ldr	r0, [fp, #-12]
     464:	ebffff8c 	bl	29c <supercheck>
     468:	eb00014f 	bl	9ac <fork>
     46c:	e50b0010 	str	r0, [fp, #-16]
     470:	e51b3010 	ldr	r3, [fp, #-16]
     474:	e3530000 	cmp	r3, #0
     478:	aa000002 	bge	488 <superpg_test+0x98>
     47c:	e59f0048 	ldr	r0, [pc, #72]	@ 4cc <superpg_test+0xdc>
     480:	ebfffeec 	bl	38 <err>
     484:	ea000006 	b	4a4 <superpg_test+0xb4>
     488:	e51b3010 	ldr	r3, [fp, #-16]
     48c:	e3530000 	cmp	r3, #0
     490:	1a000002 	bne	4a0 <superpg_test+0xb0>
     494:	e51b000c 	ldr	r0, [fp, #-12]
     498:	ebffff7f 	bl	29c <supercheck>
     49c:	eb00014b 	bl	9d0 <exit>
     4a0:	eb000153 	bl	9f4 <wait>
     4a4:	e59f1024 	ldr	r1, [pc, #36]	@ 4d0 <superpg_test+0xe0>
     4a8:	e3a00001 	mov	r0, #1
     4ac:	eb000272 	bl	e7c <printf>
     4b0:	e1a00000 	nop			@ (mov r0, r0)
     4b4:	e24bd004 	sub	sp, fp, #4
     4b8:	e8bd8800 	pop	{fp, pc}
     4bc:	00001674 	.word	0x00001674
     4c0:	000016cc 	.word	0x000016cc
     4c4:	0000168c 	.word	0x0000168c
     4c8:	0000169c 	.word	0x0000169c
     4cc:	000016a8 	.word	0x000016a8
     4d0:	000016b0 	.word	0x000016b0

000004d4 <strcpy>:
     4d4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4d8:	e28db000 	add	fp, sp, #0
     4dc:	e24dd014 	sub	sp, sp, #20
     4e0:	e50b0010 	str	r0, [fp, #-16]
     4e4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4e8:	e51b3010 	ldr	r3, [fp, #-16]
     4ec:	e50b3008 	str	r3, [fp, #-8]
     4f0:	e1a00000 	nop			@ (mov r0, r0)
     4f4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     4f8:	e2823001 	add	r3, r2, #1
     4fc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     500:	e51b3010 	ldr	r3, [fp, #-16]
     504:	e2831001 	add	r1, r3, #1
     508:	e50b1010 	str	r1, [fp, #-16]
     50c:	e5d22000 	ldrb	r2, [r2]
     510:	e5c32000 	strb	r2, [r3]
     514:	e5d33000 	ldrb	r3, [r3]
     518:	e3530000 	cmp	r3, #0
     51c:	1afffff4 	bne	4f4 <strcpy+0x20>
     520:	e51b3008 	ldr	r3, [fp, #-8]
     524:	e1a00003 	mov	r0, r3
     528:	e28bd000 	add	sp, fp, #0
     52c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     530:	e12fff1e 	bx	lr

00000534 <strcmp>:
     534:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     538:	e28db000 	add	fp, sp, #0
     53c:	e24dd00c 	sub	sp, sp, #12
     540:	e50b0008 	str	r0, [fp, #-8]
     544:	e50b100c 	str	r1, [fp, #-12]
     548:	ea000005 	b	564 <strcmp+0x30>
     54c:	e51b3008 	ldr	r3, [fp, #-8]
     550:	e2833001 	add	r3, r3, #1
     554:	e50b3008 	str	r3, [fp, #-8]
     558:	e51b300c 	ldr	r3, [fp, #-12]
     55c:	e2833001 	add	r3, r3, #1
     560:	e50b300c 	str	r3, [fp, #-12]
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e5d33000 	ldrb	r3, [r3]
     56c:	e3530000 	cmp	r3, #0
     570:	0a000005 	beq	58c <strcmp+0x58>
     574:	e51b3008 	ldr	r3, [fp, #-8]
     578:	e5d32000 	ldrb	r2, [r3]
     57c:	e51b300c 	ldr	r3, [fp, #-12]
     580:	e5d33000 	ldrb	r3, [r3]
     584:	e1520003 	cmp	r2, r3
     588:	0affffef 	beq	54c <strcmp+0x18>
     58c:	e51b3008 	ldr	r3, [fp, #-8]
     590:	e5d33000 	ldrb	r3, [r3]
     594:	e1a02003 	mov	r2, r3
     598:	e51b300c 	ldr	r3, [fp, #-12]
     59c:	e5d33000 	ldrb	r3, [r3]
     5a0:	e0423003 	sub	r3, r2, r3
     5a4:	e1a00003 	mov	r0, r3
     5a8:	e28bd000 	add	sp, fp, #0
     5ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5b0:	e12fff1e 	bx	lr

000005b4 <strlen>:
     5b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5b8:	e28db000 	add	fp, sp, #0
     5bc:	e24dd014 	sub	sp, sp, #20
     5c0:	e50b0010 	str	r0, [fp, #-16]
     5c4:	e3a03000 	mov	r3, #0
     5c8:	e50b3008 	str	r3, [fp, #-8]
     5cc:	ea000002 	b	5dc <strlen+0x28>
     5d0:	e51b3008 	ldr	r3, [fp, #-8]
     5d4:	e2833001 	add	r3, r3, #1
     5d8:	e50b3008 	str	r3, [fp, #-8]
     5dc:	e51b3008 	ldr	r3, [fp, #-8]
     5e0:	e51b2010 	ldr	r2, [fp, #-16]
     5e4:	e0823003 	add	r3, r2, r3
     5e8:	e5d33000 	ldrb	r3, [r3]
     5ec:	e3530000 	cmp	r3, #0
     5f0:	1afffff6 	bne	5d0 <strlen+0x1c>
     5f4:	e51b3008 	ldr	r3, [fp, #-8]
     5f8:	e1a00003 	mov	r0, r3
     5fc:	e28bd000 	add	sp, fp, #0
     600:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     604:	e12fff1e 	bx	lr

00000608 <memset>:
     608:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     60c:	e28db000 	add	fp, sp, #0
     610:	e24dd024 	sub	sp, sp, #36	@ 0x24
     614:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     618:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     61c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     620:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     624:	e50b3008 	str	r3, [fp, #-8]
     628:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     62c:	e54b300d 	strb	r3, [fp, #-13]
     630:	e55b200d 	ldrb	r2, [fp, #-13]
     634:	e1a03002 	mov	r3, r2
     638:	e1a03403 	lsl	r3, r3, #8
     63c:	e0833002 	add	r3, r3, r2
     640:	e1a03803 	lsl	r3, r3, #16
     644:	e1a02003 	mov	r2, r3
     648:	e55b300d 	ldrb	r3, [fp, #-13]
     64c:	e1a03403 	lsl	r3, r3, #8
     650:	e1822003 	orr	r2, r2, r3
     654:	e55b300d 	ldrb	r3, [fp, #-13]
     658:	e1823003 	orr	r3, r2, r3
     65c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     660:	ea000008 	b	688 <memset+0x80>
     664:	e51b3008 	ldr	r3, [fp, #-8]
     668:	e55b200d 	ldrb	r2, [fp, #-13]
     66c:	e5c32000 	strb	r2, [r3]
     670:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     674:	e2433001 	sub	r3, r3, #1
     678:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     67c:	e51b3008 	ldr	r3, [fp, #-8]
     680:	e2833001 	add	r3, r3, #1
     684:	e50b3008 	str	r3, [fp, #-8]
     688:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     68c:	e3530000 	cmp	r3, #0
     690:	0a000003 	beq	6a4 <memset+0x9c>
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e2033003 	and	r3, r3, #3
     69c:	e3530000 	cmp	r3, #0
     6a0:	1affffef 	bne	664 <memset+0x5c>
     6a4:	e51b3008 	ldr	r3, [fp, #-8]
     6a8:	e50b300c 	str	r3, [fp, #-12]
     6ac:	ea000008 	b	6d4 <memset+0xcc>
     6b0:	e51b300c 	ldr	r3, [fp, #-12]
     6b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     6b8:	e5832000 	str	r2, [r3]
     6bc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     6c0:	e2433004 	sub	r3, r3, #4
     6c4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     6c8:	e51b300c 	ldr	r3, [fp, #-12]
     6cc:	e2833004 	add	r3, r3, #4
     6d0:	e50b300c 	str	r3, [fp, #-12]
     6d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     6d8:	e3530003 	cmp	r3, #3
     6dc:	8afffff3 	bhi	6b0 <memset+0xa8>
     6e0:	e51b300c 	ldr	r3, [fp, #-12]
     6e4:	e50b3008 	str	r3, [fp, #-8]
     6e8:	ea000008 	b	710 <memset+0x108>
     6ec:	e51b3008 	ldr	r3, [fp, #-8]
     6f0:	e55b200d 	ldrb	r2, [fp, #-13]
     6f4:	e5c32000 	strb	r2, [r3]
     6f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     6fc:	e2433001 	sub	r3, r3, #1
     700:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     704:	e51b3008 	ldr	r3, [fp, #-8]
     708:	e2833001 	add	r3, r3, #1
     70c:	e50b3008 	str	r3, [fp, #-8]
     710:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     714:	e3530000 	cmp	r3, #0
     718:	1afffff3 	bne	6ec <memset+0xe4>
     71c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     720:	e1a00003 	mov	r0, r3
     724:	e28bd000 	add	sp, fp, #0
     728:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     72c:	e12fff1e 	bx	lr

00000730 <strchr>:
     730:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     734:	e28db000 	add	fp, sp, #0
     738:	e24dd00c 	sub	sp, sp, #12
     73c:	e50b0008 	str	r0, [fp, #-8]
     740:	e1a03001 	mov	r3, r1
     744:	e54b3009 	strb	r3, [fp, #-9]
     748:	ea000009 	b	774 <strchr+0x44>
     74c:	e51b3008 	ldr	r3, [fp, #-8]
     750:	e5d33000 	ldrb	r3, [r3]
     754:	e55b2009 	ldrb	r2, [fp, #-9]
     758:	e1520003 	cmp	r2, r3
     75c:	1a000001 	bne	768 <strchr+0x38>
     760:	e51b3008 	ldr	r3, [fp, #-8]
     764:	ea000007 	b	788 <strchr+0x58>
     768:	e51b3008 	ldr	r3, [fp, #-8]
     76c:	e2833001 	add	r3, r3, #1
     770:	e50b3008 	str	r3, [fp, #-8]
     774:	e51b3008 	ldr	r3, [fp, #-8]
     778:	e5d33000 	ldrb	r3, [r3]
     77c:	e3530000 	cmp	r3, #0
     780:	1afffff1 	bne	74c <strchr+0x1c>
     784:	e3a03000 	mov	r3, #0
     788:	e1a00003 	mov	r0, r3
     78c:	e28bd000 	add	sp, fp, #0
     790:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     794:	e12fff1e 	bx	lr

00000798 <gets>:
     798:	e92d4800 	push	{fp, lr}
     79c:	e28db004 	add	fp, sp, #4
     7a0:	e24dd018 	sub	sp, sp, #24
     7a4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     7a8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     7ac:	e3a03000 	mov	r3, #0
     7b0:	e50b3008 	str	r3, [fp, #-8]
     7b4:	ea000016 	b	814 <gets+0x7c>
     7b8:	e24b300d 	sub	r3, fp, #13
     7bc:	e3a02001 	mov	r2, #1
     7c0:	e1a01003 	mov	r1, r3
     7c4:	e3a00000 	mov	r0, #0
     7c8:	eb00009b 	bl	a3c <read>
     7cc:	e50b000c 	str	r0, [fp, #-12]
     7d0:	e51b300c 	ldr	r3, [fp, #-12]
     7d4:	e3530000 	cmp	r3, #0
     7d8:	da000013 	ble	82c <gets+0x94>
     7dc:	e51b3008 	ldr	r3, [fp, #-8]
     7e0:	e2832001 	add	r2, r3, #1
     7e4:	e50b2008 	str	r2, [fp, #-8]
     7e8:	e1a02003 	mov	r2, r3
     7ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7f0:	e0833002 	add	r3, r3, r2
     7f4:	e55b200d 	ldrb	r2, [fp, #-13]
     7f8:	e5c32000 	strb	r2, [r3]
     7fc:	e55b300d 	ldrb	r3, [fp, #-13]
     800:	e353000a 	cmp	r3, #10
     804:	0a000009 	beq	830 <gets+0x98>
     808:	e55b300d 	ldrb	r3, [fp, #-13]
     80c:	e353000d 	cmp	r3, #13
     810:	0a000006 	beq	830 <gets+0x98>
     814:	e51b3008 	ldr	r3, [fp, #-8]
     818:	e2833001 	add	r3, r3, #1
     81c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     820:	e1520003 	cmp	r2, r3
     824:	caffffe3 	bgt	7b8 <gets+0x20>
     828:	ea000000 	b	830 <gets+0x98>
     82c:	e1a00000 	nop			@ (mov r0, r0)
     830:	e51b3008 	ldr	r3, [fp, #-8]
     834:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     838:	e0823003 	add	r3, r2, r3
     83c:	e3a02000 	mov	r2, #0
     840:	e5c32000 	strb	r2, [r3]
     844:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     848:	e1a00003 	mov	r0, r3
     84c:	e24bd004 	sub	sp, fp, #4
     850:	e8bd8800 	pop	{fp, pc}

00000854 <stat>:
     854:	e92d4800 	push	{fp, lr}
     858:	e28db004 	add	fp, sp, #4
     85c:	e24dd010 	sub	sp, sp, #16
     860:	e50b0010 	str	r0, [fp, #-16]
     864:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     868:	e3a01000 	mov	r1, #0
     86c:	e51b0010 	ldr	r0, [fp, #-16]
     870:	eb00009e 	bl	af0 <open>
     874:	e50b0008 	str	r0, [fp, #-8]
     878:	e51b3008 	ldr	r3, [fp, #-8]
     87c:	e3530000 	cmp	r3, #0
     880:	aa000001 	bge	88c <stat+0x38>
     884:	e3e03000 	mvn	r3, #0
     888:	ea000006 	b	8a8 <stat+0x54>
     88c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     890:	e51b0008 	ldr	r0, [fp, #-8]
     894:	eb0000b0 	bl	b5c <fstat>
     898:	e50b000c 	str	r0, [fp, #-12]
     89c:	e51b0008 	ldr	r0, [fp, #-8]
     8a0:	eb000077 	bl	a84 <close>
     8a4:	e51b300c 	ldr	r3, [fp, #-12]
     8a8:	e1a00003 	mov	r0, r3
     8ac:	e24bd004 	sub	sp, fp, #4
     8b0:	e8bd8800 	pop	{fp, pc}

000008b4 <atoi>:
     8b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8b8:	e28db000 	add	fp, sp, #0
     8bc:	e24dd014 	sub	sp, sp, #20
     8c0:	e50b0010 	str	r0, [fp, #-16]
     8c4:	e3a03000 	mov	r3, #0
     8c8:	e50b3008 	str	r3, [fp, #-8]
     8cc:	ea00000c 	b	904 <atoi+0x50>
     8d0:	e51b2008 	ldr	r2, [fp, #-8]
     8d4:	e1a03002 	mov	r3, r2
     8d8:	e1a03103 	lsl	r3, r3, #2
     8dc:	e0833002 	add	r3, r3, r2
     8e0:	e1a03083 	lsl	r3, r3, #1
     8e4:	e1a01003 	mov	r1, r3
     8e8:	e51b3010 	ldr	r3, [fp, #-16]
     8ec:	e2832001 	add	r2, r3, #1
     8f0:	e50b2010 	str	r2, [fp, #-16]
     8f4:	e5d33000 	ldrb	r3, [r3]
     8f8:	e0813003 	add	r3, r1, r3
     8fc:	e2433030 	sub	r3, r3, #48	@ 0x30
     900:	e50b3008 	str	r3, [fp, #-8]
     904:	e51b3010 	ldr	r3, [fp, #-16]
     908:	e5d33000 	ldrb	r3, [r3]
     90c:	e353002f 	cmp	r3, #47	@ 0x2f
     910:	9a000003 	bls	924 <atoi+0x70>
     914:	e51b3010 	ldr	r3, [fp, #-16]
     918:	e5d33000 	ldrb	r3, [r3]
     91c:	e3530039 	cmp	r3, #57	@ 0x39
     920:	9affffea 	bls	8d0 <atoi+0x1c>
     924:	e51b3008 	ldr	r3, [fp, #-8]
     928:	e1a00003 	mov	r0, r3
     92c:	e28bd000 	add	sp, fp, #0
     930:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     934:	e12fff1e 	bx	lr

00000938 <memmove>:
     938:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     93c:	e28db000 	add	fp, sp, #0
     940:	e24dd01c 	sub	sp, sp, #28
     944:	e50b0010 	str	r0, [fp, #-16]
     948:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     94c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     950:	e51b3010 	ldr	r3, [fp, #-16]
     954:	e50b3008 	str	r3, [fp, #-8]
     958:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     95c:	e50b300c 	str	r3, [fp, #-12]
     960:	ea000007 	b	984 <memmove+0x4c>
     964:	e51b200c 	ldr	r2, [fp, #-12]
     968:	e2823001 	add	r3, r2, #1
     96c:	e50b300c 	str	r3, [fp, #-12]
     970:	e51b3008 	ldr	r3, [fp, #-8]
     974:	e2831001 	add	r1, r3, #1
     978:	e50b1008 	str	r1, [fp, #-8]
     97c:	e5d22000 	ldrb	r2, [r2]
     980:	e5c32000 	strb	r2, [r3]
     984:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     988:	e2432001 	sub	r2, r3, #1
     98c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     990:	e3530000 	cmp	r3, #0
     994:	cafffff2 	bgt	964 <memmove+0x2c>
     998:	e51b3010 	ldr	r3, [fp, #-16]
     99c:	e1a00003 	mov	r0, r3
     9a0:	e28bd000 	add	sp, fp, #0
     9a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     9a8:	e12fff1e 	bx	lr

000009ac <fork>:
     9ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b0:	e1a04003 	mov	r4, r3
     9b4:	e1a03002 	mov	r3, r2
     9b8:	e1a02001 	mov	r2, r1
     9bc:	e1a01000 	mov	r1, r0
     9c0:	e3a00001 	mov	r0, #1
     9c4:	ef000000 	svc	0x00000000
     9c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9cc:	e12fff1e 	bx	lr

000009d0 <exit>:
     9d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d4:	e1a04003 	mov	r4, r3
     9d8:	e1a03002 	mov	r3, r2
     9dc:	e1a02001 	mov	r2, r1
     9e0:	e1a01000 	mov	r1, r0
     9e4:	e3a00002 	mov	r0, #2
     9e8:	ef000000 	svc	0x00000000
     9ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f0:	e12fff1e 	bx	lr

000009f4 <wait>:
     9f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f8:	e1a04003 	mov	r4, r3
     9fc:	e1a03002 	mov	r3, r2
     a00:	e1a02001 	mov	r2, r1
     a04:	e1a01000 	mov	r1, r0
     a08:	e3a00003 	mov	r0, #3
     a0c:	ef000000 	svc	0x00000000
     a10:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a14:	e12fff1e 	bx	lr

00000a18 <pipe>:
     a18:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a1c:	e1a04003 	mov	r4, r3
     a20:	e1a03002 	mov	r3, r2
     a24:	e1a02001 	mov	r2, r1
     a28:	e1a01000 	mov	r1, r0
     a2c:	e3a00004 	mov	r0, #4
     a30:	ef000000 	svc	0x00000000
     a34:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a38:	e12fff1e 	bx	lr

00000a3c <read>:
     a3c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a40:	e1a04003 	mov	r4, r3
     a44:	e1a03002 	mov	r3, r2
     a48:	e1a02001 	mov	r2, r1
     a4c:	e1a01000 	mov	r1, r0
     a50:	e3a00005 	mov	r0, #5
     a54:	ef000000 	svc	0x00000000
     a58:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a5c:	e12fff1e 	bx	lr

00000a60 <write>:
     a60:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a64:	e1a04003 	mov	r4, r3
     a68:	e1a03002 	mov	r3, r2
     a6c:	e1a02001 	mov	r2, r1
     a70:	e1a01000 	mov	r1, r0
     a74:	e3a00010 	mov	r0, #16
     a78:	ef000000 	svc	0x00000000
     a7c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a80:	e12fff1e 	bx	lr

00000a84 <close>:
     a84:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a88:	e1a04003 	mov	r4, r3
     a8c:	e1a03002 	mov	r3, r2
     a90:	e1a02001 	mov	r2, r1
     a94:	e1a01000 	mov	r1, r0
     a98:	e3a00015 	mov	r0, #21
     a9c:	ef000000 	svc	0x00000000
     aa0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa4:	e12fff1e 	bx	lr

00000aa8 <kill>:
     aa8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aac:	e1a04003 	mov	r4, r3
     ab0:	e1a03002 	mov	r3, r2
     ab4:	e1a02001 	mov	r2, r1
     ab8:	e1a01000 	mov	r1, r0
     abc:	e3a00006 	mov	r0, #6
     ac0:	ef000000 	svc	0x00000000
     ac4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ac8:	e12fff1e 	bx	lr

00000acc <exec>:
     acc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ad0:	e1a04003 	mov	r4, r3
     ad4:	e1a03002 	mov	r3, r2
     ad8:	e1a02001 	mov	r2, r1
     adc:	e1a01000 	mov	r1, r0
     ae0:	e3a00007 	mov	r0, #7
     ae4:	ef000000 	svc	0x00000000
     ae8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aec:	e12fff1e 	bx	lr

00000af0 <open>:
     af0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     af4:	e1a04003 	mov	r4, r3
     af8:	e1a03002 	mov	r3, r2
     afc:	e1a02001 	mov	r2, r1
     b00:	e1a01000 	mov	r1, r0
     b04:	e3a0000f 	mov	r0, #15
     b08:	ef000000 	svc	0x00000000
     b0c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b10:	e12fff1e 	bx	lr

00000b14 <mknod>:
     b14:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b18:	e1a04003 	mov	r4, r3
     b1c:	e1a03002 	mov	r3, r2
     b20:	e1a02001 	mov	r2, r1
     b24:	e1a01000 	mov	r1, r0
     b28:	e3a00011 	mov	r0, #17
     b2c:	ef000000 	svc	0x00000000
     b30:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b34:	e12fff1e 	bx	lr

00000b38 <unlink>:
     b38:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b3c:	e1a04003 	mov	r4, r3
     b40:	e1a03002 	mov	r3, r2
     b44:	e1a02001 	mov	r2, r1
     b48:	e1a01000 	mov	r1, r0
     b4c:	e3a00012 	mov	r0, #18
     b50:	ef000000 	svc	0x00000000
     b54:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b58:	e12fff1e 	bx	lr

00000b5c <fstat>:
     b5c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b60:	e1a04003 	mov	r4, r3
     b64:	e1a03002 	mov	r3, r2
     b68:	e1a02001 	mov	r2, r1
     b6c:	e1a01000 	mov	r1, r0
     b70:	e3a00008 	mov	r0, #8
     b74:	ef000000 	svc	0x00000000
     b78:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b7c:	e12fff1e 	bx	lr

00000b80 <link>:
     b80:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b84:	e1a04003 	mov	r4, r3
     b88:	e1a03002 	mov	r3, r2
     b8c:	e1a02001 	mov	r2, r1
     b90:	e1a01000 	mov	r1, r0
     b94:	e3a00013 	mov	r0, #19
     b98:	ef000000 	svc	0x00000000
     b9c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ba0:	e12fff1e 	bx	lr

00000ba4 <mkdir>:
     ba4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ba8:	e1a04003 	mov	r4, r3
     bac:	e1a03002 	mov	r3, r2
     bb0:	e1a02001 	mov	r2, r1
     bb4:	e1a01000 	mov	r1, r0
     bb8:	e3a00014 	mov	r0, #20
     bbc:	ef000000 	svc	0x00000000
     bc0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bc4:	e12fff1e 	bx	lr

00000bc8 <chdir>:
     bc8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bcc:	e1a04003 	mov	r4, r3
     bd0:	e1a03002 	mov	r3, r2
     bd4:	e1a02001 	mov	r2, r1
     bd8:	e1a01000 	mov	r1, r0
     bdc:	e3a00009 	mov	r0, #9
     be0:	ef000000 	svc	0x00000000
     be4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     be8:	e12fff1e 	bx	lr

00000bec <dup>:
     bec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bf0:	e1a04003 	mov	r4, r3
     bf4:	e1a03002 	mov	r3, r2
     bf8:	e1a02001 	mov	r2, r1
     bfc:	e1a01000 	mov	r1, r0
     c00:	e3a0000a 	mov	r0, #10
     c04:	ef000000 	svc	0x00000000
     c08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c0c:	e12fff1e 	bx	lr

00000c10 <getpid>:
     c10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c14:	e1a04003 	mov	r4, r3
     c18:	e1a03002 	mov	r3, r2
     c1c:	e1a02001 	mov	r2, r1
     c20:	e1a01000 	mov	r1, r0
     c24:	e3a0000b 	mov	r0, #11
     c28:	ef000000 	svc	0x00000000
     c2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c30:	e12fff1e 	bx	lr

00000c34 <sbrk>:
     c34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c38:	e1a04003 	mov	r4, r3
     c3c:	e1a03002 	mov	r3, r2
     c40:	e1a02001 	mov	r2, r1
     c44:	e1a01000 	mov	r1, r0
     c48:	e3a0000c 	mov	r0, #12
     c4c:	ef000000 	svc	0x00000000
     c50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c54:	e12fff1e 	bx	lr

00000c58 <sleep>:
     c58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c5c:	e1a04003 	mov	r4, r3
     c60:	e1a03002 	mov	r3, r2
     c64:	e1a02001 	mov	r2, r1
     c68:	e1a01000 	mov	r1, r0
     c6c:	e3a0000d 	mov	r0, #13
     c70:	ef000000 	svc	0x00000000
     c74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c78:	e12fff1e 	bx	lr

00000c7c <uptime>:
     c7c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c80:	e1a04003 	mov	r4, r3
     c84:	e1a03002 	mov	r3, r2
     c88:	e1a02001 	mov	r2, r1
     c8c:	e1a01000 	mov	r1, r0
     c90:	e3a0000e 	mov	r0, #14
     c94:	ef000000 	svc	0x00000000
     c98:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c9c:	e12fff1e 	bx	lr

00000ca0 <pgpte>:
     ca0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ca4:	e1a04003 	mov	r4, r3
     ca8:	e1a03002 	mov	r3, r2
     cac:	e1a02001 	mov	r2, r1
     cb0:	e1a01000 	mov	r1, r0
     cb4:	e3a00016 	mov	r0, #22
     cb8:	ef000000 	svc	0x00000000
     cbc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     cc0:	e12fff1e 	bx	lr

00000cc4 <kpt>:
     cc4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cc8:	e1a04003 	mov	r4, r3
     ccc:	e1a03002 	mov	r3, r2
     cd0:	e1a02001 	mov	r2, r1
     cd4:	e1a01000 	mov	r1, r0
     cd8:	e3a00017 	mov	r0, #23
     cdc:	ef000000 	svc	0x00000000
     ce0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ce4:	e12fff1e 	bx	lr

00000ce8 <ugetpid>:
     ce8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     cec:	e1a04003 	mov	r4, r3
     cf0:	e1a03002 	mov	r3, r2
     cf4:	e1a02001 	mov	r2, r1
     cf8:	e1a01000 	mov	r1, r0
     cfc:	e3a00018 	mov	r0, #24
     d00:	ef000000 	svc	0x00000000
     d04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     d08:	e12fff1e 	bx	lr

00000d0c <putc>:
     d0c:	e92d4800 	push	{fp, lr}
     d10:	e28db004 	add	fp, sp, #4
     d14:	e24dd008 	sub	sp, sp, #8
     d18:	e50b0008 	str	r0, [fp, #-8]
     d1c:	e1a03001 	mov	r3, r1
     d20:	e54b3009 	strb	r3, [fp, #-9]
     d24:	e24b3009 	sub	r3, fp, #9
     d28:	e3a02001 	mov	r2, #1
     d2c:	e1a01003 	mov	r1, r3
     d30:	e51b0008 	ldr	r0, [fp, #-8]
     d34:	ebffff49 	bl	a60 <write>
     d38:	e1a00000 	nop			@ (mov r0, r0)
     d3c:	e24bd004 	sub	sp, fp, #4
     d40:	e8bd8800 	pop	{fp, pc}

00000d44 <printint>:
     d44:	e92d4800 	push	{fp, lr}
     d48:	e28db004 	add	fp, sp, #4
     d4c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     d50:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     d54:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     d58:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     d5c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     d60:	e3a03000 	mov	r3, #0
     d64:	e50b300c 	str	r3, [fp, #-12]
     d68:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     d6c:	e3530000 	cmp	r3, #0
     d70:	0a000008 	beq	d98 <printint+0x54>
     d74:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d78:	e3530000 	cmp	r3, #0
     d7c:	aa000005 	bge	d98 <printint+0x54>
     d80:	e3a03001 	mov	r3, #1
     d84:	e50b300c 	str	r3, [fp, #-12]
     d88:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d8c:	e2633000 	rsb	r3, r3, #0
     d90:	e50b3010 	str	r3, [fp, #-16]
     d94:	ea000001 	b	da0 <printint+0x5c>
     d98:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d9c:	e50b3010 	str	r3, [fp, #-16]
     da0:	e3a03000 	mov	r3, #0
     da4:	e50b3008 	str	r3, [fp, #-8]
     da8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     dac:	e51b3010 	ldr	r3, [fp, #-16]
     db0:	e1a01002 	mov	r1, r2
     db4:	e1a00003 	mov	r0, r3
     db8:	eb0001d5 	bl	1514 <__aeabi_uidivmod>
     dbc:	e1a03001 	mov	r3, r1
     dc0:	e1a01003 	mov	r1, r3
     dc4:	e51b3008 	ldr	r3, [fp, #-8]
     dc8:	e2832001 	add	r2, r3, #1
     dcc:	e50b2008 	str	r2, [fp, #-8]
     dd0:	e59f20a0 	ldr	r2, [pc, #160]	@ e78 <printint+0x134>
     dd4:	e7d22001 	ldrb	r2, [r2, r1]
     dd8:	e2433004 	sub	r3, r3, #4
     ddc:	e083300b 	add	r3, r3, fp
     de0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     de4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     de8:	e1a01003 	mov	r1, r3
     dec:	e51b0010 	ldr	r0, [fp, #-16]
     df0:	eb00018a 	bl	1420 <__udivsi3>
     df4:	e1a03000 	mov	r3, r0
     df8:	e50b3010 	str	r3, [fp, #-16]
     dfc:	e51b3010 	ldr	r3, [fp, #-16]
     e00:	e3530000 	cmp	r3, #0
     e04:	1affffe7 	bne	da8 <printint+0x64>
     e08:	e51b300c 	ldr	r3, [fp, #-12]
     e0c:	e3530000 	cmp	r3, #0
     e10:	0a00000e 	beq	e50 <printint+0x10c>
     e14:	e51b3008 	ldr	r3, [fp, #-8]
     e18:	e2832001 	add	r2, r3, #1
     e1c:	e50b2008 	str	r2, [fp, #-8]
     e20:	e2433004 	sub	r3, r3, #4
     e24:	e083300b 	add	r3, r3, fp
     e28:	e3a0202d 	mov	r2, #45	@ 0x2d
     e2c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     e30:	ea000006 	b	e50 <printint+0x10c>
     e34:	e24b2020 	sub	r2, fp, #32
     e38:	e51b3008 	ldr	r3, [fp, #-8]
     e3c:	e0823003 	add	r3, r2, r3
     e40:	e5d33000 	ldrb	r3, [r3]
     e44:	e1a01003 	mov	r1, r3
     e48:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     e4c:	ebffffae 	bl	d0c <putc>
     e50:	e51b3008 	ldr	r3, [fp, #-8]
     e54:	e2433001 	sub	r3, r3, #1
     e58:	e50b3008 	str	r3, [fp, #-8]
     e5c:	e51b3008 	ldr	r3, [fp, #-8]
     e60:	e3530000 	cmp	r3, #0
     e64:	aafffff2 	bge	e34 <printint+0xf0>
     e68:	e1a00000 	nop			@ (mov r0, r0)
     e6c:	e1a00000 	nop			@ (mov r0, r0)
     e70:	e24bd004 	sub	sp, fp, #4
     e74:	e8bd8800 	pop	{fp, pc}
     e78:	000016d0 	.word	0x000016d0

00000e7c <printf>:
     e7c:	e92d000e 	push	{r1, r2, r3}
     e80:	e92d4800 	push	{fp, lr}
     e84:	e28db004 	add	fp, sp, #4
     e88:	e24dd024 	sub	sp, sp, #36	@ 0x24
     e8c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     e90:	e3a03000 	mov	r3, #0
     e94:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e98:	e28b3008 	add	r3, fp, #8
     e9c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ea0:	e3a03000 	mov	r3, #0
     ea4:	e50b3010 	str	r3, [fp, #-16]
     ea8:	ea000074 	b	1080 <printf+0x204>
     eac:	e59b2004 	ldr	r2, [fp, #4]
     eb0:	e51b3010 	ldr	r3, [fp, #-16]
     eb4:	e0823003 	add	r3, r2, r3
     eb8:	e5d33000 	ldrb	r3, [r3]
     ebc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     ec0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ec4:	e3530000 	cmp	r3, #0
     ec8:	1a00000b 	bne	efc <printf+0x80>
     ecc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ed0:	e3530025 	cmp	r3, #37	@ 0x25
     ed4:	1a000002 	bne	ee4 <printf+0x68>
     ed8:	e3a03025 	mov	r3, #37	@ 0x25
     edc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ee0:	ea000063 	b	1074 <printf+0x1f8>
     ee4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ee8:	e6ef3073 	uxtb	r3, r3
     eec:	e1a01003 	mov	r1, r3
     ef0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ef4:	ebffff84 	bl	d0c <putc>
     ef8:	ea00005d 	b	1074 <printf+0x1f8>
     efc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f00:	e3530025 	cmp	r3, #37	@ 0x25
     f04:	1a00005a 	bne	1074 <printf+0x1f8>
     f08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f0c:	e3530064 	cmp	r3, #100	@ 0x64
     f10:	1a00000a 	bne	f40 <printf+0xc4>
     f14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f18:	e5933000 	ldr	r3, [r3]
     f1c:	e1a01003 	mov	r1, r3
     f20:	e3a03001 	mov	r3, #1
     f24:	e3a0200a 	mov	r2, #10
     f28:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f2c:	ebffff84 	bl	d44 <printint>
     f30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f34:	e2833004 	add	r3, r3, #4
     f38:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f3c:	ea00004a 	b	106c <printf+0x1f0>
     f40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f44:	e3530078 	cmp	r3, #120	@ 0x78
     f48:	0a000002 	beq	f58 <printf+0xdc>
     f4c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f50:	e3530070 	cmp	r3, #112	@ 0x70
     f54:	1a00000a 	bne	f84 <printf+0x108>
     f58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f5c:	e5933000 	ldr	r3, [r3]
     f60:	e1a01003 	mov	r1, r3
     f64:	e3a03000 	mov	r3, #0
     f68:	e3a02010 	mov	r2, #16
     f6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f70:	ebffff73 	bl	d44 <printint>
     f74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f78:	e2833004 	add	r3, r3, #4
     f7c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f80:	ea000039 	b	106c <printf+0x1f0>
     f84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f88:	e3530073 	cmp	r3, #115	@ 0x73
     f8c:	1a000018 	bne	ff4 <printf+0x178>
     f90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f94:	e5933000 	ldr	r3, [r3]
     f98:	e50b300c 	str	r3, [fp, #-12]
     f9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fa0:	e2833004 	add	r3, r3, #4
     fa4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fa8:	e51b300c 	ldr	r3, [fp, #-12]
     fac:	e3530000 	cmp	r3, #0
     fb0:	1a00000a 	bne	fe0 <printf+0x164>
     fb4:	e59f30f4 	ldr	r3, [pc, #244]	@ 10b0 <printf+0x234>
     fb8:	e50b300c 	str	r3, [fp, #-12]
     fbc:	ea000007 	b	fe0 <printf+0x164>
     fc0:	e51b300c 	ldr	r3, [fp, #-12]
     fc4:	e5d33000 	ldrb	r3, [r3]
     fc8:	e1a01003 	mov	r1, r3
     fcc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fd0:	ebffff4d 	bl	d0c <putc>
     fd4:	e51b300c 	ldr	r3, [fp, #-12]
     fd8:	e2833001 	add	r3, r3, #1
     fdc:	e50b300c 	str	r3, [fp, #-12]
     fe0:	e51b300c 	ldr	r3, [fp, #-12]
     fe4:	e5d33000 	ldrb	r3, [r3]
     fe8:	e3530000 	cmp	r3, #0
     fec:	1afffff3 	bne	fc0 <printf+0x144>
     ff0:	ea00001d 	b	106c <printf+0x1f0>
     ff4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ff8:	e3530063 	cmp	r3, #99	@ 0x63
     ffc:	1a000009 	bne	1028 <printf+0x1ac>
    1000:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1004:	e5933000 	ldr	r3, [r3]
    1008:	e6ef3073 	uxtb	r3, r3
    100c:	e1a01003 	mov	r1, r3
    1010:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1014:	ebffff3c 	bl	d0c <putc>
    1018:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    101c:	e2833004 	add	r3, r3, #4
    1020:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1024:	ea000010 	b	106c <printf+0x1f0>
    1028:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    102c:	e3530025 	cmp	r3, #37	@ 0x25
    1030:	1a000005 	bne	104c <printf+0x1d0>
    1034:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1038:	e6ef3073 	uxtb	r3, r3
    103c:	e1a01003 	mov	r1, r3
    1040:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1044:	ebffff30 	bl	d0c <putc>
    1048:	ea000007 	b	106c <printf+0x1f0>
    104c:	e3a01025 	mov	r1, #37	@ 0x25
    1050:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1054:	ebffff2c 	bl	d0c <putc>
    1058:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    105c:	e6ef3073 	uxtb	r3, r3
    1060:	e1a01003 	mov	r1, r3
    1064:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1068:	ebffff27 	bl	d0c <putc>
    106c:	e3a03000 	mov	r3, #0
    1070:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1074:	e51b3010 	ldr	r3, [fp, #-16]
    1078:	e2833001 	add	r3, r3, #1
    107c:	e50b3010 	str	r3, [fp, #-16]
    1080:	e59b2004 	ldr	r2, [fp, #4]
    1084:	e51b3010 	ldr	r3, [fp, #-16]
    1088:	e0823003 	add	r3, r2, r3
    108c:	e5d33000 	ldrb	r3, [r3]
    1090:	e3530000 	cmp	r3, #0
    1094:	1affff84 	bne	eac <printf+0x30>
    1098:	e1a00000 	nop			@ (mov r0, r0)
    109c:	e1a00000 	nop			@ (mov r0, r0)
    10a0:	e24bd004 	sub	sp, fp, #4
    10a4:	e8bd4800 	pop	{fp, lr}
    10a8:	e28dd00c 	add	sp, sp, #12
    10ac:	e12fff1e 	bx	lr
    10b0:	000016c4 	.word	0x000016c4

000010b4 <free>:
    10b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    10b8:	e28db000 	add	fp, sp, #0
    10bc:	e24dd014 	sub	sp, sp, #20
    10c0:	e50b0010 	str	r0, [fp, #-16]
    10c4:	e51b3010 	ldr	r3, [fp, #-16]
    10c8:	e2433008 	sub	r3, r3, #8
    10cc:	e50b300c 	str	r3, [fp, #-12]
    10d0:	e59f3154 	ldr	r3, [pc, #340]	@ 122c <free+0x178>
    10d4:	e5933000 	ldr	r3, [r3]
    10d8:	e50b3008 	str	r3, [fp, #-8]
    10dc:	ea000010 	b	1124 <free+0x70>
    10e0:	e51b3008 	ldr	r3, [fp, #-8]
    10e4:	e5933000 	ldr	r3, [r3]
    10e8:	e51b2008 	ldr	r2, [fp, #-8]
    10ec:	e1520003 	cmp	r2, r3
    10f0:	3a000008 	bcc	1118 <free+0x64>
    10f4:	e51b200c 	ldr	r2, [fp, #-12]
    10f8:	e51b3008 	ldr	r3, [fp, #-8]
    10fc:	e1520003 	cmp	r2, r3
    1100:	8a000010 	bhi	1148 <free+0x94>
    1104:	e51b3008 	ldr	r3, [fp, #-8]
    1108:	e5933000 	ldr	r3, [r3]
    110c:	e51b200c 	ldr	r2, [fp, #-12]
    1110:	e1520003 	cmp	r2, r3
    1114:	3a00000b 	bcc	1148 <free+0x94>
    1118:	e51b3008 	ldr	r3, [fp, #-8]
    111c:	e5933000 	ldr	r3, [r3]
    1120:	e50b3008 	str	r3, [fp, #-8]
    1124:	e51b200c 	ldr	r2, [fp, #-12]
    1128:	e51b3008 	ldr	r3, [fp, #-8]
    112c:	e1520003 	cmp	r2, r3
    1130:	9affffea 	bls	10e0 <free+0x2c>
    1134:	e51b3008 	ldr	r3, [fp, #-8]
    1138:	e5933000 	ldr	r3, [r3]
    113c:	e51b200c 	ldr	r2, [fp, #-12]
    1140:	e1520003 	cmp	r2, r3
    1144:	2affffe5 	bcs	10e0 <free+0x2c>
    1148:	e51b300c 	ldr	r3, [fp, #-12]
    114c:	e5933004 	ldr	r3, [r3, #4]
    1150:	e1a03183 	lsl	r3, r3, #3
    1154:	e51b200c 	ldr	r2, [fp, #-12]
    1158:	e0822003 	add	r2, r2, r3
    115c:	e51b3008 	ldr	r3, [fp, #-8]
    1160:	e5933000 	ldr	r3, [r3]
    1164:	e1520003 	cmp	r2, r3
    1168:	1a00000d 	bne	11a4 <free+0xf0>
    116c:	e51b300c 	ldr	r3, [fp, #-12]
    1170:	e5932004 	ldr	r2, [r3, #4]
    1174:	e51b3008 	ldr	r3, [fp, #-8]
    1178:	e5933000 	ldr	r3, [r3]
    117c:	e5933004 	ldr	r3, [r3, #4]
    1180:	e0822003 	add	r2, r2, r3
    1184:	e51b300c 	ldr	r3, [fp, #-12]
    1188:	e5832004 	str	r2, [r3, #4]
    118c:	e51b3008 	ldr	r3, [fp, #-8]
    1190:	e5933000 	ldr	r3, [r3]
    1194:	e5932000 	ldr	r2, [r3]
    1198:	e51b300c 	ldr	r3, [fp, #-12]
    119c:	e5832000 	str	r2, [r3]
    11a0:	ea000003 	b	11b4 <free+0x100>
    11a4:	e51b3008 	ldr	r3, [fp, #-8]
    11a8:	e5932000 	ldr	r2, [r3]
    11ac:	e51b300c 	ldr	r3, [fp, #-12]
    11b0:	e5832000 	str	r2, [r3]
    11b4:	e51b3008 	ldr	r3, [fp, #-8]
    11b8:	e5933004 	ldr	r3, [r3, #4]
    11bc:	e1a03183 	lsl	r3, r3, #3
    11c0:	e51b2008 	ldr	r2, [fp, #-8]
    11c4:	e0823003 	add	r3, r2, r3
    11c8:	e51b200c 	ldr	r2, [fp, #-12]
    11cc:	e1520003 	cmp	r2, r3
    11d0:	1a00000b 	bne	1204 <free+0x150>
    11d4:	e51b3008 	ldr	r3, [fp, #-8]
    11d8:	e5932004 	ldr	r2, [r3, #4]
    11dc:	e51b300c 	ldr	r3, [fp, #-12]
    11e0:	e5933004 	ldr	r3, [r3, #4]
    11e4:	e0822003 	add	r2, r2, r3
    11e8:	e51b3008 	ldr	r3, [fp, #-8]
    11ec:	e5832004 	str	r2, [r3, #4]
    11f0:	e51b300c 	ldr	r3, [fp, #-12]
    11f4:	e5932000 	ldr	r2, [r3]
    11f8:	e51b3008 	ldr	r3, [fp, #-8]
    11fc:	e5832000 	str	r2, [r3]
    1200:	ea000002 	b	1210 <free+0x15c>
    1204:	e51b3008 	ldr	r3, [fp, #-8]
    1208:	e51b200c 	ldr	r2, [fp, #-12]
    120c:	e5832000 	str	r2, [r3]
    1210:	e59f2014 	ldr	r2, [pc, #20]	@ 122c <free+0x178>
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e5823000 	str	r3, [r2]
    121c:	e1a00000 	nop			@ (mov r0, r0)
    1220:	e28bd000 	add	sp, fp, #0
    1224:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1228:	e12fff1e 	bx	lr
    122c:	000016ec 	.word	0x000016ec

00001230 <morecore>:
    1230:	e92d4800 	push	{fp, lr}
    1234:	e28db004 	add	fp, sp, #4
    1238:	e24dd010 	sub	sp, sp, #16
    123c:	e50b0010 	str	r0, [fp, #-16]
    1240:	e51b3010 	ldr	r3, [fp, #-16]
    1244:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1248:	2a000001 	bcs	1254 <morecore+0x24>
    124c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1250:	e50b3010 	str	r3, [fp, #-16]
    1254:	e51b3010 	ldr	r3, [fp, #-16]
    1258:	e1a03183 	lsl	r3, r3, #3
    125c:	e1a00003 	mov	r0, r3
    1260:	ebfffe73 	bl	c34 <sbrk>
    1264:	e50b0008 	str	r0, [fp, #-8]
    1268:	e51b3008 	ldr	r3, [fp, #-8]
    126c:	e3730001 	cmn	r3, #1
    1270:	1a000001 	bne	127c <morecore+0x4c>
    1274:	e3a03000 	mov	r3, #0
    1278:	ea00000a 	b	12a8 <morecore+0x78>
    127c:	e51b3008 	ldr	r3, [fp, #-8]
    1280:	e50b300c 	str	r3, [fp, #-12]
    1284:	e51b300c 	ldr	r3, [fp, #-12]
    1288:	e51b2010 	ldr	r2, [fp, #-16]
    128c:	e5832004 	str	r2, [r3, #4]
    1290:	e51b300c 	ldr	r3, [fp, #-12]
    1294:	e2833008 	add	r3, r3, #8
    1298:	e1a00003 	mov	r0, r3
    129c:	ebffff84 	bl	10b4 <free>
    12a0:	e59f300c 	ldr	r3, [pc, #12]	@ 12b4 <morecore+0x84>
    12a4:	e5933000 	ldr	r3, [r3]
    12a8:	e1a00003 	mov	r0, r3
    12ac:	e24bd004 	sub	sp, fp, #4
    12b0:	e8bd8800 	pop	{fp, pc}
    12b4:	000016ec 	.word	0x000016ec

000012b8 <malloc>:
    12b8:	e92d4800 	push	{fp, lr}
    12bc:	e28db004 	add	fp, sp, #4
    12c0:	e24dd018 	sub	sp, sp, #24
    12c4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    12c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12cc:	e2833007 	add	r3, r3, #7
    12d0:	e1a031a3 	lsr	r3, r3, #3
    12d4:	e2833001 	add	r3, r3, #1
    12d8:	e50b3010 	str	r3, [fp, #-16]
    12dc:	e59f3134 	ldr	r3, [pc, #308]	@ 1418 <malloc+0x160>
    12e0:	e5933000 	ldr	r3, [r3]
    12e4:	e50b300c 	str	r3, [fp, #-12]
    12e8:	e51b300c 	ldr	r3, [fp, #-12]
    12ec:	e3530000 	cmp	r3, #0
    12f0:	1a00000b 	bne	1324 <malloc+0x6c>
    12f4:	e59f3120 	ldr	r3, [pc, #288]	@ 141c <malloc+0x164>
    12f8:	e50b300c 	str	r3, [fp, #-12]
    12fc:	e59f2114 	ldr	r2, [pc, #276]	@ 1418 <malloc+0x160>
    1300:	e51b300c 	ldr	r3, [fp, #-12]
    1304:	e5823000 	str	r3, [r2]
    1308:	e59f3108 	ldr	r3, [pc, #264]	@ 1418 <malloc+0x160>
    130c:	e5933000 	ldr	r3, [r3]
    1310:	e59f2104 	ldr	r2, [pc, #260]	@ 141c <malloc+0x164>
    1314:	e5823000 	str	r3, [r2]
    1318:	e59f30fc 	ldr	r3, [pc, #252]	@ 141c <malloc+0x164>
    131c:	e3a02000 	mov	r2, #0
    1320:	e5832004 	str	r2, [r3, #4]
    1324:	e51b300c 	ldr	r3, [fp, #-12]
    1328:	e5933000 	ldr	r3, [r3]
    132c:	e50b3008 	str	r3, [fp, #-8]
    1330:	e51b3008 	ldr	r3, [fp, #-8]
    1334:	e5933004 	ldr	r3, [r3, #4]
    1338:	e51b2010 	ldr	r2, [fp, #-16]
    133c:	e1520003 	cmp	r2, r3
    1340:	8a00001e 	bhi	13c0 <malloc+0x108>
    1344:	e51b3008 	ldr	r3, [fp, #-8]
    1348:	e5933004 	ldr	r3, [r3, #4]
    134c:	e51b2010 	ldr	r2, [fp, #-16]
    1350:	e1520003 	cmp	r2, r3
    1354:	1a000004 	bne	136c <malloc+0xb4>
    1358:	e51b3008 	ldr	r3, [fp, #-8]
    135c:	e5932000 	ldr	r2, [r3]
    1360:	e51b300c 	ldr	r3, [fp, #-12]
    1364:	e5832000 	str	r2, [r3]
    1368:	ea00000e 	b	13a8 <malloc+0xf0>
    136c:	e51b3008 	ldr	r3, [fp, #-8]
    1370:	e5932004 	ldr	r2, [r3, #4]
    1374:	e51b3010 	ldr	r3, [fp, #-16]
    1378:	e0422003 	sub	r2, r2, r3
    137c:	e51b3008 	ldr	r3, [fp, #-8]
    1380:	e5832004 	str	r2, [r3, #4]
    1384:	e51b3008 	ldr	r3, [fp, #-8]
    1388:	e5933004 	ldr	r3, [r3, #4]
    138c:	e1a03183 	lsl	r3, r3, #3
    1390:	e51b2008 	ldr	r2, [fp, #-8]
    1394:	e0823003 	add	r3, r2, r3
    1398:	e50b3008 	str	r3, [fp, #-8]
    139c:	e51b3008 	ldr	r3, [fp, #-8]
    13a0:	e51b2010 	ldr	r2, [fp, #-16]
    13a4:	e5832004 	str	r2, [r3, #4]
    13a8:	e59f2068 	ldr	r2, [pc, #104]	@ 1418 <malloc+0x160>
    13ac:	e51b300c 	ldr	r3, [fp, #-12]
    13b0:	e5823000 	str	r3, [r2]
    13b4:	e51b3008 	ldr	r3, [fp, #-8]
    13b8:	e2833008 	add	r3, r3, #8
    13bc:	ea000012 	b	140c <malloc+0x154>
    13c0:	e59f3050 	ldr	r3, [pc, #80]	@ 1418 <malloc+0x160>
    13c4:	e5933000 	ldr	r3, [r3]
    13c8:	e51b2008 	ldr	r2, [fp, #-8]
    13cc:	e1520003 	cmp	r2, r3
    13d0:	1a000007 	bne	13f4 <malloc+0x13c>
    13d4:	e51b0010 	ldr	r0, [fp, #-16]
    13d8:	ebffff94 	bl	1230 <morecore>
    13dc:	e50b0008 	str	r0, [fp, #-8]
    13e0:	e51b3008 	ldr	r3, [fp, #-8]
    13e4:	e3530000 	cmp	r3, #0
    13e8:	1a000001 	bne	13f4 <malloc+0x13c>
    13ec:	e3a03000 	mov	r3, #0
    13f0:	ea000005 	b	140c <malloc+0x154>
    13f4:	e51b3008 	ldr	r3, [fp, #-8]
    13f8:	e50b300c 	str	r3, [fp, #-12]
    13fc:	e51b3008 	ldr	r3, [fp, #-8]
    1400:	e5933000 	ldr	r3, [r3]
    1404:	e50b3008 	str	r3, [fp, #-8]
    1408:	eaffffc8 	b	1330 <malloc+0x78>
    140c:	e1a00003 	mov	r0, r3
    1410:	e24bd004 	sub	sp, fp, #4
    1414:	e8bd8800 	pop	{fp, pc}
    1418:	000016ec 	.word	0x000016ec
    141c:	000016e4 	.word	0x000016e4

00001420 <__udivsi3>:
    1420:	e2512001 	subs	r2, r1, #1
    1424:	012fff1e 	bxeq	lr
    1428:	3a000036 	bcc	1508 <__udivsi3+0xe8>
    142c:	e1500001 	cmp	r0, r1
    1430:	9a000022 	bls	14c0 <__udivsi3+0xa0>
    1434:	e1110002 	tst	r1, r2
    1438:	0a000023 	beq	14cc <__udivsi3+0xac>
    143c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1440:	01a01181 	lsleq	r1, r1, #3
    1444:	03a03008 	moveq	r3, #8
    1448:	13a03001 	movne	r3, #1
    144c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1450:	31510000 	cmpcc	r1, r0
    1454:	31a01201 	lslcc	r1, r1, #4
    1458:	31a03203 	lslcc	r3, r3, #4
    145c:	3afffffa 	bcc	144c <__udivsi3+0x2c>
    1460:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1464:	31510000 	cmpcc	r1, r0
    1468:	31a01081 	lslcc	r1, r1, #1
    146c:	31a03083 	lslcc	r3, r3, #1
    1470:	3afffffa 	bcc	1460 <__udivsi3+0x40>
    1474:	e3a02000 	mov	r2, #0
    1478:	e1500001 	cmp	r0, r1
    147c:	20400001 	subcs	r0, r0, r1
    1480:	21822003 	orrcs	r2, r2, r3
    1484:	e15000a1 	cmp	r0, r1, lsr #1
    1488:	204000a1 	subcs	r0, r0, r1, lsr #1
    148c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1490:	e1500121 	cmp	r0, r1, lsr #2
    1494:	20400121 	subcs	r0, r0, r1, lsr #2
    1498:	21822123 	orrcs	r2, r2, r3, lsr #2
    149c:	e15001a1 	cmp	r0, r1, lsr #3
    14a0:	204001a1 	subcs	r0, r0, r1, lsr #3
    14a4:	218221a3 	orrcs	r2, r2, r3, lsr #3
    14a8:	e3500000 	cmp	r0, #0
    14ac:	11b03223 	lsrsne	r3, r3, #4
    14b0:	11a01221 	lsrne	r1, r1, #4
    14b4:	1affffef 	bne	1478 <__udivsi3+0x58>
    14b8:	e1a00002 	mov	r0, r2
    14bc:	e12fff1e 	bx	lr
    14c0:	03a00001 	moveq	r0, #1
    14c4:	13a00000 	movne	r0, #0
    14c8:	e12fff1e 	bx	lr
    14cc:	e3510801 	cmp	r1, #65536	@ 0x10000
    14d0:	21a01821 	lsrcs	r1, r1, #16
    14d4:	23a02010 	movcs	r2, #16
    14d8:	33a02000 	movcc	r2, #0
    14dc:	e3510c01 	cmp	r1, #256	@ 0x100
    14e0:	21a01421 	lsrcs	r1, r1, #8
    14e4:	22822008 	addcs	r2, r2, #8
    14e8:	e3510010 	cmp	r1, #16
    14ec:	21a01221 	lsrcs	r1, r1, #4
    14f0:	22822004 	addcs	r2, r2, #4
    14f4:	e3510004 	cmp	r1, #4
    14f8:	82822003 	addhi	r2, r2, #3
    14fc:	908220a1 	addls	r2, r2, r1, lsr #1
    1500:	e1a00230 	lsr	r0, r0, r2
    1504:	e12fff1e 	bx	lr
    1508:	e3500000 	cmp	r0, #0
    150c:	13e00000 	mvnne	r0, #0
    1510:	ea000007 	b	1534 <__aeabi_idiv0>

00001514 <__aeabi_uidivmod>:
    1514:	e3510000 	cmp	r1, #0
    1518:	0afffffa 	beq	1508 <__udivsi3+0xe8>
    151c:	e92d4003 	push	{r0, r1, lr}
    1520:	ebffffbe 	bl	1420 <__udivsi3>
    1524:	e8bd4006 	pop	{r1, r2, lr}
    1528:	e0030092 	mul	r3, r2, r0
    152c:	e0411003 	sub	r1, r1, r3
    1530:	e12fff1e 	bx	lr

00001534 <__aeabi_idiv0>:
    1534:	e12fff1e 	bx	lr
