
_rm:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530001 	cmp	r3, #1
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f1084 	ldr	r1, [pc, #132]	@ ac <main+0xac>
      24:	e3a00002 	mov	r0, #2
      28:	eb00028b 	bl	a5c <printf>
      2c:	eb00015f 	bl	5b0 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea000016 	b	98 <main+0x98>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb0001af 	bl	718 <unlink>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	aa000009 	bge	8c <main+0x8c>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e1a03103 	lsl	r3, r3, #2
      6c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      70:	e0823003 	add	r3, r2, r3
      74:	e5933000 	ldr	r3, [r3]
      78:	e1a02003 	mov	r2, r3
      7c:	e59f102c 	ldr	r1, [pc, #44]	@ b0 <main+0xb0>
      80:	e3a00002 	mov	r0, #2
      84:	eb000274 	bl	a5c <printf>
      88:	ea000006 	b	a8 <main+0xa8>
      8c:	e51b3008 	ldr	r3, [fp, #-8]
      90:	e2833001 	add	r3, r3, #1
      94:	e50b3008 	str	r3, [fp, #-8]
      98:	e51b2008 	ldr	r2, [fp, #-8]
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e1520003 	cmp	r2, r3
      a4:	baffffe4 	blt	3c <main+0x3c>
      a8:	eb000140 	bl	5b0 <exit>
      ac:	00001118 	.word	0x00001118
      b0:	0000112c 	.word	0x0000112c

000000b4 <strcpy>:
      b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      b8:	e28db000 	add	fp, sp, #0
      bc:	e24dd014 	sub	sp, sp, #20
      c0:	e50b0010 	str	r0, [fp, #-16]
      c4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      c8:	e51b3010 	ldr	r3, [fp, #-16]
      cc:	e50b3008 	str	r3, [fp, #-8]
      d0:	e1a00000 	nop			@ (mov r0, r0)
      d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      d8:	e2823001 	add	r3, r2, #1
      dc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      e0:	e51b3010 	ldr	r3, [fp, #-16]
      e4:	e2831001 	add	r1, r3, #1
      e8:	e50b1010 	str	r1, [fp, #-16]
      ec:	e5d22000 	ldrb	r2, [r2]
      f0:	e5c32000 	strb	r2, [r3]
      f4:	e5d33000 	ldrb	r3, [r3]
      f8:	e3530000 	cmp	r3, #0
      fc:	1afffff4 	bne	d4 <strcpy+0x20>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e1a00003 	mov	r0, r3
     108:	e28bd000 	add	sp, fp, #0
     10c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     110:	e12fff1e 	bx	lr

00000114 <strcmp>:
     114:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     118:	e28db000 	add	fp, sp, #0
     11c:	e24dd00c 	sub	sp, sp, #12
     120:	e50b0008 	str	r0, [fp, #-8]
     124:	e50b100c 	str	r1, [fp, #-12]
     128:	ea000005 	b	144 <strcmp+0x30>
     12c:	e51b3008 	ldr	r3, [fp, #-8]
     130:	e2833001 	add	r3, r3, #1
     134:	e50b3008 	str	r3, [fp, #-8]
     138:	e51b300c 	ldr	r3, [fp, #-12]
     13c:	e2833001 	add	r3, r3, #1
     140:	e50b300c 	str	r3, [fp, #-12]
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e5d33000 	ldrb	r3, [r3]
     14c:	e3530000 	cmp	r3, #0
     150:	0a000005 	beq	16c <strcmp+0x58>
     154:	e51b3008 	ldr	r3, [fp, #-8]
     158:	e5d32000 	ldrb	r2, [r3]
     15c:	e51b300c 	ldr	r3, [fp, #-12]
     160:	e5d33000 	ldrb	r3, [r3]
     164:	e1520003 	cmp	r2, r3
     168:	0affffef 	beq	12c <strcmp+0x18>
     16c:	e51b3008 	ldr	r3, [fp, #-8]
     170:	e5d33000 	ldrb	r3, [r3]
     174:	e1a02003 	mov	r2, r3
     178:	e51b300c 	ldr	r3, [fp, #-12]
     17c:	e5d33000 	ldrb	r3, [r3]
     180:	e0423003 	sub	r3, r2, r3
     184:	e1a00003 	mov	r0, r3
     188:	e28bd000 	add	sp, fp, #0
     18c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     190:	e12fff1e 	bx	lr

00000194 <strlen>:
     194:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     198:	e28db000 	add	fp, sp, #0
     19c:	e24dd014 	sub	sp, sp, #20
     1a0:	e50b0010 	str	r0, [fp, #-16]
     1a4:	e3a03000 	mov	r3, #0
     1a8:	e50b3008 	str	r3, [fp, #-8]
     1ac:	ea000002 	b	1bc <strlen+0x28>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e51b2010 	ldr	r2, [fp, #-16]
     1c4:	e0823003 	add	r3, r2, r3
     1c8:	e5d33000 	ldrb	r3, [r3]
     1cc:	e3530000 	cmp	r3, #0
     1d0:	1afffff6 	bne	1b0 <strlen+0x1c>
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e1a00003 	mov	r0, r3
     1dc:	e28bd000 	add	sp, fp, #0
     1e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1e4:	e12fff1e 	bx	lr

000001e8 <memset>:
     1e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1ec:	e28db000 	add	fp, sp, #0
     1f0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1f8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1fc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     200:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     204:	e50b3008 	str	r3, [fp, #-8]
     208:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     20c:	e54b300d 	strb	r3, [fp, #-13]
     210:	e55b200d 	ldrb	r2, [fp, #-13]
     214:	e1a03002 	mov	r3, r2
     218:	e1a03403 	lsl	r3, r3, #8
     21c:	e0833002 	add	r3, r3, r2
     220:	e1a03803 	lsl	r3, r3, #16
     224:	e1a02003 	mov	r2, r3
     228:	e55b300d 	ldrb	r3, [fp, #-13]
     22c:	e1a03403 	lsl	r3, r3, #8
     230:	e1822003 	orr	r2, r2, r3
     234:	e55b300d 	ldrb	r3, [fp, #-13]
     238:	e1823003 	orr	r3, r2, r3
     23c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     240:	ea000008 	b	268 <memset+0x80>
     244:	e51b3008 	ldr	r3, [fp, #-8]
     248:	e55b200d 	ldrb	r2, [fp, #-13]
     24c:	e5c32000 	strb	r2, [r3]
     250:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     254:	e2433001 	sub	r3, r3, #1
     258:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     25c:	e51b3008 	ldr	r3, [fp, #-8]
     260:	e2833001 	add	r3, r3, #1
     264:	e50b3008 	str	r3, [fp, #-8]
     268:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     26c:	e3530000 	cmp	r3, #0
     270:	0a000003 	beq	284 <memset+0x9c>
     274:	e51b3008 	ldr	r3, [fp, #-8]
     278:	e2033003 	and	r3, r3, #3
     27c:	e3530000 	cmp	r3, #0
     280:	1affffef 	bne	244 <memset+0x5c>
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e50b300c 	str	r3, [fp, #-12]
     28c:	ea000008 	b	2b4 <memset+0xcc>
     290:	e51b300c 	ldr	r3, [fp, #-12]
     294:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     298:	e5832000 	str	r2, [r3]
     29c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2a0:	e2433004 	sub	r3, r3, #4
     2a4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2a8:	e51b300c 	ldr	r3, [fp, #-12]
     2ac:	e2833004 	add	r3, r3, #4
     2b0:	e50b300c 	str	r3, [fp, #-12]
     2b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e3530003 	cmp	r3, #3
     2bc:	8afffff3 	bhi	290 <memset+0xa8>
     2c0:	e51b300c 	ldr	r3, [fp, #-12]
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	ea000008 	b	2f0 <memset+0x108>
     2cc:	e51b3008 	ldr	r3, [fp, #-8]
     2d0:	e55b200d 	ldrb	r2, [fp, #-13]
     2d4:	e5c32000 	strb	r2, [r3]
     2d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2dc:	e2433001 	sub	r3, r3, #1
     2e0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e2833001 	add	r3, r3, #1
     2ec:	e50b3008 	str	r3, [fp, #-8]
     2f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2f4:	e3530000 	cmp	r3, #0
     2f8:	1afffff3 	bne	2cc <memset+0xe4>
     2fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     300:	e1a00003 	mov	r0, r3
     304:	e28bd000 	add	sp, fp, #0
     308:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     30c:	e12fff1e 	bx	lr

00000310 <strchr>:
     310:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     314:	e28db000 	add	fp, sp, #0
     318:	e24dd00c 	sub	sp, sp, #12
     31c:	e50b0008 	str	r0, [fp, #-8]
     320:	e1a03001 	mov	r3, r1
     324:	e54b3009 	strb	r3, [fp, #-9]
     328:	ea000009 	b	354 <strchr+0x44>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e5d33000 	ldrb	r3, [r3]
     334:	e55b2009 	ldrb	r2, [fp, #-9]
     338:	e1520003 	cmp	r2, r3
     33c:	1a000001 	bne	348 <strchr+0x38>
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	ea000007 	b	368 <strchr+0x58>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e2833001 	add	r3, r3, #1
     350:	e50b3008 	str	r3, [fp, #-8]
     354:	e51b3008 	ldr	r3, [fp, #-8]
     358:	e5d33000 	ldrb	r3, [r3]
     35c:	e3530000 	cmp	r3, #0
     360:	1afffff1 	bne	32c <strchr+0x1c>
     364:	e3a03000 	mov	r3, #0
     368:	e1a00003 	mov	r0, r3
     36c:	e28bd000 	add	sp, fp, #0
     370:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     374:	e12fff1e 	bx	lr

00000378 <gets>:
     378:	e92d4800 	push	{fp, lr}
     37c:	e28db004 	add	fp, sp, #4
     380:	e24dd018 	sub	sp, sp, #24
     384:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     388:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     38c:	e3a03000 	mov	r3, #0
     390:	e50b3008 	str	r3, [fp, #-8]
     394:	ea000016 	b	3f4 <gets+0x7c>
     398:	e24b300d 	sub	r3, fp, #13
     39c:	e3a02001 	mov	r2, #1
     3a0:	e1a01003 	mov	r1, r3
     3a4:	e3a00000 	mov	r0, #0
     3a8:	eb00009b 	bl	61c <read>
     3ac:	e50b000c 	str	r0, [fp, #-12]
     3b0:	e51b300c 	ldr	r3, [fp, #-12]
     3b4:	e3530000 	cmp	r3, #0
     3b8:	da000013 	ble	40c <gets+0x94>
     3bc:	e51b3008 	ldr	r3, [fp, #-8]
     3c0:	e2832001 	add	r2, r3, #1
     3c4:	e50b2008 	str	r2, [fp, #-8]
     3c8:	e1a02003 	mov	r2, r3
     3cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3d0:	e0833002 	add	r3, r3, r2
     3d4:	e55b200d 	ldrb	r2, [fp, #-13]
     3d8:	e5c32000 	strb	r2, [r3]
     3dc:	e55b300d 	ldrb	r3, [fp, #-13]
     3e0:	e353000a 	cmp	r3, #10
     3e4:	0a000009 	beq	410 <gets+0x98>
     3e8:	e55b300d 	ldrb	r3, [fp, #-13]
     3ec:	e353000d 	cmp	r3, #13
     3f0:	0a000006 	beq	410 <gets+0x98>
     3f4:	e51b3008 	ldr	r3, [fp, #-8]
     3f8:	e2833001 	add	r3, r3, #1
     3fc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     400:	e1520003 	cmp	r2, r3
     404:	caffffe3 	bgt	398 <gets+0x20>
     408:	ea000000 	b	410 <gets+0x98>
     40c:	e1a00000 	nop			@ (mov r0, r0)
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     418:	e0823003 	add	r3, r2, r3
     41c:	e3a02000 	mov	r2, #0
     420:	e5c32000 	strb	r2, [r3]
     424:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     428:	e1a00003 	mov	r0, r3
     42c:	e24bd004 	sub	sp, fp, #4
     430:	e8bd8800 	pop	{fp, pc}

00000434 <stat>:
     434:	e92d4800 	push	{fp, lr}
     438:	e28db004 	add	fp, sp, #4
     43c:	e24dd010 	sub	sp, sp, #16
     440:	e50b0010 	str	r0, [fp, #-16]
     444:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     448:	e3a01000 	mov	r1, #0
     44c:	e51b0010 	ldr	r0, [fp, #-16]
     450:	eb00009e 	bl	6d0 <open>
     454:	e50b0008 	str	r0, [fp, #-8]
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e3530000 	cmp	r3, #0
     460:	aa000001 	bge	46c <stat+0x38>
     464:	e3e03000 	mvn	r3, #0
     468:	ea000006 	b	488 <stat+0x54>
     46c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     470:	e51b0008 	ldr	r0, [fp, #-8]
     474:	eb0000b0 	bl	73c <fstat>
     478:	e50b000c 	str	r0, [fp, #-12]
     47c:	e51b0008 	ldr	r0, [fp, #-8]
     480:	eb000077 	bl	664 <close>
     484:	e51b300c 	ldr	r3, [fp, #-12]
     488:	e1a00003 	mov	r0, r3
     48c:	e24bd004 	sub	sp, fp, #4
     490:	e8bd8800 	pop	{fp, pc}

00000494 <atoi>:
     494:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     498:	e28db000 	add	fp, sp, #0
     49c:	e24dd014 	sub	sp, sp, #20
     4a0:	e50b0010 	str	r0, [fp, #-16]
     4a4:	e3a03000 	mov	r3, #0
     4a8:	e50b3008 	str	r3, [fp, #-8]
     4ac:	ea00000c 	b	4e4 <atoi+0x50>
     4b0:	e51b2008 	ldr	r2, [fp, #-8]
     4b4:	e1a03002 	mov	r3, r2
     4b8:	e1a03103 	lsl	r3, r3, #2
     4bc:	e0833002 	add	r3, r3, r2
     4c0:	e1a03083 	lsl	r3, r3, #1
     4c4:	e1a01003 	mov	r1, r3
     4c8:	e51b3010 	ldr	r3, [fp, #-16]
     4cc:	e2832001 	add	r2, r3, #1
     4d0:	e50b2010 	str	r2, [fp, #-16]
     4d4:	e5d33000 	ldrb	r3, [r3]
     4d8:	e0813003 	add	r3, r1, r3
     4dc:	e2433030 	sub	r3, r3, #48	@ 0x30
     4e0:	e50b3008 	str	r3, [fp, #-8]
     4e4:	e51b3010 	ldr	r3, [fp, #-16]
     4e8:	e5d33000 	ldrb	r3, [r3]
     4ec:	e353002f 	cmp	r3, #47	@ 0x2f
     4f0:	9a000003 	bls	504 <atoi+0x70>
     4f4:	e51b3010 	ldr	r3, [fp, #-16]
     4f8:	e5d33000 	ldrb	r3, [r3]
     4fc:	e3530039 	cmp	r3, #57	@ 0x39
     500:	9affffea 	bls	4b0 <atoi+0x1c>
     504:	e51b3008 	ldr	r3, [fp, #-8]
     508:	e1a00003 	mov	r0, r3
     50c:	e28bd000 	add	sp, fp, #0
     510:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     514:	e12fff1e 	bx	lr

00000518 <memmove>:
     518:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     51c:	e28db000 	add	fp, sp, #0
     520:	e24dd01c 	sub	sp, sp, #28
     524:	e50b0010 	str	r0, [fp, #-16]
     528:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     52c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     530:	e51b3010 	ldr	r3, [fp, #-16]
     534:	e50b3008 	str	r3, [fp, #-8]
     538:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     53c:	e50b300c 	str	r3, [fp, #-12]
     540:	ea000007 	b	564 <memmove+0x4c>
     544:	e51b200c 	ldr	r2, [fp, #-12]
     548:	e2823001 	add	r3, r2, #1
     54c:	e50b300c 	str	r3, [fp, #-12]
     550:	e51b3008 	ldr	r3, [fp, #-8]
     554:	e2831001 	add	r1, r3, #1
     558:	e50b1008 	str	r1, [fp, #-8]
     55c:	e5d22000 	ldrb	r2, [r2]
     560:	e5c32000 	strb	r2, [r3]
     564:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     568:	e2432001 	sub	r2, r3, #1
     56c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     570:	e3530000 	cmp	r3, #0
     574:	cafffff2 	bgt	544 <memmove+0x2c>
     578:	e51b3010 	ldr	r3, [fp, #-16]
     57c:	e1a00003 	mov	r0, r3
     580:	e28bd000 	add	sp, fp, #0
     584:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     588:	e12fff1e 	bx	lr

0000058c <fork>:
     58c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     590:	e1a04003 	mov	r4, r3
     594:	e1a03002 	mov	r3, r2
     598:	e1a02001 	mov	r2, r1
     59c:	e1a01000 	mov	r1, r0
     5a0:	e3a00001 	mov	r0, #1
     5a4:	ef000000 	svc	0x00000000
     5a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5ac:	e12fff1e 	bx	lr

000005b0 <exit>:
     5b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5b4:	e1a04003 	mov	r4, r3
     5b8:	e1a03002 	mov	r3, r2
     5bc:	e1a02001 	mov	r2, r1
     5c0:	e1a01000 	mov	r1, r0
     5c4:	e3a00002 	mov	r0, #2
     5c8:	ef000000 	svc	0x00000000
     5cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5d0:	e12fff1e 	bx	lr

000005d4 <wait>:
     5d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d8:	e1a04003 	mov	r4, r3
     5dc:	e1a03002 	mov	r3, r2
     5e0:	e1a02001 	mov	r2, r1
     5e4:	e1a01000 	mov	r1, r0
     5e8:	e3a00003 	mov	r0, #3
     5ec:	ef000000 	svc	0x00000000
     5f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f4:	e12fff1e 	bx	lr

000005f8 <pipe>:
     5f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5fc:	e1a04003 	mov	r4, r3
     600:	e1a03002 	mov	r3, r2
     604:	e1a02001 	mov	r2, r1
     608:	e1a01000 	mov	r1, r0
     60c:	e3a00004 	mov	r0, #4
     610:	ef000000 	svc	0x00000000
     614:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     618:	e12fff1e 	bx	lr

0000061c <read>:
     61c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     620:	e1a04003 	mov	r4, r3
     624:	e1a03002 	mov	r3, r2
     628:	e1a02001 	mov	r2, r1
     62c:	e1a01000 	mov	r1, r0
     630:	e3a00005 	mov	r0, #5
     634:	ef000000 	svc	0x00000000
     638:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     63c:	e12fff1e 	bx	lr

00000640 <write>:
     640:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     644:	e1a04003 	mov	r4, r3
     648:	e1a03002 	mov	r3, r2
     64c:	e1a02001 	mov	r2, r1
     650:	e1a01000 	mov	r1, r0
     654:	e3a00010 	mov	r0, #16
     658:	ef000000 	svc	0x00000000
     65c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     660:	e12fff1e 	bx	lr

00000664 <close>:
     664:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     668:	e1a04003 	mov	r4, r3
     66c:	e1a03002 	mov	r3, r2
     670:	e1a02001 	mov	r2, r1
     674:	e1a01000 	mov	r1, r0
     678:	e3a00015 	mov	r0, #21
     67c:	ef000000 	svc	0x00000000
     680:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     684:	e12fff1e 	bx	lr

00000688 <kill>:
     688:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     68c:	e1a04003 	mov	r4, r3
     690:	e1a03002 	mov	r3, r2
     694:	e1a02001 	mov	r2, r1
     698:	e1a01000 	mov	r1, r0
     69c:	e3a00006 	mov	r0, #6
     6a0:	ef000000 	svc	0x00000000
     6a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a8:	e12fff1e 	bx	lr

000006ac <exec>:
     6ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b0:	e1a04003 	mov	r4, r3
     6b4:	e1a03002 	mov	r3, r2
     6b8:	e1a02001 	mov	r2, r1
     6bc:	e1a01000 	mov	r1, r0
     6c0:	e3a00007 	mov	r0, #7
     6c4:	ef000000 	svc	0x00000000
     6c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6cc:	e12fff1e 	bx	lr

000006d0 <open>:
     6d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d4:	e1a04003 	mov	r4, r3
     6d8:	e1a03002 	mov	r3, r2
     6dc:	e1a02001 	mov	r2, r1
     6e0:	e1a01000 	mov	r1, r0
     6e4:	e3a0000f 	mov	r0, #15
     6e8:	ef000000 	svc	0x00000000
     6ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f0:	e12fff1e 	bx	lr

000006f4 <mknod>:
     6f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f8:	e1a04003 	mov	r4, r3
     6fc:	e1a03002 	mov	r3, r2
     700:	e1a02001 	mov	r2, r1
     704:	e1a01000 	mov	r1, r0
     708:	e3a00011 	mov	r0, #17
     70c:	ef000000 	svc	0x00000000
     710:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     714:	e12fff1e 	bx	lr

00000718 <unlink>:
     718:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     71c:	e1a04003 	mov	r4, r3
     720:	e1a03002 	mov	r3, r2
     724:	e1a02001 	mov	r2, r1
     728:	e1a01000 	mov	r1, r0
     72c:	e3a00012 	mov	r0, #18
     730:	ef000000 	svc	0x00000000
     734:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     738:	e12fff1e 	bx	lr

0000073c <fstat>:
     73c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     740:	e1a04003 	mov	r4, r3
     744:	e1a03002 	mov	r3, r2
     748:	e1a02001 	mov	r2, r1
     74c:	e1a01000 	mov	r1, r0
     750:	e3a00008 	mov	r0, #8
     754:	ef000000 	svc	0x00000000
     758:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     75c:	e12fff1e 	bx	lr

00000760 <link>:
     760:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     764:	e1a04003 	mov	r4, r3
     768:	e1a03002 	mov	r3, r2
     76c:	e1a02001 	mov	r2, r1
     770:	e1a01000 	mov	r1, r0
     774:	e3a00013 	mov	r0, #19
     778:	ef000000 	svc	0x00000000
     77c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     780:	e12fff1e 	bx	lr

00000784 <mkdir>:
     784:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     788:	e1a04003 	mov	r4, r3
     78c:	e1a03002 	mov	r3, r2
     790:	e1a02001 	mov	r2, r1
     794:	e1a01000 	mov	r1, r0
     798:	e3a00014 	mov	r0, #20
     79c:	ef000000 	svc	0x00000000
     7a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a4:	e12fff1e 	bx	lr

000007a8 <chdir>:
     7a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ac:	e1a04003 	mov	r4, r3
     7b0:	e1a03002 	mov	r3, r2
     7b4:	e1a02001 	mov	r2, r1
     7b8:	e1a01000 	mov	r1, r0
     7bc:	e3a00009 	mov	r0, #9
     7c0:	ef000000 	svc	0x00000000
     7c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c8:	e12fff1e 	bx	lr

000007cc <dup>:
     7cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d0:	e1a04003 	mov	r4, r3
     7d4:	e1a03002 	mov	r3, r2
     7d8:	e1a02001 	mov	r2, r1
     7dc:	e1a01000 	mov	r1, r0
     7e0:	e3a0000a 	mov	r0, #10
     7e4:	ef000000 	svc	0x00000000
     7e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ec:	e12fff1e 	bx	lr

000007f0 <getpid>:
     7f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f4:	e1a04003 	mov	r4, r3
     7f8:	e1a03002 	mov	r3, r2
     7fc:	e1a02001 	mov	r2, r1
     800:	e1a01000 	mov	r1, r0
     804:	e3a0000b 	mov	r0, #11
     808:	ef000000 	svc	0x00000000
     80c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     810:	e12fff1e 	bx	lr

00000814 <sbrk>:
     814:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     818:	e1a04003 	mov	r4, r3
     81c:	e1a03002 	mov	r3, r2
     820:	e1a02001 	mov	r2, r1
     824:	e1a01000 	mov	r1, r0
     828:	e3a0000c 	mov	r0, #12
     82c:	ef000000 	svc	0x00000000
     830:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     834:	e12fff1e 	bx	lr

00000838 <sleep>:
     838:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     83c:	e1a04003 	mov	r4, r3
     840:	e1a03002 	mov	r3, r2
     844:	e1a02001 	mov	r2, r1
     848:	e1a01000 	mov	r1, r0
     84c:	e3a0000d 	mov	r0, #13
     850:	ef000000 	svc	0x00000000
     854:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     858:	e12fff1e 	bx	lr

0000085c <uptime>:
     85c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     860:	e1a04003 	mov	r4, r3
     864:	e1a03002 	mov	r3, r2
     868:	e1a02001 	mov	r2, r1
     86c:	e1a01000 	mov	r1, r0
     870:	e3a0000e 	mov	r0, #14
     874:	ef000000 	svc	0x00000000
     878:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     87c:	e12fff1e 	bx	lr

00000880 <pgpte>:
     880:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     884:	e1a04003 	mov	r4, r3
     888:	e1a03002 	mov	r3, r2
     88c:	e1a02001 	mov	r2, r1
     890:	e1a01000 	mov	r1, r0
     894:	e3a00016 	mov	r0, #22
     898:	ef000000 	svc	0x00000000
     89c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a0:	e12fff1e 	bx	lr

000008a4 <kpt>:
     8a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a8:	e1a04003 	mov	r4, r3
     8ac:	e1a03002 	mov	r3, r2
     8b0:	e1a02001 	mov	r2, r1
     8b4:	e1a01000 	mov	r1, r0
     8b8:	e3a00017 	mov	r0, #23
     8bc:	ef000000 	svc	0x00000000
     8c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <ugetpid>:
     8c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8cc:	e1a04003 	mov	r4, r3
     8d0:	e1a03002 	mov	r3, r2
     8d4:	e1a02001 	mov	r2, r1
     8d8:	e1a01000 	mov	r1, r0
     8dc:	e3a00018 	mov	r0, #24
     8e0:	ef000000 	svc	0x00000000
     8e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e8:	e12fff1e 	bx	lr

000008ec <putc>:
     8ec:	e92d4800 	push	{fp, lr}
     8f0:	e28db004 	add	fp, sp, #4
     8f4:	e24dd008 	sub	sp, sp, #8
     8f8:	e50b0008 	str	r0, [fp, #-8]
     8fc:	e1a03001 	mov	r3, r1
     900:	e54b3009 	strb	r3, [fp, #-9]
     904:	e24b3009 	sub	r3, fp, #9
     908:	e3a02001 	mov	r2, #1
     90c:	e1a01003 	mov	r1, r3
     910:	e51b0008 	ldr	r0, [fp, #-8]
     914:	ebffff49 	bl	640 <write>
     918:	e1a00000 	nop			@ (mov r0, r0)
     91c:	e24bd004 	sub	sp, fp, #4
     920:	e8bd8800 	pop	{fp, pc}

00000924 <printint>:
     924:	e92d4800 	push	{fp, lr}
     928:	e28db004 	add	fp, sp, #4
     92c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     930:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     934:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     938:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     93c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     940:	e3a03000 	mov	r3, #0
     944:	e50b300c 	str	r3, [fp, #-12]
     948:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     94c:	e3530000 	cmp	r3, #0
     950:	0a000008 	beq	978 <printint+0x54>
     954:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     958:	e3530000 	cmp	r3, #0
     95c:	aa000005 	bge	978 <printint+0x54>
     960:	e3a03001 	mov	r3, #1
     964:	e50b300c 	str	r3, [fp, #-12]
     968:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     96c:	e2633000 	rsb	r3, r3, #0
     970:	e50b3010 	str	r3, [fp, #-16]
     974:	ea000001 	b	980 <printint+0x5c>
     978:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     97c:	e50b3010 	str	r3, [fp, #-16]
     980:	e3a03000 	mov	r3, #0
     984:	e50b3008 	str	r3, [fp, #-8]
     988:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     98c:	e51b3010 	ldr	r3, [fp, #-16]
     990:	e1a01002 	mov	r1, r2
     994:	e1a00003 	mov	r0, r3
     998:	eb0001d5 	bl	10f4 <__aeabi_uidivmod>
     99c:	e1a03001 	mov	r3, r1
     9a0:	e1a01003 	mov	r1, r3
     9a4:	e51b3008 	ldr	r3, [fp, #-8]
     9a8:	e2832001 	add	r2, r3, #1
     9ac:	e50b2008 	str	r2, [fp, #-8]
     9b0:	e59f20a0 	ldr	r2, [pc, #160]	@ a58 <printint+0x134>
     9b4:	e7d22001 	ldrb	r2, [r2, r1]
     9b8:	e2433004 	sub	r3, r3, #4
     9bc:	e083300b 	add	r3, r3, fp
     9c0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9c4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     9c8:	e1a01003 	mov	r1, r3
     9cc:	e51b0010 	ldr	r0, [fp, #-16]
     9d0:	eb00018a 	bl	1000 <__udivsi3>
     9d4:	e1a03000 	mov	r3, r0
     9d8:	e50b3010 	str	r3, [fp, #-16]
     9dc:	e51b3010 	ldr	r3, [fp, #-16]
     9e0:	e3530000 	cmp	r3, #0
     9e4:	1affffe7 	bne	988 <printint+0x64>
     9e8:	e51b300c 	ldr	r3, [fp, #-12]
     9ec:	e3530000 	cmp	r3, #0
     9f0:	0a00000e 	beq	a30 <printint+0x10c>
     9f4:	e51b3008 	ldr	r3, [fp, #-8]
     9f8:	e2832001 	add	r2, r3, #1
     9fc:	e50b2008 	str	r2, [fp, #-8]
     a00:	e2433004 	sub	r3, r3, #4
     a04:	e083300b 	add	r3, r3, fp
     a08:	e3a0202d 	mov	r2, #45	@ 0x2d
     a0c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a10:	ea000006 	b	a30 <printint+0x10c>
     a14:	e24b2020 	sub	r2, fp, #32
     a18:	e51b3008 	ldr	r3, [fp, #-8]
     a1c:	e0823003 	add	r3, r2, r3
     a20:	e5d33000 	ldrb	r3, [r3]
     a24:	e1a01003 	mov	r1, r3
     a28:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a2c:	ebffffae 	bl	8ec <putc>
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e2433001 	sub	r3, r3, #1
     a38:	e50b3008 	str	r3, [fp, #-8]
     a3c:	e51b3008 	ldr	r3, [fp, #-8]
     a40:	e3530000 	cmp	r3, #0
     a44:	aafffff2 	bge	a14 <printint+0xf0>
     a48:	e1a00000 	nop			@ (mov r0, r0)
     a4c:	e1a00000 	nop			@ (mov r0, r0)
     a50:	e24bd004 	sub	sp, fp, #4
     a54:	e8bd8800 	pop	{fp, pc}
     a58:	00001150 	.word	0x00001150

00000a5c <printf>:
     a5c:	e92d000e 	push	{r1, r2, r3}
     a60:	e92d4800 	push	{fp, lr}
     a64:	e28db004 	add	fp, sp, #4
     a68:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a6c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a70:	e3a03000 	mov	r3, #0
     a74:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a78:	e28b3008 	add	r3, fp, #8
     a7c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a80:	e3a03000 	mov	r3, #0
     a84:	e50b3010 	str	r3, [fp, #-16]
     a88:	ea000074 	b	c60 <printf+0x204>
     a8c:	e59b2004 	ldr	r2, [fp, #4]
     a90:	e51b3010 	ldr	r3, [fp, #-16]
     a94:	e0823003 	add	r3, r2, r3
     a98:	e5d33000 	ldrb	r3, [r3]
     a9c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     aa0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     aa4:	e3530000 	cmp	r3, #0
     aa8:	1a00000b 	bne	adc <printf+0x80>
     aac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ab0:	e3530025 	cmp	r3, #37	@ 0x25
     ab4:	1a000002 	bne	ac4 <printf+0x68>
     ab8:	e3a03025 	mov	r3, #37	@ 0x25
     abc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ac0:	ea000063 	b	c54 <printf+0x1f8>
     ac4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ac8:	e6ef3073 	uxtb	r3, r3
     acc:	e1a01003 	mov	r1, r3
     ad0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ad4:	ebffff84 	bl	8ec <putc>
     ad8:	ea00005d 	b	c54 <printf+0x1f8>
     adc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ae0:	e3530025 	cmp	r3, #37	@ 0x25
     ae4:	1a00005a 	bne	c54 <printf+0x1f8>
     ae8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     aec:	e3530064 	cmp	r3, #100	@ 0x64
     af0:	1a00000a 	bne	b20 <printf+0xc4>
     af4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     af8:	e5933000 	ldr	r3, [r3]
     afc:	e1a01003 	mov	r1, r3
     b00:	e3a03001 	mov	r3, #1
     b04:	e3a0200a 	mov	r2, #10
     b08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b0c:	ebffff84 	bl	924 <printint>
     b10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b14:	e2833004 	add	r3, r3, #4
     b18:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b1c:	ea00004a 	b	c4c <printf+0x1f0>
     b20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b24:	e3530078 	cmp	r3, #120	@ 0x78
     b28:	0a000002 	beq	b38 <printf+0xdc>
     b2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b30:	e3530070 	cmp	r3, #112	@ 0x70
     b34:	1a00000a 	bne	b64 <printf+0x108>
     b38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b3c:	e5933000 	ldr	r3, [r3]
     b40:	e1a01003 	mov	r1, r3
     b44:	e3a03000 	mov	r3, #0
     b48:	e3a02010 	mov	r2, #16
     b4c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b50:	ebffff73 	bl	924 <printint>
     b54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b58:	e2833004 	add	r3, r3, #4
     b5c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b60:	ea000039 	b	c4c <printf+0x1f0>
     b64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b68:	e3530073 	cmp	r3, #115	@ 0x73
     b6c:	1a000018 	bne	bd4 <printf+0x178>
     b70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b74:	e5933000 	ldr	r3, [r3]
     b78:	e50b300c 	str	r3, [fp, #-12]
     b7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b80:	e2833004 	add	r3, r3, #4
     b84:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b88:	e51b300c 	ldr	r3, [fp, #-12]
     b8c:	e3530000 	cmp	r3, #0
     b90:	1a00000a 	bne	bc0 <printf+0x164>
     b94:	e59f30f4 	ldr	r3, [pc, #244]	@ c90 <printf+0x234>
     b98:	e50b300c 	str	r3, [fp, #-12]
     b9c:	ea000007 	b	bc0 <printf+0x164>
     ba0:	e51b300c 	ldr	r3, [fp, #-12]
     ba4:	e5d33000 	ldrb	r3, [r3]
     ba8:	e1a01003 	mov	r1, r3
     bac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bb0:	ebffff4d 	bl	8ec <putc>
     bb4:	e51b300c 	ldr	r3, [fp, #-12]
     bb8:	e2833001 	add	r3, r3, #1
     bbc:	e50b300c 	str	r3, [fp, #-12]
     bc0:	e51b300c 	ldr	r3, [fp, #-12]
     bc4:	e5d33000 	ldrb	r3, [r3]
     bc8:	e3530000 	cmp	r3, #0
     bcc:	1afffff3 	bne	ba0 <printf+0x144>
     bd0:	ea00001d 	b	c4c <printf+0x1f0>
     bd4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bd8:	e3530063 	cmp	r3, #99	@ 0x63
     bdc:	1a000009 	bne	c08 <printf+0x1ac>
     be0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     be4:	e5933000 	ldr	r3, [r3]
     be8:	e6ef3073 	uxtb	r3, r3
     bec:	e1a01003 	mov	r1, r3
     bf0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bf4:	ebffff3c 	bl	8ec <putc>
     bf8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bfc:	e2833004 	add	r3, r3, #4
     c00:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c04:	ea000010 	b	c4c <printf+0x1f0>
     c08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c0c:	e3530025 	cmp	r3, #37	@ 0x25
     c10:	1a000005 	bne	c2c <printf+0x1d0>
     c14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c18:	e6ef3073 	uxtb	r3, r3
     c1c:	e1a01003 	mov	r1, r3
     c20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c24:	ebffff30 	bl	8ec <putc>
     c28:	ea000007 	b	c4c <printf+0x1f0>
     c2c:	e3a01025 	mov	r1, #37	@ 0x25
     c30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c34:	ebffff2c 	bl	8ec <putc>
     c38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c3c:	e6ef3073 	uxtb	r3, r3
     c40:	e1a01003 	mov	r1, r3
     c44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c48:	ebffff27 	bl	8ec <putc>
     c4c:	e3a03000 	mov	r3, #0
     c50:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c54:	e51b3010 	ldr	r3, [fp, #-16]
     c58:	e2833001 	add	r3, r3, #1
     c5c:	e50b3010 	str	r3, [fp, #-16]
     c60:	e59b2004 	ldr	r2, [fp, #4]
     c64:	e51b3010 	ldr	r3, [fp, #-16]
     c68:	e0823003 	add	r3, r2, r3
     c6c:	e5d33000 	ldrb	r3, [r3]
     c70:	e3530000 	cmp	r3, #0
     c74:	1affff84 	bne	a8c <printf+0x30>
     c78:	e1a00000 	nop			@ (mov r0, r0)
     c7c:	e1a00000 	nop			@ (mov r0, r0)
     c80:	e24bd004 	sub	sp, fp, #4
     c84:	e8bd4800 	pop	{fp, lr}
     c88:	e28dd00c 	add	sp, sp, #12
     c8c:	e12fff1e 	bx	lr
     c90:	00001148 	.word	0x00001148

00000c94 <free>:
     c94:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c98:	e28db000 	add	fp, sp, #0
     c9c:	e24dd014 	sub	sp, sp, #20
     ca0:	e50b0010 	str	r0, [fp, #-16]
     ca4:	e51b3010 	ldr	r3, [fp, #-16]
     ca8:	e2433008 	sub	r3, r3, #8
     cac:	e50b300c 	str	r3, [fp, #-12]
     cb0:	e59f3154 	ldr	r3, [pc, #340]	@ e0c <free+0x178>
     cb4:	e5933000 	ldr	r3, [r3]
     cb8:	e50b3008 	str	r3, [fp, #-8]
     cbc:	ea000010 	b	d04 <free+0x70>
     cc0:	e51b3008 	ldr	r3, [fp, #-8]
     cc4:	e5933000 	ldr	r3, [r3]
     cc8:	e51b2008 	ldr	r2, [fp, #-8]
     ccc:	e1520003 	cmp	r2, r3
     cd0:	3a000008 	bcc	cf8 <free+0x64>
     cd4:	e51b200c 	ldr	r2, [fp, #-12]
     cd8:	e51b3008 	ldr	r3, [fp, #-8]
     cdc:	e1520003 	cmp	r2, r3
     ce0:	8a000010 	bhi	d28 <free+0x94>
     ce4:	e51b3008 	ldr	r3, [fp, #-8]
     ce8:	e5933000 	ldr	r3, [r3]
     cec:	e51b200c 	ldr	r2, [fp, #-12]
     cf0:	e1520003 	cmp	r2, r3
     cf4:	3a00000b 	bcc	d28 <free+0x94>
     cf8:	e51b3008 	ldr	r3, [fp, #-8]
     cfc:	e5933000 	ldr	r3, [r3]
     d00:	e50b3008 	str	r3, [fp, #-8]
     d04:	e51b200c 	ldr	r2, [fp, #-12]
     d08:	e51b3008 	ldr	r3, [fp, #-8]
     d0c:	e1520003 	cmp	r2, r3
     d10:	9affffea 	bls	cc0 <free+0x2c>
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e5933000 	ldr	r3, [r3]
     d1c:	e51b200c 	ldr	r2, [fp, #-12]
     d20:	e1520003 	cmp	r2, r3
     d24:	2affffe5 	bcs	cc0 <free+0x2c>
     d28:	e51b300c 	ldr	r3, [fp, #-12]
     d2c:	e5933004 	ldr	r3, [r3, #4]
     d30:	e1a03183 	lsl	r3, r3, #3
     d34:	e51b200c 	ldr	r2, [fp, #-12]
     d38:	e0822003 	add	r2, r2, r3
     d3c:	e51b3008 	ldr	r3, [fp, #-8]
     d40:	e5933000 	ldr	r3, [r3]
     d44:	e1520003 	cmp	r2, r3
     d48:	1a00000d 	bne	d84 <free+0xf0>
     d4c:	e51b300c 	ldr	r3, [fp, #-12]
     d50:	e5932004 	ldr	r2, [r3, #4]
     d54:	e51b3008 	ldr	r3, [fp, #-8]
     d58:	e5933000 	ldr	r3, [r3]
     d5c:	e5933004 	ldr	r3, [r3, #4]
     d60:	e0822003 	add	r2, r2, r3
     d64:	e51b300c 	ldr	r3, [fp, #-12]
     d68:	e5832004 	str	r2, [r3, #4]
     d6c:	e51b3008 	ldr	r3, [fp, #-8]
     d70:	e5933000 	ldr	r3, [r3]
     d74:	e5932000 	ldr	r2, [r3]
     d78:	e51b300c 	ldr	r3, [fp, #-12]
     d7c:	e5832000 	str	r2, [r3]
     d80:	ea000003 	b	d94 <free+0x100>
     d84:	e51b3008 	ldr	r3, [fp, #-8]
     d88:	e5932000 	ldr	r2, [r3]
     d8c:	e51b300c 	ldr	r3, [fp, #-12]
     d90:	e5832000 	str	r2, [r3]
     d94:	e51b3008 	ldr	r3, [fp, #-8]
     d98:	e5933004 	ldr	r3, [r3, #4]
     d9c:	e1a03183 	lsl	r3, r3, #3
     da0:	e51b2008 	ldr	r2, [fp, #-8]
     da4:	e0823003 	add	r3, r2, r3
     da8:	e51b200c 	ldr	r2, [fp, #-12]
     dac:	e1520003 	cmp	r2, r3
     db0:	1a00000b 	bne	de4 <free+0x150>
     db4:	e51b3008 	ldr	r3, [fp, #-8]
     db8:	e5932004 	ldr	r2, [r3, #4]
     dbc:	e51b300c 	ldr	r3, [fp, #-12]
     dc0:	e5933004 	ldr	r3, [r3, #4]
     dc4:	e0822003 	add	r2, r2, r3
     dc8:	e51b3008 	ldr	r3, [fp, #-8]
     dcc:	e5832004 	str	r2, [r3, #4]
     dd0:	e51b300c 	ldr	r3, [fp, #-12]
     dd4:	e5932000 	ldr	r2, [r3]
     dd8:	e51b3008 	ldr	r3, [fp, #-8]
     ddc:	e5832000 	str	r2, [r3]
     de0:	ea000002 	b	df0 <free+0x15c>
     de4:	e51b3008 	ldr	r3, [fp, #-8]
     de8:	e51b200c 	ldr	r2, [fp, #-12]
     dec:	e5832000 	str	r2, [r3]
     df0:	e59f2014 	ldr	r2, [pc, #20]	@ e0c <free+0x178>
     df4:	e51b3008 	ldr	r3, [fp, #-8]
     df8:	e5823000 	str	r3, [r2]
     dfc:	e1a00000 	nop			@ (mov r0, r0)
     e00:	e28bd000 	add	sp, fp, #0
     e04:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e08:	e12fff1e 	bx	lr
     e0c:	0000116c 	.word	0x0000116c

00000e10 <morecore>:
     e10:	e92d4800 	push	{fp, lr}
     e14:	e28db004 	add	fp, sp, #4
     e18:	e24dd010 	sub	sp, sp, #16
     e1c:	e50b0010 	str	r0, [fp, #-16]
     e20:	e51b3010 	ldr	r3, [fp, #-16]
     e24:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e28:	2a000001 	bcs	e34 <morecore+0x24>
     e2c:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e30:	e50b3010 	str	r3, [fp, #-16]
     e34:	e51b3010 	ldr	r3, [fp, #-16]
     e38:	e1a03183 	lsl	r3, r3, #3
     e3c:	e1a00003 	mov	r0, r3
     e40:	ebfffe73 	bl	814 <sbrk>
     e44:	e50b0008 	str	r0, [fp, #-8]
     e48:	e51b3008 	ldr	r3, [fp, #-8]
     e4c:	e3730001 	cmn	r3, #1
     e50:	1a000001 	bne	e5c <morecore+0x4c>
     e54:	e3a03000 	mov	r3, #0
     e58:	ea00000a 	b	e88 <morecore+0x78>
     e5c:	e51b3008 	ldr	r3, [fp, #-8]
     e60:	e50b300c 	str	r3, [fp, #-12]
     e64:	e51b300c 	ldr	r3, [fp, #-12]
     e68:	e51b2010 	ldr	r2, [fp, #-16]
     e6c:	e5832004 	str	r2, [r3, #4]
     e70:	e51b300c 	ldr	r3, [fp, #-12]
     e74:	e2833008 	add	r3, r3, #8
     e78:	e1a00003 	mov	r0, r3
     e7c:	ebffff84 	bl	c94 <free>
     e80:	e59f300c 	ldr	r3, [pc, #12]	@ e94 <morecore+0x84>
     e84:	e5933000 	ldr	r3, [r3]
     e88:	e1a00003 	mov	r0, r3
     e8c:	e24bd004 	sub	sp, fp, #4
     e90:	e8bd8800 	pop	{fp, pc}
     e94:	0000116c 	.word	0x0000116c

00000e98 <malloc>:
     e98:	e92d4800 	push	{fp, lr}
     e9c:	e28db004 	add	fp, sp, #4
     ea0:	e24dd018 	sub	sp, sp, #24
     ea4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     ea8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     eac:	e2833007 	add	r3, r3, #7
     eb0:	e1a031a3 	lsr	r3, r3, #3
     eb4:	e2833001 	add	r3, r3, #1
     eb8:	e50b3010 	str	r3, [fp, #-16]
     ebc:	e59f3134 	ldr	r3, [pc, #308]	@ ff8 <malloc+0x160>
     ec0:	e5933000 	ldr	r3, [r3]
     ec4:	e50b300c 	str	r3, [fp, #-12]
     ec8:	e51b300c 	ldr	r3, [fp, #-12]
     ecc:	e3530000 	cmp	r3, #0
     ed0:	1a00000b 	bne	f04 <malloc+0x6c>
     ed4:	e59f3120 	ldr	r3, [pc, #288]	@ ffc <malloc+0x164>
     ed8:	e50b300c 	str	r3, [fp, #-12]
     edc:	e59f2114 	ldr	r2, [pc, #276]	@ ff8 <malloc+0x160>
     ee0:	e51b300c 	ldr	r3, [fp, #-12]
     ee4:	e5823000 	str	r3, [r2]
     ee8:	e59f3108 	ldr	r3, [pc, #264]	@ ff8 <malloc+0x160>
     eec:	e5933000 	ldr	r3, [r3]
     ef0:	e59f2104 	ldr	r2, [pc, #260]	@ ffc <malloc+0x164>
     ef4:	e5823000 	str	r3, [r2]
     ef8:	e59f30fc 	ldr	r3, [pc, #252]	@ ffc <malloc+0x164>
     efc:	e3a02000 	mov	r2, #0
     f00:	e5832004 	str	r2, [r3, #4]
     f04:	e51b300c 	ldr	r3, [fp, #-12]
     f08:	e5933000 	ldr	r3, [r3]
     f0c:	e50b3008 	str	r3, [fp, #-8]
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e5933004 	ldr	r3, [r3, #4]
     f18:	e51b2010 	ldr	r2, [fp, #-16]
     f1c:	e1520003 	cmp	r2, r3
     f20:	8a00001e 	bhi	fa0 <malloc+0x108>
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e5933004 	ldr	r3, [r3, #4]
     f2c:	e51b2010 	ldr	r2, [fp, #-16]
     f30:	e1520003 	cmp	r2, r3
     f34:	1a000004 	bne	f4c <malloc+0xb4>
     f38:	e51b3008 	ldr	r3, [fp, #-8]
     f3c:	e5932000 	ldr	r2, [r3]
     f40:	e51b300c 	ldr	r3, [fp, #-12]
     f44:	e5832000 	str	r2, [r3]
     f48:	ea00000e 	b	f88 <malloc+0xf0>
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e5932004 	ldr	r2, [r3, #4]
     f54:	e51b3010 	ldr	r3, [fp, #-16]
     f58:	e0422003 	sub	r2, r2, r3
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e5832004 	str	r2, [r3, #4]
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e5933004 	ldr	r3, [r3, #4]
     f6c:	e1a03183 	lsl	r3, r3, #3
     f70:	e51b2008 	ldr	r2, [fp, #-8]
     f74:	e0823003 	add	r3, r2, r3
     f78:	e50b3008 	str	r3, [fp, #-8]
     f7c:	e51b3008 	ldr	r3, [fp, #-8]
     f80:	e51b2010 	ldr	r2, [fp, #-16]
     f84:	e5832004 	str	r2, [r3, #4]
     f88:	e59f2068 	ldr	r2, [pc, #104]	@ ff8 <malloc+0x160>
     f8c:	e51b300c 	ldr	r3, [fp, #-12]
     f90:	e5823000 	str	r3, [r2]
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e2833008 	add	r3, r3, #8
     f9c:	ea000012 	b	fec <malloc+0x154>
     fa0:	e59f3050 	ldr	r3, [pc, #80]	@ ff8 <malloc+0x160>
     fa4:	e5933000 	ldr	r3, [r3]
     fa8:	e51b2008 	ldr	r2, [fp, #-8]
     fac:	e1520003 	cmp	r2, r3
     fb0:	1a000007 	bne	fd4 <malloc+0x13c>
     fb4:	e51b0010 	ldr	r0, [fp, #-16]
     fb8:	ebffff94 	bl	e10 <morecore>
     fbc:	e50b0008 	str	r0, [fp, #-8]
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e3530000 	cmp	r3, #0
     fc8:	1a000001 	bne	fd4 <malloc+0x13c>
     fcc:	e3a03000 	mov	r3, #0
     fd0:	ea000005 	b	fec <malloc+0x154>
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e50b300c 	str	r3, [fp, #-12]
     fdc:	e51b3008 	ldr	r3, [fp, #-8]
     fe0:	e5933000 	ldr	r3, [r3]
     fe4:	e50b3008 	str	r3, [fp, #-8]
     fe8:	eaffffc8 	b	f10 <malloc+0x78>
     fec:	e1a00003 	mov	r0, r3
     ff0:	e24bd004 	sub	sp, fp, #4
     ff4:	e8bd8800 	pop	{fp, pc}
     ff8:	0000116c 	.word	0x0000116c
     ffc:	00001164 	.word	0x00001164

00001000 <__udivsi3>:
    1000:	e2512001 	subs	r2, r1, #1
    1004:	012fff1e 	bxeq	lr
    1008:	3a000036 	bcc	10e8 <__udivsi3+0xe8>
    100c:	e1500001 	cmp	r0, r1
    1010:	9a000022 	bls	10a0 <__udivsi3+0xa0>
    1014:	e1110002 	tst	r1, r2
    1018:	0a000023 	beq	10ac <__udivsi3+0xac>
    101c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1020:	01a01181 	lsleq	r1, r1, #3
    1024:	03a03008 	moveq	r3, #8
    1028:	13a03001 	movne	r3, #1
    102c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1030:	31510000 	cmpcc	r1, r0
    1034:	31a01201 	lslcc	r1, r1, #4
    1038:	31a03203 	lslcc	r3, r3, #4
    103c:	3afffffa 	bcc	102c <__udivsi3+0x2c>
    1040:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1044:	31510000 	cmpcc	r1, r0
    1048:	31a01081 	lslcc	r1, r1, #1
    104c:	31a03083 	lslcc	r3, r3, #1
    1050:	3afffffa 	bcc	1040 <__udivsi3+0x40>
    1054:	e3a02000 	mov	r2, #0
    1058:	e1500001 	cmp	r0, r1
    105c:	20400001 	subcs	r0, r0, r1
    1060:	21822003 	orrcs	r2, r2, r3
    1064:	e15000a1 	cmp	r0, r1, lsr #1
    1068:	204000a1 	subcs	r0, r0, r1, lsr #1
    106c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1070:	e1500121 	cmp	r0, r1, lsr #2
    1074:	20400121 	subcs	r0, r0, r1, lsr #2
    1078:	21822123 	orrcs	r2, r2, r3, lsr #2
    107c:	e15001a1 	cmp	r0, r1, lsr #3
    1080:	204001a1 	subcs	r0, r0, r1, lsr #3
    1084:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1088:	e3500000 	cmp	r0, #0
    108c:	11b03223 	lsrsne	r3, r3, #4
    1090:	11a01221 	lsrne	r1, r1, #4
    1094:	1affffef 	bne	1058 <__udivsi3+0x58>
    1098:	e1a00002 	mov	r0, r2
    109c:	e12fff1e 	bx	lr
    10a0:	03a00001 	moveq	r0, #1
    10a4:	13a00000 	movne	r0, #0
    10a8:	e12fff1e 	bx	lr
    10ac:	e3510801 	cmp	r1, #65536	@ 0x10000
    10b0:	21a01821 	lsrcs	r1, r1, #16
    10b4:	23a02010 	movcs	r2, #16
    10b8:	33a02000 	movcc	r2, #0
    10bc:	e3510c01 	cmp	r1, #256	@ 0x100
    10c0:	21a01421 	lsrcs	r1, r1, #8
    10c4:	22822008 	addcs	r2, r2, #8
    10c8:	e3510010 	cmp	r1, #16
    10cc:	21a01221 	lsrcs	r1, r1, #4
    10d0:	22822004 	addcs	r2, r2, #4
    10d4:	e3510004 	cmp	r1, #4
    10d8:	82822003 	addhi	r2, r2, #3
    10dc:	908220a1 	addls	r2, r2, r1, lsr #1
    10e0:	e1a00230 	lsr	r0, r0, r2
    10e4:	e12fff1e 	bx	lr
    10e8:	e3500000 	cmp	r0, #0
    10ec:	13e00000 	mvnne	r0, #0
    10f0:	ea000007 	b	1114 <__aeabi_idiv0>

000010f4 <__aeabi_uidivmod>:
    10f4:	e3510000 	cmp	r1, #0
    10f8:	0afffffa 	beq	10e8 <__udivsi3+0xe8>
    10fc:	e92d4003 	push	{r0, r1, lr}
    1100:	ebffffbe 	bl	1000 <__udivsi3>
    1104:	e8bd4006 	pop	{r1, r2, lr}
    1108:	e0030092 	mul	r3, r2, r0
    110c:	e0411003 	sub	r1, r1, r3
    1110:	e12fff1e 	bx	lr

00001114 <__aeabi_idiv0>:
    1114:	e12fff1e 	bx	lr
