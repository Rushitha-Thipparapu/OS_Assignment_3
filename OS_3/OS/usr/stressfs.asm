
_stressfs:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde22 	sub	sp, sp, #544	@ 0x220
       c:	e50b0220 	str	r0, [fp, #-544]	@ 0xfffffde0
      10:	e50b1224 	str	r1, [fp, #-548]	@ 0xfffffddc
      14:	e59f214c 	ldr	r2, [pc, #332]	@ 168 <main+0x168>
      18:	e24b3018 	sub	r3, fp, #24
      1c:	e8920007 	ldm	r2, {r0, r1, r2}
      20:	e8a30003 	stmia	r3!, {r0, r1}
      24:	e1c320b0 	strh	r2, [r3]
      28:	e59f113c 	ldr	r1, [pc, #316]	@ 16c <main+0x16c>
      2c:	e3a00001 	mov	r0, #1
      30:	eb0002bb 	bl	b24 <printf>
      34:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      38:	e3a02c02 	mov	r2, #512	@ 0x200
      3c:	e3a01061 	mov	r1, #97	@ 0x61
      40:	e1a00003 	mov	r0, r3
      44:	eb000099 	bl	2b0 <memset>
      48:	e3a03000 	mov	r3, #0
      4c:	e50b3008 	str	r3, [fp, #-8]
      50:	ea000006 	b	70 <main+0x70>
      54:	eb00017e 	bl	654 <fork>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	ca000006 	bgt	80 <main+0x80>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e3530003 	cmp	r3, #3
      78:	dafffff5 	ble	54 <main+0x54>
      7c:	ea000000 	b	84 <main+0x84>
      80:	e1a00000 	nop			@ (mov r0, r0)
      84:	e51b2008 	ldr	r2, [fp, #-8]
      88:	e59f10e0 	ldr	r1, [pc, #224]	@ 170 <main+0x170>
      8c:	e3a00001 	mov	r0, #1
      90:	eb0002a3 	bl	b24 <printf>
      94:	e55b2010 	ldrb	r2, [fp, #-16]
      98:	e51b3008 	ldr	r3, [fp, #-8]
      9c:	e6ef3073 	uxtb	r3, r3
      a0:	e0823003 	add	r3, r2, r3
      a4:	e6ef3073 	uxtb	r3, r3
      a8:	e54b3010 	strb	r3, [fp, #-16]
      ac:	e24b3018 	sub	r3, fp, #24
      b0:	e59f10bc 	ldr	r1, [pc, #188]	@ 174 <main+0x174>
      b4:	e1a00003 	mov	r0, r3
      b8:	eb0001b6 	bl	798 <open>
      bc:	e50b000c 	str	r0, [fp, #-12]
      c0:	e3a03000 	mov	r3, #0
      c4:	e50b3008 	str	r3, [fp, #-8]
      c8:	ea000007 	b	ec <main+0xec>
      cc:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      d0:	e3a02c02 	mov	r2, #512	@ 0x200
      d4:	e1a01003 	mov	r1, r3
      d8:	e51b000c 	ldr	r0, [fp, #-12]
      dc:	eb000189 	bl	708 <write>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e3530013 	cmp	r3, #19
      f4:	dafffff4 	ble	cc <main+0xcc>
      f8:	e51b000c 	ldr	r0, [fp, #-12]
      fc:	eb00018a 	bl	72c <close>
     100:	e59f1070 	ldr	r1, [pc, #112]	@ 178 <main+0x178>
     104:	e3a00001 	mov	r0, #1
     108:	eb000285 	bl	b24 <printf>
     10c:	e24b3018 	sub	r3, fp, #24
     110:	e3a01000 	mov	r1, #0
     114:	e1a00003 	mov	r0, r3
     118:	eb00019e 	bl	798 <open>
     11c:	e50b000c 	str	r0, [fp, #-12]
     120:	e3a03000 	mov	r3, #0
     124:	e50b3008 	str	r3, [fp, #-8]
     128:	ea000007 	b	14c <main+0x14c>
     12c:	e24b3f86 	sub	r3, fp, #536	@ 0x218
     130:	e3a02c02 	mov	r2, #512	@ 0x200
     134:	e1a01003 	mov	r1, r3
     138:	e51b000c 	ldr	r0, [fp, #-12]
     13c:	eb000168 	bl	6e4 <read>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e3530013 	cmp	r3, #19
     154:	dafffff4 	ble	12c <main+0x12c>
     158:	e51b000c 	ldr	r0, [fp, #-12]
     15c:	eb000172 	bl	72c <close>
     160:	eb00014d 	bl	69c <wait>
     164:	eb000143 	bl	678 <exit>
     168:	00001208 	.word	0x00001208
     16c:	000011e0 	.word	0x000011e0
     170:	000011f4 	.word	0x000011f4
     174:	00000202 	.word	0x00000202
     178:	00001200 	.word	0x00001200

0000017c <strcpy>:
     17c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     180:	e28db000 	add	fp, sp, #0
     184:	e24dd014 	sub	sp, sp, #20
     188:	e50b0010 	str	r0, [fp, #-16]
     18c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     190:	e51b3010 	ldr	r3, [fp, #-16]
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	e1a00000 	nop			@ (mov r0, r0)
     19c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1a0:	e2823001 	add	r3, r2, #1
     1a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1a8:	e51b3010 	ldr	r3, [fp, #-16]
     1ac:	e2831001 	add	r1, r3, #1
     1b0:	e50b1010 	str	r1, [fp, #-16]
     1b4:	e5d22000 	ldrb	r2, [r2]
     1b8:	e5c32000 	strb	r2, [r3]
     1bc:	e5d33000 	ldrb	r3, [r3]
     1c0:	e3530000 	cmp	r3, #0
     1c4:	1afffff4 	bne	19c <strcpy+0x20>
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e1a00003 	mov	r0, r3
     1d0:	e28bd000 	add	sp, fp, #0
     1d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1d8:	e12fff1e 	bx	lr

000001dc <strcmp>:
     1dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1e0:	e28db000 	add	fp, sp, #0
     1e4:	e24dd00c 	sub	sp, sp, #12
     1e8:	e50b0008 	str	r0, [fp, #-8]
     1ec:	e50b100c 	str	r1, [fp, #-12]
     1f0:	ea000005 	b	20c <strcmp+0x30>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e2833001 	add	r3, r3, #1
     1fc:	e50b3008 	str	r3, [fp, #-8]
     200:	e51b300c 	ldr	r3, [fp, #-12]
     204:	e2833001 	add	r3, r3, #1
     208:	e50b300c 	str	r3, [fp, #-12]
     20c:	e51b3008 	ldr	r3, [fp, #-8]
     210:	e5d33000 	ldrb	r3, [r3]
     214:	e3530000 	cmp	r3, #0
     218:	0a000005 	beq	234 <strcmp+0x58>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e5d32000 	ldrb	r2, [r3]
     224:	e51b300c 	ldr	r3, [fp, #-12]
     228:	e5d33000 	ldrb	r3, [r3]
     22c:	e1520003 	cmp	r2, r3
     230:	0affffef 	beq	1f4 <strcmp+0x18>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e5d33000 	ldrb	r3, [r3]
     23c:	e1a02003 	mov	r2, r3
     240:	e51b300c 	ldr	r3, [fp, #-12]
     244:	e5d33000 	ldrb	r3, [r3]
     248:	e0423003 	sub	r3, r2, r3
     24c:	e1a00003 	mov	r0, r3
     250:	e28bd000 	add	sp, fp, #0
     254:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     258:	e12fff1e 	bx	lr

0000025c <strlen>:
     25c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     260:	e28db000 	add	fp, sp, #0
     264:	e24dd014 	sub	sp, sp, #20
     268:	e50b0010 	str	r0, [fp, #-16]
     26c:	e3a03000 	mov	r3, #0
     270:	e50b3008 	str	r3, [fp, #-8]
     274:	ea000002 	b	284 <strlen+0x28>
     278:	e51b3008 	ldr	r3, [fp, #-8]
     27c:	e2833001 	add	r3, r3, #1
     280:	e50b3008 	str	r3, [fp, #-8]
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e51b2010 	ldr	r2, [fp, #-16]
     28c:	e0823003 	add	r3, r2, r3
     290:	e5d33000 	ldrb	r3, [r3]
     294:	e3530000 	cmp	r3, #0
     298:	1afffff6 	bne	278 <strlen+0x1c>
     29c:	e51b3008 	ldr	r3, [fp, #-8]
     2a0:	e1a00003 	mov	r0, r3
     2a4:	e28bd000 	add	sp, fp, #0
     2a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2ac:	e12fff1e 	bx	lr

000002b0 <memset>:
     2b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2b4:	e28db000 	add	fp, sp, #0
     2b8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2c0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2c4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2cc:	e50b3008 	str	r3, [fp, #-8]
     2d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2d4:	e54b300d 	strb	r3, [fp, #-13]
     2d8:	e55b200d 	ldrb	r2, [fp, #-13]
     2dc:	e1a03002 	mov	r3, r2
     2e0:	e1a03403 	lsl	r3, r3, #8
     2e4:	e0833002 	add	r3, r3, r2
     2e8:	e1a03803 	lsl	r3, r3, #16
     2ec:	e1a02003 	mov	r2, r3
     2f0:	e55b300d 	ldrb	r3, [fp, #-13]
     2f4:	e1a03403 	lsl	r3, r3, #8
     2f8:	e1822003 	orr	r2, r2, r3
     2fc:	e55b300d 	ldrb	r3, [fp, #-13]
     300:	e1823003 	orr	r3, r2, r3
     304:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     308:	ea000008 	b	330 <memset+0x80>
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	e55b200d 	ldrb	r2, [fp, #-13]
     314:	e5c32000 	strb	r2, [r3]
     318:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     31c:	e2433001 	sub	r3, r3, #1
     320:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e2833001 	add	r3, r3, #1
     32c:	e50b3008 	str	r3, [fp, #-8]
     330:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     334:	e3530000 	cmp	r3, #0
     338:	0a000003 	beq	34c <memset+0x9c>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2033003 	and	r3, r3, #3
     344:	e3530000 	cmp	r3, #0
     348:	1affffef 	bne	30c <memset+0x5c>
     34c:	e51b3008 	ldr	r3, [fp, #-8]
     350:	e50b300c 	str	r3, [fp, #-12]
     354:	ea000008 	b	37c <memset+0xcc>
     358:	e51b300c 	ldr	r3, [fp, #-12]
     35c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     360:	e5832000 	str	r2, [r3]
     364:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     368:	e2433004 	sub	r3, r3, #4
     36c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     370:	e51b300c 	ldr	r3, [fp, #-12]
     374:	e2833004 	add	r3, r3, #4
     378:	e50b300c 	str	r3, [fp, #-12]
     37c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     380:	e3530003 	cmp	r3, #3
     384:	8afffff3 	bhi	358 <memset+0xa8>
     388:	e51b300c 	ldr	r3, [fp, #-12]
     38c:	e50b3008 	str	r3, [fp, #-8]
     390:	ea000008 	b	3b8 <memset+0x108>
     394:	e51b3008 	ldr	r3, [fp, #-8]
     398:	e55b200d 	ldrb	r2, [fp, #-13]
     39c:	e5c32000 	strb	r2, [r3]
     3a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a4:	e2433001 	sub	r3, r3, #1
     3a8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e2833001 	add	r3, r3, #1
     3b4:	e50b3008 	str	r3, [fp, #-8]
     3b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3bc:	e3530000 	cmp	r3, #0
     3c0:	1afffff3 	bne	394 <memset+0xe4>
     3c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3c8:	e1a00003 	mov	r0, r3
     3cc:	e28bd000 	add	sp, fp, #0
     3d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3d4:	e12fff1e 	bx	lr

000003d8 <strchr>:
     3d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3dc:	e28db000 	add	fp, sp, #0
     3e0:	e24dd00c 	sub	sp, sp, #12
     3e4:	e50b0008 	str	r0, [fp, #-8]
     3e8:	e1a03001 	mov	r3, r1
     3ec:	e54b3009 	strb	r3, [fp, #-9]
     3f0:	ea000009 	b	41c <strchr+0x44>
     3f4:	e51b3008 	ldr	r3, [fp, #-8]
     3f8:	e5d33000 	ldrb	r3, [r3]
     3fc:	e55b2009 	ldrb	r2, [fp, #-9]
     400:	e1520003 	cmp	r2, r3
     404:	1a000001 	bne	410 <strchr+0x38>
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	ea000007 	b	430 <strchr+0x58>
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e2833001 	add	r3, r3, #1
     418:	e50b3008 	str	r3, [fp, #-8]
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e5d33000 	ldrb	r3, [r3]
     424:	e3530000 	cmp	r3, #0
     428:	1afffff1 	bne	3f4 <strchr+0x1c>
     42c:	e3a03000 	mov	r3, #0
     430:	e1a00003 	mov	r0, r3
     434:	e28bd000 	add	sp, fp, #0
     438:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     43c:	e12fff1e 	bx	lr

00000440 <gets>:
     440:	e92d4800 	push	{fp, lr}
     444:	e28db004 	add	fp, sp, #4
     448:	e24dd018 	sub	sp, sp, #24
     44c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     450:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     454:	e3a03000 	mov	r3, #0
     458:	e50b3008 	str	r3, [fp, #-8]
     45c:	ea000016 	b	4bc <gets+0x7c>
     460:	e24b300d 	sub	r3, fp, #13
     464:	e3a02001 	mov	r2, #1
     468:	e1a01003 	mov	r1, r3
     46c:	e3a00000 	mov	r0, #0
     470:	eb00009b 	bl	6e4 <read>
     474:	e50b000c 	str	r0, [fp, #-12]
     478:	e51b300c 	ldr	r3, [fp, #-12]
     47c:	e3530000 	cmp	r3, #0
     480:	da000013 	ble	4d4 <gets+0x94>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e2832001 	add	r2, r3, #1
     48c:	e50b2008 	str	r2, [fp, #-8]
     490:	e1a02003 	mov	r2, r3
     494:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     498:	e0833002 	add	r3, r3, r2
     49c:	e55b200d 	ldrb	r2, [fp, #-13]
     4a0:	e5c32000 	strb	r2, [r3]
     4a4:	e55b300d 	ldrb	r3, [fp, #-13]
     4a8:	e353000a 	cmp	r3, #10
     4ac:	0a000009 	beq	4d8 <gets+0x98>
     4b0:	e55b300d 	ldrb	r3, [fp, #-13]
     4b4:	e353000d 	cmp	r3, #13
     4b8:	0a000006 	beq	4d8 <gets+0x98>
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e2833001 	add	r3, r3, #1
     4c4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4c8:	e1520003 	cmp	r2, r3
     4cc:	caffffe3 	bgt	460 <gets+0x20>
     4d0:	ea000000 	b	4d8 <gets+0x98>
     4d4:	e1a00000 	nop			@ (mov r0, r0)
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4e0:	e0823003 	add	r3, r2, r3
     4e4:	e3a02000 	mov	r2, #0
     4e8:	e5c32000 	strb	r2, [r3]
     4ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4f0:	e1a00003 	mov	r0, r3
     4f4:	e24bd004 	sub	sp, fp, #4
     4f8:	e8bd8800 	pop	{fp, pc}

000004fc <stat>:
     4fc:	e92d4800 	push	{fp, lr}
     500:	e28db004 	add	fp, sp, #4
     504:	e24dd010 	sub	sp, sp, #16
     508:	e50b0010 	str	r0, [fp, #-16]
     50c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     510:	e3a01000 	mov	r1, #0
     514:	e51b0010 	ldr	r0, [fp, #-16]
     518:	eb00009e 	bl	798 <open>
     51c:	e50b0008 	str	r0, [fp, #-8]
     520:	e51b3008 	ldr	r3, [fp, #-8]
     524:	e3530000 	cmp	r3, #0
     528:	aa000001 	bge	534 <stat+0x38>
     52c:	e3e03000 	mvn	r3, #0
     530:	ea000006 	b	550 <stat+0x54>
     534:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     538:	e51b0008 	ldr	r0, [fp, #-8]
     53c:	eb0000b0 	bl	804 <fstat>
     540:	e50b000c 	str	r0, [fp, #-12]
     544:	e51b0008 	ldr	r0, [fp, #-8]
     548:	eb000077 	bl	72c <close>
     54c:	e51b300c 	ldr	r3, [fp, #-12]
     550:	e1a00003 	mov	r0, r3
     554:	e24bd004 	sub	sp, fp, #4
     558:	e8bd8800 	pop	{fp, pc}

0000055c <atoi>:
     55c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     560:	e28db000 	add	fp, sp, #0
     564:	e24dd014 	sub	sp, sp, #20
     568:	e50b0010 	str	r0, [fp, #-16]
     56c:	e3a03000 	mov	r3, #0
     570:	e50b3008 	str	r3, [fp, #-8]
     574:	ea00000c 	b	5ac <atoi+0x50>
     578:	e51b2008 	ldr	r2, [fp, #-8]
     57c:	e1a03002 	mov	r3, r2
     580:	e1a03103 	lsl	r3, r3, #2
     584:	e0833002 	add	r3, r3, r2
     588:	e1a03083 	lsl	r3, r3, #1
     58c:	e1a01003 	mov	r1, r3
     590:	e51b3010 	ldr	r3, [fp, #-16]
     594:	e2832001 	add	r2, r3, #1
     598:	e50b2010 	str	r2, [fp, #-16]
     59c:	e5d33000 	ldrb	r3, [r3]
     5a0:	e0813003 	add	r3, r1, r3
     5a4:	e2433030 	sub	r3, r3, #48	@ 0x30
     5a8:	e50b3008 	str	r3, [fp, #-8]
     5ac:	e51b3010 	ldr	r3, [fp, #-16]
     5b0:	e5d33000 	ldrb	r3, [r3]
     5b4:	e353002f 	cmp	r3, #47	@ 0x2f
     5b8:	9a000003 	bls	5cc <atoi+0x70>
     5bc:	e51b3010 	ldr	r3, [fp, #-16]
     5c0:	e5d33000 	ldrb	r3, [r3]
     5c4:	e3530039 	cmp	r3, #57	@ 0x39
     5c8:	9affffea 	bls	578 <atoi+0x1c>
     5cc:	e51b3008 	ldr	r3, [fp, #-8]
     5d0:	e1a00003 	mov	r0, r3
     5d4:	e28bd000 	add	sp, fp, #0
     5d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5dc:	e12fff1e 	bx	lr

000005e0 <memmove>:
     5e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5e4:	e28db000 	add	fp, sp, #0
     5e8:	e24dd01c 	sub	sp, sp, #28
     5ec:	e50b0010 	str	r0, [fp, #-16]
     5f0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5f4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5f8:	e51b3010 	ldr	r3, [fp, #-16]
     5fc:	e50b3008 	str	r3, [fp, #-8]
     600:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     604:	e50b300c 	str	r3, [fp, #-12]
     608:	ea000007 	b	62c <memmove+0x4c>
     60c:	e51b200c 	ldr	r2, [fp, #-12]
     610:	e2823001 	add	r3, r2, #1
     614:	e50b300c 	str	r3, [fp, #-12]
     618:	e51b3008 	ldr	r3, [fp, #-8]
     61c:	e2831001 	add	r1, r3, #1
     620:	e50b1008 	str	r1, [fp, #-8]
     624:	e5d22000 	ldrb	r2, [r2]
     628:	e5c32000 	strb	r2, [r3]
     62c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     630:	e2432001 	sub	r2, r3, #1
     634:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     638:	e3530000 	cmp	r3, #0
     63c:	cafffff2 	bgt	60c <memmove+0x2c>
     640:	e51b3010 	ldr	r3, [fp, #-16]
     644:	e1a00003 	mov	r0, r3
     648:	e28bd000 	add	sp, fp, #0
     64c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     650:	e12fff1e 	bx	lr

00000654 <fork>:
     654:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     658:	e1a04003 	mov	r4, r3
     65c:	e1a03002 	mov	r3, r2
     660:	e1a02001 	mov	r2, r1
     664:	e1a01000 	mov	r1, r0
     668:	e3a00001 	mov	r0, #1
     66c:	ef000000 	svc	0x00000000
     670:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     674:	e12fff1e 	bx	lr

00000678 <exit>:
     678:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     67c:	e1a04003 	mov	r4, r3
     680:	e1a03002 	mov	r3, r2
     684:	e1a02001 	mov	r2, r1
     688:	e1a01000 	mov	r1, r0
     68c:	e3a00002 	mov	r0, #2
     690:	ef000000 	svc	0x00000000
     694:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     698:	e12fff1e 	bx	lr

0000069c <wait>:
     69c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a0:	e1a04003 	mov	r4, r3
     6a4:	e1a03002 	mov	r3, r2
     6a8:	e1a02001 	mov	r2, r1
     6ac:	e1a01000 	mov	r1, r0
     6b0:	e3a00003 	mov	r0, #3
     6b4:	ef000000 	svc	0x00000000
     6b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6bc:	e12fff1e 	bx	lr

000006c0 <pipe>:
     6c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6c4:	e1a04003 	mov	r4, r3
     6c8:	e1a03002 	mov	r3, r2
     6cc:	e1a02001 	mov	r2, r1
     6d0:	e1a01000 	mov	r1, r0
     6d4:	e3a00004 	mov	r0, #4
     6d8:	ef000000 	svc	0x00000000
     6dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e0:	e12fff1e 	bx	lr

000006e4 <read>:
     6e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6e8:	e1a04003 	mov	r4, r3
     6ec:	e1a03002 	mov	r3, r2
     6f0:	e1a02001 	mov	r2, r1
     6f4:	e1a01000 	mov	r1, r0
     6f8:	e3a00005 	mov	r0, #5
     6fc:	ef000000 	svc	0x00000000
     700:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     704:	e12fff1e 	bx	lr

00000708 <write>:
     708:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     70c:	e1a04003 	mov	r4, r3
     710:	e1a03002 	mov	r3, r2
     714:	e1a02001 	mov	r2, r1
     718:	e1a01000 	mov	r1, r0
     71c:	e3a00010 	mov	r0, #16
     720:	ef000000 	svc	0x00000000
     724:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     728:	e12fff1e 	bx	lr

0000072c <close>:
     72c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     730:	e1a04003 	mov	r4, r3
     734:	e1a03002 	mov	r3, r2
     738:	e1a02001 	mov	r2, r1
     73c:	e1a01000 	mov	r1, r0
     740:	e3a00015 	mov	r0, #21
     744:	ef000000 	svc	0x00000000
     748:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     74c:	e12fff1e 	bx	lr

00000750 <kill>:
     750:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     754:	e1a04003 	mov	r4, r3
     758:	e1a03002 	mov	r3, r2
     75c:	e1a02001 	mov	r2, r1
     760:	e1a01000 	mov	r1, r0
     764:	e3a00006 	mov	r0, #6
     768:	ef000000 	svc	0x00000000
     76c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     770:	e12fff1e 	bx	lr

00000774 <exec>:
     774:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     778:	e1a04003 	mov	r4, r3
     77c:	e1a03002 	mov	r3, r2
     780:	e1a02001 	mov	r2, r1
     784:	e1a01000 	mov	r1, r0
     788:	e3a00007 	mov	r0, #7
     78c:	ef000000 	svc	0x00000000
     790:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     794:	e12fff1e 	bx	lr

00000798 <open>:
     798:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     79c:	e1a04003 	mov	r4, r3
     7a0:	e1a03002 	mov	r3, r2
     7a4:	e1a02001 	mov	r2, r1
     7a8:	e1a01000 	mov	r1, r0
     7ac:	e3a0000f 	mov	r0, #15
     7b0:	ef000000 	svc	0x00000000
     7b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7b8:	e12fff1e 	bx	lr

000007bc <mknod>:
     7bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c0:	e1a04003 	mov	r4, r3
     7c4:	e1a03002 	mov	r3, r2
     7c8:	e1a02001 	mov	r2, r1
     7cc:	e1a01000 	mov	r1, r0
     7d0:	e3a00011 	mov	r0, #17
     7d4:	ef000000 	svc	0x00000000
     7d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7dc:	e12fff1e 	bx	lr

000007e0 <unlink>:
     7e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e4:	e1a04003 	mov	r4, r3
     7e8:	e1a03002 	mov	r3, r2
     7ec:	e1a02001 	mov	r2, r1
     7f0:	e1a01000 	mov	r1, r0
     7f4:	e3a00012 	mov	r0, #18
     7f8:	ef000000 	svc	0x00000000
     7fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     800:	e12fff1e 	bx	lr

00000804 <fstat>:
     804:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     808:	e1a04003 	mov	r4, r3
     80c:	e1a03002 	mov	r3, r2
     810:	e1a02001 	mov	r2, r1
     814:	e1a01000 	mov	r1, r0
     818:	e3a00008 	mov	r0, #8
     81c:	ef000000 	svc	0x00000000
     820:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     824:	e12fff1e 	bx	lr

00000828 <link>:
     828:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     82c:	e1a04003 	mov	r4, r3
     830:	e1a03002 	mov	r3, r2
     834:	e1a02001 	mov	r2, r1
     838:	e1a01000 	mov	r1, r0
     83c:	e3a00013 	mov	r0, #19
     840:	ef000000 	svc	0x00000000
     844:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     848:	e12fff1e 	bx	lr

0000084c <mkdir>:
     84c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     850:	e1a04003 	mov	r4, r3
     854:	e1a03002 	mov	r3, r2
     858:	e1a02001 	mov	r2, r1
     85c:	e1a01000 	mov	r1, r0
     860:	e3a00014 	mov	r0, #20
     864:	ef000000 	svc	0x00000000
     868:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     86c:	e12fff1e 	bx	lr

00000870 <chdir>:
     870:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     874:	e1a04003 	mov	r4, r3
     878:	e1a03002 	mov	r3, r2
     87c:	e1a02001 	mov	r2, r1
     880:	e1a01000 	mov	r1, r0
     884:	e3a00009 	mov	r0, #9
     888:	ef000000 	svc	0x00000000
     88c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     890:	e12fff1e 	bx	lr

00000894 <dup>:
     894:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     898:	e1a04003 	mov	r4, r3
     89c:	e1a03002 	mov	r3, r2
     8a0:	e1a02001 	mov	r2, r1
     8a4:	e1a01000 	mov	r1, r0
     8a8:	e3a0000a 	mov	r0, #10
     8ac:	ef000000 	svc	0x00000000
     8b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b4:	e12fff1e 	bx	lr

000008b8 <getpid>:
     8b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8bc:	e1a04003 	mov	r4, r3
     8c0:	e1a03002 	mov	r3, r2
     8c4:	e1a02001 	mov	r2, r1
     8c8:	e1a01000 	mov	r1, r0
     8cc:	e3a0000b 	mov	r0, #11
     8d0:	ef000000 	svc	0x00000000
     8d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d8:	e12fff1e 	bx	lr

000008dc <sbrk>:
     8dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e0:	e1a04003 	mov	r4, r3
     8e4:	e1a03002 	mov	r3, r2
     8e8:	e1a02001 	mov	r2, r1
     8ec:	e1a01000 	mov	r1, r0
     8f0:	e3a0000c 	mov	r0, #12
     8f4:	ef000000 	svc	0x00000000
     8f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8fc:	e12fff1e 	bx	lr

00000900 <sleep>:
     900:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     904:	e1a04003 	mov	r4, r3
     908:	e1a03002 	mov	r3, r2
     90c:	e1a02001 	mov	r2, r1
     910:	e1a01000 	mov	r1, r0
     914:	e3a0000d 	mov	r0, #13
     918:	ef000000 	svc	0x00000000
     91c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     920:	e12fff1e 	bx	lr

00000924 <uptime>:
     924:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     928:	e1a04003 	mov	r4, r3
     92c:	e1a03002 	mov	r3, r2
     930:	e1a02001 	mov	r2, r1
     934:	e1a01000 	mov	r1, r0
     938:	e3a0000e 	mov	r0, #14
     93c:	ef000000 	svc	0x00000000
     940:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     944:	e12fff1e 	bx	lr

00000948 <pgpte>:
     948:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     94c:	e1a04003 	mov	r4, r3
     950:	e1a03002 	mov	r3, r2
     954:	e1a02001 	mov	r2, r1
     958:	e1a01000 	mov	r1, r0
     95c:	e3a00016 	mov	r0, #22
     960:	ef000000 	svc	0x00000000
     964:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     968:	e12fff1e 	bx	lr

0000096c <kpt>:
     96c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     970:	e1a04003 	mov	r4, r3
     974:	e1a03002 	mov	r3, r2
     978:	e1a02001 	mov	r2, r1
     97c:	e1a01000 	mov	r1, r0
     980:	e3a00017 	mov	r0, #23
     984:	ef000000 	svc	0x00000000
     988:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     98c:	e12fff1e 	bx	lr

00000990 <ugetpid>:
     990:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     994:	e1a04003 	mov	r4, r3
     998:	e1a03002 	mov	r3, r2
     99c:	e1a02001 	mov	r2, r1
     9a0:	e1a01000 	mov	r1, r0
     9a4:	e3a00018 	mov	r0, #24
     9a8:	ef000000 	svc	0x00000000
     9ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b0:	e12fff1e 	bx	lr

000009b4 <putc>:
     9b4:	e92d4800 	push	{fp, lr}
     9b8:	e28db004 	add	fp, sp, #4
     9bc:	e24dd008 	sub	sp, sp, #8
     9c0:	e50b0008 	str	r0, [fp, #-8]
     9c4:	e1a03001 	mov	r3, r1
     9c8:	e54b3009 	strb	r3, [fp, #-9]
     9cc:	e24b3009 	sub	r3, fp, #9
     9d0:	e3a02001 	mov	r2, #1
     9d4:	e1a01003 	mov	r1, r3
     9d8:	e51b0008 	ldr	r0, [fp, #-8]
     9dc:	ebffff49 	bl	708 <write>
     9e0:	e1a00000 	nop			@ (mov r0, r0)
     9e4:	e24bd004 	sub	sp, fp, #4
     9e8:	e8bd8800 	pop	{fp, pc}

000009ec <printint>:
     9ec:	e92d4800 	push	{fp, lr}
     9f0:	e28db004 	add	fp, sp, #4
     9f4:	e24dd030 	sub	sp, sp, #48	@ 0x30
     9f8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     9fc:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a00:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a04:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a08:	e3a03000 	mov	r3, #0
     a0c:	e50b300c 	str	r3, [fp, #-12]
     a10:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a14:	e3530000 	cmp	r3, #0
     a18:	0a000008 	beq	a40 <printint+0x54>
     a1c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a20:	e3530000 	cmp	r3, #0
     a24:	aa000005 	bge	a40 <printint+0x54>
     a28:	e3a03001 	mov	r3, #1
     a2c:	e50b300c 	str	r3, [fp, #-12]
     a30:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a34:	e2633000 	rsb	r3, r3, #0
     a38:	e50b3010 	str	r3, [fp, #-16]
     a3c:	ea000001 	b	a48 <printint+0x5c>
     a40:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a44:	e50b3010 	str	r3, [fp, #-16]
     a48:	e3a03000 	mov	r3, #0
     a4c:	e50b3008 	str	r3, [fp, #-8]
     a50:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a54:	e51b3010 	ldr	r3, [fp, #-16]
     a58:	e1a01002 	mov	r1, r2
     a5c:	e1a00003 	mov	r0, r3
     a60:	eb0001d5 	bl	11bc <__aeabi_uidivmod>
     a64:	e1a03001 	mov	r3, r1
     a68:	e1a01003 	mov	r1, r3
     a6c:	e51b3008 	ldr	r3, [fp, #-8]
     a70:	e2832001 	add	r2, r3, #1
     a74:	e50b2008 	str	r2, [fp, #-8]
     a78:	e59f20a0 	ldr	r2, [pc, #160]	@ b20 <printint+0x134>
     a7c:	e7d22001 	ldrb	r2, [r2, r1]
     a80:	e2433004 	sub	r3, r3, #4
     a84:	e083300b 	add	r3, r3, fp
     a88:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a8c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a90:	e1a01003 	mov	r1, r3
     a94:	e51b0010 	ldr	r0, [fp, #-16]
     a98:	eb00018a 	bl	10c8 <__udivsi3>
     a9c:	e1a03000 	mov	r3, r0
     aa0:	e50b3010 	str	r3, [fp, #-16]
     aa4:	e51b3010 	ldr	r3, [fp, #-16]
     aa8:	e3530000 	cmp	r3, #0
     aac:	1affffe7 	bne	a50 <printint+0x64>
     ab0:	e51b300c 	ldr	r3, [fp, #-12]
     ab4:	e3530000 	cmp	r3, #0
     ab8:	0a00000e 	beq	af8 <printint+0x10c>
     abc:	e51b3008 	ldr	r3, [fp, #-8]
     ac0:	e2832001 	add	r2, r3, #1
     ac4:	e50b2008 	str	r2, [fp, #-8]
     ac8:	e2433004 	sub	r3, r3, #4
     acc:	e083300b 	add	r3, r3, fp
     ad0:	e3a0202d 	mov	r2, #45	@ 0x2d
     ad4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ad8:	ea000006 	b	af8 <printint+0x10c>
     adc:	e24b2020 	sub	r2, fp, #32
     ae0:	e51b3008 	ldr	r3, [fp, #-8]
     ae4:	e0823003 	add	r3, r2, r3
     ae8:	e5d33000 	ldrb	r3, [r3]
     aec:	e1a01003 	mov	r1, r3
     af0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     af4:	ebffffae 	bl	9b4 <putc>
     af8:	e51b3008 	ldr	r3, [fp, #-8]
     afc:	e2433001 	sub	r3, r3, #1
     b00:	e50b3008 	str	r3, [fp, #-8]
     b04:	e51b3008 	ldr	r3, [fp, #-8]
     b08:	e3530000 	cmp	r3, #0
     b0c:	aafffff2 	bge	adc <printint+0xf0>
     b10:	e1a00000 	nop			@ (mov r0, r0)
     b14:	e1a00000 	nop			@ (mov r0, r0)
     b18:	e24bd004 	sub	sp, fp, #4
     b1c:	e8bd8800 	pop	{fp, pc}
     b20:	0000121c 	.word	0x0000121c

00000b24 <printf>:
     b24:	e92d000e 	push	{r1, r2, r3}
     b28:	e92d4800 	push	{fp, lr}
     b2c:	e28db004 	add	fp, sp, #4
     b30:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b34:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b38:	e3a03000 	mov	r3, #0
     b3c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b40:	e28b3008 	add	r3, fp, #8
     b44:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b48:	e3a03000 	mov	r3, #0
     b4c:	e50b3010 	str	r3, [fp, #-16]
     b50:	ea000074 	b	d28 <printf+0x204>
     b54:	e59b2004 	ldr	r2, [fp, #4]
     b58:	e51b3010 	ldr	r3, [fp, #-16]
     b5c:	e0823003 	add	r3, r2, r3
     b60:	e5d33000 	ldrb	r3, [r3]
     b64:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b68:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b6c:	e3530000 	cmp	r3, #0
     b70:	1a00000b 	bne	ba4 <printf+0x80>
     b74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b78:	e3530025 	cmp	r3, #37	@ 0x25
     b7c:	1a000002 	bne	b8c <printf+0x68>
     b80:	e3a03025 	mov	r3, #37	@ 0x25
     b84:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b88:	ea000063 	b	d1c <printf+0x1f8>
     b8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b90:	e6ef3073 	uxtb	r3, r3
     b94:	e1a01003 	mov	r1, r3
     b98:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b9c:	ebffff84 	bl	9b4 <putc>
     ba0:	ea00005d 	b	d1c <printf+0x1f8>
     ba4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ba8:	e3530025 	cmp	r3, #37	@ 0x25
     bac:	1a00005a 	bne	d1c <printf+0x1f8>
     bb0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bb4:	e3530064 	cmp	r3, #100	@ 0x64
     bb8:	1a00000a 	bne	be8 <printf+0xc4>
     bbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bc0:	e5933000 	ldr	r3, [r3]
     bc4:	e1a01003 	mov	r1, r3
     bc8:	e3a03001 	mov	r3, #1
     bcc:	e3a0200a 	mov	r2, #10
     bd0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bd4:	ebffff84 	bl	9ec <printint>
     bd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bdc:	e2833004 	add	r3, r3, #4
     be0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     be4:	ea00004a 	b	d14 <printf+0x1f0>
     be8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bec:	e3530078 	cmp	r3, #120	@ 0x78
     bf0:	0a000002 	beq	c00 <printf+0xdc>
     bf4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf8:	e3530070 	cmp	r3, #112	@ 0x70
     bfc:	1a00000a 	bne	c2c <printf+0x108>
     c00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c04:	e5933000 	ldr	r3, [r3]
     c08:	e1a01003 	mov	r1, r3
     c0c:	e3a03000 	mov	r3, #0
     c10:	e3a02010 	mov	r2, #16
     c14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c18:	ebffff73 	bl	9ec <printint>
     c1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c20:	e2833004 	add	r3, r3, #4
     c24:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c28:	ea000039 	b	d14 <printf+0x1f0>
     c2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c30:	e3530073 	cmp	r3, #115	@ 0x73
     c34:	1a000018 	bne	c9c <printf+0x178>
     c38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c3c:	e5933000 	ldr	r3, [r3]
     c40:	e50b300c 	str	r3, [fp, #-12]
     c44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c48:	e2833004 	add	r3, r3, #4
     c4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c50:	e51b300c 	ldr	r3, [fp, #-12]
     c54:	e3530000 	cmp	r3, #0
     c58:	1a00000a 	bne	c88 <printf+0x164>
     c5c:	e59f30f4 	ldr	r3, [pc, #244]	@ d58 <printf+0x234>
     c60:	e50b300c 	str	r3, [fp, #-12]
     c64:	ea000007 	b	c88 <printf+0x164>
     c68:	e51b300c 	ldr	r3, [fp, #-12]
     c6c:	e5d33000 	ldrb	r3, [r3]
     c70:	e1a01003 	mov	r1, r3
     c74:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c78:	ebffff4d 	bl	9b4 <putc>
     c7c:	e51b300c 	ldr	r3, [fp, #-12]
     c80:	e2833001 	add	r3, r3, #1
     c84:	e50b300c 	str	r3, [fp, #-12]
     c88:	e51b300c 	ldr	r3, [fp, #-12]
     c8c:	e5d33000 	ldrb	r3, [r3]
     c90:	e3530000 	cmp	r3, #0
     c94:	1afffff3 	bne	c68 <printf+0x144>
     c98:	ea00001d 	b	d14 <printf+0x1f0>
     c9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ca0:	e3530063 	cmp	r3, #99	@ 0x63
     ca4:	1a000009 	bne	cd0 <printf+0x1ac>
     ca8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cac:	e5933000 	ldr	r3, [r3]
     cb0:	e6ef3073 	uxtb	r3, r3
     cb4:	e1a01003 	mov	r1, r3
     cb8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cbc:	ebffff3c 	bl	9b4 <putc>
     cc0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cc4:	e2833004 	add	r3, r3, #4
     cc8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ccc:	ea000010 	b	d14 <printf+0x1f0>
     cd0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cd4:	e3530025 	cmp	r3, #37	@ 0x25
     cd8:	1a000005 	bne	cf4 <printf+0x1d0>
     cdc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ce0:	e6ef3073 	uxtb	r3, r3
     ce4:	e1a01003 	mov	r1, r3
     ce8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cec:	ebffff30 	bl	9b4 <putc>
     cf0:	ea000007 	b	d14 <printf+0x1f0>
     cf4:	e3a01025 	mov	r1, #37	@ 0x25
     cf8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cfc:	ebffff2c 	bl	9b4 <putc>
     d00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d04:	e6ef3073 	uxtb	r3, r3
     d08:	e1a01003 	mov	r1, r3
     d0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d10:	ebffff27 	bl	9b4 <putc>
     d14:	e3a03000 	mov	r3, #0
     d18:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d1c:	e51b3010 	ldr	r3, [fp, #-16]
     d20:	e2833001 	add	r3, r3, #1
     d24:	e50b3010 	str	r3, [fp, #-16]
     d28:	e59b2004 	ldr	r2, [fp, #4]
     d2c:	e51b3010 	ldr	r3, [fp, #-16]
     d30:	e0823003 	add	r3, r2, r3
     d34:	e5d33000 	ldrb	r3, [r3]
     d38:	e3530000 	cmp	r3, #0
     d3c:	1affff84 	bne	b54 <printf+0x30>
     d40:	e1a00000 	nop			@ (mov r0, r0)
     d44:	e1a00000 	nop			@ (mov r0, r0)
     d48:	e24bd004 	sub	sp, fp, #4
     d4c:	e8bd4800 	pop	{fp, lr}
     d50:	e28dd00c 	add	sp, sp, #12
     d54:	e12fff1e 	bx	lr
     d58:	00001214 	.word	0x00001214

00000d5c <free>:
     d5c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d60:	e28db000 	add	fp, sp, #0
     d64:	e24dd014 	sub	sp, sp, #20
     d68:	e50b0010 	str	r0, [fp, #-16]
     d6c:	e51b3010 	ldr	r3, [fp, #-16]
     d70:	e2433008 	sub	r3, r3, #8
     d74:	e50b300c 	str	r3, [fp, #-12]
     d78:	e59f3154 	ldr	r3, [pc, #340]	@ ed4 <free+0x178>
     d7c:	e5933000 	ldr	r3, [r3]
     d80:	e50b3008 	str	r3, [fp, #-8]
     d84:	ea000010 	b	dcc <free+0x70>
     d88:	e51b3008 	ldr	r3, [fp, #-8]
     d8c:	e5933000 	ldr	r3, [r3]
     d90:	e51b2008 	ldr	r2, [fp, #-8]
     d94:	e1520003 	cmp	r2, r3
     d98:	3a000008 	bcc	dc0 <free+0x64>
     d9c:	e51b200c 	ldr	r2, [fp, #-12]
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e1520003 	cmp	r2, r3
     da8:	8a000010 	bhi	df0 <free+0x94>
     dac:	e51b3008 	ldr	r3, [fp, #-8]
     db0:	e5933000 	ldr	r3, [r3]
     db4:	e51b200c 	ldr	r2, [fp, #-12]
     db8:	e1520003 	cmp	r2, r3
     dbc:	3a00000b 	bcc	df0 <free+0x94>
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e5933000 	ldr	r3, [r3]
     dc8:	e50b3008 	str	r3, [fp, #-8]
     dcc:	e51b200c 	ldr	r2, [fp, #-12]
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e1520003 	cmp	r2, r3
     dd8:	9affffea 	bls	d88 <free+0x2c>
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e5933000 	ldr	r3, [r3]
     de4:	e51b200c 	ldr	r2, [fp, #-12]
     de8:	e1520003 	cmp	r2, r3
     dec:	2affffe5 	bcs	d88 <free+0x2c>
     df0:	e51b300c 	ldr	r3, [fp, #-12]
     df4:	e5933004 	ldr	r3, [r3, #4]
     df8:	e1a03183 	lsl	r3, r3, #3
     dfc:	e51b200c 	ldr	r2, [fp, #-12]
     e00:	e0822003 	add	r2, r2, r3
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e5933000 	ldr	r3, [r3]
     e0c:	e1520003 	cmp	r2, r3
     e10:	1a00000d 	bne	e4c <free+0xf0>
     e14:	e51b300c 	ldr	r3, [fp, #-12]
     e18:	e5932004 	ldr	r2, [r3, #4]
     e1c:	e51b3008 	ldr	r3, [fp, #-8]
     e20:	e5933000 	ldr	r3, [r3]
     e24:	e5933004 	ldr	r3, [r3, #4]
     e28:	e0822003 	add	r2, r2, r3
     e2c:	e51b300c 	ldr	r3, [fp, #-12]
     e30:	e5832004 	str	r2, [r3, #4]
     e34:	e51b3008 	ldr	r3, [fp, #-8]
     e38:	e5933000 	ldr	r3, [r3]
     e3c:	e5932000 	ldr	r2, [r3]
     e40:	e51b300c 	ldr	r3, [fp, #-12]
     e44:	e5832000 	str	r2, [r3]
     e48:	ea000003 	b	e5c <free+0x100>
     e4c:	e51b3008 	ldr	r3, [fp, #-8]
     e50:	e5932000 	ldr	r2, [r3]
     e54:	e51b300c 	ldr	r3, [fp, #-12]
     e58:	e5832000 	str	r2, [r3]
     e5c:	e51b3008 	ldr	r3, [fp, #-8]
     e60:	e5933004 	ldr	r3, [r3, #4]
     e64:	e1a03183 	lsl	r3, r3, #3
     e68:	e51b2008 	ldr	r2, [fp, #-8]
     e6c:	e0823003 	add	r3, r2, r3
     e70:	e51b200c 	ldr	r2, [fp, #-12]
     e74:	e1520003 	cmp	r2, r3
     e78:	1a00000b 	bne	eac <free+0x150>
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e5932004 	ldr	r2, [r3, #4]
     e84:	e51b300c 	ldr	r3, [fp, #-12]
     e88:	e5933004 	ldr	r3, [r3, #4]
     e8c:	e0822003 	add	r2, r2, r3
     e90:	e51b3008 	ldr	r3, [fp, #-8]
     e94:	e5832004 	str	r2, [r3, #4]
     e98:	e51b300c 	ldr	r3, [fp, #-12]
     e9c:	e5932000 	ldr	r2, [r3]
     ea0:	e51b3008 	ldr	r3, [fp, #-8]
     ea4:	e5832000 	str	r2, [r3]
     ea8:	ea000002 	b	eb8 <free+0x15c>
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e51b200c 	ldr	r2, [fp, #-12]
     eb4:	e5832000 	str	r2, [r3]
     eb8:	e59f2014 	ldr	r2, [pc, #20]	@ ed4 <free+0x178>
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e5823000 	str	r3, [r2]
     ec4:	e1a00000 	nop			@ (mov r0, r0)
     ec8:	e28bd000 	add	sp, fp, #0
     ecc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     ed0:	e12fff1e 	bx	lr
     ed4:	00001238 	.word	0x00001238

00000ed8 <morecore>:
     ed8:	e92d4800 	push	{fp, lr}
     edc:	e28db004 	add	fp, sp, #4
     ee0:	e24dd010 	sub	sp, sp, #16
     ee4:	e50b0010 	str	r0, [fp, #-16]
     ee8:	e51b3010 	ldr	r3, [fp, #-16]
     eec:	e3530a01 	cmp	r3, #4096	@ 0x1000
     ef0:	2a000001 	bcs	efc <morecore+0x24>
     ef4:	e3a03a01 	mov	r3, #4096	@ 0x1000
     ef8:	e50b3010 	str	r3, [fp, #-16]
     efc:	e51b3010 	ldr	r3, [fp, #-16]
     f00:	e1a03183 	lsl	r3, r3, #3
     f04:	e1a00003 	mov	r0, r3
     f08:	ebfffe73 	bl	8dc <sbrk>
     f0c:	e50b0008 	str	r0, [fp, #-8]
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e3730001 	cmn	r3, #1
     f18:	1a000001 	bne	f24 <morecore+0x4c>
     f1c:	e3a03000 	mov	r3, #0
     f20:	ea00000a 	b	f50 <morecore+0x78>
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e50b300c 	str	r3, [fp, #-12]
     f2c:	e51b300c 	ldr	r3, [fp, #-12]
     f30:	e51b2010 	ldr	r2, [fp, #-16]
     f34:	e5832004 	str	r2, [r3, #4]
     f38:	e51b300c 	ldr	r3, [fp, #-12]
     f3c:	e2833008 	add	r3, r3, #8
     f40:	e1a00003 	mov	r0, r3
     f44:	ebffff84 	bl	d5c <free>
     f48:	e59f300c 	ldr	r3, [pc, #12]	@ f5c <morecore+0x84>
     f4c:	e5933000 	ldr	r3, [r3]
     f50:	e1a00003 	mov	r0, r3
     f54:	e24bd004 	sub	sp, fp, #4
     f58:	e8bd8800 	pop	{fp, pc}
     f5c:	00001238 	.word	0x00001238

00000f60 <malloc>:
     f60:	e92d4800 	push	{fp, lr}
     f64:	e28db004 	add	fp, sp, #4
     f68:	e24dd018 	sub	sp, sp, #24
     f6c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f74:	e2833007 	add	r3, r3, #7
     f78:	e1a031a3 	lsr	r3, r3, #3
     f7c:	e2833001 	add	r3, r3, #1
     f80:	e50b3010 	str	r3, [fp, #-16]
     f84:	e59f3134 	ldr	r3, [pc, #308]	@ 10c0 <malloc+0x160>
     f88:	e5933000 	ldr	r3, [r3]
     f8c:	e50b300c 	str	r3, [fp, #-12]
     f90:	e51b300c 	ldr	r3, [fp, #-12]
     f94:	e3530000 	cmp	r3, #0
     f98:	1a00000b 	bne	fcc <malloc+0x6c>
     f9c:	e59f3120 	ldr	r3, [pc, #288]	@ 10c4 <malloc+0x164>
     fa0:	e50b300c 	str	r3, [fp, #-12]
     fa4:	e59f2114 	ldr	r2, [pc, #276]	@ 10c0 <malloc+0x160>
     fa8:	e51b300c 	ldr	r3, [fp, #-12]
     fac:	e5823000 	str	r3, [r2]
     fb0:	e59f3108 	ldr	r3, [pc, #264]	@ 10c0 <malloc+0x160>
     fb4:	e5933000 	ldr	r3, [r3]
     fb8:	e59f2104 	ldr	r2, [pc, #260]	@ 10c4 <malloc+0x164>
     fbc:	e5823000 	str	r3, [r2]
     fc0:	e59f30fc 	ldr	r3, [pc, #252]	@ 10c4 <malloc+0x164>
     fc4:	e3a02000 	mov	r2, #0
     fc8:	e5832004 	str	r2, [r3, #4]
     fcc:	e51b300c 	ldr	r3, [fp, #-12]
     fd0:	e5933000 	ldr	r3, [r3]
     fd4:	e50b3008 	str	r3, [fp, #-8]
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e5933004 	ldr	r3, [r3, #4]
     fe0:	e51b2010 	ldr	r2, [fp, #-16]
     fe4:	e1520003 	cmp	r2, r3
     fe8:	8a00001e 	bhi	1068 <malloc+0x108>
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e5933004 	ldr	r3, [r3, #4]
     ff4:	e51b2010 	ldr	r2, [fp, #-16]
     ff8:	e1520003 	cmp	r2, r3
     ffc:	1a000004 	bne	1014 <malloc+0xb4>
    1000:	e51b3008 	ldr	r3, [fp, #-8]
    1004:	e5932000 	ldr	r2, [r3]
    1008:	e51b300c 	ldr	r3, [fp, #-12]
    100c:	e5832000 	str	r2, [r3]
    1010:	ea00000e 	b	1050 <malloc+0xf0>
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e5932004 	ldr	r2, [r3, #4]
    101c:	e51b3010 	ldr	r3, [fp, #-16]
    1020:	e0422003 	sub	r2, r2, r3
    1024:	e51b3008 	ldr	r3, [fp, #-8]
    1028:	e5832004 	str	r2, [r3, #4]
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e5933004 	ldr	r3, [r3, #4]
    1034:	e1a03183 	lsl	r3, r3, #3
    1038:	e51b2008 	ldr	r2, [fp, #-8]
    103c:	e0823003 	add	r3, r2, r3
    1040:	e50b3008 	str	r3, [fp, #-8]
    1044:	e51b3008 	ldr	r3, [fp, #-8]
    1048:	e51b2010 	ldr	r2, [fp, #-16]
    104c:	e5832004 	str	r2, [r3, #4]
    1050:	e59f2068 	ldr	r2, [pc, #104]	@ 10c0 <malloc+0x160>
    1054:	e51b300c 	ldr	r3, [fp, #-12]
    1058:	e5823000 	str	r3, [r2]
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e2833008 	add	r3, r3, #8
    1064:	ea000012 	b	10b4 <malloc+0x154>
    1068:	e59f3050 	ldr	r3, [pc, #80]	@ 10c0 <malloc+0x160>
    106c:	e5933000 	ldr	r3, [r3]
    1070:	e51b2008 	ldr	r2, [fp, #-8]
    1074:	e1520003 	cmp	r2, r3
    1078:	1a000007 	bne	109c <malloc+0x13c>
    107c:	e51b0010 	ldr	r0, [fp, #-16]
    1080:	ebffff94 	bl	ed8 <morecore>
    1084:	e50b0008 	str	r0, [fp, #-8]
    1088:	e51b3008 	ldr	r3, [fp, #-8]
    108c:	e3530000 	cmp	r3, #0
    1090:	1a000001 	bne	109c <malloc+0x13c>
    1094:	e3a03000 	mov	r3, #0
    1098:	ea000005 	b	10b4 <malloc+0x154>
    109c:	e51b3008 	ldr	r3, [fp, #-8]
    10a0:	e50b300c 	str	r3, [fp, #-12]
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e5933000 	ldr	r3, [r3]
    10ac:	e50b3008 	str	r3, [fp, #-8]
    10b0:	eaffffc8 	b	fd8 <malloc+0x78>
    10b4:	e1a00003 	mov	r0, r3
    10b8:	e24bd004 	sub	sp, fp, #4
    10bc:	e8bd8800 	pop	{fp, pc}
    10c0:	00001238 	.word	0x00001238
    10c4:	00001230 	.word	0x00001230

000010c8 <__udivsi3>:
    10c8:	e2512001 	subs	r2, r1, #1
    10cc:	012fff1e 	bxeq	lr
    10d0:	3a000036 	bcc	11b0 <__udivsi3+0xe8>
    10d4:	e1500001 	cmp	r0, r1
    10d8:	9a000022 	bls	1168 <__udivsi3+0xa0>
    10dc:	e1110002 	tst	r1, r2
    10e0:	0a000023 	beq	1174 <__udivsi3+0xac>
    10e4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    10e8:	01a01181 	lsleq	r1, r1, #3
    10ec:	03a03008 	moveq	r3, #8
    10f0:	13a03001 	movne	r3, #1
    10f4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    10f8:	31510000 	cmpcc	r1, r0
    10fc:	31a01201 	lslcc	r1, r1, #4
    1100:	31a03203 	lslcc	r3, r3, #4
    1104:	3afffffa 	bcc	10f4 <__udivsi3+0x2c>
    1108:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    110c:	31510000 	cmpcc	r1, r0
    1110:	31a01081 	lslcc	r1, r1, #1
    1114:	31a03083 	lslcc	r3, r3, #1
    1118:	3afffffa 	bcc	1108 <__udivsi3+0x40>
    111c:	e3a02000 	mov	r2, #0
    1120:	e1500001 	cmp	r0, r1
    1124:	20400001 	subcs	r0, r0, r1
    1128:	21822003 	orrcs	r2, r2, r3
    112c:	e15000a1 	cmp	r0, r1, lsr #1
    1130:	204000a1 	subcs	r0, r0, r1, lsr #1
    1134:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1138:	e1500121 	cmp	r0, r1, lsr #2
    113c:	20400121 	subcs	r0, r0, r1, lsr #2
    1140:	21822123 	orrcs	r2, r2, r3, lsr #2
    1144:	e15001a1 	cmp	r0, r1, lsr #3
    1148:	204001a1 	subcs	r0, r0, r1, lsr #3
    114c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1150:	e3500000 	cmp	r0, #0
    1154:	11b03223 	lsrsne	r3, r3, #4
    1158:	11a01221 	lsrne	r1, r1, #4
    115c:	1affffef 	bne	1120 <__udivsi3+0x58>
    1160:	e1a00002 	mov	r0, r2
    1164:	e12fff1e 	bx	lr
    1168:	03a00001 	moveq	r0, #1
    116c:	13a00000 	movne	r0, #0
    1170:	e12fff1e 	bx	lr
    1174:	e3510801 	cmp	r1, #65536	@ 0x10000
    1178:	21a01821 	lsrcs	r1, r1, #16
    117c:	23a02010 	movcs	r2, #16
    1180:	33a02000 	movcc	r2, #0
    1184:	e3510c01 	cmp	r1, #256	@ 0x100
    1188:	21a01421 	lsrcs	r1, r1, #8
    118c:	22822008 	addcs	r2, r2, #8
    1190:	e3510010 	cmp	r1, #16
    1194:	21a01221 	lsrcs	r1, r1, #4
    1198:	22822004 	addcs	r2, r2, #4
    119c:	e3510004 	cmp	r1, #4
    11a0:	82822003 	addhi	r2, r2, #3
    11a4:	908220a1 	addls	r2, r2, r1, lsr #1
    11a8:	e1a00230 	lsr	r0, r0, r2
    11ac:	e12fff1e 	bx	lr
    11b0:	e3500000 	cmp	r0, #0
    11b4:	13e00000 	mvnne	r0, #0
    11b8:	ea000007 	b	11dc <__aeabi_idiv0>

000011bc <__aeabi_uidivmod>:
    11bc:	e3510000 	cmp	r1, #0
    11c0:	0afffffa 	beq	11b0 <__udivsi3+0xe8>
    11c4:	e92d4003 	push	{r0, r1, lr}
    11c8:	ebffffbe 	bl	10c8 <__udivsi3>
    11cc:	e8bd4006 	pop	{r1, r2, lr}
    11d0:	e0030092 	mul	r3, r2, r0
    11d4:	e0411003 	sub	r1, r1, r3
    11d8:	e12fff1e 	bx	lr

000011dc <__aeabi_idiv0>:
    11dc:	e12fff1e 	bx	lr
