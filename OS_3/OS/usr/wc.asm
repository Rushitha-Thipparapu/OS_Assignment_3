
_wc:     file format elf32-littlearm


Disassembly of section .text:

00000000 <wc>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd028 	sub	sp, sp, #40	@ 0x28
       c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
      10:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
      14:	e3a03000 	mov	r3, #0
      18:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      1c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      20:	e50b3010 	str	r3, [fp, #-16]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e50b300c 	str	r3, [fp, #-12]
      2c:	e3a03000 	mov	r3, #0
      30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      34:	ea00002a 	b	e4 <wc+0xe4>
      38:	e3a03000 	mov	r3, #0
      3c:	e50b3008 	str	r3, [fp, #-8]
      40:	ea000023 	b	d4 <wc+0xd4>
      44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      48:	e2833001 	add	r3, r3, #1
      4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      50:	e59f20f8 	ldr	r2, [pc, #248]	@ 150 <wc+0x150>
      54:	e51b3008 	ldr	r3, [fp, #-8]
      58:	e0823003 	add	r3, r2, r3
      5c:	e5d33000 	ldrb	r3, [r3]
      60:	e353000a 	cmp	r3, #10
      64:	1a000002 	bne	74 <wc+0x74>
      68:	e51b300c 	ldr	r3, [fp, #-12]
      6c:	e2833001 	add	r3, r3, #1
      70:	e50b300c 	str	r3, [fp, #-12]
      74:	e59f20d4 	ldr	r2, [pc, #212]	@ 150 <wc+0x150>
      78:	e51b3008 	ldr	r3, [fp, #-8]
      7c:	e0823003 	add	r3, r2, r3
      80:	e5d33000 	ldrb	r3, [r3]
      84:	e1a01003 	mov	r1, r3
      88:	e59f00c4 	ldr	r0, [pc, #196]	@ 154 <wc+0x154>
      8c:	eb000103 	bl	4a0 <strchr>
      90:	e1a03000 	mov	r3, r0
      94:	e3530000 	cmp	r3, #0
      98:	0a000002 	beq	a8 <wc+0xa8>
      9c:	e3a03000 	mov	r3, #0
      a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      a4:	ea000007 	b	c8 <wc+0xc8>
      a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      ac:	e3530000 	cmp	r3, #0
      b0:	1a000004 	bne	c8 <wc+0xc8>
      b4:	e51b3010 	ldr	r3, [fp, #-16]
      b8:	e2833001 	add	r3, r3, #1
      bc:	e50b3010 	str	r3, [fp, #-16]
      c0:	e3a03001 	mov	r3, #1
      c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      c8:	e51b3008 	ldr	r3, [fp, #-8]
      cc:	e2833001 	add	r3, r3, #1
      d0:	e50b3008 	str	r3, [fp, #-8]
      d4:	e51b2008 	ldr	r2, [fp, #-8]
      d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      dc:	e1520003 	cmp	r2, r3
      e0:	baffffd7 	blt	44 <wc+0x44>
      e4:	e3a02c02 	mov	r2, #512	@ 0x200
      e8:	e59f1060 	ldr	r1, [pc, #96]	@ 150 <wc+0x150>
      ec:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
      f0:	eb0001ad 	bl	7ac <read>
      f4:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
      f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      fc:	e3530000 	cmp	r3, #0
     100:	caffffcc 	bgt	38 <wc+0x38>
     104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     108:	e3530000 	cmp	r3, #0
     10c:	aa000003 	bge	120 <wc+0x120>
     110:	e59f1040 	ldr	r1, [pc, #64]	@ 158 <wc+0x158>
     114:	e3a00001 	mov	r0, #1
     118:	eb0002b3 	bl	bec <printf>
     11c:	eb000187 	bl	740 <exit>
     120:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     124:	e58d3004 	str	r3, [sp, #4]
     128:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     12c:	e58d3000 	str	r3, [sp]
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e51b200c 	ldr	r2, [fp, #-12]
     138:	e59f101c 	ldr	r1, [pc, #28]	@ 15c <wc+0x15c>
     13c:	e3a00001 	mov	r0, #1
     140:	eb0002a9 	bl	bec <printf>
     144:	e1a00000 	nop			@ (mov r0, r0)
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}
     150:	00001304 	.word	0x00001304
     154:	000012a8 	.word	0x000012a8
     158:	000012b0 	.word	0x000012b0
     15c:	000012c0 	.word	0x000012c0

00000160 <main>:
     160:	e92d4800 	push	{fp, lr}
     164:	e28db004 	add	fp, sp, #4
     168:	e24dd010 	sub	sp, sp, #16
     16c:	e50b0010 	str	r0, [fp, #-16]
     170:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     174:	e51b3010 	ldr	r3, [fp, #-16]
     178:	e3530001 	cmp	r3, #1
     17c:	ca000003 	bgt	190 <main+0x30>
     180:	e59f10b4 	ldr	r1, [pc, #180]	@ 23c <main+0xdc>
     184:	e3a00000 	mov	r0, #0
     188:	ebffff9c 	bl	0 <wc>
     18c:	eb00016b 	bl	740 <exit>
     190:	e3a03001 	mov	r3, #1
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	ea000022 	b	228 <main+0xc8>
     19c:	e51b3008 	ldr	r3, [fp, #-8]
     1a0:	e1a03103 	lsl	r3, r3, #2
     1a4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1a8:	e0823003 	add	r3, r2, r3
     1ac:	e5933000 	ldr	r3, [r3]
     1b0:	e3a01000 	mov	r1, #0
     1b4:	e1a00003 	mov	r0, r3
     1b8:	eb0001a8 	bl	860 <open>
     1bc:	e50b000c 	str	r0, [fp, #-12]
     1c0:	e51b300c 	ldr	r3, [fp, #-12]
     1c4:	e3530000 	cmp	r3, #0
     1c8:	aa000009 	bge	1f4 <main+0x94>
     1cc:	e51b3008 	ldr	r3, [fp, #-8]
     1d0:	e1a03103 	lsl	r3, r3, #2
     1d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1d8:	e0823003 	add	r3, r2, r3
     1dc:	e5933000 	ldr	r3, [r3]
     1e0:	e1a02003 	mov	r2, r3
     1e4:	e59f1054 	ldr	r1, [pc, #84]	@ 240 <main+0xe0>
     1e8:	e3a00001 	mov	r0, #1
     1ec:	eb00027e 	bl	bec <printf>
     1f0:	eb000152 	bl	740 <exit>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e1a03103 	lsl	r3, r3, #2
     1fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     200:	e0823003 	add	r3, r2, r3
     204:	e5933000 	ldr	r3, [r3]
     208:	e1a01003 	mov	r1, r3
     20c:	e51b000c 	ldr	r0, [fp, #-12]
     210:	ebffff7a 	bl	0 <wc>
     214:	e51b000c 	ldr	r0, [fp, #-12]
     218:	eb000175 	bl	7f4 <close>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e2833001 	add	r3, r3, #1
     224:	e50b3008 	str	r3, [fp, #-8]
     228:	e51b2008 	ldr	r2, [fp, #-8]
     22c:	e51b3010 	ldr	r3, [fp, #-16]
     230:	e1520003 	cmp	r2, r3
     234:	baffffd8 	blt	19c <main+0x3c>
     238:	eb000140 	bl	740 <exit>
     23c:	000012d0 	.word	0x000012d0
     240:	000012d4 	.word	0x000012d4

00000244 <strcpy>:
     244:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     248:	e28db000 	add	fp, sp, #0
     24c:	e24dd014 	sub	sp, sp, #20
     250:	e50b0010 	str	r0, [fp, #-16]
     254:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     258:	e51b3010 	ldr	r3, [fp, #-16]
     25c:	e50b3008 	str	r3, [fp, #-8]
     260:	e1a00000 	nop			@ (mov r0, r0)
     264:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     268:	e2823001 	add	r3, r2, #1
     26c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     270:	e51b3010 	ldr	r3, [fp, #-16]
     274:	e2831001 	add	r1, r3, #1
     278:	e50b1010 	str	r1, [fp, #-16]
     27c:	e5d22000 	ldrb	r2, [r2]
     280:	e5c32000 	strb	r2, [r3]
     284:	e5d33000 	ldrb	r3, [r3]
     288:	e3530000 	cmp	r3, #0
     28c:	1afffff4 	bne	264 <strcpy+0x20>
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e1a00003 	mov	r0, r3
     298:	e28bd000 	add	sp, fp, #0
     29c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2a0:	e12fff1e 	bx	lr

000002a4 <strcmp>:
     2a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2a8:	e28db000 	add	fp, sp, #0
     2ac:	e24dd00c 	sub	sp, sp, #12
     2b0:	e50b0008 	str	r0, [fp, #-8]
     2b4:	e50b100c 	str	r1, [fp, #-12]
     2b8:	ea000005 	b	2d4 <strcmp+0x30>
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e2833001 	add	r3, r3, #1
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	e51b300c 	ldr	r3, [fp, #-12]
     2cc:	e2833001 	add	r3, r3, #1
     2d0:	e50b300c 	str	r3, [fp, #-12]
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e5d33000 	ldrb	r3, [r3]
     2dc:	e3530000 	cmp	r3, #0
     2e0:	0a000005 	beq	2fc <strcmp+0x58>
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e5d32000 	ldrb	r2, [r3]
     2ec:	e51b300c 	ldr	r3, [fp, #-12]
     2f0:	e5d33000 	ldrb	r3, [r3]
     2f4:	e1520003 	cmp	r2, r3
     2f8:	0affffef 	beq	2bc <strcmp+0x18>
     2fc:	e51b3008 	ldr	r3, [fp, #-8]
     300:	e5d33000 	ldrb	r3, [r3]
     304:	e1a02003 	mov	r2, r3
     308:	e51b300c 	ldr	r3, [fp, #-12]
     30c:	e5d33000 	ldrb	r3, [r3]
     310:	e0423003 	sub	r3, r2, r3
     314:	e1a00003 	mov	r0, r3
     318:	e28bd000 	add	sp, fp, #0
     31c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     320:	e12fff1e 	bx	lr

00000324 <strlen>:
     324:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     328:	e28db000 	add	fp, sp, #0
     32c:	e24dd014 	sub	sp, sp, #20
     330:	e50b0010 	str	r0, [fp, #-16]
     334:	e3a03000 	mov	r3, #0
     338:	e50b3008 	str	r3, [fp, #-8]
     33c:	ea000002 	b	34c <strlen+0x28>
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	e2833001 	add	r3, r3, #1
     348:	e50b3008 	str	r3, [fp, #-8]
     34c:	e51b3008 	ldr	r3, [fp, #-8]
     350:	e51b2010 	ldr	r2, [fp, #-16]
     354:	e0823003 	add	r3, r2, r3
     358:	e5d33000 	ldrb	r3, [r3]
     35c:	e3530000 	cmp	r3, #0
     360:	1afffff6 	bne	340 <strlen+0x1c>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e1a00003 	mov	r0, r3
     36c:	e28bd000 	add	sp, fp, #0
     370:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     374:	e12fff1e 	bx	lr

00000378 <memset>:
     378:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     37c:	e28db000 	add	fp, sp, #0
     380:	e24dd024 	sub	sp, sp, #36	@ 0x24
     384:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     388:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     38c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     390:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     394:	e50b3008 	str	r3, [fp, #-8]
     398:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     39c:	e54b300d 	strb	r3, [fp, #-13]
     3a0:	e55b200d 	ldrb	r2, [fp, #-13]
     3a4:	e1a03002 	mov	r3, r2
     3a8:	e1a03403 	lsl	r3, r3, #8
     3ac:	e0833002 	add	r3, r3, r2
     3b0:	e1a03803 	lsl	r3, r3, #16
     3b4:	e1a02003 	mov	r2, r3
     3b8:	e55b300d 	ldrb	r3, [fp, #-13]
     3bc:	e1a03403 	lsl	r3, r3, #8
     3c0:	e1822003 	orr	r2, r2, r3
     3c4:	e55b300d 	ldrb	r3, [fp, #-13]
     3c8:	e1823003 	orr	r3, r2, r3
     3cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3d0:	ea000008 	b	3f8 <memset+0x80>
     3d4:	e51b3008 	ldr	r3, [fp, #-8]
     3d8:	e55b200d 	ldrb	r2, [fp, #-13]
     3dc:	e5c32000 	strb	r2, [r3]
     3e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3e4:	e2433001 	sub	r3, r3, #1
     3e8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3ec:	e51b3008 	ldr	r3, [fp, #-8]
     3f0:	e2833001 	add	r3, r3, #1
     3f4:	e50b3008 	str	r3, [fp, #-8]
     3f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3fc:	e3530000 	cmp	r3, #0
     400:	0a000003 	beq	414 <memset+0x9c>
     404:	e51b3008 	ldr	r3, [fp, #-8]
     408:	e2033003 	and	r3, r3, #3
     40c:	e3530000 	cmp	r3, #0
     410:	1affffef 	bne	3d4 <memset+0x5c>
     414:	e51b3008 	ldr	r3, [fp, #-8]
     418:	e50b300c 	str	r3, [fp, #-12]
     41c:	ea000008 	b	444 <memset+0xcc>
     420:	e51b300c 	ldr	r3, [fp, #-12]
     424:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     428:	e5832000 	str	r2, [r3]
     42c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     430:	e2433004 	sub	r3, r3, #4
     434:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     438:	e51b300c 	ldr	r3, [fp, #-12]
     43c:	e2833004 	add	r3, r3, #4
     440:	e50b300c 	str	r3, [fp, #-12]
     444:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     448:	e3530003 	cmp	r3, #3
     44c:	8afffff3 	bhi	420 <memset+0xa8>
     450:	e51b300c 	ldr	r3, [fp, #-12]
     454:	e50b3008 	str	r3, [fp, #-8]
     458:	ea000008 	b	480 <memset+0x108>
     45c:	e51b3008 	ldr	r3, [fp, #-8]
     460:	e55b200d 	ldrb	r2, [fp, #-13]
     464:	e5c32000 	strb	r2, [r3]
     468:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     46c:	e2433001 	sub	r3, r3, #1
     470:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     474:	e51b3008 	ldr	r3, [fp, #-8]
     478:	e2833001 	add	r3, r3, #1
     47c:	e50b3008 	str	r3, [fp, #-8]
     480:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     484:	e3530000 	cmp	r3, #0
     488:	1afffff3 	bne	45c <memset+0xe4>
     48c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     490:	e1a00003 	mov	r0, r3
     494:	e28bd000 	add	sp, fp, #0
     498:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     49c:	e12fff1e 	bx	lr

000004a0 <strchr>:
     4a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4a4:	e28db000 	add	fp, sp, #0
     4a8:	e24dd00c 	sub	sp, sp, #12
     4ac:	e50b0008 	str	r0, [fp, #-8]
     4b0:	e1a03001 	mov	r3, r1
     4b4:	e54b3009 	strb	r3, [fp, #-9]
     4b8:	ea000009 	b	4e4 <strchr+0x44>
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e5d33000 	ldrb	r3, [r3]
     4c4:	e55b2009 	ldrb	r2, [fp, #-9]
     4c8:	e1520003 	cmp	r2, r3
     4cc:	1a000001 	bne	4d8 <strchr+0x38>
     4d0:	e51b3008 	ldr	r3, [fp, #-8]
     4d4:	ea000007 	b	4f8 <strchr+0x58>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e2833001 	add	r3, r3, #1
     4e0:	e50b3008 	str	r3, [fp, #-8]
     4e4:	e51b3008 	ldr	r3, [fp, #-8]
     4e8:	e5d33000 	ldrb	r3, [r3]
     4ec:	e3530000 	cmp	r3, #0
     4f0:	1afffff1 	bne	4bc <strchr+0x1c>
     4f4:	e3a03000 	mov	r3, #0
     4f8:	e1a00003 	mov	r0, r3
     4fc:	e28bd000 	add	sp, fp, #0
     500:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     504:	e12fff1e 	bx	lr

00000508 <gets>:
     508:	e92d4800 	push	{fp, lr}
     50c:	e28db004 	add	fp, sp, #4
     510:	e24dd018 	sub	sp, sp, #24
     514:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     518:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     51c:	e3a03000 	mov	r3, #0
     520:	e50b3008 	str	r3, [fp, #-8]
     524:	ea000016 	b	584 <gets+0x7c>
     528:	e24b300d 	sub	r3, fp, #13
     52c:	e3a02001 	mov	r2, #1
     530:	e1a01003 	mov	r1, r3
     534:	e3a00000 	mov	r0, #0
     538:	eb00009b 	bl	7ac <read>
     53c:	e50b000c 	str	r0, [fp, #-12]
     540:	e51b300c 	ldr	r3, [fp, #-12]
     544:	e3530000 	cmp	r3, #0
     548:	da000013 	ble	59c <gets+0x94>
     54c:	e51b3008 	ldr	r3, [fp, #-8]
     550:	e2832001 	add	r2, r3, #1
     554:	e50b2008 	str	r2, [fp, #-8]
     558:	e1a02003 	mov	r2, r3
     55c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     560:	e0833002 	add	r3, r3, r2
     564:	e55b200d 	ldrb	r2, [fp, #-13]
     568:	e5c32000 	strb	r2, [r3]
     56c:	e55b300d 	ldrb	r3, [fp, #-13]
     570:	e353000a 	cmp	r3, #10
     574:	0a000009 	beq	5a0 <gets+0x98>
     578:	e55b300d 	ldrb	r3, [fp, #-13]
     57c:	e353000d 	cmp	r3, #13
     580:	0a000006 	beq	5a0 <gets+0x98>
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e2833001 	add	r3, r3, #1
     58c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     590:	e1520003 	cmp	r2, r3
     594:	caffffe3 	bgt	528 <gets+0x20>
     598:	ea000000 	b	5a0 <gets+0x98>
     59c:	e1a00000 	nop			@ (mov r0, r0)
     5a0:	e51b3008 	ldr	r3, [fp, #-8]
     5a4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     5a8:	e0823003 	add	r3, r2, r3
     5ac:	e3a02000 	mov	r2, #0
     5b0:	e5c32000 	strb	r2, [r3]
     5b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5b8:	e1a00003 	mov	r0, r3
     5bc:	e24bd004 	sub	sp, fp, #4
     5c0:	e8bd8800 	pop	{fp, pc}

000005c4 <stat>:
     5c4:	e92d4800 	push	{fp, lr}
     5c8:	e28db004 	add	fp, sp, #4
     5cc:	e24dd010 	sub	sp, sp, #16
     5d0:	e50b0010 	str	r0, [fp, #-16]
     5d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5d8:	e3a01000 	mov	r1, #0
     5dc:	e51b0010 	ldr	r0, [fp, #-16]
     5e0:	eb00009e 	bl	860 <open>
     5e4:	e50b0008 	str	r0, [fp, #-8]
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e3530000 	cmp	r3, #0
     5f0:	aa000001 	bge	5fc <stat+0x38>
     5f4:	e3e03000 	mvn	r3, #0
     5f8:	ea000006 	b	618 <stat+0x54>
     5fc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     600:	e51b0008 	ldr	r0, [fp, #-8]
     604:	eb0000b0 	bl	8cc <fstat>
     608:	e50b000c 	str	r0, [fp, #-12]
     60c:	e51b0008 	ldr	r0, [fp, #-8]
     610:	eb000077 	bl	7f4 <close>
     614:	e51b300c 	ldr	r3, [fp, #-12]
     618:	e1a00003 	mov	r0, r3
     61c:	e24bd004 	sub	sp, fp, #4
     620:	e8bd8800 	pop	{fp, pc}

00000624 <atoi>:
     624:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     628:	e28db000 	add	fp, sp, #0
     62c:	e24dd014 	sub	sp, sp, #20
     630:	e50b0010 	str	r0, [fp, #-16]
     634:	e3a03000 	mov	r3, #0
     638:	e50b3008 	str	r3, [fp, #-8]
     63c:	ea00000c 	b	674 <atoi+0x50>
     640:	e51b2008 	ldr	r2, [fp, #-8]
     644:	e1a03002 	mov	r3, r2
     648:	e1a03103 	lsl	r3, r3, #2
     64c:	e0833002 	add	r3, r3, r2
     650:	e1a03083 	lsl	r3, r3, #1
     654:	e1a01003 	mov	r1, r3
     658:	e51b3010 	ldr	r3, [fp, #-16]
     65c:	e2832001 	add	r2, r3, #1
     660:	e50b2010 	str	r2, [fp, #-16]
     664:	e5d33000 	ldrb	r3, [r3]
     668:	e0813003 	add	r3, r1, r3
     66c:	e2433030 	sub	r3, r3, #48	@ 0x30
     670:	e50b3008 	str	r3, [fp, #-8]
     674:	e51b3010 	ldr	r3, [fp, #-16]
     678:	e5d33000 	ldrb	r3, [r3]
     67c:	e353002f 	cmp	r3, #47	@ 0x2f
     680:	9a000003 	bls	694 <atoi+0x70>
     684:	e51b3010 	ldr	r3, [fp, #-16]
     688:	e5d33000 	ldrb	r3, [r3]
     68c:	e3530039 	cmp	r3, #57	@ 0x39
     690:	9affffea 	bls	640 <atoi+0x1c>
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e1a00003 	mov	r0, r3
     69c:	e28bd000 	add	sp, fp, #0
     6a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <memmove>:
     6a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6ac:	e28db000 	add	fp, sp, #0
     6b0:	e24dd01c 	sub	sp, sp, #28
     6b4:	e50b0010 	str	r0, [fp, #-16]
     6b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6bc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6c0:	e51b3010 	ldr	r3, [fp, #-16]
     6c4:	e50b3008 	str	r3, [fp, #-8]
     6c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     6cc:	e50b300c 	str	r3, [fp, #-12]
     6d0:	ea000007 	b	6f4 <memmove+0x4c>
     6d4:	e51b200c 	ldr	r2, [fp, #-12]
     6d8:	e2823001 	add	r3, r2, #1
     6dc:	e50b300c 	str	r3, [fp, #-12]
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e2831001 	add	r1, r3, #1
     6e8:	e50b1008 	str	r1, [fp, #-8]
     6ec:	e5d22000 	ldrb	r2, [r2]
     6f0:	e5c32000 	strb	r2, [r3]
     6f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6f8:	e2432001 	sub	r2, r3, #1
     6fc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     700:	e3530000 	cmp	r3, #0
     704:	cafffff2 	bgt	6d4 <memmove+0x2c>
     708:	e51b3010 	ldr	r3, [fp, #-16]
     70c:	e1a00003 	mov	r0, r3
     710:	e28bd000 	add	sp, fp, #0
     714:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     718:	e12fff1e 	bx	lr

0000071c <fork>:
     71c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     720:	e1a04003 	mov	r4, r3
     724:	e1a03002 	mov	r3, r2
     728:	e1a02001 	mov	r2, r1
     72c:	e1a01000 	mov	r1, r0
     730:	e3a00001 	mov	r0, #1
     734:	ef000000 	svc	0x00000000
     738:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     73c:	e12fff1e 	bx	lr

00000740 <exit>:
     740:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     744:	e1a04003 	mov	r4, r3
     748:	e1a03002 	mov	r3, r2
     74c:	e1a02001 	mov	r2, r1
     750:	e1a01000 	mov	r1, r0
     754:	e3a00002 	mov	r0, #2
     758:	ef000000 	svc	0x00000000
     75c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     760:	e12fff1e 	bx	lr

00000764 <wait>:
     764:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     768:	e1a04003 	mov	r4, r3
     76c:	e1a03002 	mov	r3, r2
     770:	e1a02001 	mov	r2, r1
     774:	e1a01000 	mov	r1, r0
     778:	e3a00003 	mov	r0, #3
     77c:	ef000000 	svc	0x00000000
     780:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     784:	e12fff1e 	bx	lr

00000788 <pipe>:
     788:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     78c:	e1a04003 	mov	r4, r3
     790:	e1a03002 	mov	r3, r2
     794:	e1a02001 	mov	r2, r1
     798:	e1a01000 	mov	r1, r0
     79c:	e3a00004 	mov	r0, #4
     7a0:	ef000000 	svc	0x00000000
     7a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a8:	e12fff1e 	bx	lr

000007ac <read>:
     7ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b0:	e1a04003 	mov	r4, r3
     7b4:	e1a03002 	mov	r3, r2
     7b8:	e1a02001 	mov	r2, r1
     7bc:	e1a01000 	mov	r1, r0
     7c0:	e3a00005 	mov	r0, #5
     7c4:	ef000000 	svc	0x00000000
     7c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7cc:	e12fff1e 	bx	lr

000007d0 <write>:
     7d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d4:	e1a04003 	mov	r4, r3
     7d8:	e1a03002 	mov	r3, r2
     7dc:	e1a02001 	mov	r2, r1
     7e0:	e1a01000 	mov	r1, r0
     7e4:	e3a00010 	mov	r0, #16
     7e8:	ef000000 	svc	0x00000000
     7ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f0:	e12fff1e 	bx	lr

000007f4 <close>:
     7f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f8:	e1a04003 	mov	r4, r3
     7fc:	e1a03002 	mov	r3, r2
     800:	e1a02001 	mov	r2, r1
     804:	e1a01000 	mov	r1, r0
     808:	e3a00015 	mov	r0, #21
     80c:	ef000000 	svc	0x00000000
     810:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     814:	e12fff1e 	bx	lr

00000818 <kill>:
     818:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     81c:	e1a04003 	mov	r4, r3
     820:	e1a03002 	mov	r3, r2
     824:	e1a02001 	mov	r2, r1
     828:	e1a01000 	mov	r1, r0
     82c:	e3a00006 	mov	r0, #6
     830:	ef000000 	svc	0x00000000
     834:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <exec>:
     83c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     840:	e1a04003 	mov	r4, r3
     844:	e1a03002 	mov	r3, r2
     848:	e1a02001 	mov	r2, r1
     84c:	e1a01000 	mov	r1, r0
     850:	e3a00007 	mov	r0, #7
     854:	ef000000 	svc	0x00000000
     858:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <open>:
     860:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     864:	e1a04003 	mov	r4, r3
     868:	e1a03002 	mov	r3, r2
     86c:	e1a02001 	mov	r2, r1
     870:	e1a01000 	mov	r1, r0
     874:	e3a0000f 	mov	r0, #15
     878:	ef000000 	svc	0x00000000
     87c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     880:	e12fff1e 	bx	lr

00000884 <mknod>:
     884:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     888:	e1a04003 	mov	r4, r3
     88c:	e1a03002 	mov	r3, r2
     890:	e1a02001 	mov	r2, r1
     894:	e1a01000 	mov	r1, r0
     898:	e3a00011 	mov	r0, #17
     89c:	ef000000 	svc	0x00000000
     8a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a4:	e12fff1e 	bx	lr

000008a8 <unlink>:
     8a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ac:	e1a04003 	mov	r4, r3
     8b0:	e1a03002 	mov	r3, r2
     8b4:	e1a02001 	mov	r2, r1
     8b8:	e1a01000 	mov	r1, r0
     8bc:	e3a00012 	mov	r0, #18
     8c0:	ef000000 	svc	0x00000000
     8c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c8:	e12fff1e 	bx	lr

000008cc <fstat>:
     8cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d0:	e1a04003 	mov	r4, r3
     8d4:	e1a03002 	mov	r3, r2
     8d8:	e1a02001 	mov	r2, r1
     8dc:	e1a01000 	mov	r1, r0
     8e0:	e3a00008 	mov	r0, #8
     8e4:	ef000000 	svc	0x00000000
     8e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ec:	e12fff1e 	bx	lr

000008f0 <link>:
     8f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f4:	e1a04003 	mov	r4, r3
     8f8:	e1a03002 	mov	r3, r2
     8fc:	e1a02001 	mov	r2, r1
     900:	e1a01000 	mov	r1, r0
     904:	e3a00013 	mov	r0, #19
     908:	ef000000 	svc	0x00000000
     90c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     910:	e12fff1e 	bx	lr

00000914 <mkdir>:
     914:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     918:	e1a04003 	mov	r4, r3
     91c:	e1a03002 	mov	r3, r2
     920:	e1a02001 	mov	r2, r1
     924:	e1a01000 	mov	r1, r0
     928:	e3a00014 	mov	r0, #20
     92c:	ef000000 	svc	0x00000000
     930:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     934:	e12fff1e 	bx	lr

00000938 <chdir>:
     938:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     93c:	e1a04003 	mov	r4, r3
     940:	e1a03002 	mov	r3, r2
     944:	e1a02001 	mov	r2, r1
     948:	e1a01000 	mov	r1, r0
     94c:	e3a00009 	mov	r0, #9
     950:	ef000000 	svc	0x00000000
     954:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     958:	e12fff1e 	bx	lr

0000095c <dup>:
     95c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     960:	e1a04003 	mov	r4, r3
     964:	e1a03002 	mov	r3, r2
     968:	e1a02001 	mov	r2, r1
     96c:	e1a01000 	mov	r1, r0
     970:	e3a0000a 	mov	r0, #10
     974:	ef000000 	svc	0x00000000
     978:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <getpid>:
     980:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     984:	e1a04003 	mov	r4, r3
     988:	e1a03002 	mov	r3, r2
     98c:	e1a02001 	mov	r2, r1
     990:	e1a01000 	mov	r1, r0
     994:	e3a0000b 	mov	r0, #11
     998:	ef000000 	svc	0x00000000
     99c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a0:	e12fff1e 	bx	lr

000009a4 <sbrk>:
     9a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a8:	e1a04003 	mov	r4, r3
     9ac:	e1a03002 	mov	r3, r2
     9b0:	e1a02001 	mov	r2, r1
     9b4:	e1a01000 	mov	r1, r0
     9b8:	e3a0000c 	mov	r0, #12
     9bc:	ef000000 	svc	0x00000000
     9c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c4:	e12fff1e 	bx	lr

000009c8 <sleep>:
     9c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9cc:	e1a04003 	mov	r4, r3
     9d0:	e1a03002 	mov	r3, r2
     9d4:	e1a02001 	mov	r2, r1
     9d8:	e1a01000 	mov	r1, r0
     9dc:	e3a0000d 	mov	r0, #13
     9e0:	ef000000 	svc	0x00000000
     9e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e8:	e12fff1e 	bx	lr

000009ec <uptime>:
     9ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f0:	e1a04003 	mov	r4, r3
     9f4:	e1a03002 	mov	r3, r2
     9f8:	e1a02001 	mov	r2, r1
     9fc:	e1a01000 	mov	r1, r0
     a00:	e3a0000e 	mov	r0, #14
     a04:	ef000000 	svc	0x00000000
     a08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a0c:	e12fff1e 	bx	lr

00000a10 <pgpte>:
     a10:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a14:	e1a04003 	mov	r4, r3
     a18:	e1a03002 	mov	r3, r2
     a1c:	e1a02001 	mov	r2, r1
     a20:	e1a01000 	mov	r1, r0
     a24:	e3a00016 	mov	r0, #22
     a28:	ef000000 	svc	0x00000000
     a2c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a30:	e12fff1e 	bx	lr

00000a34 <kpt>:
     a34:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a38:	e1a04003 	mov	r4, r3
     a3c:	e1a03002 	mov	r3, r2
     a40:	e1a02001 	mov	r2, r1
     a44:	e1a01000 	mov	r1, r0
     a48:	e3a00017 	mov	r0, #23
     a4c:	ef000000 	svc	0x00000000
     a50:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a54:	e12fff1e 	bx	lr

00000a58 <ugetpid>:
     a58:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a5c:	e1a04003 	mov	r4, r3
     a60:	e1a03002 	mov	r3, r2
     a64:	e1a02001 	mov	r2, r1
     a68:	e1a01000 	mov	r1, r0
     a6c:	e3a00018 	mov	r0, #24
     a70:	ef000000 	svc	0x00000000
     a74:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a78:	e12fff1e 	bx	lr

00000a7c <putc>:
     a7c:	e92d4800 	push	{fp, lr}
     a80:	e28db004 	add	fp, sp, #4
     a84:	e24dd008 	sub	sp, sp, #8
     a88:	e50b0008 	str	r0, [fp, #-8]
     a8c:	e1a03001 	mov	r3, r1
     a90:	e54b3009 	strb	r3, [fp, #-9]
     a94:	e24b3009 	sub	r3, fp, #9
     a98:	e3a02001 	mov	r2, #1
     a9c:	e1a01003 	mov	r1, r3
     aa0:	e51b0008 	ldr	r0, [fp, #-8]
     aa4:	ebffff49 	bl	7d0 <write>
     aa8:	e1a00000 	nop			@ (mov r0, r0)
     aac:	e24bd004 	sub	sp, fp, #4
     ab0:	e8bd8800 	pop	{fp, pc}

00000ab4 <printint>:
     ab4:	e92d4800 	push	{fp, lr}
     ab8:	e28db004 	add	fp, sp, #4
     abc:	e24dd030 	sub	sp, sp, #48	@ 0x30
     ac0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     ac4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     ac8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     acc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     ad0:	e3a03000 	mov	r3, #0
     ad4:	e50b300c 	str	r3, [fp, #-12]
     ad8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     adc:	e3530000 	cmp	r3, #0
     ae0:	0a000008 	beq	b08 <printint+0x54>
     ae4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     ae8:	e3530000 	cmp	r3, #0
     aec:	aa000005 	bge	b08 <printint+0x54>
     af0:	e3a03001 	mov	r3, #1
     af4:	e50b300c 	str	r3, [fp, #-12]
     af8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     afc:	e2633000 	rsb	r3, r3, #0
     b00:	e50b3010 	str	r3, [fp, #-16]
     b04:	ea000001 	b	b10 <printint+0x5c>
     b08:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b0c:	e50b3010 	str	r3, [fp, #-16]
     b10:	e3a03000 	mov	r3, #0
     b14:	e50b3008 	str	r3, [fp, #-8]
     b18:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     b1c:	e51b3010 	ldr	r3, [fp, #-16]
     b20:	e1a01002 	mov	r1, r2
     b24:	e1a00003 	mov	r0, r3
     b28:	eb0001d5 	bl	1284 <__aeabi_uidivmod>
     b2c:	e1a03001 	mov	r3, r1
     b30:	e1a01003 	mov	r1, r3
     b34:	e51b3008 	ldr	r3, [fp, #-8]
     b38:	e2832001 	add	r2, r3, #1
     b3c:	e50b2008 	str	r2, [fp, #-8]
     b40:	e59f20a0 	ldr	r2, [pc, #160]	@ be8 <printint+0x134>
     b44:	e7d22001 	ldrb	r2, [r2, r1]
     b48:	e2433004 	sub	r3, r3, #4
     b4c:	e083300b 	add	r3, r3, fp
     b50:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b54:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     b58:	e1a01003 	mov	r1, r3
     b5c:	e51b0010 	ldr	r0, [fp, #-16]
     b60:	eb00018a 	bl	1190 <__udivsi3>
     b64:	e1a03000 	mov	r3, r0
     b68:	e50b3010 	str	r3, [fp, #-16]
     b6c:	e51b3010 	ldr	r3, [fp, #-16]
     b70:	e3530000 	cmp	r3, #0
     b74:	1affffe7 	bne	b18 <printint+0x64>
     b78:	e51b300c 	ldr	r3, [fp, #-12]
     b7c:	e3530000 	cmp	r3, #0
     b80:	0a00000e 	beq	bc0 <printint+0x10c>
     b84:	e51b3008 	ldr	r3, [fp, #-8]
     b88:	e2832001 	add	r2, r3, #1
     b8c:	e50b2008 	str	r2, [fp, #-8]
     b90:	e2433004 	sub	r3, r3, #4
     b94:	e083300b 	add	r3, r3, fp
     b98:	e3a0202d 	mov	r2, #45	@ 0x2d
     b9c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ba0:	ea000006 	b	bc0 <printint+0x10c>
     ba4:	e24b2020 	sub	r2, fp, #32
     ba8:	e51b3008 	ldr	r3, [fp, #-8]
     bac:	e0823003 	add	r3, r2, r3
     bb0:	e5d33000 	ldrb	r3, [r3]
     bb4:	e1a01003 	mov	r1, r3
     bb8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     bbc:	ebffffae 	bl	a7c <putc>
     bc0:	e51b3008 	ldr	r3, [fp, #-8]
     bc4:	e2433001 	sub	r3, r3, #1
     bc8:	e50b3008 	str	r3, [fp, #-8]
     bcc:	e51b3008 	ldr	r3, [fp, #-8]
     bd0:	e3530000 	cmp	r3, #0
     bd4:	aafffff2 	bge	ba4 <printint+0xf0>
     bd8:	e1a00000 	nop			@ (mov r0, r0)
     bdc:	e1a00000 	nop			@ (mov r0, r0)
     be0:	e24bd004 	sub	sp, fp, #4
     be4:	e8bd8800 	pop	{fp, pc}
     be8:	000012f0 	.word	0x000012f0

00000bec <printf>:
     bec:	e92d000e 	push	{r1, r2, r3}
     bf0:	e92d4800 	push	{fp, lr}
     bf4:	e28db004 	add	fp, sp, #4
     bf8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     bfc:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     c00:	e3a03000 	mov	r3, #0
     c04:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c08:	e28b3008 	add	r3, fp, #8
     c0c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c10:	e3a03000 	mov	r3, #0
     c14:	e50b3010 	str	r3, [fp, #-16]
     c18:	ea000074 	b	df0 <printf+0x204>
     c1c:	e59b2004 	ldr	r2, [fp, #4]
     c20:	e51b3010 	ldr	r3, [fp, #-16]
     c24:	e0823003 	add	r3, r2, r3
     c28:	e5d33000 	ldrb	r3, [r3]
     c2c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c34:	e3530000 	cmp	r3, #0
     c38:	1a00000b 	bne	c6c <printf+0x80>
     c3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c40:	e3530025 	cmp	r3, #37	@ 0x25
     c44:	1a000002 	bne	c54 <printf+0x68>
     c48:	e3a03025 	mov	r3, #37	@ 0x25
     c4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c50:	ea000063 	b	de4 <printf+0x1f8>
     c54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c58:	e6ef3073 	uxtb	r3, r3
     c5c:	e1a01003 	mov	r1, r3
     c60:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c64:	ebffff84 	bl	a7c <putc>
     c68:	ea00005d 	b	de4 <printf+0x1f8>
     c6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c70:	e3530025 	cmp	r3, #37	@ 0x25
     c74:	1a00005a 	bne	de4 <printf+0x1f8>
     c78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c7c:	e3530064 	cmp	r3, #100	@ 0x64
     c80:	1a00000a 	bne	cb0 <printf+0xc4>
     c84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c88:	e5933000 	ldr	r3, [r3]
     c8c:	e1a01003 	mov	r1, r3
     c90:	e3a03001 	mov	r3, #1
     c94:	e3a0200a 	mov	r2, #10
     c98:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c9c:	ebffff84 	bl	ab4 <printint>
     ca0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ca4:	e2833004 	add	r3, r3, #4
     ca8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cac:	ea00004a 	b	ddc <printf+0x1f0>
     cb0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cb4:	e3530078 	cmp	r3, #120	@ 0x78
     cb8:	0a000002 	beq	cc8 <printf+0xdc>
     cbc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cc0:	e3530070 	cmp	r3, #112	@ 0x70
     cc4:	1a00000a 	bne	cf4 <printf+0x108>
     cc8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ccc:	e5933000 	ldr	r3, [r3]
     cd0:	e1a01003 	mov	r1, r3
     cd4:	e3a03000 	mov	r3, #0
     cd8:	e3a02010 	mov	r2, #16
     cdc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ce0:	ebffff73 	bl	ab4 <printint>
     ce4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ce8:	e2833004 	add	r3, r3, #4
     cec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cf0:	ea000039 	b	ddc <printf+0x1f0>
     cf4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cf8:	e3530073 	cmp	r3, #115	@ 0x73
     cfc:	1a000018 	bne	d64 <printf+0x178>
     d00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d04:	e5933000 	ldr	r3, [r3]
     d08:	e50b300c 	str	r3, [fp, #-12]
     d0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d10:	e2833004 	add	r3, r3, #4
     d14:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d18:	e51b300c 	ldr	r3, [fp, #-12]
     d1c:	e3530000 	cmp	r3, #0
     d20:	1a00000a 	bne	d50 <printf+0x164>
     d24:	e59f30f4 	ldr	r3, [pc, #244]	@ e20 <printf+0x234>
     d28:	e50b300c 	str	r3, [fp, #-12]
     d2c:	ea000007 	b	d50 <printf+0x164>
     d30:	e51b300c 	ldr	r3, [fp, #-12]
     d34:	e5d33000 	ldrb	r3, [r3]
     d38:	e1a01003 	mov	r1, r3
     d3c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d40:	ebffff4d 	bl	a7c <putc>
     d44:	e51b300c 	ldr	r3, [fp, #-12]
     d48:	e2833001 	add	r3, r3, #1
     d4c:	e50b300c 	str	r3, [fp, #-12]
     d50:	e51b300c 	ldr	r3, [fp, #-12]
     d54:	e5d33000 	ldrb	r3, [r3]
     d58:	e3530000 	cmp	r3, #0
     d5c:	1afffff3 	bne	d30 <printf+0x144>
     d60:	ea00001d 	b	ddc <printf+0x1f0>
     d64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d68:	e3530063 	cmp	r3, #99	@ 0x63
     d6c:	1a000009 	bne	d98 <printf+0x1ac>
     d70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d74:	e5933000 	ldr	r3, [r3]
     d78:	e6ef3073 	uxtb	r3, r3
     d7c:	e1a01003 	mov	r1, r3
     d80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d84:	ebffff3c 	bl	a7c <putc>
     d88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d8c:	e2833004 	add	r3, r3, #4
     d90:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d94:	ea000010 	b	ddc <printf+0x1f0>
     d98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d9c:	e3530025 	cmp	r3, #37	@ 0x25
     da0:	1a000005 	bne	dbc <printf+0x1d0>
     da4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     da8:	e6ef3073 	uxtb	r3, r3
     dac:	e1a01003 	mov	r1, r3
     db0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     db4:	ebffff30 	bl	a7c <putc>
     db8:	ea000007 	b	ddc <printf+0x1f0>
     dbc:	e3a01025 	mov	r1, #37	@ 0x25
     dc0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dc4:	ebffff2c 	bl	a7c <putc>
     dc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dcc:	e6ef3073 	uxtb	r3, r3
     dd0:	e1a01003 	mov	r1, r3
     dd4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dd8:	ebffff27 	bl	a7c <putc>
     ddc:	e3a03000 	mov	r3, #0
     de0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     de4:	e51b3010 	ldr	r3, [fp, #-16]
     de8:	e2833001 	add	r3, r3, #1
     dec:	e50b3010 	str	r3, [fp, #-16]
     df0:	e59b2004 	ldr	r2, [fp, #4]
     df4:	e51b3010 	ldr	r3, [fp, #-16]
     df8:	e0823003 	add	r3, r2, r3
     dfc:	e5d33000 	ldrb	r3, [r3]
     e00:	e3530000 	cmp	r3, #0
     e04:	1affff84 	bne	c1c <printf+0x30>
     e08:	e1a00000 	nop			@ (mov r0, r0)
     e0c:	e1a00000 	nop			@ (mov r0, r0)
     e10:	e24bd004 	sub	sp, fp, #4
     e14:	e8bd4800 	pop	{fp, lr}
     e18:	e28dd00c 	add	sp, sp, #12
     e1c:	e12fff1e 	bx	lr
     e20:	000012e8 	.word	0x000012e8

00000e24 <free>:
     e24:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     e28:	e28db000 	add	fp, sp, #0
     e2c:	e24dd014 	sub	sp, sp, #20
     e30:	e50b0010 	str	r0, [fp, #-16]
     e34:	e51b3010 	ldr	r3, [fp, #-16]
     e38:	e2433008 	sub	r3, r3, #8
     e3c:	e50b300c 	str	r3, [fp, #-12]
     e40:	e59f3154 	ldr	r3, [pc, #340]	@ f9c <free+0x178>
     e44:	e5933000 	ldr	r3, [r3]
     e48:	e50b3008 	str	r3, [fp, #-8]
     e4c:	ea000010 	b	e94 <free+0x70>
     e50:	e51b3008 	ldr	r3, [fp, #-8]
     e54:	e5933000 	ldr	r3, [r3]
     e58:	e51b2008 	ldr	r2, [fp, #-8]
     e5c:	e1520003 	cmp	r2, r3
     e60:	3a000008 	bcc	e88 <free+0x64>
     e64:	e51b200c 	ldr	r2, [fp, #-12]
     e68:	e51b3008 	ldr	r3, [fp, #-8]
     e6c:	e1520003 	cmp	r2, r3
     e70:	8a000010 	bhi	eb8 <free+0x94>
     e74:	e51b3008 	ldr	r3, [fp, #-8]
     e78:	e5933000 	ldr	r3, [r3]
     e7c:	e51b200c 	ldr	r2, [fp, #-12]
     e80:	e1520003 	cmp	r2, r3
     e84:	3a00000b 	bcc	eb8 <free+0x94>
     e88:	e51b3008 	ldr	r3, [fp, #-8]
     e8c:	e5933000 	ldr	r3, [r3]
     e90:	e50b3008 	str	r3, [fp, #-8]
     e94:	e51b200c 	ldr	r2, [fp, #-12]
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e1520003 	cmp	r2, r3
     ea0:	9affffea 	bls	e50 <free+0x2c>
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e5933000 	ldr	r3, [r3]
     eac:	e51b200c 	ldr	r2, [fp, #-12]
     eb0:	e1520003 	cmp	r2, r3
     eb4:	2affffe5 	bcs	e50 <free+0x2c>
     eb8:	e51b300c 	ldr	r3, [fp, #-12]
     ebc:	e5933004 	ldr	r3, [r3, #4]
     ec0:	e1a03183 	lsl	r3, r3, #3
     ec4:	e51b200c 	ldr	r2, [fp, #-12]
     ec8:	e0822003 	add	r2, r2, r3
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e5933000 	ldr	r3, [r3]
     ed4:	e1520003 	cmp	r2, r3
     ed8:	1a00000d 	bne	f14 <free+0xf0>
     edc:	e51b300c 	ldr	r3, [fp, #-12]
     ee0:	e5932004 	ldr	r2, [r3, #4]
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e5933000 	ldr	r3, [r3]
     eec:	e5933004 	ldr	r3, [r3, #4]
     ef0:	e0822003 	add	r2, r2, r3
     ef4:	e51b300c 	ldr	r3, [fp, #-12]
     ef8:	e5832004 	str	r2, [r3, #4]
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e5933000 	ldr	r3, [r3]
     f04:	e5932000 	ldr	r2, [r3]
     f08:	e51b300c 	ldr	r3, [fp, #-12]
     f0c:	e5832000 	str	r2, [r3]
     f10:	ea000003 	b	f24 <free+0x100>
     f14:	e51b3008 	ldr	r3, [fp, #-8]
     f18:	e5932000 	ldr	r2, [r3]
     f1c:	e51b300c 	ldr	r3, [fp, #-12]
     f20:	e5832000 	str	r2, [r3]
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e5933004 	ldr	r3, [r3, #4]
     f2c:	e1a03183 	lsl	r3, r3, #3
     f30:	e51b2008 	ldr	r2, [fp, #-8]
     f34:	e0823003 	add	r3, r2, r3
     f38:	e51b200c 	ldr	r2, [fp, #-12]
     f3c:	e1520003 	cmp	r2, r3
     f40:	1a00000b 	bne	f74 <free+0x150>
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e5932004 	ldr	r2, [r3, #4]
     f4c:	e51b300c 	ldr	r3, [fp, #-12]
     f50:	e5933004 	ldr	r3, [r3, #4]
     f54:	e0822003 	add	r2, r2, r3
     f58:	e51b3008 	ldr	r3, [fp, #-8]
     f5c:	e5832004 	str	r2, [r3, #4]
     f60:	e51b300c 	ldr	r3, [fp, #-12]
     f64:	e5932000 	ldr	r2, [r3]
     f68:	e51b3008 	ldr	r3, [fp, #-8]
     f6c:	e5832000 	str	r2, [r3]
     f70:	ea000002 	b	f80 <free+0x15c>
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e51b200c 	ldr	r2, [fp, #-12]
     f7c:	e5832000 	str	r2, [r3]
     f80:	e59f2014 	ldr	r2, [pc, #20]	@ f9c <free+0x178>
     f84:	e51b3008 	ldr	r3, [fp, #-8]
     f88:	e5823000 	str	r3, [r2]
     f8c:	e1a00000 	nop			@ (mov r0, r0)
     f90:	e28bd000 	add	sp, fp, #0
     f94:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     f98:	e12fff1e 	bx	lr
     f9c:	0000150c 	.word	0x0000150c

00000fa0 <morecore>:
     fa0:	e92d4800 	push	{fp, lr}
     fa4:	e28db004 	add	fp, sp, #4
     fa8:	e24dd010 	sub	sp, sp, #16
     fac:	e50b0010 	str	r0, [fp, #-16]
     fb0:	e51b3010 	ldr	r3, [fp, #-16]
     fb4:	e3530a01 	cmp	r3, #4096	@ 0x1000
     fb8:	2a000001 	bcs	fc4 <morecore+0x24>
     fbc:	e3a03a01 	mov	r3, #4096	@ 0x1000
     fc0:	e50b3010 	str	r3, [fp, #-16]
     fc4:	e51b3010 	ldr	r3, [fp, #-16]
     fc8:	e1a03183 	lsl	r3, r3, #3
     fcc:	e1a00003 	mov	r0, r3
     fd0:	ebfffe73 	bl	9a4 <sbrk>
     fd4:	e50b0008 	str	r0, [fp, #-8]
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e3730001 	cmn	r3, #1
     fe0:	1a000001 	bne	fec <morecore+0x4c>
     fe4:	e3a03000 	mov	r3, #0
     fe8:	ea00000a 	b	1018 <morecore+0x78>
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e50b300c 	str	r3, [fp, #-12]
     ff4:	e51b300c 	ldr	r3, [fp, #-12]
     ff8:	e51b2010 	ldr	r2, [fp, #-16]
     ffc:	e5832004 	str	r2, [r3, #4]
    1000:	e51b300c 	ldr	r3, [fp, #-12]
    1004:	e2833008 	add	r3, r3, #8
    1008:	e1a00003 	mov	r0, r3
    100c:	ebffff84 	bl	e24 <free>
    1010:	e59f300c 	ldr	r3, [pc, #12]	@ 1024 <morecore+0x84>
    1014:	e5933000 	ldr	r3, [r3]
    1018:	e1a00003 	mov	r0, r3
    101c:	e24bd004 	sub	sp, fp, #4
    1020:	e8bd8800 	pop	{fp, pc}
    1024:	0000150c 	.word	0x0000150c

00001028 <malloc>:
    1028:	e92d4800 	push	{fp, lr}
    102c:	e28db004 	add	fp, sp, #4
    1030:	e24dd018 	sub	sp, sp, #24
    1034:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1038:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    103c:	e2833007 	add	r3, r3, #7
    1040:	e1a031a3 	lsr	r3, r3, #3
    1044:	e2833001 	add	r3, r3, #1
    1048:	e50b3010 	str	r3, [fp, #-16]
    104c:	e59f3134 	ldr	r3, [pc, #308]	@ 1188 <malloc+0x160>
    1050:	e5933000 	ldr	r3, [r3]
    1054:	e50b300c 	str	r3, [fp, #-12]
    1058:	e51b300c 	ldr	r3, [fp, #-12]
    105c:	e3530000 	cmp	r3, #0
    1060:	1a00000b 	bne	1094 <malloc+0x6c>
    1064:	e59f3120 	ldr	r3, [pc, #288]	@ 118c <malloc+0x164>
    1068:	e50b300c 	str	r3, [fp, #-12]
    106c:	e59f2114 	ldr	r2, [pc, #276]	@ 1188 <malloc+0x160>
    1070:	e51b300c 	ldr	r3, [fp, #-12]
    1074:	e5823000 	str	r3, [r2]
    1078:	e59f3108 	ldr	r3, [pc, #264]	@ 1188 <malloc+0x160>
    107c:	e5933000 	ldr	r3, [r3]
    1080:	e59f2104 	ldr	r2, [pc, #260]	@ 118c <malloc+0x164>
    1084:	e5823000 	str	r3, [r2]
    1088:	e59f30fc 	ldr	r3, [pc, #252]	@ 118c <malloc+0x164>
    108c:	e3a02000 	mov	r2, #0
    1090:	e5832004 	str	r2, [r3, #4]
    1094:	e51b300c 	ldr	r3, [fp, #-12]
    1098:	e5933000 	ldr	r3, [r3]
    109c:	e50b3008 	str	r3, [fp, #-8]
    10a0:	e51b3008 	ldr	r3, [fp, #-8]
    10a4:	e5933004 	ldr	r3, [r3, #4]
    10a8:	e51b2010 	ldr	r2, [fp, #-16]
    10ac:	e1520003 	cmp	r2, r3
    10b0:	8a00001e 	bhi	1130 <malloc+0x108>
    10b4:	e51b3008 	ldr	r3, [fp, #-8]
    10b8:	e5933004 	ldr	r3, [r3, #4]
    10bc:	e51b2010 	ldr	r2, [fp, #-16]
    10c0:	e1520003 	cmp	r2, r3
    10c4:	1a000004 	bne	10dc <malloc+0xb4>
    10c8:	e51b3008 	ldr	r3, [fp, #-8]
    10cc:	e5932000 	ldr	r2, [r3]
    10d0:	e51b300c 	ldr	r3, [fp, #-12]
    10d4:	e5832000 	str	r2, [r3]
    10d8:	ea00000e 	b	1118 <malloc+0xf0>
    10dc:	e51b3008 	ldr	r3, [fp, #-8]
    10e0:	e5932004 	ldr	r2, [r3, #4]
    10e4:	e51b3010 	ldr	r3, [fp, #-16]
    10e8:	e0422003 	sub	r2, r2, r3
    10ec:	e51b3008 	ldr	r3, [fp, #-8]
    10f0:	e5832004 	str	r2, [r3, #4]
    10f4:	e51b3008 	ldr	r3, [fp, #-8]
    10f8:	e5933004 	ldr	r3, [r3, #4]
    10fc:	e1a03183 	lsl	r3, r3, #3
    1100:	e51b2008 	ldr	r2, [fp, #-8]
    1104:	e0823003 	add	r3, r2, r3
    1108:	e50b3008 	str	r3, [fp, #-8]
    110c:	e51b3008 	ldr	r3, [fp, #-8]
    1110:	e51b2010 	ldr	r2, [fp, #-16]
    1114:	e5832004 	str	r2, [r3, #4]
    1118:	e59f2068 	ldr	r2, [pc, #104]	@ 1188 <malloc+0x160>
    111c:	e51b300c 	ldr	r3, [fp, #-12]
    1120:	e5823000 	str	r3, [r2]
    1124:	e51b3008 	ldr	r3, [fp, #-8]
    1128:	e2833008 	add	r3, r3, #8
    112c:	ea000012 	b	117c <malloc+0x154>
    1130:	e59f3050 	ldr	r3, [pc, #80]	@ 1188 <malloc+0x160>
    1134:	e5933000 	ldr	r3, [r3]
    1138:	e51b2008 	ldr	r2, [fp, #-8]
    113c:	e1520003 	cmp	r2, r3
    1140:	1a000007 	bne	1164 <malloc+0x13c>
    1144:	e51b0010 	ldr	r0, [fp, #-16]
    1148:	ebffff94 	bl	fa0 <morecore>
    114c:	e50b0008 	str	r0, [fp, #-8]
    1150:	e51b3008 	ldr	r3, [fp, #-8]
    1154:	e3530000 	cmp	r3, #0
    1158:	1a000001 	bne	1164 <malloc+0x13c>
    115c:	e3a03000 	mov	r3, #0
    1160:	ea000005 	b	117c <malloc+0x154>
    1164:	e51b3008 	ldr	r3, [fp, #-8]
    1168:	e50b300c 	str	r3, [fp, #-12]
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e5933000 	ldr	r3, [r3]
    1174:	e50b3008 	str	r3, [fp, #-8]
    1178:	eaffffc8 	b	10a0 <malloc+0x78>
    117c:	e1a00003 	mov	r0, r3
    1180:	e24bd004 	sub	sp, fp, #4
    1184:	e8bd8800 	pop	{fp, pc}
    1188:	0000150c 	.word	0x0000150c
    118c:	00001504 	.word	0x00001504

00001190 <__udivsi3>:
    1190:	e2512001 	subs	r2, r1, #1
    1194:	012fff1e 	bxeq	lr
    1198:	3a000036 	bcc	1278 <__udivsi3+0xe8>
    119c:	e1500001 	cmp	r0, r1
    11a0:	9a000022 	bls	1230 <__udivsi3+0xa0>
    11a4:	e1110002 	tst	r1, r2
    11a8:	0a000023 	beq	123c <__udivsi3+0xac>
    11ac:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    11b0:	01a01181 	lsleq	r1, r1, #3
    11b4:	03a03008 	moveq	r3, #8
    11b8:	13a03001 	movne	r3, #1
    11bc:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    11c0:	31510000 	cmpcc	r1, r0
    11c4:	31a01201 	lslcc	r1, r1, #4
    11c8:	31a03203 	lslcc	r3, r3, #4
    11cc:	3afffffa 	bcc	11bc <__udivsi3+0x2c>
    11d0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    11d4:	31510000 	cmpcc	r1, r0
    11d8:	31a01081 	lslcc	r1, r1, #1
    11dc:	31a03083 	lslcc	r3, r3, #1
    11e0:	3afffffa 	bcc	11d0 <__udivsi3+0x40>
    11e4:	e3a02000 	mov	r2, #0
    11e8:	e1500001 	cmp	r0, r1
    11ec:	20400001 	subcs	r0, r0, r1
    11f0:	21822003 	orrcs	r2, r2, r3
    11f4:	e15000a1 	cmp	r0, r1, lsr #1
    11f8:	204000a1 	subcs	r0, r0, r1, lsr #1
    11fc:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1200:	e1500121 	cmp	r0, r1, lsr #2
    1204:	20400121 	subcs	r0, r0, r1, lsr #2
    1208:	21822123 	orrcs	r2, r2, r3, lsr #2
    120c:	e15001a1 	cmp	r0, r1, lsr #3
    1210:	204001a1 	subcs	r0, r0, r1, lsr #3
    1214:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1218:	e3500000 	cmp	r0, #0
    121c:	11b03223 	lsrsne	r3, r3, #4
    1220:	11a01221 	lsrne	r1, r1, #4
    1224:	1affffef 	bne	11e8 <__udivsi3+0x58>
    1228:	e1a00002 	mov	r0, r2
    122c:	e12fff1e 	bx	lr
    1230:	03a00001 	moveq	r0, #1
    1234:	13a00000 	movne	r0, #0
    1238:	e12fff1e 	bx	lr
    123c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1240:	21a01821 	lsrcs	r1, r1, #16
    1244:	23a02010 	movcs	r2, #16
    1248:	33a02000 	movcc	r2, #0
    124c:	e3510c01 	cmp	r1, #256	@ 0x100
    1250:	21a01421 	lsrcs	r1, r1, #8
    1254:	22822008 	addcs	r2, r2, #8
    1258:	e3510010 	cmp	r1, #16
    125c:	21a01221 	lsrcs	r1, r1, #4
    1260:	22822004 	addcs	r2, r2, #4
    1264:	e3510004 	cmp	r1, #4
    1268:	82822003 	addhi	r2, r2, #3
    126c:	908220a1 	addls	r2, r2, r1, lsr #1
    1270:	e1a00230 	lsr	r0, r0, r2
    1274:	e12fff1e 	bx	lr
    1278:	e3500000 	cmp	r0, #0
    127c:	13e00000 	mvnne	r0, #0
    1280:	ea000007 	b	12a4 <__aeabi_idiv0>

00001284 <__aeabi_uidivmod>:
    1284:	e3510000 	cmp	r1, #0
    1288:	0afffffa 	beq	1278 <__udivsi3+0xe8>
    128c:	e92d4003 	push	{r0, r1, lr}
    1290:	ebffffbe 	bl	1190 <__udivsi3>
    1294:	e8bd4006 	pop	{r1, r2, lr}
    1298:	e0030092 	mul	r3, r2, r0
    129c:	e0411003 	sub	r1, r1, r3
    12a0:	e12fff1e 	bx	lr

000012a4 <__aeabi_idiv0>:
    12a4:	e12fff1e 	bx	lr
