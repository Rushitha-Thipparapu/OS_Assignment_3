
_small_test:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e59f1164 	ldr	r1, [pc, #356]	@ 178 <main+0x178>
      10:	e3a00001 	mov	r0, #1
      14:	eb0002cd 	bl	b50 <printf>
      18:	e3a00a03 	mov	r0, #12288	@ 0x3000
      1c:	eb000239 	bl	908 <sbrk>
      20:	e50b000c 	str	r0, [fp, #-12]
      24:	e51b300c 	ldr	r3, [fp, #-12]
      28:	e3730001 	cmn	r3, #1
      2c:	1a000003 	bne	40 <main+0x40>
      30:	e59f1144 	ldr	r1, [pc, #324]	@ 17c <main+0x17c>
      34:	e3a00001 	mov	r0, #1
      38:	eb0002c4 	bl	b50 <printf>
      3c:	eb000198 	bl	6a4 <exit>
      40:	e51b200c 	ldr	r2, [fp, #-12]
      44:	e59f1134 	ldr	r1, [pc, #308]	@ 180 <main+0x180>
      48:	e3a00001 	mov	r0, #1
      4c:	eb0002bf 	bl	b50 <printf>
      50:	e51b200c 	ldr	r2, [fp, #-12]
      54:	e59f1128 	ldr	r1, [pc, #296]	@ 184 <main+0x184>
      58:	e3a00001 	mov	r0, #1
      5c:	eb0002bb 	bl	b50 <printf>
      60:	e51b300c 	ldr	r3, [fp, #-12]
      64:	e3a02041 	mov	r2, #65	@ 0x41
      68:	e5c32000 	strb	r2, [r3]
      6c:	e59f1114 	ldr	r1, [pc, #276]	@ 188 <main+0x188>
      70:	e3a00001 	mov	r0, #1
      74:	eb0002b5 	bl	b50 <printf>
      78:	e51b300c 	ldr	r3, [fp, #-12]
      7c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
      80:	e1a02003 	mov	r2, r3
      84:	e59f1100 	ldr	r1, [pc, #256]	@ 18c <main+0x18c>
      88:	e3a00001 	mov	r0, #1
      8c:	eb0002af 	bl	b50 <printf>
      90:	e51b300c 	ldr	r3, [fp, #-12]
      94:	e2833a01 	add	r3, r3, #4096	@ 0x1000
      98:	e3a02042 	mov	r2, #66	@ 0x42
      9c:	e5c32000 	strb	r2, [r3]
      a0:	e59f10e8 	ldr	r1, [pc, #232]	@ 190 <main+0x190>
      a4:	e3a00001 	mov	r0, #1
      a8:	eb0002a8 	bl	b50 <printf>
      ac:	e51b300c 	ldr	r3, [fp, #-12]
      b0:	e2833a02 	add	r3, r3, #8192	@ 0x2000
      b4:	e1a02003 	mov	r2, r3
      b8:	e59f10d4 	ldr	r1, [pc, #212]	@ 194 <main+0x194>
      bc:	e3a00001 	mov	r0, #1
      c0:	eb0002a2 	bl	b50 <printf>
      c4:	e51b300c 	ldr	r3, [fp, #-12]
      c8:	e2833a02 	add	r3, r3, #8192	@ 0x2000
      cc:	e3a02043 	mov	r2, #67	@ 0x43
      d0:	e5c32000 	strb	r2, [r3]
      d4:	e59f10bc 	ldr	r1, [pc, #188]	@ 198 <main+0x198>
      d8:	e3a00001 	mov	r0, #1
      dc:	eb00029b 	bl	b50 <printf>
      e0:	e51b300c 	ldr	r3, [fp, #-12]
      e4:	e5d33000 	ldrb	r3, [r3]
      e8:	e1a02003 	mov	r2, r3
      ec:	e51b300c 	ldr	r3, [fp, #-12]
      f0:	e2833a01 	add	r3, r3, #4096	@ 0x1000
      f4:	e5d33000 	ldrb	r3, [r3]
      f8:	e1a01003 	mov	r1, r3
      fc:	e51b300c 	ldr	r3, [fp, #-12]
     100:	e2833a02 	add	r3, r3, #8192	@ 0x2000
     104:	e5d33000 	ldrb	r3, [r3]
     108:	e58d3000 	str	r3, [sp]
     10c:	e1a03001 	mov	r3, r1
     110:	e59f1084 	ldr	r1, [pc, #132]	@ 19c <main+0x19c>
     114:	e3a00001 	mov	r0, #1
     118:	eb00028c 	bl	b50 <printf>
     11c:	e3a03000 	mov	r3, #0
     120:	e50b3008 	str	r3, [fp, #-8]
     124:	ea00000c 	b	15c <main+0x15c>
     128:	e51b3008 	ldr	r3, [fp, #-8]
     12c:	e1a03603 	lsl	r3, r3, #12
     130:	e1a02003 	mov	r2, r3
     134:	e51b300c 	ldr	r3, [fp, #-12]
     138:	e0833002 	add	r3, r3, r2
     13c:	e5d33000 	ldrb	r3, [r3]
     140:	e51b2008 	ldr	r2, [fp, #-8]
     144:	e59f1054 	ldr	r1, [pc, #84]	@ 1a0 <main+0x1a0>
     148:	e3a00001 	mov	r0, #1
     14c:	eb00027f 	bl	b50 <printf>
     150:	e51b3008 	ldr	r3, [fp, #-8]
     154:	e2833001 	add	r3, r3, #1
     158:	e50b3008 	str	r3, [fp, #-8]
     15c:	e51b3008 	ldr	r3, [fp, #-8]
     160:	e3530002 	cmp	r3, #2
     164:	daffffef 	ble	128 <main+0x128>
     168:	e59f1034 	ldr	r1, [pc, #52]	@ 1a4 <main+0x1a4>
     16c:	e3a00001 	mov	r0, #1
     170:	eb000276 	bl	b50 <printf>
     174:	eb00014a 	bl	6a4 <exit>
     178:	0000120c 	.word	0x0000120c
     17c:	00001224 	.word	0x00001224
     180:	00001240 	.word	0x00001240
     184:	0000127c 	.word	0x0000127c
     188:	000012a4 	.word	0x000012a4
     18c:	000012bc 	.word	0x000012bc
     190:	000012e8 	.word	0x000012e8
     194:	00001304 	.word	0x00001304
     198:	00001330 	.word	0x00001330
     19c:	00001350 	.word	0x00001350
     1a0:	00001378 	.word	0x00001378
     1a4:	000013a0 	.word	0x000013a0

000001a8 <strcpy>:
     1a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1ac:	e28db000 	add	fp, sp, #0
     1b0:	e24dd014 	sub	sp, sp, #20
     1b4:	e50b0010 	str	r0, [fp, #-16]
     1b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     1bc:	e51b3010 	ldr	r3, [fp, #-16]
     1c0:	e50b3008 	str	r3, [fp, #-8]
     1c4:	e1a00000 	nop			@ (mov r0, r0)
     1c8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1cc:	e2823001 	add	r3, r2, #1
     1d0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1d4:	e51b3010 	ldr	r3, [fp, #-16]
     1d8:	e2831001 	add	r1, r3, #1
     1dc:	e50b1010 	str	r1, [fp, #-16]
     1e0:	e5d22000 	ldrb	r2, [r2]
     1e4:	e5c32000 	strb	r2, [r3]
     1e8:	e5d33000 	ldrb	r3, [r3]
     1ec:	e3530000 	cmp	r3, #0
     1f0:	1afffff4 	bne	1c8 <strcpy+0x20>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e1a00003 	mov	r0, r3
     1fc:	e28bd000 	add	sp, fp, #0
     200:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     204:	e12fff1e 	bx	lr

00000208 <strcmp>:
     208:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     20c:	e28db000 	add	fp, sp, #0
     210:	e24dd00c 	sub	sp, sp, #12
     214:	e50b0008 	str	r0, [fp, #-8]
     218:	e50b100c 	str	r1, [fp, #-12]
     21c:	ea000005 	b	238 <strcmp+0x30>
     220:	e51b3008 	ldr	r3, [fp, #-8]
     224:	e2833001 	add	r3, r3, #1
     228:	e50b3008 	str	r3, [fp, #-8]
     22c:	e51b300c 	ldr	r3, [fp, #-12]
     230:	e2833001 	add	r3, r3, #1
     234:	e50b300c 	str	r3, [fp, #-12]
     238:	e51b3008 	ldr	r3, [fp, #-8]
     23c:	e5d33000 	ldrb	r3, [r3]
     240:	e3530000 	cmp	r3, #0
     244:	0a000005 	beq	260 <strcmp+0x58>
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e5d32000 	ldrb	r2, [r3]
     250:	e51b300c 	ldr	r3, [fp, #-12]
     254:	e5d33000 	ldrb	r3, [r3]
     258:	e1520003 	cmp	r2, r3
     25c:	0affffef 	beq	220 <strcmp+0x18>
     260:	e51b3008 	ldr	r3, [fp, #-8]
     264:	e5d33000 	ldrb	r3, [r3]
     268:	e1a02003 	mov	r2, r3
     26c:	e51b300c 	ldr	r3, [fp, #-12]
     270:	e5d33000 	ldrb	r3, [r3]
     274:	e0423003 	sub	r3, r2, r3
     278:	e1a00003 	mov	r0, r3
     27c:	e28bd000 	add	sp, fp, #0
     280:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     284:	e12fff1e 	bx	lr

00000288 <strlen>:
     288:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     28c:	e28db000 	add	fp, sp, #0
     290:	e24dd014 	sub	sp, sp, #20
     294:	e50b0010 	str	r0, [fp, #-16]
     298:	e3a03000 	mov	r3, #0
     29c:	e50b3008 	str	r3, [fp, #-8]
     2a0:	ea000002 	b	2b0 <strlen+0x28>
     2a4:	e51b3008 	ldr	r3, [fp, #-8]
     2a8:	e2833001 	add	r3, r3, #1
     2ac:	e50b3008 	str	r3, [fp, #-8]
     2b0:	e51b3008 	ldr	r3, [fp, #-8]
     2b4:	e51b2010 	ldr	r2, [fp, #-16]
     2b8:	e0823003 	add	r3, r2, r3
     2bc:	e5d33000 	ldrb	r3, [r3]
     2c0:	e3530000 	cmp	r3, #0
     2c4:	1afffff6 	bne	2a4 <strlen+0x1c>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e1a00003 	mov	r0, r3
     2d0:	e28bd000 	add	sp, fp, #0
     2d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2d8:	e12fff1e 	bx	lr

000002dc <memset>:
     2dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2e0:	e28db000 	add	fp, sp, #0
     2e4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2e8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2ec:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2f0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2f8:	e50b3008 	str	r3, [fp, #-8]
     2fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     300:	e54b300d 	strb	r3, [fp, #-13]
     304:	e55b200d 	ldrb	r2, [fp, #-13]
     308:	e1a03002 	mov	r3, r2
     30c:	e1a03403 	lsl	r3, r3, #8
     310:	e0833002 	add	r3, r3, r2
     314:	e1a03803 	lsl	r3, r3, #16
     318:	e1a02003 	mov	r2, r3
     31c:	e55b300d 	ldrb	r3, [fp, #-13]
     320:	e1a03403 	lsl	r3, r3, #8
     324:	e1822003 	orr	r2, r2, r3
     328:	e55b300d 	ldrb	r3, [fp, #-13]
     32c:	e1823003 	orr	r3, r2, r3
     330:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     334:	ea000008 	b	35c <memset+0x80>
     338:	e51b3008 	ldr	r3, [fp, #-8]
     33c:	e55b200d 	ldrb	r2, [fp, #-13]
     340:	e5c32000 	strb	r2, [r3]
     344:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     348:	e2433001 	sub	r3, r3, #1
     34c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     350:	e51b3008 	ldr	r3, [fp, #-8]
     354:	e2833001 	add	r3, r3, #1
     358:	e50b3008 	str	r3, [fp, #-8]
     35c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     360:	e3530000 	cmp	r3, #0
     364:	0a000003 	beq	378 <memset+0x9c>
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	e2033003 	and	r3, r3, #3
     370:	e3530000 	cmp	r3, #0
     374:	1affffef 	bne	338 <memset+0x5c>
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e50b300c 	str	r3, [fp, #-12]
     380:	ea000008 	b	3a8 <memset+0xcc>
     384:	e51b300c 	ldr	r3, [fp, #-12]
     388:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     38c:	e5832000 	str	r2, [r3]
     390:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     394:	e2433004 	sub	r3, r3, #4
     398:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     39c:	e51b300c 	ldr	r3, [fp, #-12]
     3a0:	e2833004 	add	r3, r3, #4
     3a4:	e50b300c 	str	r3, [fp, #-12]
     3a8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3ac:	e3530003 	cmp	r3, #3
     3b0:	8afffff3 	bhi	384 <memset+0xa8>
     3b4:	e51b300c 	ldr	r3, [fp, #-12]
     3b8:	e50b3008 	str	r3, [fp, #-8]
     3bc:	ea000008 	b	3e4 <memset+0x108>
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	e55b200d 	ldrb	r2, [fp, #-13]
     3c8:	e5c32000 	strb	r2, [r3]
     3cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3d0:	e2433001 	sub	r3, r3, #1
     3d4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3d8:	e51b3008 	ldr	r3, [fp, #-8]
     3dc:	e2833001 	add	r3, r3, #1
     3e0:	e50b3008 	str	r3, [fp, #-8]
     3e4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3e8:	e3530000 	cmp	r3, #0
     3ec:	1afffff3 	bne	3c0 <memset+0xe4>
     3f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3f4:	e1a00003 	mov	r0, r3
     3f8:	e28bd000 	add	sp, fp, #0
     3fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     400:	e12fff1e 	bx	lr

00000404 <strchr>:
     404:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     408:	e28db000 	add	fp, sp, #0
     40c:	e24dd00c 	sub	sp, sp, #12
     410:	e50b0008 	str	r0, [fp, #-8]
     414:	e1a03001 	mov	r3, r1
     418:	e54b3009 	strb	r3, [fp, #-9]
     41c:	ea000009 	b	448 <strchr+0x44>
     420:	e51b3008 	ldr	r3, [fp, #-8]
     424:	e5d33000 	ldrb	r3, [r3]
     428:	e55b2009 	ldrb	r2, [fp, #-9]
     42c:	e1520003 	cmp	r2, r3
     430:	1a000001 	bne	43c <strchr+0x38>
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	ea000007 	b	45c <strchr+0x58>
     43c:	e51b3008 	ldr	r3, [fp, #-8]
     440:	e2833001 	add	r3, r3, #1
     444:	e50b3008 	str	r3, [fp, #-8]
     448:	e51b3008 	ldr	r3, [fp, #-8]
     44c:	e5d33000 	ldrb	r3, [r3]
     450:	e3530000 	cmp	r3, #0
     454:	1afffff1 	bne	420 <strchr+0x1c>
     458:	e3a03000 	mov	r3, #0
     45c:	e1a00003 	mov	r0, r3
     460:	e28bd000 	add	sp, fp, #0
     464:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     468:	e12fff1e 	bx	lr

0000046c <gets>:
     46c:	e92d4800 	push	{fp, lr}
     470:	e28db004 	add	fp, sp, #4
     474:	e24dd018 	sub	sp, sp, #24
     478:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     47c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     480:	e3a03000 	mov	r3, #0
     484:	e50b3008 	str	r3, [fp, #-8]
     488:	ea000016 	b	4e8 <gets+0x7c>
     48c:	e24b300d 	sub	r3, fp, #13
     490:	e3a02001 	mov	r2, #1
     494:	e1a01003 	mov	r1, r3
     498:	e3a00000 	mov	r0, #0
     49c:	eb00009b 	bl	710 <read>
     4a0:	e50b000c 	str	r0, [fp, #-12]
     4a4:	e51b300c 	ldr	r3, [fp, #-12]
     4a8:	e3530000 	cmp	r3, #0
     4ac:	da000013 	ble	500 <gets+0x94>
     4b0:	e51b3008 	ldr	r3, [fp, #-8]
     4b4:	e2832001 	add	r2, r3, #1
     4b8:	e50b2008 	str	r2, [fp, #-8]
     4bc:	e1a02003 	mov	r2, r3
     4c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4c4:	e0833002 	add	r3, r3, r2
     4c8:	e55b200d 	ldrb	r2, [fp, #-13]
     4cc:	e5c32000 	strb	r2, [r3]
     4d0:	e55b300d 	ldrb	r3, [fp, #-13]
     4d4:	e353000a 	cmp	r3, #10
     4d8:	0a000009 	beq	504 <gets+0x98>
     4dc:	e55b300d 	ldrb	r3, [fp, #-13]
     4e0:	e353000d 	cmp	r3, #13
     4e4:	0a000006 	beq	504 <gets+0x98>
     4e8:	e51b3008 	ldr	r3, [fp, #-8]
     4ec:	e2833001 	add	r3, r3, #1
     4f0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4f4:	e1520003 	cmp	r2, r3
     4f8:	caffffe3 	bgt	48c <gets+0x20>
     4fc:	ea000000 	b	504 <gets+0x98>
     500:	e1a00000 	nop			@ (mov r0, r0)
     504:	e51b3008 	ldr	r3, [fp, #-8]
     508:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     50c:	e0823003 	add	r3, r2, r3
     510:	e3a02000 	mov	r2, #0
     514:	e5c32000 	strb	r2, [r3]
     518:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     51c:	e1a00003 	mov	r0, r3
     520:	e24bd004 	sub	sp, fp, #4
     524:	e8bd8800 	pop	{fp, pc}

00000528 <stat>:
     528:	e92d4800 	push	{fp, lr}
     52c:	e28db004 	add	fp, sp, #4
     530:	e24dd010 	sub	sp, sp, #16
     534:	e50b0010 	str	r0, [fp, #-16]
     538:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     53c:	e3a01000 	mov	r1, #0
     540:	e51b0010 	ldr	r0, [fp, #-16]
     544:	eb00009e 	bl	7c4 <open>
     548:	e50b0008 	str	r0, [fp, #-8]
     54c:	e51b3008 	ldr	r3, [fp, #-8]
     550:	e3530000 	cmp	r3, #0
     554:	aa000001 	bge	560 <stat+0x38>
     558:	e3e03000 	mvn	r3, #0
     55c:	ea000006 	b	57c <stat+0x54>
     560:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     564:	e51b0008 	ldr	r0, [fp, #-8]
     568:	eb0000b0 	bl	830 <fstat>
     56c:	e50b000c 	str	r0, [fp, #-12]
     570:	e51b0008 	ldr	r0, [fp, #-8]
     574:	eb000077 	bl	758 <close>
     578:	e51b300c 	ldr	r3, [fp, #-12]
     57c:	e1a00003 	mov	r0, r3
     580:	e24bd004 	sub	sp, fp, #4
     584:	e8bd8800 	pop	{fp, pc}

00000588 <atoi>:
     588:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     58c:	e28db000 	add	fp, sp, #0
     590:	e24dd014 	sub	sp, sp, #20
     594:	e50b0010 	str	r0, [fp, #-16]
     598:	e3a03000 	mov	r3, #0
     59c:	e50b3008 	str	r3, [fp, #-8]
     5a0:	ea00000c 	b	5d8 <atoi+0x50>
     5a4:	e51b2008 	ldr	r2, [fp, #-8]
     5a8:	e1a03002 	mov	r3, r2
     5ac:	e1a03103 	lsl	r3, r3, #2
     5b0:	e0833002 	add	r3, r3, r2
     5b4:	e1a03083 	lsl	r3, r3, #1
     5b8:	e1a01003 	mov	r1, r3
     5bc:	e51b3010 	ldr	r3, [fp, #-16]
     5c0:	e2832001 	add	r2, r3, #1
     5c4:	e50b2010 	str	r2, [fp, #-16]
     5c8:	e5d33000 	ldrb	r3, [r3]
     5cc:	e0813003 	add	r3, r1, r3
     5d0:	e2433030 	sub	r3, r3, #48	@ 0x30
     5d4:	e50b3008 	str	r3, [fp, #-8]
     5d8:	e51b3010 	ldr	r3, [fp, #-16]
     5dc:	e5d33000 	ldrb	r3, [r3]
     5e0:	e353002f 	cmp	r3, #47	@ 0x2f
     5e4:	9a000003 	bls	5f8 <atoi+0x70>
     5e8:	e51b3010 	ldr	r3, [fp, #-16]
     5ec:	e5d33000 	ldrb	r3, [r3]
     5f0:	e3530039 	cmp	r3, #57	@ 0x39
     5f4:	9affffea 	bls	5a4 <atoi+0x1c>
     5f8:	e51b3008 	ldr	r3, [fp, #-8]
     5fc:	e1a00003 	mov	r0, r3
     600:	e28bd000 	add	sp, fp, #0
     604:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     608:	e12fff1e 	bx	lr

0000060c <memmove>:
     60c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     610:	e28db000 	add	fp, sp, #0
     614:	e24dd01c 	sub	sp, sp, #28
     618:	e50b0010 	str	r0, [fp, #-16]
     61c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     620:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     624:	e51b3010 	ldr	r3, [fp, #-16]
     628:	e50b3008 	str	r3, [fp, #-8]
     62c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     630:	e50b300c 	str	r3, [fp, #-12]
     634:	ea000007 	b	658 <memmove+0x4c>
     638:	e51b200c 	ldr	r2, [fp, #-12]
     63c:	e2823001 	add	r3, r2, #1
     640:	e50b300c 	str	r3, [fp, #-12]
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e2831001 	add	r1, r3, #1
     64c:	e50b1008 	str	r1, [fp, #-8]
     650:	e5d22000 	ldrb	r2, [r2]
     654:	e5c32000 	strb	r2, [r3]
     658:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     65c:	e2432001 	sub	r2, r3, #1
     660:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     664:	e3530000 	cmp	r3, #0
     668:	cafffff2 	bgt	638 <memmove+0x2c>
     66c:	e51b3010 	ldr	r3, [fp, #-16]
     670:	e1a00003 	mov	r0, r3
     674:	e28bd000 	add	sp, fp, #0
     678:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     67c:	e12fff1e 	bx	lr

00000680 <fork>:
     680:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     684:	e1a04003 	mov	r4, r3
     688:	e1a03002 	mov	r3, r2
     68c:	e1a02001 	mov	r2, r1
     690:	e1a01000 	mov	r1, r0
     694:	e3a00001 	mov	r0, #1
     698:	ef000000 	svc	0x00000000
     69c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a0:	e12fff1e 	bx	lr

000006a4 <exit>:
     6a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a8:	e1a04003 	mov	r4, r3
     6ac:	e1a03002 	mov	r3, r2
     6b0:	e1a02001 	mov	r2, r1
     6b4:	e1a01000 	mov	r1, r0
     6b8:	e3a00002 	mov	r0, #2
     6bc:	ef000000 	svc	0x00000000
     6c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <wait>:
     6c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6cc:	e1a04003 	mov	r4, r3
     6d0:	e1a03002 	mov	r3, r2
     6d4:	e1a02001 	mov	r2, r1
     6d8:	e1a01000 	mov	r1, r0
     6dc:	e3a00003 	mov	r0, #3
     6e0:	ef000000 	svc	0x00000000
     6e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e8:	e12fff1e 	bx	lr

000006ec <pipe>:
     6ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f0:	e1a04003 	mov	r4, r3
     6f4:	e1a03002 	mov	r3, r2
     6f8:	e1a02001 	mov	r2, r1
     6fc:	e1a01000 	mov	r1, r0
     700:	e3a00004 	mov	r0, #4
     704:	ef000000 	svc	0x00000000
     708:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <read>:
     710:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     714:	e1a04003 	mov	r4, r3
     718:	e1a03002 	mov	r3, r2
     71c:	e1a02001 	mov	r2, r1
     720:	e1a01000 	mov	r1, r0
     724:	e3a00005 	mov	r0, #5
     728:	ef000000 	svc	0x00000000
     72c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <write>:
     734:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a00010 	mov	r0, #16
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <close>:
     758:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a00015 	mov	r0, #21
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <kill>:
     77c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a00006 	mov	r0, #6
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <exec>:
     7a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a00007 	mov	r0, #7
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <open>:
     7c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a0000f 	mov	r0, #15
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <mknod>:
     7e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a00011 	mov	r0, #17
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <unlink>:
     80c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a00012 	mov	r0, #18
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <fstat>:
     830:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a00008 	mov	r0, #8
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <link>:
     854:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a00013 	mov	r0, #19
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <mkdir>:
     878:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     87c:	e1a04003 	mov	r4, r3
     880:	e1a03002 	mov	r3, r2
     884:	e1a02001 	mov	r2, r1
     888:	e1a01000 	mov	r1, r0
     88c:	e3a00014 	mov	r0, #20
     890:	ef000000 	svc	0x00000000
     894:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     898:	e12fff1e 	bx	lr

0000089c <chdir>:
     89c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a0:	e1a04003 	mov	r4, r3
     8a4:	e1a03002 	mov	r3, r2
     8a8:	e1a02001 	mov	r2, r1
     8ac:	e1a01000 	mov	r1, r0
     8b0:	e3a00009 	mov	r0, #9
     8b4:	ef000000 	svc	0x00000000
     8b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8bc:	e12fff1e 	bx	lr

000008c0 <dup>:
     8c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c4:	e1a04003 	mov	r4, r3
     8c8:	e1a03002 	mov	r3, r2
     8cc:	e1a02001 	mov	r2, r1
     8d0:	e1a01000 	mov	r1, r0
     8d4:	e3a0000a 	mov	r0, #10
     8d8:	ef000000 	svc	0x00000000
     8dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e0:	e12fff1e 	bx	lr

000008e4 <getpid>:
     8e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e8:	e1a04003 	mov	r4, r3
     8ec:	e1a03002 	mov	r3, r2
     8f0:	e1a02001 	mov	r2, r1
     8f4:	e1a01000 	mov	r1, r0
     8f8:	e3a0000b 	mov	r0, #11
     8fc:	ef000000 	svc	0x00000000
     900:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     904:	e12fff1e 	bx	lr

00000908 <sbrk>:
     908:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     90c:	e1a04003 	mov	r4, r3
     910:	e1a03002 	mov	r3, r2
     914:	e1a02001 	mov	r2, r1
     918:	e1a01000 	mov	r1, r0
     91c:	e3a0000c 	mov	r0, #12
     920:	ef000000 	svc	0x00000000
     924:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     928:	e12fff1e 	bx	lr

0000092c <sleep>:
     92c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     930:	e1a04003 	mov	r4, r3
     934:	e1a03002 	mov	r3, r2
     938:	e1a02001 	mov	r2, r1
     93c:	e1a01000 	mov	r1, r0
     940:	e3a0000d 	mov	r0, #13
     944:	ef000000 	svc	0x00000000
     948:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     94c:	e12fff1e 	bx	lr

00000950 <uptime>:
     950:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     954:	e1a04003 	mov	r4, r3
     958:	e1a03002 	mov	r3, r2
     95c:	e1a02001 	mov	r2, r1
     960:	e1a01000 	mov	r1, r0
     964:	e3a0000e 	mov	r0, #14
     968:	ef000000 	svc	0x00000000
     96c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     970:	e12fff1e 	bx	lr

00000974 <pgpte>:
     974:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     978:	e1a04003 	mov	r4, r3
     97c:	e1a03002 	mov	r3, r2
     980:	e1a02001 	mov	r2, r1
     984:	e1a01000 	mov	r1, r0
     988:	e3a00016 	mov	r0, #22
     98c:	ef000000 	svc	0x00000000
     990:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     994:	e12fff1e 	bx	lr

00000998 <kpt>:
     998:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     99c:	e1a04003 	mov	r4, r3
     9a0:	e1a03002 	mov	r3, r2
     9a4:	e1a02001 	mov	r2, r1
     9a8:	e1a01000 	mov	r1, r0
     9ac:	e3a00017 	mov	r0, #23
     9b0:	ef000000 	svc	0x00000000
     9b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9b8:	e12fff1e 	bx	lr

000009bc <ugetpid>:
     9bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c0:	e1a04003 	mov	r4, r3
     9c4:	e1a03002 	mov	r3, r2
     9c8:	e1a02001 	mov	r2, r1
     9cc:	e1a01000 	mov	r1, r0
     9d0:	e3a00018 	mov	r0, #24
     9d4:	ef000000 	svc	0x00000000
     9d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9dc:	e12fff1e 	bx	lr

000009e0 <putc>:
     9e0:	e92d4800 	push	{fp, lr}
     9e4:	e28db004 	add	fp, sp, #4
     9e8:	e24dd008 	sub	sp, sp, #8
     9ec:	e50b0008 	str	r0, [fp, #-8]
     9f0:	e1a03001 	mov	r3, r1
     9f4:	e54b3009 	strb	r3, [fp, #-9]
     9f8:	e24b3009 	sub	r3, fp, #9
     9fc:	e3a02001 	mov	r2, #1
     a00:	e1a01003 	mov	r1, r3
     a04:	e51b0008 	ldr	r0, [fp, #-8]
     a08:	ebffff49 	bl	734 <write>
     a0c:	e1a00000 	nop			@ (mov r0, r0)
     a10:	e24bd004 	sub	sp, fp, #4
     a14:	e8bd8800 	pop	{fp, pc}

00000a18 <printint>:
     a18:	e92d4800 	push	{fp, lr}
     a1c:	e28db004 	add	fp, sp, #4
     a20:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a24:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a28:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a2c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a30:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a34:	e3a03000 	mov	r3, #0
     a38:	e50b300c 	str	r3, [fp, #-12]
     a3c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a40:	e3530000 	cmp	r3, #0
     a44:	0a000008 	beq	a6c <printint+0x54>
     a48:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a4c:	e3530000 	cmp	r3, #0
     a50:	aa000005 	bge	a6c <printint+0x54>
     a54:	e3a03001 	mov	r3, #1
     a58:	e50b300c 	str	r3, [fp, #-12]
     a5c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a60:	e2633000 	rsb	r3, r3, #0
     a64:	e50b3010 	str	r3, [fp, #-16]
     a68:	ea000001 	b	a74 <printint+0x5c>
     a6c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a70:	e50b3010 	str	r3, [fp, #-16]
     a74:	e3a03000 	mov	r3, #0
     a78:	e50b3008 	str	r3, [fp, #-8]
     a7c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a80:	e51b3010 	ldr	r3, [fp, #-16]
     a84:	e1a01002 	mov	r1, r2
     a88:	e1a00003 	mov	r0, r3
     a8c:	eb0001d5 	bl	11e8 <__aeabi_uidivmod>
     a90:	e1a03001 	mov	r3, r1
     a94:	e1a01003 	mov	r1, r3
     a98:	e51b3008 	ldr	r3, [fp, #-8]
     a9c:	e2832001 	add	r2, r3, #1
     aa0:	e50b2008 	str	r2, [fp, #-8]
     aa4:	e59f20a0 	ldr	r2, [pc, #160]	@ b4c <printint+0x134>
     aa8:	e7d22001 	ldrb	r2, [r2, r1]
     aac:	e2433004 	sub	r3, r3, #4
     ab0:	e083300b 	add	r3, r3, fp
     ab4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ab8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     abc:	e1a01003 	mov	r1, r3
     ac0:	e51b0010 	ldr	r0, [fp, #-16]
     ac4:	eb00018a 	bl	10f4 <__udivsi3>
     ac8:	e1a03000 	mov	r3, r0
     acc:	e50b3010 	str	r3, [fp, #-16]
     ad0:	e51b3010 	ldr	r3, [fp, #-16]
     ad4:	e3530000 	cmp	r3, #0
     ad8:	1affffe7 	bne	a7c <printint+0x64>
     adc:	e51b300c 	ldr	r3, [fp, #-12]
     ae0:	e3530000 	cmp	r3, #0
     ae4:	0a00000e 	beq	b24 <printint+0x10c>
     ae8:	e51b3008 	ldr	r3, [fp, #-8]
     aec:	e2832001 	add	r2, r3, #1
     af0:	e50b2008 	str	r2, [fp, #-8]
     af4:	e2433004 	sub	r3, r3, #4
     af8:	e083300b 	add	r3, r3, fp
     afc:	e3a0202d 	mov	r2, #45	@ 0x2d
     b00:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b04:	ea000006 	b	b24 <printint+0x10c>
     b08:	e24b2020 	sub	r2, fp, #32
     b0c:	e51b3008 	ldr	r3, [fp, #-8]
     b10:	e0823003 	add	r3, r2, r3
     b14:	e5d33000 	ldrb	r3, [r3]
     b18:	e1a01003 	mov	r1, r3
     b1c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b20:	ebffffae 	bl	9e0 <putc>
     b24:	e51b3008 	ldr	r3, [fp, #-8]
     b28:	e2433001 	sub	r3, r3, #1
     b2c:	e50b3008 	str	r3, [fp, #-8]
     b30:	e51b3008 	ldr	r3, [fp, #-8]
     b34:	e3530000 	cmp	r3, #0
     b38:	aafffff2 	bge	b08 <printint+0xf0>
     b3c:	e1a00000 	nop			@ (mov r0, r0)
     b40:	e1a00000 	nop			@ (mov r0, r0)
     b44:	e24bd004 	sub	sp, fp, #4
     b48:	e8bd8800 	pop	{fp, pc}
     b4c:	000013c0 	.word	0x000013c0

00000b50 <printf>:
     b50:	e92d000e 	push	{r1, r2, r3}
     b54:	e92d4800 	push	{fp, lr}
     b58:	e28db004 	add	fp, sp, #4
     b5c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b60:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b64:	e3a03000 	mov	r3, #0
     b68:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b6c:	e28b3008 	add	r3, fp, #8
     b70:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b74:	e3a03000 	mov	r3, #0
     b78:	e50b3010 	str	r3, [fp, #-16]
     b7c:	ea000074 	b	d54 <printf+0x204>
     b80:	e59b2004 	ldr	r2, [fp, #4]
     b84:	e51b3010 	ldr	r3, [fp, #-16]
     b88:	e0823003 	add	r3, r2, r3
     b8c:	e5d33000 	ldrb	r3, [r3]
     b90:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b94:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b98:	e3530000 	cmp	r3, #0
     b9c:	1a00000b 	bne	bd0 <printf+0x80>
     ba0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ba4:	e3530025 	cmp	r3, #37	@ 0x25
     ba8:	1a000002 	bne	bb8 <printf+0x68>
     bac:	e3a03025 	mov	r3, #37	@ 0x25
     bb0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     bb4:	ea000063 	b	d48 <printf+0x1f8>
     bb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bbc:	e6ef3073 	uxtb	r3, r3
     bc0:	e1a01003 	mov	r1, r3
     bc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bc8:	ebffff84 	bl	9e0 <putc>
     bcc:	ea00005d 	b	d48 <printf+0x1f8>
     bd0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bd4:	e3530025 	cmp	r3, #37	@ 0x25
     bd8:	1a00005a 	bne	d48 <printf+0x1f8>
     bdc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     be0:	e3530064 	cmp	r3, #100	@ 0x64
     be4:	1a00000a 	bne	c14 <printf+0xc4>
     be8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bec:	e5933000 	ldr	r3, [r3]
     bf0:	e1a01003 	mov	r1, r3
     bf4:	e3a03001 	mov	r3, #1
     bf8:	e3a0200a 	mov	r2, #10
     bfc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c00:	ebffff84 	bl	a18 <printint>
     c04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c08:	e2833004 	add	r3, r3, #4
     c0c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c10:	ea00004a 	b	d40 <printf+0x1f0>
     c14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c18:	e3530078 	cmp	r3, #120	@ 0x78
     c1c:	0a000002 	beq	c2c <printf+0xdc>
     c20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c24:	e3530070 	cmp	r3, #112	@ 0x70
     c28:	1a00000a 	bne	c58 <printf+0x108>
     c2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c30:	e5933000 	ldr	r3, [r3]
     c34:	e1a01003 	mov	r1, r3
     c38:	e3a03000 	mov	r3, #0
     c3c:	e3a02010 	mov	r2, #16
     c40:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c44:	ebffff73 	bl	a18 <printint>
     c48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c4c:	e2833004 	add	r3, r3, #4
     c50:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c54:	ea000039 	b	d40 <printf+0x1f0>
     c58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c5c:	e3530073 	cmp	r3, #115	@ 0x73
     c60:	1a000018 	bne	cc8 <printf+0x178>
     c64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c68:	e5933000 	ldr	r3, [r3]
     c6c:	e50b300c 	str	r3, [fp, #-12]
     c70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c74:	e2833004 	add	r3, r3, #4
     c78:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c7c:	e51b300c 	ldr	r3, [fp, #-12]
     c80:	e3530000 	cmp	r3, #0
     c84:	1a00000a 	bne	cb4 <printf+0x164>
     c88:	e59f30f4 	ldr	r3, [pc, #244]	@ d84 <printf+0x234>
     c8c:	e50b300c 	str	r3, [fp, #-12]
     c90:	ea000007 	b	cb4 <printf+0x164>
     c94:	e51b300c 	ldr	r3, [fp, #-12]
     c98:	e5d33000 	ldrb	r3, [r3]
     c9c:	e1a01003 	mov	r1, r3
     ca0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ca4:	ebffff4d 	bl	9e0 <putc>
     ca8:	e51b300c 	ldr	r3, [fp, #-12]
     cac:	e2833001 	add	r3, r3, #1
     cb0:	e50b300c 	str	r3, [fp, #-12]
     cb4:	e51b300c 	ldr	r3, [fp, #-12]
     cb8:	e5d33000 	ldrb	r3, [r3]
     cbc:	e3530000 	cmp	r3, #0
     cc0:	1afffff3 	bne	c94 <printf+0x144>
     cc4:	ea00001d 	b	d40 <printf+0x1f0>
     cc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ccc:	e3530063 	cmp	r3, #99	@ 0x63
     cd0:	1a000009 	bne	cfc <printf+0x1ac>
     cd4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cd8:	e5933000 	ldr	r3, [r3]
     cdc:	e6ef3073 	uxtb	r3, r3
     ce0:	e1a01003 	mov	r1, r3
     ce4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ce8:	ebffff3c 	bl	9e0 <putc>
     cec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cf0:	e2833004 	add	r3, r3, #4
     cf4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cf8:	ea000010 	b	d40 <printf+0x1f0>
     cfc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d00:	e3530025 	cmp	r3, #37	@ 0x25
     d04:	1a000005 	bne	d20 <printf+0x1d0>
     d08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d0c:	e6ef3073 	uxtb	r3, r3
     d10:	e1a01003 	mov	r1, r3
     d14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d18:	ebffff30 	bl	9e0 <putc>
     d1c:	ea000007 	b	d40 <printf+0x1f0>
     d20:	e3a01025 	mov	r1, #37	@ 0x25
     d24:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d28:	ebffff2c 	bl	9e0 <putc>
     d2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d30:	e6ef3073 	uxtb	r3, r3
     d34:	e1a01003 	mov	r1, r3
     d38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d3c:	ebffff27 	bl	9e0 <putc>
     d40:	e3a03000 	mov	r3, #0
     d44:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d48:	e51b3010 	ldr	r3, [fp, #-16]
     d4c:	e2833001 	add	r3, r3, #1
     d50:	e50b3010 	str	r3, [fp, #-16]
     d54:	e59b2004 	ldr	r2, [fp, #4]
     d58:	e51b3010 	ldr	r3, [fp, #-16]
     d5c:	e0823003 	add	r3, r2, r3
     d60:	e5d33000 	ldrb	r3, [r3]
     d64:	e3530000 	cmp	r3, #0
     d68:	1affff84 	bne	b80 <printf+0x30>
     d6c:	e1a00000 	nop			@ (mov r0, r0)
     d70:	e1a00000 	nop			@ (mov r0, r0)
     d74:	e24bd004 	sub	sp, fp, #4
     d78:	e8bd4800 	pop	{fp, lr}
     d7c:	e28dd00c 	add	sp, sp, #12
     d80:	e12fff1e 	bx	lr
     d84:	000013b8 	.word	0x000013b8

00000d88 <free>:
     d88:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d8c:	e28db000 	add	fp, sp, #0
     d90:	e24dd014 	sub	sp, sp, #20
     d94:	e50b0010 	str	r0, [fp, #-16]
     d98:	e51b3010 	ldr	r3, [fp, #-16]
     d9c:	e2433008 	sub	r3, r3, #8
     da0:	e50b300c 	str	r3, [fp, #-12]
     da4:	e59f3154 	ldr	r3, [pc, #340]	@ f00 <free+0x178>
     da8:	e5933000 	ldr	r3, [r3]
     dac:	e50b3008 	str	r3, [fp, #-8]
     db0:	ea000010 	b	df8 <free+0x70>
     db4:	e51b3008 	ldr	r3, [fp, #-8]
     db8:	e5933000 	ldr	r3, [r3]
     dbc:	e51b2008 	ldr	r2, [fp, #-8]
     dc0:	e1520003 	cmp	r2, r3
     dc4:	3a000008 	bcc	dec <free+0x64>
     dc8:	e51b200c 	ldr	r2, [fp, #-12]
     dcc:	e51b3008 	ldr	r3, [fp, #-8]
     dd0:	e1520003 	cmp	r2, r3
     dd4:	8a000010 	bhi	e1c <free+0x94>
     dd8:	e51b3008 	ldr	r3, [fp, #-8]
     ddc:	e5933000 	ldr	r3, [r3]
     de0:	e51b200c 	ldr	r2, [fp, #-12]
     de4:	e1520003 	cmp	r2, r3
     de8:	3a00000b 	bcc	e1c <free+0x94>
     dec:	e51b3008 	ldr	r3, [fp, #-8]
     df0:	e5933000 	ldr	r3, [r3]
     df4:	e50b3008 	str	r3, [fp, #-8]
     df8:	e51b200c 	ldr	r2, [fp, #-12]
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e1520003 	cmp	r2, r3
     e04:	9affffea 	bls	db4 <free+0x2c>
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e5933000 	ldr	r3, [r3]
     e10:	e51b200c 	ldr	r2, [fp, #-12]
     e14:	e1520003 	cmp	r2, r3
     e18:	2affffe5 	bcs	db4 <free+0x2c>
     e1c:	e51b300c 	ldr	r3, [fp, #-12]
     e20:	e5933004 	ldr	r3, [r3, #4]
     e24:	e1a03183 	lsl	r3, r3, #3
     e28:	e51b200c 	ldr	r2, [fp, #-12]
     e2c:	e0822003 	add	r2, r2, r3
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e5933000 	ldr	r3, [r3]
     e38:	e1520003 	cmp	r2, r3
     e3c:	1a00000d 	bne	e78 <free+0xf0>
     e40:	e51b300c 	ldr	r3, [fp, #-12]
     e44:	e5932004 	ldr	r2, [r3, #4]
     e48:	e51b3008 	ldr	r3, [fp, #-8]
     e4c:	e5933000 	ldr	r3, [r3]
     e50:	e5933004 	ldr	r3, [r3, #4]
     e54:	e0822003 	add	r2, r2, r3
     e58:	e51b300c 	ldr	r3, [fp, #-12]
     e5c:	e5832004 	str	r2, [r3, #4]
     e60:	e51b3008 	ldr	r3, [fp, #-8]
     e64:	e5933000 	ldr	r3, [r3]
     e68:	e5932000 	ldr	r2, [r3]
     e6c:	e51b300c 	ldr	r3, [fp, #-12]
     e70:	e5832000 	str	r2, [r3]
     e74:	ea000003 	b	e88 <free+0x100>
     e78:	e51b3008 	ldr	r3, [fp, #-8]
     e7c:	e5932000 	ldr	r2, [r3]
     e80:	e51b300c 	ldr	r3, [fp, #-12]
     e84:	e5832000 	str	r2, [r3]
     e88:	e51b3008 	ldr	r3, [fp, #-8]
     e8c:	e5933004 	ldr	r3, [r3, #4]
     e90:	e1a03183 	lsl	r3, r3, #3
     e94:	e51b2008 	ldr	r2, [fp, #-8]
     e98:	e0823003 	add	r3, r2, r3
     e9c:	e51b200c 	ldr	r2, [fp, #-12]
     ea0:	e1520003 	cmp	r2, r3
     ea4:	1a00000b 	bne	ed8 <free+0x150>
     ea8:	e51b3008 	ldr	r3, [fp, #-8]
     eac:	e5932004 	ldr	r2, [r3, #4]
     eb0:	e51b300c 	ldr	r3, [fp, #-12]
     eb4:	e5933004 	ldr	r3, [r3, #4]
     eb8:	e0822003 	add	r2, r2, r3
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e5832004 	str	r2, [r3, #4]
     ec4:	e51b300c 	ldr	r3, [fp, #-12]
     ec8:	e5932000 	ldr	r2, [r3]
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e5832000 	str	r2, [r3]
     ed4:	ea000002 	b	ee4 <free+0x15c>
     ed8:	e51b3008 	ldr	r3, [fp, #-8]
     edc:	e51b200c 	ldr	r2, [fp, #-12]
     ee0:	e5832000 	str	r2, [r3]
     ee4:	e59f2014 	ldr	r2, [pc, #20]	@ f00 <free+0x178>
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e5823000 	str	r3, [r2]
     ef0:	e1a00000 	nop			@ (mov r0, r0)
     ef4:	e28bd000 	add	sp, fp, #0
     ef8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     efc:	e12fff1e 	bx	lr
     f00:	000013dc 	.word	0x000013dc

00000f04 <morecore>:
     f04:	e92d4800 	push	{fp, lr}
     f08:	e28db004 	add	fp, sp, #4
     f0c:	e24dd010 	sub	sp, sp, #16
     f10:	e50b0010 	str	r0, [fp, #-16]
     f14:	e51b3010 	ldr	r3, [fp, #-16]
     f18:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f1c:	2a000001 	bcs	f28 <morecore+0x24>
     f20:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f24:	e50b3010 	str	r3, [fp, #-16]
     f28:	e51b3010 	ldr	r3, [fp, #-16]
     f2c:	e1a03183 	lsl	r3, r3, #3
     f30:	e1a00003 	mov	r0, r3
     f34:	ebfffe73 	bl	908 <sbrk>
     f38:	e50b0008 	str	r0, [fp, #-8]
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e3730001 	cmn	r3, #1
     f44:	1a000001 	bne	f50 <morecore+0x4c>
     f48:	e3a03000 	mov	r3, #0
     f4c:	ea00000a 	b	f7c <morecore+0x78>
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e50b300c 	str	r3, [fp, #-12]
     f58:	e51b300c 	ldr	r3, [fp, #-12]
     f5c:	e51b2010 	ldr	r2, [fp, #-16]
     f60:	e5832004 	str	r2, [r3, #4]
     f64:	e51b300c 	ldr	r3, [fp, #-12]
     f68:	e2833008 	add	r3, r3, #8
     f6c:	e1a00003 	mov	r0, r3
     f70:	ebffff84 	bl	d88 <free>
     f74:	e59f300c 	ldr	r3, [pc, #12]	@ f88 <morecore+0x84>
     f78:	e5933000 	ldr	r3, [r3]
     f7c:	e1a00003 	mov	r0, r3
     f80:	e24bd004 	sub	sp, fp, #4
     f84:	e8bd8800 	pop	{fp, pc}
     f88:	000013dc 	.word	0x000013dc

00000f8c <malloc>:
     f8c:	e92d4800 	push	{fp, lr}
     f90:	e28db004 	add	fp, sp, #4
     f94:	e24dd018 	sub	sp, sp, #24
     f98:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fa0:	e2833007 	add	r3, r3, #7
     fa4:	e1a031a3 	lsr	r3, r3, #3
     fa8:	e2833001 	add	r3, r3, #1
     fac:	e50b3010 	str	r3, [fp, #-16]
     fb0:	e59f3134 	ldr	r3, [pc, #308]	@ 10ec <malloc+0x160>
     fb4:	e5933000 	ldr	r3, [r3]
     fb8:	e50b300c 	str	r3, [fp, #-12]
     fbc:	e51b300c 	ldr	r3, [fp, #-12]
     fc0:	e3530000 	cmp	r3, #0
     fc4:	1a00000b 	bne	ff8 <malloc+0x6c>
     fc8:	e59f3120 	ldr	r3, [pc, #288]	@ 10f0 <malloc+0x164>
     fcc:	e50b300c 	str	r3, [fp, #-12]
     fd0:	e59f2114 	ldr	r2, [pc, #276]	@ 10ec <malloc+0x160>
     fd4:	e51b300c 	ldr	r3, [fp, #-12]
     fd8:	e5823000 	str	r3, [r2]
     fdc:	e59f3108 	ldr	r3, [pc, #264]	@ 10ec <malloc+0x160>
     fe0:	e5933000 	ldr	r3, [r3]
     fe4:	e59f2104 	ldr	r2, [pc, #260]	@ 10f0 <malloc+0x164>
     fe8:	e5823000 	str	r3, [r2]
     fec:	e59f30fc 	ldr	r3, [pc, #252]	@ 10f0 <malloc+0x164>
     ff0:	e3a02000 	mov	r2, #0
     ff4:	e5832004 	str	r2, [r3, #4]
     ff8:	e51b300c 	ldr	r3, [fp, #-12]
     ffc:	e5933000 	ldr	r3, [r3]
    1000:	e50b3008 	str	r3, [fp, #-8]
    1004:	e51b3008 	ldr	r3, [fp, #-8]
    1008:	e5933004 	ldr	r3, [r3, #4]
    100c:	e51b2010 	ldr	r2, [fp, #-16]
    1010:	e1520003 	cmp	r2, r3
    1014:	8a00001e 	bhi	1094 <malloc+0x108>
    1018:	e51b3008 	ldr	r3, [fp, #-8]
    101c:	e5933004 	ldr	r3, [r3, #4]
    1020:	e51b2010 	ldr	r2, [fp, #-16]
    1024:	e1520003 	cmp	r2, r3
    1028:	1a000004 	bne	1040 <malloc+0xb4>
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e5932000 	ldr	r2, [r3]
    1034:	e51b300c 	ldr	r3, [fp, #-12]
    1038:	e5832000 	str	r2, [r3]
    103c:	ea00000e 	b	107c <malloc+0xf0>
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e5932004 	ldr	r2, [r3, #4]
    1048:	e51b3010 	ldr	r3, [fp, #-16]
    104c:	e0422003 	sub	r2, r2, r3
    1050:	e51b3008 	ldr	r3, [fp, #-8]
    1054:	e5832004 	str	r2, [r3, #4]
    1058:	e51b3008 	ldr	r3, [fp, #-8]
    105c:	e5933004 	ldr	r3, [r3, #4]
    1060:	e1a03183 	lsl	r3, r3, #3
    1064:	e51b2008 	ldr	r2, [fp, #-8]
    1068:	e0823003 	add	r3, r2, r3
    106c:	e50b3008 	str	r3, [fp, #-8]
    1070:	e51b3008 	ldr	r3, [fp, #-8]
    1074:	e51b2010 	ldr	r2, [fp, #-16]
    1078:	e5832004 	str	r2, [r3, #4]
    107c:	e59f2068 	ldr	r2, [pc, #104]	@ 10ec <malloc+0x160>
    1080:	e51b300c 	ldr	r3, [fp, #-12]
    1084:	e5823000 	str	r3, [r2]
    1088:	e51b3008 	ldr	r3, [fp, #-8]
    108c:	e2833008 	add	r3, r3, #8
    1090:	ea000012 	b	10e0 <malloc+0x154>
    1094:	e59f3050 	ldr	r3, [pc, #80]	@ 10ec <malloc+0x160>
    1098:	e5933000 	ldr	r3, [r3]
    109c:	e51b2008 	ldr	r2, [fp, #-8]
    10a0:	e1520003 	cmp	r2, r3
    10a4:	1a000007 	bne	10c8 <malloc+0x13c>
    10a8:	e51b0010 	ldr	r0, [fp, #-16]
    10ac:	ebffff94 	bl	f04 <morecore>
    10b0:	e50b0008 	str	r0, [fp, #-8]
    10b4:	e51b3008 	ldr	r3, [fp, #-8]
    10b8:	e3530000 	cmp	r3, #0
    10bc:	1a000001 	bne	10c8 <malloc+0x13c>
    10c0:	e3a03000 	mov	r3, #0
    10c4:	ea000005 	b	10e0 <malloc+0x154>
    10c8:	e51b3008 	ldr	r3, [fp, #-8]
    10cc:	e50b300c 	str	r3, [fp, #-12]
    10d0:	e51b3008 	ldr	r3, [fp, #-8]
    10d4:	e5933000 	ldr	r3, [r3]
    10d8:	e50b3008 	str	r3, [fp, #-8]
    10dc:	eaffffc8 	b	1004 <malloc+0x78>
    10e0:	e1a00003 	mov	r0, r3
    10e4:	e24bd004 	sub	sp, fp, #4
    10e8:	e8bd8800 	pop	{fp, pc}
    10ec:	000013dc 	.word	0x000013dc
    10f0:	000013d4 	.word	0x000013d4

000010f4 <__udivsi3>:
    10f4:	e2512001 	subs	r2, r1, #1
    10f8:	012fff1e 	bxeq	lr
    10fc:	3a000036 	bcc	11dc <__udivsi3+0xe8>
    1100:	e1500001 	cmp	r0, r1
    1104:	9a000022 	bls	1194 <__udivsi3+0xa0>
    1108:	e1110002 	tst	r1, r2
    110c:	0a000023 	beq	11a0 <__udivsi3+0xac>
    1110:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1114:	01a01181 	lsleq	r1, r1, #3
    1118:	03a03008 	moveq	r3, #8
    111c:	13a03001 	movne	r3, #1
    1120:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1124:	31510000 	cmpcc	r1, r0
    1128:	31a01201 	lslcc	r1, r1, #4
    112c:	31a03203 	lslcc	r3, r3, #4
    1130:	3afffffa 	bcc	1120 <__udivsi3+0x2c>
    1134:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1138:	31510000 	cmpcc	r1, r0
    113c:	31a01081 	lslcc	r1, r1, #1
    1140:	31a03083 	lslcc	r3, r3, #1
    1144:	3afffffa 	bcc	1134 <__udivsi3+0x40>
    1148:	e3a02000 	mov	r2, #0
    114c:	e1500001 	cmp	r0, r1
    1150:	20400001 	subcs	r0, r0, r1
    1154:	21822003 	orrcs	r2, r2, r3
    1158:	e15000a1 	cmp	r0, r1, lsr #1
    115c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1160:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1164:	e1500121 	cmp	r0, r1, lsr #2
    1168:	20400121 	subcs	r0, r0, r1, lsr #2
    116c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1170:	e15001a1 	cmp	r0, r1, lsr #3
    1174:	204001a1 	subcs	r0, r0, r1, lsr #3
    1178:	218221a3 	orrcs	r2, r2, r3, lsr #3
    117c:	e3500000 	cmp	r0, #0
    1180:	11b03223 	lsrsne	r3, r3, #4
    1184:	11a01221 	lsrne	r1, r1, #4
    1188:	1affffef 	bne	114c <__udivsi3+0x58>
    118c:	e1a00002 	mov	r0, r2
    1190:	e12fff1e 	bx	lr
    1194:	03a00001 	moveq	r0, #1
    1198:	13a00000 	movne	r0, #0
    119c:	e12fff1e 	bx	lr
    11a0:	e3510801 	cmp	r1, #65536	@ 0x10000
    11a4:	21a01821 	lsrcs	r1, r1, #16
    11a8:	23a02010 	movcs	r2, #16
    11ac:	33a02000 	movcc	r2, #0
    11b0:	e3510c01 	cmp	r1, #256	@ 0x100
    11b4:	21a01421 	lsrcs	r1, r1, #8
    11b8:	22822008 	addcs	r2, r2, #8
    11bc:	e3510010 	cmp	r1, #16
    11c0:	21a01221 	lsrcs	r1, r1, #4
    11c4:	22822004 	addcs	r2, r2, #4
    11c8:	e3510004 	cmp	r1, #4
    11cc:	82822003 	addhi	r2, r2, #3
    11d0:	908220a1 	addls	r2, r2, r1, lsr #1
    11d4:	e1a00230 	lsr	r0, r0, r2
    11d8:	e12fff1e 	bx	lr
    11dc:	e3500000 	cmp	r0, #0
    11e0:	13e00000 	mvnne	r0, #0
    11e4:	ea000007 	b	1208 <__aeabi_idiv0>

000011e8 <__aeabi_uidivmod>:
    11e8:	e3510000 	cmp	r1, #0
    11ec:	0afffffa 	beq	11dc <__udivsi3+0xe8>
    11f0:	e92d4003 	push	{r0, r1, lr}
    11f4:	ebffffbe 	bl	10f4 <__udivsi3>
    11f8:	e8bd4006 	pop	{r1, r2, lr}
    11fc:	e0030092 	mul	r3, r2, r0
    1200:	e0411003 	sub	r1, r1, r3
    1204:	e12fff1e 	bx	lr

00001208 <__aeabi_idiv0>:
    1208:	e12fff1e 	bx	lr
