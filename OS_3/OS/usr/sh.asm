
_sh:     file format elf32-littlearm


Disassembly of section .text:

00000000 <runcmd>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd028 	sub	sp, sp, #40	@ 0x28
       c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
      10:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      14:	e3530000 	cmp	r3, #0
      18:	1a000000 	bne	20 <runcmd+0x20>
      1c:	eb00054f 	bl	1560 <exit>
      20:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      24:	e5933000 	ldr	r3, [r3]
      28:	e2433001 	sub	r3, r3, #1
      2c:	e3530004 	cmp	r3, #4
      30:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
      34:	ea000004 	b	4c <runcmd+0x4c>
      38:	00000054 	.word	0x00000054
      3c:	000000a8 	.word	0x000000a8
      40:	00000150 	.word	0x00000150
      44:	00000114 	.word	0x00000114
      48:	00000234 	.word	0x00000234
      4c:	e59f0210 	ldr	r0, [pc, #528]	@ 264 <runcmd+0x264>
      50:	eb0000ea 	bl	400 <panic>
      54:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      58:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      60:	e5933004 	ldr	r3, [r3, #4]
      64:	e3530000 	cmp	r3, #0
      68:	1a000000 	bne	70 <runcmd+0x70>
      6c:	eb00053b 	bl	1560 <exit>
      70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      74:	e5932004 	ldr	r2, [r3, #4]
      78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      7c:	e2833004 	add	r3, r3, #4
      80:	e1a01003 	mov	r1, r3
      84:	e1a00002 	mov	r0, r2
      88:	eb000573 	bl	165c <exec>
      8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      90:	e5933004 	ldr	r3, [r3, #4]
      94:	e1a02003 	mov	r2, r3
      98:	e59f11c8 	ldr	r1, [pc, #456]	@ 268 <runcmd+0x268>
      9c:	e3a00002 	mov	r0, #2
      a0:	eb000659 	bl	1a0c <printf>
      a4:	ea00006d 	b	260 <runcmd+0x260>
      a8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      b4:	e5933014 	ldr	r3, [r3, #20]
      b8:	e1a00003 	mov	r0, r3
      bc:	eb000554 	bl	1614 <close>
      c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      c4:	e5932008 	ldr	r2, [r3, #8]
      c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      cc:	e5933010 	ldr	r3, [r3, #16]
      d0:	e1a01003 	mov	r1, r3
      d4:	e1a00002 	mov	r0, r2
      d8:	eb000568 	bl	1680 <open>
      dc:	e1a03000 	mov	r3, r0
      e0:	e3530000 	cmp	r3, #0
      e4:	aa000006 	bge	104 <runcmd+0x104>
      e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      ec:	e5933008 	ldr	r3, [r3, #8]
      f0:	e1a02003 	mov	r2, r3
      f4:	e59f1170 	ldr	r1, [pc, #368]	@ 26c <runcmd+0x26c>
      f8:	e3a00002 	mov	r0, #2
      fc:	eb000642 	bl	1a0c <printf>
     100:	eb000516 	bl	1560 <exit>
     104:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     108:	e5933004 	ldr	r3, [r3, #4]
     10c:	e1a00003 	mov	r0, r3
     110:	ebffffba 	bl	0 <runcmd>
     114:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     118:	e50b300c 	str	r3, [fp, #-12]
     11c:	eb0000c1 	bl	428 <fork1>
     120:	e1a03000 	mov	r3, r0
     124:	e3530000 	cmp	r3, #0
     128:	1a000003 	bne	13c <runcmd+0x13c>
     12c:	e51b300c 	ldr	r3, [fp, #-12]
     130:	e5933004 	ldr	r3, [r3, #4]
     134:	e1a00003 	mov	r0, r3
     138:	ebffffb0 	bl	0 <runcmd>
     13c:	eb000510 	bl	1584 <wait>
     140:	e51b300c 	ldr	r3, [fp, #-12]
     144:	e5933008 	ldr	r3, [r3, #8]
     148:	e1a00003 	mov	r0, r3
     14c:	ebffffab 	bl	0 <runcmd>
     150:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     154:	e50b3010 	str	r3, [fp, #-16]
     158:	e24b3020 	sub	r3, fp, #32
     15c:	e1a00003 	mov	r0, r3
     160:	eb000510 	bl	15a8 <pipe>
     164:	e1a03000 	mov	r3, r0
     168:	e3530000 	cmp	r3, #0
     16c:	aa000001 	bge	178 <runcmd+0x178>
     170:	e59f00f8 	ldr	r0, [pc, #248]	@ 270 <runcmd+0x270>
     174:	eb0000a1 	bl	400 <panic>
     178:	eb0000aa 	bl	428 <fork1>
     17c:	e1a03000 	mov	r3, r0
     180:	e3530000 	cmp	r3, #0
     184:	1a00000e 	bne	1c4 <runcmd+0x1c4>
     188:	e3a00001 	mov	r0, #1
     18c:	eb000520 	bl	1614 <close>
     190:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     194:	e1a00003 	mov	r0, r3
     198:	eb000577 	bl	177c <dup>
     19c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1a0:	e1a00003 	mov	r0, r3
     1a4:	eb00051a 	bl	1614 <close>
     1a8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1ac:	e1a00003 	mov	r0, r3
     1b0:	eb000517 	bl	1614 <close>
     1b4:	e51b3010 	ldr	r3, [fp, #-16]
     1b8:	e5933004 	ldr	r3, [r3, #4]
     1bc:	e1a00003 	mov	r0, r3
     1c0:	ebffff8e 	bl	0 <runcmd>
     1c4:	eb000097 	bl	428 <fork1>
     1c8:	e1a03000 	mov	r3, r0
     1cc:	e3530000 	cmp	r3, #0
     1d0:	1a00000e 	bne	210 <runcmd+0x210>
     1d4:	e3a00000 	mov	r0, #0
     1d8:	eb00050d 	bl	1614 <close>
     1dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1e0:	e1a00003 	mov	r0, r3
     1e4:	eb000564 	bl	177c <dup>
     1e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1ec:	e1a00003 	mov	r0, r3
     1f0:	eb000507 	bl	1614 <close>
     1f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1f8:	e1a00003 	mov	r0, r3
     1fc:	eb000504 	bl	1614 <close>
     200:	e51b3010 	ldr	r3, [fp, #-16]
     204:	e5933008 	ldr	r3, [r3, #8]
     208:	e1a00003 	mov	r0, r3
     20c:	ebffff7b 	bl	0 <runcmd>
     210:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     214:	e1a00003 	mov	r0, r3
     218:	eb0004fd 	bl	1614 <close>
     21c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     220:	e1a00003 	mov	r0, r3
     224:	eb0004fa 	bl	1614 <close>
     228:	eb0004d5 	bl	1584 <wait>
     22c:	eb0004d4 	bl	1584 <wait>
     230:	ea00000a 	b	260 <runcmd+0x260>
     234:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	eb000079 	bl	428 <fork1>
     240:	e1a03000 	mov	r3, r0
     244:	e3530000 	cmp	r3, #0
     248:	1a000003 	bne	25c <runcmd+0x25c>
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e5933004 	ldr	r3, [r3, #4]
     254:	e1a00003 	mov	r0, r3
     258:	ebffff68 	bl	0 <runcmd>
     25c:	e1a00000 	nop			@ (mov r0, r0)
     260:	eb0004be 	bl	1560 <exit>
     264:	000020c8 	.word	0x000020c8
     268:	000020d0 	.word	0x000020d0
     26c:	000020e0 	.word	0x000020e0
     270:	000020f0 	.word	0x000020f0

00000274 <getcmd>:
     274:	e92d4800 	push	{fp, lr}
     278:	e28db004 	add	fp, sp, #4
     27c:	e24dd008 	sub	sp, sp, #8
     280:	e50b0008 	str	r0, [fp, #-8]
     284:	e50b100c 	str	r1, [fp, #-12]
     288:	e59f104c 	ldr	r1, [pc, #76]	@ 2dc <getcmd+0x68>
     28c:	e3a00002 	mov	r0, #2
     290:	eb0005dd 	bl	1a0c <printf>
     294:	e51b300c 	ldr	r3, [fp, #-12]
     298:	e1a02003 	mov	r2, r3
     29c:	e3a01000 	mov	r1, #0
     2a0:	e51b0008 	ldr	r0, [fp, #-8]
     2a4:	eb0003bb 	bl	1198 <memset>
     2a8:	e51b100c 	ldr	r1, [fp, #-12]
     2ac:	e51b0008 	ldr	r0, [fp, #-8]
     2b0:	eb00041c 	bl	1328 <gets>
     2b4:	e51b3008 	ldr	r3, [fp, #-8]
     2b8:	e5d33000 	ldrb	r3, [r3]
     2bc:	e3530000 	cmp	r3, #0
     2c0:	1a000001 	bne	2cc <getcmd+0x58>
     2c4:	e3e03000 	mvn	r3, #0
     2c8:	ea000000 	b	2d0 <getcmd+0x5c>
     2cc:	e3a03000 	mov	r3, #0
     2d0:	e1a00003 	mov	r0, r3
     2d4:	e24bd004 	sub	sp, fp, #4
     2d8:	e8bd8800 	pop	{fp, pc}
     2dc:	000020f8 	.word	0x000020f8

000002e0 <main>:
     2e0:	e92d4800 	push	{fp, lr}
     2e4:	e28db004 	add	fp, sp, #4
     2e8:	e24dd008 	sub	sp, sp, #8
     2ec:	ea000005 	b	308 <main+0x28>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e3530002 	cmp	r3, #2
     2f8:	da000002 	ble	308 <main+0x28>
     2fc:	e51b0008 	ldr	r0, [fp, #-8]
     300:	eb0004c3 	bl	1614 <close>
     304:	ea000006 	b	324 <main+0x44>
     308:	e3a01002 	mov	r1, #2
     30c:	e59f00dc 	ldr	r0, [pc, #220]	@ 3f0 <main+0x110>
     310:	eb0004da 	bl	1680 <open>
     314:	e50b0008 	str	r0, [fp, #-8]
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	e3530000 	cmp	r3, #0
     320:	aafffff2 	bge	2f0 <main+0x10>
     324:	ea00002a 	b	3d4 <main+0xf4>
     328:	e59f30c4 	ldr	r3, [pc, #196]	@ 3f4 <main+0x114>
     32c:	e5d33000 	ldrb	r3, [r3]
     330:	e3530063 	cmp	r3, #99	@ 0x63
     334:	1a00001a 	bne	3a4 <main+0xc4>
     338:	e59f30b4 	ldr	r3, [pc, #180]	@ 3f4 <main+0x114>
     33c:	e5d33001 	ldrb	r3, [r3, #1]
     340:	e3530064 	cmp	r3, #100	@ 0x64
     344:	1a000016 	bne	3a4 <main+0xc4>
     348:	e59f30a4 	ldr	r3, [pc, #164]	@ 3f4 <main+0x114>
     34c:	e5d33002 	ldrb	r3, [r3, #2]
     350:	e3530020 	cmp	r3, #32
     354:	1a000012 	bne	3a4 <main+0xc4>
     358:	e59f0094 	ldr	r0, [pc, #148]	@ 3f4 <main+0x114>
     35c:	eb000378 	bl	1144 <strlen>
     360:	e1a03000 	mov	r3, r0
     364:	e2433001 	sub	r3, r3, #1
     368:	e59f2084 	ldr	r2, [pc, #132]	@ 3f4 <main+0x114>
     36c:	e3a01000 	mov	r1, #0
     370:	e7c21003 	strb	r1, [r2, r3]
     374:	e59f307c 	ldr	r3, [pc, #124]	@ 3f8 <main+0x118>
     378:	e1a00003 	mov	r0, r3
     37c:	eb0004f5 	bl	1758 <chdir>
     380:	e1a03000 	mov	r3, r0
     384:	e3530000 	cmp	r3, #0
     388:	aa000010 	bge	3d0 <main+0xf0>
     38c:	e59f3064 	ldr	r3, [pc, #100]	@ 3f8 <main+0x118>
     390:	e1a02003 	mov	r2, r3
     394:	e59f1060 	ldr	r1, [pc, #96]	@ 3fc <main+0x11c>
     398:	e3a00002 	mov	r0, #2
     39c:	eb00059a 	bl	1a0c <printf>
     3a0:	ea00000a 	b	3d0 <main+0xf0>
     3a4:	eb00001f 	bl	428 <fork1>
     3a8:	e1a03000 	mov	r3, r0
     3ac:	e3530000 	cmp	r3, #0
     3b0:	1a000004 	bne	3c8 <main+0xe8>
     3b4:	e59f0038 	ldr	r0, [pc, #56]	@ 3f4 <main+0x114>
     3b8:	eb000172 	bl	988 <parsecmd>
     3bc:	e1a03000 	mov	r3, r0
     3c0:	e1a00003 	mov	r0, r3
     3c4:	ebffff0d 	bl	0 <runcmd>
     3c8:	eb00046d 	bl	1584 <wait>
     3cc:	ea000000 	b	3d4 <main+0xf4>
     3d0:	e1a00000 	nop			@ (mov r0, r0)
     3d4:	e3a01064 	mov	r1, #100	@ 0x64
     3d8:	e59f0014 	ldr	r0, [pc, #20]	@ 3f4 <main+0x114>
     3dc:	ebffffa4 	bl	274 <getcmd>
     3e0:	e1a03000 	mov	r3, r0
     3e4:	e3530000 	cmp	r3, #0
     3e8:	aaffffce 	bge	328 <main+0x48>
     3ec:	eb00045b 	bl	1560 <exit>
     3f0:	000020fc 	.word	0x000020fc
     3f4:	000021d8 	.word	0x000021d8
     3f8:	000021db 	.word	0x000021db
     3fc:	00002104 	.word	0x00002104

00000400 <panic>:
     400:	e92d4800 	push	{fp, lr}
     404:	e28db004 	add	fp, sp, #4
     408:	e24dd008 	sub	sp, sp, #8
     40c:	e50b0008 	str	r0, [fp, #-8]
     410:	e51b2008 	ldr	r2, [fp, #-8]
     414:	e59f1008 	ldr	r1, [pc, #8]	@ 424 <panic+0x24>
     418:	e3a00002 	mov	r0, #2
     41c:	eb00057a 	bl	1a0c <printf>
     420:	eb00044e 	bl	1560 <exit>
     424:	00002114 	.word	0x00002114

00000428 <fork1>:
     428:	e92d4800 	push	{fp, lr}
     42c:	e28db004 	add	fp, sp, #4
     430:	e24dd008 	sub	sp, sp, #8
     434:	eb000440 	bl	153c <fork>
     438:	e50b0008 	str	r0, [fp, #-8]
     43c:	e51b3008 	ldr	r3, [fp, #-8]
     440:	e3730001 	cmn	r3, #1
     444:	1a000001 	bne	450 <fork1+0x28>
     448:	e59f0010 	ldr	r0, [pc, #16]	@ 460 <fork1+0x38>
     44c:	ebffffeb 	bl	400 <panic>
     450:	e51b3008 	ldr	r3, [fp, #-8]
     454:	e1a00003 	mov	r0, r3
     458:	e24bd004 	sub	sp, fp, #4
     45c:	e8bd8800 	pop	{fp, pc}
     460:	00002118 	.word	0x00002118

00000464 <execcmd>:
     464:	e92d4800 	push	{fp, lr}
     468:	e28db004 	add	fp, sp, #4
     46c:	e24dd008 	sub	sp, sp, #8
     470:	e3a00054 	mov	r0, #84	@ 0x54
     474:	eb000673 	bl	1e48 <malloc>
     478:	e50b0008 	str	r0, [fp, #-8]
     47c:	e3a02054 	mov	r2, #84	@ 0x54
     480:	e3a01000 	mov	r1, #0
     484:	e51b0008 	ldr	r0, [fp, #-8]
     488:	eb000342 	bl	1198 <memset>
     48c:	e51b3008 	ldr	r3, [fp, #-8]
     490:	e3a02001 	mov	r2, #1
     494:	e5832000 	str	r2, [r3]
     498:	e51b3008 	ldr	r3, [fp, #-8]
     49c:	e1a00003 	mov	r0, r3
     4a0:	e24bd004 	sub	sp, fp, #4
     4a4:	e8bd8800 	pop	{fp, pc}

000004a8 <redircmd>:
     4a8:	e92d4800 	push	{fp, lr}
     4ac:	e28db004 	add	fp, sp, #4
     4b0:	e24dd018 	sub	sp, sp, #24
     4b4:	e50b0010 	str	r0, [fp, #-16]
     4b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4bc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4c0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     4c4:	e3a00018 	mov	r0, #24
     4c8:	eb00065e 	bl	1e48 <malloc>
     4cc:	e50b0008 	str	r0, [fp, #-8]
     4d0:	e3a02018 	mov	r2, #24
     4d4:	e3a01000 	mov	r1, #0
     4d8:	e51b0008 	ldr	r0, [fp, #-8]
     4dc:	eb00032d 	bl	1198 <memset>
     4e0:	e51b3008 	ldr	r3, [fp, #-8]
     4e4:	e3a02002 	mov	r2, #2
     4e8:	e5832000 	str	r2, [r3]
     4ec:	e51b3008 	ldr	r3, [fp, #-8]
     4f0:	e51b2010 	ldr	r2, [fp, #-16]
     4f4:	e5832004 	str	r2, [r3, #4]
     4f8:	e51b3008 	ldr	r3, [fp, #-8]
     4fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     500:	e5832008 	str	r2, [r3, #8]
     504:	e51b3008 	ldr	r3, [fp, #-8]
     508:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     50c:	e583200c 	str	r2, [r3, #12]
     510:	e51b3008 	ldr	r3, [fp, #-8]
     514:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     518:	e5832010 	str	r2, [r3, #16]
     51c:	e51b3008 	ldr	r3, [fp, #-8]
     520:	e59b2004 	ldr	r2, [fp, #4]
     524:	e5832014 	str	r2, [r3, #20]
     528:	e51b3008 	ldr	r3, [fp, #-8]
     52c:	e1a00003 	mov	r0, r3
     530:	e24bd004 	sub	sp, fp, #4
     534:	e8bd8800 	pop	{fp, pc}

00000538 <pipecmd>:
     538:	e92d4800 	push	{fp, lr}
     53c:	e28db004 	add	fp, sp, #4
     540:	e24dd010 	sub	sp, sp, #16
     544:	e50b0010 	str	r0, [fp, #-16]
     548:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     54c:	e3a0000c 	mov	r0, #12
     550:	eb00063c 	bl	1e48 <malloc>
     554:	e50b0008 	str	r0, [fp, #-8]
     558:	e3a0200c 	mov	r2, #12
     55c:	e3a01000 	mov	r1, #0
     560:	e51b0008 	ldr	r0, [fp, #-8]
     564:	eb00030b 	bl	1198 <memset>
     568:	e51b3008 	ldr	r3, [fp, #-8]
     56c:	e3a02003 	mov	r2, #3
     570:	e5832000 	str	r2, [r3]
     574:	e51b3008 	ldr	r3, [fp, #-8]
     578:	e51b2010 	ldr	r2, [fp, #-16]
     57c:	e5832004 	str	r2, [r3, #4]
     580:	e51b3008 	ldr	r3, [fp, #-8]
     584:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     588:	e5832008 	str	r2, [r3, #8]
     58c:	e51b3008 	ldr	r3, [fp, #-8]
     590:	e1a00003 	mov	r0, r3
     594:	e24bd004 	sub	sp, fp, #4
     598:	e8bd8800 	pop	{fp, pc}

0000059c <listcmd>:
     59c:	e92d4800 	push	{fp, lr}
     5a0:	e28db004 	add	fp, sp, #4
     5a4:	e24dd010 	sub	sp, sp, #16
     5a8:	e50b0010 	str	r0, [fp, #-16]
     5ac:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5b0:	e3a0000c 	mov	r0, #12
     5b4:	eb000623 	bl	1e48 <malloc>
     5b8:	e50b0008 	str	r0, [fp, #-8]
     5bc:	e3a0200c 	mov	r2, #12
     5c0:	e3a01000 	mov	r1, #0
     5c4:	e51b0008 	ldr	r0, [fp, #-8]
     5c8:	eb0002f2 	bl	1198 <memset>
     5cc:	e51b3008 	ldr	r3, [fp, #-8]
     5d0:	e3a02004 	mov	r2, #4
     5d4:	e5832000 	str	r2, [r3]
     5d8:	e51b3008 	ldr	r3, [fp, #-8]
     5dc:	e51b2010 	ldr	r2, [fp, #-16]
     5e0:	e5832004 	str	r2, [r3, #4]
     5e4:	e51b3008 	ldr	r3, [fp, #-8]
     5e8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     5ec:	e5832008 	str	r2, [r3, #8]
     5f0:	e51b3008 	ldr	r3, [fp, #-8]
     5f4:	e1a00003 	mov	r0, r3
     5f8:	e24bd004 	sub	sp, fp, #4
     5fc:	e8bd8800 	pop	{fp, pc}

00000600 <backcmd>:
     600:	e92d4800 	push	{fp, lr}
     604:	e28db004 	add	fp, sp, #4
     608:	e24dd010 	sub	sp, sp, #16
     60c:	e50b0010 	str	r0, [fp, #-16]
     610:	e3a00008 	mov	r0, #8
     614:	eb00060b 	bl	1e48 <malloc>
     618:	e50b0008 	str	r0, [fp, #-8]
     61c:	e3a02008 	mov	r2, #8
     620:	e3a01000 	mov	r1, #0
     624:	e51b0008 	ldr	r0, [fp, #-8]
     628:	eb0002da 	bl	1198 <memset>
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	e3a02005 	mov	r2, #5
     634:	e5832000 	str	r2, [r3]
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e51b2010 	ldr	r2, [fp, #-16]
     640:	e5832004 	str	r2, [r3, #4]
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e1a00003 	mov	r0, r3
     64c:	e24bd004 	sub	sp, fp, #4
     650:	e8bd8800 	pop	{fp, pc}

00000654 <gettoken>:
     654:	e92d4800 	push	{fp, lr}
     658:	e28db004 	add	fp, sp, #4
     65c:	e24dd018 	sub	sp, sp, #24
     660:	e50b0010 	str	r0, [fp, #-16]
     664:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     668:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     66c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     670:	e51b3010 	ldr	r3, [fp, #-16]
     674:	e5933000 	ldr	r3, [r3]
     678:	e50b3008 	str	r3, [fp, #-8]
     67c:	ea000002 	b	68c <gettoken+0x38>
     680:	e51b3008 	ldr	r3, [fp, #-8]
     684:	e2833001 	add	r3, r3, #1
     688:	e50b3008 	str	r3, [fp, #-8]
     68c:	e51b2008 	ldr	r2, [fp, #-8]
     690:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     694:	e1520003 	cmp	r2, r3
     698:	2a000007 	bcs	6bc <gettoken+0x68>
     69c:	e51b3008 	ldr	r3, [fp, #-8]
     6a0:	e5d33000 	ldrb	r3, [r3]
     6a4:	e1a01003 	mov	r1, r3
     6a8:	e59f0214 	ldr	r0, [pc, #532]	@ 8c4 <gettoken+0x270>
     6ac:	eb000303 	bl	12c0 <strchr>
     6b0:	e1a03000 	mov	r3, r0
     6b4:	e3530000 	cmp	r3, #0
     6b8:	1afffff0 	bne	680 <gettoken+0x2c>
     6bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6c0:	e3530000 	cmp	r3, #0
     6c4:	0a000002 	beq	6d4 <gettoken+0x80>
     6c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6cc:	e51b2008 	ldr	r2, [fp, #-8]
     6d0:	e5832000 	str	r2, [r3]
     6d4:	e51b3008 	ldr	r3, [fp, #-8]
     6d8:	e5d33000 	ldrb	r3, [r3]
     6dc:	e50b300c 	str	r3, [fp, #-12]
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e5d33000 	ldrb	r3, [r3]
     6e8:	e353007c 	cmp	r3, #124	@ 0x7c
     6ec:	0a000026 	beq	78c <gettoken+0x138>
     6f0:	e353007c 	cmp	r3, #124	@ 0x7c
     6f4:	ca000035 	bgt	7d0 <gettoken+0x17c>
     6f8:	e3530000 	cmp	r3, #0
     6fc:	0a00004e 	beq	83c <gettoken+0x1e8>
     700:	e3530000 	cmp	r3, #0
     704:	ba000031 	blt	7d0 <gettoken+0x17c>
     708:	e353003e 	cmp	r3, #62	@ 0x3e
     70c:	ca00002f 	bgt	7d0 <gettoken+0x17c>
     710:	e3530026 	cmp	r3, #38	@ 0x26
     714:	ba00002d 	blt	7d0 <gettoken+0x17c>
     718:	e2433026 	sub	r3, r3, #38	@ 0x26
     71c:	e3530018 	cmp	r3, #24
     720:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
     724:	ea000029 	b	7d0 <gettoken+0x17c>
     728:	0000078c 	.word	0x0000078c
     72c:	000007d0 	.word	0x000007d0
     730:	0000078c 	.word	0x0000078c
     734:	0000078c 	.word	0x0000078c
     738:	000007d0 	.word	0x000007d0
     73c:	000007d0 	.word	0x000007d0
     740:	000007d0 	.word	0x000007d0
     744:	000007d0 	.word	0x000007d0
     748:	000007d0 	.word	0x000007d0
     74c:	000007d0 	.word	0x000007d0
     750:	000007d0 	.word	0x000007d0
     754:	000007d0 	.word	0x000007d0
     758:	000007d0 	.word	0x000007d0
     75c:	000007d0 	.word	0x000007d0
     760:	000007d0 	.word	0x000007d0
     764:	000007d0 	.word	0x000007d0
     768:	000007d0 	.word	0x000007d0
     76c:	000007d0 	.word	0x000007d0
     770:	000007d0 	.word	0x000007d0
     774:	000007d0 	.word	0x000007d0
     778:	000007d0 	.word	0x000007d0
     77c:	0000078c 	.word	0x0000078c
     780:	0000078c 	.word	0x0000078c
     784:	000007d0 	.word	0x000007d0
     788:	0000079c 	.word	0x0000079c
     78c:	e51b3008 	ldr	r3, [fp, #-8]
     790:	e2833001 	add	r3, r3, #1
     794:	e50b3008 	str	r3, [fp, #-8]
     798:	ea00002c 	b	850 <gettoken+0x1fc>
     79c:	e51b3008 	ldr	r3, [fp, #-8]
     7a0:	e2833001 	add	r3, r3, #1
     7a4:	e50b3008 	str	r3, [fp, #-8]
     7a8:	e51b3008 	ldr	r3, [fp, #-8]
     7ac:	e5d33000 	ldrb	r3, [r3]
     7b0:	e353003e 	cmp	r3, #62	@ 0x3e
     7b4:	1a000022 	bne	844 <gettoken+0x1f0>
     7b8:	e3a0302b 	mov	r3, #43	@ 0x2b
     7bc:	e50b300c 	str	r3, [fp, #-12]
     7c0:	e51b3008 	ldr	r3, [fp, #-8]
     7c4:	e2833001 	add	r3, r3, #1
     7c8:	e50b3008 	str	r3, [fp, #-8]
     7cc:	ea00001c 	b	844 <gettoken+0x1f0>
     7d0:	e3a03061 	mov	r3, #97	@ 0x61
     7d4:	e50b300c 	str	r3, [fp, #-12]
     7d8:	ea000002 	b	7e8 <gettoken+0x194>
     7dc:	e51b3008 	ldr	r3, [fp, #-8]
     7e0:	e2833001 	add	r3, r3, #1
     7e4:	e50b3008 	str	r3, [fp, #-8]
     7e8:	e51b2008 	ldr	r2, [fp, #-8]
     7ec:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     7f0:	e1520003 	cmp	r2, r3
     7f4:	2a000014 	bcs	84c <gettoken+0x1f8>
     7f8:	e51b3008 	ldr	r3, [fp, #-8]
     7fc:	e5d33000 	ldrb	r3, [r3]
     800:	e1a01003 	mov	r1, r3
     804:	e59f00b8 	ldr	r0, [pc, #184]	@ 8c4 <gettoken+0x270>
     808:	eb0002ac 	bl	12c0 <strchr>
     80c:	e1a03000 	mov	r3, r0
     810:	e3530000 	cmp	r3, #0
     814:	1a00000c 	bne	84c <gettoken+0x1f8>
     818:	e51b3008 	ldr	r3, [fp, #-8]
     81c:	e5d33000 	ldrb	r3, [r3]
     820:	e1a01003 	mov	r1, r3
     824:	e59f009c 	ldr	r0, [pc, #156]	@ 8c8 <gettoken+0x274>
     828:	eb0002a4 	bl	12c0 <strchr>
     82c:	e1a03000 	mov	r3, r0
     830:	e3530000 	cmp	r3, #0
     834:	0affffe8 	beq	7dc <gettoken+0x188>
     838:	ea000003 	b	84c <gettoken+0x1f8>
     83c:	e1a00000 	nop			@ (mov r0, r0)
     840:	ea000002 	b	850 <gettoken+0x1fc>
     844:	e1a00000 	nop			@ (mov r0, r0)
     848:	ea000000 	b	850 <gettoken+0x1fc>
     84c:	e1a00000 	nop			@ (mov r0, r0)
     850:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     854:	e3530000 	cmp	r3, #0
     858:	0a000006 	beq	878 <gettoken+0x224>
     85c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     860:	e51b2008 	ldr	r2, [fp, #-8]
     864:	e5832000 	str	r2, [r3]
     868:	ea000002 	b	878 <gettoken+0x224>
     86c:	e51b3008 	ldr	r3, [fp, #-8]
     870:	e2833001 	add	r3, r3, #1
     874:	e50b3008 	str	r3, [fp, #-8]
     878:	e51b2008 	ldr	r2, [fp, #-8]
     87c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     880:	e1520003 	cmp	r2, r3
     884:	2a000007 	bcs	8a8 <gettoken+0x254>
     888:	e51b3008 	ldr	r3, [fp, #-8]
     88c:	e5d33000 	ldrb	r3, [r3]
     890:	e1a01003 	mov	r1, r3
     894:	e59f0028 	ldr	r0, [pc, #40]	@ 8c4 <gettoken+0x270>
     898:	eb000288 	bl	12c0 <strchr>
     89c:	e1a03000 	mov	r3, r0
     8a0:	e3530000 	cmp	r3, #0
     8a4:	1afffff0 	bne	86c <gettoken+0x218>
     8a8:	e51b3010 	ldr	r3, [fp, #-16]
     8ac:	e51b2008 	ldr	r2, [fp, #-8]
     8b0:	e5832000 	str	r2, [r3]
     8b4:	e51b300c 	ldr	r3, [fp, #-12]
     8b8:	e1a00003 	mov	r0, r3
     8bc:	e24bd004 	sub	sp, fp, #4
     8c0:	e8bd8800 	pop	{fp, pc}
     8c4:	000021b4 	.word	0x000021b4
     8c8:	000021bc 	.word	0x000021bc

000008cc <peek>:
     8cc:	e92d4800 	push	{fp, lr}
     8d0:	e28db004 	add	fp, sp, #4
     8d4:	e24dd018 	sub	sp, sp, #24
     8d8:	e50b0010 	str	r0, [fp, #-16]
     8dc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     8e0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     8e4:	e51b3010 	ldr	r3, [fp, #-16]
     8e8:	e5933000 	ldr	r3, [r3]
     8ec:	e50b3008 	str	r3, [fp, #-8]
     8f0:	ea000002 	b	900 <peek+0x34>
     8f4:	e51b3008 	ldr	r3, [fp, #-8]
     8f8:	e2833001 	add	r3, r3, #1
     8fc:	e50b3008 	str	r3, [fp, #-8]
     900:	e51b2008 	ldr	r2, [fp, #-8]
     904:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     908:	e1520003 	cmp	r2, r3
     90c:	2a000007 	bcs	930 <peek+0x64>
     910:	e51b3008 	ldr	r3, [fp, #-8]
     914:	e5d33000 	ldrb	r3, [r3]
     918:	e1a01003 	mov	r1, r3
     91c:	e59f0060 	ldr	r0, [pc, #96]	@ 984 <peek+0xb8>
     920:	eb000266 	bl	12c0 <strchr>
     924:	e1a03000 	mov	r3, r0
     928:	e3530000 	cmp	r3, #0
     92c:	1afffff0 	bne	8f4 <peek+0x28>
     930:	e51b3010 	ldr	r3, [fp, #-16]
     934:	e51b2008 	ldr	r2, [fp, #-8]
     938:	e5832000 	str	r2, [r3]
     93c:	e51b3008 	ldr	r3, [fp, #-8]
     940:	e5d33000 	ldrb	r3, [r3]
     944:	e3530000 	cmp	r3, #0
     948:	0a000009 	beq	974 <peek+0xa8>
     94c:	e51b3008 	ldr	r3, [fp, #-8]
     950:	e5d33000 	ldrb	r3, [r3]
     954:	e1a01003 	mov	r1, r3
     958:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     95c:	eb000257 	bl	12c0 <strchr>
     960:	e1a03000 	mov	r3, r0
     964:	e3530000 	cmp	r3, #0
     968:	0a000001 	beq	974 <peek+0xa8>
     96c:	e3a03001 	mov	r3, #1
     970:	ea000000 	b	978 <peek+0xac>
     974:	e3a03000 	mov	r3, #0
     978:	e1a00003 	mov	r0, r3
     97c:	e24bd004 	sub	sp, fp, #4
     980:	e8bd8800 	pop	{fp, pc}
     984:	000021b4 	.word	0x000021b4

00000988 <parsecmd>:
     988:	e92d4810 	push	{r4, fp, lr}
     98c:	e28db008 	add	fp, sp, #8
     990:	e24dd014 	sub	sp, sp, #20
     994:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     998:	e51b4018 	ldr	r4, [fp, #-24]	@ 0xffffffe8
     99c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9a0:	e1a00003 	mov	r0, r3
     9a4:	eb0001e6 	bl	1144 <strlen>
     9a8:	e1a03000 	mov	r3, r0
     9ac:	e0843003 	add	r3, r4, r3
     9b0:	e50b3010 	str	r3, [fp, #-16]
     9b4:	e24b3018 	sub	r3, fp, #24
     9b8:	e51b1010 	ldr	r1, [fp, #-16]
     9bc:	e1a00003 	mov	r0, r3
     9c0:	eb000019 	bl	a2c <parseline>
     9c4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     9c8:	e24b3018 	sub	r3, fp, #24
     9cc:	e59f204c 	ldr	r2, [pc, #76]	@ a20 <parsecmd+0x98>
     9d0:	e51b1010 	ldr	r1, [fp, #-16]
     9d4:	e1a00003 	mov	r0, r3
     9d8:	ebffffbb 	bl	8cc <peek>
     9dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9e0:	e51b2010 	ldr	r2, [fp, #-16]
     9e4:	e1520003 	cmp	r2, r3
     9e8:	0a000006 	beq	a08 <parsecmd+0x80>
     9ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9f0:	e1a02003 	mov	r2, r3
     9f4:	e59f1028 	ldr	r1, [pc, #40]	@ a24 <parsecmd+0x9c>
     9f8:	e3a00002 	mov	r0, #2
     9fc:	eb000402 	bl	1a0c <printf>
     a00:	e59f0020 	ldr	r0, [pc, #32]	@ a28 <parsecmd+0xa0>
     a04:	ebfffe7d 	bl	400 <panic>
     a08:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     a0c:	eb00013c 	bl	f04 <nulterminate>
     a10:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a14:	e1a00003 	mov	r0, r3
     a18:	e24bd008 	sub	sp, fp, #8
     a1c:	e8bd8810 	pop	{r4, fp, pc}
     a20:	00002120 	.word	0x00002120
     a24:	00002124 	.word	0x00002124
     a28:	00002134 	.word	0x00002134

00000a2c <parseline>:
     a2c:	e92d4800 	push	{fp, lr}
     a30:	e28db004 	add	fp, sp, #4
     a34:	e24dd010 	sub	sp, sp, #16
     a38:	e50b0010 	str	r0, [fp, #-16]
     a3c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     a40:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a44:	e51b0010 	ldr	r0, [fp, #-16]
     a48:	eb00002a 	bl	af8 <parsepipe>
     a4c:	e50b0008 	str	r0, [fp, #-8]
     a50:	ea000007 	b	a74 <parseline+0x48>
     a54:	e3a03000 	mov	r3, #0
     a58:	e3a02000 	mov	r2, #0
     a5c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a60:	e51b0010 	ldr	r0, [fp, #-16]
     a64:	ebfffefa 	bl	654 <gettoken>
     a68:	e51b0008 	ldr	r0, [fp, #-8]
     a6c:	ebfffee3 	bl	600 <backcmd>
     a70:	e50b0008 	str	r0, [fp, #-8]
     a74:	e59f2074 	ldr	r2, [pc, #116]	@ af0 <parseline+0xc4>
     a78:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a7c:	e51b0010 	ldr	r0, [fp, #-16]
     a80:	ebffff91 	bl	8cc <peek>
     a84:	e1a03000 	mov	r3, r0
     a88:	e3530000 	cmp	r3, #0
     a8c:	1afffff0 	bne	a54 <parseline+0x28>
     a90:	e59f205c 	ldr	r2, [pc, #92]	@ af4 <parseline+0xc8>
     a94:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a98:	e51b0010 	ldr	r0, [fp, #-16]
     a9c:	ebffff8a 	bl	8cc <peek>
     aa0:	e1a03000 	mov	r3, r0
     aa4:	e3530000 	cmp	r3, #0
     aa8:	0a00000c 	beq	ae0 <parseline+0xb4>
     aac:	e3a03000 	mov	r3, #0
     ab0:	e3a02000 	mov	r2, #0
     ab4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ab8:	e51b0010 	ldr	r0, [fp, #-16]
     abc:	ebfffee4 	bl	654 <gettoken>
     ac0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ac4:	e51b0010 	ldr	r0, [fp, #-16]
     ac8:	ebffffd7 	bl	a2c <parseline>
     acc:	e1a03000 	mov	r3, r0
     ad0:	e1a01003 	mov	r1, r3
     ad4:	e51b0008 	ldr	r0, [fp, #-8]
     ad8:	ebfffeaf 	bl	59c <listcmd>
     adc:	e50b0008 	str	r0, [fp, #-8]
     ae0:	e51b3008 	ldr	r3, [fp, #-8]
     ae4:	e1a00003 	mov	r0, r3
     ae8:	e24bd004 	sub	sp, fp, #4
     aec:	e8bd8800 	pop	{fp, pc}
     af0:	0000213c 	.word	0x0000213c
     af4:	00002140 	.word	0x00002140

00000af8 <parsepipe>:
     af8:	e92d4800 	push	{fp, lr}
     afc:	e28db004 	add	fp, sp, #4
     b00:	e24dd010 	sub	sp, sp, #16
     b04:	e50b0010 	str	r0, [fp, #-16]
     b08:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     b0c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     b10:	e51b0010 	ldr	r0, [fp, #-16]
     b14:	eb000097 	bl	d78 <parseexec>
     b18:	e50b0008 	str	r0, [fp, #-8]
     b1c:	e59f2058 	ldr	r2, [pc, #88]	@ b7c <parsepipe+0x84>
     b20:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     b24:	e51b0010 	ldr	r0, [fp, #-16]
     b28:	ebffff67 	bl	8cc <peek>
     b2c:	e1a03000 	mov	r3, r0
     b30:	e3530000 	cmp	r3, #0
     b34:	0a00000c 	beq	b6c <parsepipe+0x74>
     b38:	e3a03000 	mov	r3, #0
     b3c:	e3a02000 	mov	r2, #0
     b40:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     b44:	e51b0010 	ldr	r0, [fp, #-16]
     b48:	ebfffec1 	bl	654 <gettoken>
     b4c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     b50:	e51b0010 	ldr	r0, [fp, #-16]
     b54:	ebffffe7 	bl	af8 <parsepipe>
     b58:	e1a03000 	mov	r3, r0
     b5c:	e1a01003 	mov	r1, r3
     b60:	e51b0008 	ldr	r0, [fp, #-8]
     b64:	ebfffe73 	bl	538 <pipecmd>
     b68:	e50b0008 	str	r0, [fp, #-8]
     b6c:	e51b3008 	ldr	r3, [fp, #-8]
     b70:	e1a00003 	mov	r0, r3
     b74:	e24bd004 	sub	sp, fp, #4
     b78:	e8bd8800 	pop	{fp, pc}
     b7c:	00002144 	.word	0x00002144

00000b80 <parseredirs>:
     b80:	e92d4800 	push	{fp, lr}
     b84:	e28db004 	add	fp, sp, #4
     b88:	e24dd028 	sub	sp, sp, #40	@ 0x28
     b8c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     b90:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     b94:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     b98:	ea000036 	b	c78 <parseredirs+0xf8>
     b9c:	e3a03000 	mov	r3, #0
     ba0:	e3a02000 	mov	r2, #0
     ba4:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     ba8:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     bac:	ebfffea8 	bl	654 <gettoken>
     bb0:	e50b0008 	str	r0, [fp, #-8]
     bb4:	e24b3010 	sub	r3, fp, #16
     bb8:	e24b200c 	sub	r2, fp, #12
     bbc:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     bc0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     bc4:	ebfffea2 	bl	654 <gettoken>
     bc8:	e1a03000 	mov	r3, r0
     bcc:	e3530061 	cmp	r3, #97	@ 0x61
     bd0:	0a000001 	beq	bdc <parseredirs+0x5c>
     bd4:	e59f00c8 	ldr	r0, [pc, #200]	@ ca4 <parseredirs+0x124>
     bd8:	ebfffe08 	bl	400 <panic>
     bdc:	e51b3008 	ldr	r3, [fp, #-8]
     be0:	e353003e 	cmp	r3, #62	@ 0x3e
     be4:	0a000011 	beq	c30 <parseredirs+0xb0>
     be8:	e51b3008 	ldr	r3, [fp, #-8]
     bec:	e353003e 	cmp	r3, #62	@ 0x3e
     bf0:	ca000020 	bgt	c78 <parseredirs+0xf8>
     bf4:	e51b3008 	ldr	r3, [fp, #-8]
     bf8:	e353002b 	cmp	r3, #43	@ 0x2b
     bfc:	0a000014 	beq	c54 <parseredirs+0xd4>
     c00:	e51b3008 	ldr	r3, [fp, #-8]
     c04:	e353003c 	cmp	r3, #60	@ 0x3c
     c08:	1a00001a 	bne	c78 <parseredirs+0xf8>
     c0c:	e51b100c 	ldr	r1, [fp, #-12]
     c10:	e51b2010 	ldr	r2, [fp, #-16]
     c14:	e3a03000 	mov	r3, #0
     c18:	e58d3000 	str	r3, [sp]
     c1c:	e3a03000 	mov	r3, #0
     c20:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     c24:	ebfffe1f 	bl	4a8 <redircmd>
     c28:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     c2c:	ea000011 	b	c78 <parseredirs+0xf8>
     c30:	e51b100c 	ldr	r1, [fp, #-12]
     c34:	e51b2010 	ldr	r2, [fp, #-16]
     c38:	e3a03001 	mov	r3, #1
     c3c:	e58d3000 	str	r3, [sp]
     c40:	e59f3060 	ldr	r3, [pc, #96]	@ ca8 <parseredirs+0x128>
     c44:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     c48:	ebfffe16 	bl	4a8 <redircmd>
     c4c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     c50:	ea000008 	b	c78 <parseredirs+0xf8>
     c54:	e51b100c 	ldr	r1, [fp, #-12]
     c58:	e51b2010 	ldr	r2, [fp, #-16]
     c5c:	e3a03001 	mov	r3, #1
     c60:	e58d3000 	str	r3, [sp]
     c64:	e59f303c 	ldr	r3, [pc, #60]	@ ca8 <parseredirs+0x128>
     c68:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     c6c:	ebfffe0d 	bl	4a8 <redircmd>
     c70:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     c74:	e1a00000 	nop			@ (mov r0, r0)
     c78:	e59f202c 	ldr	r2, [pc, #44]	@ cac <parseredirs+0x12c>
     c7c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     c80:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     c84:	ebffff10 	bl	8cc <peek>
     c88:	e1a03000 	mov	r3, r0
     c8c:	e3530000 	cmp	r3, #0
     c90:	1affffc1 	bne	b9c <parseredirs+0x1c>
     c94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c98:	e1a00003 	mov	r0, r3
     c9c:	e24bd004 	sub	sp, fp, #4
     ca0:	e8bd8800 	pop	{fp, pc}
     ca4:	00002148 	.word	0x00002148
     ca8:	00000201 	.word	0x00000201
     cac:	00002168 	.word	0x00002168

00000cb0 <parseblock>:
     cb0:	e92d4800 	push	{fp, lr}
     cb4:	e28db004 	add	fp, sp, #4
     cb8:	e24dd010 	sub	sp, sp, #16
     cbc:	e50b0010 	str	r0, [fp, #-16]
     cc0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     cc4:	e59f209c 	ldr	r2, [pc, #156]	@ d68 <parseblock+0xb8>
     cc8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ccc:	e51b0010 	ldr	r0, [fp, #-16]
     cd0:	ebfffefd 	bl	8cc <peek>
     cd4:	e1a03000 	mov	r3, r0
     cd8:	e3530000 	cmp	r3, #0
     cdc:	1a000001 	bne	ce8 <parseblock+0x38>
     ce0:	e59f0084 	ldr	r0, [pc, #132]	@ d6c <parseblock+0xbc>
     ce4:	ebfffdc5 	bl	400 <panic>
     ce8:	e3a03000 	mov	r3, #0
     cec:	e3a02000 	mov	r2, #0
     cf0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     cf4:	e51b0010 	ldr	r0, [fp, #-16]
     cf8:	ebfffe55 	bl	654 <gettoken>
     cfc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     d00:	e51b0010 	ldr	r0, [fp, #-16]
     d04:	ebffff48 	bl	a2c <parseline>
     d08:	e50b0008 	str	r0, [fp, #-8]
     d0c:	e59f205c 	ldr	r2, [pc, #92]	@ d70 <parseblock+0xc0>
     d10:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     d14:	e51b0010 	ldr	r0, [fp, #-16]
     d18:	ebfffeeb 	bl	8cc <peek>
     d1c:	e1a03000 	mov	r3, r0
     d20:	e3530000 	cmp	r3, #0
     d24:	1a000001 	bne	d30 <parseblock+0x80>
     d28:	e59f0044 	ldr	r0, [pc, #68]	@ d74 <parseblock+0xc4>
     d2c:	ebfffdb3 	bl	400 <panic>
     d30:	e3a03000 	mov	r3, #0
     d34:	e3a02000 	mov	r2, #0
     d38:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     d3c:	e51b0010 	ldr	r0, [fp, #-16]
     d40:	ebfffe43 	bl	654 <gettoken>
     d44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     d48:	e51b1010 	ldr	r1, [fp, #-16]
     d4c:	e51b0008 	ldr	r0, [fp, #-8]
     d50:	ebffff8a 	bl	b80 <parseredirs>
     d54:	e50b0008 	str	r0, [fp, #-8]
     d58:	e51b3008 	ldr	r3, [fp, #-8]
     d5c:	e1a00003 	mov	r0, r3
     d60:	e24bd004 	sub	sp, fp, #4
     d64:	e8bd8800 	pop	{fp, pc}
     d68:	0000216c 	.word	0x0000216c
     d6c:	00002170 	.word	0x00002170
     d70:	0000217c 	.word	0x0000217c
     d74:	00002180 	.word	0x00002180

00000d78 <parseexec>:
     d78:	e92d4800 	push	{fp, lr}
     d7c:	e28db004 	add	fp, sp, #4
     d80:	e24dd020 	sub	sp, sp, #32
     d84:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
     d88:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
     d8c:	e59f2160 	ldr	r2, [pc, #352]	@ ef4 <parseexec+0x17c>
     d90:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     d94:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     d98:	ebfffecb 	bl	8cc <peek>
     d9c:	e1a03000 	mov	r3, r0
     da0:	e3530000 	cmp	r3, #0
     da4:	0a000004 	beq	dbc <parseexec+0x44>
     da8:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     dac:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     db0:	ebffffbe 	bl	cb0 <parseblock>
     db4:	e1a03000 	mov	r3, r0
     db8:	ea00004a 	b	ee8 <parseexec+0x170>
     dbc:	ebfffda8 	bl	464 <execcmd>
     dc0:	e50b000c 	str	r0, [fp, #-12]
     dc4:	e51b300c 	ldr	r3, [fp, #-12]
     dc8:	e50b3010 	str	r3, [fp, #-16]
     dcc:	e3a03000 	mov	r3, #0
     dd0:	e50b3008 	str	r3, [fp, #-8]
     dd4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
     dd8:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     ddc:	e51b000c 	ldr	r0, [fp, #-12]
     de0:	ebffff66 	bl	b80 <parseredirs>
     de4:	e50b000c 	str	r0, [fp, #-12]
     de8:	ea000027 	b	e8c <parseexec+0x114>
     dec:	e24b301c 	sub	r3, fp, #28
     df0:	e24b2018 	sub	r2, fp, #24
     df4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     df8:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     dfc:	ebfffe14 	bl	654 <gettoken>
     e00:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     e04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e08:	e3530000 	cmp	r3, #0
     e0c:	0a000026 	beq	eac <parseexec+0x134>
     e10:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e14:	e3530061 	cmp	r3, #97	@ 0x61
     e18:	0a000001 	beq	e24 <parseexec+0xac>
     e1c:	e59f00d4 	ldr	r0, [pc, #212]	@ ef8 <parseexec+0x180>
     e20:	ebfffd76 	bl	400 <panic>
     e24:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     e28:	e51b1010 	ldr	r1, [fp, #-16]
     e2c:	e51b3008 	ldr	r3, [fp, #-8]
     e30:	e1a03103 	lsl	r3, r3, #2
     e34:	e0813003 	add	r3, r1, r3
     e38:	e5832004 	str	r2, [r3, #4]
     e3c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     e40:	e51b1010 	ldr	r1, [fp, #-16]
     e44:	e51b3008 	ldr	r3, [fp, #-8]
     e48:	e283300a 	add	r3, r3, #10
     e4c:	e1a03103 	lsl	r3, r3, #2
     e50:	e0813003 	add	r3, r1, r3
     e54:	e5832004 	str	r2, [r3, #4]
     e58:	e51b3008 	ldr	r3, [fp, #-8]
     e5c:	e2833001 	add	r3, r3, #1
     e60:	e50b3008 	str	r3, [fp, #-8]
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e3530009 	cmp	r3, #9
     e6c:	da000001 	ble	e78 <parseexec+0x100>
     e70:	e59f0084 	ldr	r0, [pc, #132]	@ efc <parseexec+0x184>
     e74:	ebfffd61 	bl	400 <panic>
     e78:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
     e7c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     e80:	e51b000c 	ldr	r0, [fp, #-12]
     e84:	ebffff3d 	bl	b80 <parseredirs>
     e88:	e50b000c 	str	r0, [fp, #-12]
     e8c:	e59f206c 	ldr	r2, [pc, #108]	@ f00 <parseexec+0x188>
     e90:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     e94:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     e98:	ebfffe8b 	bl	8cc <peek>
     e9c:	e1a03000 	mov	r3, r0
     ea0:	e3530000 	cmp	r3, #0
     ea4:	0affffd0 	beq	dec <parseexec+0x74>
     ea8:	ea000000 	b	eb0 <parseexec+0x138>
     eac:	e1a00000 	nop			@ (mov r0, r0)
     eb0:	e51b2010 	ldr	r2, [fp, #-16]
     eb4:	e51b3008 	ldr	r3, [fp, #-8]
     eb8:	e1a03103 	lsl	r3, r3, #2
     ebc:	e0823003 	add	r3, r2, r3
     ec0:	e3a02000 	mov	r2, #0
     ec4:	e5832004 	str	r2, [r3, #4]
     ec8:	e51b2010 	ldr	r2, [fp, #-16]
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e283300a 	add	r3, r3, #10
     ed4:	e1a03103 	lsl	r3, r3, #2
     ed8:	e0823003 	add	r3, r2, r3
     edc:	e3a02000 	mov	r2, #0
     ee0:	e5832004 	str	r2, [r3, #4]
     ee4:	e51b300c 	ldr	r3, [fp, #-12]
     ee8:	e1a00003 	mov	r0, r3
     eec:	e24bd004 	sub	sp, fp, #4
     ef0:	e8bd8800 	pop	{fp, pc}
     ef4:	0000216c 	.word	0x0000216c
     ef8:	00002134 	.word	0x00002134
     efc:	00002194 	.word	0x00002194
     f00:	000021a4 	.word	0x000021a4

00000f04 <nulterminate>:
     f04:	e92d4800 	push	{fp, lr}
     f08:	e28db004 	add	fp, sp, #4
     f0c:	e24dd020 	sub	sp, sp, #32
     f10:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
     f14:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     f18:	e3530000 	cmp	r3, #0
     f1c:	1a000001 	bne	f28 <nulterminate+0x24>
     f20:	e3a03000 	mov	r3, #0
     f24:	ea00004b 	b	1058 <nulterminate+0x154>
     f28:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     f2c:	e5933000 	ldr	r3, [r3]
     f30:	e2433001 	sub	r3, r3, #1
     f34:	e3530004 	cmp	r3, #4
     f38:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
     f3c:	ea000044 	b	1054 <nulterminate+0x150>
     f40:	00000f54 	.word	0x00000f54
     f44:	00000fb4 	.word	0x00000fb4
     f48:	00000fe0 	.word	0x00000fe0
     f4c:	0000100c 	.word	0x0000100c
     f50:	00001038 	.word	0x00001038
     f54:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     f58:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     f5c:	e3a03000 	mov	r3, #0
     f60:	e50b3008 	str	r3, [fp, #-8]
     f64:	ea00000a 	b	f94 <nulterminate+0x90>
     f68:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e283300a 	add	r3, r3, #10
     f74:	e1a03103 	lsl	r3, r3, #2
     f78:	e0823003 	add	r3, r2, r3
     f7c:	e5933004 	ldr	r3, [r3, #4]
     f80:	e3a02000 	mov	r2, #0
     f84:	e5c32000 	strb	r2, [r3]
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e2833001 	add	r3, r3, #1
     f90:	e50b3008 	str	r3, [fp, #-8]
     f94:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e1a03103 	lsl	r3, r3, #2
     fa0:	e0823003 	add	r3, r2, r3
     fa4:	e5933004 	ldr	r3, [r3, #4]
     fa8:	e3530000 	cmp	r3, #0
     fac:	1affffed 	bne	f68 <nulterminate+0x64>
     fb0:	ea000027 	b	1054 <nulterminate+0x150>
     fb4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     fb8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     fbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fc0:	e5933004 	ldr	r3, [r3, #4]
     fc4:	e1a00003 	mov	r0, r3
     fc8:	ebffffcd 	bl	f04 <nulterminate>
     fcc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fd0:	e593300c 	ldr	r3, [r3, #12]
     fd4:	e3a02000 	mov	r2, #0
     fd8:	e5c32000 	strb	r2, [r3]
     fdc:	ea00001c 	b	1054 <nulterminate+0x150>
     fe0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     fe4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     fe8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fec:	e5933004 	ldr	r3, [r3, #4]
     ff0:	e1a00003 	mov	r0, r3
     ff4:	ebffffc2 	bl	f04 <nulterminate>
     ff8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ffc:	e5933008 	ldr	r3, [r3, #8]
    1000:	e1a00003 	mov	r0, r3
    1004:	ebffffbe 	bl	f04 <nulterminate>
    1008:	ea000011 	b	1054 <nulterminate+0x150>
    100c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1010:	e50b3010 	str	r3, [fp, #-16]
    1014:	e51b3010 	ldr	r3, [fp, #-16]
    1018:	e5933004 	ldr	r3, [r3, #4]
    101c:	e1a00003 	mov	r0, r3
    1020:	ebffffb7 	bl	f04 <nulterminate>
    1024:	e51b3010 	ldr	r3, [fp, #-16]
    1028:	e5933008 	ldr	r3, [r3, #8]
    102c:	e1a00003 	mov	r0, r3
    1030:	ebffffb3 	bl	f04 <nulterminate>
    1034:	ea000006 	b	1054 <nulterminate+0x150>
    1038:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    103c:	e50b300c 	str	r3, [fp, #-12]
    1040:	e51b300c 	ldr	r3, [fp, #-12]
    1044:	e5933004 	ldr	r3, [r3, #4]
    1048:	e1a00003 	mov	r0, r3
    104c:	ebffffac 	bl	f04 <nulterminate>
    1050:	e1a00000 	nop			@ (mov r0, r0)
    1054:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1058:	e1a00003 	mov	r0, r3
    105c:	e24bd004 	sub	sp, fp, #4
    1060:	e8bd8800 	pop	{fp, pc}

00001064 <strcpy>:
    1064:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1068:	e28db000 	add	fp, sp, #0
    106c:	e24dd014 	sub	sp, sp, #20
    1070:	e50b0010 	str	r0, [fp, #-16]
    1074:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1078:	e51b3010 	ldr	r3, [fp, #-16]
    107c:	e50b3008 	str	r3, [fp, #-8]
    1080:	e1a00000 	nop			@ (mov r0, r0)
    1084:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1088:	e2823001 	add	r3, r2, #1
    108c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1090:	e51b3010 	ldr	r3, [fp, #-16]
    1094:	e2831001 	add	r1, r3, #1
    1098:	e50b1010 	str	r1, [fp, #-16]
    109c:	e5d22000 	ldrb	r2, [r2]
    10a0:	e5c32000 	strb	r2, [r3]
    10a4:	e5d33000 	ldrb	r3, [r3]
    10a8:	e3530000 	cmp	r3, #0
    10ac:	1afffff4 	bne	1084 <strcpy+0x20>
    10b0:	e51b3008 	ldr	r3, [fp, #-8]
    10b4:	e1a00003 	mov	r0, r3
    10b8:	e28bd000 	add	sp, fp, #0
    10bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    10c0:	e12fff1e 	bx	lr

000010c4 <strcmp>:
    10c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    10c8:	e28db000 	add	fp, sp, #0
    10cc:	e24dd00c 	sub	sp, sp, #12
    10d0:	e50b0008 	str	r0, [fp, #-8]
    10d4:	e50b100c 	str	r1, [fp, #-12]
    10d8:	ea000005 	b	10f4 <strcmp+0x30>
    10dc:	e51b3008 	ldr	r3, [fp, #-8]
    10e0:	e2833001 	add	r3, r3, #1
    10e4:	e50b3008 	str	r3, [fp, #-8]
    10e8:	e51b300c 	ldr	r3, [fp, #-12]
    10ec:	e2833001 	add	r3, r3, #1
    10f0:	e50b300c 	str	r3, [fp, #-12]
    10f4:	e51b3008 	ldr	r3, [fp, #-8]
    10f8:	e5d33000 	ldrb	r3, [r3]
    10fc:	e3530000 	cmp	r3, #0
    1100:	0a000005 	beq	111c <strcmp+0x58>
    1104:	e51b3008 	ldr	r3, [fp, #-8]
    1108:	e5d32000 	ldrb	r2, [r3]
    110c:	e51b300c 	ldr	r3, [fp, #-12]
    1110:	e5d33000 	ldrb	r3, [r3]
    1114:	e1520003 	cmp	r2, r3
    1118:	0affffef 	beq	10dc <strcmp+0x18>
    111c:	e51b3008 	ldr	r3, [fp, #-8]
    1120:	e5d33000 	ldrb	r3, [r3]
    1124:	e1a02003 	mov	r2, r3
    1128:	e51b300c 	ldr	r3, [fp, #-12]
    112c:	e5d33000 	ldrb	r3, [r3]
    1130:	e0423003 	sub	r3, r2, r3
    1134:	e1a00003 	mov	r0, r3
    1138:	e28bd000 	add	sp, fp, #0
    113c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1140:	e12fff1e 	bx	lr

00001144 <strlen>:
    1144:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1148:	e28db000 	add	fp, sp, #0
    114c:	e24dd014 	sub	sp, sp, #20
    1150:	e50b0010 	str	r0, [fp, #-16]
    1154:	e3a03000 	mov	r3, #0
    1158:	e50b3008 	str	r3, [fp, #-8]
    115c:	ea000002 	b	116c <strlen+0x28>
    1160:	e51b3008 	ldr	r3, [fp, #-8]
    1164:	e2833001 	add	r3, r3, #1
    1168:	e50b3008 	str	r3, [fp, #-8]
    116c:	e51b3008 	ldr	r3, [fp, #-8]
    1170:	e51b2010 	ldr	r2, [fp, #-16]
    1174:	e0823003 	add	r3, r2, r3
    1178:	e5d33000 	ldrb	r3, [r3]
    117c:	e3530000 	cmp	r3, #0
    1180:	1afffff6 	bne	1160 <strlen+0x1c>
    1184:	e51b3008 	ldr	r3, [fp, #-8]
    1188:	e1a00003 	mov	r0, r3
    118c:	e28bd000 	add	sp, fp, #0
    1190:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1194:	e12fff1e 	bx	lr

00001198 <memset>:
    1198:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    119c:	e28db000 	add	fp, sp, #0
    11a0:	e24dd024 	sub	sp, sp, #36	@ 0x24
    11a4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    11a8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    11ac:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
    11b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    11b4:	e50b3008 	str	r3, [fp, #-8]
    11b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    11bc:	e54b300d 	strb	r3, [fp, #-13]
    11c0:	e55b200d 	ldrb	r2, [fp, #-13]
    11c4:	e1a03002 	mov	r3, r2
    11c8:	e1a03403 	lsl	r3, r3, #8
    11cc:	e0833002 	add	r3, r3, r2
    11d0:	e1a03803 	lsl	r3, r3, #16
    11d4:	e1a02003 	mov	r2, r3
    11d8:	e55b300d 	ldrb	r3, [fp, #-13]
    11dc:	e1a03403 	lsl	r3, r3, #8
    11e0:	e1822003 	orr	r2, r2, r3
    11e4:	e55b300d 	ldrb	r3, [fp, #-13]
    11e8:	e1823003 	orr	r3, r2, r3
    11ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    11f0:	ea000008 	b	1218 <memset+0x80>
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e55b200d 	ldrb	r2, [fp, #-13]
    11fc:	e5c32000 	strb	r2, [r3]
    1200:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1204:	e2433001 	sub	r3, r3, #1
    1208:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    120c:	e51b3008 	ldr	r3, [fp, #-8]
    1210:	e2833001 	add	r3, r3, #1
    1214:	e50b3008 	str	r3, [fp, #-8]
    1218:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    121c:	e3530000 	cmp	r3, #0
    1220:	0a000003 	beq	1234 <memset+0x9c>
    1224:	e51b3008 	ldr	r3, [fp, #-8]
    1228:	e2033003 	and	r3, r3, #3
    122c:	e3530000 	cmp	r3, #0
    1230:	1affffef 	bne	11f4 <memset+0x5c>
    1234:	e51b3008 	ldr	r3, [fp, #-8]
    1238:	e50b300c 	str	r3, [fp, #-12]
    123c:	ea000008 	b	1264 <memset+0xcc>
    1240:	e51b300c 	ldr	r3, [fp, #-12]
    1244:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1248:	e5832000 	str	r2, [r3]
    124c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1250:	e2433004 	sub	r3, r3, #4
    1254:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    1258:	e51b300c 	ldr	r3, [fp, #-12]
    125c:	e2833004 	add	r3, r3, #4
    1260:	e50b300c 	str	r3, [fp, #-12]
    1264:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1268:	e3530003 	cmp	r3, #3
    126c:	8afffff3 	bhi	1240 <memset+0xa8>
    1270:	e51b300c 	ldr	r3, [fp, #-12]
    1274:	e50b3008 	str	r3, [fp, #-8]
    1278:	ea000008 	b	12a0 <memset+0x108>
    127c:	e51b3008 	ldr	r3, [fp, #-8]
    1280:	e55b200d 	ldrb	r2, [fp, #-13]
    1284:	e5c32000 	strb	r2, [r3]
    1288:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    128c:	e2433001 	sub	r3, r3, #1
    1290:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    1294:	e51b3008 	ldr	r3, [fp, #-8]
    1298:	e2833001 	add	r3, r3, #1
    129c:	e50b3008 	str	r3, [fp, #-8]
    12a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    12a4:	e3530000 	cmp	r3, #0
    12a8:	1afffff3 	bne	127c <memset+0xe4>
    12ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    12b0:	e1a00003 	mov	r0, r3
    12b4:	e28bd000 	add	sp, fp, #0
    12b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    12bc:	e12fff1e 	bx	lr

000012c0 <strchr>:
    12c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    12c4:	e28db000 	add	fp, sp, #0
    12c8:	e24dd00c 	sub	sp, sp, #12
    12cc:	e50b0008 	str	r0, [fp, #-8]
    12d0:	e1a03001 	mov	r3, r1
    12d4:	e54b3009 	strb	r3, [fp, #-9]
    12d8:	ea000009 	b	1304 <strchr+0x44>
    12dc:	e51b3008 	ldr	r3, [fp, #-8]
    12e0:	e5d33000 	ldrb	r3, [r3]
    12e4:	e55b2009 	ldrb	r2, [fp, #-9]
    12e8:	e1520003 	cmp	r2, r3
    12ec:	1a000001 	bne	12f8 <strchr+0x38>
    12f0:	e51b3008 	ldr	r3, [fp, #-8]
    12f4:	ea000007 	b	1318 <strchr+0x58>
    12f8:	e51b3008 	ldr	r3, [fp, #-8]
    12fc:	e2833001 	add	r3, r3, #1
    1300:	e50b3008 	str	r3, [fp, #-8]
    1304:	e51b3008 	ldr	r3, [fp, #-8]
    1308:	e5d33000 	ldrb	r3, [r3]
    130c:	e3530000 	cmp	r3, #0
    1310:	1afffff1 	bne	12dc <strchr+0x1c>
    1314:	e3a03000 	mov	r3, #0
    1318:	e1a00003 	mov	r0, r3
    131c:	e28bd000 	add	sp, fp, #0
    1320:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1324:	e12fff1e 	bx	lr

00001328 <gets>:
    1328:	e92d4800 	push	{fp, lr}
    132c:	e28db004 	add	fp, sp, #4
    1330:	e24dd018 	sub	sp, sp, #24
    1334:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1338:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    133c:	e3a03000 	mov	r3, #0
    1340:	e50b3008 	str	r3, [fp, #-8]
    1344:	ea000016 	b	13a4 <gets+0x7c>
    1348:	e24b300d 	sub	r3, fp, #13
    134c:	e3a02001 	mov	r2, #1
    1350:	e1a01003 	mov	r1, r3
    1354:	e3a00000 	mov	r0, #0
    1358:	eb00009b 	bl	15cc <read>
    135c:	e50b000c 	str	r0, [fp, #-12]
    1360:	e51b300c 	ldr	r3, [fp, #-12]
    1364:	e3530000 	cmp	r3, #0
    1368:	da000013 	ble	13bc <gets+0x94>
    136c:	e51b3008 	ldr	r3, [fp, #-8]
    1370:	e2832001 	add	r2, r3, #1
    1374:	e50b2008 	str	r2, [fp, #-8]
    1378:	e1a02003 	mov	r2, r3
    137c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1380:	e0833002 	add	r3, r3, r2
    1384:	e55b200d 	ldrb	r2, [fp, #-13]
    1388:	e5c32000 	strb	r2, [r3]
    138c:	e55b300d 	ldrb	r3, [fp, #-13]
    1390:	e353000a 	cmp	r3, #10
    1394:	0a000009 	beq	13c0 <gets+0x98>
    1398:	e55b300d 	ldrb	r3, [fp, #-13]
    139c:	e353000d 	cmp	r3, #13
    13a0:	0a000006 	beq	13c0 <gets+0x98>
    13a4:	e51b3008 	ldr	r3, [fp, #-8]
    13a8:	e2833001 	add	r3, r3, #1
    13ac:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    13b0:	e1520003 	cmp	r2, r3
    13b4:	caffffe3 	bgt	1348 <gets+0x20>
    13b8:	ea000000 	b	13c0 <gets+0x98>
    13bc:	e1a00000 	nop			@ (mov r0, r0)
    13c0:	e51b3008 	ldr	r3, [fp, #-8]
    13c4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    13c8:	e0823003 	add	r3, r2, r3
    13cc:	e3a02000 	mov	r2, #0
    13d0:	e5c32000 	strb	r2, [r3]
    13d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    13d8:	e1a00003 	mov	r0, r3
    13dc:	e24bd004 	sub	sp, fp, #4
    13e0:	e8bd8800 	pop	{fp, pc}

000013e4 <stat>:
    13e4:	e92d4800 	push	{fp, lr}
    13e8:	e28db004 	add	fp, sp, #4
    13ec:	e24dd010 	sub	sp, sp, #16
    13f0:	e50b0010 	str	r0, [fp, #-16]
    13f4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    13f8:	e3a01000 	mov	r1, #0
    13fc:	e51b0010 	ldr	r0, [fp, #-16]
    1400:	eb00009e 	bl	1680 <open>
    1404:	e50b0008 	str	r0, [fp, #-8]
    1408:	e51b3008 	ldr	r3, [fp, #-8]
    140c:	e3530000 	cmp	r3, #0
    1410:	aa000001 	bge	141c <stat+0x38>
    1414:	e3e03000 	mvn	r3, #0
    1418:	ea000006 	b	1438 <stat+0x54>
    141c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1420:	e51b0008 	ldr	r0, [fp, #-8]
    1424:	eb0000b0 	bl	16ec <fstat>
    1428:	e50b000c 	str	r0, [fp, #-12]
    142c:	e51b0008 	ldr	r0, [fp, #-8]
    1430:	eb000077 	bl	1614 <close>
    1434:	e51b300c 	ldr	r3, [fp, #-12]
    1438:	e1a00003 	mov	r0, r3
    143c:	e24bd004 	sub	sp, fp, #4
    1440:	e8bd8800 	pop	{fp, pc}

00001444 <atoi>:
    1444:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1448:	e28db000 	add	fp, sp, #0
    144c:	e24dd014 	sub	sp, sp, #20
    1450:	e50b0010 	str	r0, [fp, #-16]
    1454:	e3a03000 	mov	r3, #0
    1458:	e50b3008 	str	r3, [fp, #-8]
    145c:	ea00000c 	b	1494 <atoi+0x50>
    1460:	e51b2008 	ldr	r2, [fp, #-8]
    1464:	e1a03002 	mov	r3, r2
    1468:	e1a03103 	lsl	r3, r3, #2
    146c:	e0833002 	add	r3, r3, r2
    1470:	e1a03083 	lsl	r3, r3, #1
    1474:	e1a01003 	mov	r1, r3
    1478:	e51b3010 	ldr	r3, [fp, #-16]
    147c:	e2832001 	add	r2, r3, #1
    1480:	e50b2010 	str	r2, [fp, #-16]
    1484:	e5d33000 	ldrb	r3, [r3]
    1488:	e0813003 	add	r3, r1, r3
    148c:	e2433030 	sub	r3, r3, #48	@ 0x30
    1490:	e50b3008 	str	r3, [fp, #-8]
    1494:	e51b3010 	ldr	r3, [fp, #-16]
    1498:	e5d33000 	ldrb	r3, [r3]
    149c:	e353002f 	cmp	r3, #47	@ 0x2f
    14a0:	9a000003 	bls	14b4 <atoi+0x70>
    14a4:	e51b3010 	ldr	r3, [fp, #-16]
    14a8:	e5d33000 	ldrb	r3, [r3]
    14ac:	e3530039 	cmp	r3, #57	@ 0x39
    14b0:	9affffea 	bls	1460 <atoi+0x1c>
    14b4:	e51b3008 	ldr	r3, [fp, #-8]
    14b8:	e1a00003 	mov	r0, r3
    14bc:	e28bd000 	add	sp, fp, #0
    14c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    14c4:	e12fff1e 	bx	lr

000014c8 <memmove>:
    14c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    14cc:	e28db000 	add	fp, sp, #0
    14d0:	e24dd01c 	sub	sp, sp, #28
    14d4:	e50b0010 	str	r0, [fp, #-16]
    14d8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    14dc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    14e0:	e51b3010 	ldr	r3, [fp, #-16]
    14e4:	e50b3008 	str	r3, [fp, #-8]
    14e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    14ec:	e50b300c 	str	r3, [fp, #-12]
    14f0:	ea000007 	b	1514 <memmove+0x4c>
    14f4:	e51b200c 	ldr	r2, [fp, #-12]
    14f8:	e2823001 	add	r3, r2, #1
    14fc:	e50b300c 	str	r3, [fp, #-12]
    1500:	e51b3008 	ldr	r3, [fp, #-8]
    1504:	e2831001 	add	r1, r3, #1
    1508:	e50b1008 	str	r1, [fp, #-8]
    150c:	e5d22000 	ldrb	r2, [r2]
    1510:	e5c32000 	strb	r2, [r3]
    1514:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1518:	e2432001 	sub	r2, r3, #1
    151c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    1520:	e3530000 	cmp	r3, #0
    1524:	cafffff2 	bgt	14f4 <memmove+0x2c>
    1528:	e51b3010 	ldr	r3, [fp, #-16]
    152c:	e1a00003 	mov	r0, r3
    1530:	e28bd000 	add	sp, fp, #0
    1534:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1538:	e12fff1e 	bx	lr

0000153c <fork>:
    153c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1540:	e1a04003 	mov	r4, r3
    1544:	e1a03002 	mov	r3, r2
    1548:	e1a02001 	mov	r2, r1
    154c:	e1a01000 	mov	r1, r0
    1550:	e3a00001 	mov	r0, #1
    1554:	ef000000 	svc	0x00000000
    1558:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    155c:	e12fff1e 	bx	lr

00001560 <exit>:
    1560:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1564:	e1a04003 	mov	r4, r3
    1568:	e1a03002 	mov	r3, r2
    156c:	e1a02001 	mov	r2, r1
    1570:	e1a01000 	mov	r1, r0
    1574:	e3a00002 	mov	r0, #2
    1578:	ef000000 	svc	0x00000000
    157c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1580:	e12fff1e 	bx	lr

00001584 <wait>:
    1584:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1588:	e1a04003 	mov	r4, r3
    158c:	e1a03002 	mov	r3, r2
    1590:	e1a02001 	mov	r2, r1
    1594:	e1a01000 	mov	r1, r0
    1598:	e3a00003 	mov	r0, #3
    159c:	ef000000 	svc	0x00000000
    15a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    15a4:	e12fff1e 	bx	lr

000015a8 <pipe>:
    15a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    15ac:	e1a04003 	mov	r4, r3
    15b0:	e1a03002 	mov	r3, r2
    15b4:	e1a02001 	mov	r2, r1
    15b8:	e1a01000 	mov	r1, r0
    15bc:	e3a00004 	mov	r0, #4
    15c0:	ef000000 	svc	0x00000000
    15c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    15c8:	e12fff1e 	bx	lr

000015cc <read>:
    15cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    15d0:	e1a04003 	mov	r4, r3
    15d4:	e1a03002 	mov	r3, r2
    15d8:	e1a02001 	mov	r2, r1
    15dc:	e1a01000 	mov	r1, r0
    15e0:	e3a00005 	mov	r0, #5
    15e4:	ef000000 	svc	0x00000000
    15e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    15ec:	e12fff1e 	bx	lr

000015f0 <write>:
    15f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    15f4:	e1a04003 	mov	r4, r3
    15f8:	e1a03002 	mov	r3, r2
    15fc:	e1a02001 	mov	r2, r1
    1600:	e1a01000 	mov	r1, r0
    1604:	e3a00010 	mov	r0, #16
    1608:	ef000000 	svc	0x00000000
    160c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1610:	e12fff1e 	bx	lr

00001614 <close>:
    1614:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1618:	e1a04003 	mov	r4, r3
    161c:	e1a03002 	mov	r3, r2
    1620:	e1a02001 	mov	r2, r1
    1624:	e1a01000 	mov	r1, r0
    1628:	e3a00015 	mov	r0, #21
    162c:	ef000000 	svc	0x00000000
    1630:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1634:	e12fff1e 	bx	lr

00001638 <kill>:
    1638:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    163c:	e1a04003 	mov	r4, r3
    1640:	e1a03002 	mov	r3, r2
    1644:	e1a02001 	mov	r2, r1
    1648:	e1a01000 	mov	r1, r0
    164c:	e3a00006 	mov	r0, #6
    1650:	ef000000 	svc	0x00000000
    1654:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1658:	e12fff1e 	bx	lr

0000165c <exec>:
    165c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1660:	e1a04003 	mov	r4, r3
    1664:	e1a03002 	mov	r3, r2
    1668:	e1a02001 	mov	r2, r1
    166c:	e1a01000 	mov	r1, r0
    1670:	e3a00007 	mov	r0, #7
    1674:	ef000000 	svc	0x00000000
    1678:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    167c:	e12fff1e 	bx	lr

00001680 <open>:
    1680:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1684:	e1a04003 	mov	r4, r3
    1688:	e1a03002 	mov	r3, r2
    168c:	e1a02001 	mov	r2, r1
    1690:	e1a01000 	mov	r1, r0
    1694:	e3a0000f 	mov	r0, #15
    1698:	ef000000 	svc	0x00000000
    169c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    16a0:	e12fff1e 	bx	lr

000016a4 <mknod>:
    16a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    16a8:	e1a04003 	mov	r4, r3
    16ac:	e1a03002 	mov	r3, r2
    16b0:	e1a02001 	mov	r2, r1
    16b4:	e1a01000 	mov	r1, r0
    16b8:	e3a00011 	mov	r0, #17
    16bc:	ef000000 	svc	0x00000000
    16c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    16c4:	e12fff1e 	bx	lr

000016c8 <unlink>:
    16c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    16cc:	e1a04003 	mov	r4, r3
    16d0:	e1a03002 	mov	r3, r2
    16d4:	e1a02001 	mov	r2, r1
    16d8:	e1a01000 	mov	r1, r0
    16dc:	e3a00012 	mov	r0, #18
    16e0:	ef000000 	svc	0x00000000
    16e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    16e8:	e12fff1e 	bx	lr

000016ec <fstat>:
    16ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    16f0:	e1a04003 	mov	r4, r3
    16f4:	e1a03002 	mov	r3, r2
    16f8:	e1a02001 	mov	r2, r1
    16fc:	e1a01000 	mov	r1, r0
    1700:	e3a00008 	mov	r0, #8
    1704:	ef000000 	svc	0x00000000
    1708:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    170c:	e12fff1e 	bx	lr

00001710 <link>:
    1710:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1714:	e1a04003 	mov	r4, r3
    1718:	e1a03002 	mov	r3, r2
    171c:	e1a02001 	mov	r2, r1
    1720:	e1a01000 	mov	r1, r0
    1724:	e3a00013 	mov	r0, #19
    1728:	ef000000 	svc	0x00000000
    172c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1730:	e12fff1e 	bx	lr

00001734 <mkdir>:
    1734:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1738:	e1a04003 	mov	r4, r3
    173c:	e1a03002 	mov	r3, r2
    1740:	e1a02001 	mov	r2, r1
    1744:	e1a01000 	mov	r1, r0
    1748:	e3a00014 	mov	r0, #20
    174c:	ef000000 	svc	0x00000000
    1750:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1754:	e12fff1e 	bx	lr

00001758 <chdir>:
    1758:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    175c:	e1a04003 	mov	r4, r3
    1760:	e1a03002 	mov	r3, r2
    1764:	e1a02001 	mov	r2, r1
    1768:	e1a01000 	mov	r1, r0
    176c:	e3a00009 	mov	r0, #9
    1770:	ef000000 	svc	0x00000000
    1774:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1778:	e12fff1e 	bx	lr

0000177c <dup>:
    177c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1780:	e1a04003 	mov	r4, r3
    1784:	e1a03002 	mov	r3, r2
    1788:	e1a02001 	mov	r2, r1
    178c:	e1a01000 	mov	r1, r0
    1790:	e3a0000a 	mov	r0, #10
    1794:	ef000000 	svc	0x00000000
    1798:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    179c:	e12fff1e 	bx	lr

000017a0 <getpid>:
    17a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    17a4:	e1a04003 	mov	r4, r3
    17a8:	e1a03002 	mov	r3, r2
    17ac:	e1a02001 	mov	r2, r1
    17b0:	e1a01000 	mov	r1, r0
    17b4:	e3a0000b 	mov	r0, #11
    17b8:	ef000000 	svc	0x00000000
    17bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    17c0:	e12fff1e 	bx	lr

000017c4 <sbrk>:
    17c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    17c8:	e1a04003 	mov	r4, r3
    17cc:	e1a03002 	mov	r3, r2
    17d0:	e1a02001 	mov	r2, r1
    17d4:	e1a01000 	mov	r1, r0
    17d8:	e3a0000c 	mov	r0, #12
    17dc:	ef000000 	svc	0x00000000
    17e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    17e4:	e12fff1e 	bx	lr

000017e8 <sleep>:
    17e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    17ec:	e1a04003 	mov	r4, r3
    17f0:	e1a03002 	mov	r3, r2
    17f4:	e1a02001 	mov	r2, r1
    17f8:	e1a01000 	mov	r1, r0
    17fc:	e3a0000d 	mov	r0, #13
    1800:	ef000000 	svc	0x00000000
    1804:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1808:	e12fff1e 	bx	lr

0000180c <uptime>:
    180c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1810:	e1a04003 	mov	r4, r3
    1814:	e1a03002 	mov	r3, r2
    1818:	e1a02001 	mov	r2, r1
    181c:	e1a01000 	mov	r1, r0
    1820:	e3a0000e 	mov	r0, #14
    1824:	ef000000 	svc	0x00000000
    1828:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    182c:	e12fff1e 	bx	lr

00001830 <pgpte>:
    1830:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1834:	e1a04003 	mov	r4, r3
    1838:	e1a03002 	mov	r3, r2
    183c:	e1a02001 	mov	r2, r1
    1840:	e1a01000 	mov	r1, r0
    1844:	e3a00016 	mov	r0, #22
    1848:	ef000000 	svc	0x00000000
    184c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1850:	e12fff1e 	bx	lr

00001854 <kpt>:
    1854:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1858:	e1a04003 	mov	r4, r3
    185c:	e1a03002 	mov	r3, r2
    1860:	e1a02001 	mov	r2, r1
    1864:	e1a01000 	mov	r1, r0
    1868:	e3a00017 	mov	r0, #23
    186c:	ef000000 	svc	0x00000000
    1870:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1874:	e12fff1e 	bx	lr

00001878 <ugetpid>:
    1878:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    187c:	e1a04003 	mov	r4, r3
    1880:	e1a03002 	mov	r3, r2
    1884:	e1a02001 	mov	r2, r1
    1888:	e1a01000 	mov	r1, r0
    188c:	e3a00018 	mov	r0, #24
    1890:	ef000000 	svc	0x00000000
    1894:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1898:	e12fff1e 	bx	lr

0000189c <putc>:
    189c:	e92d4800 	push	{fp, lr}
    18a0:	e28db004 	add	fp, sp, #4
    18a4:	e24dd008 	sub	sp, sp, #8
    18a8:	e50b0008 	str	r0, [fp, #-8]
    18ac:	e1a03001 	mov	r3, r1
    18b0:	e54b3009 	strb	r3, [fp, #-9]
    18b4:	e24b3009 	sub	r3, fp, #9
    18b8:	e3a02001 	mov	r2, #1
    18bc:	e1a01003 	mov	r1, r3
    18c0:	e51b0008 	ldr	r0, [fp, #-8]
    18c4:	ebffff49 	bl	15f0 <write>
    18c8:	e1a00000 	nop			@ (mov r0, r0)
    18cc:	e24bd004 	sub	sp, fp, #4
    18d0:	e8bd8800 	pop	{fp, pc}

000018d4 <printint>:
    18d4:	e92d4800 	push	{fp, lr}
    18d8:	e28db004 	add	fp, sp, #4
    18dc:	e24dd030 	sub	sp, sp, #48	@ 0x30
    18e0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    18e4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    18e8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    18ec:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    18f0:	e3a03000 	mov	r3, #0
    18f4:	e50b300c 	str	r3, [fp, #-12]
    18f8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    18fc:	e3530000 	cmp	r3, #0
    1900:	0a000008 	beq	1928 <printint+0x54>
    1904:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1908:	e3530000 	cmp	r3, #0
    190c:	aa000005 	bge	1928 <printint+0x54>
    1910:	e3a03001 	mov	r3, #1
    1914:	e50b300c 	str	r3, [fp, #-12]
    1918:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    191c:	e2633000 	rsb	r3, r3, #0
    1920:	e50b3010 	str	r3, [fp, #-16]
    1924:	ea000001 	b	1930 <printint+0x5c>
    1928:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    192c:	e50b3010 	str	r3, [fp, #-16]
    1930:	e3a03000 	mov	r3, #0
    1934:	e50b3008 	str	r3, [fp, #-8]
    1938:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    193c:	e51b3010 	ldr	r3, [fp, #-16]
    1940:	e1a01002 	mov	r1, r2
    1944:	e1a00003 	mov	r0, r3
    1948:	eb0001d5 	bl	20a4 <__aeabi_uidivmod>
    194c:	e1a03001 	mov	r3, r1
    1950:	e1a01003 	mov	r1, r3
    1954:	e51b3008 	ldr	r3, [fp, #-8]
    1958:	e2832001 	add	r2, r3, #1
    195c:	e50b2008 	str	r2, [fp, #-8]
    1960:	e59f20a0 	ldr	r2, [pc, #160]	@ 1a08 <printint+0x134>
    1964:	e7d22001 	ldrb	r2, [r2, r1]
    1968:	e2433004 	sub	r3, r3, #4
    196c:	e083300b 	add	r3, r3, fp
    1970:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1974:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1978:	e1a01003 	mov	r1, r3
    197c:	e51b0010 	ldr	r0, [fp, #-16]
    1980:	eb00018a 	bl	1fb0 <__udivsi3>
    1984:	e1a03000 	mov	r3, r0
    1988:	e50b3010 	str	r3, [fp, #-16]
    198c:	e51b3010 	ldr	r3, [fp, #-16]
    1990:	e3530000 	cmp	r3, #0
    1994:	1affffe7 	bne	1938 <printint+0x64>
    1998:	e51b300c 	ldr	r3, [fp, #-12]
    199c:	e3530000 	cmp	r3, #0
    19a0:	0a00000e 	beq	19e0 <printint+0x10c>
    19a4:	e51b3008 	ldr	r3, [fp, #-8]
    19a8:	e2832001 	add	r2, r3, #1
    19ac:	e50b2008 	str	r2, [fp, #-8]
    19b0:	e2433004 	sub	r3, r3, #4
    19b4:	e083300b 	add	r3, r3, fp
    19b8:	e3a0202d 	mov	r2, #45	@ 0x2d
    19bc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    19c0:	ea000006 	b	19e0 <printint+0x10c>
    19c4:	e24b2020 	sub	r2, fp, #32
    19c8:	e51b3008 	ldr	r3, [fp, #-8]
    19cc:	e0823003 	add	r3, r2, r3
    19d0:	e5d33000 	ldrb	r3, [r3]
    19d4:	e1a01003 	mov	r1, r3
    19d8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    19dc:	ebffffae 	bl	189c <putc>
    19e0:	e51b3008 	ldr	r3, [fp, #-8]
    19e4:	e2433001 	sub	r3, r3, #1
    19e8:	e50b3008 	str	r3, [fp, #-8]
    19ec:	e51b3008 	ldr	r3, [fp, #-8]
    19f0:	e3530000 	cmp	r3, #0
    19f4:	aafffff2 	bge	19c4 <printint+0xf0>
    19f8:	e1a00000 	nop			@ (mov r0, r0)
    19fc:	e1a00000 	nop			@ (mov r0, r0)
    1a00:	e24bd004 	sub	sp, fp, #4
    1a04:	e8bd8800 	pop	{fp, pc}
    1a08:	000021c4 	.word	0x000021c4

00001a0c <printf>:
    1a0c:	e92d000e 	push	{r1, r2, r3}
    1a10:	e92d4800 	push	{fp, lr}
    1a14:	e28db004 	add	fp, sp, #4
    1a18:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1a1c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1a20:	e3a03000 	mov	r3, #0
    1a24:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1a28:	e28b3008 	add	r3, fp, #8
    1a2c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1a30:	e3a03000 	mov	r3, #0
    1a34:	e50b3010 	str	r3, [fp, #-16]
    1a38:	ea000074 	b	1c10 <printf+0x204>
    1a3c:	e59b2004 	ldr	r2, [fp, #4]
    1a40:	e51b3010 	ldr	r3, [fp, #-16]
    1a44:	e0823003 	add	r3, r2, r3
    1a48:	e5d33000 	ldrb	r3, [r3]
    1a4c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1a50:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1a54:	e3530000 	cmp	r3, #0
    1a58:	1a00000b 	bne	1a8c <printf+0x80>
    1a5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1a60:	e3530025 	cmp	r3, #37	@ 0x25
    1a64:	1a000002 	bne	1a74 <printf+0x68>
    1a68:	e3a03025 	mov	r3, #37	@ 0x25
    1a6c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1a70:	ea000063 	b	1c04 <printf+0x1f8>
    1a74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1a78:	e6ef3073 	uxtb	r3, r3
    1a7c:	e1a01003 	mov	r1, r3
    1a80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1a84:	ebffff84 	bl	189c <putc>
    1a88:	ea00005d 	b	1c04 <printf+0x1f8>
    1a8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1a90:	e3530025 	cmp	r3, #37	@ 0x25
    1a94:	1a00005a 	bne	1c04 <printf+0x1f8>
    1a98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1a9c:	e3530064 	cmp	r3, #100	@ 0x64
    1aa0:	1a00000a 	bne	1ad0 <printf+0xc4>
    1aa4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1aa8:	e5933000 	ldr	r3, [r3]
    1aac:	e1a01003 	mov	r1, r3
    1ab0:	e3a03001 	mov	r3, #1
    1ab4:	e3a0200a 	mov	r2, #10
    1ab8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1abc:	ebffff84 	bl	18d4 <printint>
    1ac0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1ac4:	e2833004 	add	r3, r3, #4
    1ac8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1acc:	ea00004a 	b	1bfc <printf+0x1f0>
    1ad0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1ad4:	e3530078 	cmp	r3, #120	@ 0x78
    1ad8:	0a000002 	beq	1ae8 <printf+0xdc>
    1adc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1ae0:	e3530070 	cmp	r3, #112	@ 0x70
    1ae4:	1a00000a 	bne	1b14 <printf+0x108>
    1ae8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1aec:	e5933000 	ldr	r3, [r3]
    1af0:	e1a01003 	mov	r1, r3
    1af4:	e3a03000 	mov	r3, #0
    1af8:	e3a02010 	mov	r2, #16
    1afc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1b00:	ebffff73 	bl	18d4 <printint>
    1b04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1b08:	e2833004 	add	r3, r3, #4
    1b0c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1b10:	ea000039 	b	1bfc <printf+0x1f0>
    1b14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1b18:	e3530073 	cmp	r3, #115	@ 0x73
    1b1c:	1a000018 	bne	1b84 <printf+0x178>
    1b20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1b24:	e5933000 	ldr	r3, [r3]
    1b28:	e50b300c 	str	r3, [fp, #-12]
    1b2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1b30:	e2833004 	add	r3, r3, #4
    1b34:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1b38:	e51b300c 	ldr	r3, [fp, #-12]
    1b3c:	e3530000 	cmp	r3, #0
    1b40:	1a00000a 	bne	1b70 <printf+0x164>
    1b44:	e59f30f4 	ldr	r3, [pc, #244]	@ 1c40 <printf+0x234>
    1b48:	e50b300c 	str	r3, [fp, #-12]
    1b4c:	ea000007 	b	1b70 <printf+0x164>
    1b50:	e51b300c 	ldr	r3, [fp, #-12]
    1b54:	e5d33000 	ldrb	r3, [r3]
    1b58:	e1a01003 	mov	r1, r3
    1b5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1b60:	ebffff4d 	bl	189c <putc>
    1b64:	e51b300c 	ldr	r3, [fp, #-12]
    1b68:	e2833001 	add	r3, r3, #1
    1b6c:	e50b300c 	str	r3, [fp, #-12]
    1b70:	e51b300c 	ldr	r3, [fp, #-12]
    1b74:	e5d33000 	ldrb	r3, [r3]
    1b78:	e3530000 	cmp	r3, #0
    1b7c:	1afffff3 	bne	1b50 <printf+0x144>
    1b80:	ea00001d 	b	1bfc <printf+0x1f0>
    1b84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1b88:	e3530063 	cmp	r3, #99	@ 0x63
    1b8c:	1a000009 	bne	1bb8 <printf+0x1ac>
    1b90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1b94:	e5933000 	ldr	r3, [r3]
    1b98:	e6ef3073 	uxtb	r3, r3
    1b9c:	e1a01003 	mov	r1, r3
    1ba0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1ba4:	ebffff3c 	bl	189c <putc>
    1ba8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1bac:	e2833004 	add	r3, r3, #4
    1bb0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1bb4:	ea000010 	b	1bfc <printf+0x1f0>
    1bb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1bbc:	e3530025 	cmp	r3, #37	@ 0x25
    1bc0:	1a000005 	bne	1bdc <printf+0x1d0>
    1bc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1bc8:	e6ef3073 	uxtb	r3, r3
    1bcc:	e1a01003 	mov	r1, r3
    1bd0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1bd4:	ebffff30 	bl	189c <putc>
    1bd8:	ea000007 	b	1bfc <printf+0x1f0>
    1bdc:	e3a01025 	mov	r1, #37	@ 0x25
    1be0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1be4:	ebffff2c 	bl	189c <putc>
    1be8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1bec:	e6ef3073 	uxtb	r3, r3
    1bf0:	e1a01003 	mov	r1, r3
    1bf4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1bf8:	ebffff27 	bl	189c <putc>
    1bfc:	e3a03000 	mov	r3, #0
    1c00:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1c04:	e51b3010 	ldr	r3, [fp, #-16]
    1c08:	e2833001 	add	r3, r3, #1
    1c0c:	e50b3010 	str	r3, [fp, #-16]
    1c10:	e59b2004 	ldr	r2, [fp, #4]
    1c14:	e51b3010 	ldr	r3, [fp, #-16]
    1c18:	e0823003 	add	r3, r2, r3
    1c1c:	e5d33000 	ldrb	r3, [r3]
    1c20:	e3530000 	cmp	r3, #0
    1c24:	1affff84 	bne	1a3c <printf+0x30>
    1c28:	e1a00000 	nop			@ (mov r0, r0)
    1c2c:	e1a00000 	nop			@ (mov r0, r0)
    1c30:	e24bd004 	sub	sp, fp, #4
    1c34:	e8bd4800 	pop	{fp, lr}
    1c38:	e28dd00c 	add	sp, sp, #12
    1c3c:	e12fff1e 	bx	lr
    1c40:	000021ac 	.word	0x000021ac

00001c44 <free>:
    1c44:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1c48:	e28db000 	add	fp, sp, #0
    1c4c:	e24dd014 	sub	sp, sp, #20
    1c50:	e50b0010 	str	r0, [fp, #-16]
    1c54:	e51b3010 	ldr	r3, [fp, #-16]
    1c58:	e2433008 	sub	r3, r3, #8
    1c5c:	e50b300c 	str	r3, [fp, #-12]
    1c60:	e59f3154 	ldr	r3, [pc, #340]	@ 1dbc <free+0x178>
    1c64:	e5933000 	ldr	r3, [r3]
    1c68:	e50b3008 	str	r3, [fp, #-8]
    1c6c:	ea000010 	b	1cb4 <free+0x70>
    1c70:	e51b3008 	ldr	r3, [fp, #-8]
    1c74:	e5933000 	ldr	r3, [r3]
    1c78:	e51b2008 	ldr	r2, [fp, #-8]
    1c7c:	e1520003 	cmp	r2, r3
    1c80:	3a000008 	bcc	1ca8 <free+0x64>
    1c84:	e51b200c 	ldr	r2, [fp, #-12]
    1c88:	e51b3008 	ldr	r3, [fp, #-8]
    1c8c:	e1520003 	cmp	r2, r3
    1c90:	8a000010 	bhi	1cd8 <free+0x94>
    1c94:	e51b3008 	ldr	r3, [fp, #-8]
    1c98:	e5933000 	ldr	r3, [r3]
    1c9c:	e51b200c 	ldr	r2, [fp, #-12]
    1ca0:	e1520003 	cmp	r2, r3
    1ca4:	3a00000b 	bcc	1cd8 <free+0x94>
    1ca8:	e51b3008 	ldr	r3, [fp, #-8]
    1cac:	e5933000 	ldr	r3, [r3]
    1cb0:	e50b3008 	str	r3, [fp, #-8]
    1cb4:	e51b200c 	ldr	r2, [fp, #-12]
    1cb8:	e51b3008 	ldr	r3, [fp, #-8]
    1cbc:	e1520003 	cmp	r2, r3
    1cc0:	9affffea 	bls	1c70 <free+0x2c>
    1cc4:	e51b3008 	ldr	r3, [fp, #-8]
    1cc8:	e5933000 	ldr	r3, [r3]
    1ccc:	e51b200c 	ldr	r2, [fp, #-12]
    1cd0:	e1520003 	cmp	r2, r3
    1cd4:	2affffe5 	bcs	1c70 <free+0x2c>
    1cd8:	e51b300c 	ldr	r3, [fp, #-12]
    1cdc:	e5933004 	ldr	r3, [r3, #4]
    1ce0:	e1a03183 	lsl	r3, r3, #3
    1ce4:	e51b200c 	ldr	r2, [fp, #-12]
    1ce8:	e0822003 	add	r2, r2, r3
    1cec:	e51b3008 	ldr	r3, [fp, #-8]
    1cf0:	e5933000 	ldr	r3, [r3]
    1cf4:	e1520003 	cmp	r2, r3
    1cf8:	1a00000d 	bne	1d34 <free+0xf0>
    1cfc:	e51b300c 	ldr	r3, [fp, #-12]
    1d00:	e5932004 	ldr	r2, [r3, #4]
    1d04:	e51b3008 	ldr	r3, [fp, #-8]
    1d08:	e5933000 	ldr	r3, [r3]
    1d0c:	e5933004 	ldr	r3, [r3, #4]
    1d10:	e0822003 	add	r2, r2, r3
    1d14:	e51b300c 	ldr	r3, [fp, #-12]
    1d18:	e5832004 	str	r2, [r3, #4]
    1d1c:	e51b3008 	ldr	r3, [fp, #-8]
    1d20:	e5933000 	ldr	r3, [r3]
    1d24:	e5932000 	ldr	r2, [r3]
    1d28:	e51b300c 	ldr	r3, [fp, #-12]
    1d2c:	e5832000 	str	r2, [r3]
    1d30:	ea000003 	b	1d44 <free+0x100>
    1d34:	e51b3008 	ldr	r3, [fp, #-8]
    1d38:	e5932000 	ldr	r2, [r3]
    1d3c:	e51b300c 	ldr	r3, [fp, #-12]
    1d40:	e5832000 	str	r2, [r3]
    1d44:	e51b3008 	ldr	r3, [fp, #-8]
    1d48:	e5933004 	ldr	r3, [r3, #4]
    1d4c:	e1a03183 	lsl	r3, r3, #3
    1d50:	e51b2008 	ldr	r2, [fp, #-8]
    1d54:	e0823003 	add	r3, r2, r3
    1d58:	e51b200c 	ldr	r2, [fp, #-12]
    1d5c:	e1520003 	cmp	r2, r3
    1d60:	1a00000b 	bne	1d94 <free+0x150>
    1d64:	e51b3008 	ldr	r3, [fp, #-8]
    1d68:	e5932004 	ldr	r2, [r3, #4]
    1d6c:	e51b300c 	ldr	r3, [fp, #-12]
    1d70:	e5933004 	ldr	r3, [r3, #4]
    1d74:	e0822003 	add	r2, r2, r3
    1d78:	e51b3008 	ldr	r3, [fp, #-8]
    1d7c:	e5832004 	str	r2, [r3, #4]
    1d80:	e51b300c 	ldr	r3, [fp, #-12]
    1d84:	e5932000 	ldr	r2, [r3]
    1d88:	e51b3008 	ldr	r3, [fp, #-8]
    1d8c:	e5832000 	str	r2, [r3]
    1d90:	ea000002 	b	1da0 <free+0x15c>
    1d94:	e51b3008 	ldr	r3, [fp, #-8]
    1d98:	e51b200c 	ldr	r2, [fp, #-12]
    1d9c:	e5832000 	str	r2, [r3]
    1da0:	e59f2014 	ldr	r2, [pc, #20]	@ 1dbc <free+0x178>
    1da4:	e51b3008 	ldr	r3, [fp, #-8]
    1da8:	e5823000 	str	r3, [r2]
    1dac:	e1a00000 	nop			@ (mov r0, r0)
    1db0:	e28bd000 	add	sp, fp, #0
    1db4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1db8:	e12fff1e 	bx	lr
    1dbc:	00002244 	.word	0x00002244

00001dc0 <morecore>:
    1dc0:	e92d4800 	push	{fp, lr}
    1dc4:	e28db004 	add	fp, sp, #4
    1dc8:	e24dd010 	sub	sp, sp, #16
    1dcc:	e50b0010 	str	r0, [fp, #-16]
    1dd0:	e51b3010 	ldr	r3, [fp, #-16]
    1dd4:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1dd8:	2a000001 	bcs	1de4 <morecore+0x24>
    1ddc:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1de0:	e50b3010 	str	r3, [fp, #-16]
    1de4:	e51b3010 	ldr	r3, [fp, #-16]
    1de8:	e1a03183 	lsl	r3, r3, #3
    1dec:	e1a00003 	mov	r0, r3
    1df0:	ebfffe73 	bl	17c4 <sbrk>
    1df4:	e50b0008 	str	r0, [fp, #-8]
    1df8:	e51b3008 	ldr	r3, [fp, #-8]
    1dfc:	e3730001 	cmn	r3, #1
    1e00:	1a000001 	bne	1e0c <morecore+0x4c>
    1e04:	e3a03000 	mov	r3, #0
    1e08:	ea00000a 	b	1e38 <morecore+0x78>
    1e0c:	e51b3008 	ldr	r3, [fp, #-8]
    1e10:	e50b300c 	str	r3, [fp, #-12]
    1e14:	e51b300c 	ldr	r3, [fp, #-12]
    1e18:	e51b2010 	ldr	r2, [fp, #-16]
    1e1c:	e5832004 	str	r2, [r3, #4]
    1e20:	e51b300c 	ldr	r3, [fp, #-12]
    1e24:	e2833008 	add	r3, r3, #8
    1e28:	e1a00003 	mov	r0, r3
    1e2c:	ebffff84 	bl	1c44 <free>
    1e30:	e59f300c 	ldr	r3, [pc, #12]	@ 1e44 <morecore+0x84>
    1e34:	e5933000 	ldr	r3, [r3]
    1e38:	e1a00003 	mov	r0, r3
    1e3c:	e24bd004 	sub	sp, fp, #4
    1e40:	e8bd8800 	pop	{fp, pc}
    1e44:	00002244 	.word	0x00002244

00001e48 <malloc>:
    1e48:	e92d4800 	push	{fp, lr}
    1e4c:	e28db004 	add	fp, sp, #4
    1e50:	e24dd018 	sub	sp, sp, #24
    1e54:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1e58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1e5c:	e2833007 	add	r3, r3, #7
    1e60:	e1a031a3 	lsr	r3, r3, #3
    1e64:	e2833001 	add	r3, r3, #1
    1e68:	e50b3010 	str	r3, [fp, #-16]
    1e6c:	e59f3134 	ldr	r3, [pc, #308]	@ 1fa8 <malloc+0x160>
    1e70:	e5933000 	ldr	r3, [r3]
    1e74:	e50b300c 	str	r3, [fp, #-12]
    1e78:	e51b300c 	ldr	r3, [fp, #-12]
    1e7c:	e3530000 	cmp	r3, #0
    1e80:	1a00000b 	bne	1eb4 <malloc+0x6c>
    1e84:	e59f3120 	ldr	r3, [pc, #288]	@ 1fac <malloc+0x164>
    1e88:	e50b300c 	str	r3, [fp, #-12]
    1e8c:	e59f2114 	ldr	r2, [pc, #276]	@ 1fa8 <malloc+0x160>
    1e90:	e51b300c 	ldr	r3, [fp, #-12]
    1e94:	e5823000 	str	r3, [r2]
    1e98:	e59f3108 	ldr	r3, [pc, #264]	@ 1fa8 <malloc+0x160>
    1e9c:	e5933000 	ldr	r3, [r3]
    1ea0:	e59f2104 	ldr	r2, [pc, #260]	@ 1fac <malloc+0x164>
    1ea4:	e5823000 	str	r3, [r2]
    1ea8:	e59f30fc 	ldr	r3, [pc, #252]	@ 1fac <malloc+0x164>
    1eac:	e3a02000 	mov	r2, #0
    1eb0:	e5832004 	str	r2, [r3, #4]
    1eb4:	e51b300c 	ldr	r3, [fp, #-12]
    1eb8:	e5933000 	ldr	r3, [r3]
    1ebc:	e50b3008 	str	r3, [fp, #-8]
    1ec0:	e51b3008 	ldr	r3, [fp, #-8]
    1ec4:	e5933004 	ldr	r3, [r3, #4]
    1ec8:	e51b2010 	ldr	r2, [fp, #-16]
    1ecc:	e1520003 	cmp	r2, r3
    1ed0:	8a00001e 	bhi	1f50 <malloc+0x108>
    1ed4:	e51b3008 	ldr	r3, [fp, #-8]
    1ed8:	e5933004 	ldr	r3, [r3, #4]
    1edc:	e51b2010 	ldr	r2, [fp, #-16]
    1ee0:	e1520003 	cmp	r2, r3
    1ee4:	1a000004 	bne	1efc <malloc+0xb4>
    1ee8:	e51b3008 	ldr	r3, [fp, #-8]
    1eec:	e5932000 	ldr	r2, [r3]
    1ef0:	e51b300c 	ldr	r3, [fp, #-12]
    1ef4:	e5832000 	str	r2, [r3]
    1ef8:	ea00000e 	b	1f38 <malloc+0xf0>
    1efc:	e51b3008 	ldr	r3, [fp, #-8]
    1f00:	e5932004 	ldr	r2, [r3, #4]
    1f04:	e51b3010 	ldr	r3, [fp, #-16]
    1f08:	e0422003 	sub	r2, r2, r3
    1f0c:	e51b3008 	ldr	r3, [fp, #-8]
    1f10:	e5832004 	str	r2, [r3, #4]
    1f14:	e51b3008 	ldr	r3, [fp, #-8]
    1f18:	e5933004 	ldr	r3, [r3, #4]
    1f1c:	e1a03183 	lsl	r3, r3, #3
    1f20:	e51b2008 	ldr	r2, [fp, #-8]
    1f24:	e0823003 	add	r3, r2, r3
    1f28:	e50b3008 	str	r3, [fp, #-8]
    1f2c:	e51b3008 	ldr	r3, [fp, #-8]
    1f30:	e51b2010 	ldr	r2, [fp, #-16]
    1f34:	e5832004 	str	r2, [r3, #4]
    1f38:	e59f2068 	ldr	r2, [pc, #104]	@ 1fa8 <malloc+0x160>
    1f3c:	e51b300c 	ldr	r3, [fp, #-12]
    1f40:	e5823000 	str	r3, [r2]
    1f44:	e51b3008 	ldr	r3, [fp, #-8]
    1f48:	e2833008 	add	r3, r3, #8
    1f4c:	ea000012 	b	1f9c <malloc+0x154>
    1f50:	e59f3050 	ldr	r3, [pc, #80]	@ 1fa8 <malloc+0x160>
    1f54:	e5933000 	ldr	r3, [r3]
    1f58:	e51b2008 	ldr	r2, [fp, #-8]
    1f5c:	e1520003 	cmp	r2, r3
    1f60:	1a000007 	bne	1f84 <malloc+0x13c>
    1f64:	e51b0010 	ldr	r0, [fp, #-16]
    1f68:	ebffff94 	bl	1dc0 <morecore>
    1f6c:	e50b0008 	str	r0, [fp, #-8]
    1f70:	e51b3008 	ldr	r3, [fp, #-8]
    1f74:	e3530000 	cmp	r3, #0
    1f78:	1a000001 	bne	1f84 <malloc+0x13c>
    1f7c:	e3a03000 	mov	r3, #0
    1f80:	ea000005 	b	1f9c <malloc+0x154>
    1f84:	e51b3008 	ldr	r3, [fp, #-8]
    1f88:	e50b300c 	str	r3, [fp, #-12]
    1f8c:	e51b3008 	ldr	r3, [fp, #-8]
    1f90:	e5933000 	ldr	r3, [r3]
    1f94:	e50b3008 	str	r3, [fp, #-8]
    1f98:	eaffffc8 	b	1ec0 <malloc+0x78>
    1f9c:	e1a00003 	mov	r0, r3
    1fa0:	e24bd004 	sub	sp, fp, #4
    1fa4:	e8bd8800 	pop	{fp, pc}
    1fa8:	00002244 	.word	0x00002244
    1fac:	0000223c 	.word	0x0000223c

00001fb0 <__udivsi3>:
    1fb0:	e2512001 	subs	r2, r1, #1
    1fb4:	012fff1e 	bxeq	lr
    1fb8:	3a000036 	bcc	2098 <__udivsi3+0xe8>
    1fbc:	e1500001 	cmp	r0, r1
    1fc0:	9a000022 	bls	2050 <__udivsi3+0xa0>
    1fc4:	e1110002 	tst	r1, r2
    1fc8:	0a000023 	beq	205c <__udivsi3+0xac>
    1fcc:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1fd0:	01a01181 	lsleq	r1, r1, #3
    1fd4:	03a03008 	moveq	r3, #8
    1fd8:	13a03001 	movne	r3, #1
    1fdc:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1fe0:	31510000 	cmpcc	r1, r0
    1fe4:	31a01201 	lslcc	r1, r1, #4
    1fe8:	31a03203 	lslcc	r3, r3, #4
    1fec:	3afffffa 	bcc	1fdc <__udivsi3+0x2c>
    1ff0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1ff4:	31510000 	cmpcc	r1, r0
    1ff8:	31a01081 	lslcc	r1, r1, #1
    1ffc:	31a03083 	lslcc	r3, r3, #1
    2000:	3afffffa 	bcc	1ff0 <__udivsi3+0x40>
    2004:	e3a02000 	mov	r2, #0
    2008:	e1500001 	cmp	r0, r1
    200c:	20400001 	subcs	r0, r0, r1
    2010:	21822003 	orrcs	r2, r2, r3
    2014:	e15000a1 	cmp	r0, r1, lsr #1
    2018:	204000a1 	subcs	r0, r0, r1, lsr #1
    201c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    2020:	e1500121 	cmp	r0, r1, lsr #2
    2024:	20400121 	subcs	r0, r0, r1, lsr #2
    2028:	21822123 	orrcs	r2, r2, r3, lsr #2
    202c:	e15001a1 	cmp	r0, r1, lsr #3
    2030:	204001a1 	subcs	r0, r0, r1, lsr #3
    2034:	218221a3 	orrcs	r2, r2, r3, lsr #3
    2038:	e3500000 	cmp	r0, #0
    203c:	11b03223 	lsrsne	r3, r3, #4
    2040:	11a01221 	lsrne	r1, r1, #4
    2044:	1affffef 	bne	2008 <__udivsi3+0x58>
    2048:	e1a00002 	mov	r0, r2
    204c:	e12fff1e 	bx	lr
    2050:	03a00001 	moveq	r0, #1
    2054:	13a00000 	movne	r0, #0
    2058:	e12fff1e 	bx	lr
    205c:	e3510801 	cmp	r1, #65536	@ 0x10000
    2060:	21a01821 	lsrcs	r1, r1, #16
    2064:	23a02010 	movcs	r2, #16
    2068:	33a02000 	movcc	r2, #0
    206c:	e3510c01 	cmp	r1, #256	@ 0x100
    2070:	21a01421 	lsrcs	r1, r1, #8
    2074:	22822008 	addcs	r2, r2, #8
    2078:	e3510010 	cmp	r1, #16
    207c:	21a01221 	lsrcs	r1, r1, #4
    2080:	22822004 	addcs	r2, r2, #4
    2084:	e3510004 	cmp	r1, #4
    2088:	82822003 	addhi	r2, r2, #3
    208c:	908220a1 	addls	r2, r2, r1, lsr #1
    2090:	e1a00230 	lsr	r0, r0, r2
    2094:	e12fff1e 	bx	lr
    2098:	e3500000 	cmp	r0, #0
    209c:	13e00000 	mvnne	r0, #0
    20a0:	ea000007 	b	20c4 <__aeabi_idiv0>

000020a4 <__aeabi_uidivmod>:
    20a4:	e3510000 	cmp	r1, #0
    20a8:	0afffffa 	beq	2098 <__udivsi3+0xe8>
    20ac:	e92d4003 	push	{r0, r1, lr}
    20b0:	ebffffbe 	bl	1fb0 <__udivsi3>
    20b4:	e8bd4006 	pop	{r1, r2, lr}
    20b8:	e0030092 	mul	r3, r2, r0
    20bc:	e0411003 	sub	r1, r1, r3
    20c0:	e12fff1e 	bx	lr

000020c4 <__aeabi_idiv0>:
    20c4:	e12fff1e 	bx	lr
