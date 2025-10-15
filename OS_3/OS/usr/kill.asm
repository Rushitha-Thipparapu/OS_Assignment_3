
_kill:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530000 	cmp	r3, #0
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f105c 	ldr	r1, [pc, #92]	@ 84 <main+0x84>
      24:	e3a00002 	mov	r0, #2
      28:	eb000280 	bl	a30 <printf>
      2c:	eb000154 	bl	584 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea00000c 	b	70 <main+0x70>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb000103 	bl	468 <atoi>
      58:	e1a03000 	mov	r3, r0
      5c:	e1a00003 	mov	r0, r3
      60:	eb00017d 	bl	65c <kill>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffee 	blt	3c <main+0x3c>
      80:	eb00013f 	bl	584 <exit>
      84:	000010ec 	.word	0x000010ec

00000088 <strcpy>:
      88:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      8c:	e28db000 	add	fp, sp, #0
      90:	e24dd014 	sub	sp, sp, #20
      94:	e50b0010 	str	r0, [fp, #-16]
      98:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e50b3008 	str	r3, [fp, #-8]
      a4:	e1a00000 	nop			@ (mov r0, r0)
      a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      ac:	e2823001 	add	r3, r2, #1
      b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      b4:	e51b3010 	ldr	r3, [fp, #-16]
      b8:	e2831001 	add	r1, r3, #1
      bc:	e50b1010 	str	r1, [fp, #-16]
      c0:	e5d22000 	ldrb	r2, [r2]
      c4:	e5c32000 	strb	r2, [r3]
      c8:	e5d33000 	ldrb	r3, [r3]
      cc:	e3530000 	cmp	r3, #0
      d0:	1afffff4 	bne	a8 <strcpy+0x20>
      d4:	e51b3008 	ldr	r3, [fp, #-8]
      d8:	e1a00003 	mov	r0, r3
      dc:	e28bd000 	add	sp, fp, #0
      e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      e4:	e12fff1e 	bx	lr

000000e8 <strcmp>:
      e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      ec:	e28db000 	add	fp, sp, #0
      f0:	e24dd00c 	sub	sp, sp, #12
      f4:	e50b0008 	str	r0, [fp, #-8]
      f8:	e50b100c 	str	r1, [fp, #-12]
      fc:	ea000005 	b	118 <strcmp+0x30>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e2833001 	add	r3, r3, #1
     108:	e50b3008 	str	r3, [fp, #-8]
     10c:	e51b300c 	ldr	r3, [fp, #-12]
     110:	e2833001 	add	r3, r3, #1
     114:	e50b300c 	str	r3, [fp, #-12]
     118:	e51b3008 	ldr	r3, [fp, #-8]
     11c:	e5d33000 	ldrb	r3, [r3]
     120:	e3530000 	cmp	r3, #0
     124:	0a000005 	beq	140 <strcmp+0x58>
     128:	e51b3008 	ldr	r3, [fp, #-8]
     12c:	e5d32000 	ldrb	r2, [r3]
     130:	e51b300c 	ldr	r3, [fp, #-12]
     134:	e5d33000 	ldrb	r3, [r3]
     138:	e1520003 	cmp	r2, r3
     13c:	0affffef 	beq	100 <strcmp+0x18>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e5d33000 	ldrb	r3, [r3]
     148:	e1a02003 	mov	r2, r3
     14c:	e51b300c 	ldr	r3, [fp, #-12]
     150:	e5d33000 	ldrb	r3, [r3]
     154:	e0423003 	sub	r3, r2, r3
     158:	e1a00003 	mov	r0, r3
     15c:	e28bd000 	add	sp, fp, #0
     160:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     164:	e12fff1e 	bx	lr

00000168 <strlen>:
     168:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     16c:	e28db000 	add	fp, sp, #0
     170:	e24dd014 	sub	sp, sp, #20
     174:	e50b0010 	str	r0, [fp, #-16]
     178:	e3a03000 	mov	r3, #0
     17c:	e50b3008 	str	r3, [fp, #-8]
     180:	ea000002 	b	190 <strlen+0x28>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e2833001 	add	r3, r3, #1
     18c:	e50b3008 	str	r3, [fp, #-8]
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e51b2010 	ldr	r2, [fp, #-16]
     198:	e0823003 	add	r3, r2, r3
     19c:	e5d33000 	ldrb	r3, [r3]
     1a0:	e3530000 	cmp	r3, #0
     1a4:	1afffff6 	bne	184 <strlen+0x1c>
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e1a00003 	mov	r0, r3
     1b0:	e28bd000 	add	sp, fp, #0
     1b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1b8:	e12fff1e 	bx	lr

000001bc <memset>:
     1bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c0:	e28db000 	add	fp, sp, #0
     1c4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1cc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1d0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1d8:	e50b3008 	str	r3, [fp, #-8]
     1dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1e0:	e54b300d 	strb	r3, [fp, #-13]
     1e4:	e55b200d 	ldrb	r2, [fp, #-13]
     1e8:	e1a03002 	mov	r3, r2
     1ec:	e1a03403 	lsl	r3, r3, #8
     1f0:	e0833002 	add	r3, r3, r2
     1f4:	e1a03803 	lsl	r3, r3, #16
     1f8:	e1a02003 	mov	r2, r3
     1fc:	e55b300d 	ldrb	r3, [fp, #-13]
     200:	e1a03403 	lsl	r3, r3, #8
     204:	e1822003 	orr	r2, r2, r3
     208:	e55b300d 	ldrb	r3, [fp, #-13]
     20c:	e1823003 	orr	r3, r2, r3
     210:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     214:	ea000008 	b	23c <memset+0x80>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e55b200d 	ldrb	r2, [fp, #-13]
     220:	e5c32000 	strb	r2, [r3]
     224:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     228:	e2433001 	sub	r3, r3, #1
     22c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e2833001 	add	r3, r3, #1
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     240:	e3530000 	cmp	r3, #0
     244:	0a000003 	beq	258 <memset+0x9c>
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e2033003 	and	r3, r3, #3
     250:	e3530000 	cmp	r3, #0
     254:	1affffef 	bne	218 <memset+0x5c>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e50b300c 	str	r3, [fp, #-12]
     260:	ea000008 	b	288 <memset+0xcc>
     264:	e51b300c 	ldr	r3, [fp, #-12]
     268:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     26c:	e5832000 	str	r2, [r3]
     270:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     274:	e2433004 	sub	r3, r3, #4
     278:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     27c:	e51b300c 	ldr	r3, [fp, #-12]
     280:	e2833004 	add	r3, r3, #4
     284:	e50b300c 	str	r3, [fp, #-12]
     288:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     28c:	e3530003 	cmp	r3, #3
     290:	8afffff3 	bhi	264 <memset+0xa8>
     294:	e51b300c 	ldr	r3, [fp, #-12]
     298:	e50b3008 	str	r3, [fp, #-8]
     29c:	ea000008 	b	2c4 <memset+0x108>
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e55b200d 	ldrb	r2, [fp, #-13]
     2a8:	e5c32000 	strb	r2, [r3]
     2ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e2433001 	sub	r3, r3, #1
     2b4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2833001 	add	r3, r3, #1
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2c8:	e3530000 	cmp	r3, #0
     2cc:	1afffff3 	bne	2a0 <memset+0xe4>
     2d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2d4:	e1a00003 	mov	r0, r3
     2d8:	e28bd000 	add	sp, fp, #0
     2dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e0:	e12fff1e 	bx	lr

000002e4 <strchr>:
     2e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2e8:	e28db000 	add	fp, sp, #0
     2ec:	e24dd00c 	sub	sp, sp, #12
     2f0:	e50b0008 	str	r0, [fp, #-8]
     2f4:	e1a03001 	mov	r3, r1
     2f8:	e54b3009 	strb	r3, [fp, #-9]
     2fc:	ea000009 	b	328 <strchr+0x44>
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e5d33000 	ldrb	r3, [r3]
     308:	e55b2009 	ldrb	r2, [fp, #-9]
     30c:	e1520003 	cmp	r2, r3
     310:	1a000001 	bne	31c <strchr+0x38>
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	ea000007 	b	33c <strchr+0x58>
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	e2833001 	add	r3, r3, #1
     324:	e50b3008 	str	r3, [fp, #-8]
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e5d33000 	ldrb	r3, [r3]
     330:	e3530000 	cmp	r3, #0
     334:	1afffff1 	bne	300 <strchr+0x1c>
     338:	e3a03000 	mov	r3, #0
     33c:	e1a00003 	mov	r0, r3
     340:	e28bd000 	add	sp, fp, #0
     344:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     348:	e12fff1e 	bx	lr

0000034c <gets>:
     34c:	e92d4800 	push	{fp, lr}
     350:	e28db004 	add	fp, sp, #4
     354:	e24dd018 	sub	sp, sp, #24
     358:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     35c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     360:	e3a03000 	mov	r3, #0
     364:	e50b3008 	str	r3, [fp, #-8]
     368:	ea000016 	b	3c8 <gets+0x7c>
     36c:	e24b300d 	sub	r3, fp, #13
     370:	e3a02001 	mov	r2, #1
     374:	e1a01003 	mov	r1, r3
     378:	e3a00000 	mov	r0, #0
     37c:	eb00009b 	bl	5f0 <read>
     380:	e50b000c 	str	r0, [fp, #-12]
     384:	e51b300c 	ldr	r3, [fp, #-12]
     388:	e3530000 	cmp	r3, #0
     38c:	da000013 	ble	3e0 <gets+0x94>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e2832001 	add	r2, r3, #1
     398:	e50b2008 	str	r2, [fp, #-8]
     39c:	e1a02003 	mov	r2, r3
     3a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3a4:	e0833002 	add	r3, r3, r2
     3a8:	e55b200d 	ldrb	r2, [fp, #-13]
     3ac:	e5c32000 	strb	r2, [r3]
     3b0:	e55b300d 	ldrb	r3, [fp, #-13]
     3b4:	e353000a 	cmp	r3, #10
     3b8:	0a000009 	beq	3e4 <gets+0x98>
     3bc:	e55b300d 	ldrb	r3, [fp, #-13]
     3c0:	e353000d 	cmp	r3, #13
     3c4:	0a000006 	beq	3e4 <gets+0x98>
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e2833001 	add	r3, r3, #1
     3d0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3d4:	e1520003 	cmp	r2, r3
     3d8:	caffffe3 	bgt	36c <gets+0x20>
     3dc:	ea000000 	b	3e4 <gets+0x98>
     3e0:	e1a00000 	nop			@ (mov r0, r0)
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3ec:	e0823003 	add	r3, r2, r3
     3f0:	e3a02000 	mov	r2, #0
     3f4:	e5c32000 	strb	r2, [r3]
     3f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3fc:	e1a00003 	mov	r0, r3
     400:	e24bd004 	sub	sp, fp, #4
     404:	e8bd8800 	pop	{fp, pc}

00000408 <stat>:
     408:	e92d4800 	push	{fp, lr}
     40c:	e28db004 	add	fp, sp, #4
     410:	e24dd010 	sub	sp, sp, #16
     414:	e50b0010 	str	r0, [fp, #-16]
     418:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     41c:	e3a01000 	mov	r1, #0
     420:	e51b0010 	ldr	r0, [fp, #-16]
     424:	eb00009e 	bl	6a4 <open>
     428:	e50b0008 	str	r0, [fp, #-8]
     42c:	e51b3008 	ldr	r3, [fp, #-8]
     430:	e3530000 	cmp	r3, #0
     434:	aa000001 	bge	440 <stat+0x38>
     438:	e3e03000 	mvn	r3, #0
     43c:	ea000006 	b	45c <stat+0x54>
     440:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     444:	e51b0008 	ldr	r0, [fp, #-8]
     448:	eb0000b0 	bl	710 <fstat>
     44c:	e50b000c 	str	r0, [fp, #-12]
     450:	e51b0008 	ldr	r0, [fp, #-8]
     454:	eb000077 	bl	638 <close>
     458:	e51b300c 	ldr	r3, [fp, #-12]
     45c:	e1a00003 	mov	r0, r3
     460:	e24bd004 	sub	sp, fp, #4
     464:	e8bd8800 	pop	{fp, pc}

00000468 <atoi>:
     468:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     46c:	e28db000 	add	fp, sp, #0
     470:	e24dd014 	sub	sp, sp, #20
     474:	e50b0010 	str	r0, [fp, #-16]
     478:	e3a03000 	mov	r3, #0
     47c:	e50b3008 	str	r3, [fp, #-8]
     480:	ea00000c 	b	4b8 <atoi+0x50>
     484:	e51b2008 	ldr	r2, [fp, #-8]
     488:	e1a03002 	mov	r3, r2
     48c:	e1a03103 	lsl	r3, r3, #2
     490:	e0833002 	add	r3, r3, r2
     494:	e1a03083 	lsl	r3, r3, #1
     498:	e1a01003 	mov	r1, r3
     49c:	e51b3010 	ldr	r3, [fp, #-16]
     4a0:	e2832001 	add	r2, r3, #1
     4a4:	e50b2010 	str	r2, [fp, #-16]
     4a8:	e5d33000 	ldrb	r3, [r3]
     4ac:	e0813003 	add	r3, r1, r3
     4b0:	e2433030 	sub	r3, r3, #48	@ 0x30
     4b4:	e50b3008 	str	r3, [fp, #-8]
     4b8:	e51b3010 	ldr	r3, [fp, #-16]
     4bc:	e5d33000 	ldrb	r3, [r3]
     4c0:	e353002f 	cmp	r3, #47	@ 0x2f
     4c4:	9a000003 	bls	4d8 <atoi+0x70>
     4c8:	e51b3010 	ldr	r3, [fp, #-16]
     4cc:	e5d33000 	ldrb	r3, [r3]
     4d0:	e3530039 	cmp	r3, #57	@ 0x39
     4d4:	9affffea 	bls	484 <atoi+0x1c>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e1a00003 	mov	r0, r3
     4e0:	e28bd000 	add	sp, fp, #0
     4e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4e8:	e12fff1e 	bx	lr

000004ec <memmove>:
     4ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4f0:	e28db000 	add	fp, sp, #0
     4f4:	e24dd01c 	sub	sp, sp, #28
     4f8:	e50b0010 	str	r0, [fp, #-16]
     4fc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     500:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     504:	e51b3010 	ldr	r3, [fp, #-16]
     508:	e50b3008 	str	r3, [fp, #-8]
     50c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     510:	e50b300c 	str	r3, [fp, #-12]
     514:	ea000007 	b	538 <memmove+0x4c>
     518:	e51b200c 	ldr	r2, [fp, #-12]
     51c:	e2823001 	add	r3, r2, #1
     520:	e50b300c 	str	r3, [fp, #-12]
     524:	e51b3008 	ldr	r3, [fp, #-8]
     528:	e2831001 	add	r1, r3, #1
     52c:	e50b1008 	str	r1, [fp, #-8]
     530:	e5d22000 	ldrb	r2, [r2]
     534:	e5c32000 	strb	r2, [r3]
     538:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     53c:	e2432001 	sub	r2, r3, #1
     540:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     544:	e3530000 	cmp	r3, #0
     548:	cafffff2 	bgt	518 <memmove+0x2c>
     54c:	e51b3010 	ldr	r3, [fp, #-16]
     550:	e1a00003 	mov	r0, r3
     554:	e28bd000 	add	sp, fp, #0
     558:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     55c:	e12fff1e 	bx	lr

00000560 <fork>:
     560:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     564:	e1a04003 	mov	r4, r3
     568:	e1a03002 	mov	r3, r2
     56c:	e1a02001 	mov	r2, r1
     570:	e1a01000 	mov	r1, r0
     574:	e3a00001 	mov	r0, #1
     578:	ef000000 	svc	0x00000000
     57c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     580:	e12fff1e 	bx	lr

00000584 <exit>:
     584:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     588:	e1a04003 	mov	r4, r3
     58c:	e1a03002 	mov	r3, r2
     590:	e1a02001 	mov	r2, r1
     594:	e1a01000 	mov	r1, r0
     598:	e3a00002 	mov	r0, #2
     59c:	ef000000 	svc	0x00000000
     5a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5a4:	e12fff1e 	bx	lr

000005a8 <wait>:
     5a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5ac:	e1a04003 	mov	r4, r3
     5b0:	e1a03002 	mov	r3, r2
     5b4:	e1a02001 	mov	r2, r1
     5b8:	e1a01000 	mov	r1, r0
     5bc:	e3a00003 	mov	r0, #3
     5c0:	ef000000 	svc	0x00000000
     5c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5c8:	e12fff1e 	bx	lr

000005cc <pipe>:
     5cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d0:	e1a04003 	mov	r4, r3
     5d4:	e1a03002 	mov	r3, r2
     5d8:	e1a02001 	mov	r2, r1
     5dc:	e1a01000 	mov	r1, r0
     5e0:	e3a00004 	mov	r0, #4
     5e4:	ef000000 	svc	0x00000000
     5e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5ec:	e12fff1e 	bx	lr

000005f0 <read>:
     5f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5f4:	e1a04003 	mov	r4, r3
     5f8:	e1a03002 	mov	r3, r2
     5fc:	e1a02001 	mov	r2, r1
     600:	e1a01000 	mov	r1, r0
     604:	e3a00005 	mov	r0, #5
     608:	ef000000 	svc	0x00000000
     60c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     610:	e12fff1e 	bx	lr

00000614 <write>:
     614:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     618:	e1a04003 	mov	r4, r3
     61c:	e1a03002 	mov	r3, r2
     620:	e1a02001 	mov	r2, r1
     624:	e1a01000 	mov	r1, r0
     628:	e3a00010 	mov	r0, #16
     62c:	ef000000 	svc	0x00000000
     630:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     634:	e12fff1e 	bx	lr

00000638 <close>:
     638:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     63c:	e1a04003 	mov	r4, r3
     640:	e1a03002 	mov	r3, r2
     644:	e1a02001 	mov	r2, r1
     648:	e1a01000 	mov	r1, r0
     64c:	e3a00015 	mov	r0, #21
     650:	ef000000 	svc	0x00000000
     654:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     658:	e12fff1e 	bx	lr

0000065c <kill>:
     65c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     660:	e1a04003 	mov	r4, r3
     664:	e1a03002 	mov	r3, r2
     668:	e1a02001 	mov	r2, r1
     66c:	e1a01000 	mov	r1, r0
     670:	e3a00006 	mov	r0, #6
     674:	ef000000 	svc	0x00000000
     678:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     67c:	e12fff1e 	bx	lr

00000680 <exec>:
     680:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     684:	e1a04003 	mov	r4, r3
     688:	e1a03002 	mov	r3, r2
     68c:	e1a02001 	mov	r2, r1
     690:	e1a01000 	mov	r1, r0
     694:	e3a00007 	mov	r0, #7
     698:	ef000000 	svc	0x00000000
     69c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a0:	e12fff1e 	bx	lr

000006a4 <open>:
     6a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a8:	e1a04003 	mov	r4, r3
     6ac:	e1a03002 	mov	r3, r2
     6b0:	e1a02001 	mov	r2, r1
     6b4:	e1a01000 	mov	r1, r0
     6b8:	e3a0000f 	mov	r0, #15
     6bc:	ef000000 	svc	0x00000000
     6c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <mknod>:
     6c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6cc:	e1a04003 	mov	r4, r3
     6d0:	e1a03002 	mov	r3, r2
     6d4:	e1a02001 	mov	r2, r1
     6d8:	e1a01000 	mov	r1, r0
     6dc:	e3a00011 	mov	r0, #17
     6e0:	ef000000 	svc	0x00000000
     6e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e8:	e12fff1e 	bx	lr

000006ec <unlink>:
     6ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f0:	e1a04003 	mov	r4, r3
     6f4:	e1a03002 	mov	r3, r2
     6f8:	e1a02001 	mov	r2, r1
     6fc:	e1a01000 	mov	r1, r0
     700:	e3a00012 	mov	r0, #18
     704:	ef000000 	svc	0x00000000
     708:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <fstat>:
     710:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     714:	e1a04003 	mov	r4, r3
     718:	e1a03002 	mov	r3, r2
     71c:	e1a02001 	mov	r2, r1
     720:	e1a01000 	mov	r1, r0
     724:	e3a00008 	mov	r0, #8
     728:	ef000000 	svc	0x00000000
     72c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <link>:
     734:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a00013 	mov	r0, #19
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <mkdir>:
     758:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a00014 	mov	r0, #20
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <chdir>:
     77c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a00009 	mov	r0, #9
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <dup>:
     7a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a0000a 	mov	r0, #10
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <getpid>:
     7c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a0000b 	mov	r0, #11
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <sbrk>:
     7e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a0000c 	mov	r0, #12
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <sleep>:
     80c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a0000d 	mov	r0, #13
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <uptime>:
     830:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a0000e 	mov	r0, #14
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <pgpte>:
     854:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a00016 	mov	r0, #22
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <kpt>:
     878:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a00017 	mov	r0, #23
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <ugetpid>:
     89c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a00018 	mov	r0, #24
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <putc>:
     8c0:	e92d4800 	push	{fp, lr}
     8c4:	e28db004 	add	fp, sp, #4
     8c8:	e24dd008 	sub	sp, sp, #8
     8cc:	e50b0008 	str	r0, [fp, #-8]
     8d0:	e1a03001 	mov	r3, r1
     8d4:	e54b3009 	strb	r3, [fp, #-9]
     8d8:	e24b3009 	sub	r3, fp, #9
     8dc:	e3a02001 	mov	r2, #1
     8e0:	e1a01003 	mov	r1, r3
     8e4:	e51b0008 	ldr	r0, [fp, #-8]
     8e8:	ebffff49 	bl	614 <write>
     8ec:	e1a00000 	nop			@ (mov r0, r0)
     8f0:	e24bd004 	sub	sp, fp, #4
     8f4:	e8bd8800 	pop	{fp, pc}

000008f8 <printint>:
     8f8:	e92d4800 	push	{fp, lr}
     8fc:	e28db004 	add	fp, sp, #4
     900:	e24dd030 	sub	sp, sp, #48	@ 0x30
     904:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     908:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     90c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     910:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     914:	e3a03000 	mov	r3, #0
     918:	e50b300c 	str	r3, [fp, #-12]
     91c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     920:	e3530000 	cmp	r3, #0
     924:	0a000008 	beq	94c <printint+0x54>
     928:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     92c:	e3530000 	cmp	r3, #0
     930:	aa000005 	bge	94c <printint+0x54>
     934:	e3a03001 	mov	r3, #1
     938:	e50b300c 	str	r3, [fp, #-12]
     93c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     940:	e2633000 	rsb	r3, r3, #0
     944:	e50b3010 	str	r3, [fp, #-16]
     948:	ea000001 	b	954 <printint+0x5c>
     94c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     950:	e50b3010 	str	r3, [fp, #-16]
     954:	e3a03000 	mov	r3, #0
     958:	e50b3008 	str	r3, [fp, #-8]
     95c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     960:	e51b3010 	ldr	r3, [fp, #-16]
     964:	e1a01002 	mov	r1, r2
     968:	e1a00003 	mov	r0, r3
     96c:	eb0001d5 	bl	10c8 <__aeabi_uidivmod>
     970:	e1a03001 	mov	r3, r1
     974:	e1a01003 	mov	r1, r3
     978:	e51b3008 	ldr	r3, [fp, #-8]
     97c:	e2832001 	add	r2, r3, #1
     980:	e50b2008 	str	r2, [fp, #-8]
     984:	e59f20a0 	ldr	r2, [pc, #160]	@ a2c <printint+0x134>
     988:	e7d22001 	ldrb	r2, [r2, r1]
     98c:	e2433004 	sub	r3, r3, #4
     990:	e083300b 	add	r3, r3, fp
     994:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     998:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     99c:	e1a01003 	mov	r1, r3
     9a0:	e51b0010 	ldr	r0, [fp, #-16]
     9a4:	eb00018a 	bl	fd4 <__udivsi3>
     9a8:	e1a03000 	mov	r3, r0
     9ac:	e50b3010 	str	r3, [fp, #-16]
     9b0:	e51b3010 	ldr	r3, [fp, #-16]
     9b4:	e3530000 	cmp	r3, #0
     9b8:	1affffe7 	bne	95c <printint+0x64>
     9bc:	e51b300c 	ldr	r3, [fp, #-12]
     9c0:	e3530000 	cmp	r3, #0
     9c4:	0a00000e 	beq	a04 <printint+0x10c>
     9c8:	e51b3008 	ldr	r3, [fp, #-8]
     9cc:	e2832001 	add	r2, r3, #1
     9d0:	e50b2008 	str	r2, [fp, #-8]
     9d4:	e2433004 	sub	r3, r3, #4
     9d8:	e083300b 	add	r3, r3, fp
     9dc:	e3a0202d 	mov	r2, #45	@ 0x2d
     9e0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9e4:	ea000006 	b	a04 <printint+0x10c>
     9e8:	e24b2020 	sub	r2, fp, #32
     9ec:	e51b3008 	ldr	r3, [fp, #-8]
     9f0:	e0823003 	add	r3, r2, r3
     9f4:	e5d33000 	ldrb	r3, [r3]
     9f8:	e1a01003 	mov	r1, r3
     9fc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a00:	ebffffae 	bl	8c0 <putc>
     a04:	e51b3008 	ldr	r3, [fp, #-8]
     a08:	e2433001 	sub	r3, r3, #1
     a0c:	e50b3008 	str	r3, [fp, #-8]
     a10:	e51b3008 	ldr	r3, [fp, #-8]
     a14:	e3530000 	cmp	r3, #0
     a18:	aafffff2 	bge	9e8 <printint+0xf0>
     a1c:	e1a00000 	nop			@ (mov r0, r0)
     a20:	e1a00000 	nop			@ (mov r0, r0)
     a24:	e24bd004 	sub	sp, fp, #4
     a28:	e8bd8800 	pop	{fp, pc}
     a2c:	00001108 	.word	0x00001108

00000a30 <printf>:
     a30:	e92d000e 	push	{r1, r2, r3}
     a34:	e92d4800 	push	{fp, lr}
     a38:	e28db004 	add	fp, sp, #4
     a3c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a40:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a44:	e3a03000 	mov	r3, #0
     a48:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a4c:	e28b3008 	add	r3, fp, #8
     a50:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a54:	e3a03000 	mov	r3, #0
     a58:	e50b3010 	str	r3, [fp, #-16]
     a5c:	ea000074 	b	c34 <printf+0x204>
     a60:	e59b2004 	ldr	r2, [fp, #4]
     a64:	e51b3010 	ldr	r3, [fp, #-16]
     a68:	e0823003 	add	r3, r2, r3
     a6c:	e5d33000 	ldrb	r3, [r3]
     a70:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a74:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a78:	e3530000 	cmp	r3, #0
     a7c:	1a00000b 	bne	ab0 <printf+0x80>
     a80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a84:	e3530025 	cmp	r3, #37	@ 0x25
     a88:	1a000002 	bne	a98 <printf+0x68>
     a8c:	e3a03025 	mov	r3, #37	@ 0x25
     a90:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a94:	ea000063 	b	c28 <printf+0x1f8>
     a98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a9c:	e6ef3073 	uxtb	r3, r3
     aa0:	e1a01003 	mov	r1, r3
     aa4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     aa8:	ebffff84 	bl	8c0 <putc>
     aac:	ea00005d 	b	c28 <printf+0x1f8>
     ab0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ab4:	e3530025 	cmp	r3, #37	@ 0x25
     ab8:	1a00005a 	bne	c28 <printf+0x1f8>
     abc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ac0:	e3530064 	cmp	r3, #100	@ 0x64
     ac4:	1a00000a 	bne	af4 <printf+0xc4>
     ac8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     acc:	e5933000 	ldr	r3, [r3]
     ad0:	e1a01003 	mov	r1, r3
     ad4:	e3a03001 	mov	r3, #1
     ad8:	e3a0200a 	mov	r2, #10
     adc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ae0:	ebffff84 	bl	8f8 <printint>
     ae4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ae8:	e2833004 	add	r3, r3, #4
     aec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     af0:	ea00004a 	b	c20 <printf+0x1f0>
     af4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     af8:	e3530078 	cmp	r3, #120	@ 0x78
     afc:	0a000002 	beq	b0c <printf+0xdc>
     b00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b04:	e3530070 	cmp	r3, #112	@ 0x70
     b08:	1a00000a 	bne	b38 <printf+0x108>
     b0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b10:	e5933000 	ldr	r3, [r3]
     b14:	e1a01003 	mov	r1, r3
     b18:	e3a03000 	mov	r3, #0
     b1c:	e3a02010 	mov	r2, #16
     b20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b24:	ebffff73 	bl	8f8 <printint>
     b28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b2c:	e2833004 	add	r3, r3, #4
     b30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b34:	ea000039 	b	c20 <printf+0x1f0>
     b38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b3c:	e3530073 	cmp	r3, #115	@ 0x73
     b40:	1a000018 	bne	ba8 <printf+0x178>
     b44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b48:	e5933000 	ldr	r3, [r3]
     b4c:	e50b300c 	str	r3, [fp, #-12]
     b50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b54:	e2833004 	add	r3, r3, #4
     b58:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b5c:	e51b300c 	ldr	r3, [fp, #-12]
     b60:	e3530000 	cmp	r3, #0
     b64:	1a00000a 	bne	b94 <printf+0x164>
     b68:	e59f30f4 	ldr	r3, [pc, #244]	@ c64 <printf+0x234>
     b6c:	e50b300c 	str	r3, [fp, #-12]
     b70:	ea000007 	b	b94 <printf+0x164>
     b74:	e51b300c 	ldr	r3, [fp, #-12]
     b78:	e5d33000 	ldrb	r3, [r3]
     b7c:	e1a01003 	mov	r1, r3
     b80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b84:	ebffff4d 	bl	8c0 <putc>
     b88:	e51b300c 	ldr	r3, [fp, #-12]
     b8c:	e2833001 	add	r3, r3, #1
     b90:	e50b300c 	str	r3, [fp, #-12]
     b94:	e51b300c 	ldr	r3, [fp, #-12]
     b98:	e5d33000 	ldrb	r3, [r3]
     b9c:	e3530000 	cmp	r3, #0
     ba0:	1afffff3 	bne	b74 <printf+0x144>
     ba4:	ea00001d 	b	c20 <printf+0x1f0>
     ba8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bac:	e3530063 	cmp	r3, #99	@ 0x63
     bb0:	1a000009 	bne	bdc <printf+0x1ac>
     bb4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bb8:	e5933000 	ldr	r3, [r3]
     bbc:	e6ef3073 	uxtb	r3, r3
     bc0:	e1a01003 	mov	r1, r3
     bc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bc8:	ebffff3c 	bl	8c0 <putc>
     bcc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bd0:	e2833004 	add	r3, r3, #4
     bd4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bd8:	ea000010 	b	c20 <printf+0x1f0>
     bdc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     be0:	e3530025 	cmp	r3, #37	@ 0x25
     be4:	1a000005 	bne	c00 <printf+0x1d0>
     be8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bec:	e6ef3073 	uxtb	r3, r3
     bf0:	e1a01003 	mov	r1, r3
     bf4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bf8:	ebffff30 	bl	8c0 <putc>
     bfc:	ea000007 	b	c20 <printf+0x1f0>
     c00:	e3a01025 	mov	r1, #37	@ 0x25
     c04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c08:	ebffff2c 	bl	8c0 <putc>
     c0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c10:	e6ef3073 	uxtb	r3, r3
     c14:	e1a01003 	mov	r1, r3
     c18:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c1c:	ebffff27 	bl	8c0 <putc>
     c20:	e3a03000 	mov	r3, #0
     c24:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c28:	e51b3010 	ldr	r3, [fp, #-16]
     c2c:	e2833001 	add	r3, r3, #1
     c30:	e50b3010 	str	r3, [fp, #-16]
     c34:	e59b2004 	ldr	r2, [fp, #4]
     c38:	e51b3010 	ldr	r3, [fp, #-16]
     c3c:	e0823003 	add	r3, r2, r3
     c40:	e5d33000 	ldrb	r3, [r3]
     c44:	e3530000 	cmp	r3, #0
     c48:	1affff84 	bne	a60 <printf+0x30>
     c4c:	e1a00000 	nop			@ (mov r0, r0)
     c50:	e1a00000 	nop			@ (mov r0, r0)
     c54:	e24bd004 	sub	sp, fp, #4
     c58:	e8bd4800 	pop	{fp, lr}
     c5c:	e28dd00c 	add	sp, sp, #12
     c60:	e12fff1e 	bx	lr
     c64:	00001100 	.word	0x00001100

00000c68 <free>:
     c68:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c6c:	e28db000 	add	fp, sp, #0
     c70:	e24dd014 	sub	sp, sp, #20
     c74:	e50b0010 	str	r0, [fp, #-16]
     c78:	e51b3010 	ldr	r3, [fp, #-16]
     c7c:	e2433008 	sub	r3, r3, #8
     c80:	e50b300c 	str	r3, [fp, #-12]
     c84:	e59f3154 	ldr	r3, [pc, #340]	@ de0 <free+0x178>
     c88:	e5933000 	ldr	r3, [r3]
     c8c:	e50b3008 	str	r3, [fp, #-8]
     c90:	ea000010 	b	cd8 <free+0x70>
     c94:	e51b3008 	ldr	r3, [fp, #-8]
     c98:	e5933000 	ldr	r3, [r3]
     c9c:	e51b2008 	ldr	r2, [fp, #-8]
     ca0:	e1520003 	cmp	r2, r3
     ca4:	3a000008 	bcc	ccc <free+0x64>
     ca8:	e51b200c 	ldr	r2, [fp, #-12]
     cac:	e51b3008 	ldr	r3, [fp, #-8]
     cb0:	e1520003 	cmp	r2, r3
     cb4:	8a000010 	bhi	cfc <free+0x94>
     cb8:	e51b3008 	ldr	r3, [fp, #-8]
     cbc:	e5933000 	ldr	r3, [r3]
     cc0:	e51b200c 	ldr	r2, [fp, #-12]
     cc4:	e1520003 	cmp	r2, r3
     cc8:	3a00000b 	bcc	cfc <free+0x94>
     ccc:	e51b3008 	ldr	r3, [fp, #-8]
     cd0:	e5933000 	ldr	r3, [r3]
     cd4:	e50b3008 	str	r3, [fp, #-8]
     cd8:	e51b200c 	ldr	r2, [fp, #-12]
     cdc:	e51b3008 	ldr	r3, [fp, #-8]
     ce0:	e1520003 	cmp	r2, r3
     ce4:	9affffea 	bls	c94 <free+0x2c>
     ce8:	e51b3008 	ldr	r3, [fp, #-8]
     cec:	e5933000 	ldr	r3, [r3]
     cf0:	e51b200c 	ldr	r2, [fp, #-12]
     cf4:	e1520003 	cmp	r2, r3
     cf8:	2affffe5 	bcs	c94 <free+0x2c>
     cfc:	e51b300c 	ldr	r3, [fp, #-12]
     d00:	e5933004 	ldr	r3, [r3, #4]
     d04:	e1a03183 	lsl	r3, r3, #3
     d08:	e51b200c 	ldr	r2, [fp, #-12]
     d0c:	e0822003 	add	r2, r2, r3
     d10:	e51b3008 	ldr	r3, [fp, #-8]
     d14:	e5933000 	ldr	r3, [r3]
     d18:	e1520003 	cmp	r2, r3
     d1c:	1a00000d 	bne	d58 <free+0xf0>
     d20:	e51b300c 	ldr	r3, [fp, #-12]
     d24:	e5932004 	ldr	r2, [r3, #4]
     d28:	e51b3008 	ldr	r3, [fp, #-8]
     d2c:	e5933000 	ldr	r3, [r3]
     d30:	e5933004 	ldr	r3, [r3, #4]
     d34:	e0822003 	add	r2, r2, r3
     d38:	e51b300c 	ldr	r3, [fp, #-12]
     d3c:	e5832004 	str	r2, [r3, #4]
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e5933000 	ldr	r3, [r3]
     d48:	e5932000 	ldr	r2, [r3]
     d4c:	e51b300c 	ldr	r3, [fp, #-12]
     d50:	e5832000 	str	r2, [r3]
     d54:	ea000003 	b	d68 <free+0x100>
     d58:	e51b3008 	ldr	r3, [fp, #-8]
     d5c:	e5932000 	ldr	r2, [r3]
     d60:	e51b300c 	ldr	r3, [fp, #-12]
     d64:	e5832000 	str	r2, [r3]
     d68:	e51b3008 	ldr	r3, [fp, #-8]
     d6c:	e5933004 	ldr	r3, [r3, #4]
     d70:	e1a03183 	lsl	r3, r3, #3
     d74:	e51b2008 	ldr	r2, [fp, #-8]
     d78:	e0823003 	add	r3, r2, r3
     d7c:	e51b200c 	ldr	r2, [fp, #-12]
     d80:	e1520003 	cmp	r2, r3
     d84:	1a00000b 	bne	db8 <free+0x150>
     d88:	e51b3008 	ldr	r3, [fp, #-8]
     d8c:	e5932004 	ldr	r2, [r3, #4]
     d90:	e51b300c 	ldr	r3, [fp, #-12]
     d94:	e5933004 	ldr	r3, [r3, #4]
     d98:	e0822003 	add	r2, r2, r3
     d9c:	e51b3008 	ldr	r3, [fp, #-8]
     da0:	e5832004 	str	r2, [r3, #4]
     da4:	e51b300c 	ldr	r3, [fp, #-12]
     da8:	e5932000 	ldr	r2, [r3]
     dac:	e51b3008 	ldr	r3, [fp, #-8]
     db0:	e5832000 	str	r2, [r3]
     db4:	ea000002 	b	dc4 <free+0x15c>
     db8:	e51b3008 	ldr	r3, [fp, #-8]
     dbc:	e51b200c 	ldr	r2, [fp, #-12]
     dc0:	e5832000 	str	r2, [r3]
     dc4:	e59f2014 	ldr	r2, [pc, #20]	@ de0 <free+0x178>
     dc8:	e51b3008 	ldr	r3, [fp, #-8]
     dcc:	e5823000 	str	r3, [r2]
     dd0:	e1a00000 	nop			@ (mov r0, r0)
     dd4:	e28bd000 	add	sp, fp, #0
     dd8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     ddc:	e12fff1e 	bx	lr
     de0:	00001124 	.word	0x00001124

00000de4 <morecore>:
     de4:	e92d4800 	push	{fp, lr}
     de8:	e28db004 	add	fp, sp, #4
     dec:	e24dd010 	sub	sp, sp, #16
     df0:	e50b0010 	str	r0, [fp, #-16]
     df4:	e51b3010 	ldr	r3, [fp, #-16]
     df8:	e3530a01 	cmp	r3, #4096	@ 0x1000
     dfc:	2a000001 	bcs	e08 <morecore+0x24>
     e00:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e04:	e50b3010 	str	r3, [fp, #-16]
     e08:	e51b3010 	ldr	r3, [fp, #-16]
     e0c:	e1a03183 	lsl	r3, r3, #3
     e10:	e1a00003 	mov	r0, r3
     e14:	ebfffe73 	bl	7e8 <sbrk>
     e18:	e50b0008 	str	r0, [fp, #-8]
     e1c:	e51b3008 	ldr	r3, [fp, #-8]
     e20:	e3730001 	cmn	r3, #1
     e24:	1a000001 	bne	e30 <morecore+0x4c>
     e28:	e3a03000 	mov	r3, #0
     e2c:	ea00000a 	b	e5c <morecore+0x78>
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e50b300c 	str	r3, [fp, #-12]
     e38:	e51b300c 	ldr	r3, [fp, #-12]
     e3c:	e51b2010 	ldr	r2, [fp, #-16]
     e40:	e5832004 	str	r2, [r3, #4]
     e44:	e51b300c 	ldr	r3, [fp, #-12]
     e48:	e2833008 	add	r3, r3, #8
     e4c:	e1a00003 	mov	r0, r3
     e50:	ebffff84 	bl	c68 <free>
     e54:	e59f300c 	ldr	r3, [pc, #12]	@ e68 <morecore+0x84>
     e58:	e5933000 	ldr	r3, [r3]
     e5c:	e1a00003 	mov	r0, r3
     e60:	e24bd004 	sub	sp, fp, #4
     e64:	e8bd8800 	pop	{fp, pc}
     e68:	00001124 	.word	0x00001124

00000e6c <malloc>:
     e6c:	e92d4800 	push	{fp, lr}
     e70:	e28db004 	add	fp, sp, #4
     e74:	e24dd018 	sub	sp, sp, #24
     e78:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e80:	e2833007 	add	r3, r3, #7
     e84:	e1a031a3 	lsr	r3, r3, #3
     e88:	e2833001 	add	r3, r3, #1
     e8c:	e50b3010 	str	r3, [fp, #-16]
     e90:	e59f3134 	ldr	r3, [pc, #308]	@ fcc <malloc+0x160>
     e94:	e5933000 	ldr	r3, [r3]
     e98:	e50b300c 	str	r3, [fp, #-12]
     e9c:	e51b300c 	ldr	r3, [fp, #-12]
     ea0:	e3530000 	cmp	r3, #0
     ea4:	1a00000b 	bne	ed8 <malloc+0x6c>
     ea8:	e59f3120 	ldr	r3, [pc, #288]	@ fd0 <malloc+0x164>
     eac:	e50b300c 	str	r3, [fp, #-12]
     eb0:	e59f2114 	ldr	r2, [pc, #276]	@ fcc <malloc+0x160>
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e5823000 	str	r3, [r2]
     ebc:	e59f3108 	ldr	r3, [pc, #264]	@ fcc <malloc+0x160>
     ec0:	e5933000 	ldr	r3, [r3]
     ec4:	e59f2104 	ldr	r2, [pc, #260]	@ fd0 <malloc+0x164>
     ec8:	e5823000 	str	r3, [r2]
     ecc:	e59f30fc 	ldr	r3, [pc, #252]	@ fd0 <malloc+0x164>
     ed0:	e3a02000 	mov	r2, #0
     ed4:	e5832004 	str	r2, [r3, #4]
     ed8:	e51b300c 	ldr	r3, [fp, #-12]
     edc:	e5933000 	ldr	r3, [r3]
     ee0:	e50b3008 	str	r3, [fp, #-8]
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e5933004 	ldr	r3, [r3, #4]
     eec:	e51b2010 	ldr	r2, [fp, #-16]
     ef0:	e1520003 	cmp	r2, r3
     ef4:	8a00001e 	bhi	f74 <malloc+0x108>
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e5933004 	ldr	r3, [r3, #4]
     f00:	e51b2010 	ldr	r2, [fp, #-16]
     f04:	e1520003 	cmp	r2, r3
     f08:	1a000004 	bne	f20 <malloc+0xb4>
     f0c:	e51b3008 	ldr	r3, [fp, #-8]
     f10:	e5932000 	ldr	r2, [r3]
     f14:	e51b300c 	ldr	r3, [fp, #-12]
     f18:	e5832000 	str	r2, [r3]
     f1c:	ea00000e 	b	f5c <malloc+0xf0>
     f20:	e51b3008 	ldr	r3, [fp, #-8]
     f24:	e5932004 	ldr	r2, [r3, #4]
     f28:	e51b3010 	ldr	r3, [fp, #-16]
     f2c:	e0422003 	sub	r2, r2, r3
     f30:	e51b3008 	ldr	r3, [fp, #-8]
     f34:	e5832004 	str	r2, [r3, #4]
     f38:	e51b3008 	ldr	r3, [fp, #-8]
     f3c:	e5933004 	ldr	r3, [r3, #4]
     f40:	e1a03183 	lsl	r3, r3, #3
     f44:	e51b2008 	ldr	r2, [fp, #-8]
     f48:	e0823003 	add	r3, r2, r3
     f4c:	e50b3008 	str	r3, [fp, #-8]
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e51b2010 	ldr	r2, [fp, #-16]
     f58:	e5832004 	str	r2, [r3, #4]
     f5c:	e59f2068 	ldr	r2, [pc, #104]	@ fcc <malloc+0x160>
     f60:	e51b300c 	ldr	r3, [fp, #-12]
     f64:	e5823000 	str	r3, [r2]
     f68:	e51b3008 	ldr	r3, [fp, #-8]
     f6c:	e2833008 	add	r3, r3, #8
     f70:	ea000012 	b	fc0 <malloc+0x154>
     f74:	e59f3050 	ldr	r3, [pc, #80]	@ fcc <malloc+0x160>
     f78:	e5933000 	ldr	r3, [r3]
     f7c:	e51b2008 	ldr	r2, [fp, #-8]
     f80:	e1520003 	cmp	r2, r3
     f84:	1a000007 	bne	fa8 <malloc+0x13c>
     f88:	e51b0010 	ldr	r0, [fp, #-16]
     f8c:	ebffff94 	bl	de4 <morecore>
     f90:	e50b0008 	str	r0, [fp, #-8]
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e3530000 	cmp	r3, #0
     f9c:	1a000001 	bne	fa8 <malloc+0x13c>
     fa0:	e3a03000 	mov	r3, #0
     fa4:	ea000005 	b	fc0 <malloc+0x154>
     fa8:	e51b3008 	ldr	r3, [fp, #-8]
     fac:	e50b300c 	str	r3, [fp, #-12]
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e5933000 	ldr	r3, [r3]
     fb8:	e50b3008 	str	r3, [fp, #-8]
     fbc:	eaffffc8 	b	ee4 <malloc+0x78>
     fc0:	e1a00003 	mov	r0, r3
     fc4:	e24bd004 	sub	sp, fp, #4
     fc8:	e8bd8800 	pop	{fp, pc}
     fcc:	00001124 	.word	0x00001124
     fd0:	0000111c 	.word	0x0000111c

00000fd4 <__udivsi3>:
     fd4:	e2512001 	subs	r2, r1, #1
     fd8:	012fff1e 	bxeq	lr
     fdc:	3a000036 	bcc	10bc <__udivsi3+0xe8>
     fe0:	e1500001 	cmp	r0, r1
     fe4:	9a000022 	bls	1074 <__udivsi3+0xa0>
     fe8:	e1110002 	tst	r1, r2
     fec:	0a000023 	beq	1080 <__udivsi3+0xac>
     ff0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     ff4:	01a01181 	lsleq	r1, r1, #3
     ff8:	03a03008 	moveq	r3, #8
     ffc:	13a03001 	movne	r3, #1
    1000:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1004:	31510000 	cmpcc	r1, r0
    1008:	31a01201 	lslcc	r1, r1, #4
    100c:	31a03203 	lslcc	r3, r3, #4
    1010:	3afffffa 	bcc	1000 <__udivsi3+0x2c>
    1014:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1018:	31510000 	cmpcc	r1, r0
    101c:	31a01081 	lslcc	r1, r1, #1
    1020:	31a03083 	lslcc	r3, r3, #1
    1024:	3afffffa 	bcc	1014 <__udivsi3+0x40>
    1028:	e3a02000 	mov	r2, #0
    102c:	e1500001 	cmp	r0, r1
    1030:	20400001 	subcs	r0, r0, r1
    1034:	21822003 	orrcs	r2, r2, r3
    1038:	e15000a1 	cmp	r0, r1, lsr #1
    103c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1040:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1044:	e1500121 	cmp	r0, r1, lsr #2
    1048:	20400121 	subcs	r0, r0, r1, lsr #2
    104c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1050:	e15001a1 	cmp	r0, r1, lsr #3
    1054:	204001a1 	subcs	r0, r0, r1, lsr #3
    1058:	218221a3 	orrcs	r2, r2, r3, lsr #3
    105c:	e3500000 	cmp	r0, #0
    1060:	11b03223 	lsrsne	r3, r3, #4
    1064:	11a01221 	lsrne	r1, r1, #4
    1068:	1affffef 	bne	102c <__udivsi3+0x58>
    106c:	e1a00002 	mov	r0, r2
    1070:	e12fff1e 	bx	lr
    1074:	03a00001 	moveq	r0, #1
    1078:	13a00000 	movne	r0, #0
    107c:	e12fff1e 	bx	lr
    1080:	e3510801 	cmp	r1, #65536	@ 0x10000
    1084:	21a01821 	lsrcs	r1, r1, #16
    1088:	23a02010 	movcs	r2, #16
    108c:	33a02000 	movcc	r2, #0
    1090:	e3510c01 	cmp	r1, #256	@ 0x100
    1094:	21a01421 	lsrcs	r1, r1, #8
    1098:	22822008 	addcs	r2, r2, #8
    109c:	e3510010 	cmp	r1, #16
    10a0:	21a01221 	lsrcs	r1, r1, #4
    10a4:	22822004 	addcs	r2, r2, #4
    10a8:	e3510004 	cmp	r1, #4
    10ac:	82822003 	addhi	r2, r2, #3
    10b0:	908220a1 	addls	r2, r2, r1, lsr #1
    10b4:	e1a00230 	lsr	r0, r0, r2
    10b8:	e12fff1e 	bx	lr
    10bc:	e3500000 	cmp	r0, #0
    10c0:	13e00000 	mvnne	r0, #0
    10c4:	ea000007 	b	10e8 <__aeabi_idiv0>

000010c8 <__aeabi_uidivmod>:
    10c8:	e3510000 	cmp	r1, #0
    10cc:	0afffffa 	beq	10bc <__udivsi3+0xe8>
    10d0:	e92d4003 	push	{r0, r1, lr}
    10d4:	ebffffbe 	bl	fd4 <__udivsi3>
    10d8:	e8bd4006 	pop	{r1, r2, lr}
    10dc:	e0030092 	mul	r3, r2, r0
    10e0:	e0411003 	sub	r1, r1, r3
    10e4:	e12fff1e 	bx	lr

000010e8 <__aeabi_idiv0>:
    10e8:	e12fff1e 	bx	lr
