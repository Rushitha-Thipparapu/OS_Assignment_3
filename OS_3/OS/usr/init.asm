
_init:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e3a01002 	mov	r1, #2
      10:	e59f00c4 	ldr	r0, [pc, #196]	@ dc <main+0xdc>
      14:	eb0001be 	bl	714 <open>
      18:	e1a03000 	mov	r3, r0
      1c:	e3530000 	cmp	r3, #0
      20:	aa000006 	bge	40 <main+0x40>
      24:	e3a02001 	mov	r2, #1
      28:	e3a01001 	mov	r1, #1
      2c:	e59f00a8 	ldr	r0, [pc, #168]	@ dc <main+0xdc>
      30:	eb0001c0 	bl	738 <mknod>
      34:	e3a01002 	mov	r1, #2
      38:	e59f009c 	ldr	r0, [pc, #156]	@ dc <main+0xdc>
      3c:	eb0001b4 	bl	714 <open>
      40:	e3a00000 	mov	r0, #0
      44:	eb0001f1 	bl	810 <dup>
      48:	e3a00000 	mov	r0, #0
      4c:	eb0001ef 	bl	810 <dup>
      50:	e59f1088 	ldr	r1, [pc, #136]	@ e0 <main+0xe0>
      54:	e3a00001 	mov	r0, #1
      58:	eb000290 	bl	aa0 <printf>
      5c:	eb00015b 	bl	5d0 <fork>
      60:	e50b0008 	str	r0, [fp, #-8]
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e3530000 	cmp	r3, #0
      6c:	aa000003 	bge	80 <main+0x80>
      70:	e59f106c 	ldr	r1, [pc, #108]	@ e4 <main+0xe4>
      74:	e3a00001 	mov	r0, #1
      78:	eb000288 	bl	aa0 <printf>
      7c:	eb00015c 	bl	5f4 <exit>
      80:	e51b3008 	ldr	r3, [fp, #-8]
      84:	e3530000 	cmp	r3, #0
      88:	1a000009 	bne	b4 <main+0xb4>
      8c:	e59f1054 	ldr	r1, [pc, #84]	@ e8 <main+0xe8>
      90:	e59f0054 	ldr	r0, [pc, #84]	@ ec <main+0xec>
      94:	eb000195 	bl	6f0 <exec>
      98:	e59f1050 	ldr	r1, [pc, #80]	@ f0 <main+0xf0>
      9c:	e3a00001 	mov	r0, #1
      a0:	eb00027e 	bl	aa0 <printf>
      a4:	eb000152 	bl	5f4 <exit>
      a8:	e59f1044 	ldr	r1, [pc, #68]	@ f4 <main+0xf4>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb00027a 	bl	aa0 <printf>
      b4:	eb000157 	bl	618 <wait>
      b8:	e50b000c 	str	r0, [fp, #-12]
      bc:	e51b300c 	ldr	r3, [fp, #-12]
      c0:	e3530000 	cmp	r3, #0
      c4:	baffffe1 	blt	50 <main+0x50>
      c8:	e51b200c 	ldr	r2, [fp, #-12]
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e1520003 	cmp	r2, r3
      d4:	1afffff3 	bne	a8 <main+0xa8>
      d8:	eaffffdc 	b	50 <main+0x50>
      dc:	00001160 	.word	0x00001160
      e0:	00001168 	.word	0x00001168
      e4:	0000117c 	.word	0x0000117c
      e8:	000011bc 	.word	0x000011bc
      ec:	0000115c 	.word	0x0000115c
      f0:	00001190 	.word	0x00001190
      f4:	000011a8 	.word	0x000011a8

000000f8 <strcpy>:
      f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      fc:	e28db000 	add	fp, sp, #0
     100:	e24dd014 	sub	sp, sp, #20
     104:	e50b0010 	str	r0, [fp, #-16]
     108:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     10c:	e51b3010 	ldr	r3, [fp, #-16]
     110:	e50b3008 	str	r3, [fp, #-8]
     114:	e1a00000 	nop			@ (mov r0, r0)
     118:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     11c:	e2823001 	add	r3, r2, #1
     120:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e2831001 	add	r1, r3, #1
     12c:	e50b1010 	str	r1, [fp, #-16]
     130:	e5d22000 	ldrb	r2, [r2]
     134:	e5c32000 	strb	r2, [r3]
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e3530000 	cmp	r3, #0
     140:	1afffff4 	bne	118 <strcpy+0x20>
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e1a00003 	mov	r0, r3
     14c:	e28bd000 	add	sp, fp, #0
     150:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     154:	e12fff1e 	bx	lr

00000158 <strcmp>:
     158:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     15c:	e28db000 	add	fp, sp, #0
     160:	e24dd00c 	sub	sp, sp, #12
     164:	e50b0008 	str	r0, [fp, #-8]
     168:	e50b100c 	str	r1, [fp, #-12]
     16c:	ea000005 	b	188 <strcmp+0x30>
     170:	e51b3008 	ldr	r3, [fp, #-8]
     174:	e2833001 	add	r3, r3, #1
     178:	e50b3008 	str	r3, [fp, #-8]
     17c:	e51b300c 	ldr	r3, [fp, #-12]
     180:	e2833001 	add	r3, r3, #1
     184:	e50b300c 	str	r3, [fp, #-12]
     188:	e51b3008 	ldr	r3, [fp, #-8]
     18c:	e5d33000 	ldrb	r3, [r3]
     190:	e3530000 	cmp	r3, #0
     194:	0a000005 	beq	1b0 <strcmp+0x58>
     198:	e51b3008 	ldr	r3, [fp, #-8]
     19c:	e5d32000 	ldrb	r2, [r3]
     1a0:	e51b300c 	ldr	r3, [fp, #-12]
     1a4:	e5d33000 	ldrb	r3, [r3]
     1a8:	e1520003 	cmp	r2, r3
     1ac:	0affffef 	beq	170 <strcmp+0x18>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e5d33000 	ldrb	r3, [r3]
     1b8:	e1a02003 	mov	r2, r3
     1bc:	e51b300c 	ldr	r3, [fp, #-12]
     1c0:	e5d33000 	ldrb	r3, [r3]
     1c4:	e0423003 	sub	r3, r2, r3
     1c8:	e1a00003 	mov	r0, r3
     1cc:	e28bd000 	add	sp, fp, #0
     1d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1d4:	e12fff1e 	bx	lr

000001d8 <strlen>:
     1d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1dc:	e28db000 	add	fp, sp, #0
     1e0:	e24dd014 	sub	sp, sp, #20
     1e4:	e50b0010 	str	r0, [fp, #-16]
     1e8:	e3a03000 	mov	r3, #0
     1ec:	e50b3008 	str	r3, [fp, #-8]
     1f0:	ea000002 	b	200 <strlen+0x28>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e2833001 	add	r3, r3, #1
     1fc:	e50b3008 	str	r3, [fp, #-8]
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e51b2010 	ldr	r2, [fp, #-16]
     208:	e0823003 	add	r3, r2, r3
     20c:	e5d33000 	ldrb	r3, [r3]
     210:	e3530000 	cmp	r3, #0
     214:	1afffff6 	bne	1f4 <strlen+0x1c>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e1a00003 	mov	r0, r3
     220:	e28bd000 	add	sp, fp, #0
     224:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     228:	e12fff1e 	bx	lr

0000022c <memset>:
     22c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     230:	e28db000 	add	fp, sp, #0
     234:	e24dd024 	sub	sp, sp, #36	@ 0x24
     238:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     23c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     240:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     244:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     248:	e50b3008 	str	r3, [fp, #-8]
     24c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     250:	e54b300d 	strb	r3, [fp, #-13]
     254:	e55b200d 	ldrb	r2, [fp, #-13]
     258:	e1a03002 	mov	r3, r2
     25c:	e1a03403 	lsl	r3, r3, #8
     260:	e0833002 	add	r3, r3, r2
     264:	e1a03803 	lsl	r3, r3, #16
     268:	e1a02003 	mov	r2, r3
     26c:	e55b300d 	ldrb	r3, [fp, #-13]
     270:	e1a03403 	lsl	r3, r3, #8
     274:	e1822003 	orr	r2, r2, r3
     278:	e55b300d 	ldrb	r3, [fp, #-13]
     27c:	e1823003 	orr	r3, r2, r3
     280:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     284:	ea000008 	b	2ac <memset+0x80>
     288:	e51b3008 	ldr	r3, [fp, #-8]
     28c:	e55b200d 	ldrb	r2, [fp, #-13]
     290:	e5c32000 	strb	r2, [r3]
     294:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     298:	e2433001 	sub	r3, r3, #1
     29c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e2833001 	add	r3, r3, #1
     2a8:	e50b3008 	str	r3, [fp, #-8]
     2ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e3530000 	cmp	r3, #0
     2b4:	0a000003 	beq	2c8 <memset+0x9c>
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2033003 	and	r3, r3, #3
     2c0:	e3530000 	cmp	r3, #0
     2c4:	1affffef 	bne	288 <memset+0x5c>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e50b300c 	str	r3, [fp, #-12]
     2d0:	ea000008 	b	2f8 <memset+0xcc>
     2d4:	e51b300c 	ldr	r3, [fp, #-12]
     2d8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2dc:	e5832000 	str	r2, [r3]
     2e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e2433004 	sub	r3, r3, #4
     2e8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2ec:	e51b300c 	ldr	r3, [fp, #-12]
     2f0:	e2833004 	add	r3, r3, #4
     2f4:	e50b300c 	str	r3, [fp, #-12]
     2f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2fc:	e3530003 	cmp	r3, #3
     300:	8afffff3 	bhi	2d4 <memset+0xa8>
     304:	e51b300c 	ldr	r3, [fp, #-12]
     308:	e50b3008 	str	r3, [fp, #-8]
     30c:	ea000008 	b	334 <memset+0x108>
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e55b200d 	ldrb	r2, [fp, #-13]
     318:	e5c32000 	strb	r2, [r3]
     31c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     320:	e2433001 	sub	r3, r3, #1
     324:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e2833001 	add	r3, r3, #1
     330:	e50b3008 	str	r3, [fp, #-8]
     334:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     338:	e3530000 	cmp	r3, #0
     33c:	1afffff3 	bne	310 <memset+0xe4>
     340:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     344:	e1a00003 	mov	r0, r3
     348:	e28bd000 	add	sp, fp, #0
     34c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     350:	e12fff1e 	bx	lr

00000354 <strchr>:
     354:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     358:	e28db000 	add	fp, sp, #0
     35c:	e24dd00c 	sub	sp, sp, #12
     360:	e50b0008 	str	r0, [fp, #-8]
     364:	e1a03001 	mov	r3, r1
     368:	e54b3009 	strb	r3, [fp, #-9]
     36c:	ea000009 	b	398 <strchr+0x44>
     370:	e51b3008 	ldr	r3, [fp, #-8]
     374:	e5d33000 	ldrb	r3, [r3]
     378:	e55b2009 	ldrb	r2, [fp, #-9]
     37c:	e1520003 	cmp	r2, r3
     380:	1a000001 	bne	38c <strchr+0x38>
     384:	e51b3008 	ldr	r3, [fp, #-8]
     388:	ea000007 	b	3ac <strchr+0x58>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e2833001 	add	r3, r3, #1
     394:	e50b3008 	str	r3, [fp, #-8]
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e5d33000 	ldrb	r3, [r3]
     3a0:	e3530000 	cmp	r3, #0
     3a4:	1afffff1 	bne	370 <strchr+0x1c>
     3a8:	e3a03000 	mov	r3, #0
     3ac:	e1a00003 	mov	r0, r3
     3b0:	e28bd000 	add	sp, fp, #0
     3b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3b8:	e12fff1e 	bx	lr

000003bc <gets>:
     3bc:	e92d4800 	push	{fp, lr}
     3c0:	e28db004 	add	fp, sp, #4
     3c4:	e24dd018 	sub	sp, sp, #24
     3c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3cc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3d0:	e3a03000 	mov	r3, #0
     3d4:	e50b3008 	str	r3, [fp, #-8]
     3d8:	ea000016 	b	438 <gets+0x7c>
     3dc:	e24b300d 	sub	r3, fp, #13
     3e0:	e3a02001 	mov	r2, #1
     3e4:	e1a01003 	mov	r1, r3
     3e8:	e3a00000 	mov	r0, #0
     3ec:	eb00009b 	bl	660 <read>
     3f0:	e50b000c 	str	r0, [fp, #-12]
     3f4:	e51b300c 	ldr	r3, [fp, #-12]
     3f8:	e3530000 	cmp	r3, #0
     3fc:	da000013 	ble	450 <gets+0x94>
     400:	e51b3008 	ldr	r3, [fp, #-8]
     404:	e2832001 	add	r2, r3, #1
     408:	e50b2008 	str	r2, [fp, #-8]
     40c:	e1a02003 	mov	r2, r3
     410:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     414:	e0833002 	add	r3, r3, r2
     418:	e55b200d 	ldrb	r2, [fp, #-13]
     41c:	e5c32000 	strb	r2, [r3]
     420:	e55b300d 	ldrb	r3, [fp, #-13]
     424:	e353000a 	cmp	r3, #10
     428:	0a000009 	beq	454 <gets+0x98>
     42c:	e55b300d 	ldrb	r3, [fp, #-13]
     430:	e353000d 	cmp	r3, #13
     434:	0a000006 	beq	454 <gets+0x98>
     438:	e51b3008 	ldr	r3, [fp, #-8]
     43c:	e2833001 	add	r3, r3, #1
     440:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     444:	e1520003 	cmp	r2, r3
     448:	caffffe3 	bgt	3dc <gets+0x20>
     44c:	ea000000 	b	454 <gets+0x98>
     450:	e1a00000 	nop			@ (mov r0, r0)
     454:	e51b3008 	ldr	r3, [fp, #-8]
     458:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     45c:	e0823003 	add	r3, r2, r3
     460:	e3a02000 	mov	r2, #0
     464:	e5c32000 	strb	r2, [r3]
     468:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     46c:	e1a00003 	mov	r0, r3
     470:	e24bd004 	sub	sp, fp, #4
     474:	e8bd8800 	pop	{fp, pc}

00000478 <stat>:
     478:	e92d4800 	push	{fp, lr}
     47c:	e28db004 	add	fp, sp, #4
     480:	e24dd010 	sub	sp, sp, #16
     484:	e50b0010 	str	r0, [fp, #-16]
     488:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     48c:	e3a01000 	mov	r1, #0
     490:	e51b0010 	ldr	r0, [fp, #-16]
     494:	eb00009e 	bl	714 <open>
     498:	e50b0008 	str	r0, [fp, #-8]
     49c:	e51b3008 	ldr	r3, [fp, #-8]
     4a0:	e3530000 	cmp	r3, #0
     4a4:	aa000001 	bge	4b0 <stat+0x38>
     4a8:	e3e03000 	mvn	r3, #0
     4ac:	ea000006 	b	4cc <stat+0x54>
     4b0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4b4:	e51b0008 	ldr	r0, [fp, #-8]
     4b8:	eb0000b0 	bl	780 <fstat>
     4bc:	e50b000c 	str	r0, [fp, #-12]
     4c0:	e51b0008 	ldr	r0, [fp, #-8]
     4c4:	eb000077 	bl	6a8 <close>
     4c8:	e51b300c 	ldr	r3, [fp, #-12]
     4cc:	e1a00003 	mov	r0, r3
     4d0:	e24bd004 	sub	sp, fp, #4
     4d4:	e8bd8800 	pop	{fp, pc}

000004d8 <atoi>:
     4d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4dc:	e28db000 	add	fp, sp, #0
     4e0:	e24dd014 	sub	sp, sp, #20
     4e4:	e50b0010 	str	r0, [fp, #-16]
     4e8:	e3a03000 	mov	r3, #0
     4ec:	e50b3008 	str	r3, [fp, #-8]
     4f0:	ea00000c 	b	528 <atoi+0x50>
     4f4:	e51b2008 	ldr	r2, [fp, #-8]
     4f8:	e1a03002 	mov	r3, r2
     4fc:	e1a03103 	lsl	r3, r3, #2
     500:	e0833002 	add	r3, r3, r2
     504:	e1a03083 	lsl	r3, r3, #1
     508:	e1a01003 	mov	r1, r3
     50c:	e51b3010 	ldr	r3, [fp, #-16]
     510:	e2832001 	add	r2, r3, #1
     514:	e50b2010 	str	r2, [fp, #-16]
     518:	e5d33000 	ldrb	r3, [r3]
     51c:	e0813003 	add	r3, r1, r3
     520:	e2433030 	sub	r3, r3, #48	@ 0x30
     524:	e50b3008 	str	r3, [fp, #-8]
     528:	e51b3010 	ldr	r3, [fp, #-16]
     52c:	e5d33000 	ldrb	r3, [r3]
     530:	e353002f 	cmp	r3, #47	@ 0x2f
     534:	9a000003 	bls	548 <atoi+0x70>
     538:	e51b3010 	ldr	r3, [fp, #-16]
     53c:	e5d33000 	ldrb	r3, [r3]
     540:	e3530039 	cmp	r3, #57	@ 0x39
     544:	9affffea 	bls	4f4 <atoi+0x1c>
     548:	e51b3008 	ldr	r3, [fp, #-8]
     54c:	e1a00003 	mov	r0, r3
     550:	e28bd000 	add	sp, fp, #0
     554:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     558:	e12fff1e 	bx	lr

0000055c <memmove>:
     55c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     560:	e28db000 	add	fp, sp, #0
     564:	e24dd01c 	sub	sp, sp, #28
     568:	e50b0010 	str	r0, [fp, #-16]
     56c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     570:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     574:	e51b3010 	ldr	r3, [fp, #-16]
     578:	e50b3008 	str	r3, [fp, #-8]
     57c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     580:	e50b300c 	str	r3, [fp, #-12]
     584:	ea000007 	b	5a8 <memmove+0x4c>
     588:	e51b200c 	ldr	r2, [fp, #-12]
     58c:	e2823001 	add	r3, r2, #1
     590:	e50b300c 	str	r3, [fp, #-12]
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e2831001 	add	r1, r3, #1
     59c:	e50b1008 	str	r1, [fp, #-8]
     5a0:	e5d22000 	ldrb	r2, [r2]
     5a4:	e5c32000 	strb	r2, [r3]
     5a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5ac:	e2432001 	sub	r2, r3, #1
     5b0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5b4:	e3530000 	cmp	r3, #0
     5b8:	cafffff2 	bgt	588 <memmove+0x2c>
     5bc:	e51b3010 	ldr	r3, [fp, #-16]
     5c0:	e1a00003 	mov	r0, r3
     5c4:	e28bd000 	add	sp, fp, #0
     5c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5cc:	e12fff1e 	bx	lr

000005d0 <fork>:
     5d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d4:	e1a04003 	mov	r4, r3
     5d8:	e1a03002 	mov	r3, r2
     5dc:	e1a02001 	mov	r2, r1
     5e0:	e1a01000 	mov	r1, r0
     5e4:	e3a00001 	mov	r0, #1
     5e8:	ef000000 	svc	0x00000000
     5ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f0:	e12fff1e 	bx	lr

000005f4 <exit>:
     5f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5f8:	e1a04003 	mov	r4, r3
     5fc:	e1a03002 	mov	r3, r2
     600:	e1a02001 	mov	r2, r1
     604:	e1a01000 	mov	r1, r0
     608:	e3a00002 	mov	r0, #2
     60c:	ef000000 	svc	0x00000000
     610:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     614:	e12fff1e 	bx	lr

00000618 <wait>:
     618:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     61c:	e1a04003 	mov	r4, r3
     620:	e1a03002 	mov	r3, r2
     624:	e1a02001 	mov	r2, r1
     628:	e1a01000 	mov	r1, r0
     62c:	e3a00003 	mov	r0, #3
     630:	ef000000 	svc	0x00000000
     634:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     638:	e12fff1e 	bx	lr

0000063c <pipe>:
     63c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     640:	e1a04003 	mov	r4, r3
     644:	e1a03002 	mov	r3, r2
     648:	e1a02001 	mov	r2, r1
     64c:	e1a01000 	mov	r1, r0
     650:	e3a00004 	mov	r0, #4
     654:	ef000000 	svc	0x00000000
     658:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     65c:	e12fff1e 	bx	lr

00000660 <read>:
     660:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     664:	e1a04003 	mov	r4, r3
     668:	e1a03002 	mov	r3, r2
     66c:	e1a02001 	mov	r2, r1
     670:	e1a01000 	mov	r1, r0
     674:	e3a00005 	mov	r0, #5
     678:	ef000000 	svc	0x00000000
     67c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     680:	e12fff1e 	bx	lr

00000684 <write>:
     684:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     688:	e1a04003 	mov	r4, r3
     68c:	e1a03002 	mov	r3, r2
     690:	e1a02001 	mov	r2, r1
     694:	e1a01000 	mov	r1, r0
     698:	e3a00010 	mov	r0, #16
     69c:	ef000000 	svc	0x00000000
     6a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <close>:
     6a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6ac:	e1a04003 	mov	r4, r3
     6b0:	e1a03002 	mov	r3, r2
     6b4:	e1a02001 	mov	r2, r1
     6b8:	e1a01000 	mov	r1, r0
     6bc:	e3a00015 	mov	r0, #21
     6c0:	ef000000 	svc	0x00000000
     6c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c8:	e12fff1e 	bx	lr

000006cc <kill>:
     6cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d0:	e1a04003 	mov	r4, r3
     6d4:	e1a03002 	mov	r3, r2
     6d8:	e1a02001 	mov	r2, r1
     6dc:	e1a01000 	mov	r1, r0
     6e0:	e3a00006 	mov	r0, #6
     6e4:	ef000000 	svc	0x00000000
     6e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6ec:	e12fff1e 	bx	lr

000006f0 <exec>:
     6f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f4:	e1a04003 	mov	r4, r3
     6f8:	e1a03002 	mov	r3, r2
     6fc:	e1a02001 	mov	r2, r1
     700:	e1a01000 	mov	r1, r0
     704:	e3a00007 	mov	r0, #7
     708:	ef000000 	svc	0x00000000
     70c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     710:	e12fff1e 	bx	lr

00000714 <open>:
     714:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     718:	e1a04003 	mov	r4, r3
     71c:	e1a03002 	mov	r3, r2
     720:	e1a02001 	mov	r2, r1
     724:	e1a01000 	mov	r1, r0
     728:	e3a0000f 	mov	r0, #15
     72c:	ef000000 	svc	0x00000000
     730:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     734:	e12fff1e 	bx	lr

00000738 <mknod>:
     738:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     73c:	e1a04003 	mov	r4, r3
     740:	e1a03002 	mov	r3, r2
     744:	e1a02001 	mov	r2, r1
     748:	e1a01000 	mov	r1, r0
     74c:	e3a00011 	mov	r0, #17
     750:	ef000000 	svc	0x00000000
     754:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     758:	e12fff1e 	bx	lr

0000075c <unlink>:
     75c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     760:	e1a04003 	mov	r4, r3
     764:	e1a03002 	mov	r3, r2
     768:	e1a02001 	mov	r2, r1
     76c:	e1a01000 	mov	r1, r0
     770:	e3a00012 	mov	r0, #18
     774:	ef000000 	svc	0x00000000
     778:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     77c:	e12fff1e 	bx	lr

00000780 <fstat>:
     780:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     784:	e1a04003 	mov	r4, r3
     788:	e1a03002 	mov	r3, r2
     78c:	e1a02001 	mov	r2, r1
     790:	e1a01000 	mov	r1, r0
     794:	e3a00008 	mov	r0, #8
     798:	ef000000 	svc	0x00000000
     79c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a0:	e12fff1e 	bx	lr

000007a4 <link>:
     7a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a8:	e1a04003 	mov	r4, r3
     7ac:	e1a03002 	mov	r3, r2
     7b0:	e1a02001 	mov	r2, r1
     7b4:	e1a01000 	mov	r1, r0
     7b8:	e3a00013 	mov	r0, #19
     7bc:	ef000000 	svc	0x00000000
     7c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c4:	e12fff1e 	bx	lr

000007c8 <mkdir>:
     7c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7cc:	e1a04003 	mov	r4, r3
     7d0:	e1a03002 	mov	r3, r2
     7d4:	e1a02001 	mov	r2, r1
     7d8:	e1a01000 	mov	r1, r0
     7dc:	e3a00014 	mov	r0, #20
     7e0:	ef000000 	svc	0x00000000
     7e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <chdir>:
     7ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f0:	e1a04003 	mov	r4, r3
     7f4:	e1a03002 	mov	r3, r2
     7f8:	e1a02001 	mov	r2, r1
     7fc:	e1a01000 	mov	r1, r0
     800:	e3a00009 	mov	r0, #9
     804:	ef000000 	svc	0x00000000
     808:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <dup>:
     810:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     814:	e1a04003 	mov	r4, r3
     818:	e1a03002 	mov	r3, r2
     81c:	e1a02001 	mov	r2, r1
     820:	e1a01000 	mov	r1, r0
     824:	e3a0000a 	mov	r0, #10
     828:	ef000000 	svc	0x00000000
     82c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <getpid>:
     834:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     838:	e1a04003 	mov	r4, r3
     83c:	e1a03002 	mov	r3, r2
     840:	e1a02001 	mov	r2, r1
     844:	e1a01000 	mov	r1, r0
     848:	e3a0000b 	mov	r0, #11
     84c:	ef000000 	svc	0x00000000
     850:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     854:	e12fff1e 	bx	lr

00000858 <sbrk>:
     858:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     85c:	e1a04003 	mov	r4, r3
     860:	e1a03002 	mov	r3, r2
     864:	e1a02001 	mov	r2, r1
     868:	e1a01000 	mov	r1, r0
     86c:	e3a0000c 	mov	r0, #12
     870:	ef000000 	svc	0x00000000
     874:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <sleep>:
     87c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     880:	e1a04003 	mov	r4, r3
     884:	e1a03002 	mov	r3, r2
     888:	e1a02001 	mov	r2, r1
     88c:	e1a01000 	mov	r1, r0
     890:	e3a0000d 	mov	r0, #13
     894:	ef000000 	svc	0x00000000
     898:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <uptime>:
     8a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a4:	e1a04003 	mov	r4, r3
     8a8:	e1a03002 	mov	r3, r2
     8ac:	e1a02001 	mov	r2, r1
     8b0:	e1a01000 	mov	r1, r0
     8b4:	e3a0000e 	mov	r0, #14
     8b8:	ef000000 	svc	0x00000000
     8bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <pgpte>:
     8c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c8:	e1a04003 	mov	r4, r3
     8cc:	e1a03002 	mov	r3, r2
     8d0:	e1a02001 	mov	r2, r1
     8d4:	e1a01000 	mov	r1, r0
     8d8:	e3a00016 	mov	r0, #22
     8dc:	ef000000 	svc	0x00000000
     8e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e4:	e12fff1e 	bx	lr

000008e8 <kpt>:
     8e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ec:	e1a04003 	mov	r4, r3
     8f0:	e1a03002 	mov	r3, r2
     8f4:	e1a02001 	mov	r2, r1
     8f8:	e1a01000 	mov	r1, r0
     8fc:	e3a00017 	mov	r0, #23
     900:	ef000000 	svc	0x00000000
     904:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <ugetpid>:
     90c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     910:	e1a04003 	mov	r4, r3
     914:	e1a03002 	mov	r3, r2
     918:	e1a02001 	mov	r2, r1
     91c:	e1a01000 	mov	r1, r0
     920:	e3a00018 	mov	r0, #24
     924:	ef000000 	svc	0x00000000
     928:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <putc>:
     930:	e92d4800 	push	{fp, lr}
     934:	e28db004 	add	fp, sp, #4
     938:	e24dd008 	sub	sp, sp, #8
     93c:	e50b0008 	str	r0, [fp, #-8]
     940:	e1a03001 	mov	r3, r1
     944:	e54b3009 	strb	r3, [fp, #-9]
     948:	e24b3009 	sub	r3, fp, #9
     94c:	e3a02001 	mov	r2, #1
     950:	e1a01003 	mov	r1, r3
     954:	e51b0008 	ldr	r0, [fp, #-8]
     958:	ebffff49 	bl	684 <write>
     95c:	e1a00000 	nop			@ (mov r0, r0)
     960:	e24bd004 	sub	sp, fp, #4
     964:	e8bd8800 	pop	{fp, pc}

00000968 <printint>:
     968:	e92d4800 	push	{fp, lr}
     96c:	e28db004 	add	fp, sp, #4
     970:	e24dd030 	sub	sp, sp, #48	@ 0x30
     974:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     978:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     97c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     980:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     984:	e3a03000 	mov	r3, #0
     988:	e50b300c 	str	r3, [fp, #-12]
     98c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     990:	e3530000 	cmp	r3, #0
     994:	0a000008 	beq	9bc <printint+0x54>
     998:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     99c:	e3530000 	cmp	r3, #0
     9a0:	aa000005 	bge	9bc <printint+0x54>
     9a4:	e3a03001 	mov	r3, #1
     9a8:	e50b300c 	str	r3, [fp, #-12]
     9ac:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9b0:	e2633000 	rsb	r3, r3, #0
     9b4:	e50b3010 	str	r3, [fp, #-16]
     9b8:	ea000001 	b	9c4 <printint+0x5c>
     9bc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9c0:	e50b3010 	str	r3, [fp, #-16]
     9c4:	e3a03000 	mov	r3, #0
     9c8:	e50b3008 	str	r3, [fp, #-8]
     9cc:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     9d0:	e51b3010 	ldr	r3, [fp, #-16]
     9d4:	e1a01002 	mov	r1, r2
     9d8:	e1a00003 	mov	r0, r3
     9dc:	eb0001d5 	bl	1138 <__aeabi_uidivmod>
     9e0:	e1a03001 	mov	r3, r1
     9e4:	e1a01003 	mov	r1, r3
     9e8:	e51b3008 	ldr	r3, [fp, #-8]
     9ec:	e2832001 	add	r2, r3, #1
     9f0:	e50b2008 	str	r2, [fp, #-8]
     9f4:	e59f20a0 	ldr	r2, [pc, #160]	@ a9c <printint+0x134>
     9f8:	e7d22001 	ldrb	r2, [r2, r1]
     9fc:	e2433004 	sub	r3, r3, #4
     a00:	e083300b 	add	r3, r3, fp
     a04:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a08:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a0c:	e1a01003 	mov	r1, r3
     a10:	e51b0010 	ldr	r0, [fp, #-16]
     a14:	eb00018a 	bl	1044 <__udivsi3>
     a18:	e1a03000 	mov	r3, r0
     a1c:	e50b3010 	str	r3, [fp, #-16]
     a20:	e51b3010 	ldr	r3, [fp, #-16]
     a24:	e3530000 	cmp	r3, #0
     a28:	1affffe7 	bne	9cc <printint+0x64>
     a2c:	e51b300c 	ldr	r3, [fp, #-12]
     a30:	e3530000 	cmp	r3, #0
     a34:	0a00000e 	beq	a74 <printint+0x10c>
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e2832001 	add	r2, r3, #1
     a40:	e50b2008 	str	r2, [fp, #-8]
     a44:	e2433004 	sub	r3, r3, #4
     a48:	e083300b 	add	r3, r3, fp
     a4c:	e3a0202d 	mov	r2, #45	@ 0x2d
     a50:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a54:	ea000006 	b	a74 <printint+0x10c>
     a58:	e24b2020 	sub	r2, fp, #32
     a5c:	e51b3008 	ldr	r3, [fp, #-8]
     a60:	e0823003 	add	r3, r2, r3
     a64:	e5d33000 	ldrb	r3, [r3]
     a68:	e1a01003 	mov	r1, r3
     a6c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a70:	ebffffae 	bl	930 <putc>
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e2433001 	sub	r3, r3, #1
     a7c:	e50b3008 	str	r3, [fp, #-8]
     a80:	e51b3008 	ldr	r3, [fp, #-8]
     a84:	e3530000 	cmp	r3, #0
     a88:	aafffff2 	bge	a58 <printint+0xf0>
     a8c:	e1a00000 	nop			@ (mov r0, r0)
     a90:	e1a00000 	nop			@ (mov r0, r0)
     a94:	e24bd004 	sub	sp, fp, #4
     a98:	e8bd8800 	pop	{fp, pc}
     a9c:	000011c4 	.word	0x000011c4

00000aa0 <printf>:
     aa0:	e92d000e 	push	{r1, r2, r3}
     aa4:	e92d4800 	push	{fp, lr}
     aa8:	e28db004 	add	fp, sp, #4
     aac:	e24dd024 	sub	sp, sp, #36	@ 0x24
     ab0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     ab4:	e3a03000 	mov	r3, #0
     ab8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     abc:	e28b3008 	add	r3, fp, #8
     ac0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ac4:	e3a03000 	mov	r3, #0
     ac8:	e50b3010 	str	r3, [fp, #-16]
     acc:	ea000074 	b	ca4 <printf+0x204>
     ad0:	e59b2004 	ldr	r2, [fp, #4]
     ad4:	e51b3010 	ldr	r3, [fp, #-16]
     ad8:	e0823003 	add	r3, r2, r3
     adc:	e5d33000 	ldrb	r3, [r3]
     ae0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     ae4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ae8:	e3530000 	cmp	r3, #0
     aec:	1a00000b 	bne	b20 <printf+0x80>
     af0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     af4:	e3530025 	cmp	r3, #37	@ 0x25
     af8:	1a000002 	bne	b08 <printf+0x68>
     afc:	e3a03025 	mov	r3, #37	@ 0x25
     b00:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b04:	ea000063 	b	c98 <printf+0x1f8>
     b08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b0c:	e6ef3073 	uxtb	r3, r3
     b10:	e1a01003 	mov	r1, r3
     b14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b18:	ebffff84 	bl	930 <putc>
     b1c:	ea00005d 	b	c98 <printf+0x1f8>
     b20:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b24:	e3530025 	cmp	r3, #37	@ 0x25
     b28:	1a00005a 	bne	c98 <printf+0x1f8>
     b2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b30:	e3530064 	cmp	r3, #100	@ 0x64
     b34:	1a00000a 	bne	b64 <printf+0xc4>
     b38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b3c:	e5933000 	ldr	r3, [r3]
     b40:	e1a01003 	mov	r1, r3
     b44:	e3a03001 	mov	r3, #1
     b48:	e3a0200a 	mov	r2, #10
     b4c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b50:	ebffff84 	bl	968 <printint>
     b54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b58:	e2833004 	add	r3, r3, #4
     b5c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b60:	ea00004a 	b	c90 <printf+0x1f0>
     b64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b68:	e3530078 	cmp	r3, #120	@ 0x78
     b6c:	0a000002 	beq	b7c <printf+0xdc>
     b70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b74:	e3530070 	cmp	r3, #112	@ 0x70
     b78:	1a00000a 	bne	ba8 <printf+0x108>
     b7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b80:	e5933000 	ldr	r3, [r3]
     b84:	e1a01003 	mov	r1, r3
     b88:	e3a03000 	mov	r3, #0
     b8c:	e3a02010 	mov	r2, #16
     b90:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b94:	ebffff73 	bl	968 <printint>
     b98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b9c:	e2833004 	add	r3, r3, #4
     ba0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ba4:	ea000039 	b	c90 <printf+0x1f0>
     ba8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bac:	e3530073 	cmp	r3, #115	@ 0x73
     bb0:	1a000018 	bne	c18 <printf+0x178>
     bb4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bb8:	e5933000 	ldr	r3, [r3]
     bbc:	e50b300c 	str	r3, [fp, #-12]
     bc0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bc4:	e2833004 	add	r3, r3, #4
     bc8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bcc:	e51b300c 	ldr	r3, [fp, #-12]
     bd0:	e3530000 	cmp	r3, #0
     bd4:	1a00000a 	bne	c04 <printf+0x164>
     bd8:	e59f30f4 	ldr	r3, [pc, #244]	@ cd4 <printf+0x234>
     bdc:	e50b300c 	str	r3, [fp, #-12]
     be0:	ea000007 	b	c04 <printf+0x164>
     be4:	e51b300c 	ldr	r3, [fp, #-12]
     be8:	e5d33000 	ldrb	r3, [r3]
     bec:	e1a01003 	mov	r1, r3
     bf0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bf4:	ebffff4d 	bl	930 <putc>
     bf8:	e51b300c 	ldr	r3, [fp, #-12]
     bfc:	e2833001 	add	r3, r3, #1
     c00:	e50b300c 	str	r3, [fp, #-12]
     c04:	e51b300c 	ldr	r3, [fp, #-12]
     c08:	e5d33000 	ldrb	r3, [r3]
     c0c:	e3530000 	cmp	r3, #0
     c10:	1afffff3 	bne	be4 <printf+0x144>
     c14:	ea00001d 	b	c90 <printf+0x1f0>
     c18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c1c:	e3530063 	cmp	r3, #99	@ 0x63
     c20:	1a000009 	bne	c4c <printf+0x1ac>
     c24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c28:	e5933000 	ldr	r3, [r3]
     c2c:	e6ef3073 	uxtb	r3, r3
     c30:	e1a01003 	mov	r1, r3
     c34:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c38:	ebffff3c 	bl	930 <putc>
     c3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c40:	e2833004 	add	r3, r3, #4
     c44:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c48:	ea000010 	b	c90 <printf+0x1f0>
     c4c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c50:	e3530025 	cmp	r3, #37	@ 0x25
     c54:	1a000005 	bne	c70 <printf+0x1d0>
     c58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c5c:	e6ef3073 	uxtb	r3, r3
     c60:	e1a01003 	mov	r1, r3
     c64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c68:	ebffff30 	bl	930 <putc>
     c6c:	ea000007 	b	c90 <printf+0x1f0>
     c70:	e3a01025 	mov	r1, #37	@ 0x25
     c74:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c78:	ebffff2c 	bl	930 <putc>
     c7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c80:	e6ef3073 	uxtb	r3, r3
     c84:	e1a01003 	mov	r1, r3
     c88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c8c:	ebffff27 	bl	930 <putc>
     c90:	e3a03000 	mov	r3, #0
     c94:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c98:	e51b3010 	ldr	r3, [fp, #-16]
     c9c:	e2833001 	add	r3, r3, #1
     ca0:	e50b3010 	str	r3, [fp, #-16]
     ca4:	e59b2004 	ldr	r2, [fp, #4]
     ca8:	e51b3010 	ldr	r3, [fp, #-16]
     cac:	e0823003 	add	r3, r2, r3
     cb0:	e5d33000 	ldrb	r3, [r3]
     cb4:	e3530000 	cmp	r3, #0
     cb8:	1affff84 	bne	ad0 <printf+0x30>
     cbc:	e1a00000 	nop			@ (mov r0, r0)
     cc0:	e1a00000 	nop			@ (mov r0, r0)
     cc4:	e24bd004 	sub	sp, fp, #4
     cc8:	e8bd4800 	pop	{fp, lr}
     ccc:	e28dd00c 	add	sp, sp, #12
     cd0:	e12fff1e 	bx	lr
     cd4:	000011b4 	.word	0x000011b4

00000cd8 <free>:
     cd8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     cdc:	e28db000 	add	fp, sp, #0
     ce0:	e24dd014 	sub	sp, sp, #20
     ce4:	e50b0010 	str	r0, [fp, #-16]
     ce8:	e51b3010 	ldr	r3, [fp, #-16]
     cec:	e2433008 	sub	r3, r3, #8
     cf0:	e50b300c 	str	r3, [fp, #-12]
     cf4:	e59f3154 	ldr	r3, [pc, #340]	@ e50 <free+0x178>
     cf8:	e5933000 	ldr	r3, [r3]
     cfc:	e50b3008 	str	r3, [fp, #-8]
     d00:	ea000010 	b	d48 <free+0x70>
     d04:	e51b3008 	ldr	r3, [fp, #-8]
     d08:	e5933000 	ldr	r3, [r3]
     d0c:	e51b2008 	ldr	r2, [fp, #-8]
     d10:	e1520003 	cmp	r2, r3
     d14:	3a000008 	bcc	d3c <free+0x64>
     d18:	e51b200c 	ldr	r2, [fp, #-12]
     d1c:	e51b3008 	ldr	r3, [fp, #-8]
     d20:	e1520003 	cmp	r2, r3
     d24:	8a000010 	bhi	d6c <free+0x94>
     d28:	e51b3008 	ldr	r3, [fp, #-8]
     d2c:	e5933000 	ldr	r3, [r3]
     d30:	e51b200c 	ldr	r2, [fp, #-12]
     d34:	e1520003 	cmp	r2, r3
     d38:	3a00000b 	bcc	d6c <free+0x94>
     d3c:	e51b3008 	ldr	r3, [fp, #-8]
     d40:	e5933000 	ldr	r3, [r3]
     d44:	e50b3008 	str	r3, [fp, #-8]
     d48:	e51b200c 	ldr	r2, [fp, #-12]
     d4c:	e51b3008 	ldr	r3, [fp, #-8]
     d50:	e1520003 	cmp	r2, r3
     d54:	9affffea 	bls	d04 <free+0x2c>
     d58:	e51b3008 	ldr	r3, [fp, #-8]
     d5c:	e5933000 	ldr	r3, [r3]
     d60:	e51b200c 	ldr	r2, [fp, #-12]
     d64:	e1520003 	cmp	r2, r3
     d68:	2affffe5 	bcs	d04 <free+0x2c>
     d6c:	e51b300c 	ldr	r3, [fp, #-12]
     d70:	e5933004 	ldr	r3, [r3, #4]
     d74:	e1a03183 	lsl	r3, r3, #3
     d78:	e51b200c 	ldr	r2, [fp, #-12]
     d7c:	e0822003 	add	r2, r2, r3
     d80:	e51b3008 	ldr	r3, [fp, #-8]
     d84:	e5933000 	ldr	r3, [r3]
     d88:	e1520003 	cmp	r2, r3
     d8c:	1a00000d 	bne	dc8 <free+0xf0>
     d90:	e51b300c 	ldr	r3, [fp, #-12]
     d94:	e5932004 	ldr	r2, [r3, #4]
     d98:	e51b3008 	ldr	r3, [fp, #-8]
     d9c:	e5933000 	ldr	r3, [r3]
     da0:	e5933004 	ldr	r3, [r3, #4]
     da4:	e0822003 	add	r2, r2, r3
     da8:	e51b300c 	ldr	r3, [fp, #-12]
     dac:	e5832004 	str	r2, [r3, #4]
     db0:	e51b3008 	ldr	r3, [fp, #-8]
     db4:	e5933000 	ldr	r3, [r3]
     db8:	e5932000 	ldr	r2, [r3]
     dbc:	e51b300c 	ldr	r3, [fp, #-12]
     dc0:	e5832000 	str	r2, [r3]
     dc4:	ea000003 	b	dd8 <free+0x100>
     dc8:	e51b3008 	ldr	r3, [fp, #-8]
     dcc:	e5932000 	ldr	r2, [r3]
     dd0:	e51b300c 	ldr	r3, [fp, #-12]
     dd4:	e5832000 	str	r2, [r3]
     dd8:	e51b3008 	ldr	r3, [fp, #-8]
     ddc:	e5933004 	ldr	r3, [r3, #4]
     de0:	e1a03183 	lsl	r3, r3, #3
     de4:	e51b2008 	ldr	r2, [fp, #-8]
     de8:	e0823003 	add	r3, r2, r3
     dec:	e51b200c 	ldr	r2, [fp, #-12]
     df0:	e1520003 	cmp	r2, r3
     df4:	1a00000b 	bne	e28 <free+0x150>
     df8:	e51b3008 	ldr	r3, [fp, #-8]
     dfc:	e5932004 	ldr	r2, [r3, #4]
     e00:	e51b300c 	ldr	r3, [fp, #-12]
     e04:	e5933004 	ldr	r3, [r3, #4]
     e08:	e0822003 	add	r2, r2, r3
     e0c:	e51b3008 	ldr	r3, [fp, #-8]
     e10:	e5832004 	str	r2, [r3, #4]
     e14:	e51b300c 	ldr	r3, [fp, #-12]
     e18:	e5932000 	ldr	r2, [r3]
     e1c:	e51b3008 	ldr	r3, [fp, #-8]
     e20:	e5832000 	str	r2, [r3]
     e24:	ea000002 	b	e34 <free+0x15c>
     e28:	e51b3008 	ldr	r3, [fp, #-8]
     e2c:	e51b200c 	ldr	r2, [fp, #-12]
     e30:	e5832000 	str	r2, [r3]
     e34:	e59f2014 	ldr	r2, [pc, #20]	@ e50 <free+0x178>
     e38:	e51b3008 	ldr	r3, [fp, #-8]
     e3c:	e5823000 	str	r3, [r2]
     e40:	e1a00000 	nop			@ (mov r0, r0)
     e44:	e28bd000 	add	sp, fp, #0
     e48:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e4c:	e12fff1e 	bx	lr
     e50:	000011e0 	.word	0x000011e0

00000e54 <morecore>:
     e54:	e92d4800 	push	{fp, lr}
     e58:	e28db004 	add	fp, sp, #4
     e5c:	e24dd010 	sub	sp, sp, #16
     e60:	e50b0010 	str	r0, [fp, #-16]
     e64:	e51b3010 	ldr	r3, [fp, #-16]
     e68:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e6c:	2a000001 	bcs	e78 <morecore+0x24>
     e70:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e74:	e50b3010 	str	r3, [fp, #-16]
     e78:	e51b3010 	ldr	r3, [fp, #-16]
     e7c:	e1a03183 	lsl	r3, r3, #3
     e80:	e1a00003 	mov	r0, r3
     e84:	ebfffe73 	bl	858 <sbrk>
     e88:	e50b0008 	str	r0, [fp, #-8]
     e8c:	e51b3008 	ldr	r3, [fp, #-8]
     e90:	e3730001 	cmn	r3, #1
     e94:	1a000001 	bne	ea0 <morecore+0x4c>
     e98:	e3a03000 	mov	r3, #0
     e9c:	ea00000a 	b	ecc <morecore+0x78>
     ea0:	e51b3008 	ldr	r3, [fp, #-8]
     ea4:	e50b300c 	str	r3, [fp, #-12]
     ea8:	e51b300c 	ldr	r3, [fp, #-12]
     eac:	e51b2010 	ldr	r2, [fp, #-16]
     eb0:	e5832004 	str	r2, [r3, #4]
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e2833008 	add	r3, r3, #8
     ebc:	e1a00003 	mov	r0, r3
     ec0:	ebffff84 	bl	cd8 <free>
     ec4:	e59f300c 	ldr	r3, [pc, #12]	@ ed8 <morecore+0x84>
     ec8:	e5933000 	ldr	r3, [r3]
     ecc:	e1a00003 	mov	r0, r3
     ed0:	e24bd004 	sub	sp, fp, #4
     ed4:	e8bd8800 	pop	{fp, pc}
     ed8:	000011e0 	.word	0x000011e0

00000edc <malloc>:
     edc:	e92d4800 	push	{fp, lr}
     ee0:	e28db004 	add	fp, sp, #4
     ee4:	e24dd018 	sub	sp, sp, #24
     ee8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     eec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ef0:	e2833007 	add	r3, r3, #7
     ef4:	e1a031a3 	lsr	r3, r3, #3
     ef8:	e2833001 	add	r3, r3, #1
     efc:	e50b3010 	str	r3, [fp, #-16]
     f00:	e59f3134 	ldr	r3, [pc, #308]	@ 103c <malloc+0x160>
     f04:	e5933000 	ldr	r3, [r3]
     f08:	e50b300c 	str	r3, [fp, #-12]
     f0c:	e51b300c 	ldr	r3, [fp, #-12]
     f10:	e3530000 	cmp	r3, #0
     f14:	1a00000b 	bne	f48 <malloc+0x6c>
     f18:	e59f3120 	ldr	r3, [pc, #288]	@ 1040 <malloc+0x164>
     f1c:	e50b300c 	str	r3, [fp, #-12]
     f20:	e59f2114 	ldr	r2, [pc, #276]	@ 103c <malloc+0x160>
     f24:	e51b300c 	ldr	r3, [fp, #-12]
     f28:	e5823000 	str	r3, [r2]
     f2c:	e59f3108 	ldr	r3, [pc, #264]	@ 103c <malloc+0x160>
     f30:	e5933000 	ldr	r3, [r3]
     f34:	e59f2104 	ldr	r2, [pc, #260]	@ 1040 <malloc+0x164>
     f38:	e5823000 	str	r3, [r2]
     f3c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1040 <malloc+0x164>
     f40:	e3a02000 	mov	r2, #0
     f44:	e5832004 	str	r2, [r3, #4]
     f48:	e51b300c 	ldr	r3, [fp, #-12]
     f4c:	e5933000 	ldr	r3, [r3]
     f50:	e50b3008 	str	r3, [fp, #-8]
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e5933004 	ldr	r3, [r3, #4]
     f5c:	e51b2010 	ldr	r2, [fp, #-16]
     f60:	e1520003 	cmp	r2, r3
     f64:	8a00001e 	bhi	fe4 <malloc+0x108>
     f68:	e51b3008 	ldr	r3, [fp, #-8]
     f6c:	e5933004 	ldr	r3, [r3, #4]
     f70:	e51b2010 	ldr	r2, [fp, #-16]
     f74:	e1520003 	cmp	r2, r3
     f78:	1a000004 	bne	f90 <malloc+0xb4>
     f7c:	e51b3008 	ldr	r3, [fp, #-8]
     f80:	e5932000 	ldr	r2, [r3]
     f84:	e51b300c 	ldr	r3, [fp, #-12]
     f88:	e5832000 	str	r2, [r3]
     f8c:	ea00000e 	b	fcc <malloc+0xf0>
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e5932004 	ldr	r2, [r3, #4]
     f98:	e51b3010 	ldr	r3, [fp, #-16]
     f9c:	e0422003 	sub	r2, r2, r3
     fa0:	e51b3008 	ldr	r3, [fp, #-8]
     fa4:	e5832004 	str	r2, [r3, #4]
     fa8:	e51b3008 	ldr	r3, [fp, #-8]
     fac:	e5933004 	ldr	r3, [r3, #4]
     fb0:	e1a03183 	lsl	r3, r3, #3
     fb4:	e51b2008 	ldr	r2, [fp, #-8]
     fb8:	e0823003 	add	r3, r2, r3
     fbc:	e50b3008 	str	r3, [fp, #-8]
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e51b2010 	ldr	r2, [fp, #-16]
     fc8:	e5832004 	str	r2, [r3, #4]
     fcc:	e59f2068 	ldr	r2, [pc, #104]	@ 103c <malloc+0x160>
     fd0:	e51b300c 	ldr	r3, [fp, #-12]
     fd4:	e5823000 	str	r3, [r2]
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e2833008 	add	r3, r3, #8
     fe0:	ea000012 	b	1030 <malloc+0x154>
     fe4:	e59f3050 	ldr	r3, [pc, #80]	@ 103c <malloc+0x160>
     fe8:	e5933000 	ldr	r3, [r3]
     fec:	e51b2008 	ldr	r2, [fp, #-8]
     ff0:	e1520003 	cmp	r2, r3
     ff4:	1a000007 	bne	1018 <malloc+0x13c>
     ff8:	e51b0010 	ldr	r0, [fp, #-16]
     ffc:	ebffff94 	bl	e54 <morecore>
    1000:	e50b0008 	str	r0, [fp, #-8]
    1004:	e51b3008 	ldr	r3, [fp, #-8]
    1008:	e3530000 	cmp	r3, #0
    100c:	1a000001 	bne	1018 <malloc+0x13c>
    1010:	e3a03000 	mov	r3, #0
    1014:	ea000005 	b	1030 <malloc+0x154>
    1018:	e51b3008 	ldr	r3, [fp, #-8]
    101c:	e50b300c 	str	r3, [fp, #-12]
    1020:	e51b3008 	ldr	r3, [fp, #-8]
    1024:	e5933000 	ldr	r3, [r3]
    1028:	e50b3008 	str	r3, [fp, #-8]
    102c:	eaffffc8 	b	f54 <malloc+0x78>
    1030:	e1a00003 	mov	r0, r3
    1034:	e24bd004 	sub	sp, fp, #4
    1038:	e8bd8800 	pop	{fp, pc}
    103c:	000011e0 	.word	0x000011e0
    1040:	000011d8 	.word	0x000011d8

00001044 <__udivsi3>:
    1044:	e2512001 	subs	r2, r1, #1
    1048:	012fff1e 	bxeq	lr
    104c:	3a000036 	bcc	112c <__udivsi3+0xe8>
    1050:	e1500001 	cmp	r0, r1
    1054:	9a000022 	bls	10e4 <__udivsi3+0xa0>
    1058:	e1110002 	tst	r1, r2
    105c:	0a000023 	beq	10f0 <__udivsi3+0xac>
    1060:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1064:	01a01181 	lsleq	r1, r1, #3
    1068:	03a03008 	moveq	r3, #8
    106c:	13a03001 	movne	r3, #1
    1070:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1074:	31510000 	cmpcc	r1, r0
    1078:	31a01201 	lslcc	r1, r1, #4
    107c:	31a03203 	lslcc	r3, r3, #4
    1080:	3afffffa 	bcc	1070 <__udivsi3+0x2c>
    1084:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1088:	31510000 	cmpcc	r1, r0
    108c:	31a01081 	lslcc	r1, r1, #1
    1090:	31a03083 	lslcc	r3, r3, #1
    1094:	3afffffa 	bcc	1084 <__udivsi3+0x40>
    1098:	e3a02000 	mov	r2, #0
    109c:	e1500001 	cmp	r0, r1
    10a0:	20400001 	subcs	r0, r0, r1
    10a4:	21822003 	orrcs	r2, r2, r3
    10a8:	e15000a1 	cmp	r0, r1, lsr #1
    10ac:	204000a1 	subcs	r0, r0, r1, lsr #1
    10b0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10b4:	e1500121 	cmp	r0, r1, lsr #2
    10b8:	20400121 	subcs	r0, r0, r1, lsr #2
    10bc:	21822123 	orrcs	r2, r2, r3, lsr #2
    10c0:	e15001a1 	cmp	r0, r1, lsr #3
    10c4:	204001a1 	subcs	r0, r0, r1, lsr #3
    10c8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    10cc:	e3500000 	cmp	r0, #0
    10d0:	11b03223 	lsrsne	r3, r3, #4
    10d4:	11a01221 	lsrne	r1, r1, #4
    10d8:	1affffef 	bne	109c <__udivsi3+0x58>
    10dc:	e1a00002 	mov	r0, r2
    10e0:	e12fff1e 	bx	lr
    10e4:	03a00001 	moveq	r0, #1
    10e8:	13a00000 	movne	r0, #0
    10ec:	e12fff1e 	bx	lr
    10f0:	e3510801 	cmp	r1, #65536	@ 0x10000
    10f4:	21a01821 	lsrcs	r1, r1, #16
    10f8:	23a02010 	movcs	r2, #16
    10fc:	33a02000 	movcc	r2, #0
    1100:	e3510c01 	cmp	r1, #256	@ 0x100
    1104:	21a01421 	lsrcs	r1, r1, #8
    1108:	22822008 	addcs	r2, r2, #8
    110c:	e3510010 	cmp	r1, #16
    1110:	21a01221 	lsrcs	r1, r1, #4
    1114:	22822004 	addcs	r2, r2, #4
    1118:	e3510004 	cmp	r1, #4
    111c:	82822003 	addhi	r2, r2, #3
    1120:	908220a1 	addls	r2, r2, r1, lsr #1
    1124:	e1a00230 	lsr	r0, r0, r2
    1128:	e12fff1e 	bx	lr
    112c:	e3500000 	cmp	r0, #0
    1130:	13e00000 	mvnne	r0, #0
    1134:	ea000007 	b	1158 <__aeabi_idiv0>

00001138 <__aeabi_uidivmod>:
    1138:	e3510000 	cmp	r1, #0
    113c:	0afffffa 	beq	112c <__udivsi3+0xe8>
    1140:	e92d4003 	push	{r0, r1, lr}
    1144:	ebffffbe 	bl	1044 <__udivsi3>
    1148:	e8bd4006 	pop	{r1, r2, lr}
    114c:	e0030092 	mul	r3, r2, r0
    1150:	e0411003 	sub	r1, r1, r3
    1154:	e12fff1e 	bx	lr

00001158 <__aeabi_idiv0>:
    1158:	e12fff1e 	bx	lr
