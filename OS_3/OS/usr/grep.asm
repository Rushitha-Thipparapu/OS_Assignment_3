
_grep:     file format elf32-littlearm


Disassembly of section .text:

00000000 <grep>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd018 	sub	sp, sp, #24
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
      14:	e3a03000 	mov	r3, #0
      18:	e50b3008 	str	r3, [fp, #-8]
      1c:	ea000037 	b	100 <grep+0x100>
      20:	e51b2008 	ldr	r2, [fp, #-8]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e0823003 	add	r3, r2, r3
      2c:	e50b3008 	str	r3, [fp, #-8]
      30:	e59f3108 	ldr	r3, [pc, #264]	@ 140 <grep+0x140>
      34:	e50b300c 	str	r3, [fp, #-12]
      38:	ea000016 	b	98 <grep+0x98>
      3c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      40:	e3a02000 	mov	r2, #0
      44:	e5c32000 	strb	r2, [r3]
      48:	e51b100c 	ldr	r1, [fp, #-12]
      4c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
      50:	eb000079 	bl	23c <match>
      54:	e1a03000 	mov	r3, r0
      58:	e3530000 	cmp	r3, #0
      5c:	0a00000a 	beq	8c <grep+0x8c>
      60:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      64:	e3a0200a 	mov	r2, #10
      68:	e5c32000 	strb	r2, [r3]
      6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      70:	e2832001 	add	r2, r3, #1
      74:	e51b300c 	ldr	r3, [fp, #-12]
      78:	e0423003 	sub	r3, r2, r3
      7c:	e1a02003 	mov	r2, r3
      80:	e51b100c 	ldr	r1, [fp, #-12]
      84:	e3a00001 	mov	r0, #1
      88:	eb000256 	bl	9e8 <write>
      8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      90:	e2833001 	add	r3, r3, #1
      94:	e50b300c 	str	r3, [fp, #-12]
      98:	e3a0100a 	mov	r1, #10
      9c:	e51b000c 	ldr	r0, [fp, #-12]
      a0:	eb000184 	bl	6b8 <strchr>
      a4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
      a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      ac:	e3530000 	cmp	r3, #0
      b0:	1affffe1 	bne	3c <grep+0x3c>
      b4:	e51b300c 	ldr	r3, [fp, #-12]
      b8:	e59f2080 	ldr	r2, [pc, #128]	@ 140 <grep+0x140>
      bc:	e1530002 	cmp	r3, r2
      c0:	1a000001 	bne	cc <grep+0xcc>
      c4:	e3a03000 	mov	r3, #0
      c8:	e50b3008 	str	r3, [fp, #-8]
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e3530000 	cmp	r3, #0
      d4:	da000009 	ble	100 <grep+0x100>
      d8:	e51b300c 	ldr	r3, [fp, #-12]
      dc:	e59f205c 	ldr	r2, [pc, #92]	@ 140 <grep+0x140>
      e0:	e0433002 	sub	r3, r3, r2
      e4:	e51b2008 	ldr	r2, [fp, #-8]
      e8:	e0423003 	sub	r3, r2, r3
      ec:	e50b3008 	str	r3, [fp, #-8]
      f0:	e51b2008 	ldr	r2, [fp, #-8]
      f4:	e51b100c 	ldr	r1, [fp, #-12]
      f8:	e59f0040 	ldr	r0, [pc, #64]	@ 140 <grep+0x140>
      fc:	eb0001ef 	bl	8c0 <memmove>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e59f2034 	ldr	r2, [pc, #52]	@ 140 <grep+0x140>
     108:	e0831002 	add	r1, r3, r2
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e2633b01 	rsb	r3, r3, #1024	@ 0x400
     114:	e1a02003 	mov	r2, r3
     118:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     11c:	eb000228 	bl	9c4 <read>
     120:	e50b0010 	str	r0, [fp, #-16]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e3530000 	cmp	r3, #0
     12c:	caffffbb 	bgt	20 <grep+0x20>
     130:	e1a00000 	nop			@ (mov r0, r0)
     134:	e1a00000 	nop			@ (mov r0, r0)
     138:	e24bd004 	sub	sp, fp, #4
     13c:	e8bd8800 	pop	{fp, pc}
     140:	00001514 	.word	0x00001514

00000144 <main>:
     144:	e92d4800 	push	{fp, lr}
     148:	e28db004 	add	fp, sp, #4
     14c:	e24dd018 	sub	sp, sp, #24
     150:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     154:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     158:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     15c:	e3530001 	cmp	r3, #1
     160:	ca000003 	bgt	174 <main+0x30>
     164:	e59f10c8 	ldr	r1, [pc, #200]	@ 234 <main+0xf0>
     168:	e3a00002 	mov	r0, #2
     16c:	eb000324 	bl	e04 <printf>
     170:	eb0001f8 	bl	958 <exit>
     174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     178:	e5933004 	ldr	r3, [r3, #4]
     17c:	e50b300c 	str	r3, [fp, #-12]
     180:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     184:	e3530002 	cmp	r3, #2
     188:	ca000003 	bgt	19c <main+0x58>
     18c:	e3a01000 	mov	r1, #0
     190:	e51b000c 	ldr	r0, [fp, #-12]
     194:	ebffff99 	bl	0 <grep>
     198:	eb0001ee 	bl	958 <exit>
     19c:	e3a03002 	mov	r3, #2
     1a0:	e50b3008 	str	r3, [fp, #-8]
     1a4:	ea00001d 	b	220 <main+0xdc>
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e1a03103 	lsl	r3, r3, #2
     1b0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     1b4:	e0823003 	add	r3, r2, r3
     1b8:	e5933000 	ldr	r3, [r3]
     1bc:	e3a01000 	mov	r1, #0
     1c0:	e1a00003 	mov	r0, r3
     1c4:	eb00022b 	bl	a78 <open>
     1c8:	e50b0010 	str	r0, [fp, #-16]
     1cc:	e51b3010 	ldr	r3, [fp, #-16]
     1d0:	e3530000 	cmp	r3, #0
     1d4:	aa000009 	bge	200 <main+0xbc>
     1d8:	e51b3008 	ldr	r3, [fp, #-8]
     1dc:	e1a03103 	lsl	r3, r3, #2
     1e0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     1e4:	e0823003 	add	r3, r2, r3
     1e8:	e5933000 	ldr	r3, [r3]
     1ec:	e1a02003 	mov	r2, r3
     1f0:	e59f1040 	ldr	r1, [pc, #64]	@ 238 <main+0xf4>
     1f4:	e3a00001 	mov	r0, #1
     1f8:	eb000301 	bl	e04 <printf>
     1fc:	eb0001d5 	bl	958 <exit>
     200:	e51b1010 	ldr	r1, [fp, #-16]
     204:	e51b000c 	ldr	r0, [fp, #-12]
     208:	ebffff7c 	bl	0 <grep>
     20c:	e51b0010 	ldr	r0, [fp, #-16]
     210:	eb0001fd 	bl	a0c <close>
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e2833001 	add	r3, r3, #1
     21c:	e50b3008 	str	r3, [fp, #-8]
     220:	e51b2008 	ldr	r2, [fp, #-8]
     224:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     228:	e1520003 	cmp	r2, r3
     22c:	baffffdd 	blt	1a8 <main+0x64>
     230:	eb0001c8 	bl	958 <exit>
     234:	000014c0 	.word	0x000014c0
     238:	000014e0 	.word	0x000014e0

0000023c <match>:
     23c:	e92d4800 	push	{fp, lr}
     240:	e28db004 	add	fp, sp, #4
     244:	e24dd008 	sub	sp, sp, #8
     248:	e50b0008 	str	r0, [fp, #-8]
     24c:	e50b100c 	str	r1, [fp, #-12]
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e5d33000 	ldrb	r3, [r3]
     258:	e353005e 	cmp	r3, #94	@ 0x5e
     25c:	1a000006 	bne	27c <match+0x40>
     260:	e51b3008 	ldr	r3, [fp, #-8]
     264:	e2833001 	add	r3, r3, #1
     268:	e51b100c 	ldr	r1, [fp, #-12]
     26c:	e1a00003 	mov	r0, r3
     270:	eb000013 	bl	2c4 <matchhere>
     274:	e1a03000 	mov	r3, r0
     278:	ea00000e 	b	2b8 <match+0x7c>
     27c:	e51b100c 	ldr	r1, [fp, #-12]
     280:	e51b0008 	ldr	r0, [fp, #-8]
     284:	eb00000e 	bl	2c4 <matchhere>
     288:	e1a03000 	mov	r3, r0
     28c:	e3530000 	cmp	r3, #0
     290:	0a000001 	beq	29c <match+0x60>
     294:	e3a03001 	mov	r3, #1
     298:	ea000006 	b	2b8 <match+0x7c>
     29c:	e51b300c 	ldr	r3, [fp, #-12]
     2a0:	e2832001 	add	r2, r3, #1
     2a4:	e50b200c 	str	r2, [fp, #-12]
     2a8:	e5d33000 	ldrb	r3, [r3]
     2ac:	e3530000 	cmp	r3, #0
     2b0:	1afffff1 	bne	27c <match+0x40>
     2b4:	e3a03000 	mov	r3, #0
     2b8:	e1a00003 	mov	r0, r3
     2bc:	e24bd004 	sub	sp, fp, #4
     2c0:	e8bd8800 	pop	{fp, pc}

000002c4 <matchhere>:
     2c4:	e92d4800 	push	{fp, lr}
     2c8:	e28db004 	add	fp, sp, #4
     2cc:	e24dd008 	sub	sp, sp, #8
     2d0:	e50b0008 	str	r0, [fp, #-8]
     2d4:	e50b100c 	str	r1, [fp, #-12]
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e5d33000 	ldrb	r3, [r3]
     2e0:	e3530000 	cmp	r3, #0
     2e4:	1a000001 	bne	2f0 <matchhere+0x2c>
     2e8:	e3a03001 	mov	r3, #1
     2ec:	ea000036 	b	3cc <matchhere+0x108>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e2833001 	add	r3, r3, #1
     2f8:	e5d33000 	ldrb	r3, [r3]
     2fc:	e353002a 	cmp	r3, #42	@ 0x2a
     300:	1a000009 	bne	32c <matchhere+0x68>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e5d33000 	ldrb	r3, [r3]
     30c:	e1a00003 	mov	r0, r3
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e2833002 	add	r3, r3, #2
     318:	e51b200c 	ldr	r2, [fp, #-12]
     31c:	e1a01003 	mov	r1, r3
     320:	eb00002c 	bl	3d8 <matchstar>
     324:	e1a03000 	mov	r3, r0
     328:	ea000027 	b	3cc <matchhere+0x108>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e5d33000 	ldrb	r3, [r3]
     334:	e3530024 	cmp	r3, #36	@ 0x24
     338:	1a00000b 	bne	36c <matchhere+0xa8>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2833001 	add	r3, r3, #1
     344:	e5d33000 	ldrb	r3, [r3]
     348:	e3530000 	cmp	r3, #0
     34c:	1a000006 	bne	36c <matchhere+0xa8>
     350:	e51b300c 	ldr	r3, [fp, #-12]
     354:	e5d33000 	ldrb	r3, [r3]
     358:	e3530000 	cmp	r3, #0
     35c:	03a03001 	moveq	r3, #1
     360:	13a03000 	movne	r3, #0
     364:	e6ef3073 	uxtb	r3, r3
     368:	ea000017 	b	3cc <matchhere+0x108>
     36c:	e51b300c 	ldr	r3, [fp, #-12]
     370:	e5d33000 	ldrb	r3, [r3]
     374:	e3530000 	cmp	r3, #0
     378:	0a000012 	beq	3c8 <matchhere+0x104>
     37c:	e51b3008 	ldr	r3, [fp, #-8]
     380:	e5d33000 	ldrb	r3, [r3]
     384:	e353002e 	cmp	r3, #46	@ 0x2e
     388:	0a000005 	beq	3a4 <matchhere+0xe0>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e5d32000 	ldrb	r2, [r3]
     394:	e51b300c 	ldr	r3, [fp, #-12]
     398:	e5d33000 	ldrb	r3, [r3]
     39c:	e1520003 	cmp	r2, r3
     3a0:	1a000008 	bne	3c8 <matchhere+0x104>
     3a4:	e51b3008 	ldr	r3, [fp, #-8]
     3a8:	e2832001 	add	r2, r3, #1
     3ac:	e51b300c 	ldr	r3, [fp, #-12]
     3b0:	e2833001 	add	r3, r3, #1
     3b4:	e1a01003 	mov	r1, r3
     3b8:	e1a00002 	mov	r0, r2
     3bc:	ebffffc0 	bl	2c4 <matchhere>
     3c0:	e1a03000 	mov	r3, r0
     3c4:	ea000000 	b	3cc <matchhere+0x108>
     3c8:	e3a03000 	mov	r3, #0
     3cc:	e1a00003 	mov	r0, r3
     3d0:	e24bd004 	sub	sp, fp, #4
     3d4:	e8bd8800 	pop	{fp, pc}

000003d8 <matchstar>:
     3d8:	e92d4800 	push	{fp, lr}
     3dc:	e28db004 	add	fp, sp, #4
     3e0:	e24dd010 	sub	sp, sp, #16
     3e4:	e50b0008 	str	r0, [fp, #-8]
     3e8:	e50b100c 	str	r1, [fp, #-12]
     3ec:	e50b2010 	str	r2, [fp, #-16]
     3f0:	e51b1010 	ldr	r1, [fp, #-16]
     3f4:	e51b000c 	ldr	r0, [fp, #-12]
     3f8:	ebffffb1 	bl	2c4 <matchhere>
     3fc:	e1a03000 	mov	r3, r0
     400:	e3530000 	cmp	r3, #0
     404:	0a000001 	beq	410 <matchstar+0x38>
     408:	e3a03001 	mov	r3, #1
     40c:	ea00000f 	b	450 <matchstar+0x78>
     410:	e51b3010 	ldr	r3, [fp, #-16]
     414:	e5d33000 	ldrb	r3, [r3]
     418:	e3530000 	cmp	r3, #0
     41c:	0a00000a 	beq	44c <matchstar+0x74>
     420:	e51b3010 	ldr	r3, [fp, #-16]
     424:	e2832001 	add	r2, r3, #1
     428:	e50b2010 	str	r2, [fp, #-16]
     42c:	e5d33000 	ldrb	r3, [r3]
     430:	e1a02003 	mov	r2, r3
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e1530002 	cmp	r3, r2
     43c:	0affffeb 	beq	3f0 <matchstar+0x18>
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	e353002e 	cmp	r3, #46	@ 0x2e
     448:	0affffe8 	beq	3f0 <matchstar+0x18>
     44c:	e3a03000 	mov	r3, #0
     450:	e1a00003 	mov	r0, r3
     454:	e24bd004 	sub	sp, fp, #4
     458:	e8bd8800 	pop	{fp, pc}

0000045c <strcpy>:
     45c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     460:	e28db000 	add	fp, sp, #0
     464:	e24dd014 	sub	sp, sp, #20
     468:	e50b0010 	str	r0, [fp, #-16]
     46c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     470:	e51b3010 	ldr	r3, [fp, #-16]
     474:	e50b3008 	str	r3, [fp, #-8]
     478:	e1a00000 	nop			@ (mov r0, r0)
     47c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     480:	e2823001 	add	r3, r2, #1
     484:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     488:	e51b3010 	ldr	r3, [fp, #-16]
     48c:	e2831001 	add	r1, r3, #1
     490:	e50b1010 	str	r1, [fp, #-16]
     494:	e5d22000 	ldrb	r2, [r2]
     498:	e5c32000 	strb	r2, [r3]
     49c:	e5d33000 	ldrb	r3, [r3]
     4a0:	e3530000 	cmp	r3, #0
     4a4:	1afffff4 	bne	47c <strcpy+0x20>
     4a8:	e51b3008 	ldr	r3, [fp, #-8]
     4ac:	e1a00003 	mov	r0, r3
     4b0:	e28bd000 	add	sp, fp, #0
     4b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4b8:	e12fff1e 	bx	lr

000004bc <strcmp>:
     4bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4c0:	e28db000 	add	fp, sp, #0
     4c4:	e24dd00c 	sub	sp, sp, #12
     4c8:	e50b0008 	str	r0, [fp, #-8]
     4cc:	e50b100c 	str	r1, [fp, #-12]
     4d0:	ea000005 	b	4ec <strcmp+0x30>
     4d4:	e51b3008 	ldr	r3, [fp, #-8]
     4d8:	e2833001 	add	r3, r3, #1
     4dc:	e50b3008 	str	r3, [fp, #-8]
     4e0:	e51b300c 	ldr	r3, [fp, #-12]
     4e4:	e2833001 	add	r3, r3, #1
     4e8:	e50b300c 	str	r3, [fp, #-12]
     4ec:	e51b3008 	ldr	r3, [fp, #-8]
     4f0:	e5d33000 	ldrb	r3, [r3]
     4f4:	e3530000 	cmp	r3, #0
     4f8:	0a000005 	beq	514 <strcmp+0x58>
     4fc:	e51b3008 	ldr	r3, [fp, #-8]
     500:	e5d32000 	ldrb	r2, [r3]
     504:	e51b300c 	ldr	r3, [fp, #-12]
     508:	e5d33000 	ldrb	r3, [r3]
     50c:	e1520003 	cmp	r2, r3
     510:	0affffef 	beq	4d4 <strcmp+0x18>
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e5d33000 	ldrb	r3, [r3]
     51c:	e1a02003 	mov	r2, r3
     520:	e51b300c 	ldr	r3, [fp, #-12]
     524:	e5d33000 	ldrb	r3, [r3]
     528:	e0423003 	sub	r3, r2, r3
     52c:	e1a00003 	mov	r0, r3
     530:	e28bd000 	add	sp, fp, #0
     534:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     538:	e12fff1e 	bx	lr

0000053c <strlen>:
     53c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     540:	e28db000 	add	fp, sp, #0
     544:	e24dd014 	sub	sp, sp, #20
     548:	e50b0010 	str	r0, [fp, #-16]
     54c:	e3a03000 	mov	r3, #0
     550:	e50b3008 	str	r3, [fp, #-8]
     554:	ea000002 	b	564 <strlen+0x28>
     558:	e51b3008 	ldr	r3, [fp, #-8]
     55c:	e2833001 	add	r3, r3, #1
     560:	e50b3008 	str	r3, [fp, #-8]
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e51b2010 	ldr	r2, [fp, #-16]
     56c:	e0823003 	add	r3, r2, r3
     570:	e5d33000 	ldrb	r3, [r3]
     574:	e3530000 	cmp	r3, #0
     578:	1afffff6 	bne	558 <strlen+0x1c>
     57c:	e51b3008 	ldr	r3, [fp, #-8]
     580:	e1a00003 	mov	r0, r3
     584:	e28bd000 	add	sp, fp, #0
     588:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     58c:	e12fff1e 	bx	lr

00000590 <memset>:
     590:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     594:	e28db000 	add	fp, sp, #0
     598:	e24dd024 	sub	sp, sp, #36	@ 0x24
     59c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     5a0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     5a4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     5a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5ac:	e50b3008 	str	r3, [fp, #-8]
     5b0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     5b4:	e54b300d 	strb	r3, [fp, #-13]
     5b8:	e55b200d 	ldrb	r2, [fp, #-13]
     5bc:	e1a03002 	mov	r3, r2
     5c0:	e1a03403 	lsl	r3, r3, #8
     5c4:	e0833002 	add	r3, r3, r2
     5c8:	e1a03803 	lsl	r3, r3, #16
     5cc:	e1a02003 	mov	r2, r3
     5d0:	e55b300d 	ldrb	r3, [fp, #-13]
     5d4:	e1a03403 	lsl	r3, r3, #8
     5d8:	e1822003 	orr	r2, r2, r3
     5dc:	e55b300d 	ldrb	r3, [fp, #-13]
     5e0:	e1823003 	orr	r3, r2, r3
     5e4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     5e8:	ea000008 	b	610 <memset+0x80>
     5ec:	e51b3008 	ldr	r3, [fp, #-8]
     5f0:	e55b200d 	ldrb	r2, [fp, #-13]
     5f4:	e5c32000 	strb	r2, [r3]
     5f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5fc:	e2433001 	sub	r3, r3, #1
     600:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     604:	e51b3008 	ldr	r3, [fp, #-8]
     608:	e2833001 	add	r3, r3, #1
     60c:	e50b3008 	str	r3, [fp, #-8]
     610:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     614:	e3530000 	cmp	r3, #0
     618:	0a000003 	beq	62c <memset+0x9c>
     61c:	e51b3008 	ldr	r3, [fp, #-8]
     620:	e2033003 	and	r3, r3, #3
     624:	e3530000 	cmp	r3, #0
     628:	1affffef 	bne	5ec <memset+0x5c>
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	e50b300c 	str	r3, [fp, #-12]
     634:	ea000008 	b	65c <memset+0xcc>
     638:	e51b300c 	ldr	r3, [fp, #-12]
     63c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     640:	e5832000 	str	r2, [r3]
     644:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     648:	e2433004 	sub	r3, r3, #4
     64c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     650:	e51b300c 	ldr	r3, [fp, #-12]
     654:	e2833004 	add	r3, r3, #4
     658:	e50b300c 	str	r3, [fp, #-12]
     65c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     660:	e3530003 	cmp	r3, #3
     664:	8afffff3 	bhi	638 <memset+0xa8>
     668:	e51b300c 	ldr	r3, [fp, #-12]
     66c:	e50b3008 	str	r3, [fp, #-8]
     670:	ea000008 	b	698 <memset+0x108>
     674:	e51b3008 	ldr	r3, [fp, #-8]
     678:	e55b200d 	ldrb	r2, [fp, #-13]
     67c:	e5c32000 	strb	r2, [r3]
     680:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     684:	e2433001 	sub	r3, r3, #1
     688:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     68c:	e51b3008 	ldr	r3, [fp, #-8]
     690:	e2833001 	add	r3, r3, #1
     694:	e50b3008 	str	r3, [fp, #-8]
     698:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     69c:	e3530000 	cmp	r3, #0
     6a0:	1afffff3 	bne	674 <memset+0xe4>
     6a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6a8:	e1a00003 	mov	r0, r3
     6ac:	e28bd000 	add	sp, fp, #0
     6b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6b4:	e12fff1e 	bx	lr

000006b8 <strchr>:
     6b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6bc:	e28db000 	add	fp, sp, #0
     6c0:	e24dd00c 	sub	sp, sp, #12
     6c4:	e50b0008 	str	r0, [fp, #-8]
     6c8:	e1a03001 	mov	r3, r1
     6cc:	e54b3009 	strb	r3, [fp, #-9]
     6d0:	ea000009 	b	6fc <strchr+0x44>
     6d4:	e51b3008 	ldr	r3, [fp, #-8]
     6d8:	e5d33000 	ldrb	r3, [r3]
     6dc:	e55b2009 	ldrb	r2, [fp, #-9]
     6e0:	e1520003 	cmp	r2, r3
     6e4:	1a000001 	bne	6f0 <strchr+0x38>
     6e8:	e51b3008 	ldr	r3, [fp, #-8]
     6ec:	ea000007 	b	710 <strchr+0x58>
     6f0:	e51b3008 	ldr	r3, [fp, #-8]
     6f4:	e2833001 	add	r3, r3, #1
     6f8:	e50b3008 	str	r3, [fp, #-8]
     6fc:	e51b3008 	ldr	r3, [fp, #-8]
     700:	e5d33000 	ldrb	r3, [r3]
     704:	e3530000 	cmp	r3, #0
     708:	1afffff1 	bne	6d4 <strchr+0x1c>
     70c:	e3a03000 	mov	r3, #0
     710:	e1a00003 	mov	r0, r3
     714:	e28bd000 	add	sp, fp, #0
     718:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <gets>:
     720:	e92d4800 	push	{fp, lr}
     724:	e28db004 	add	fp, sp, #4
     728:	e24dd018 	sub	sp, sp, #24
     72c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     730:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     734:	e3a03000 	mov	r3, #0
     738:	e50b3008 	str	r3, [fp, #-8]
     73c:	ea000016 	b	79c <gets+0x7c>
     740:	e24b300d 	sub	r3, fp, #13
     744:	e3a02001 	mov	r2, #1
     748:	e1a01003 	mov	r1, r3
     74c:	e3a00000 	mov	r0, #0
     750:	eb00009b 	bl	9c4 <read>
     754:	e50b000c 	str	r0, [fp, #-12]
     758:	e51b300c 	ldr	r3, [fp, #-12]
     75c:	e3530000 	cmp	r3, #0
     760:	da000013 	ble	7b4 <gets+0x94>
     764:	e51b3008 	ldr	r3, [fp, #-8]
     768:	e2832001 	add	r2, r3, #1
     76c:	e50b2008 	str	r2, [fp, #-8]
     770:	e1a02003 	mov	r2, r3
     774:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     778:	e0833002 	add	r3, r3, r2
     77c:	e55b200d 	ldrb	r2, [fp, #-13]
     780:	e5c32000 	strb	r2, [r3]
     784:	e55b300d 	ldrb	r3, [fp, #-13]
     788:	e353000a 	cmp	r3, #10
     78c:	0a000009 	beq	7b8 <gets+0x98>
     790:	e55b300d 	ldrb	r3, [fp, #-13]
     794:	e353000d 	cmp	r3, #13
     798:	0a000006 	beq	7b8 <gets+0x98>
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e2833001 	add	r3, r3, #1
     7a4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     7a8:	e1520003 	cmp	r2, r3
     7ac:	caffffe3 	bgt	740 <gets+0x20>
     7b0:	ea000000 	b	7b8 <gets+0x98>
     7b4:	e1a00000 	nop			@ (mov r0, r0)
     7b8:	e51b3008 	ldr	r3, [fp, #-8]
     7bc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     7c0:	e0823003 	add	r3, r2, r3
     7c4:	e3a02000 	mov	r2, #0
     7c8:	e5c32000 	strb	r2, [r3]
     7cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     7d0:	e1a00003 	mov	r0, r3
     7d4:	e24bd004 	sub	sp, fp, #4
     7d8:	e8bd8800 	pop	{fp, pc}

000007dc <stat>:
     7dc:	e92d4800 	push	{fp, lr}
     7e0:	e28db004 	add	fp, sp, #4
     7e4:	e24dd010 	sub	sp, sp, #16
     7e8:	e50b0010 	str	r0, [fp, #-16]
     7ec:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     7f0:	e3a01000 	mov	r1, #0
     7f4:	e51b0010 	ldr	r0, [fp, #-16]
     7f8:	eb00009e 	bl	a78 <open>
     7fc:	e50b0008 	str	r0, [fp, #-8]
     800:	e51b3008 	ldr	r3, [fp, #-8]
     804:	e3530000 	cmp	r3, #0
     808:	aa000001 	bge	814 <stat+0x38>
     80c:	e3e03000 	mvn	r3, #0
     810:	ea000006 	b	830 <stat+0x54>
     814:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     818:	e51b0008 	ldr	r0, [fp, #-8]
     81c:	eb0000b0 	bl	ae4 <fstat>
     820:	e50b000c 	str	r0, [fp, #-12]
     824:	e51b0008 	ldr	r0, [fp, #-8]
     828:	eb000077 	bl	a0c <close>
     82c:	e51b300c 	ldr	r3, [fp, #-12]
     830:	e1a00003 	mov	r0, r3
     834:	e24bd004 	sub	sp, fp, #4
     838:	e8bd8800 	pop	{fp, pc}

0000083c <atoi>:
     83c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     840:	e28db000 	add	fp, sp, #0
     844:	e24dd014 	sub	sp, sp, #20
     848:	e50b0010 	str	r0, [fp, #-16]
     84c:	e3a03000 	mov	r3, #0
     850:	e50b3008 	str	r3, [fp, #-8]
     854:	ea00000c 	b	88c <atoi+0x50>
     858:	e51b2008 	ldr	r2, [fp, #-8]
     85c:	e1a03002 	mov	r3, r2
     860:	e1a03103 	lsl	r3, r3, #2
     864:	e0833002 	add	r3, r3, r2
     868:	e1a03083 	lsl	r3, r3, #1
     86c:	e1a01003 	mov	r1, r3
     870:	e51b3010 	ldr	r3, [fp, #-16]
     874:	e2832001 	add	r2, r3, #1
     878:	e50b2010 	str	r2, [fp, #-16]
     87c:	e5d33000 	ldrb	r3, [r3]
     880:	e0813003 	add	r3, r1, r3
     884:	e2433030 	sub	r3, r3, #48	@ 0x30
     888:	e50b3008 	str	r3, [fp, #-8]
     88c:	e51b3010 	ldr	r3, [fp, #-16]
     890:	e5d33000 	ldrb	r3, [r3]
     894:	e353002f 	cmp	r3, #47	@ 0x2f
     898:	9a000003 	bls	8ac <atoi+0x70>
     89c:	e51b3010 	ldr	r3, [fp, #-16]
     8a0:	e5d33000 	ldrb	r3, [r3]
     8a4:	e3530039 	cmp	r3, #57	@ 0x39
     8a8:	9affffea 	bls	858 <atoi+0x1c>
     8ac:	e51b3008 	ldr	r3, [fp, #-8]
     8b0:	e1a00003 	mov	r0, r3
     8b4:	e28bd000 	add	sp, fp, #0
     8b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <memmove>:
     8c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     8c4:	e28db000 	add	fp, sp, #0
     8c8:	e24dd01c 	sub	sp, sp, #28
     8cc:	e50b0010 	str	r0, [fp, #-16]
     8d0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8d4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     8d8:	e51b3010 	ldr	r3, [fp, #-16]
     8dc:	e50b3008 	str	r3, [fp, #-8]
     8e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     8e4:	e50b300c 	str	r3, [fp, #-12]
     8e8:	ea000007 	b	90c <memmove+0x4c>
     8ec:	e51b200c 	ldr	r2, [fp, #-12]
     8f0:	e2823001 	add	r3, r2, #1
     8f4:	e50b300c 	str	r3, [fp, #-12]
     8f8:	e51b3008 	ldr	r3, [fp, #-8]
     8fc:	e2831001 	add	r1, r3, #1
     900:	e50b1008 	str	r1, [fp, #-8]
     904:	e5d22000 	ldrb	r2, [r2]
     908:	e5c32000 	strb	r2, [r3]
     90c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     910:	e2432001 	sub	r2, r3, #1
     914:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     918:	e3530000 	cmp	r3, #0
     91c:	cafffff2 	bgt	8ec <memmove+0x2c>
     920:	e51b3010 	ldr	r3, [fp, #-16]
     924:	e1a00003 	mov	r0, r3
     928:	e28bd000 	add	sp, fp, #0
     92c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     930:	e12fff1e 	bx	lr

00000934 <fork>:
     934:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     938:	e1a04003 	mov	r4, r3
     93c:	e1a03002 	mov	r3, r2
     940:	e1a02001 	mov	r2, r1
     944:	e1a01000 	mov	r1, r0
     948:	e3a00001 	mov	r0, #1
     94c:	ef000000 	svc	0x00000000
     950:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     954:	e12fff1e 	bx	lr

00000958 <exit>:
     958:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     95c:	e1a04003 	mov	r4, r3
     960:	e1a03002 	mov	r3, r2
     964:	e1a02001 	mov	r2, r1
     968:	e1a01000 	mov	r1, r0
     96c:	e3a00002 	mov	r0, #2
     970:	ef000000 	svc	0x00000000
     974:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     978:	e12fff1e 	bx	lr

0000097c <wait>:
     97c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     980:	e1a04003 	mov	r4, r3
     984:	e1a03002 	mov	r3, r2
     988:	e1a02001 	mov	r2, r1
     98c:	e1a01000 	mov	r1, r0
     990:	e3a00003 	mov	r0, #3
     994:	ef000000 	svc	0x00000000
     998:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     99c:	e12fff1e 	bx	lr

000009a0 <pipe>:
     9a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a4:	e1a04003 	mov	r4, r3
     9a8:	e1a03002 	mov	r3, r2
     9ac:	e1a02001 	mov	r2, r1
     9b0:	e1a01000 	mov	r1, r0
     9b4:	e3a00004 	mov	r0, #4
     9b8:	ef000000 	svc	0x00000000
     9bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c0:	e12fff1e 	bx	lr

000009c4 <read>:
     9c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c8:	e1a04003 	mov	r4, r3
     9cc:	e1a03002 	mov	r3, r2
     9d0:	e1a02001 	mov	r2, r1
     9d4:	e1a01000 	mov	r1, r0
     9d8:	e3a00005 	mov	r0, #5
     9dc:	ef000000 	svc	0x00000000
     9e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e4:	e12fff1e 	bx	lr

000009e8 <write>:
     9e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9ec:	e1a04003 	mov	r4, r3
     9f0:	e1a03002 	mov	r3, r2
     9f4:	e1a02001 	mov	r2, r1
     9f8:	e1a01000 	mov	r1, r0
     9fc:	e3a00010 	mov	r0, #16
     a00:	ef000000 	svc	0x00000000
     a04:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a08:	e12fff1e 	bx	lr

00000a0c <close>:
     a0c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a10:	e1a04003 	mov	r4, r3
     a14:	e1a03002 	mov	r3, r2
     a18:	e1a02001 	mov	r2, r1
     a1c:	e1a01000 	mov	r1, r0
     a20:	e3a00015 	mov	r0, #21
     a24:	ef000000 	svc	0x00000000
     a28:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a2c:	e12fff1e 	bx	lr

00000a30 <kill>:
     a30:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a34:	e1a04003 	mov	r4, r3
     a38:	e1a03002 	mov	r3, r2
     a3c:	e1a02001 	mov	r2, r1
     a40:	e1a01000 	mov	r1, r0
     a44:	e3a00006 	mov	r0, #6
     a48:	ef000000 	svc	0x00000000
     a4c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a50:	e12fff1e 	bx	lr

00000a54 <exec>:
     a54:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a58:	e1a04003 	mov	r4, r3
     a5c:	e1a03002 	mov	r3, r2
     a60:	e1a02001 	mov	r2, r1
     a64:	e1a01000 	mov	r1, r0
     a68:	e3a00007 	mov	r0, #7
     a6c:	ef000000 	svc	0x00000000
     a70:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a74:	e12fff1e 	bx	lr

00000a78 <open>:
     a78:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a7c:	e1a04003 	mov	r4, r3
     a80:	e1a03002 	mov	r3, r2
     a84:	e1a02001 	mov	r2, r1
     a88:	e1a01000 	mov	r1, r0
     a8c:	e3a0000f 	mov	r0, #15
     a90:	ef000000 	svc	0x00000000
     a94:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a98:	e12fff1e 	bx	lr

00000a9c <mknod>:
     a9c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     aa0:	e1a04003 	mov	r4, r3
     aa4:	e1a03002 	mov	r3, r2
     aa8:	e1a02001 	mov	r2, r1
     aac:	e1a01000 	mov	r1, r0
     ab0:	e3a00011 	mov	r0, #17
     ab4:	ef000000 	svc	0x00000000
     ab8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     abc:	e12fff1e 	bx	lr

00000ac0 <unlink>:
     ac0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac4:	e1a04003 	mov	r4, r3
     ac8:	e1a03002 	mov	r3, r2
     acc:	e1a02001 	mov	r2, r1
     ad0:	e1a01000 	mov	r1, r0
     ad4:	e3a00012 	mov	r0, #18
     ad8:	ef000000 	svc	0x00000000
     adc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ae0:	e12fff1e 	bx	lr

00000ae4 <fstat>:
     ae4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae8:	e1a04003 	mov	r4, r3
     aec:	e1a03002 	mov	r3, r2
     af0:	e1a02001 	mov	r2, r1
     af4:	e1a01000 	mov	r1, r0
     af8:	e3a00008 	mov	r0, #8
     afc:	ef000000 	svc	0x00000000
     b00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b04:	e12fff1e 	bx	lr

00000b08 <link>:
     b08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b0c:	e1a04003 	mov	r4, r3
     b10:	e1a03002 	mov	r3, r2
     b14:	e1a02001 	mov	r2, r1
     b18:	e1a01000 	mov	r1, r0
     b1c:	e3a00013 	mov	r0, #19
     b20:	ef000000 	svc	0x00000000
     b24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b28:	e12fff1e 	bx	lr

00000b2c <mkdir>:
     b2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b30:	e1a04003 	mov	r4, r3
     b34:	e1a03002 	mov	r3, r2
     b38:	e1a02001 	mov	r2, r1
     b3c:	e1a01000 	mov	r1, r0
     b40:	e3a00014 	mov	r0, #20
     b44:	ef000000 	svc	0x00000000
     b48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b4c:	e12fff1e 	bx	lr

00000b50 <chdir>:
     b50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b54:	e1a04003 	mov	r4, r3
     b58:	e1a03002 	mov	r3, r2
     b5c:	e1a02001 	mov	r2, r1
     b60:	e1a01000 	mov	r1, r0
     b64:	e3a00009 	mov	r0, #9
     b68:	ef000000 	svc	0x00000000
     b6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b70:	e12fff1e 	bx	lr

00000b74 <dup>:
     b74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b78:	e1a04003 	mov	r4, r3
     b7c:	e1a03002 	mov	r3, r2
     b80:	e1a02001 	mov	r2, r1
     b84:	e1a01000 	mov	r1, r0
     b88:	e3a0000a 	mov	r0, #10
     b8c:	ef000000 	svc	0x00000000
     b90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b94:	e12fff1e 	bx	lr

00000b98 <getpid>:
     b98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b9c:	e1a04003 	mov	r4, r3
     ba0:	e1a03002 	mov	r3, r2
     ba4:	e1a02001 	mov	r2, r1
     ba8:	e1a01000 	mov	r1, r0
     bac:	e3a0000b 	mov	r0, #11
     bb0:	ef000000 	svc	0x00000000
     bb4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb8:	e12fff1e 	bx	lr

00000bbc <sbrk>:
     bbc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bc0:	e1a04003 	mov	r4, r3
     bc4:	e1a03002 	mov	r3, r2
     bc8:	e1a02001 	mov	r2, r1
     bcc:	e1a01000 	mov	r1, r0
     bd0:	e3a0000c 	mov	r0, #12
     bd4:	ef000000 	svc	0x00000000
     bd8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bdc:	e12fff1e 	bx	lr

00000be0 <sleep>:
     be0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     be4:	e1a04003 	mov	r4, r3
     be8:	e1a03002 	mov	r3, r2
     bec:	e1a02001 	mov	r2, r1
     bf0:	e1a01000 	mov	r1, r0
     bf4:	e3a0000d 	mov	r0, #13
     bf8:	ef000000 	svc	0x00000000
     bfc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c00:	e12fff1e 	bx	lr

00000c04 <uptime>:
     c04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c08:	e1a04003 	mov	r4, r3
     c0c:	e1a03002 	mov	r3, r2
     c10:	e1a02001 	mov	r2, r1
     c14:	e1a01000 	mov	r1, r0
     c18:	e3a0000e 	mov	r0, #14
     c1c:	ef000000 	svc	0x00000000
     c20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c24:	e12fff1e 	bx	lr

00000c28 <pgpte>:
     c28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c2c:	e1a04003 	mov	r4, r3
     c30:	e1a03002 	mov	r3, r2
     c34:	e1a02001 	mov	r2, r1
     c38:	e1a01000 	mov	r1, r0
     c3c:	e3a00016 	mov	r0, #22
     c40:	ef000000 	svc	0x00000000
     c44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c48:	e12fff1e 	bx	lr

00000c4c <kpt>:
     c4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c50:	e1a04003 	mov	r4, r3
     c54:	e1a03002 	mov	r3, r2
     c58:	e1a02001 	mov	r2, r1
     c5c:	e1a01000 	mov	r1, r0
     c60:	e3a00017 	mov	r0, #23
     c64:	ef000000 	svc	0x00000000
     c68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c6c:	e12fff1e 	bx	lr

00000c70 <ugetpid>:
     c70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     c74:	e1a04003 	mov	r4, r3
     c78:	e1a03002 	mov	r3, r2
     c7c:	e1a02001 	mov	r2, r1
     c80:	e1a01000 	mov	r1, r0
     c84:	e3a00018 	mov	r0, #24
     c88:	ef000000 	svc	0x00000000
     c8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     c90:	e12fff1e 	bx	lr

00000c94 <putc>:
     c94:	e92d4800 	push	{fp, lr}
     c98:	e28db004 	add	fp, sp, #4
     c9c:	e24dd008 	sub	sp, sp, #8
     ca0:	e50b0008 	str	r0, [fp, #-8]
     ca4:	e1a03001 	mov	r3, r1
     ca8:	e54b3009 	strb	r3, [fp, #-9]
     cac:	e24b3009 	sub	r3, fp, #9
     cb0:	e3a02001 	mov	r2, #1
     cb4:	e1a01003 	mov	r1, r3
     cb8:	e51b0008 	ldr	r0, [fp, #-8]
     cbc:	ebffff49 	bl	9e8 <write>
     cc0:	e1a00000 	nop			@ (mov r0, r0)
     cc4:	e24bd004 	sub	sp, fp, #4
     cc8:	e8bd8800 	pop	{fp, pc}

00000ccc <printint>:
     ccc:	e92d4800 	push	{fp, lr}
     cd0:	e28db004 	add	fp, sp, #4
     cd4:	e24dd030 	sub	sp, sp, #48	@ 0x30
     cd8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     cdc:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     ce0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     ce4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     ce8:	e3a03000 	mov	r3, #0
     cec:	e50b300c 	str	r3, [fp, #-12]
     cf0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     cf4:	e3530000 	cmp	r3, #0
     cf8:	0a000008 	beq	d20 <printint+0x54>
     cfc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d00:	e3530000 	cmp	r3, #0
     d04:	aa000005 	bge	d20 <printint+0x54>
     d08:	e3a03001 	mov	r3, #1
     d0c:	e50b300c 	str	r3, [fp, #-12]
     d10:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d14:	e2633000 	rsb	r3, r3, #0
     d18:	e50b3010 	str	r3, [fp, #-16]
     d1c:	ea000001 	b	d28 <printint+0x5c>
     d20:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     d24:	e50b3010 	str	r3, [fp, #-16]
     d28:	e3a03000 	mov	r3, #0
     d2c:	e50b3008 	str	r3, [fp, #-8]
     d30:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     d34:	e51b3010 	ldr	r3, [fp, #-16]
     d38:	e1a01002 	mov	r1, r2
     d3c:	e1a00003 	mov	r0, r3
     d40:	eb0001d5 	bl	149c <__aeabi_uidivmod>
     d44:	e1a03001 	mov	r3, r1
     d48:	e1a01003 	mov	r1, r3
     d4c:	e51b3008 	ldr	r3, [fp, #-8]
     d50:	e2832001 	add	r2, r3, #1
     d54:	e50b2008 	str	r2, [fp, #-8]
     d58:	e59f20a0 	ldr	r2, [pc, #160]	@ e00 <printint+0x134>
     d5c:	e7d22001 	ldrb	r2, [r2, r1]
     d60:	e2433004 	sub	r3, r3, #4
     d64:	e083300b 	add	r3, r3, fp
     d68:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d6c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     d70:	e1a01003 	mov	r1, r3
     d74:	e51b0010 	ldr	r0, [fp, #-16]
     d78:	eb00018a 	bl	13a8 <__udivsi3>
     d7c:	e1a03000 	mov	r3, r0
     d80:	e50b3010 	str	r3, [fp, #-16]
     d84:	e51b3010 	ldr	r3, [fp, #-16]
     d88:	e3530000 	cmp	r3, #0
     d8c:	1affffe7 	bne	d30 <printint+0x64>
     d90:	e51b300c 	ldr	r3, [fp, #-12]
     d94:	e3530000 	cmp	r3, #0
     d98:	0a00000e 	beq	dd8 <printint+0x10c>
     d9c:	e51b3008 	ldr	r3, [fp, #-8]
     da0:	e2832001 	add	r2, r3, #1
     da4:	e50b2008 	str	r2, [fp, #-8]
     da8:	e2433004 	sub	r3, r3, #4
     dac:	e083300b 	add	r3, r3, fp
     db0:	e3a0202d 	mov	r2, #45	@ 0x2d
     db4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     db8:	ea000006 	b	dd8 <printint+0x10c>
     dbc:	e24b2020 	sub	r2, fp, #32
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e0823003 	add	r3, r2, r3
     dc8:	e5d33000 	ldrb	r3, [r3]
     dcc:	e1a01003 	mov	r1, r3
     dd0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     dd4:	ebffffae 	bl	c94 <putc>
     dd8:	e51b3008 	ldr	r3, [fp, #-8]
     ddc:	e2433001 	sub	r3, r3, #1
     de0:	e50b3008 	str	r3, [fp, #-8]
     de4:	e51b3008 	ldr	r3, [fp, #-8]
     de8:	e3530000 	cmp	r3, #0
     dec:	aafffff2 	bge	dbc <printint+0xf0>
     df0:	e1a00000 	nop			@ (mov r0, r0)
     df4:	e1a00000 	nop			@ (mov r0, r0)
     df8:	e24bd004 	sub	sp, fp, #4
     dfc:	e8bd8800 	pop	{fp, pc}
     e00:	00001500 	.word	0x00001500

00000e04 <printf>:
     e04:	e92d000e 	push	{r1, r2, r3}
     e08:	e92d4800 	push	{fp, lr}
     e0c:	e28db004 	add	fp, sp, #4
     e10:	e24dd024 	sub	sp, sp, #36	@ 0x24
     e14:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     e18:	e3a03000 	mov	r3, #0
     e1c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e20:	e28b3008 	add	r3, fp, #8
     e24:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e28:	e3a03000 	mov	r3, #0
     e2c:	e50b3010 	str	r3, [fp, #-16]
     e30:	ea000074 	b	1008 <printf+0x204>
     e34:	e59b2004 	ldr	r2, [fp, #4]
     e38:	e51b3010 	ldr	r3, [fp, #-16]
     e3c:	e0823003 	add	r3, r2, r3
     e40:	e5d33000 	ldrb	r3, [r3]
     e44:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     e48:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e4c:	e3530000 	cmp	r3, #0
     e50:	1a00000b 	bne	e84 <printf+0x80>
     e54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e58:	e3530025 	cmp	r3, #37	@ 0x25
     e5c:	1a000002 	bne	e6c <printf+0x68>
     e60:	e3a03025 	mov	r3, #37	@ 0x25
     e64:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e68:	ea000063 	b	ffc <printf+0x1f8>
     e6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e70:	e6ef3073 	uxtb	r3, r3
     e74:	e1a01003 	mov	r1, r3
     e78:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e7c:	ebffff84 	bl	c94 <putc>
     e80:	ea00005d 	b	ffc <printf+0x1f8>
     e84:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e88:	e3530025 	cmp	r3, #37	@ 0x25
     e8c:	1a00005a 	bne	ffc <printf+0x1f8>
     e90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e94:	e3530064 	cmp	r3, #100	@ 0x64
     e98:	1a00000a 	bne	ec8 <printf+0xc4>
     e9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ea0:	e5933000 	ldr	r3, [r3]
     ea4:	e1a01003 	mov	r1, r3
     ea8:	e3a03001 	mov	r3, #1
     eac:	e3a0200a 	mov	r2, #10
     eb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     eb4:	ebffff84 	bl	ccc <printint>
     eb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ebc:	e2833004 	add	r3, r3, #4
     ec0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ec4:	ea00004a 	b	ff4 <printf+0x1f0>
     ec8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ecc:	e3530078 	cmp	r3, #120	@ 0x78
     ed0:	0a000002 	beq	ee0 <printf+0xdc>
     ed4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ed8:	e3530070 	cmp	r3, #112	@ 0x70
     edc:	1a00000a 	bne	f0c <printf+0x108>
     ee0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ee4:	e5933000 	ldr	r3, [r3]
     ee8:	e1a01003 	mov	r1, r3
     eec:	e3a03000 	mov	r3, #0
     ef0:	e3a02010 	mov	r2, #16
     ef4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ef8:	ebffff73 	bl	ccc <printint>
     efc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f00:	e2833004 	add	r3, r3, #4
     f04:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f08:	ea000039 	b	ff4 <printf+0x1f0>
     f0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f10:	e3530073 	cmp	r3, #115	@ 0x73
     f14:	1a000018 	bne	f7c <printf+0x178>
     f18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f1c:	e5933000 	ldr	r3, [r3]
     f20:	e50b300c 	str	r3, [fp, #-12]
     f24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f28:	e2833004 	add	r3, r3, #4
     f2c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f30:	e51b300c 	ldr	r3, [fp, #-12]
     f34:	e3530000 	cmp	r3, #0
     f38:	1a00000a 	bne	f68 <printf+0x164>
     f3c:	e59f30f4 	ldr	r3, [pc, #244]	@ 1038 <printf+0x234>
     f40:	e50b300c 	str	r3, [fp, #-12]
     f44:	ea000007 	b	f68 <printf+0x164>
     f48:	e51b300c 	ldr	r3, [fp, #-12]
     f4c:	e5d33000 	ldrb	r3, [r3]
     f50:	e1a01003 	mov	r1, r3
     f54:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f58:	ebffff4d 	bl	c94 <putc>
     f5c:	e51b300c 	ldr	r3, [fp, #-12]
     f60:	e2833001 	add	r3, r3, #1
     f64:	e50b300c 	str	r3, [fp, #-12]
     f68:	e51b300c 	ldr	r3, [fp, #-12]
     f6c:	e5d33000 	ldrb	r3, [r3]
     f70:	e3530000 	cmp	r3, #0
     f74:	1afffff3 	bne	f48 <printf+0x144>
     f78:	ea00001d 	b	ff4 <printf+0x1f0>
     f7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f80:	e3530063 	cmp	r3, #99	@ 0x63
     f84:	1a000009 	bne	fb0 <printf+0x1ac>
     f88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f8c:	e5933000 	ldr	r3, [r3]
     f90:	e6ef3073 	uxtb	r3, r3
     f94:	e1a01003 	mov	r1, r3
     f98:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f9c:	ebffff3c 	bl	c94 <putc>
     fa0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fa4:	e2833004 	add	r3, r3, #4
     fa8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fac:	ea000010 	b	ff4 <printf+0x1f0>
     fb0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fb4:	e3530025 	cmp	r3, #37	@ 0x25
     fb8:	1a000005 	bne	fd4 <printf+0x1d0>
     fbc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fc0:	e6ef3073 	uxtb	r3, r3
     fc4:	e1a01003 	mov	r1, r3
     fc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fcc:	ebffff30 	bl	c94 <putc>
     fd0:	ea000007 	b	ff4 <printf+0x1f0>
     fd4:	e3a01025 	mov	r1, #37	@ 0x25
     fd8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     fdc:	ebffff2c 	bl	c94 <putc>
     fe0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     fe4:	e6ef3073 	uxtb	r3, r3
     fe8:	e1a01003 	mov	r1, r3
     fec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ff0:	ebffff27 	bl	c94 <putc>
     ff4:	e3a03000 	mov	r3, #0
     ff8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ffc:	e51b3010 	ldr	r3, [fp, #-16]
    1000:	e2833001 	add	r3, r3, #1
    1004:	e50b3010 	str	r3, [fp, #-16]
    1008:	e59b2004 	ldr	r2, [fp, #4]
    100c:	e51b3010 	ldr	r3, [fp, #-16]
    1010:	e0823003 	add	r3, r2, r3
    1014:	e5d33000 	ldrb	r3, [r3]
    1018:	e3530000 	cmp	r3, #0
    101c:	1affff84 	bne	e34 <printf+0x30>
    1020:	e1a00000 	nop			@ (mov r0, r0)
    1024:	e1a00000 	nop			@ (mov r0, r0)
    1028:	e24bd004 	sub	sp, fp, #4
    102c:	e8bd4800 	pop	{fp, lr}
    1030:	e28dd00c 	add	sp, sp, #12
    1034:	e12fff1e 	bx	lr
    1038:	000014f8 	.word	0x000014f8

0000103c <free>:
    103c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1040:	e28db000 	add	fp, sp, #0
    1044:	e24dd014 	sub	sp, sp, #20
    1048:	e50b0010 	str	r0, [fp, #-16]
    104c:	e51b3010 	ldr	r3, [fp, #-16]
    1050:	e2433008 	sub	r3, r3, #8
    1054:	e50b300c 	str	r3, [fp, #-12]
    1058:	e59f3154 	ldr	r3, [pc, #340]	@ 11b4 <free+0x178>
    105c:	e5933000 	ldr	r3, [r3]
    1060:	e50b3008 	str	r3, [fp, #-8]
    1064:	ea000010 	b	10ac <free+0x70>
    1068:	e51b3008 	ldr	r3, [fp, #-8]
    106c:	e5933000 	ldr	r3, [r3]
    1070:	e51b2008 	ldr	r2, [fp, #-8]
    1074:	e1520003 	cmp	r2, r3
    1078:	3a000008 	bcc	10a0 <free+0x64>
    107c:	e51b200c 	ldr	r2, [fp, #-12]
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e1520003 	cmp	r2, r3
    1088:	8a000010 	bhi	10d0 <free+0x94>
    108c:	e51b3008 	ldr	r3, [fp, #-8]
    1090:	e5933000 	ldr	r3, [r3]
    1094:	e51b200c 	ldr	r2, [fp, #-12]
    1098:	e1520003 	cmp	r2, r3
    109c:	3a00000b 	bcc	10d0 <free+0x94>
    10a0:	e51b3008 	ldr	r3, [fp, #-8]
    10a4:	e5933000 	ldr	r3, [r3]
    10a8:	e50b3008 	str	r3, [fp, #-8]
    10ac:	e51b200c 	ldr	r2, [fp, #-12]
    10b0:	e51b3008 	ldr	r3, [fp, #-8]
    10b4:	e1520003 	cmp	r2, r3
    10b8:	9affffea 	bls	1068 <free+0x2c>
    10bc:	e51b3008 	ldr	r3, [fp, #-8]
    10c0:	e5933000 	ldr	r3, [r3]
    10c4:	e51b200c 	ldr	r2, [fp, #-12]
    10c8:	e1520003 	cmp	r2, r3
    10cc:	2affffe5 	bcs	1068 <free+0x2c>
    10d0:	e51b300c 	ldr	r3, [fp, #-12]
    10d4:	e5933004 	ldr	r3, [r3, #4]
    10d8:	e1a03183 	lsl	r3, r3, #3
    10dc:	e51b200c 	ldr	r2, [fp, #-12]
    10e0:	e0822003 	add	r2, r2, r3
    10e4:	e51b3008 	ldr	r3, [fp, #-8]
    10e8:	e5933000 	ldr	r3, [r3]
    10ec:	e1520003 	cmp	r2, r3
    10f0:	1a00000d 	bne	112c <free+0xf0>
    10f4:	e51b300c 	ldr	r3, [fp, #-12]
    10f8:	e5932004 	ldr	r2, [r3, #4]
    10fc:	e51b3008 	ldr	r3, [fp, #-8]
    1100:	e5933000 	ldr	r3, [r3]
    1104:	e5933004 	ldr	r3, [r3, #4]
    1108:	e0822003 	add	r2, r2, r3
    110c:	e51b300c 	ldr	r3, [fp, #-12]
    1110:	e5832004 	str	r2, [r3, #4]
    1114:	e51b3008 	ldr	r3, [fp, #-8]
    1118:	e5933000 	ldr	r3, [r3]
    111c:	e5932000 	ldr	r2, [r3]
    1120:	e51b300c 	ldr	r3, [fp, #-12]
    1124:	e5832000 	str	r2, [r3]
    1128:	ea000003 	b	113c <free+0x100>
    112c:	e51b3008 	ldr	r3, [fp, #-8]
    1130:	e5932000 	ldr	r2, [r3]
    1134:	e51b300c 	ldr	r3, [fp, #-12]
    1138:	e5832000 	str	r2, [r3]
    113c:	e51b3008 	ldr	r3, [fp, #-8]
    1140:	e5933004 	ldr	r3, [r3, #4]
    1144:	e1a03183 	lsl	r3, r3, #3
    1148:	e51b2008 	ldr	r2, [fp, #-8]
    114c:	e0823003 	add	r3, r2, r3
    1150:	e51b200c 	ldr	r2, [fp, #-12]
    1154:	e1520003 	cmp	r2, r3
    1158:	1a00000b 	bne	118c <free+0x150>
    115c:	e51b3008 	ldr	r3, [fp, #-8]
    1160:	e5932004 	ldr	r2, [r3, #4]
    1164:	e51b300c 	ldr	r3, [fp, #-12]
    1168:	e5933004 	ldr	r3, [r3, #4]
    116c:	e0822003 	add	r2, r2, r3
    1170:	e51b3008 	ldr	r3, [fp, #-8]
    1174:	e5832004 	str	r2, [r3, #4]
    1178:	e51b300c 	ldr	r3, [fp, #-12]
    117c:	e5932000 	ldr	r2, [r3]
    1180:	e51b3008 	ldr	r3, [fp, #-8]
    1184:	e5832000 	str	r2, [r3]
    1188:	ea000002 	b	1198 <free+0x15c>
    118c:	e51b3008 	ldr	r3, [fp, #-8]
    1190:	e51b200c 	ldr	r2, [fp, #-12]
    1194:	e5832000 	str	r2, [r3]
    1198:	e59f2014 	ldr	r2, [pc, #20]	@ 11b4 <free+0x178>
    119c:	e51b3008 	ldr	r3, [fp, #-8]
    11a0:	e5823000 	str	r3, [r2]
    11a4:	e1a00000 	nop			@ (mov r0, r0)
    11a8:	e28bd000 	add	sp, fp, #0
    11ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    11b0:	e12fff1e 	bx	lr
    11b4:	0000191c 	.word	0x0000191c

000011b8 <morecore>:
    11b8:	e92d4800 	push	{fp, lr}
    11bc:	e28db004 	add	fp, sp, #4
    11c0:	e24dd010 	sub	sp, sp, #16
    11c4:	e50b0010 	str	r0, [fp, #-16]
    11c8:	e51b3010 	ldr	r3, [fp, #-16]
    11cc:	e3530a01 	cmp	r3, #4096	@ 0x1000
    11d0:	2a000001 	bcs	11dc <morecore+0x24>
    11d4:	e3a03a01 	mov	r3, #4096	@ 0x1000
    11d8:	e50b3010 	str	r3, [fp, #-16]
    11dc:	e51b3010 	ldr	r3, [fp, #-16]
    11e0:	e1a03183 	lsl	r3, r3, #3
    11e4:	e1a00003 	mov	r0, r3
    11e8:	ebfffe73 	bl	bbc <sbrk>
    11ec:	e50b0008 	str	r0, [fp, #-8]
    11f0:	e51b3008 	ldr	r3, [fp, #-8]
    11f4:	e3730001 	cmn	r3, #1
    11f8:	1a000001 	bne	1204 <morecore+0x4c>
    11fc:	e3a03000 	mov	r3, #0
    1200:	ea00000a 	b	1230 <morecore+0x78>
    1204:	e51b3008 	ldr	r3, [fp, #-8]
    1208:	e50b300c 	str	r3, [fp, #-12]
    120c:	e51b300c 	ldr	r3, [fp, #-12]
    1210:	e51b2010 	ldr	r2, [fp, #-16]
    1214:	e5832004 	str	r2, [r3, #4]
    1218:	e51b300c 	ldr	r3, [fp, #-12]
    121c:	e2833008 	add	r3, r3, #8
    1220:	e1a00003 	mov	r0, r3
    1224:	ebffff84 	bl	103c <free>
    1228:	e59f300c 	ldr	r3, [pc, #12]	@ 123c <morecore+0x84>
    122c:	e5933000 	ldr	r3, [r3]
    1230:	e1a00003 	mov	r0, r3
    1234:	e24bd004 	sub	sp, fp, #4
    1238:	e8bd8800 	pop	{fp, pc}
    123c:	0000191c 	.word	0x0000191c

00001240 <malloc>:
    1240:	e92d4800 	push	{fp, lr}
    1244:	e28db004 	add	fp, sp, #4
    1248:	e24dd018 	sub	sp, sp, #24
    124c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1250:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1254:	e2833007 	add	r3, r3, #7
    1258:	e1a031a3 	lsr	r3, r3, #3
    125c:	e2833001 	add	r3, r3, #1
    1260:	e50b3010 	str	r3, [fp, #-16]
    1264:	e59f3134 	ldr	r3, [pc, #308]	@ 13a0 <malloc+0x160>
    1268:	e5933000 	ldr	r3, [r3]
    126c:	e50b300c 	str	r3, [fp, #-12]
    1270:	e51b300c 	ldr	r3, [fp, #-12]
    1274:	e3530000 	cmp	r3, #0
    1278:	1a00000b 	bne	12ac <malloc+0x6c>
    127c:	e59f3120 	ldr	r3, [pc, #288]	@ 13a4 <malloc+0x164>
    1280:	e50b300c 	str	r3, [fp, #-12]
    1284:	e59f2114 	ldr	r2, [pc, #276]	@ 13a0 <malloc+0x160>
    1288:	e51b300c 	ldr	r3, [fp, #-12]
    128c:	e5823000 	str	r3, [r2]
    1290:	e59f3108 	ldr	r3, [pc, #264]	@ 13a0 <malloc+0x160>
    1294:	e5933000 	ldr	r3, [r3]
    1298:	e59f2104 	ldr	r2, [pc, #260]	@ 13a4 <malloc+0x164>
    129c:	e5823000 	str	r3, [r2]
    12a0:	e59f30fc 	ldr	r3, [pc, #252]	@ 13a4 <malloc+0x164>
    12a4:	e3a02000 	mov	r2, #0
    12a8:	e5832004 	str	r2, [r3, #4]
    12ac:	e51b300c 	ldr	r3, [fp, #-12]
    12b0:	e5933000 	ldr	r3, [r3]
    12b4:	e50b3008 	str	r3, [fp, #-8]
    12b8:	e51b3008 	ldr	r3, [fp, #-8]
    12bc:	e5933004 	ldr	r3, [r3, #4]
    12c0:	e51b2010 	ldr	r2, [fp, #-16]
    12c4:	e1520003 	cmp	r2, r3
    12c8:	8a00001e 	bhi	1348 <malloc+0x108>
    12cc:	e51b3008 	ldr	r3, [fp, #-8]
    12d0:	e5933004 	ldr	r3, [r3, #4]
    12d4:	e51b2010 	ldr	r2, [fp, #-16]
    12d8:	e1520003 	cmp	r2, r3
    12dc:	1a000004 	bne	12f4 <malloc+0xb4>
    12e0:	e51b3008 	ldr	r3, [fp, #-8]
    12e4:	e5932000 	ldr	r2, [r3]
    12e8:	e51b300c 	ldr	r3, [fp, #-12]
    12ec:	e5832000 	str	r2, [r3]
    12f0:	ea00000e 	b	1330 <malloc+0xf0>
    12f4:	e51b3008 	ldr	r3, [fp, #-8]
    12f8:	e5932004 	ldr	r2, [r3, #4]
    12fc:	e51b3010 	ldr	r3, [fp, #-16]
    1300:	e0422003 	sub	r2, r2, r3
    1304:	e51b3008 	ldr	r3, [fp, #-8]
    1308:	e5832004 	str	r2, [r3, #4]
    130c:	e51b3008 	ldr	r3, [fp, #-8]
    1310:	e5933004 	ldr	r3, [r3, #4]
    1314:	e1a03183 	lsl	r3, r3, #3
    1318:	e51b2008 	ldr	r2, [fp, #-8]
    131c:	e0823003 	add	r3, r2, r3
    1320:	e50b3008 	str	r3, [fp, #-8]
    1324:	e51b3008 	ldr	r3, [fp, #-8]
    1328:	e51b2010 	ldr	r2, [fp, #-16]
    132c:	e5832004 	str	r2, [r3, #4]
    1330:	e59f2068 	ldr	r2, [pc, #104]	@ 13a0 <malloc+0x160>
    1334:	e51b300c 	ldr	r3, [fp, #-12]
    1338:	e5823000 	str	r3, [r2]
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e2833008 	add	r3, r3, #8
    1344:	ea000012 	b	1394 <malloc+0x154>
    1348:	e59f3050 	ldr	r3, [pc, #80]	@ 13a0 <malloc+0x160>
    134c:	e5933000 	ldr	r3, [r3]
    1350:	e51b2008 	ldr	r2, [fp, #-8]
    1354:	e1520003 	cmp	r2, r3
    1358:	1a000007 	bne	137c <malloc+0x13c>
    135c:	e51b0010 	ldr	r0, [fp, #-16]
    1360:	ebffff94 	bl	11b8 <morecore>
    1364:	e50b0008 	str	r0, [fp, #-8]
    1368:	e51b3008 	ldr	r3, [fp, #-8]
    136c:	e3530000 	cmp	r3, #0
    1370:	1a000001 	bne	137c <malloc+0x13c>
    1374:	e3a03000 	mov	r3, #0
    1378:	ea000005 	b	1394 <malloc+0x154>
    137c:	e51b3008 	ldr	r3, [fp, #-8]
    1380:	e50b300c 	str	r3, [fp, #-12]
    1384:	e51b3008 	ldr	r3, [fp, #-8]
    1388:	e5933000 	ldr	r3, [r3]
    138c:	e50b3008 	str	r3, [fp, #-8]
    1390:	eaffffc8 	b	12b8 <malloc+0x78>
    1394:	e1a00003 	mov	r0, r3
    1398:	e24bd004 	sub	sp, fp, #4
    139c:	e8bd8800 	pop	{fp, pc}
    13a0:	0000191c 	.word	0x0000191c
    13a4:	00001914 	.word	0x00001914

000013a8 <__udivsi3>:
    13a8:	e2512001 	subs	r2, r1, #1
    13ac:	012fff1e 	bxeq	lr
    13b0:	3a000036 	bcc	1490 <__udivsi3+0xe8>
    13b4:	e1500001 	cmp	r0, r1
    13b8:	9a000022 	bls	1448 <__udivsi3+0xa0>
    13bc:	e1110002 	tst	r1, r2
    13c0:	0a000023 	beq	1454 <__udivsi3+0xac>
    13c4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    13c8:	01a01181 	lsleq	r1, r1, #3
    13cc:	03a03008 	moveq	r3, #8
    13d0:	13a03001 	movne	r3, #1
    13d4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    13d8:	31510000 	cmpcc	r1, r0
    13dc:	31a01201 	lslcc	r1, r1, #4
    13e0:	31a03203 	lslcc	r3, r3, #4
    13e4:	3afffffa 	bcc	13d4 <__udivsi3+0x2c>
    13e8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    13ec:	31510000 	cmpcc	r1, r0
    13f0:	31a01081 	lslcc	r1, r1, #1
    13f4:	31a03083 	lslcc	r3, r3, #1
    13f8:	3afffffa 	bcc	13e8 <__udivsi3+0x40>
    13fc:	e3a02000 	mov	r2, #0
    1400:	e1500001 	cmp	r0, r1
    1404:	20400001 	subcs	r0, r0, r1
    1408:	21822003 	orrcs	r2, r2, r3
    140c:	e15000a1 	cmp	r0, r1, lsr #1
    1410:	204000a1 	subcs	r0, r0, r1, lsr #1
    1414:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1418:	e1500121 	cmp	r0, r1, lsr #2
    141c:	20400121 	subcs	r0, r0, r1, lsr #2
    1420:	21822123 	orrcs	r2, r2, r3, lsr #2
    1424:	e15001a1 	cmp	r0, r1, lsr #3
    1428:	204001a1 	subcs	r0, r0, r1, lsr #3
    142c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1430:	e3500000 	cmp	r0, #0
    1434:	11b03223 	lsrsne	r3, r3, #4
    1438:	11a01221 	lsrne	r1, r1, #4
    143c:	1affffef 	bne	1400 <__udivsi3+0x58>
    1440:	e1a00002 	mov	r0, r2
    1444:	e12fff1e 	bx	lr
    1448:	03a00001 	moveq	r0, #1
    144c:	13a00000 	movne	r0, #0
    1450:	e12fff1e 	bx	lr
    1454:	e3510801 	cmp	r1, #65536	@ 0x10000
    1458:	21a01821 	lsrcs	r1, r1, #16
    145c:	23a02010 	movcs	r2, #16
    1460:	33a02000 	movcc	r2, #0
    1464:	e3510c01 	cmp	r1, #256	@ 0x100
    1468:	21a01421 	lsrcs	r1, r1, #8
    146c:	22822008 	addcs	r2, r2, #8
    1470:	e3510010 	cmp	r1, #16
    1474:	21a01221 	lsrcs	r1, r1, #4
    1478:	22822004 	addcs	r2, r2, #4
    147c:	e3510004 	cmp	r1, #4
    1480:	82822003 	addhi	r2, r2, #3
    1484:	908220a1 	addls	r2, r2, r1, lsr #1
    1488:	e1a00230 	lsr	r0, r0, r2
    148c:	e12fff1e 	bx	lr
    1490:	e3500000 	cmp	r0, #0
    1494:	13e00000 	mvnne	r0, #0
    1498:	ea000007 	b	14bc <__aeabi_idiv0>

0000149c <__aeabi_uidivmod>:
    149c:	e3510000 	cmp	r1, #0
    14a0:	0afffffa 	beq	1490 <__udivsi3+0xe8>
    14a4:	e92d4003 	push	{r0, r1, lr}
    14a8:	ebffffbe 	bl	13a8 <__udivsi3>
    14ac:	e8bd4006 	pop	{r1, r2, lr}
    14b0:	e0030092 	mul	r3, r2, r0
    14b4:	e0411003 	sub	r1, r1, r3
    14b8:	e12fff1e 	bx	lr

000014bc <__aeabi_idiv0>:
    14bc:	e12fff1e 	bx	lr
