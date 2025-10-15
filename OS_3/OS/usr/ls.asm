
_ls:     file format elf32-littlearm


Disassembly of section .text:

00000000 <fmtname>:
       0:	e92d4810 	push	{r4, fp, lr}
       4:	e28db008 	add	fp, sp, #8
       8:	e24dd014 	sub	sp, sp, #20
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
      14:	eb00011a 	bl	484 <strlen>
      18:	e1a02000 	mov	r2, r0
      1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      20:	e0833002 	add	r3, r3, r2
      24:	e50b3010 	str	r3, [fp, #-16]
      28:	ea000002 	b	38 <fmtname+0x38>
      2c:	e51b3010 	ldr	r3, [fp, #-16]
      30:	e2433001 	sub	r3, r3, #1
      34:	e50b3010 	str	r3, [fp, #-16]
      38:	e51b2010 	ldr	r2, [fp, #-16]
      3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      40:	e1520003 	cmp	r2, r3
      44:	3a000003 	bcc	58 <fmtname+0x58>
      48:	e51b3010 	ldr	r3, [fp, #-16]
      4c:	e5d33000 	ldrb	r3, [r3]
      50:	e353002f 	cmp	r3, #47	@ 0x2f
      54:	1afffff4 	bne	2c <fmtname+0x2c>
      58:	e51b3010 	ldr	r3, [fp, #-16]
      5c:	e2833001 	add	r3, r3, #1
      60:	e50b3010 	str	r3, [fp, #-16]
      64:	e51b0010 	ldr	r0, [fp, #-16]
      68:	eb000105 	bl	484 <strlen>
      6c:	e1a03000 	mov	r3, r0
      70:	e353000d 	cmp	r3, #13
      74:	9a000001 	bls	80 <fmtname+0x80>
      78:	e51b3010 	ldr	r3, [fp, #-16]
      7c:	ea000014 	b	d4 <fmtname+0xd4>
      80:	e51b0010 	ldr	r0, [fp, #-16]
      84:	eb0000fe 	bl	484 <strlen>
      88:	e1a03000 	mov	r3, r0
      8c:	e1a02003 	mov	r2, r3
      90:	e51b1010 	ldr	r1, [fp, #-16]
      94:	e59f0044 	ldr	r0, [pc, #68]	@ e0 <fmtname+0xe0>
      98:	eb0001da 	bl	808 <memmove>
      9c:	e51b0010 	ldr	r0, [fp, #-16]
      a0:	eb0000f7 	bl	484 <strlen>
      a4:	e1a03000 	mov	r3, r0
      a8:	e59f2030 	ldr	r2, [pc, #48]	@ e0 <fmtname+0xe0>
      ac:	e0834002 	add	r4, r3, r2
      b0:	e51b0010 	ldr	r0, [fp, #-16]
      b4:	eb0000f2 	bl	484 <strlen>
      b8:	e1a03000 	mov	r3, r0
      bc:	e263300e 	rsb	r3, r3, #14
      c0:	e1a02003 	mov	r2, r3
      c4:	e3a01020 	mov	r1, #32
      c8:	e1a00004 	mov	r0, r4
      cc:	eb000101 	bl	4d8 <memset>
      d0:	e59f3008 	ldr	r3, [pc, #8]	@ e0 <fmtname+0xe0>
      d4:	e1a00003 	mov	r0, r3
      d8:	e24bd008 	sub	sp, fp, #8
      dc:	e8bd8810 	pop	{r4, fp, pc}
      e0:	00001474 	.word	0x00001474

000000e4 <ls>:
      e4:	e92d4800 	push	{fp, lr}
      e8:	e28db004 	add	fp, sp, #4
      ec:	e24ddd09 	sub	sp, sp, #576	@ 0x240
      f0:	e50b0238 	str	r0, [fp, #-568]	@ 0xfffffdc8
      f4:	e3a01000 	mov	r1, #0
      f8:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
      fc:	eb00022f 	bl	9c0 <open>
     100:	e50b0008 	str	r0, [fp, #-8]
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e3530000 	cmp	r3, #0
     10c:	aa000004 	bge	124 <ls+0x40>
     110:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     114:	e59f1200 	ldr	r1, [pc, #512]	@ 31c <ls+0x238>
     118:	e3a00002 	mov	r0, #2
     11c:	eb00030a 	bl	d4c <printf>
     120:	ea00007b 	b	314 <ls+0x230>
     124:	e24b3e23 	sub	r3, fp, #560	@ 0x230
     128:	e1a01003 	mov	r1, r3
     12c:	e51b0008 	ldr	r0, [fp, #-8]
     130:	eb00023d 	bl	a2c <fstat>
     134:	e1a03000 	mov	r3, r0
     138:	e3530000 	cmp	r3, #0
     13c:	aa000006 	bge	15c <ls+0x78>
     140:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     144:	e59f11d4 	ldr	r1, [pc, #468]	@ 320 <ls+0x23c>
     148:	e3a00002 	mov	r0, #2
     14c:	eb0002fe 	bl	d4c <printf>
     150:	e51b0008 	ldr	r0, [fp, #-8]
     154:	eb0001fe 	bl	954 <close>
     158:	ea00006d 	b	314 <ls+0x230>
     15c:	e24b3004 	sub	r3, fp, #4
     160:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     164:	e1d330f0 	ldrsh	r3, [r3]
     168:	e3530001 	cmp	r3, #1
     16c:	0a000012 	beq	1bc <ls+0xd8>
     170:	e3530002 	cmp	r3, #2
     174:	1a000064 	bne	30c <ls+0x228>
     178:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     17c:	ebffff9f 	bl	0 <fmtname>
     180:	e1a01000 	mov	r1, r0
     184:	e24b3004 	sub	r3, fp, #4
     188:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     18c:	e1d330f0 	ldrsh	r3, [r3]
     190:	e1a00003 	mov	r0, r3
     194:	e51b3228 	ldr	r3, [fp, #-552]	@ 0xfffffdd8
     198:	e51b2220 	ldr	r2, [fp, #-544]	@ 0xfffffde0
     19c:	e58d2004 	str	r2, [sp, #4]
     1a0:	e58d3000 	str	r3, [sp]
     1a4:	e1a03000 	mov	r3, r0
     1a8:	e1a02001 	mov	r2, r1
     1ac:	e59f1170 	ldr	r1, [pc, #368]	@ 324 <ls+0x240>
     1b0:	e3a00001 	mov	r0, #1
     1b4:	eb0002e4 	bl	d4c <printf>
     1b8:	ea000053 	b	30c <ls+0x228>
     1bc:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     1c0:	eb0000af 	bl	484 <strlen>
     1c4:	e1a03000 	mov	r3, r0
     1c8:	e2833010 	add	r3, r3, #16
     1cc:	e3530c02 	cmp	r3, #512	@ 0x200
     1d0:	9a000003 	bls	1e4 <ls+0x100>
     1d4:	e59f114c 	ldr	r1, [pc, #332]	@ 328 <ls+0x244>
     1d8:	e3a00001 	mov	r0, #1
     1dc:	eb0002da 	bl	d4c <printf>
     1e0:	ea000049 	b	30c <ls+0x228>
     1e4:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     1e8:	e51b1238 	ldr	r1, [fp, #-568]	@ 0xfffffdc8
     1ec:	e1a00003 	mov	r0, r3
     1f0:	eb00006b 	bl	3a4 <strcpy>
     1f4:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     1f8:	e1a00003 	mov	r0, r3
     1fc:	eb0000a0 	bl	484 <strlen>
     200:	e1a02000 	mov	r2, r0
     204:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     208:	e0833002 	add	r3, r3, r2
     20c:	e50b300c 	str	r3, [fp, #-12]
     210:	e51b300c 	ldr	r3, [fp, #-12]
     214:	e2832001 	add	r2, r3, #1
     218:	e50b200c 	str	r2, [fp, #-12]
     21c:	e3a0202f 	mov	r2, #47	@ 0x2f
     220:	e5c32000 	strb	r2, [r3]
     224:	ea00002f 	b	2e8 <ls+0x204>
     228:	e24b3004 	sub	r3, fp, #4
     22c:	e2433f86 	sub	r3, r3, #536	@ 0x218
     230:	e1d330b0 	ldrh	r3, [r3]
     234:	e3530000 	cmp	r3, #0
     238:	0a000029 	beq	2e4 <ls+0x200>
     23c:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
     240:	e2833002 	add	r3, r3, #2
     244:	e3a0200e 	mov	r2, #14
     248:	e1a01003 	mov	r1, r3
     24c:	e51b000c 	ldr	r0, [fp, #-12]
     250:	eb00016c 	bl	808 <memmove>
     254:	e51b300c 	ldr	r3, [fp, #-12]
     258:	e283300e 	add	r3, r3, #14
     25c:	e3a02000 	mov	r2, #0
     260:	e5c32000 	strb	r2, [r3]
     264:	e24b2e23 	sub	r2, fp, #560	@ 0x230
     268:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     26c:	e1a01002 	mov	r1, r2
     270:	e1a00003 	mov	r0, r3
     274:	eb00012a 	bl	724 <stat>
     278:	e1a03000 	mov	r3, r0
     27c:	e3530000 	cmp	r3, #0
     280:	aa000005 	bge	29c <ls+0x1b8>
     284:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     288:	e1a02003 	mov	r2, r3
     28c:	e59f108c 	ldr	r1, [pc, #140]	@ 320 <ls+0x23c>
     290:	e3a00001 	mov	r0, #1
     294:	eb0002ac 	bl	d4c <printf>
     298:	ea000012 	b	2e8 <ls+0x204>
     29c:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     2a0:	e1a00003 	mov	r0, r3
     2a4:	ebffff55 	bl	0 <fmtname>
     2a8:	e1a01000 	mov	r1, r0
     2ac:	e24b3004 	sub	r3, fp, #4
     2b0:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     2b4:	e1d330f0 	ldrsh	r3, [r3]
     2b8:	e1a00003 	mov	r0, r3
     2bc:	e51b3228 	ldr	r3, [fp, #-552]	@ 0xfffffdd8
     2c0:	e51b2220 	ldr	r2, [fp, #-544]	@ 0xfffffde0
     2c4:	e58d2004 	str	r2, [sp, #4]
     2c8:	e58d3000 	str	r3, [sp]
     2cc:	e1a03000 	mov	r3, r0
     2d0:	e1a02001 	mov	r2, r1
     2d4:	e59f1048 	ldr	r1, [pc, #72]	@ 324 <ls+0x240>
     2d8:	e3a00001 	mov	r0, #1
     2dc:	eb00029a 	bl	d4c <printf>
     2e0:	ea000000 	b	2e8 <ls+0x204>
     2e4:	e1a00000 	nop			@ (mov r0, r0)
     2e8:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
     2ec:	e3a02010 	mov	r2, #16
     2f0:	e1a01003 	mov	r1, r3
     2f4:	e51b0008 	ldr	r0, [fp, #-8]
     2f8:	eb000183 	bl	90c <read>
     2fc:	e1a03000 	mov	r3, r0
     300:	e3530010 	cmp	r3, #16
     304:	0affffc7 	beq	228 <ls+0x144>
     308:	e1a00000 	nop			@ (mov r0, r0)
     30c:	e51b0008 	ldr	r0, [fp, #-8]
     310:	eb00018f 	bl	954 <close>
     314:	e24bd004 	sub	sp, fp, #4
     318:	e8bd8800 	pop	{fp, pc}
     31c:	00001408 	.word	0x00001408
     320:	0000141c 	.word	0x0000141c
     324:	00001430 	.word	0x00001430
     328:	00001440 	.word	0x00001440

0000032c <main>:
     32c:	e92d4800 	push	{fp, lr}
     330:	e28db004 	add	fp, sp, #4
     334:	e24dd010 	sub	sp, sp, #16
     338:	e50b0010 	str	r0, [fp, #-16]
     33c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     340:	e51b3010 	ldr	r3, [fp, #-16]
     344:	e3530001 	cmp	r3, #1
     348:	ca000002 	bgt	358 <main+0x2c>
     34c:	e59f004c 	ldr	r0, [pc, #76]	@ 3a0 <main+0x74>
     350:	ebffff63 	bl	e4 <ls>
     354:	eb000151 	bl	8a0 <exit>
     358:	e3a03001 	mov	r3, #1
     35c:	e50b3008 	str	r3, [fp, #-8]
     360:	ea000009 	b	38c <main+0x60>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e1a03103 	lsl	r3, r3, #2
     36c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     370:	e0823003 	add	r3, r2, r3
     374:	e5933000 	ldr	r3, [r3]
     378:	e1a00003 	mov	r0, r3
     37c:	ebffff58 	bl	e4 <ls>
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e2833001 	add	r3, r3, #1
     388:	e50b3008 	str	r3, [fp, #-8]
     38c:	e51b2008 	ldr	r2, [fp, #-8]
     390:	e51b3010 	ldr	r3, [fp, #-16]
     394:	e1520003 	cmp	r2, r3
     398:	bafffff1 	blt	364 <main+0x38>
     39c:	eb00013f 	bl	8a0 <exit>
     3a0:	00001454 	.word	0x00001454

000003a4 <strcpy>:
     3a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3a8:	e28db000 	add	fp, sp, #0
     3ac:	e24dd014 	sub	sp, sp, #20
     3b0:	e50b0010 	str	r0, [fp, #-16]
     3b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     3b8:	e51b3010 	ldr	r3, [fp, #-16]
     3bc:	e50b3008 	str	r3, [fp, #-8]
     3c0:	e1a00000 	nop			@ (mov r0, r0)
     3c4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3c8:	e2823001 	add	r3, r2, #1
     3cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3d0:	e51b3010 	ldr	r3, [fp, #-16]
     3d4:	e2831001 	add	r1, r3, #1
     3d8:	e50b1010 	str	r1, [fp, #-16]
     3dc:	e5d22000 	ldrb	r2, [r2]
     3e0:	e5c32000 	strb	r2, [r3]
     3e4:	e5d33000 	ldrb	r3, [r3]
     3e8:	e3530000 	cmp	r3, #0
     3ec:	1afffff4 	bne	3c4 <strcpy+0x20>
     3f0:	e51b3008 	ldr	r3, [fp, #-8]
     3f4:	e1a00003 	mov	r0, r3
     3f8:	e28bd000 	add	sp, fp, #0
     3fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     400:	e12fff1e 	bx	lr

00000404 <strcmp>:
     404:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     408:	e28db000 	add	fp, sp, #0
     40c:	e24dd00c 	sub	sp, sp, #12
     410:	e50b0008 	str	r0, [fp, #-8]
     414:	e50b100c 	str	r1, [fp, #-12]
     418:	ea000005 	b	434 <strcmp+0x30>
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e2833001 	add	r3, r3, #1
     424:	e50b3008 	str	r3, [fp, #-8]
     428:	e51b300c 	ldr	r3, [fp, #-12]
     42c:	e2833001 	add	r3, r3, #1
     430:	e50b300c 	str	r3, [fp, #-12]
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e5d33000 	ldrb	r3, [r3]
     43c:	e3530000 	cmp	r3, #0
     440:	0a000005 	beq	45c <strcmp+0x58>
     444:	e51b3008 	ldr	r3, [fp, #-8]
     448:	e5d32000 	ldrb	r2, [r3]
     44c:	e51b300c 	ldr	r3, [fp, #-12]
     450:	e5d33000 	ldrb	r3, [r3]
     454:	e1520003 	cmp	r2, r3
     458:	0affffef 	beq	41c <strcmp+0x18>
     45c:	e51b3008 	ldr	r3, [fp, #-8]
     460:	e5d33000 	ldrb	r3, [r3]
     464:	e1a02003 	mov	r2, r3
     468:	e51b300c 	ldr	r3, [fp, #-12]
     46c:	e5d33000 	ldrb	r3, [r3]
     470:	e0423003 	sub	r3, r2, r3
     474:	e1a00003 	mov	r0, r3
     478:	e28bd000 	add	sp, fp, #0
     47c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     480:	e12fff1e 	bx	lr

00000484 <strlen>:
     484:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     488:	e28db000 	add	fp, sp, #0
     48c:	e24dd014 	sub	sp, sp, #20
     490:	e50b0010 	str	r0, [fp, #-16]
     494:	e3a03000 	mov	r3, #0
     498:	e50b3008 	str	r3, [fp, #-8]
     49c:	ea000002 	b	4ac <strlen+0x28>
     4a0:	e51b3008 	ldr	r3, [fp, #-8]
     4a4:	e2833001 	add	r3, r3, #1
     4a8:	e50b3008 	str	r3, [fp, #-8]
     4ac:	e51b3008 	ldr	r3, [fp, #-8]
     4b0:	e51b2010 	ldr	r2, [fp, #-16]
     4b4:	e0823003 	add	r3, r2, r3
     4b8:	e5d33000 	ldrb	r3, [r3]
     4bc:	e3530000 	cmp	r3, #0
     4c0:	1afffff6 	bne	4a0 <strlen+0x1c>
     4c4:	e51b3008 	ldr	r3, [fp, #-8]
     4c8:	e1a00003 	mov	r0, r3
     4cc:	e28bd000 	add	sp, fp, #0
     4d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4d4:	e12fff1e 	bx	lr

000004d8 <memset>:
     4d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4dc:	e28db000 	add	fp, sp, #0
     4e0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     4e4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     4e8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     4ec:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     4f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4f4:	e50b3008 	str	r3, [fp, #-8]
     4f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     4fc:	e54b300d 	strb	r3, [fp, #-13]
     500:	e55b200d 	ldrb	r2, [fp, #-13]
     504:	e1a03002 	mov	r3, r2
     508:	e1a03403 	lsl	r3, r3, #8
     50c:	e0833002 	add	r3, r3, r2
     510:	e1a03803 	lsl	r3, r3, #16
     514:	e1a02003 	mov	r2, r3
     518:	e55b300d 	ldrb	r3, [fp, #-13]
     51c:	e1a03403 	lsl	r3, r3, #8
     520:	e1822003 	orr	r2, r2, r3
     524:	e55b300d 	ldrb	r3, [fp, #-13]
     528:	e1823003 	orr	r3, r2, r3
     52c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     530:	ea000008 	b	558 <memset+0x80>
     534:	e51b3008 	ldr	r3, [fp, #-8]
     538:	e55b200d 	ldrb	r2, [fp, #-13]
     53c:	e5c32000 	strb	r2, [r3]
     540:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     544:	e2433001 	sub	r3, r3, #1
     548:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     54c:	e51b3008 	ldr	r3, [fp, #-8]
     550:	e2833001 	add	r3, r3, #1
     554:	e50b3008 	str	r3, [fp, #-8]
     558:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     55c:	e3530000 	cmp	r3, #0
     560:	0a000003 	beq	574 <memset+0x9c>
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e2033003 	and	r3, r3, #3
     56c:	e3530000 	cmp	r3, #0
     570:	1affffef 	bne	534 <memset+0x5c>
     574:	e51b3008 	ldr	r3, [fp, #-8]
     578:	e50b300c 	str	r3, [fp, #-12]
     57c:	ea000008 	b	5a4 <memset+0xcc>
     580:	e51b300c 	ldr	r3, [fp, #-12]
     584:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     588:	e5832000 	str	r2, [r3]
     58c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     590:	e2433004 	sub	r3, r3, #4
     594:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     598:	e51b300c 	ldr	r3, [fp, #-12]
     59c:	e2833004 	add	r3, r3, #4
     5a0:	e50b300c 	str	r3, [fp, #-12]
     5a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5a8:	e3530003 	cmp	r3, #3
     5ac:	8afffff3 	bhi	580 <memset+0xa8>
     5b0:	e51b300c 	ldr	r3, [fp, #-12]
     5b4:	e50b3008 	str	r3, [fp, #-8]
     5b8:	ea000008 	b	5e0 <memset+0x108>
     5bc:	e51b3008 	ldr	r3, [fp, #-8]
     5c0:	e55b200d 	ldrb	r2, [fp, #-13]
     5c4:	e5c32000 	strb	r2, [r3]
     5c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5cc:	e2433001 	sub	r3, r3, #1
     5d0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     5d4:	e51b3008 	ldr	r3, [fp, #-8]
     5d8:	e2833001 	add	r3, r3, #1
     5dc:	e50b3008 	str	r3, [fp, #-8]
     5e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5e4:	e3530000 	cmp	r3, #0
     5e8:	1afffff3 	bne	5bc <memset+0xe4>
     5ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5f0:	e1a00003 	mov	r0, r3
     5f4:	e28bd000 	add	sp, fp, #0
     5f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5fc:	e12fff1e 	bx	lr

00000600 <strchr>:
     600:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     604:	e28db000 	add	fp, sp, #0
     608:	e24dd00c 	sub	sp, sp, #12
     60c:	e50b0008 	str	r0, [fp, #-8]
     610:	e1a03001 	mov	r3, r1
     614:	e54b3009 	strb	r3, [fp, #-9]
     618:	ea000009 	b	644 <strchr+0x44>
     61c:	e51b3008 	ldr	r3, [fp, #-8]
     620:	e5d33000 	ldrb	r3, [r3]
     624:	e55b2009 	ldrb	r2, [fp, #-9]
     628:	e1520003 	cmp	r2, r3
     62c:	1a000001 	bne	638 <strchr+0x38>
     630:	e51b3008 	ldr	r3, [fp, #-8]
     634:	ea000007 	b	658 <strchr+0x58>
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e2833001 	add	r3, r3, #1
     640:	e50b3008 	str	r3, [fp, #-8]
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e5d33000 	ldrb	r3, [r3]
     64c:	e3530000 	cmp	r3, #0
     650:	1afffff1 	bne	61c <strchr+0x1c>
     654:	e3a03000 	mov	r3, #0
     658:	e1a00003 	mov	r0, r3
     65c:	e28bd000 	add	sp, fp, #0
     660:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     664:	e12fff1e 	bx	lr

00000668 <gets>:
     668:	e92d4800 	push	{fp, lr}
     66c:	e28db004 	add	fp, sp, #4
     670:	e24dd018 	sub	sp, sp, #24
     674:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     678:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     67c:	e3a03000 	mov	r3, #0
     680:	e50b3008 	str	r3, [fp, #-8]
     684:	ea000016 	b	6e4 <gets+0x7c>
     688:	e24b300d 	sub	r3, fp, #13
     68c:	e3a02001 	mov	r2, #1
     690:	e1a01003 	mov	r1, r3
     694:	e3a00000 	mov	r0, #0
     698:	eb00009b 	bl	90c <read>
     69c:	e50b000c 	str	r0, [fp, #-12]
     6a0:	e51b300c 	ldr	r3, [fp, #-12]
     6a4:	e3530000 	cmp	r3, #0
     6a8:	da000013 	ble	6fc <gets+0x94>
     6ac:	e51b3008 	ldr	r3, [fp, #-8]
     6b0:	e2832001 	add	r2, r3, #1
     6b4:	e50b2008 	str	r2, [fp, #-8]
     6b8:	e1a02003 	mov	r2, r3
     6bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6c0:	e0833002 	add	r3, r3, r2
     6c4:	e55b200d 	ldrb	r2, [fp, #-13]
     6c8:	e5c32000 	strb	r2, [r3]
     6cc:	e55b300d 	ldrb	r3, [fp, #-13]
     6d0:	e353000a 	cmp	r3, #10
     6d4:	0a000009 	beq	700 <gets+0x98>
     6d8:	e55b300d 	ldrb	r3, [fp, #-13]
     6dc:	e353000d 	cmp	r3, #13
     6e0:	0a000006 	beq	700 <gets+0x98>
     6e4:	e51b3008 	ldr	r3, [fp, #-8]
     6e8:	e2833001 	add	r3, r3, #1
     6ec:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     6f0:	e1520003 	cmp	r2, r3
     6f4:	caffffe3 	bgt	688 <gets+0x20>
     6f8:	ea000000 	b	700 <gets+0x98>
     6fc:	e1a00000 	nop			@ (mov r0, r0)
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     708:	e0823003 	add	r3, r2, r3
     70c:	e3a02000 	mov	r2, #0
     710:	e5c32000 	strb	r2, [r3]
     714:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     718:	e1a00003 	mov	r0, r3
     71c:	e24bd004 	sub	sp, fp, #4
     720:	e8bd8800 	pop	{fp, pc}

00000724 <stat>:
     724:	e92d4800 	push	{fp, lr}
     728:	e28db004 	add	fp, sp, #4
     72c:	e24dd010 	sub	sp, sp, #16
     730:	e50b0010 	str	r0, [fp, #-16]
     734:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     738:	e3a01000 	mov	r1, #0
     73c:	e51b0010 	ldr	r0, [fp, #-16]
     740:	eb00009e 	bl	9c0 <open>
     744:	e50b0008 	str	r0, [fp, #-8]
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e3530000 	cmp	r3, #0
     750:	aa000001 	bge	75c <stat+0x38>
     754:	e3e03000 	mvn	r3, #0
     758:	ea000006 	b	778 <stat+0x54>
     75c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     760:	e51b0008 	ldr	r0, [fp, #-8]
     764:	eb0000b0 	bl	a2c <fstat>
     768:	e50b000c 	str	r0, [fp, #-12]
     76c:	e51b0008 	ldr	r0, [fp, #-8]
     770:	eb000077 	bl	954 <close>
     774:	e51b300c 	ldr	r3, [fp, #-12]
     778:	e1a00003 	mov	r0, r3
     77c:	e24bd004 	sub	sp, fp, #4
     780:	e8bd8800 	pop	{fp, pc}

00000784 <atoi>:
     784:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     788:	e28db000 	add	fp, sp, #0
     78c:	e24dd014 	sub	sp, sp, #20
     790:	e50b0010 	str	r0, [fp, #-16]
     794:	e3a03000 	mov	r3, #0
     798:	e50b3008 	str	r3, [fp, #-8]
     79c:	ea00000c 	b	7d4 <atoi+0x50>
     7a0:	e51b2008 	ldr	r2, [fp, #-8]
     7a4:	e1a03002 	mov	r3, r2
     7a8:	e1a03103 	lsl	r3, r3, #2
     7ac:	e0833002 	add	r3, r3, r2
     7b0:	e1a03083 	lsl	r3, r3, #1
     7b4:	e1a01003 	mov	r1, r3
     7b8:	e51b3010 	ldr	r3, [fp, #-16]
     7bc:	e2832001 	add	r2, r3, #1
     7c0:	e50b2010 	str	r2, [fp, #-16]
     7c4:	e5d33000 	ldrb	r3, [r3]
     7c8:	e0813003 	add	r3, r1, r3
     7cc:	e2433030 	sub	r3, r3, #48	@ 0x30
     7d0:	e50b3008 	str	r3, [fp, #-8]
     7d4:	e51b3010 	ldr	r3, [fp, #-16]
     7d8:	e5d33000 	ldrb	r3, [r3]
     7dc:	e353002f 	cmp	r3, #47	@ 0x2f
     7e0:	9a000003 	bls	7f4 <atoi+0x70>
     7e4:	e51b3010 	ldr	r3, [fp, #-16]
     7e8:	e5d33000 	ldrb	r3, [r3]
     7ec:	e3530039 	cmp	r3, #57	@ 0x39
     7f0:	9affffea 	bls	7a0 <atoi+0x1c>
     7f4:	e51b3008 	ldr	r3, [fp, #-8]
     7f8:	e1a00003 	mov	r0, r3
     7fc:	e28bd000 	add	sp, fp, #0
     800:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     804:	e12fff1e 	bx	lr

00000808 <memmove>:
     808:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     80c:	e28db000 	add	fp, sp, #0
     810:	e24dd01c 	sub	sp, sp, #28
     814:	e50b0010 	str	r0, [fp, #-16]
     818:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     81c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     820:	e51b3010 	ldr	r3, [fp, #-16]
     824:	e50b3008 	str	r3, [fp, #-8]
     828:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     82c:	e50b300c 	str	r3, [fp, #-12]
     830:	ea000007 	b	854 <memmove+0x4c>
     834:	e51b200c 	ldr	r2, [fp, #-12]
     838:	e2823001 	add	r3, r2, #1
     83c:	e50b300c 	str	r3, [fp, #-12]
     840:	e51b3008 	ldr	r3, [fp, #-8]
     844:	e2831001 	add	r1, r3, #1
     848:	e50b1008 	str	r1, [fp, #-8]
     84c:	e5d22000 	ldrb	r2, [r2]
     850:	e5c32000 	strb	r2, [r3]
     854:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     858:	e2432001 	sub	r2, r3, #1
     85c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     860:	e3530000 	cmp	r3, #0
     864:	cafffff2 	bgt	834 <memmove+0x2c>
     868:	e51b3010 	ldr	r3, [fp, #-16]
     86c:	e1a00003 	mov	r0, r3
     870:	e28bd000 	add	sp, fp, #0
     874:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <fork>:
     87c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     880:	e1a04003 	mov	r4, r3
     884:	e1a03002 	mov	r3, r2
     888:	e1a02001 	mov	r2, r1
     88c:	e1a01000 	mov	r1, r0
     890:	e3a00001 	mov	r0, #1
     894:	ef000000 	svc	0x00000000
     898:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <exit>:
     8a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a4:	e1a04003 	mov	r4, r3
     8a8:	e1a03002 	mov	r3, r2
     8ac:	e1a02001 	mov	r2, r1
     8b0:	e1a01000 	mov	r1, r0
     8b4:	e3a00002 	mov	r0, #2
     8b8:	ef000000 	svc	0x00000000
     8bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <wait>:
     8c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c8:	e1a04003 	mov	r4, r3
     8cc:	e1a03002 	mov	r3, r2
     8d0:	e1a02001 	mov	r2, r1
     8d4:	e1a01000 	mov	r1, r0
     8d8:	e3a00003 	mov	r0, #3
     8dc:	ef000000 	svc	0x00000000
     8e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e4:	e12fff1e 	bx	lr

000008e8 <pipe>:
     8e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ec:	e1a04003 	mov	r4, r3
     8f0:	e1a03002 	mov	r3, r2
     8f4:	e1a02001 	mov	r2, r1
     8f8:	e1a01000 	mov	r1, r0
     8fc:	e3a00004 	mov	r0, #4
     900:	ef000000 	svc	0x00000000
     904:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <read>:
     90c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     910:	e1a04003 	mov	r4, r3
     914:	e1a03002 	mov	r3, r2
     918:	e1a02001 	mov	r2, r1
     91c:	e1a01000 	mov	r1, r0
     920:	e3a00005 	mov	r0, #5
     924:	ef000000 	svc	0x00000000
     928:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <write>:
     930:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     934:	e1a04003 	mov	r4, r3
     938:	e1a03002 	mov	r3, r2
     93c:	e1a02001 	mov	r2, r1
     940:	e1a01000 	mov	r1, r0
     944:	e3a00010 	mov	r0, #16
     948:	ef000000 	svc	0x00000000
     94c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     950:	e12fff1e 	bx	lr

00000954 <close>:
     954:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     958:	e1a04003 	mov	r4, r3
     95c:	e1a03002 	mov	r3, r2
     960:	e1a02001 	mov	r2, r1
     964:	e1a01000 	mov	r1, r0
     968:	e3a00015 	mov	r0, #21
     96c:	ef000000 	svc	0x00000000
     970:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     974:	e12fff1e 	bx	lr

00000978 <kill>:
     978:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     97c:	e1a04003 	mov	r4, r3
     980:	e1a03002 	mov	r3, r2
     984:	e1a02001 	mov	r2, r1
     988:	e1a01000 	mov	r1, r0
     98c:	e3a00006 	mov	r0, #6
     990:	ef000000 	svc	0x00000000
     994:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <exec>:
     99c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a0:	e1a04003 	mov	r4, r3
     9a4:	e1a03002 	mov	r3, r2
     9a8:	e1a02001 	mov	r2, r1
     9ac:	e1a01000 	mov	r1, r0
     9b0:	e3a00007 	mov	r0, #7
     9b4:	ef000000 	svc	0x00000000
     9b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9bc:	e12fff1e 	bx	lr

000009c0 <open>:
     9c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c4:	e1a04003 	mov	r4, r3
     9c8:	e1a03002 	mov	r3, r2
     9cc:	e1a02001 	mov	r2, r1
     9d0:	e1a01000 	mov	r1, r0
     9d4:	e3a0000f 	mov	r0, #15
     9d8:	ef000000 	svc	0x00000000
     9dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e0:	e12fff1e 	bx	lr

000009e4 <mknod>:
     9e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e8:	e1a04003 	mov	r4, r3
     9ec:	e1a03002 	mov	r3, r2
     9f0:	e1a02001 	mov	r2, r1
     9f4:	e1a01000 	mov	r1, r0
     9f8:	e3a00011 	mov	r0, #17
     9fc:	ef000000 	svc	0x00000000
     a00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a04:	e12fff1e 	bx	lr

00000a08 <unlink>:
     a08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a0c:	e1a04003 	mov	r4, r3
     a10:	e1a03002 	mov	r3, r2
     a14:	e1a02001 	mov	r2, r1
     a18:	e1a01000 	mov	r1, r0
     a1c:	e3a00012 	mov	r0, #18
     a20:	ef000000 	svc	0x00000000
     a24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a28:	e12fff1e 	bx	lr

00000a2c <fstat>:
     a2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a30:	e1a04003 	mov	r4, r3
     a34:	e1a03002 	mov	r3, r2
     a38:	e1a02001 	mov	r2, r1
     a3c:	e1a01000 	mov	r1, r0
     a40:	e3a00008 	mov	r0, #8
     a44:	ef000000 	svc	0x00000000
     a48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a4c:	e12fff1e 	bx	lr

00000a50 <link>:
     a50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a54:	e1a04003 	mov	r4, r3
     a58:	e1a03002 	mov	r3, r2
     a5c:	e1a02001 	mov	r2, r1
     a60:	e1a01000 	mov	r1, r0
     a64:	e3a00013 	mov	r0, #19
     a68:	ef000000 	svc	0x00000000
     a6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a70:	e12fff1e 	bx	lr

00000a74 <mkdir>:
     a74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a78:	e1a04003 	mov	r4, r3
     a7c:	e1a03002 	mov	r3, r2
     a80:	e1a02001 	mov	r2, r1
     a84:	e1a01000 	mov	r1, r0
     a88:	e3a00014 	mov	r0, #20
     a8c:	ef000000 	svc	0x00000000
     a90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a94:	e12fff1e 	bx	lr

00000a98 <chdir>:
     a98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a9c:	e1a04003 	mov	r4, r3
     aa0:	e1a03002 	mov	r3, r2
     aa4:	e1a02001 	mov	r2, r1
     aa8:	e1a01000 	mov	r1, r0
     aac:	e3a00009 	mov	r0, #9
     ab0:	ef000000 	svc	0x00000000
     ab4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab8:	e12fff1e 	bx	lr

00000abc <dup>:
     abc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac0:	e1a04003 	mov	r4, r3
     ac4:	e1a03002 	mov	r3, r2
     ac8:	e1a02001 	mov	r2, r1
     acc:	e1a01000 	mov	r1, r0
     ad0:	e3a0000a 	mov	r0, #10
     ad4:	ef000000 	svc	0x00000000
     ad8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <getpid>:
     ae0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae4:	e1a04003 	mov	r4, r3
     ae8:	e1a03002 	mov	r3, r2
     aec:	e1a02001 	mov	r2, r1
     af0:	e1a01000 	mov	r1, r0
     af4:	e3a0000b 	mov	r0, #11
     af8:	ef000000 	svc	0x00000000
     afc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b00:	e12fff1e 	bx	lr

00000b04 <sbrk>:
     b04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b08:	e1a04003 	mov	r4, r3
     b0c:	e1a03002 	mov	r3, r2
     b10:	e1a02001 	mov	r2, r1
     b14:	e1a01000 	mov	r1, r0
     b18:	e3a0000c 	mov	r0, #12
     b1c:	ef000000 	svc	0x00000000
     b20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b24:	e12fff1e 	bx	lr

00000b28 <sleep>:
     b28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b2c:	e1a04003 	mov	r4, r3
     b30:	e1a03002 	mov	r3, r2
     b34:	e1a02001 	mov	r2, r1
     b38:	e1a01000 	mov	r1, r0
     b3c:	e3a0000d 	mov	r0, #13
     b40:	ef000000 	svc	0x00000000
     b44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b48:	e12fff1e 	bx	lr

00000b4c <uptime>:
     b4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b50:	e1a04003 	mov	r4, r3
     b54:	e1a03002 	mov	r3, r2
     b58:	e1a02001 	mov	r2, r1
     b5c:	e1a01000 	mov	r1, r0
     b60:	e3a0000e 	mov	r0, #14
     b64:	ef000000 	svc	0x00000000
     b68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b6c:	e12fff1e 	bx	lr

00000b70 <pgpte>:
     b70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b74:	e1a04003 	mov	r4, r3
     b78:	e1a03002 	mov	r3, r2
     b7c:	e1a02001 	mov	r2, r1
     b80:	e1a01000 	mov	r1, r0
     b84:	e3a00016 	mov	r0, #22
     b88:	ef000000 	svc	0x00000000
     b8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b90:	e12fff1e 	bx	lr

00000b94 <kpt>:
     b94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b98:	e1a04003 	mov	r4, r3
     b9c:	e1a03002 	mov	r3, r2
     ba0:	e1a02001 	mov	r2, r1
     ba4:	e1a01000 	mov	r1, r0
     ba8:	e3a00017 	mov	r0, #23
     bac:	ef000000 	svc	0x00000000
     bb0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bb4:	e12fff1e 	bx	lr

00000bb8 <ugetpid>:
     bb8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     bbc:	e1a04003 	mov	r4, r3
     bc0:	e1a03002 	mov	r3, r2
     bc4:	e1a02001 	mov	r2, r1
     bc8:	e1a01000 	mov	r1, r0
     bcc:	e3a00018 	mov	r0, #24
     bd0:	ef000000 	svc	0x00000000
     bd4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     bd8:	e12fff1e 	bx	lr

00000bdc <putc>:
     bdc:	e92d4800 	push	{fp, lr}
     be0:	e28db004 	add	fp, sp, #4
     be4:	e24dd008 	sub	sp, sp, #8
     be8:	e50b0008 	str	r0, [fp, #-8]
     bec:	e1a03001 	mov	r3, r1
     bf0:	e54b3009 	strb	r3, [fp, #-9]
     bf4:	e24b3009 	sub	r3, fp, #9
     bf8:	e3a02001 	mov	r2, #1
     bfc:	e1a01003 	mov	r1, r3
     c00:	e51b0008 	ldr	r0, [fp, #-8]
     c04:	ebffff49 	bl	930 <write>
     c08:	e1a00000 	nop			@ (mov r0, r0)
     c0c:	e24bd004 	sub	sp, fp, #4
     c10:	e8bd8800 	pop	{fp, pc}

00000c14 <printint>:
     c14:	e92d4800 	push	{fp, lr}
     c18:	e28db004 	add	fp, sp, #4
     c1c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     c20:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     c24:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     c28:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     c2c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     c30:	e3a03000 	mov	r3, #0
     c34:	e50b300c 	str	r3, [fp, #-12]
     c38:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     c3c:	e3530000 	cmp	r3, #0
     c40:	0a000008 	beq	c68 <printint+0x54>
     c44:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c48:	e3530000 	cmp	r3, #0
     c4c:	aa000005 	bge	c68 <printint+0x54>
     c50:	e3a03001 	mov	r3, #1
     c54:	e50b300c 	str	r3, [fp, #-12]
     c58:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c5c:	e2633000 	rsb	r3, r3, #0
     c60:	e50b3010 	str	r3, [fp, #-16]
     c64:	ea000001 	b	c70 <printint+0x5c>
     c68:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c6c:	e50b3010 	str	r3, [fp, #-16]
     c70:	e3a03000 	mov	r3, #0
     c74:	e50b3008 	str	r3, [fp, #-8]
     c78:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     c7c:	e51b3010 	ldr	r3, [fp, #-16]
     c80:	e1a01002 	mov	r1, r2
     c84:	e1a00003 	mov	r0, r3
     c88:	eb0001d5 	bl	13e4 <__aeabi_uidivmod>
     c8c:	e1a03001 	mov	r3, r1
     c90:	e1a01003 	mov	r1, r3
     c94:	e51b3008 	ldr	r3, [fp, #-8]
     c98:	e2832001 	add	r2, r3, #1
     c9c:	e50b2008 	str	r2, [fp, #-8]
     ca0:	e59f20a0 	ldr	r2, [pc, #160]	@ d48 <printint+0x134>
     ca4:	e7d22001 	ldrb	r2, [r2, r1]
     ca8:	e2433004 	sub	r3, r3, #4
     cac:	e083300b 	add	r3, r3, fp
     cb0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     cb4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     cb8:	e1a01003 	mov	r1, r3
     cbc:	e51b0010 	ldr	r0, [fp, #-16]
     cc0:	eb00018a 	bl	12f0 <__udivsi3>
     cc4:	e1a03000 	mov	r3, r0
     cc8:	e50b3010 	str	r3, [fp, #-16]
     ccc:	e51b3010 	ldr	r3, [fp, #-16]
     cd0:	e3530000 	cmp	r3, #0
     cd4:	1affffe7 	bne	c78 <printint+0x64>
     cd8:	e51b300c 	ldr	r3, [fp, #-12]
     cdc:	e3530000 	cmp	r3, #0
     ce0:	0a00000e 	beq	d20 <printint+0x10c>
     ce4:	e51b3008 	ldr	r3, [fp, #-8]
     ce8:	e2832001 	add	r2, r3, #1
     cec:	e50b2008 	str	r2, [fp, #-8]
     cf0:	e2433004 	sub	r3, r3, #4
     cf4:	e083300b 	add	r3, r3, fp
     cf8:	e3a0202d 	mov	r2, #45	@ 0x2d
     cfc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     d00:	ea000006 	b	d20 <printint+0x10c>
     d04:	e24b2020 	sub	r2, fp, #32
     d08:	e51b3008 	ldr	r3, [fp, #-8]
     d0c:	e0823003 	add	r3, r2, r3
     d10:	e5d33000 	ldrb	r3, [r3]
     d14:	e1a01003 	mov	r1, r3
     d18:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     d1c:	ebffffae 	bl	bdc <putc>
     d20:	e51b3008 	ldr	r3, [fp, #-8]
     d24:	e2433001 	sub	r3, r3, #1
     d28:	e50b3008 	str	r3, [fp, #-8]
     d2c:	e51b3008 	ldr	r3, [fp, #-8]
     d30:	e3530000 	cmp	r3, #0
     d34:	aafffff2 	bge	d04 <printint+0xf0>
     d38:	e1a00000 	nop			@ (mov r0, r0)
     d3c:	e1a00000 	nop			@ (mov r0, r0)
     d40:	e24bd004 	sub	sp, fp, #4
     d44:	e8bd8800 	pop	{fp, pc}
     d48:	00001460 	.word	0x00001460

00000d4c <printf>:
     d4c:	e92d000e 	push	{r1, r2, r3}
     d50:	e92d4800 	push	{fp, lr}
     d54:	e28db004 	add	fp, sp, #4
     d58:	e24dd024 	sub	sp, sp, #36	@ 0x24
     d5c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     d60:	e3a03000 	mov	r3, #0
     d64:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d68:	e28b3008 	add	r3, fp, #8
     d6c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d70:	e3a03000 	mov	r3, #0
     d74:	e50b3010 	str	r3, [fp, #-16]
     d78:	ea000074 	b	f50 <printf+0x204>
     d7c:	e59b2004 	ldr	r2, [fp, #4]
     d80:	e51b3010 	ldr	r3, [fp, #-16]
     d84:	e0823003 	add	r3, r2, r3
     d88:	e5d33000 	ldrb	r3, [r3]
     d8c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     d90:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d94:	e3530000 	cmp	r3, #0
     d98:	1a00000b 	bne	dcc <printf+0x80>
     d9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     da0:	e3530025 	cmp	r3, #37	@ 0x25
     da4:	1a000002 	bne	db4 <printf+0x68>
     da8:	e3a03025 	mov	r3, #37	@ 0x25
     dac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     db0:	ea000063 	b	f44 <printf+0x1f8>
     db4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     db8:	e6ef3073 	uxtb	r3, r3
     dbc:	e1a01003 	mov	r1, r3
     dc0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dc4:	ebffff84 	bl	bdc <putc>
     dc8:	ea00005d 	b	f44 <printf+0x1f8>
     dcc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     dd0:	e3530025 	cmp	r3, #37	@ 0x25
     dd4:	1a00005a 	bne	f44 <printf+0x1f8>
     dd8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ddc:	e3530064 	cmp	r3, #100	@ 0x64
     de0:	1a00000a 	bne	e10 <printf+0xc4>
     de4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     de8:	e5933000 	ldr	r3, [r3]
     dec:	e1a01003 	mov	r1, r3
     df0:	e3a03001 	mov	r3, #1
     df4:	e3a0200a 	mov	r2, #10
     df8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dfc:	ebffff84 	bl	c14 <printint>
     e00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e04:	e2833004 	add	r3, r3, #4
     e08:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e0c:	ea00004a 	b	f3c <printf+0x1f0>
     e10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e14:	e3530078 	cmp	r3, #120	@ 0x78
     e18:	0a000002 	beq	e28 <printf+0xdc>
     e1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e20:	e3530070 	cmp	r3, #112	@ 0x70
     e24:	1a00000a 	bne	e54 <printf+0x108>
     e28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e2c:	e5933000 	ldr	r3, [r3]
     e30:	e1a01003 	mov	r1, r3
     e34:	e3a03000 	mov	r3, #0
     e38:	e3a02010 	mov	r2, #16
     e3c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e40:	ebffff73 	bl	c14 <printint>
     e44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e48:	e2833004 	add	r3, r3, #4
     e4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e50:	ea000039 	b	f3c <printf+0x1f0>
     e54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e58:	e3530073 	cmp	r3, #115	@ 0x73
     e5c:	1a000018 	bne	ec4 <printf+0x178>
     e60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e64:	e5933000 	ldr	r3, [r3]
     e68:	e50b300c 	str	r3, [fp, #-12]
     e6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e70:	e2833004 	add	r3, r3, #4
     e74:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e78:	e51b300c 	ldr	r3, [fp, #-12]
     e7c:	e3530000 	cmp	r3, #0
     e80:	1a00000a 	bne	eb0 <printf+0x164>
     e84:	e59f30f4 	ldr	r3, [pc, #244]	@ f80 <printf+0x234>
     e88:	e50b300c 	str	r3, [fp, #-12]
     e8c:	ea000007 	b	eb0 <printf+0x164>
     e90:	e51b300c 	ldr	r3, [fp, #-12]
     e94:	e5d33000 	ldrb	r3, [r3]
     e98:	e1a01003 	mov	r1, r3
     e9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ea0:	ebffff4d 	bl	bdc <putc>
     ea4:	e51b300c 	ldr	r3, [fp, #-12]
     ea8:	e2833001 	add	r3, r3, #1
     eac:	e50b300c 	str	r3, [fp, #-12]
     eb0:	e51b300c 	ldr	r3, [fp, #-12]
     eb4:	e5d33000 	ldrb	r3, [r3]
     eb8:	e3530000 	cmp	r3, #0
     ebc:	1afffff3 	bne	e90 <printf+0x144>
     ec0:	ea00001d 	b	f3c <printf+0x1f0>
     ec4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ec8:	e3530063 	cmp	r3, #99	@ 0x63
     ecc:	1a000009 	bne	ef8 <printf+0x1ac>
     ed0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ed4:	e5933000 	ldr	r3, [r3]
     ed8:	e6ef3073 	uxtb	r3, r3
     edc:	e1a01003 	mov	r1, r3
     ee0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ee4:	ebffff3c 	bl	bdc <putc>
     ee8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     eec:	e2833004 	add	r3, r3, #4
     ef0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ef4:	ea000010 	b	f3c <printf+0x1f0>
     ef8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     efc:	e3530025 	cmp	r3, #37	@ 0x25
     f00:	1a000005 	bne	f1c <printf+0x1d0>
     f04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f08:	e6ef3073 	uxtb	r3, r3
     f0c:	e1a01003 	mov	r1, r3
     f10:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f14:	ebffff30 	bl	bdc <putc>
     f18:	ea000007 	b	f3c <printf+0x1f0>
     f1c:	e3a01025 	mov	r1, #37	@ 0x25
     f20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f24:	ebffff2c 	bl	bdc <putc>
     f28:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f2c:	e6ef3073 	uxtb	r3, r3
     f30:	e1a01003 	mov	r1, r3
     f34:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     f38:	ebffff27 	bl	bdc <putc>
     f3c:	e3a03000 	mov	r3, #0
     f40:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f44:	e51b3010 	ldr	r3, [fp, #-16]
     f48:	e2833001 	add	r3, r3, #1
     f4c:	e50b3010 	str	r3, [fp, #-16]
     f50:	e59b2004 	ldr	r2, [fp, #4]
     f54:	e51b3010 	ldr	r3, [fp, #-16]
     f58:	e0823003 	add	r3, r2, r3
     f5c:	e5d33000 	ldrb	r3, [r3]
     f60:	e3530000 	cmp	r3, #0
     f64:	1affff84 	bne	d7c <printf+0x30>
     f68:	e1a00000 	nop			@ (mov r0, r0)
     f6c:	e1a00000 	nop			@ (mov r0, r0)
     f70:	e24bd004 	sub	sp, fp, #4
     f74:	e8bd4800 	pop	{fp, lr}
     f78:	e28dd00c 	add	sp, sp, #12
     f7c:	e12fff1e 	bx	lr
     f80:	00001458 	.word	0x00001458

00000f84 <free>:
     f84:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     f88:	e28db000 	add	fp, sp, #0
     f8c:	e24dd014 	sub	sp, sp, #20
     f90:	e50b0010 	str	r0, [fp, #-16]
     f94:	e51b3010 	ldr	r3, [fp, #-16]
     f98:	e2433008 	sub	r3, r3, #8
     f9c:	e50b300c 	str	r3, [fp, #-12]
     fa0:	e59f3154 	ldr	r3, [pc, #340]	@ 10fc <free+0x178>
     fa4:	e5933000 	ldr	r3, [r3]
     fa8:	e50b3008 	str	r3, [fp, #-8]
     fac:	ea000010 	b	ff4 <free+0x70>
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e5933000 	ldr	r3, [r3]
     fb8:	e51b2008 	ldr	r2, [fp, #-8]
     fbc:	e1520003 	cmp	r2, r3
     fc0:	3a000008 	bcc	fe8 <free+0x64>
     fc4:	e51b200c 	ldr	r2, [fp, #-12]
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e1520003 	cmp	r2, r3
     fd0:	8a000010 	bhi	1018 <free+0x94>
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e5933000 	ldr	r3, [r3]
     fdc:	e51b200c 	ldr	r2, [fp, #-12]
     fe0:	e1520003 	cmp	r2, r3
     fe4:	3a00000b 	bcc	1018 <free+0x94>
     fe8:	e51b3008 	ldr	r3, [fp, #-8]
     fec:	e5933000 	ldr	r3, [r3]
     ff0:	e50b3008 	str	r3, [fp, #-8]
     ff4:	e51b200c 	ldr	r2, [fp, #-12]
     ff8:	e51b3008 	ldr	r3, [fp, #-8]
     ffc:	e1520003 	cmp	r2, r3
    1000:	9affffea 	bls	fb0 <free+0x2c>
    1004:	e51b3008 	ldr	r3, [fp, #-8]
    1008:	e5933000 	ldr	r3, [r3]
    100c:	e51b200c 	ldr	r2, [fp, #-12]
    1010:	e1520003 	cmp	r2, r3
    1014:	2affffe5 	bcs	fb0 <free+0x2c>
    1018:	e51b300c 	ldr	r3, [fp, #-12]
    101c:	e5933004 	ldr	r3, [r3, #4]
    1020:	e1a03183 	lsl	r3, r3, #3
    1024:	e51b200c 	ldr	r2, [fp, #-12]
    1028:	e0822003 	add	r2, r2, r3
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e5933000 	ldr	r3, [r3]
    1034:	e1520003 	cmp	r2, r3
    1038:	1a00000d 	bne	1074 <free+0xf0>
    103c:	e51b300c 	ldr	r3, [fp, #-12]
    1040:	e5932004 	ldr	r2, [r3, #4]
    1044:	e51b3008 	ldr	r3, [fp, #-8]
    1048:	e5933000 	ldr	r3, [r3]
    104c:	e5933004 	ldr	r3, [r3, #4]
    1050:	e0822003 	add	r2, r2, r3
    1054:	e51b300c 	ldr	r3, [fp, #-12]
    1058:	e5832004 	str	r2, [r3, #4]
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e5933000 	ldr	r3, [r3]
    1064:	e5932000 	ldr	r2, [r3]
    1068:	e51b300c 	ldr	r3, [fp, #-12]
    106c:	e5832000 	str	r2, [r3]
    1070:	ea000003 	b	1084 <free+0x100>
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e5932000 	ldr	r2, [r3]
    107c:	e51b300c 	ldr	r3, [fp, #-12]
    1080:	e5832000 	str	r2, [r3]
    1084:	e51b3008 	ldr	r3, [fp, #-8]
    1088:	e5933004 	ldr	r3, [r3, #4]
    108c:	e1a03183 	lsl	r3, r3, #3
    1090:	e51b2008 	ldr	r2, [fp, #-8]
    1094:	e0823003 	add	r3, r2, r3
    1098:	e51b200c 	ldr	r2, [fp, #-12]
    109c:	e1520003 	cmp	r2, r3
    10a0:	1a00000b 	bne	10d4 <free+0x150>
    10a4:	e51b3008 	ldr	r3, [fp, #-8]
    10a8:	e5932004 	ldr	r2, [r3, #4]
    10ac:	e51b300c 	ldr	r3, [fp, #-12]
    10b0:	e5933004 	ldr	r3, [r3, #4]
    10b4:	e0822003 	add	r2, r2, r3
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e5832004 	str	r2, [r3, #4]
    10c0:	e51b300c 	ldr	r3, [fp, #-12]
    10c4:	e5932000 	ldr	r2, [r3]
    10c8:	e51b3008 	ldr	r3, [fp, #-8]
    10cc:	e5832000 	str	r2, [r3]
    10d0:	ea000002 	b	10e0 <free+0x15c>
    10d4:	e51b3008 	ldr	r3, [fp, #-8]
    10d8:	e51b200c 	ldr	r2, [fp, #-12]
    10dc:	e5832000 	str	r2, [r3]
    10e0:	e59f2014 	ldr	r2, [pc, #20]	@ 10fc <free+0x178>
    10e4:	e51b3008 	ldr	r3, [fp, #-8]
    10e8:	e5823000 	str	r3, [r2]
    10ec:	e1a00000 	nop			@ (mov r0, r0)
    10f0:	e28bd000 	add	sp, fp, #0
    10f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    10f8:	e12fff1e 	bx	lr
    10fc:	0000148c 	.word	0x0000148c

00001100 <morecore>:
    1100:	e92d4800 	push	{fp, lr}
    1104:	e28db004 	add	fp, sp, #4
    1108:	e24dd010 	sub	sp, sp, #16
    110c:	e50b0010 	str	r0, [fp, #-16]
    1110:	e51b3010 	ldr	r3, [fp, #-16]
    1114:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1118:	2a000001 	bcs	1124 <morecore+0x24>
    111c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1120:	e50b3010 	str	r3, [fp, #-16]
    1124:	e51b3010 	ldr	r3, [fp, #-16]
    1128:	e1a03183 	lsl	r3, r3, #3
    112c:	e1a00003 	mov	r0, r3
    1130:	ebfffe73 	bl	b04 <sbrk>
    1134:	e50b0008 	str	r0, [fp, #-8]
    1138:	e51b3008 	ldr	r3, [fp, #-8]
    113c:	e3730001 	cmn	r3, #1
    1140:	1a000001 	bne	114c <morecore+0x4c>
    1144:	e3a03000 	mov	r3, #0
    1148:	ea00000a 	b	1178 <morecore+0x78>
    114c:	e51b3008 	ldr	r3, [fp, #-8]
    1150:	e50b300c 	str	r3, [fp, #-12]
    1154:	e51b300c 	ldr	r3, [fp, #-12]
    1158:	e51b2010 	ldr	r2, [fp, #-16]
    115c:	e5832004 	str	r2, [r3, #4]
    1160:	e51b300c 	ldr	r3, [fp, #-12]
    1164:	e2833008 	add	r3, r3, #8
    1168:	e1a00003 	mov	r0, r3
    116c:	ebffff84 	bl	f84 <free>
    1170:	e59f300c 	ldr	r3, [pc, #12]	@ 1184 <morecore+0x84>
    1174:	e5933000 	ldr	r3, [r3]
    1178:	e1a00003 	mov	r0, r3
    117c:	e24bd004 	sub	sp, fp, #4
    1180:	e8bd8800 	pop	{fp, pc}
    1184:	0000148c 	.word	0x0000148c

00001188 <malloc>:
    1188:	e92d4800 	push	{fp, lr}
    118c:	e28db004 	add	fp, sp, #4
    1190:	e24dd018 	sub	sp, sp, #24
    1194:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1198:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    119c:	e2833007 	add	r3, r3, #7
    11a0:	e1a031a3 	lsr	r3, r3, #3
    11a4:	e2833001 	add	r3, r3, #1
    11a8:	e50b3010 	str	r3, [fp, #-16]
    11ac:	e59f3134 	ldr	r3, [pc, #308]	@ 12e8 <malloc+0x160>
    11b0:	e5933000 	ldr	r3, [r3]
    11b4:	e50b300c 	str	r3, [fp, #-12]
    11b8:	e51b300c 	ldr	r3, [fp, #-12]
    11bc:	e3530000 	cmp	r3, #0
    11c0:	1a00000b 	bne	11f4 <malloc+0x6c>
    11c4:	e59f3120 	ldr	r3, [pc, #288]	@ 12ec <malloc+0x164>
    11c8:	e50b300c 	str	r3, [fp, #-12]
    11cc:	e59f2114 	ldr	r2, [pc, #276]	@ 12e8 <malloc+0x160>
    11d0:	e51b300c 	ldr	r3, [fp, #-12]
    11d4:	e5823000 	str	r3, [r2]
    11d8:	e59f3108 	ldr	r3, [pc, #264]	@ 12e8 <malloc+0x160>
    11dc:	e5933000 	ldr	r3, [r3]
    11e0:	e59f2104 	ldr	r2, [pc, #260]	@ 12ec <malloc+0x164>
    11e4:	e5823000 	str	r3, [r2]
    11e8:	e59f30fc 	ldr	r3, [pc, #252]	@ 12ec <malloc+0x164>
    11ec:	e3a02000 	mov	r2, #0
    11f0:	e5832004 	str	r2, [r3, #4]
    11f4:	e51b300c 	ldr	r3, [fp, #-12]
    11f8:	e5933000 	ldr	r3, [r3]
    11fc:	e50b3008 	str	r3, [fp, #-8]
    1200:	e51b3008 	ldr	r3, [fp, #-8]
    1204:	e5933004 	ldr	r3, [r3, #4]
    1208:	e51b2010 	ldr	r2, [fp, #-16]
    120c:	e1520003 	cmp	r2, r3
    1210:	8a00001e 	bhi	1290 <malloc+0x108>
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e5933004 	ldr	r3, [r3, #4]
    121c:	e51b2010 	ldr	r2, [fp, #-16]
    1220:	e1520003 	cmp	r2, r3
    1224:	1a000004 	bne	123c <malloc+0xb4>
    1228:	e51b3008 	ldr	r3, [fp, #-8]
    122c:	e5932000 	ldr	r2, [r3]
    1230:	e51b300c 	ldr	r3, [fp, #-12]
    1234:	e5832000 	str	r2, [r3]
    1238:	ea00000e 	b	1278 <malloc+0xf0>
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e5932004 	ldr	r2, [r3, #4]
    1244:	e51b3010 	ldr	r3, [fp, #-16]
    1248:	e0422003 	sub	r2, r2, r3
    124c:	e51b3008 	ldr	r3, [fp, #-8]
    1250:	e5832004 	str	r2, [r3, #4]
    1254:	e51b3008 	ldr	r3, [fp, #-8]
    1258:	e5933004 	ldr	r3, [r3, #4]
    125c:	e1a03183 	lsl	r3, r3, #3
    1260:	e51b2008 	ldr	r2, [fp, #-8]
    1264:	e0823003 	add	r3, r2, r3
    1268:	e50b3008 	str	r3, [fp, #-8]
    126c:	e51b3008 	ldr	r3, [fp, #-8]
    1270:	e51b2010 	ldr	r2, [fp, #-16]
    1274:	e5832004 	str	r2, [r3, #4]
    1278:	e59f2068 	ldr	r2, [pc, #104]	@ 12e8 <malloc+0x160>
    127c:	e51b300c 	ldr	r3, [fp, #-12]
    1280:	e5823000 	str	r3, [r2]
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e2833008 	add	r3, r3, #8
    128c:	ea000012 	b	12dc <malloc+0x154>
    1290:	e59f3050 	ldr	r3, [pc, #80]	@ 12e8 <malloc+0x160>
    1294:	e5933000 	ldr	r3, [r3]
    1298:	e51b2008 	ldr	r2, [fp, #-8]
    129c:	e1520003 	cmp	r2, r3
    12a0:	1a000007 	bne	12c4 <malloc+0x13c>
    12a4:	e51b0010 	ldr	r0, [fp, #-16]
    12a8:	ebffff94 	bl	1100 <morecore>
    12ac:	e50b0008 	str	r0, [fp, #-8]
    12b0:	e51b3008 	ldr	r3, [fp, #-8]
    12b4:	e3530000 	cmp	r3, #0
    12b8:	1a000001 	bne	12c4 <malloc+0x13c>
    12bc:	e3a03000 	mov	r3, #0
    12c0:	ea000005 	b	12dc <malloc+0x154>
    12c4:	e51b3008 	ldr	r3, [fp, #-8]
    12c8:	e50b300c 	str	r3, [fp, #-12]
    12cc:	e51b3008 	ldr	r3, [fp, #-8]
    12d0:	e5933000 	ldr	r3, [r3]
    12d4:	e50b3008 	str	r3, [fp, #-8]
    12d8:	eaffffc8 	b	1200 <malloc+0x78>
    12dc:	e1a00003 	mov	r0, r3
    12e0:	e24bd004 	sub	sp, fp, #4
    12e4:	e8bd8800 	pop	{fp, pc}
    12e8:	0000148c 	.word	0x0000148c
    12ec:	00001484 	.word	0x00001484

000012f0 <__udivsi3>:
    12f0:	e2512001 	subs	r2, r1, #1
    12f4:	012fff1e 	bxeq	lr
    12f8:	3a000036 	bcc	13d8 <__udivsi3+0xe8>
    12fc:	e1500001 	cmp	r0, r1
    1300:	9a000022 	bls	1390 <__udivsi3+0xa0>
    1304:	e1110002 	tst	r1, r2
    1308:	0a000023 	beq	139c <__udivsi3+0xac>
    130c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1310:	01a01181 	lsleq	r1, r1, #3
    1314:	03a03008 	moveq	r3, #8
    1318:	13a03001 	movne	r3, #1
    131c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1320:	31510000 	cmpcc	r1, r0
    1324:	31a01201 	lslcc	r1, r1, #4
    1328:	31a03203 	lslcc	r3, r3, #4
    132c:	3afffffa 	bcc	131c <__udivsi3+0x2c>
    1330:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1334:	31510000 	cmpcc	r1, r0
    1338:	31a01081 	lslcc	r1, r1, #1
    133c:	31a03083 	lslcc	r3, r3, #1
    1340:	3afffffa 	bcc	1330 <__udivsi3+0x40>
    1344:	e3a02000 	mov	r2, #0
    1348:	e1500001 	cmp	r0, r1
    134c:	20400001 	subcs	r0, r0, r1
    1350:	21822003 	orrcs	r2, r2, r3
    1354:	e15000a1 	cmp	r0, r1, lsr #1
    1358:	204000a1 	subcs	r0, r0, r1, lsr #1
    135c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1360:	e1500121 	cmp	r0, r1, lsr #2
    1364:	20400121 	subcs	r0, r0, r1, lsr #2
    1368:	21822123 	orrcs	r2, r2, r3, lsr #2
    136c:	e15001a1 	cmp	r0, r1, lsr #3
    1370:	204001a1 	subcs	r0, r0, r1, lsr #3
    1374:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1378:	e3500000 	cmp	r0, #0
    137c:	11b03223 	lsrsne	r3, r3, #4
    1380:	11a01221 	lsrne	r1, r1, #4
    1384:	1affffef 	bne	1348 <__udivsi3+0x58>
    1388:	e1a00002 	mov	r0, r2
    138c:	e12fff1e 	bx	lr
    1390:	03a00001 	moveq	r0, #1
    1394:	13a00000 	movne	r0, #0
    1398:	e12fff1e 	bx	lr
    139c:	e3510801 	cmp	r1, #65536	@ 0x10000
    13a0:	21a01821 	lsrcs	r1, r1, #16
    13a4:	23a02010 	movcs	r2, #16
    13a8:	33a02000 	movcc	r2, #0
    13ac:	e3510c01 	cmp	r1, #256	@ 0x100
    13b0:	21a01421 	lsrcs	r1, r1, #8
    13b4:	22822008 	addcs	r2, r2, #8
    13b8:	e3510010 	cmp	r1, #16
    13bc:	21a01221 	lsrcs	r1, r1, #4
    13c0:	22822004 	addcs	r2, r2, #4
    13c4:	e3510004 	cmp	r1, #4
    13c8:	82822003 	addhi	r2, r2, #3
    13cc:	908220a1 	addls	r2, r2, r1, lsr #1
    13d0:	e1a00230 	lsr	r0, r0, r2
    13d4:	e12fff1e 	bx	lr
    13d8:	e3500000 	cmp	r0, #0
    13dc:	13e00000 	mvnne	r0, #0
    13e0:	ea000007 	b	1404 <__aeabi_idiv0>

000013e4 <__aeabi_uidivmod>:
    13e4:	e3510000 	cmp	r1, #0
    13e8:	0afffffa 	beq	13d8 <__udivsi3+0xe8>
    13ec:	e92d4003 	push	{r0, r1, lr}
    13f0:	ebffffbe 	bl	12f0 <__udivsi3>
    13f4:	e8bd4006 	pop	{r1, r2, lr}
    13f8:	e0030092 	mul	r3, r2, r0
    13fc:	e0411003 	sub	r1, r1, r3
    1400:	e12fff1e 	bx	lr

00001404 <__aeabi_idiv0>:
    1404:	e12fff1e 	bx	lr
