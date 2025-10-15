
_cat:     file format elf32-littlearm


Disassembly of section .text:

00000000 <cat>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	ea000003 	b	24 <cat+0x24>
      14:	e51b2008 	ldr	r2, [fp, #-8]
      18:	e59f104c 	ldr	r1, [pc, #76]	@ 6c <cat+0x6c>
      1c:	e3a00001 	mov	r0, #1
      20:	eb0001a7 	bl	6c4 <write>
      24:	e3a02c02 	mov	r2, #512	@ 0x200
      28:	e59f103c 	ldr	r1, [pc, #60]	@ 6c <cat+0x6c>
      2c:	e51b0010 	ldr	r0, [fp, #-16]
      30:	eb00019a 	bl	6a0 <read>
      34:	e50b0008 	str	r0, [fp, #-8]
      38:	e51b3008 	ldr	r3, [fp, #-8]
      3c:	e3530000 	cmp	r3, #0
      40:	cafffff3 	bgt	14 <cat+0x14>
      44:	e51b3008 	ldr	r3, [fp, #-8]
      48:	e3530000 	cmp	r3, #0
      4c:	aa000003 	bge	60 <cat+0x60>
      50:	e59f1018 	ldr	r1, [pc, #24]	@ 70 <cat+0x70>
      54:	e3a00001 	mov	r0, #1
      58:	eb0002a0 	bl	ae0 <printf>
      5c:	eb000174 	bl	634 <exit>
      60:	e1a00000 	nop			@ (mov r0, r0)
      64:	e24bd004 	sub	sp, fp, #4
      68:	e8bd8800 	pop	{fp, pc}
      6c:	000011e4 	.word	0x000011e4
      70:	0000119c 	.word	0x0000119c

00000074 <main>:
      74:	e92d4800 	push	{fp, lr}
      78:	e28db004 	add	fp, sp, #4
      7c:	e24dd010 	sub	sp, sp, #16
      80:	e50b0010 	str	r0, [fp, #-16]
      84:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      88:	e51b3010 	ldr	r3, [fp, #-16]
      8c:	e3530001 	cmp	r3, #1
      90:	ca000002 	bgt	a0 <main+0x2c>
      94:	e3a00000 	mov	r0, #0
      98:	ebffffd8 	bl	0 <cat>
      9c:	eb000164 	bl	634 <exit>
      a0:	e3a03001 	mov	r3, #1
      a4:	e50b3008 	str	r3, [fp, #-8]
      a8:	ea00001c 	b	120 <main+0xac>
      ac:	e51b3008 	ldr	r3, [fp, #-8]
      b0:	e1a03103 	lsl	r3, r3, #2
      b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      b8:	e0823003 	add	r3, r2, r3
      bc:	e5933000 	ldr	r3, [r3]
      c0:	e3a01000 	mov	r1, #0
      c4:	e1a00003 	mov	r0, r3
      c8:	eb0001a1 	bl	754 <open>
      cc:	e50b000c 	str	r0, [fp, #-12]
      d0:	e51b300c 	ldr	r3, [fp, #-12]
      d4:	e3530000 	cmp	r3, #0
      d8:	aa000009 	bge	104 <main+0x90>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e1a03103 	lsl	r3, r3, #2
      e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      e8:	e0823003 	add	r3, r2, r3
      ec:	e5933000 	ldr	r3, [r3]
      f0:	e1a02003 	mov	r2, r3
      f4:	e59f1038 	ldr	r1, [pc, #56]	@ 134 <main+0xc0>
      f8:	e3a00001 	mov	r0, #1
      fc:	eb000277 	bl	ae0 <printf>
     100:	eb00014b 	bl	634 <exit>
     104:	e51b000c 	ldr	r0, [fp, #-12]
     108:	ebffffbc 	bl	0 <cat>
     10c:	e51b000c 	ldr	r0, [fp, #-12]
     110:	eb000174 	bl	6e8 <close>
     114:	e51b3008 	ldr	r3, [fp, #-8]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b3008 	str	r3, [fp, #-8]
     120:	e51b2008 	ldr	r2, [fp, #-8]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e1520003 	cmp	r2, r3
     12c:	baffffde 	blt	ac <main+0x38>
     130:	eb00013f 	bl	634 <exit>
     134:	000011b0 	.word	0x000011b0

00000138 <strcpy>:
     138:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     13c:	e28db000 	add	fp, sp, #0
     140:	e24dd014 	sub	sp, sp, #20
     144:	e50b0010 	str	r0, [fp, #-16]
     148:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     14c:	e51b3010 	ldr	r3, [fp, #-16]
     150:	e50b3008 	str	r3, [fp, #-8]
     154:	e1a00000 	nop			@ (mov r0, r0)
     158:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     15c:	e2823001 	add	r3, r2, #1
     160:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     164:	e51b3010 	ldr	r3, [fp, #-16]
     168:	e2831001 	add	r1, r3, #1
     16c:	e50b1010 	str	r1, [fp, #-16]
     170:	e5d22000 	ldrb	r2, [r2]
     174:	e5c32000 	strb	r2, [r3]
     178:	e5d33000 	ldrb	r3, [r3]
     17c:	e3530000 	cmp	r3, #0
     180:	1afffff4 	bne	158 <strcpy+0x20>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e1a00003 	mov	r0, r3
     18c:	e28bd000 	add	sp, fp, #0
     190:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     194:	e12fff1e 	bx	lr

00000198 <strcmp>:
     198:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     19c:	e28db000 	add	fp, sp, #0
     1a0:	e24dd00c 	sub	sp, sp, #12
     1a4:	e50b0008 	str	r0, [fp, #-8]
     1a8:	e50b100c 	str	r1, [fp, #-12]
     1ac:	ea000005 	b	1c8 <strcmp+0x30>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b300c 	ldr	r3, [fp, #-12]
     1c0:	e2833001 	add	r3, r3, #1
     1c4:	e50b300c 	str	r3, [fp, #-12]
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e5d33000 	ldrb	r3, [r3]
     1d0:	e3530000 	cmp	r3, #0
     1d4:	0a000005 	beq	1f0 <strcmp+0x58>
     1d8:	e51b3008 	ldr	r3, [fp, #-8]
     1dc:	e5d32000 	ldrb	r2, [r3]
     1e0:	e51b300c 	ldr	r3, [fp, #-12]
     1e4:	e5d33000 	ldrb	r3, [r3]
     1e8:	e1520003 	cmp	r2, r3
     1ec:	0affffef 	beq	1b0 <strcmp+0x18>
     1f0:	e51b3008 	ldr	r3, [fp, #-8]
     1f4:	e5d33000 	ldrb	r3, [r3]
     1f8:	e1a02003 	mov	r2, r3
     1fc:	e51b300c 	ldr	r3, [fp, #-12]
     200:	e5d33000 	ldrb	r3, [r3]
     204:	e0423003 	sub	r3, r2, r3
     208:	e1a00003 	mov	r0, r3
     20c:	e28bd000 	add	sp, fp, #0
     210:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     214:	e12fff1e 	bx	lr

00000218 <strlen>:
     218:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     21c:	e28db000 	add	fp, sp, #0
     220:	e24dd014 	sub	sp, sp, #20
     224:	e50b0010 	str	r0, [fp, #-16]
     228:	e3a03000 	mov	r3, #0
     22c:	e50b3008 	str	r3, [fp, #-8]
     230:	ea000002 	b	240 <strlen+0x28>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e2833001 	add	r3, r3, #1
     23c:	e50b3008 	str	r3, [fp, #-8]
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e51b2010 	ldr	r2, [fp, #-16]
     248:	e0823003 	add	r3, r2, r3
     24c:	e5d33000 	ldrb	r3, [r3]
     250:	e3530000 	cmp	r3, #0
     254:	1afffff6 	bne	234 <strlen+0x1c>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e1a00003 	mov	r0, r3
     260:	e28bd000 	add	sp, fp, #0
     264:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     268:	e12fff1e 	bx	lr

0000026c <memset>:
     26c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     270:	e28db000 	add	fp, sp, #0
     274:	e24dd024 	sub	sp, sp, #36	@ 0x24
     278:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     27c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     280:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     284:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     288:	e50b3008 	str	r3, [fp, #-8]
     28c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     290:	e54b300d 	strb	r3, [fp, #-13]
     294:	e55b200d 	ldrb	r2, [fp, #-13]
     298:	e1a03002 	mov	r3, r2
     29c:	e1a03403 	lsl	r3, r3, #8
     2a0:	e0833002 	add	r3, r3, r2
     2a4:	e1a03803 	lsl	r3, r3, #16
     2a8:	e1a02003 	mov	r2, r3
     2ac:	e55b300d 	ldrb	r3, [fp, #-13]
     2b0:	e1a03403 	lsl	r3, r3, #8
     2b4:	e1822003 	orr	r2, r2, r3
     2b8:	e55b300d 	ldrb	r3, [fp, #-13]
     2bc:	e1823003 	orr	r3, r2, r3
     2c0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2c4:	ea000008 	b	2ec <memset+0x80>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e55b200d 	ldrb	r2, [fp, #-13]
     2d0:	e5c32000 	strb	r2, [r3]
     2d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2d8:	e2433001 	sub	r3, r3, #1
     2dc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2e0:	e51b3008 	ldr	r3, [fp, #-8]
     2e4:	e2833001 	add	r3, r3, #1
     2e8:	e50b3008 	str	r3, [fp, #-8]
     2ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2f0:	e3530000 	cmp	r3, #0
     2f4:	0a000003 	beq	308 <memset+0x9c>
     2f8:	e51b3008 	ldr	r3, [fp, #-8]
     2fc:	e2033003 	and	r3, r3, #3
     300:	e3530000 	cmp	r3, #0
     304:	1affffef 	bne	2c8 <memset+0x5c>
     308:	e51b3008 	ldr	r3, [fp, #-8]
     30c:	e50b300c 	str	r3, [fp, #-12]
     310:	ea000008 	b	338 <memset+0xcc>
     314:	e51b300c 	ldr	r3, [fp, #-12]
     318:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     31c:	e5832000 	str	r2, [r3]
     320:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     324:	e2433004 	sub	r3, r3, #4
     328:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     32c:	e51b300c 	ldr	r3, [fp, #-12]
     330:	e2833004 	add	r3, r3, #4
     334:	e50b300c 	str	r3, [fp, #-12]
     338:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     33c:	e3530003 	cmp	r3, #3
     340:	8afffff3 	bhi	314 <memset+0xa8>
     344:	e51b300c 	ldr	r3, [fp, #-12]
     348:	e50b3008 	str	r3, [fp, #-8]
     34c:	ea000008 	b	374 <memset+0x108>
     350:	e51b3008 	ldr	r3, [fp, #-8]
     354:	e55b200d 	ldrb	r2, [fp, #-13]
     358:	e5c32000 	strb	r2, [r3]
     35c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     360:	e2433001 	sub	r3, r3, #1
     364:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	e2833001 	add	r3, r3, #1
     370:	e50b3008 	str	r3, [fp, #-8]
     374:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     378:	e3530000 	cmp	r3, #0
     37c:	1afffff3 	bne	350 <memset+0xe4>
     380:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     384:	e1a00003 	mov	r0, r3
     388:	e28bd000 	add	sp, fp, #0
     38c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     390:	e12fff1e 	bx	lr

00000394 <strchr>:
     394:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     398:	e28db000 	add	fp, sp, #0
     39c:	e24dd00c 	sub	sp, sp, #12
     3a0:	e50b0008 	str	r0, [fp, #-8]
     3a4:	e1a03001 	mov	r3, r1
     3a8:	e54b3009 	strb	r3, [fp, #-9]
     3ac:	ea000009 	b	3d8 <strchr+0x44>
     3b0:	e51b3008 	ldr	r3, [fp, #-8]
     3b4:	e5d33000 	ldrb	r3, [r3]
     3b8:	e55b2009 	ldrb	r2, [fp, #-9]
     3bc:	e1520003 	cmp	r2, r3
     3c0:	1a000001 	bne	3cc <strchr+0x38>
     3c4:	e51b3008 	ldr	r3, [fp, #-8]
     3c8:	ea000007 	b	3ec <strchr+0x58>
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e2833001 	add	r3, r3, #1
     3d4:	e50b3008 	str	r3, [fp, #-8]
     3d8:	e51b3008 	ldr	r3, [fp, #-8]
     3dc:	e5d33000 	ldrb	r3, [r3]
     3e0:	e3530000 	cmp	r3, #0
     3e4:	1afffff1 	bne	3b0 <strchr+0x1c>
     3e8:	e3a03000 	mov	r3, #0
     3ec:	e1a00003 	mov	r0, r3
     3f0:	e28bd000 	add	sp, fp, #0
     3f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3f8:	e12fff1e 	bx	lr

000003fc <gets>:
     3fc:	e92d4800 	push	{fp, lr}
     400:	e28db004 	add	fp, sp, #4
     404:	e24dd018 	sub	sp, sp, #24
     408:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     40c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     410:	e3a03000 	mov	r3, #0
     414:	e50b3008 	str	r3, [fp, #-8]
     418:	ea000016 	b	478 <gets+0x7c>
     41c:	e24b300d 	sub	r3, fp, #13
     420:	e3a02001 	mov	r2, #1
     424:	e1a01003 	mov	r1, r3
     428:	e3a00000 	mov	r0, #0
     42c:	eb00009b 	bl	6a0 <read>
     430:	e50b000c 	str	r0, [fp, #-12]
     434:	e51b300c 	ldr	r3, [fp, #-12]
     438:	e3530000 	cmp	r3, #0
     43c:	da000013 	ble	490 <gets+0x94>
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	e2832001 	add	r2, r3, #1
     448:	e50b2008 	str	r2, [fp, #-8]
     44c:	e1a02003 	mov	r2, r3
     450:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     454:	e0833002 	add	r3, r3, r2
     458:	e55b200d 	ldrb	r2, [fp, #-13]
     45c:	e5c32000 	strb	r2, [r3]
     460:	e55b300d 	ldrb	r3, [fp, #-13]
     464:	e353000a 	cmp	r3, #10
     468:	0a000009 	beq	494 <gets+0x98>
     46c:	e55b300d 	ldrb	r3, [fp, #-13]
     470:	e353000d 	cmp	r3, #13
     474:	0a000006 	beq	494 <gets+0x98>
     478:	e51b3008 	ldr	r3, [fp, #-8]
     47c:	e2833001 	add	r3, r3, #1
     480:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     484:	e1520003 	cmp	r2, r3
     488:	caffffe3 	bgt	41c <gets+0x20>
     48c:	ea000000 	b	494 <gets+0x98>
     490:	e1a00000 	nop			@ (mov r0, r0)
     494:	e51b3008 	ldr	r3, [fp, #-8]
     498:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     49c:	e0823003 	add	r3, r2, r3
     4a0:	e3a02000 	mov	r2, #0
     4a4:	e5c32000 	strb	r2, [r3]
     4a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4ac:	e1a00003 	mov	r0, r3
     4b0:	e24bd004 	sub	sp, fp, #4
     4b4:	e8bd8800 	pop	{fp, pc}

000004b8 <stat>:
     4b8:	e92d4800 	push	{fp, lr}
     4bc:	e28db004 	add	fp, sp, #4
     4c0:	e24dd010 	sub	sp, sp, #16
     4c4:	e50b0010 	str	r0, [fp, #-16]
     4c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4cc:	e3a01000 	mov	r1, #0
     4d0:	e51b0010 	ldr	r0, [fp, #-16]
     4d4:	eb00009e 	bl	754 <open>
     4d8:	e50b0008 	str	r0, [fp, #-8]
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e3530000 	cmp	r3, #0
     4e4:	aa000001 	bge	4f0 <stat+0x38>
     4e8:	e3e03000 	mvn	r3, #0
     4ec:	ea000006 	b	50c <stat+0x54>
     4f0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4f4:	e51b0008 	ldr	r0, [fp, #-8]
     4f8:	eb0000b0 	bl	7c0 <fstat>
     4fc:	e50b000c 	str	r0, [fp, #-12]
     500:	e51b0008 	ldr	r0, [fp, #-8]
     504:	eb000077 	bl	6e8 <close>
     508:	e51b300c 	ldr	r3, [fp, #-12]
     50c:	e1a00003 	mov	r0, r3
     510:	e24bd004 	sub	sp, fp, #4
     514:	e8bd8800 	pop	{fp, pc}

00000518 <atoi>:
     518:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     51c:	e28db000 	add	fp, sp, #0
     520:	e24dd014 	sub	sp, sp, #20
     524:	e50b0010 	str	r0, [fp, #-16]
     528:	e3a03000 	mov	r3, #0
     52c:	e50b3008 	str	r3, [fp, #-8]
     530:	ea00000c 	b	568 <atoi+0x50>
     534:	e51b2008 	ldr	r2, [fp, #-8]
     538:	e1a03002 	mov	r3, r2
     53c:	e1a03103 	lsl	r3, r3, #2
     540:	e0833002 	add	r3, r3, r2
     544:	e1a03083 	lsl	r3, r3, #1
     548:	e1a01003 	mov	r1, r3
     54c:	e51b3010 	ldr	r3, [fp, #-16]
     550:	e2832001 	add	r2, r3, #1
     554:	e50b2010 	str	r2, [fp, #-16]
     558:	e5d33000 	ldrb	r3, [r3]
     55c:	e0813003 	add	r3, r1, r3
     560:	e2433030 	sub	r3, r3, #48	@ 0x30
     564:	e50b3008 	str	r3, [fp, #-8]
     568:	e51b3010 	ldr	r3, [fp, #-16]
     56c:	e5d33000 	ldrb	r3, [r3]
     570:	e353002f 	cmp	r3, #47	@ 0x2f
     574:	9a000003 	bls	588 <atoi+0x70>
     578:	e51b3010 	ldr	r3, [fp, #-16]
     57c:	e5d33000 	ldrb	r3, [r3]
     580:	e3530039 	cmp	r3, #57	@ 0x39
     584:	9affffea 	bls	534 <atoi+0x1c>
     588:	e51b3008 	ldr	r3, [fp, #-8]
     58c:	e1a00003 	mov	r0, r3
     590:	e28bd000 	add	sp, fp, #0
     594:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     598:	e12fff1e 	bx	lr

0000059c <memmove>:
     59c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5a0:	e28db000 	add	fp, sp, #0
     5a4:	e24dd01c 	sub	sp, sp, #28
     5a8:	e50b0010 	str	r0, [fp, #-16]
     5ac:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5b0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5b4:	e51b3010 	ldr	r3, [fp, #-16]
     5b8:	e50b3008 	str	r3, [fp, #-8]
     5bc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5c0:	e50b300c 	str	r3, [fp, #-12]
     5c4:	ea000007 	b	5e8 <memmove+0x4c>
     5c8:	e51b200c 	ldr	r2, [fp, #-12]
     5cc:	e2823001 	add	r3, r2, #1
     5d0:	e50b300c 	str	r3, [fp, #-12]
     5d4:	e51b3008 	ldr	r3, [fp, #-8]
     5d8:	e2831001 	add	r1, r3, #1
     5dc:	e50b1008 	str	r1, [fp, #-8]
     5e0:	e5d22000 	ldrb	r2, [r2]
     5e4:	e5c32000 	strb	r2, [r3]
     5e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5ec:	e2432001 	sub	r2, r3, #1
     5f0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5f4:	e3530000 	cmp	r3, #0
     5f8:	cafffff2 	bgt	5c8 <memmove+0x2c>
     5fc:	e51b3010 	ldr	r3, [fp, #-16]
     600:	e1a00003 	mov	r0, r3
     604:	e28bd000 	add	sp, fp, #0
     608:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     60c:	e12fff1e 	bx	lr

00000610 <fork>:
     610:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     614:	e1a04003 	mov	r4, r3
     618:	e1a03002 	mov	r3, r2
     61c:	e1a02001 	mov	r2, r1
     620:	e1a01000 	mov	r1, r0
     624:	e3a00001 	mov	r0, #1
     628:	ef000000 	svc	0x00000000
     62c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     630:	e12fff1e 	bx	lr

00000634 <exit>:
     634:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     638:	e1a04003 	mov	r4, r3
     63c:	e1a03002 	mov	r3, r2
     640:	e1a02001 	mov	r2, r1
     644:	e1a01000 	mov	r1, r0
     648:	e3a00002 	mov	r0, #2
     64c:	ef000000 	svc	0x00000000
     650:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     654:	e12fff1e 	bx	lr

00000658 <wait>:
     658:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     65c:	e1a04003 	mov	r4, r3
     660:	e1a03002 	mov	r3, r2
     664:	e1a02001 	mov	r2, r1
     668:	e1a01000 	mov	r1, r0
     66c:	e3a00003 	mov	r0, #3
     670:	ef000000 	svc	0x00000000
     674:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     678:	e12fff1e 	bx	lr

0000067c <pipe>:
     67c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     680:	e1a04003 	mov	r4, r3
     684:	e1a03002 	mov	r3, r2
     688:	e1a02001 	mov	r2, r1
     68c:	e1a01000 	mov	r1, r0
     690:	e3a00004 	mov	r0, #4
     694:	ef000000 	svc	0x00000000
     698:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     69c:	e12fff1e 	bx	lr

000006a0 <read>:
     6a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a4:	e1a04003 	mov	r4, r3
     6a8:	e1a03002 	mov	r3, r2
     6ac:	e1a02001 	mov	r2, r1
     6b0:	e1a01000 	mov	r1, r0
     6b4:	e3a00005 	mov	r0, #5
     6b8:	ef000000 	svc	0x00000000
     6bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c0:	e12fff1e 	bx	lr

000006c4 <write>:
     6c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6c8:	e1a04003 	mov	r4, r3
     6cc:	e1a03002 	mov	r3, r2
     6d0:	e1a02001 	mov	r2, r1
     6d4:	e1a01000 	mov	r1, r0
     6d8:	e3a00010 	mov	r0, #16
     6dc:	ef000000 	svc	0x00000000
     6e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e4:	e12fff1e 	bx	lr

000006e8 <close>:
     6e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6ec:	e1a04003 	mov	r4, r3
     6f0:	e1a03002 	mov	r3, r2
     6f4:	e1a02001 	mov	r2, r1
     6f8:	e1a01000 	mov	r1, r0
     6fc:	e3a00015 	mov	r0, #21
     700:	ef000000 	svc	0x00000000
     704:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     708:	e12fff1e 	bx	lr

0000070c <kill>:
     70c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     710:	e1a04003 	mov	r4, r3
     714:	e1a03002 	mov	r3, r2
     718:	e1a02001 	mov	r2, r1
     71c:	e1a01000 	mov	r1, r0
     720:	e3a00006 	mov	r0, #6
     724:	ef000000 	svc	0x00000000
     728:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     72c:	e12fff1e 	bx	lr

00000730 <exec>:
     730:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     734:	e1a04003 	mov	r4, r3
     738:	e1a03002 	mov	r3, r2
     73c:	e1a02001 	mov	r2, r1
     740:	e1a01000 	mov	r1, r0
     744:	e3a00007 	mov	r0, #7
     748:	ef000000 	svc	0x00000000
     74c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     750:	e12fff1e 	bx	lr

00000754 <open>:
     754:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     758:	e1a04003 	mov	r4, r3
     75c:	e1a03002 	mov	r3, r2
     760:	e1a02001 	mov	r2, r1
     764:	e1a01000 	mov	r1, r0
     768:	e3a0000f 	mov	r0, #15
     76c:	ef000000 	svc	0x00000000
     770:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     774:	e12fff1e 	bx	lr

00000778 <mknod>:
     778:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     77c:	e1a04003 	mov	r4, r3
     780:	e1a03002 	mov	r3, r2
     784:	e1a02001 	mov	r2, r1
     788:	e1a01000 	mov	r1, r0
     78c:	e3a00011 	mov	r0, #17
     790:	ef000000 	svc	0x00000000
     794:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     798:	e12fff1e 	bx	lr

0000079c <unlink>:
     79c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a0:	e1a04003 	mov	r4, r3
     7a4:	e1a03002 	mov	r3, r2
     7a8:	e1a02001 	mov	r2, r1
     7ac:	e1a01000 	mov	r1, r0
     7b0:	e3a00012 	mov	r0, #18
     7b4:	ef000000 	svc	0x00000000
     7b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7bc:	e12fff1e 	bx	lr

000007c0 <fstat>:
     7c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c4:	e1a04003 	mov	r4, r3
     7c8:	e1a03002 	mov	r3, r2
     7cc:	e1a02001 	mov	r2, r1
     7d0:	e1a01000 	mov	r1, r0
     7d4:	e3a00008 	mov	r0, #8
     7d8:	ef000000 	svc	0x00000000
     7dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e0:	e12fff1e 	bx	lr

000007e4 <link>:
     7e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e8:	e1a04003 	mov	r4, r3
     7ec:	e1a03002 	mov	r3, r2
     7f0:	e1a02001 	mov	r2, r1
     7f4:	e1a01000 	mov	r1, r0
     7f8:	e3a00013 	mov	r0, #19
     7fc:	ef000000 	svc	0x00000000
     800:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     804:	e12fff1e 	bx	lr

00000808 <mkdir>:
     808:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     80c:	e1a04003 	mov	r4, r3
     810:	e1a03002 	mov	r3, r2
     814:	e1a02001 	mov	r2, r1
     818:	e1a01000 	mov	r1, r0
     81c:	e3a00014 	mov	r0, #20
     820:	ef000000 	svc	0x00000000
     824:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     828:	e12fff1e 	bx	lr

0000082c <chdir>:
     82c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     830:	e1a04003 	mov	r4, r3
     834:	e1a03002 	mov	r3, r2
     838:	e1a02001 	mov	r2, r1
     83c:	e1a01000 	mov	r1, r0
     840:	e3a00009 	mov	r0, #9
     844:	ef000000 	svc	0x00000000
     848:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     84c:	e12fff1e 	bx	lr

00000850 <dup>:
     850:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     854:	e1a04003 	mov	r4, r3
     858:	e1a03002 	mov	r3, r2
     85c:	e1a02001 	mov	r2, r1
     860:	e1a01000 	mov	r1, r0
     864:	e3a0000a 	mov	r0, #10
     868:	ef000000 	svc	0x00000000
     86c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     870:	e12fff1e 	bx	lr

00000874 <getpid>:
     874:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     878:	e1a04003 	mov	r4, r3
     87c:	e1a03002 	mov	r3, r2
     880:	e1a02001 	mov	r2, r1
     884:	e1a01000 	mov	r1, r0
     888:	e3a0000b 	mov	r0, #11
     88c:	ef000000 	svc	0x00000000
     890:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     894:	e12fff1e 	bx	lr

00000898 <sbrk>:
     898:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     89c:	e1a04003 	mov	r4, r3
     8a0:	e1a03002 	mov	r3, r2
     8a4:	e1a02001 	mov	r2, r1
     8a8:	e1a01000 	mov	r1, r0
     8ac:	e3a0000c 	mov	r0, #12
     8b0:	ef000000 	svc	0x00000000
     8b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b8:	e12fff1e 	bx	lr

000008bc <sleep>:
     8bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c0:	e1a04003 	mov	r4, r3
     8c4:	e1a03002 	mov	r3, r2
     8c8:	e1a02001 	mov	r2, r1
     8cc:	e1a01000 	mov	r1, r0
     8d0:	e3a0000d 	mov	r0, #13
     8d4:	ef000000 	svc	0x00000000
     8d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8dc:	e12fff1e 	bx	lr

000008e0 <uptime>:
     8e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e4:	e1a04003 	mov	r4, r3
     8e8:	e1a03002 	mov	r3, r2
     8ec:	e1a02001 	mov	r2, r1
     8f0:	e1a01000 	mov	r1, r0
     8f4:	e3a0000e 	mov	r0, #14
     8f8:	ef000000 	svc	0x00000000
     8fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     900:	e12fff1e 	bx	lr

00000904 <pgpte>:
     904:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     908:	e1a04003 	mov	r4, r3
     90c:	e1a03002 	mov	r3, r2
     910:	e1a02001 	mov	r2, r1
     914:	e1a01000 	mov	r1, r0
     918:	e3a00016 	mov	r0, #22
     91c:	ef000000 	svc	0x00000000
     920:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     924:	e12fff1e 	bx	lr

00000928 <kpt>:
     928:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     92c:	e1a04003 	mov	r4, r3
     930:	e1a03002 	mov	r3, r2
     934:	e1a02001 	mov	r2, r1
     938:	e1a01000 	mov	r1, r0
     93c:	e3a00017 	mov	r0, #23
     940:	ef000000 	svc	0x00000000
     944:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     948:	e12fff1e 	bx	lr

0000094c <ugetpid>:
     94c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     950:	e1a04003 	mov	r4, r3
     954:	e1a03002 	mov	r3, r2
     958:	e1a02001 	mov	r2, r1
     95c:	e1a01000 	mov	r1, r0
     960:	e3a00018 	mov	r0, #24
     964:	ef000000 	svc	0x00000000
     968:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     96c:	e12fff1e 	bx	lr

00000970 <putc>:
     970:	e92d4800 	push	{fp, lr}
     974:	e28db004 	add	fp, sp, #4
     978:	e24dd008 	sub	sp, sp, #8
     97c:	e50b0008 	str	r0, [fp, #-8]
     980:	e1a03001 	mov	r3, r1
     984:	e54b3009 	strb	r3, [fp, #-9]
     988:	e24b3009 	sub	r3, fp, #9
     98c:	e3a02001 	mov	r2, #1
     990:	e1a01003 	mov	r1, r3
     994:	e51b0008 	ldr	r0, [fp, #-8]
     998:	ebffff49 	bl	6c4 <write>
     99c:	e1a00000 	nop			@ (mov r0, r0)
     9a0:	e24bd004 	sub	sp, fp, #4
     9a4:	e8bd8800 	pop	{fp, pc}

000009a8 <printint>:
     9a8:	e92d4800 	push	{fp, lr}
     9ac:	e28db004 	add	fp, sp, #4
     9b0:	e24dd030 	sub	sp, sp, #48	@ 0x30
     9b4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     9b8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     9bc:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     9c0:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     9c4:	e3a03000 	mov	r3, #0
     9c8:	e50b300c 	str	r3, [fp, #-12]
     9cc:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     9d0:	e3530000 	cmp	r3, #0
     9d4:	0a000008 	beq	9fc <printint+0x54>
     9d8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9dc:	e3530000 	cmp	r3, #0
     9e0:	aa000005 	bge	9fc <printint+0x54>
     9e4:	e3a03001 	mov	r3, #1
     9e8:	e50b300c 	str	r3, [fp, #-12]
     9ec:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9f0:	e2633000 	rsb	r3, r3, #0
     9f4:	e50b3010 	str	r3, [fp, #-16]
     9f8:	ea000001 	b	a04 <printint+0x5c>
     9fc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a00:	e50b3010 	str	r3, [fp, #-16]
     a04:	e3a03000 	mov	r3, #0
     a08:	e50b3008 	str	r3, [fp, #-8]
     a0c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a10:	e51b3010 	ldr	r3, [fp, #-16]
     a14:	e1a01002 	mov	r1, r2
     a18:	e1a00003 	mov	r0, r3
     a1c:	eb0001d5 	bl	1178 <__aeabi_uidivmod>
     a20:	e1a03001 	mov	r3, r1
     a24:	e1a01003 	mov	r1, r3
     a28:	e51b3008 	ldr	r3, [fp, #-8]
     a2c:	e2832001 	add	r2, r3, #1
     a30:	e50b2008 	str	r2, [fp, #-8]
     a34:	e59f20a0 	ldr	r2, [pc, #160]	@ adc <printint+0x134>
     a38:	e7d22001 	ldrb	r2, [r2, r1]
     a3c:	e2433004 	sub	r3, r3, #4
     a40:	e083300b 	add	r3, r3, fp
     a44:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a48:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a4c:	e1a01003 	mov	r1, r3
     a50:	e51b0010 	ldr	r0, [fp, #-16]
     a54:	eb00018a 	bl	1084 <__udivsi3>
     a58:	e1a03000 	mov	r3, r0
     a5c:	e50b3010 	str	r3, [fp, #-16]
     a60:	e51b3010 	ldr	r3, [fp, #-16]
     a64:	e3530000 	cmp	r3, #0
     a68:	1affffe7 	bne	a0c <printint+0x64>
     a6c:	e51b300c 	ldr	r3, [fp, #-12]
     a70:	e3530000 	cmp	r3, #0
     a74:	0a00000e 	beq	ab4 <printint+0x10c>
     a78:	e51b3008 	ldr	r3, [fp, #-8]
     a7c:	e2832001 	add	r2, r3, #1
     a80:	e50b2008 	str	r2, [fp, #-8]
     a84:	e2433004 	sub	r3, r3, #4
     a88:	e083300b 	add	r3, r3, fp
     a8c:	e3a0202d 	mov	r2, #45	@ 0x2d
     a90:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a94:	ea000006 	b	ab4 <printint+0x10c>
     a98:	e24b2020 	sub	r2, fp, #32
     a9c:	e51b3008 	ldr	r3, [fp, #-8]
     aa0:	e0823003 	add	r3, r2, r3
     aa4:	e5d33000 	ldrb	r3, [r3]
     aa8:	e1a01003 	mov	r1, r3
     aac:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     ab0:	ebffffae 	bl	970 <putc>
     ab4:	e51b3008 	ldr	r3, [fp, #-8]
     ab8:	e2433001 	sub	r3, r3, #1
     abc:	e50b3008 	str	r3, [fp, #-8]
     ac0:	e51b3008 	ldr	r3, [fp, #-8]
     ac4:	e3530000 	cmp	r3, #0
     ac8:	aafffff2 	bge	a98 <printint+0xf0>
     acc:	e1a00000 	nop			@ (mov r0, r0)
     ad0:	e1a00000 	nop			@ (mov r0, r0)
     ad4:	e24bd004 	sub	sp, fp, #4
     ad8:	e8bd8800 	pop	{fp, pc}
     adc:	000011d0 	.word	0x000011d0

00000ae0 <printf>:
     ae0:	e92d000e 	push	{r1, r2, r3}
     ae4:	e92d4800 	push	{fp, lr}
     ae8:	e28db004 	add	fp, sp, #4
     aec:	e24dd024 	sub	sp, sp, #36	@ 0x24
     af0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     af4:	e3a03000 	mov	r3, #0
     af8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     afc:	e28b3008 	add	r3, fp, #8
     b00:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b04:	e3a03000 	mov	r3, #0
     b08:	e50b3010 	str	r3, [fp, #-16]
     b0c:	ea000074 	b	ce4 <printf+0x204>
     b10:	e59b2004 	ldr	r2, [fp, #4]
     b14:	e51b3010 	ldr	r3, [fp, #-16]
     b18:	e0823003 	add	r3, r2, r3
     b1c:	e5d33000 	ldrb	r3, [r3]
     b20:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b24:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b28:	e3530000 	cmp	r3, #0
     b2c:	1a00000b 	bne	b60 <printf+0x80>
     b30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b34:	e3530025 	cmp	r3, #37	@ 0x25
     b38:	1a000002 	bne	b48 <printf+0x68>
     b3c:	e3a03025 	mov	r3, #37	@ 0x25
     b40:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b44:	ea000063 	b	cd8 <printf+0x1f8>
     b48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b4c:	e6ef3073 	uxtb	r3, r3
     b50:	e1a01003 	mov	r1, r3
     b54:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b58:	ebffff84 	bl	970 <putc>
     b5c:	ea00005d 	b	cd8 <printf+0x1f8>
     b60:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b64:	e3530025 	cmp	r3, #37	@ 0x25
     b68:	1a00005a 	bne	cd8 <printf+0x1f8>
     b6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b70:	e3530064 	cmp	r3, #100	@ 0x64
     b74:	1a00000a 	bne	ba4 <printf+0xc4>
     b78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b7c:	e5933000 	ldr	r3, [r3]
     b80:	e1a01003 	mov	r1, r3
     b84:	e3a03001 	mov	r3, #1
     b88:	e3a0200a 	mov	r2, #10
     b8c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b90:	ebffff84 	bl	9a8 <printint>
     b94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b98:	e2833004 	add	r3, r3, #4
     b9c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ba0:	ea00004a 	b	cd0 <printf+0x1f0>
     ba4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ba8:	e3530078 	cmp	r3, #120	@ 0x78
     bac:	0a000002 	beq	bbc <printf+0xdc>
     bb0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bb4:	e3530070 	cmp	r3, #112	@ 0x70
     bb8:	1a00000a 	bne	be8 <printf+0x108>
     bbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bc0:	e5933000 	ldr	r3, [r3]
     bc4:	e1a01003 	mov	r1, r3
     bc8:	e3a03000 	mov	r3, #0
     bcc:	e3a02010 	mov	r2, #16
     bd0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bd4:	ebffff73 	bl	9a8 <printint>
     bd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bdc:	e2833004 	add	r3, r3, #4
     be0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     be4:	ea000039 	b	cd0 <printf+0x1f0>
     be8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bec:	e3530073 	cmp	r3, #115	@ 0x73
     bf0:	1a000018 	bne	c58 <printf+0x178>
     bf4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bf8:	e5933000 	ldr	r3, [r3]
     bfc:	e50b300c 	str	r3, [fp, #-12]
     c00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c04:	e2833004 	add	r3, r3, #4
     c08:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c0c:	e51b300c 	ldr	r3, [fp, #-12]
     c10:	e3530000 	cmp	r3, #0
     c14:	1a00000a 	bne	c44 <printf+0x164>
     c18:	e59f30f4 	ldr	r3, [pc, #244]	@ d14 <printf+0x234>
     c1c:	e50b300c 	str	r3, [fp, #-12]
     c20:	ea000007 	b	c44 <printf+0x164>
     c24:	e51b300c 	ldr	r3, [fp, #-12]
     c28:	e5d33000 	ldrb	r3, [r3]
     c2c:	e1a01003 	mov	r1, r3
     c30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c34:	ebffff4d 	bl	970 <putc>
     c38:	e51b300c 	ldr	r3, [fp, #-12]
     c3c:	e2833001 	add	r3, r3, #1
     c40:	e50b300c 	str	r3, [fp, #-12]
     c44:	e51b300c 	ldr	r3, [fp, #-12]
     c48:	e5d33000 	ldrb	r3, [r3]
     c4c:	e3530000 	cmp	r3, #0
     c50:	1afffff3 	bne	c24 <printf+0x144>
     c54:	ea00001d 	b	cd0 <printf+0x1f0>
     c58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c5c:	e3530063 	cmp	r3, #99	@ 0x63
     c60:	1a000009 	bne	c8c <printf+0x1ac>
     c64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c68:	e5933000 	ldr	r3, [r3]
     c6c:	e6ef3073 	uxtb	r3, r3
     c70:	e1a01003 	mov	r1, r3
     c74:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c78:	ebffff3c 	bl	970 <putc>
     c7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c80:	e2833004 	add	r3, r3, #4
     c84:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c88:	ea000010 	b	cd0 <printf+0x1f0>
     c8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c90:	e3530025 	cmp	r3, #37	@ 0x25
     c94:	1a000005 	bne	cb0 <printf+0x1d0>
     c98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c9c:	e6ef3073 	uxtb	r3, r3
     ca0:	e1a01003 	mov	r1, r3
     ca4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ca8:	ebffff30 	bl	970 <putc>
     cac:	ea000007 	b	cd0 <printf+0x1f0>
     cb0:	e3a01025 	mov	r1, #37	@ 0x25
     cb4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cb8:	ebffff2c 	bl	970 <putc>
     cbc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cc0:	e6ef3073 	uxtb	r3, r3
     cc4:	e1a01003 	mov	r1, r3
     cc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ccc:	ebffff27 	bl	970 <putc>
     cd0:	e3a03000 	mov	r3, #0
     cd4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cd8:	e51b3010 	ldr	r3, [fp, #-16]
     cdc:	e2833001 	add	r3, r3, #1
     ce0:	e50b3010 	str	r3, [fp, #-16]
     ce4:	e59b2004 	ldr	r2, [fp, #4]
     ce8:	e51b3010 	ldr	r3, [fp, #-16]
     cec:	e0823003 	add	r3, r2, r3
     cf0:	e5d33000 	ldrb	r3, [r3]
     cf4:	e3530000 	cmp	r3, #0
     cf8:	1affff84 	bne	b10 <printf+0x30>
     cfc:	e1a00000 	nop			@ (mov r0, r0)
     d00:	e1a00000 	nop			@ (mov r0, r0)
     d04:	e24bd004 	sub	sp, fp, #4
     d08:	e8bd4800 	pop	{fp, lr}
     d0c:	e28dd00c 	add	sp, sp, #12
     d10:	e12fff1e 	bx	lr
     d14:	000011c8 	.word	0x000011c8

00000d18 <free>:
     d18:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d1c:	e28db000 	add	fp, sp, #0
     d20:	e24dd014 	sub	sp, sp, #20
     d24:	e50b0010 	str	r0, [fp, #-16]
     d28:	e51b3010 	ldr	r3, [fp, #-16]
     d2c:	e2433008 	sub	r3, r3, #8
     d30:	e50b300c 	str	r3, [fp, #-12]
     d34:	e59f3154 	ldr	r3, [pc, #340]	@ e90 <free+0x178>
     d38:	e5933000 	ldr	r3, [r3]
     d3c:	e50b3008 	str	r3, [fp, #-8]
     d40:	ea000010 	b	d88 <free+0x70>
     d44:	e51b3008 	ldr	r3, [fp, #-8]
     d48:	e5933000 	ldr	r3, [r3]
     d4c:	e51b2008 	ldr	r2, [fp, #-8]
     d50:	e1520003 	cmp	r2, r3
     d54:	3a000008 	bcc	d7c <free+0x64>
     d58:	e51b200c 	ldr	r2, [fp, #-12]
     d5c:	e51b3008 	ldr	r3, [fp, #-8]
     d60:	e1520003 	cmp	r2, r3
     d64:	8a000010 	bhi	dac <free+0x94>
     d68:	e51b3008 	ldr	r3, [fp, #-8]
     d6c:	e5933000 	ldr	r3, [r3]
     d70:	e51b200c 	ldr	r2, [fp, #-12]
     d74:	e1520003 	cmp	r2, r3
     d78:	3a00000b 	bcc	dac <free+0x94>
     d7c:	e51b3008 	ldr	r3, [fp, #-8]
     d80:	e5933000 	ldr	r3, [r3]
     d84:	e50b3008 	str	r3, [fp, #-8]
     d88:	e51b200c 	ldr	r2, [fp, #-12]
     d8c:	e51b3008 	ldr	r3, [fp, #-8]
     d90:	e1520003 	cmp	r2, r3
     d94:	9affffea 	bls	d44 <free+0x2c>
     d98:	e51b3008 	ldr	r3, [fp, #-8]
     d9c:	e5933000 	ldr	r3, [r3]
     da0:	e51b200c 	ldr	r2, [fp, #-12]
     da4:	e1520003 	cmp	r2, r3
     da8:	2affffe5 	bcs	d44 <free+0x2c>
     dac:	e51b300c 	ldr	r3, [fp, #-12]
     db0:	e5933004 	ldr	r3, [r3, #4]
     db4:	e1a03183 	lsl	r3, r3, #3
     db8:	e51b200c 	ldr	r2, [fp, #-12]
     dbc:	e0822003 	add	r2, r2, r3
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e5933000 	ldr	r3, [r3]
     dc8:	e1520003 	cmp	r2, r3
     dcc:	1a00000d 	bne	e08 <free+0xf0>
     dd0:	e51b300c 	ldr	r3, [fp, #-12]
     dd4:	e5932004 	ldr	r2, [r3, #4]
     dd8:	e51b3008 	ldr	r3, [fp, #-8]
     ddc:	e5933000 	ldr	r3, [r3]
     de0:	e5933004 	ldr	r3, [r3, #4]
     de4:	e0822003 	add	r2, r2, r3
     de8:	e51b300c 	ldr	r3, [fp, #-12]
     dec:	e5832004 	str	r2, [r3, #4]
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e5933000 	ldr	r3, [r3]
     df8:	e5932000 	ldr	r2, [r3]
     dfc:	e51b300c 	ldr	r3, [fp, #-12]
     e00:	e5832000 	str	r2, [r3]
     e04:	ea000003 	b	e18 <free+0x100>
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e5932000 	ldr	r2, [r3]
     e10:	e51b300c 	ldr	r3, [fp, #-12]
     e14:	e5832000 	str	r2, [r3]
     e18:	e51b3008 	ldr	r3, [fp, #-8]
     e1c:	e5933004 	ldr	r3, [r3, #4]
     e20:	e1a03183 	lsl	r3, r3, #3
     e24:	e51b2008 	ldr	r2, [fp, #-8]
     e28:	e0823003 	add	r3, r2, r3
     e2c:	e51b200c 	ldr	r2, [fp, #-12]
     e30:	e1520003 	cmp	r2, r3
     e34:	1a00000b 	bne	e68 <free+0x150>
     e38:	e51b3008 	ldr	r3, [fp, #-8]
     e3c:	e5932004 	ldr	r2, [r3, #4]
     e40:	e51b300c 	ldr	r3, [fp, #-12]
     e44:	e5933004 	ldr	r3, [r3, #4]
     e48:	e0822003 	add	r2, r2, r3
     e4c:	e51b3008 	ldr	r3, [fp, #-8]
     e50:	e5832004 	str	r2, [r3, #4]
     e54:	e51b300c 	ldr	r3, [fp, #-12]
     e58:	e5932000 	ldr	r2, [r3]
     e5c:	e51b3008 	ldr	r3, [fp, #-8]
     e60:	e5832000 	str	r2, [r3]
     e64:	ea000002 	b	e74 <free+0x15c>
     e68:	e51b3008 	ldr	r3, [fp, #-8]
     e6c:	e51b200c 	ldr	r2, [fp, #-12]
     e70:	e5832000 	str	r2, [r3]
     e74:	e59f2014 	ldr	r2, [pc, #20]	@ e90 <free+0x178>
     e78:	e51b3008 	ldr	r3, [fp, #-8]
     e7c:	e5823000 	str	r3, [r2]
     e80:	e1a00000 	nop			@ (mov r0, r0)
     e84:	e28bd000 	add	sp, fp, #0
     e88:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e8c:	e12fff1e 	bx	lr
     e90:	000013ec 	.word	0x000013ec

00000e94 <morecore>:
     e94:	e92d4800 	push	{fp, lr}
     e98:	e28db004 	add	fp, sp, #4
     e9c:	e24dd010 	sub	sp, sp, #16
     ea0:	e50b0010 	str	r0, [fp, #-16]
     ea4:	e51b3010 	ldr	r3, [fp, #-16]
     ea8:	e3530a01 	cmp	r3, #4096	@ 0x1000
     eac:	2a000001 	bcs	eb8 <morecore+0x24>
     eb0:	e3a03a01 	mov	r3, #4096	@ 0x1000
     eb4:	e50b3010 	str	r3, [fp, #-16]
     eb8:	e51b3010 	ldr	r3, [fp, #-16]
     ebc:	e1a03183 	lsl	r3, r3, #3
     ec0:	e1a00003 	mov	r0, r3
     ec4:	ebfffe73 	bl	898 <sbrk>
     ec8:	e50b0008 	str	r0, [fp, #-8]
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e3730001 	cmn	r3, #1
     ed4:	1a000001 	bne	ee0 <morecore+0x4c>
     ed8:	e3a03000 	mov	r3, #0
     edc:	ea00000a 	b	f0c <morecore+0x78>
     ee0:	e51b3008 	ldr	r3, [fp, #-8]
     ee4:	e50b300c 	str	r3, [fp, #-12]
     ee8:	e51b300c 	ldr	r3, [fp, #-12]
     eec:	e51b2010 	ldr	r2, [fp, #-16]
     ef0:	e5832004 	str	r2, [r3, #4]
     ef4:	e51b300c 	ldr	r3, [fp, #-12]
     ef8:	e2833008 	add	r3, r3, #8
     efc:	e1a00003 	mov	r0, r3
     f00:	ebffff84 	bl	d18 <free>
     f04:	e59f300c 	ldr	r3, [pc, #12]	@ f18 <morecore+0x84>
     f08:	e5933000 	ldr	r3, [r3]
     f0c:	e1a00003 	mov	r0, r3
     f10:	e24bd004 	sub	sp, fp, #4
     f14:	e8bd8800 	pop	{fp, pc}
     f18:	000013ec 	.word	0x000013ec

00000f1c <malloc>:
     f1c:	e92d4800 	push	{fp, lr}
     f20:	e28db004 	add	fp, sp, #4
     f24:	e24dd018 	sub	sp, sp, #24
     f28:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f30:	e2833007 	add	r3, r3, #7
     f34:	e1a031a3 	lsr	r3, r3, #3
     f38:	e2833001 	add	r3, r3, #1
     f3c:	e50b3010 	str	r3, [fp, #-16]
     f40:	e59f3134 	ldr	r3, [pc, #308]	@ 107c <malloc+0x160>
     f44:	e5933000 	ldr	r3, [r3]
     f48:	e50b300c 	str	r3, [fp, #-12]
     f4c:	e51b300c 	ldr	r3, [fp, #-12]
     f50:	e3530000 	cmp	r3, #0
     f54:	1a00000b 	bne	f88 <malloc+0x6c>
     f58:	e59f3120 	ldr	r3, [pc, #288]	@ 1080 <malloc+0x164>
     f5c:	e50b300c 	str	r3, [fp, #-12]
     f60:	e59f2114 	ldr	r2, [pc, #276]	@ 107c <malloc+0x160>
     f64:	e51b300c 	ldr	r3, [fp, #-12]
     f68:	e5823000 	str	r3, [r2]
     f6c:	e59f3108 	ldr	r3, [pc, #264]	@ 107c <malloc+0x160>
     f70:	e5933000 	ldr	r3, [r3]
     f74:	e59f2104 	ldr	r2, [pc, #260]	@ 1080 <malloc+0x164>
     f78:	e5823000 	str	r3, [r2]
     f7c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1080 <malloc+0x164>
     f80:	e3a02000 	mov	r2, #0
     f84:	e5832004 	str	r2, [r3, #4]
     f88:	e51b300c 	ldr	r3, [fp, #-12]
     f8c:	e5933000 	ldr	r3, [r3]
     f90:	e50b3008 	str	r3, [fp, #-8]
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e5933004 	ldr	r3, [r3, #4]
     f9c:	e51b2010 	ldr	r2, [fp, #-16]
     fa0:	e1520003 	cmp	r2, r3
     fa4:	8a00001e 	bhi	1024 <malloc+0x108>
     fa8:	e51b3008 	ldr	r3, [fp, #-8]
     fac:	e5933004 	ldr	r3, [r3, #4]
     fb0:	e51b2010 	ldr	r2, [fp, #-16]
     fb4:	e1520003 	cmp	r2, r3
     fb8:	1a000004 	bne	fd0 <malloc+0xb4>
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e5932000 	ldr	r2, [r3]
     fc4:	e51b300c 	ldr	r3, [fp, #-12]
     fc8:	e5832000 	str	r2, [r3]
     fcc:	ea00000e 	b	100c <malloc+0xf0>
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e5932004 	ldr	r2, [r3, #4]
     fd8:	e51b3010 	ldr	r3, [fp, #-16]
     fdc:	e0422003 	sub	r2, r2, r3
     fe0:	e51b3008 	ldr	r3, [fp, #-8]
     fe4:	e5832004 	str	r2, [r3, #4]
     fe8:	e51b3008 	ldr	r3, [fp, #-8]
     fec:	e5933004 	ldr	r3, [r3, #4]
     ff0:	e1a03183 	lsl	r3, r3, #3
     ff4:	e51b2008 	ldr	r2, [fp, #-8]
     ff8:	e0823003 	add	r3, r2, r3
     ffc:	e50b3008 	str	r3, [fp, #-8]
    1000:	e51b3008 	ldr	r3, [fp, #-8]
    1004:	e51b2010 	ldr	r2, [fp, #-16]
    1008:	e5832004 	str	r2, [r3, #4]
    100c:	e59f2068 	ldr	r2, [pc, #104]	@ 107c <malloc+0x160>
    1010:	e51b300c 	ldr	r3, [fp, #-12]
    1014:	e5823000 	str	r3, [r2]
    1018:	e51b3008 	ldr	r3, [fp, #-8]
    101c:	e2833008 	add	r3, r3, #8
    1020:	ea000012 	b	1070 <malloc+0x154>
    1024:	e59f3050 	ldr	r3, [pc, #80]	@ 107c <malloc+0x160>
    1028:	e5933000 	ldr	r3, [r3]
    102c:	e51b2008 	ldr	r2, [fp, #-8]
    1030:	e1520003 	cmp	r2, r3
    1034:	1a000007 	bne	1058 <malloc+0x13c>
    1038:	e51b0010 	ldr	r0, [fp, #-16]
    103c:	ebffff94 	bl	e94 <morecore>
    1040:	e50b0008 	str	r0, [fp, #-8]
    1044:	e51b3008 	ldr	r3, [fp, #-8]
    1048:	e3530000 	cmp	r3, #0
    104c:	1a000001 	bne	1058 <malloc+0x13c>
    1050:	e3a03000 	mov	r3, #0
    1054:	ea000005 	b	1070 <malloc+0x154>
    1058:	e51b3008 	ldr	r3, [fp, #-8]
    105c:	e50b300c 	str	r3, [fp, #-12]
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e5933000 	ldr	r3, [r3]
    1068:	e50b3008 	str	r3, [fp, #-8]
    106c:	eaffffc8 	b	f94 <malloc+0x78>
    1070:	e1a00003 	mov	r0, r3
    1074:	e24bd004 	sub	sp, fp, #4
    1078:	e8bd8800 	pop	{fp, pc}
    107c:	000013ec 	.word	0x000013ec
    1080:	000013e4 	.word	0x000013e4

00001084 <__udivsi3>:
    1084:	e2512001 	subs	r2, r1, #1
    1088:	012fff1e 	bxeq	lr
    108c:	3a000036 	bcc	116c <__udivsi3+0xe8>
    1090:	e1500001 	cmp	r0, r1
    1094:	9a000022 	bls	1124 <__udivsi3+0xa0>
    1098:	e1110002 	tst	r1, r2
    109c:	0a000023 	beq	1130 <__udivsi3+0xac>
    10a0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    10a4:	01a01181 	lsleq	r1, r1, #3
    10a8:	03a03008 	moveq	r3, #8
    10ac:	13a03001 	movne	r3, #1
    10b0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    10b4:	31510000 	cmpcc	r1, r0
    10b8:	31a01201 	lslcc	r1, r1, #4
    10bc:	31a03203 	lslcc	r3, r3, #4
    10c0:	3afffffa 	bcc	10b0 <__udivsi3+0x2c>
    10c4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    10c8:	31510000 	cmpcc	r1, r0
    10cc:	31a01081 	lslcc	r1, r1, #1
    10d0:	31a03083 	lslcc	r3, r3, #1
    10d4:	3afffffa 	bcc	10c4 <__udivsi3+0x40>
    10d8:	e3a02000 	mov	r2, #0
    10dc:	e1500001 	cmp	r0, r1
    10e0:	20400001 	subcs	r0, r0, r1
    10e4:	21822003 	orrcs	r2, r2, r3
    10e8:	e15000a1 	cmp	r0, r1, lsr #1
    10ec:	204000a1 	subcs	r0, r0, r1, lsr #1
    10f0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10f4:	e1500121 	cmp	r0, r1, lsr #2
    10f8:	20400121 	subcs	r0, r0, r1, lsr #2
    10fc:	21822123 	orrcs	r2, r2, r3, lsr #2
    1100:	e15001a1 	cmp	r0, r1, lsr #3
    1104:	204001a1 	subcs	r0, r0, r1, lsr #3
    1108:	218221a3 	orrcs	r2, r2, r3, lsr #3
    110c:	e3500000 	cmp	r0, #0
    1110:	11b03223 	lsrsne	r3, r3, #4
    1114:	11a01221 	lsrne	r1, r1, #4
    1118:	1affffef 	bne	10dc <__udivsi3+0x58>
    111c:	e1a00002 	mov	r0, r2
    1120:	e12fff1e 	bx	lr
    1124:	03a00001 	moveq	r0, #1
    1128:	13a00000 	movne	r0, #0
    112c:	e12fff1e 	bx	lr
    1130:	e3510801 	cmp	r1, #65536	@ 0x10000
    1134:	21a01821 	lsrcs	r1, r1, #16
    1138:	23a02010 	movcs	r2, #16
    113c:	33a02000 	movcc	r2, #0
    1140:	e3510c01 	cmp	r1, #256	@ 0x100
    1144:	21a01421 	lsrcs	r1, r1, #8
    1148:	22822008 	addcs	r2, r2, #8
    114c:	e3510010 	cmp	r1, #16
    1150:	21a01221 	lsrcs	r1, r1, #4
    1154:	22822004 	addcs	r2, r2, #4
    1158:	e3510004 	cmp	r1, #4
    115c:	82822003 	addhi	r2, r2, #3
    1160:	908220a1 	addls	r2, r2, r1, lsr #1
    1164:	e1a00230 	lsr	r0, r0, r2
    1168:	e12fff1e 	bx	lr
    116c:	e3500000 	cmp	r0, #0
    1170:	13e00000 	mvnne	r0, #0
    1174:	ea000007 	b	1198 <__aeabi_idiv0>

00001178 <__aeabi_uidivmod>:
    1178:	e3510000 	cmp	r1, #0
    117c:	0afffffa 	beq	116c <__udivsi3+0xe8>
    1180:	e92d4003 	push	{r0, r1, lr}
    1184:	ebffffbe 	bl	1084 <__udivsi3>
    1188:	e8bd4006 	pop	{r1, r2, lr}
    118c:	e0030092 	mul	r3, r2, r0
    1190:	e0411003 	sub	r1, r1, r3
    1194:	e12fff1e 	bx	lr

00001198 <__aeabi_idiv0>:
    1198:	e12fff1e 	bx	lr
