
_echo:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e3a03001 	mov	r3, #1
      18:	e50b3008 	str	r3, [fp, #-8]
      1c:	ea000013 	b	70 <main+0x70>
      20:	e51b3008 	ldr	r3, [fp, #-8]
      24:	e1a03103 	lsl	r3, r3, #2
      28:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      2c:	e0823003 	add	r3, r2, r3
      30:	e5931000 	ldr	r1, [r3]
      34:	e51b3008 	ldr	r3, [fp, #-8]
      38:	e2833001 	add	r3, r3, #1
      3c:	e51b2010 	ldr	r2, [fp, #-16]
      40:	e1520003 	cmp	r2, r3
      44:	da000001 	ble	50 <main+0x50>
      48:	e59f3034 	ldr	r3, [pc, #52]	@ 84 <main+0x84>
      4c:	ea000000 	b	54 <main+0x54>
      50:	e59f3030 	ldr	r3, [pc, #48]	@ 88 <main+0x88>
      54:	e1a02001 	mov	r2, r1
      58:	e59f102c 	ldr	r1, [pc, #44]	@ 8c <main+0x8c>
      5c:	e3a00001 	mov	r0, #1
      60:	eb000274 	bl	a38 <printf>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffe7 	blt	20 <main+0x20>
      80:	eb000141 	bl	58c <exit>
      84:	000010f4 	.word	0x000010f4
      88:	000010f8 	.word	0x000010f8
      8c:	000010fc 	.word	0x000010fc

00000090 <strcpy>:
      90:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      94:	e28db000 	add	fp, sp, #0
      98:	e24dd014 	sub	sp, sp, #20
      9c:	e50b0010 	str	r0, [fp, #-16]
      a0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      a4:	e51b3010 	ldr	r3, [fp, #-16]
      a8:	e50b3008 	str	r3, [fp, #-8]
      ac:	e1a00000 	nop			@ (mov r0, r0)
      b0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      b4:	e2823001 	add	r3, r2, #1
      b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      bc:	e51b3010 	ldr	r3, [fp, #-16]
      c0:	e2831001 	add	r1, r3, #1
      c4:	e50b1010 	str	r1, [fp, #-16]
      c8:	e5d22000 	ldrb	r2, [r2]
      cc:	e5c32000 	strb	r2, [r3]
      d0:	e5d33000 	ldrb	r3, [r3]
      d4:	e3530000 	cmp	r3, #0
      d8:	1afffff4 	bne	b0 <strcpy+0x20>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e1a00003 	mov	r0, r3
      e4:	e28bd000 	add	sp, fp, #0
      e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      ec:	e12fff1e 	bx	lr

000000f0 <strcmp>:
      f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      f4:	e28db000 	add	fp, sp, #0
      f8:	e24dd00c 	sub	sp, sp, #12
      fc:	e50b0008 	str	r0, [fp, #-8]
     100:	e50b100c 	str	r1, [fp, #-12]
     104:	ea000005 	b	120 <strcmp+0x30>
     108:	e51b3008 	ldr	r3, [fp, #-8]
     10c:	e2833001 	add	r3, r3, #1
     110:	e50b3008 	str	r3, [fp, #-8]
     114:	e51b300c 	ldr	r3, [fp, #-12]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b300c 	str	r3, [fp, #-12]
     120:	e51b3008 	ldr	r3, [fp, #-8]
     124:	e5d33000 	ldrb	r3, [r3]
     128:	e3530000 	cmp	r3, #0
     12c:	0a000005 	beq	148 <strcmp+0x58>
     130:	e51b3008 	ldr	r3, [fp, #-8]
     134:	e5d32000 	ldrb	r2, [r3]
     138:	e51b300c 	ldr	r3, [fp, #-12]
     13c:	e5d33000 	ldrb	r3, [r3]
     140:	e1520003 	cmp	r2, r3
     144:	0affffef 	beq	108 <strcmp+0x18>
     148:	e51b3008 	ldr	r3, [fp, #-8]
     14c:	e5d33000 	ldrb	r3, [r3]
     150:	e1a02003 	mov	r2, r3
     154:	e51b300c 	ldr	r3, [fp, #-12]
     158:	e5d33000 	ldrb	r3, [r3]
     15c:	e0423003 	sub	r3, r2, r3
     160:	e1a00003 	mov	r0, r3
     164:	e28bd000 	add	sp, fp, #0
     168:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     16c:	e12fff1e 	bx	lr

00000170 <strlen>:
     170:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     174:	e28db000 	add	fp, sp, #0
     178:	e24dd014 	sub	sp, sp, #20
     17c:	e50b0010 	str	r0, [fp, #-16]
     180:	e3a03000 	mov	r3, #0
     184:	e50b3008 	str	r3, [fp, #-8]
     188:	ea000002 	b	198 <strlen+0x28>
     18c:	e51b3008 	ldr	r3, [fp, #-8]
     190:	e2833001 	add	r3, r3, #1
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	e51b3008 	ldr	r3, [fp, #-8]
     19c:	e51b2010 	ldr	r2, [fp, #-16]
     1a0:	e0823003 	add	r3, r2, r3
     1a4:	e5d33000 	ldrb	r3, [r3]
     1a8:	e3530000 	cmp	r3, #0
     1ac:	1afffff6 	bne	18c <strlen+0x1c>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e1a00003 	mov	r0, r3
     1b8:	e28bd000 	add	sp, fp, #0
     1bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1c0:	e12fff1e 	bx	lr

000001c4 <memset>:
     1c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c8:	e28db000 	add	fp, sp, #0
     1cc:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1d0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1d4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1d8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1e0:	e50b3008 	str	r3, [fp, #-8]
     1e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1e8:	e54b300d 	strb	r3, [fp, #-13]
     1ec:	e55b200d 	ldrb	r2, [fp, #-13]
     1f0:	e1a03002 	mov	r3, r2
     1f4:	e1a03403 	lsl	r3, r3, #8
     1f8:	e0833002 	add	r3, r3, r2
     1fc:	e1a03803 	lsl	r3, r3, #16
     200:	e1a02003 	mov	r2, r3
     204:	e55b300d 	ldrb	r3, [fp, #-13]
     208:	e1a03403 	lsl	r3, r3, #8
     20c:	e1822003 	orr	r2, r2, r3
     210:	e55b300d 	ldrb	r3, [fp, #-13]
     214:	e1823003 	orr	r3, r2, r3
     218:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     21c:	ea000008 	b	244 <memset+0x80>
     220:	e51b3008 	ldr	r3, [fp, #-8]
     224:	e55b200d 	ldrb	r2, [fp, #-13]
     228:	e5c32000 	strb	r2, [r3]
     22c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     230:	e2433001 	sub	r3, r3, #1
     234:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     238:	e51b3008 	ldr	r3, [fp, #-8]
     23c:	e2833001 	add	r3, r3, #1
     240:	e50b3008 	str	r3, [fp, #-8]
     244:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     248:	e3530000 	cmp	r3, #0
     24c:	0a000003 	beq	260 <memset+0x9c>
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e2033003 	and	r3, r3, #3
     258:	e3530000 	cmp	r3, #0
     25c:	1affffef 	bne	220 <memset+0x5c>
     260:	e51b3008 	ldr	r3, [fp, #-8]
     264:	e50b300c 	str	r3, [fp, #-12]
     268:	ea000008 	b	290 <memset+0xcc>
     26c:	e51b300c 	ldr	r3, [fp, #-12]
     270:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     274:	e5832000 	str	r2, [r3]
     278:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     27c:	e2433004 	sub	r3, r3, #4
     280:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     284:	e51b300c 	ldr	r3, [fp, #-12]
     288:	e2833004 	add	r3, r3, #4
     28c:	e50b300c 	str	r3, [fp, #-12]
     290:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     294:	e3530003 	cmp	r3, #3
     298:	8afffff3 	bhi	26c <memset+0xa8>
     29c:	e51b300c 	ldr	r3, [fp, #-12]
     2a0:	e50b3008 	str	r3, [fp, #-8]
     2a4:	ea000008 	b	2cc <memset+0x108>
     2a8:	e51b3008 	ldr	r3, [fp, #-8]
     2ac:	e55b200d 	ldrb	r2, [fp, #-13]
     2b0:	e5c32000 	strb	r2, [r3]
     2b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e2433001 	sub	r3, r3, #1
     2bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e2833001 	add	r3, r3, #1
     2c8:	e50b3008 	str	r3, [fp, #-8]
     2cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2d0:	e3530000 	cmp	r3, #0
     2d4:	1afffff3 	bne	2a8 <memset+0xe4>
     2d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2dc:	e1a00003 	mov	r0, r3
     2e0:	e28bd000 	add	sp, fp, #0
     2e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e8:	e12fff1e 	bx	lr

000002ec <strchr>:
     2ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2f0:	e28db000 	add	fp, sp, #0
     2f4:	e24dd00c 	sub	sp, sp, #12
     2f8:	e50b0008 	str	r0, [fp, #-8]
     2fc:	e1a03001 	mov	r3, r1
     300:	e54b3009 	strb	r3, [fp, #-9]
     304:	ea000009 	b	330 <strchr+0x44>
     308:	e51b3008 	ldr	r3, [fp, #-8]
     30c:	e5d33000 	ldrb	r3, [r3]
     310:	e55b2009 	ldrb	r2, [fp, #-9]
     314:	e1520003 	cmp	r2, r3
     318:	1a000001 	bne	324 <strchr+0x38>
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	ea000007 	b	344 <strchr+0x58>
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e2833001 	add	r3, r3, #1
     32c:	e50b3008 	str	r3, [fp, #-8]
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e5d33000 	ldrb	r3, [r3]
     338:	e3530000 	cmp	r3, #0
     33c:	1afffff1 	bne	308 <strchr+0x1c>
     340:	e3a03000 	mov	r3, #0
     344:	e1a00003 	mov	r0, r3
     348:	e28bd000 	add	sp, fp, #0
     34c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     350:	e12fff1e 	bx	lr

00000354 <gets>:
     354:	e92d4800 	push	{fp, lr}
     358:	e28db004 	add	fp, sp, #4
     35c:	e24dd018 	sub	sp, sp, #24
     360:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     364:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     368:	e3a03000 	mov	r3, #0
     36c:	e50b3008 	str	r3, [fp, #-8]
     370:	ea000016 	b	3d0 <gets+0x7c>
     374:	e24b300d 	sub	r3, fp, #13
     378:	e3a02001 	mov	r2, #1
     37c:	e1a01003 	mov	r1, r3
     380:	e3a00000 	mov	r0, #0
     384:	eb00009b 	bl	5f8 <read>
     388:	e50b000c 	str	r0, [fp, #-12]
     38c:	e51b300c 	ldr	r3, [fp, #-12]
     390:	e3530000 	cmp	r3, #0
     394:	da000013 	ble	3e8 <gets+0x94>
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e2832001 	add	r2, r3, #1
     3a0:	e50b2008 	str	r2, [fp, #-8]
     3a4:	e1a02003 	mov	r2, r3
     3a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3ac:	e0833002 	add	r3, r3, r2
     3b0:	e55b200d 	ldrb	r2, [fp, #-13]
     3b4:	e5c32000 	strb	r2, [r3]
     3b8:	e55b300d 	ldrb	r3, [fp, #-13]
     3bc:	e353000a 	cmp	r3, #10
     3c0:	0a000009 	beq	3ec <gets+0x98>
     3c4:	e55b300d 	ldrb	r3, [fp, #-13]
     3c8:	e353000d 	cmp	r3, #13
     3cc:	0a000006 	beq	3ec <gets+0x98>
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	e2833001 	add	r3, r3, #1
     3d8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3dc:	e1520003 	cmp	r2, r3
     3e0:	caffffe3 	bgt	374 <gets+0x20>
     3e4:	ea000000 	b	3ec <gets+0x98>
     3e8:	e1a00000 	nop			@ (mov r0, r0)
     3ec:	e51b3008 	ldr	r3, [fp, #-8]
     3f0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3f4:	e0823003 	add	r3, r2, r3
     3f8:	e3a02000 	mov	r2, #0
     3fc:	e5c32000 	strb	r2, [r3]
     400:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     404:	e1a00003 	mov	r0, r3
     408:	e24bd004 	sub	sp, fp, #4
     40c:	e8bd8800 	pop	{fp, pc}

00000410 <stat>:
     410:	e92d4800 	push	{fp, lr}
     414:	e28db004 	add	fp, sp, #4
     418:	e24dd010 	sub	sp, sp, #16
     41c:	e50b0010 	str	r0, [fp, #-16]
     420:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     424:	e3a01000 	mov	r1, #0
     428:	e51b0010 	ldr	r0, [fp, #-16]
     42c:	eb00009e 	bl	6ac <open>
     430:	e50b0008 	str	r0, [fp, #-8]
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e3530000 	cmp	r3, #0
     43c:	aa000001 	bge	448 <stat+0x38>
     440:	e3e03000 	mvn	r3, #0
     444:	ea000006 	b	464 <stat+0x54>
     448:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     44c:	e51b0008 	ldr	r0, [fp, #-8]
     450:	eb0000b0 	bl	718 <fstat>
     454:	e50b000c 	str	r0, [fp, #-12]
     458:	e51b0008 	ldr	r0, [fp, #-8]
     45c:	eb000077 	bl	640 <close>
     460:	e51b300c 	ldr	r3, [fp, #-12]
     464:	e1a00003 	mov	r0, r3
     468:	e24bd004 	sub	sp, fp, #4
     46c:	e8bd8800 	pop	{fp, pc}

00000470 <atoi>:
     470:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     474:	e28db000 	add	fp, sp, #0
     478:	e24dd014 	sub	sp, sp, #20
     47c:	e50b0010 	str	r0, [fp, #-16]
     480:	e3a03000 	mov	r3, #0
     484:	e50b3008 	str	r3, [fp, #-8]
     488:	ea00000c 	b	4c0 <atoi+0x50>
     48c:	e51b2008 	ldr	r2, [fp, #-8]
     490:	e1a03002 	mov	r3, r2
     494:	e1a03103 	lsl	r3, r3, #2
     498:	e0833002 	add	r3, r3, r2
     49c:	e1a03083 	lsl	r3, r3, #1
     4a0:	e1a01003 	mov	r1, r3
     4a4:	e51b3010 	ldr	r3, [fp, #-16]
     4a8:	e2832001 	add	r2, r3, #1
     4ac:	e50b2010 	str	r2, [fp, #-16]
     4b0:	e5d33000 	ldrb	r3, [r3]
     4b4:	e0813003 	add	r3, r1, r3
     4b8:	e2433030 	sub	r3, r3, #48	@ 0x30
     4bc:	e50b3008 	str	r3, [fp, #-8]
     4c0:	e51b3010 	ldr	r3, [fp, #-16]
     4c4:	e5d33000 	ldrb	r3, [r3]
     4c8:	e353002f 	cmp	r3, #47	@ 0x2f
     4cc:	9a000003 	bls	4e0 <atoi+0x70>
     4d0:	e51b3010 	ldr	r3, [fp, #-16]
     4d4:	e5d33000 	ldrb	r3, [r3]
     4d8:	e3530039 	cmp	r3, #57	@ 0x39
     4dc:	9affffea 	bls	48c <atoi+0x1c>
     4e0:	e51b3008 	ldr	r3, [fp, #-8]
     4e4:	e1a00003 	mov	r0, r3
     4e8:	e28bd000 	add	sp, fp, #0
     4ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4f0:	e12fff1e 	bx	lr

000004f4 <memmove>:
     4f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4f8:	e28db000 	add	fp, sp, #0
     4fc:	e24dd01c 	sub	sp, sp, #28
     500:	e50b0010 	str	r0, [fp, #-16]
     504:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     508:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     50c:	e51b3010 	ldr	r3, [fp, #-16]
     510:	e50b3008 	str	r3, [fp, #-8]
     514:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     518:	e50b300c 	str	r3, [fp, #-12]
     51c:	ea000007 	b	540 <memmove+0x4c>
     520:	e51b200c 	ldr	r2, [fp, #-12]
     524:	e2823001 	add	r3, r2, #1
     528:	e50b300c 	str	r3, [fp, #-12]
     52c:	e51b3008 	ldr	r3, [fp, #-8]
     530:	e2831001 	add	r1, r3, #1
     534:	e50b1008 	str	r1, [fp, #-8]
     538:	e5d22000 	ldrb	r2, [r2]
     53c:	e5c32000 	strb	r2, [r3]
     540:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     544:	e2432001 	sub	r2, r3, #1
     548:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     54c:	e3530000 	cmp	r3, #0
     550:	cafffff2 	bgt	520 <memmove+0x2c>
     554:	e51b3010 	ldr	r3, [fp, #-16]
     558:	e1a00003 	mov	r0, r3
     55c:	e28bd000 	add	sp, fp, #0
     560:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     564:	e12fff1e 	bx	lr

00000568 <fork>:
     568:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     56c:	e1a04003 	mov	r4, r3
     570:	e1a03002 	mov	r3, r2
     574:	e1a02001 	mov	r2, r1
     578:	e1a01000 	mov	r1, r0
     57c:	e3a00001 	mov	r0, #1
     580:	ef000000 	svc	0x00000000
     584:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     588:	e12fff1e 	bx	lr

0000058c <exit>:
     58c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     590:	e1a04003 	mov	r4, r3
     594:	e1a03002 	mov	r3, r2
     598:	e1a02001 	mov	r2, r1
     59c:	e1a01000 	mov	r1, r0
     5a0:	e3a00002 	mov	r0, #2
     5a4:	ef000000 	svc	0x00000000
     5a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5ac:	e12fff1e 	bx	lr

000005b0 <wait>:
     5b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5b4:	e1a04003 	mov	r4, r3
     5b8:	e1a03002 	mov	r3, r2
     5bc:	e1a02001 	mov	r2, r1
     5c0:	e1a01000 	mov	r1, r0
     5c4:	e3a00003 	mov	r0, #3
     5c8:	ef000000 	svc	0x00000000
     5cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5d0:	e12fff1e 	bx	lr

000005d4 <pipe>:
     5d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d8:	e1a04003 	mov	r4, r3
     5dc:	e1a03002 	mov	r3, r2
     5e0:	e1a02001 	mov	r2, r1
     5e4:	e1a01000 	mov	r1, r0
     5e8:	e3a00004 	mov	r0, #4
     5ec:	ef000000 	svc	0x00000000
     5f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f4:	e12fff1e 	bx	lr

000005f8 <read>:
     5f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5fc:	e1a04003 	mov	r4, r3
     600:	e1a03002 	mov	r3, r2
     604:	e1a02001 	mov	r2, r1
     608:	e1a01000 	mov	r1, r0
     60c:	e3a00005 	mov	r0, #5
     610:	ef000000 	svc	0x00000000
     614:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     618:	e12fff1e 	bx	lr

0000061c <write>:
     61c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     620:	e1a04003 	mov	r4, r3
     624:	e1a03002 	mov	r3, r2
     628:	e1a02001 	mov	r2, r1
     62c:	e1a01000 	mov	r1, r0
     630:	e3a00010 	mov	r0, #16
     634:	ef000000 	svc	0x00000000
     638:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     63c:	e12fff1e 	bx	lr

00000640 <close>:
     640:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     644:	e1a04003 	mov	r4, r3
     648:	e1a03002 	mov	r3, r2
     64c:	e1a02001 	mov	r2, r1
     650:	e1a01000 	mov	r1, r0
     654:	e3a00015 	mov	r0, #21
     658:	ef000000 	svc	0x00000000
     65c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     660:	e12fff1e 	bx	lr

00000664 <kill>:
     664:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     668:	e1a04003 	mov	r4, r3
     66c:	e1a03002 	mov	r3, r2
     670:	e1a02001 	mov	r2, r1
     674:	e1a01000 	mov	r1, r0
     678:	e3a00006 	mov	r0, #6
     67c:	ef000000 	svc	0x00000000
     680:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     684:	e12fff1e 	bx	lr

00000688 <exec>:
     688:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     68c:	e1a04003 	mov	r4, r3
     690:	e1a03002 	mov	r3, r2
     694:	e1a02001 	mov	r2, r1
     698:	e1a01000 	mov	r1, r0
     69c:	e3a00007 	mov	r0, #7
     6a0:	ef000000 	svc	0x00000000
     6a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a8:	e12fff1e 	bx	lr

000006ac <open>:
     6ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b0:	e1a04003 	mov	r4, r3
     6b4:	e1a03002 	mov	r3, r2
     6b8:	e1a02001 	mov	r2, r1
     6bc:	e1a01000 	mov	r1, r0
     6c0:	e3a0000f 	mov	r0, #15
     6c4:	ef000000 	svc	0x00000000
     6c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6cc:	e12fff1e 	bx	lr

000006d0 <mknod>:
     6d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d4:	e1a04003 	mov	r4, r3
     6d8:	e1a03002 	mov	r3, r2
     6dc:	e1a02001 	mov	r2, r1
     6e0:	e1a01000 	mov	r1, r0
     6e4:	e3a00011 	mov	r0, #17
     6e8:	ef000000 	svc	0x00000000
     6ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f0:	e12fff1e 	bx	lr

000006f4 <unlink>:
     6f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f8:	e1a04003 	mov	r4, r3
     6fc:	e1a03002 	mov	r3, r2
     700:	e1a02001 	mov	r2, r1
     704:	e1a01000 	mov	r1, r0
     708:	e3a00012 	mov	r0, #18
     70c:	ef000000 	svc	0x00000000
     710:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     714:	e12fff1e 	bx	lr

00000718 <fstat>:
     718:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     71c:	e1a04003 	mov	r4, r3
     720:	e1a03002 	mov	r3, r2
     724:	e1a02001 	mov	r2, r1
     728:	e1a01000 	mov	r1, r0
     72c:	e3a00008 	mov	r0, #8
     730:	ef000000 	svc	0x00000000
     734:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     738:	e12fff1e 	bx	lr

0000073c <link>:
     73c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     740:	e1a04003 	mov	r4, r3
     744:	e1a03002 	mov	r3, r2
     748:	e1a02001 	mov	r2, r1
     74c:	e1a01000 	mov	r1, r0
     750:	e3a00013 	mov	r0, #19
     754:	ef000000 	svc	0x00000000
     758:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     75c:	e12fff1e 	bx	lr

00000760 <mkdir>:
     760:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     764:	e1a04003 	mov	r4, r3
     768:	e1a03002 	mov	r3, r2
     76c:	e1a02001 	mov	r2, r1
     770:	e1a01000 	mov	r1, r0
     774:	e3a00014 	mov	r0, #20
     778:	ef000000 	svc	0x00000000
     77c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     780:	e12fff1e 	bx	lr

00000784 <chdir>:
     784:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     788:	e1a04003 	mov	r4, r3
     78c:	e1a03002 	mov	r3, r2
     790:	e1a02001 	mov	r2, r1
     794:	e1a01000 	mov	r1, r0
     798:	e3a00009 	mov	r0, #9
     79c:	ef000000 	svc	0x00000000
     7a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a4:	e12fff1e 	bx	lr

000007a8 <dup>:
     7a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ac:	e1a04003 	mov	r4, r3
     7b0:	e1a03002 	mov	r3, r2
     7b4:	e1a02001 	mov	r2, r1
     7b8:	e1a01000 	mov	r1, r0
     7bc:	e3a0000a 	mov	r0, #10
     7c0:	ef000000 	svc	0x00000000
     7c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c8:	e12fff1e 	bx	lr

000007cc <getpid>:
     7cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d0:	e1a04003 	mov	r4, r3
     7d4:	e1a03002 	mov	r3, r2
     7d8:	e1a02001 	mov	r2, r1
     7dc:	e1a01000 	mov	r1, r0
     7e0:	e3a0000b 	mov	r0, #11
     7e4:	ef000000 	svc	0x00000000
     7e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ec:	e12fff1e 	bx	lr

000007f0 <sbrk>:
     7f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f4:	e1a04003 	mov	r4, r3
     7f8:	e1a03002 	mov	r3, r2
     7fc:	e1a02001 	mov	r2, r1
     800:	e1a01000 	mov	r1, r0
     804:	e3a0000c 	mov	r0, #12
     808:	ef000000 	svc	0x00000000
     80c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     810:	e12fff1e 	bx	lr

00000814 <sleep>:
     814:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     818:	e1a04003 	mov	r4, r3
     81c:	e1a03002 	mov	r3, r2
     820:	e1a02001 	mov	r2, r1
     824:	e1a01000 	mov	r1, r0
     828:	e3a0000d 	mov	r0, #13
     82c:	ef000000 	svc	0x00000000
     830:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     834:	e12fff1e 	bx	lr

00000838 <uptime>:
     838:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     83c:	e1a04003 	mov	r4, r3
     840:	e1a03002 	mov	r3, r2
     844:	e1a02001 	mov	r2, r1
     848:	e1a01000 	mov	r1, r0
     84c:	e3a0000e 	mov	r0, #14
     850:	ef000000 	svc	0x00000000
     854:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     858:	e12fff1e 	bx	lr

0000085c <pgpte>:
     85c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     860:	e1a04003 	mov	r4, r3
     864:	e1a03002 	mov	r3, r2
     868:	e1a02001 	mov	r2, r1
     86c:	e1a01000 	mov	r1, r0
     870:	e3a00016 	mov	r0, #22
     874:	ef000000 	svc	0x00000000
     878:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     87c:	e12fff1e 	bx	lr

00000880 <kpt>:
     880:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     884:	e1a04003 	mov	r4, r3
     888:	e1a03002 	mov	r3, r2
     88c:	e1a02001 	mov	r2, r1
     890:	e1a01000 	mov	r1, r0
     894:	e3a00017 	mov	r0, #23
     898:	ef000000 	svc	0x00000000
     89c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a0:	e12fff1e 	bx	lr

000008a4 <ugetpid>:
     8a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a8:	e1a04003 	mov	r4, r3
     8ac:	e1a03002 	mov	r3, r2
     8b0:	e1a02001 	mov	r2, r1
     8b4:	e1a01000 	mov	r1, r0
     8b8:	e3a00018 	mov	r0, #24
     8bc:	ef000000 	svc	0x00000000
     8c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c4:	e12fff1e 	bx	lr

000008c8 <putc>:
     8c8:	e92d4800 	push	{fp, lr}
     8cc:	e28db004 	add	fp, sp, #4
     8d0:	e24dd008 	sub	sp, sp, #8
     8d4:	e50b0008 	str	r0, [fp, #-8]
     8d8:	e1a03001 	mov	r3, r1
     8dc:	e54b3009 	strb	r3, [fp, #-9]
     8e0:	e24b3009 	sub	r3, fp, #9
     8e4:	e3a02001 	mov	r2, #1
     8e8:	e1a01003 	mov	r1, r3
     8ec:	e51b0008 	ldr	r0, [fp, #-8]
     8f0:	ebffff49 	bl	61c <write>
     8f4:	e1a00000 	nop			@ (mov r0, r0)
     8f8:	e24bd004 	sub	sp, fp, #4
     8fc:	e8bd8800 	pop	{fp, pc}

00000900 <printint>:
     900:	e92d4800 	push	{fp, lr}
     904:	e28db004 	add	fp, sp, #4
     908:	e24dd030 	sub	sp, sp, #48	@ 0x30
     90c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     910:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     914:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     918:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     91c:	e3a03000 	mov	r3, #0
     920:	e50b300c 	str	r3, [fp, #-12]
     924:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     928:	e3530000 	cmp	r3, #0
     92c:	0a000008 	beq	954 <printint+0x54>
     930:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     934:	e3530000 	cmp	r3, #0
     938:	aa000005 	bge	954 <printint+0x54>
     93c:	e3a03001 	mov	r3, #1
     940:	e50b300c 	str	r3, [fp, #-12]
     944:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     948:	e2633000 	rsb	r3, r3, #0
     94c:	e50b3010 	str	r3, [fp, #-16]
     950:	ea000001 	b	95c <printint+0x5c>
     954:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     958:	e50b3010 	str	r3, [fp, #-16]
     95c:	e3a03000 	mov	r3, #0
     960:	e50b3008 	str	r3, [fp, #-8]
     964:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     968:	e51b3010 	ldr	r3, [fp, #-16]
     96c:	e1a01002 	mov	r1, r2
     970:	e1a00003 	mov	r0, r3
     974:	eb0001d5 	bl	10d0 <__aeabi_uidivmod>
     978:	e1a03001 	mov	r3, r1
     97c:	e1a01003 	mov	r1, r3
     980:	e51b3008 	ldr	r3, [fp, #-8]
     984:	e2832001 	add	r2, r3, #1
     988:	e50b2008 	str	r2, [fp, #-8]
     98c:	e59f20a0 	ldr	r2, [pc, #160]	@ a34 <printint+0x134>
     990:	e7d22001 	ldrb	r2, [r2, r1]
     994:	e2433004 	sub	r3, r3, #4
     998:	e083300b 	add	r3, r3, fp
     99c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9a0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     9a4:	e1a01003 	mov	r1, r3
     9a8:	e51b0010 	ldr	r0, [fp, #-16]
     9ac:	eb00018a 	bl	fdc <__udivsi3>
     9b0:	e1a03000 	mov	r3, r0
     9b4:	e50b3010 	str	r3, [fp, #-16]
     9b8:	e51b3010 	ldr	r3, [fp, #-16]
     9bc:	e3530000 	cmp	r3, #0
     9c0:	1affffe7 	bne	964 <printint+0x64>
     9c4:	e51b300c 	ldr	r3, [fp, #-12]
     9c8:	e3530000 	cmp	r3, #0
     9cc:	0a00000e 	beq	a0c <printint+0x10c>
     9d0:	e51b3008 	ldr	r3, [fp, #-8]
     9d4:	e2832001 	add	r2, r3, #1
     9d8:	e50b2008 	str	r2, [fp, #-8]
     9dc:	e2433004 	sub	r3, r3, #4
     9e0:	e083300b 	add	r3, r3, fp
     9e4:	e3a0202d 	mov	r2, #45	@ 0x2d
     9e8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9ec:	ea000006 	b	a0c <printint+0x10c>
     9f0:	e24b2020 	sub	r2, fp, #32
     9f4:	e51b3008 	ldr	r3, [fp, #-8]
     9f8:	e0823003 	add	r3, r2, r3
     9fc:	e5d33000 	ldrb	r3, [r3]
     a00:	e1a01003 	mov	r1, r3
     a04:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a08:	ebffffae 	bl	8c8 <putc>
     a0c:	e51b3008 	ldr	r3, [fp, #-8]
     a10:	e2433001 	sub	r3, r3, #1
     a14:	e50b3008 	str	r3, [fp, #-8]
     a18:	e51b3008 	ldr	r3, [fp, #-8]
     a1c:	e3530000 	cmp	r3, #0
     a20:	aafffff2 	bge	9f0 <printint+0xf0>
     a24:	e1a00000 	nop			@ (mov r0, r0)
     a28:	e1a00000 	nop			@ (mov r0, r0)
     a2c:	e24bd004 	sub	sp, fp, #4
     a30:	e8bd8800 	pop	{fp, pc}
     a34:	0000110c 	.word	0x0000110c

00000a38 <printf>:
     a38:	e92d000e 	push	{r1, r2, r3}
     a3c:	e92d4800 	push	{fp, lr}
     a40:	e28db004 	add	fp, sp, #4
     a44:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a48:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a4c:	e3a03000 	mov	r3, #0
     a50:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a54:	e28b3008 	add	r3, fp, #8
     a58:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a5c:	e3a03000 	mov	r3, #0
     a60:	e50b3010 	str	r3, [fp, #-16]
     a64:	ea000074 	b	c3c <printf+0x204>
     a68:	e59b2004 	ldr	r2, [fp, #4]
     a6c:	e51b3010 	ldr	r3, [fp, #-16]
     a70:	e0823003 	add	r3, r2, r3
     a74:	e5d33000 	ldrb	r3, [r3]
     a78:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a7c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a80:	e3530000 	cmp	r3, #0
     a84:	1a00000b 	bne	ab8 <printf+0x80>
     a88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a8c:	e3530025 	cmp	r3, #37	@ 0x25
     a90:	1a000002 	bne	aa0 <printf+0x68>
     a94:	e3a03025 	mov	r3, #37	@ 0x25
     a98:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a9c:	ea000063 	b	c30 <printf+0x1f8>
     aa0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     aa4:	e6ef3073 	uxtb	r3, r3
     aa8:	e1a01003 	mov	r1, r3
     aac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ab0:	ebffff84 	bl	8c8 <putc>
     ab4:	ea00005d 	b	c30 <printf+0x1f8>
     ab8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     abc:	e3530025 	cmp	r3, #37	@ 0x25
     ac0:	1a00005a 	bne	c30 <printf+0x1f8>
     ac4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ac8:	e3530064 	cmp	r3, #100	@ 0x64
     acc:	1a00000a 	bne	afc <printf+0xc4>
     ad0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ad4:	e5933000 	ldr	r3, [r3]
     ad8:	e1a01003 	mov	r1, r3
     adc:	e3a03001 	mov	r3, #1
     ae0:	e3a0200a 	mov	r2, #10
     ae4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ae8:	ebffff84 	bl	900 <printint>
     aec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     af0:	e2833004 	add	r3, r3, #4
     af4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     af8:	ea00004a 	b	c28 <printf+0x1f0>
     afc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b00:	e3530078 	cmp	r3, #120	@ 0x78
     b04:	0a000002 	beq	b14 <printf+0xdc>
     b08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b0c:	e3530070 	cmp	r3, #112	@ 0x70
     b10:	1a00000a 	bne	b40 <printf+0x108>
     b14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b18:	e5933000 	ldr	r3, [r3]
     b1c:	e1a01003 	mov	r1, r3
     b20:	e3a03000 	mov	r3, #0
     b24:	e3a02010 	mov	r2, #16
     b28:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b2c:	ebffff73 	bl	900 <printint>
     b30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b34:	e2833004 	add	r3, r3, #4
     b38:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b3c:	ea000039 	b	c28 <printf+0x1f0>
     b40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b44:	e3530073 	cmp	r3, #115	@ 0x73
     b48:	1a000018 	bne	bb0 <printf+0x178>
     b4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b50:	e5933000 	ldr	r3, [r3]
     b54:	e50b300c 	str	r3, [fp, #-12]
     b58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b5c:	e2833004 	add	r3, r3, #4
     b60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b64:	e51b300c 	ldr	r3, [fp, #-12]
     b68:	e3530000 	cmp	r3, #0
     b6c:	1a00000a 	bne	b9c <printf+0x164>
     b70:	e59f30f4 	ldr	r3, [pc, #244]	@ c6c <printf+0x234>
     b74:	e50b300c 	str	r3, [fp, #-12]
     b78:	ea000007 	b	b9c <printf+0x164>
     b7c:	e51b300c 	ldr	r3, [fp, #-12]
     b80:	e5d33000 	ldrb	r3, [r3]
     b84:	e1a01003 	mov	r1, r3
     b88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b8c:	ebffff4d 	bl	8c8 <putc>
     b90:	e51b300c 	ldr	r3, [fp, #-12]
     b94:	e2833001 	add	r3, r3, #1
     b98:	e50b300c 	str	r3, [fp, #-12]
     b9c:	e51b300c 	ldr	r3, [fp, #-12]
     ba0:	e5d33000 	ldrb	r3, [r3]
     ba4:	e3530000 	cmp	r3, #0
     ba8:	1afffff3 	bne	b7c <printf+0x144>
     bac:	ea00001d 	b	c28 <printf+0x1f0>
     bb0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bb4:	e3530063 	cmp	r3, #99	@ 0x63
     bb8:	1a000009 	bne	be4 <printf+0x1ac>
     bbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bc0:	e5933000 	ldr	r3, [r3]
     bc4:	e6ef3073 	uxtb	r3, r3
     bc8:	e1a01003 	mov	r1, r3
     bcc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bd0:	ebffff3c 	bl	8c8 <putc>
     bd4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bd8:	e2833004 	add	r3, r3, #4
     bdc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     be0:	ea000010 	b	c28 <printf+0x1f0>
     be4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     be8:	e3530025 	cmp	r3, #37	@ 0x25
     bec:	1a000005 	bne	c08 <printf+0x1d0>
     bf0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf4:	e6ef3073 	uxtb	r3, r3
     bf8:	e1a01003 	mov	r1, r3
     bfc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c00:	ebffff30 	bl	8c8 <putc>
     c04:	ea000007 	b	c28 <printf+0x1f0>
     c08:	e3a01025 	mov	r1, #37	@ 0x25
     c0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c10:	ebffff2c 	bl	8c8 <putc>
     c14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c18:	e6ef3073 	uxtb	r3, r3
     c1c:	e1a01003 	mov	r1, r3
     c20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c24:	ebffff27 	bl	8c8 <putc>
     c28:	e3a03000 	mov	r3, #0
     c2c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c30:	e51b3010 	ldr	r3, [fp, #-16]
     c34:	e2833001 	add	r3, r3, #1
     c38:	e50b3010 	str	r3, [fp, #-16]
     c3c:	e59b2004 	ldr	r2, [fp, #4]
     c40:	e51b3010 	ldr	r3, [fp, #-16]
     c44:	e0823003 	add	r3, r2, r3
     c48:	e5d33000 	ldrb	r3, [r3]
     c4c:	e3530000 	cmp	r3, #0
     c50:	1affff84 	bne	a68 <printf+0x30>
     c54:	e1a00000 	nop			@ (mov r0, r0)
     c58:	e1a00000 	nop			@ (mov r0, r0)
     c5c:	e24bd004 	sub	sp, fp, #4
     c60:	e8bd4800 	pop	{fp, lr}
     c64:	e28dd00c 	add	sp, sp, #12
     c68:	e12fff1e 	bx	lr
     c6c:	00001104 	.word	0x00001104

00000c70 <free>:
     c70:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c74:	e28db000 	add	fp, sp, #0
     c78:	e24dd014 	sub	sp, sp, #20
     c7c:	e50b0010 	str	r0, [fp, #-16]
     c80:	e51b3010 	ldr	r3, [fp, #-16]
     c84:	e2433008 	sub	r3, r3, #8
     c88:	e50b300c 	str	r3, [fp, #-12]
     c8c:	e59f3154 	ldr	r3, [pc, #340]	@ de8 <free+0x178>
     c90:	e5933000 	ldr	r3, [r3]
     c94:	e50b3008 	str	r3, [fp, #-8]
     c98:	ea000010 	b	ce0 <free+0x70>
     c9c:	e51b3008 	ldr	r3, [fp, #-8]
     ca0:	e5933000 	ldr	r3, [r3]
     ca4:	e51b2008 	ldr	r2, [fp, #-8]
     ca8:	e1520003 	cmp	r2, r3
     cac:	3a000008 	bcc	cd4 <free+0x64>
     cb0:	e51b200c 	ldr	r2, [fp, #-12]
     cb4:	e51b3008 	ldr	r3, [fp, #-8]
     cb8:	e1520003 	cmp	r2, r3
     cbc:	8a000010 	bhi	d04 <free+0x94>
     cc0:	e51b3008 	ldr	r3, [fp, #-8]
     cc4:	e5933000 	ldr	r3, [r3]
     cc8:	e51b200c 	ldr	r2, [fp, #-12]
     ccc:	e1520003 	cmp	r2, r3
     cd0:	3a00000b 	bcc	d04 <free+0x94>
     cd4:	e51b3008 	ldr	r3, [fp, #-8]
     cd8:	e5933000 	ldr	r3, [r3]
     cdc:	e50b3008 	str	r3, [fp, #-8]
     ce0:	e51b200c 	ldr	r2, [fp, #-12]
     ce4:	e51b3008 	ldr	r3, [fp, #-8]
     ce8:	e1520003 	cmp	r2, r3
     cec:	9affffea 	bls	c9c <free+0x2c>
     cf0:	e51b3008 	ldr	r3, [fp, #-8]
     cf4:	e5933000 	ldr	r3, [r3]
     cf8:	e51b200c 	ldr	r2, [fp, #-12]
     cfc:	e1520003 	cmp	r2, r3
     d00:	2affffe5 	bcs	c9c <free+0x2c>
     d04:	e51b300c 	ldr	r3, [fp, #-12]
     d08:	e5933004 	ldr	r3, [r3, #4]
     d0c:	e1a03183 	lsl	r3, r3, #3
     d10:	e51b200c 	ldr	r2, [fp, #-12]
     d14:	e0822003 	add	r2, r2, r3
     d18:	e51b3008 	ldr	r3, [fp, #-8]
     d1c:	e5933000 	ldr	r3, [r3]
     d20:	e1520003 	cmp	r2, r3
     d24:	1a00000d 	bne	d60 <free+0xf0>
     d28:	e51b300c 	ldr	r3, [fp, #-12]
     d2c:	e5932004 	ldr	r2, [r3, #4]
     d30:	e51b3008 	ldr	r3, [fp, #-8]
     d34:	e5933000 	ldr	r3, [r3]
     d38:	e5933004 	ldr	r3, [r3, #4]
     d3c:	e0822003 	add	r2, r2, r3
     d40:	e51b300c 	ldr	r3, [fp, #-12]
     d44:	e5832004 	str	r2, [r3, #4]
     d48:	e51b3008 	ldr	r3, [fp, #-8]
     d4c:	e5933000 	ldr	r3, [r3]
     d50:	e5932000 	ldr	r2, [r3]
     d54:	e51b300c 	ldr	r3, [fp, #-12]
     d58:	e5832000 	str	r2, [r3]
     d5c:	ea000003 	b	d70 <free+0x100>
     d60:	e51b3008 	ldr	r3, [fp, #-8]
     d64:	e5932000 	ldr	r2, [r3]
     d68:	e51b300c 	ldr	r3, [fp, #-12]
     d6c:	e5832000 	str	r2, [r3]
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e5933004 	ldr	r3, [r3, #4]
     d78:	e1a03183 	lsl	r3, r3, #3
     d7c:	e51b2008 	ldr	r2, [fp, #-8]
     d80:	e0823003 	add	r3, r2, r3
     d84:	e51b200c 	ldr	r2, [fp, #-12]
     d88:	e1520003 	cmp	r2, r3
     d8c:	1a00000b 	bne	dc0 <free+0x150>
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e5932004 	ldr	r2, [r3, #4]
     d98:	e51b300c 	ldr	r3, [fp, #-12]
     d9c:	e5933004 	ldr	r3, [r3, #4]
     da0:	e0822003 	add	r2, r2, r3
     da4:	e51b3008 	ldr	r3, [fp, #-8]
     da8:	e5832004 	str	r2, [r3, #4]
     dac:	e51b300c 	ldr	r3, [fp, #-12]
     db0:	e5932000 	ldr	r2, [r3]
     db4:	e51b3008 	ldr	r3, [fp, #-8]
     db8:	e5832000 	str	r2, [r3]
     dbc:	ea000002 	b	dcc <free+0x15c>
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e51b200c 	ldr	r2, [fp, #-12]
     dc8:	e5832000 	str	r2, [r3]
     dcc:	e59f2014 	ldr	r2, [pc, #20]	@ de8 <free+0x178>
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e5823000 	str	r3, [r2]
     dd8:	e1a00000 	nop			@ (mov r0, r0)
     ddc:	e28bd000 	add	sp, fp, #0
     de0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     de4:	e12fff1e 	bx	lr
     de8:	00001128 	.word	0x00001128

00000dec <morecore>:
     dec:	e92d4800 	push	{fp, lr}
     df0:	e28db004 	add	fp, sp, #4
     df4:	e24dd010 	sub	sp, sp, #16
     df8:	e50b0010 	str	r0, [fp, #-16]
     dfc:	e51b3010 	ldr	r3, [fp, #-16]
     e00:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e04:	2a000001 	bcs	e10 <morecore+0x24>
     e08:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e0c:	e50b3010 	str	r3, [fp, #-16]
     e10:	e51b3010 	ldr	r3, [fp, #-16]
     e14:	e1a03183 	lsl	r3, r3, #3
     e18:	e1a00003 	mov	r0, r3
     e1c:	ebfffe73 	bl	7f0 <sbrk>
     e20:	e50b0008 	str	r0, [fp, #-8]
     e24:	e51b3008 	ldr	r3, [fp, #-8]
     e28:	e3730001 	cmn	r3, #1
     e2c:	1a000001 	bne	e38 <morecore+0x4c>
     e30:	e3a03000 	mov	r3, #0
     e34:	ea00000a 	b	e64 <morecore+0x78>
     e38:	e51b3008 	ldr	r3, [fp, #-8]
     e3c:	e50b300c 	str	r3, [fp, #-12]
     e40:	e51b300c 	ldr	r3, [fp, #-12]
     e44:	e51b2010 	ldr	r2, [fp, #-16]
     e48:	e5832004 	str	r2, [r3, #4]
     e4c:	e51b300c 	ldr	r3, [fp, #-12]
     e50:	e2833008 	add	r3, r3, #8
     e54:	e1a00003 	mov	r0, r3
     e58:	ebffff84 	bl	c70 <free>
     e5c:	e59f300c 	ldr	r3, [pc, #12]	@ e70 <morecore+0x84>
     e60:	e5933000 	ldr	r3, [r3]
     e64:	e1a00003 	mov	r0, r3
     e68:	e24bd004 	sub	sp, fp, #4
     e6c:	e8bd8800 	pop	{fp, pc}
     e70:	00001128 	.word	0x00001128

00000e74 <malloc>:
     e74:	e92d4800 	push	{fp, lr}
     e78:	e28db004 	add	fp, sp, #4
     e7c:	e24dd018 	sub	sp, sp, #24
     e80:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e88:	e2833007 	add	r3, r3, #7
     e8c:	e1a031a3 	lsr	r3, r3, #3
     e90:	e2833001 	add	r3, r3, #1
     e94:	e50b3010 	str	r3, [fp, #-16]
     e98:	e59f3134 	ldr	r3, [pc, #308]	@ fd4 <malloc+0x160>
     e9c:	e5933000 	ldr	r3, [r3]
     ea0:	e50b300c 	str	r3, [fp, #-12]
     ea4:	e51b300c 	ldr	r3, [fp, #-12]
     ea8:	e3530000 	cmp	r3, #0
     eac:	1a00000b 	bne	ee0 <malloc+0x6c>
     eb0:	e59f3120 	ldr	r3, [pc, #288]	@ fd8 <malloc+0x164>
     eb4:	e50b300c 	str	r3, [fp, #-12]
     eb8:	e59f2114 	ldr	r2, [pc, #276]	@ fd4 <malloc+0x160>
     ebc:	e51b300c 	ldr	r3, [fp, #-12]
     ec0:	e5823000 	str	r3, [r2]
     ec4:	e59f3108 	ldr	r3, [pc, #264]	@ fd4 <malloc+0x160>
     ec8:	e5933000 	ldr	r3, [r3]
     ecc:	e59f2104 	ldr	r2, [pc, #260]	@ fd8 <malloc+0x164>
     ed0:	e5823000 	str	r3, [r2]
     ed4:	e59f30fc 	ldr	r3, [pc, #252]	@ fd8 <malloc+0x164>
     ed8:	e3a02000 	mov	r2, #0
     edc:	e5832004 	str	r2, [r3, #4]
     ee0:	e51b300c 	ldr	r3, [fp, #-12]
     ee4:	e5933000 	ldr	r3, [r3]
     ee8:	e50b3008 	str	r3, [fp, #-8]
     eec:	e51b3008 	ldr	r3, [fp, #-8]
     ef0:	e5933004 	ldr	r3, [r3, #4]
     ef4:	e51b2010 	ldr	r2, [fp, #-16]
     ef8:	e1520003 	cmp	r2, r3
     efc:	8a00001e 	bhi	f7c <malloc+0x108>
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e5933004 	ldr	r3, [r3, #4]
     f08:	e51b2010 	ldr	r2, [fp, #-16]
     f0c:	e1520003 	cmp	r2, r3
     f10:	1a000004 	bne	f28 <malloc+0xb4>
     f14:	e51b3008 	ldr	r3, [fp, #-8]
     f18:	e5932000 	ldr	r2, [r3]
     f1c:	e51b300c 	ldr	r3, [fp, #-12]
     f20:	e5832000 	str	r2, [r3]
     f24:	ea00000e 	b	f64 <malloc+0xf0>
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e5932004 	ldr	r2, [r3, #4]
     f30:	e51b3010 	ldr	r3, [fp, #-16]
     f34:	e0422003 	sub	r2, r2, r3
     f38:	e51b3008 	ldr	r3, [fp, #-8]
     f3c:	e5832004 	str	r2, [r3, #4]
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e5933004 	ldr	r3, [r3, #4]
     f48:	e1a03183 	lsl	r3, r3, #3
     f4c:	e51b2008 	ldr	r2, [fp, #-8]
     f50:	e0823003 	add	r3, r2, r3
     f54:	e50b3008 	str	r3, [fp, #-8]
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e51b2010 	ldr	r2, [fp, #-16]
     f60:	e5832004 	str	r2, [r3, #4]
     f64:	e59f2068 	ldr	r2, [pc, #104]	@ fd4 <malloc+0x160>
     f68:	e51b300c 	ldr	r3, [fp, #-12]
     f6c:	e5823000 	str	r3, [r2]
     f70:	e51b3008 	ldr	r3, [fp, #-8]
     f74:	e2833008 	add	r3, r3, #8
     f78:	ea000012 	b	fc8 <malloc+0x154>
     f7c:	e59f3050 	ldr	r3, [pc, #80]	@ fd4 <malloc+0x160>
     f80:	e5933000 	ldr	r3, [r3]
     f84:	e51b2008 	ldr	r2, [fp, #-8]
     f88:	e1520003 	cmp	r2, r3
     f8c:	1a000007 	bne	fb0 <malloc+0x13c>
     f90:	e51b0010 	ldr	r0, [fp, #-16]
     f94:	ebffff94 	bl	dec <morecore>
     f98:	e50b0008 	str	r0, [fp, #-8]
     f9c:	e51b3008 	ldr	r3, [fp, #-8]
     fa0:	e3530000 	cmp	r3, #0
     fa4:	1a000001 	bne	fb0 <malloc+0x13c>
     fa8:	e3a03000 	mov	r3, #0
     fac:	ea000005 	b	fc8 <malloc+0x154>
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e50b300c 	str	r3, [fp, #-12]
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e5933000 	ldr	r3, [r3]
     fc0:	e50b3008 	str	r3, [fp, #-8]
     fc4:	eaffffc8 	b	eec <malloc+0x78>
     fc8:	e1a00003 	mov	r0, r3
     fcc:	e24bd004 	sub	sp, fp, #4
     fd0:	e8bd8800 	pop	{fp, pc}
     fd4:	00001128 	.word	0x00001128
     fd8:	00001120 	.word	0x00001120

00000fdc <__udivsi3>:
     fdc:	e2512001 	subs	r2, r1, #1
     fe0:	012fff1e 	bxeq	lr
     fe4:	3a000036 	bcc	10c4 <__udivsi3+0xe8>
     fe8:	e1500001 	cmp	r0, r1
     fec:	9a000022 	bls	107c <__udivsi3+0xa0>
     ff0:	e1110002 	tst	r1, r2
     ff4:	0a000023 	beq	1088 <__udivsi3+0xac>
     ff8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     ffc:	01a01181 	lsleq	r1, r1, #3
    1000:	03a03008 	moveq	r3, #8
    1004:	13a03001 	movne	r3, #1
    1008:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    100c:	31510000 	cmpcc	r1, r0
    1010:	31a01201 	lslcc	r1, r1, #4
    1014:	31a03203 	lslcc	r3, r3, #4
    1018:	3afffffa 	bcc	1008 <__udivsi3+0x2c>
    101c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1020:	31510000 	cmpcc	r1, r0
    1024:	31a01081 	lslcc	r1, r1, #1
    1028:	31a03083 	lslcc	r3, r3, #1
    102c:	3afffffa 	bcc	101c <__udivsi3+0x40>
    1030:	e3a02000 	mov	r2, #0
    1034:	e1500001 	cmp	r0, r1
    1038:	20400001 	subcs	r0, r0, r1
    103c:	21822003 	orrcs	r2, r2, r3
    1040:	e15000a1 	cmp	r0, r1, lsr #1
    1044:	204000a1 	subcs	r0, r0, r1, lsr #1
    1048:	218220a3 	orrcs	r2, r2, r3, lsr #1
    104c:	e1500121 	cmp	r0, r1, lsr #2
    1050:	20400121 	subcs	r0, r0, r1, lsr #2
    1054:	21822123 	orrcs	r2, r2, r3, lsr #2
    1058:	e15001a1 	cmp	r0, r1, lsr #3
    105c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1060:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1064:	e3500000 	cmp	r0, #0
    1068:	11b03223 	lsrsne	r3, r3, #4
    106c:	11a01221 	lsrne	r1, r1, #4
    1070:	1affffef 	bne	1034 <__udivsi3+0x58>
    1074:	e1a00002 	mov	r0, r2
    1078:	e12fff1e 	bx	lr
    107c:	03a00001 	moveq	r0, #1
    1080:	13a00000 	movne	r0, #0
    1084:	e12fff1e 	bx	lr
    1088:	e3510801 	cmp	r1, #65536	@ 0x10000
    108c:	21a01821 	lsrcs	r1, r1, #16
    1090:	23a02010 	movcs	r2, #16
    1094:	33a02000 	movcc	r2, #0
    1098:	e3510c01 	cmp	r1, #256	@ 0x100
    109c:	21a01421 	lsrcs	r1, r1, #8
    10a0:	22822008 	addcs	r2, r2, #8
    10a4:	e3510010 	cmp	r1, #16
    10a8:	21a01221 	lsrcs	r1, r1, #4
    10ac:	22822004 	addcs	r2, r2, #4
    10b0:	e3510004 	cmp	r1, #4
    10b4:	82822003 	addhi	r2, r2, #3
    10b8:	908220a1 	addls	r2, r2, r1, lsr #1
    10bc:	e1a00230 	lsr	r0, r0, r2
    10c0:	e12fff1e 	bx	lr
    10c4:	e3500000 	cmp	r0, #0
    10c8:	13e00000 	mvnne	r0, #0
    10cc:	ea000007 	b	10f0 <__aeabi_idiv0>

000010d0 <__aeabi_uidivmod>:
    10d0:	e3510000 	cmp	r1, #0
    10d4:	0afffffa 	beq	10c4 <__udivsi3+0xe8>
    10d8:	e92d4003 	push	{r0, r1, lr}
    10dc:	ebffffbe 	bl	fdc <__udivsi3>
    10e0:	e8bd4006 	pop	{r1, r2, lr}
    10e4:	e0030092 	mul	r3, r2, r0
    10e8:	e0411003 	sub	r1, r1, r3
    10ec:	e12fff1e 	bx	lr

000010f0 <__aeabi_idiv0>:
    10f0:	e12fff1e 	bx	lr
